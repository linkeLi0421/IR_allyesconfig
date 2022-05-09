; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.coex_dm_8723b_1ant = type { i8, i8, i8, i8, i8, i8, [5 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i16, i8, i8, i8, i8, [3 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i32, i8 }
%struct.coex_sta_8723b_1ant = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, [4 x i8], i8, i8, [3 x [10 x i8]], [3 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8 }
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

@.str = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"xxxxxxxxxxxxxxxx Execute 8723b 1-Ant PowerOn Setting xxxxxxxxxxxxxxxx!!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], Coex Mechanism Init!!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\0A ============[BT Coexist info]============\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\0A ============[Under Manual Control]==========\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\0A ==========================================\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\0A ============[Coex is STOPPED]============\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0A %-35s = %d/ %d/ %d\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Ant PG Num/ Ant Mech/ Ant Pos:\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\0A %-35s = %s / %d\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BT stack/ hci ext ver\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Yes\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"No\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\0A %-35s = %d_%x/ 0x%x/ 0x%x(%d)\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CoexVer/ FwVer/ PatchVer\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0A %-35s = %d / %d(%d)\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Dot11 channel / HsChnl(HsMode)\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0A %-35s = %3ph \00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"H2C Wifi inform bt chnl Info\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0A %-35s = %d/ %d\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Wifi rssi/ HS rssi\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0A %-35s = %d/ %d/ %d \00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Wifi link/ roam/ scan\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\0A %-35s = %s / %s/ %s \00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Wifi status\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"5G\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.4G\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Legacy\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HT40\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HT20\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uplink\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"downlink\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0A %-35s = %d/ %d/ %d/ %d/ %d\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sta/vwifi/hs/p2pGo/p2pGc\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\0A %-35s = [%s/ %d/ %d] \00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BT [status/ rssi/ retryCnt]\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"inquiry/page scan\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"non-connected idle\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"connected-idle\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"busy\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0A %-35s = %d / %d / %d / %d\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCO/HID/PAN/A2DP\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\0A %-35s = %s\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BT Info A2DP rate\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Basic rate\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EDR rate\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\0A %-35s = %7ph(%d)\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0A %-35s = %s/%s, (0x%x/0x%x)\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PS state, IPS/LPS, (lps/rpwm)\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IPS ON\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IPS OFF\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LPS ON\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LPS OFF\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0A %-35s\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"============[Sw mechanism]============\00", [57 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0A %-35s = %d/\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SM[LowPenaltyRA]\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0A %-35s = %s/ %s/ %d \00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DelBA/ BtCtrlAgg/ AggSize\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0A %-35s = 0x%x \00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Rate Mask\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"============[Fw mechanism]============\00", [57 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\0A %-35s = %5ph case-%d (auto:%d)\00", [63 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PS TDMA\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0A %-35s = %d \00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IgnWlanAct\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Latest error condition(should be 0)\00", [60 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\0A %-35s = %d\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Coex Table Type\00", [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"============[Hw setting]============\00", [59 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0A %-35s = 0x%x/0x%x/0x%x/0x%x\00", [34 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"backup ARFR1/ARFR2/RL/AMaxTime\00", [33 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"0x430/0x434/0x42a/0x456\00", [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0A %-35s = 0x%x/ 0x%x/ 0x%x\00", [37 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"0x778/0x6cc/0x880[29:25]\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"0x948/ 0x67[5] / 0x765\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"0x92c[1:0]/ 0x930[7:0]/0x944[1:0]\00", [62 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\0A %-35s = 0x%x/ 0x%x/ 0x%x/ 0x%x\00", [63 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"0x38[11]/0x40/0x4c[24:23]/0x64[0]\00", [62 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0A %-35s = 0x%x/ 0x%x\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x550(bcn ctrl)/0x522\00", [42 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"0xc50(dig)/0x49c(null-drop)\00", [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"OFDM-CCA/OFDM-FA/CCK-FA\00", [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"0x6c0/0x6c4/0x6c8(coexTable)\00", [35 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x770(high-pri rx/tx)\00", [42 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"0x774(low-pri rx/tx)\00", [43 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[BTCoex], IPS ENTER notify\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[BTCoex], IPS LEAVE notify\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[BTCoex], LPS ENABLE notify\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], LPS DISABLE notify\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[BTCoex], SCAN START notify\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], 0x948=0x%x, 0x765=0x%x, 0x67=0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], SCAN FINISH notify\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], CONNECT START notify\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], CONNECT FINISH notify\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], MEDIA connect notify\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[BTCoex], MEDIA disconnect notify\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], FW write 0x66 = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], special Packet ARP notify\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], ARP Packet Count = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[BTCoex], special Packet DHCP or EAPOL notify\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], special Packet [Type = %d] notify\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], special Packet(%d) notify\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[BTCoex], Bt info[%d], length=%d, hex data = [\00", [49 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0x%02x]\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0x%02x, \00", [23 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[BTCoex], Switch BT TRx Mask since BT RF REG 0x3C != 0x15\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[BTCoex], BT ext info bit1 check, send wifi BW&Chnl to BT!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"[BTCoex], BT ext info bit3 check, set BT NOT ignore Wlan active!!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[BTCoex], BtInfoNotify(), BT Non-Connected idle!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[BTCoex], BtInfoNotify(), BT Connected-idle!!!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], BtInfoNotify(), BT SCO busy!!!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], BtInfoNotify(), BT ACL busy!!!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[BTCoex], BtInfoNotify(), BT Non-Defined state!!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[BTCoex], RF Status notify\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[BTCoex], RF is turned ON!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], RF is turned OFF!!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"############# [BTCoex], 0x948=0x%x, 0x765=0x%x, 0x67=0x%x, 0x76e=0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[BTCoex], Halt notify\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[BTCoex], Pnp notify\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[BTCoex], Pnp notify to SLEEP\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], Pnp notify to WAKE UP\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[BTCoex], *****************Coex DM Reset****************\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"[BTCoex], ==========================Periodical===========================\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], 1Ant Init HW Config!!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"############# [BTCoex], 0x948=0x%x, 0x765=0x%x, 0x67=0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[BTCoex], SM[LpRA] = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], set WiFi Low-Penalty Retry: %s\00", [55 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ON!!\00", [27 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OFF!!\00", [26 x i8] zeroinitializer }, align 32
@glcoex_dm_8723b_1ant = internal global { %struct.coex_dm_8723b_1ant, [32 x i8] } zeroinitializer, align 32
@glcoex_sta_8723b_1ant = internal global { %struct.coex_sta_8723b_1ant, [48 x i8] } zeroinitializer, align 32
@.str.131 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BT Info[wifi fw]\00", [47 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BT Info[bt rsp]\00", [16 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"BT Info[bt auto report]\00", [40 x i8] zeroinitializer }, align 32
@halbtc8723b1ant_monitor_bt_ctr.num_of_bt_counter_chk = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.134 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"[BTCoex], ########### BT is calibrating (wait cnt=%d) ###########\0A\00", [61 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.135 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"[BTCoex], ********** BT is NOT calibrating (wait cnt=%d)**********\0A\00", [60 x i8] zeroinitializer }, align 32
@halbtc8723b1ant_ps_tdma.pre_wifi_busy = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str.136 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[BTCoex], FW for 1Ant AP mode\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], PS-TDMA H2C cmd =0x%x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"[BTCoex], %s write Coex Table 0x6c0 = 0x%x, 0x6c4 = 0x%x, 0x6cc = 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"force to\00", [23 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.141 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], set coex table, set 0x6c0 = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], set coex table, set 0x6c4 = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], set coex table, set 0x6c8 = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], set coex table, set 0x6cc = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[BTCoex], CoexForWifiConnect()===>\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"[BTCoex], CoexForWifiConnect(), return for wifi is under 4way<===\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"[BTCoex], CoexForWifiConnect(), return for wifi is under scan<===\0A\00", [61 x i8] zeroinitializer }, align 32
@btc8723b1ant_tdma_dur_adj_for_acl.up = internal global { i32, [28 x i8] } zeroinitializer, align 32
@btc8723b1ant_tdma_dur_adj_for_acl.dn = internal global { i32, [28 x i8] } zeroinitializer, align 32
@btc8723b1ant_tdma_dur_adj_for_acl.m = internal global { i32, [28 x i8] } zeroinitializer, align 32
@btc8723b1ant_tdma_dur_adj_for_acl.n = internal global { i32, [28 x i8] } zeroinitializer, align 32
@btc8723b1ant_tdma_dur_adj_for_acl.wait_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.148 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[BTCoex], TdmaDurationAdjustForAcl()\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], first run TdmaDurationAdjust()!!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[BTCoex], Increase wifi duration!!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[BTCoex], Decrease wifi duration for retryCounter<3!!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[BTCoex], Decrease wifi duration for retryCounter>3!!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], %s turn Ignore WlanAct %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[BTCoex], set FW for BT Ignore Wlan_Act, FW write 0x63 = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], RunCoexistMechanism()===>\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[BTCoex], RunCoexistMechanism(), return for Manual CTRL <===\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[BTCoex], RunCoexistMechanism(), return for Stop Coex DM <===\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], wifi is under IPS !!!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], wifi is non connected-idle !!!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], %s set lps/rpwm = 0x%x/0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[BTCoex], LPS-RxBeaconMode = 0x%x , LPS-RPWM = 0x%x!!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[BTCoex], LPS-RPWM_Last = 0x%x , LPS-RPWM_Now = 0x%x!!\0A\00", [40 x i8] zeroinitializer }, align 32
@halbtc8723b1ant_monitor_bt_enable_disable.bt_disable_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.166 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], BT is from %s to %s!!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter = internal global { i8, [31 x i8] } zeroinitializer, align 32
@btc8723b1ant_is_wifi_status_changed.pre_wifi_busy = internal global { i8, [31 x i8] } zeroinitializer, align 32
@btc8723b1ant_is_wifi_status_changed.pre_under_4way = internal global { i8, [31 x i8] } zeroinitializer, align 32
@btc8723b1ant_is_wifi_status_changed.pre_bt_hs_on = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.172 = internal global [16 x i64] [i64 14, i64 8, i64 1, i64 2, i64 3, i64 9, i64 11, i64 13, i64 14, i64 101, i64 102, i64 103, i64 109, i64 111, i64 113, i64 114]
@__sancov_gen_cov_switch_values.173 = internal global [50 x i64] [i64 48, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 18, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 40, i64 101, i64 102, i64 103, i64 105, i64 106, i64 109, i64 111, i64 113, i64 114, i64 120, i64 122, i64 132, i64 133]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 8]
@__sancov_gen_cov_switch_values.175 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.180 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.181 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.182 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.183 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.184 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.187 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.189 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.190 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.191 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 9]
@__sancov_gen_cov_switch_values.192 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 9, i64 11]
@__sancov_gen_cov_switch_values.193 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 9, i64 11]
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2366, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2439, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2466, i32 14 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2469, i32 15 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2470, i32 15 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2473, i32 15 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2477, i32 16 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2478, i32 6 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2482, i32 16 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2483, i32 6 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2484, i32 40 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2484, i32 48 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2489, i32 16 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2490, i32 6 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2498, i32 16 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2499, i32 6 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2502, i32 16 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2503, i32 6 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2508, i32 16 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2509, i32 6 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2514, i32 16 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2515, i32 6 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2524, i32 16 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2525, i32 6 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2525, i32 38 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2525, i32 45 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2526, i32 41 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2527, i32 40 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2527, i32 49 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2528, i32 23 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2530, i32 8 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2530, i32 19 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2534, i32 16 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2535, i32 6 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2542, i32 16 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2543, i32 6 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2544, i32 34 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2545, i32 43 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2548, i32 9 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2551, i32 10 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2551, i32 29 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2554, i32 16 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2555, i32 6 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2561, i32 16 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2562, i32 6 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2563, i32 29 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2563, i32 44 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2567, i32 18 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2573, i32 16 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2574, i32 6 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2575, i32 30 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2575, i32 41 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2576, i32 30 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2576, i32 41 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2583, i32 17 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2584, i32 7 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2586, i32 17 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2587, i32 7 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2589, i32 17 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2590, i32 7 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2595, i32 17 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2596, i32 7 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2600, i32 7 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2603, i32 17 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2604, i32 7 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2607, i32 17 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2608, i32 7 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2611, i32 7 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2615, i32 16 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2616, i32 6 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2620, i32 6 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2622, i32 16 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2623, i32 6 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2632, i32 6 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2638, i32 16 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2639, i32 6 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2646, i32 6 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2653, i32 6 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2660, i32 16 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2661, i32 6 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2667, i32 16 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2668, i32 6 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2673, i32 6 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2692, i32 6 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2699, i32 6 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2703, i32 6 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2706, i32 6 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2721, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2732, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2750, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2754, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2776, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2786, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2791, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2869, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2874, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2930, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2961, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2989, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3017, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3021, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3034, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3039, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3068, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3090, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3098, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3101, i32 4 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3145, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3161, i32 4 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3176, i32 5 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3283, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3288, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3293, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3300, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3304, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3325, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3329, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3333, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3350, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3360, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3382, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3385, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3404, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3417, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 3429, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2317, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2350, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 765, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 471, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant [21 x i8] c"glcoex_dm_8723b_1ant\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 21, i32 34 }
@___asan_gen_.590 = private unnamed_addr constant [22 x i8] c"glcoex_sta_8723b_1ant\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 23, i32 35 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 27, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 28, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 29, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant [22 x i8] c"num_of_bt_counter_chk\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 208, i32 13 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 864, i32 6 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 870, i32 6 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1038, i32 14 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 685, i32 4 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 707, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 523, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 499, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 503, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 507, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 511, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2032, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2039, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2054, i32 3 }
@___asan_gen_.650 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1422, i32 13 }
@___asan_gen_.653 = private unnamed_addr constant [3 x i8] c"dn\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1422, i32 17 }
@___asan_gen_.656 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1422, i32 21 }
@___asan_gen_.659 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1422, i32 24 }
@___asan_gen_.662 = private unnamed_addr constant [11 x i8] c"wait_count\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1422, i32 27 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1429, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1454, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1493, i32 5 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1526, i32 5 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1551, i32 4 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 651, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 639, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2155, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2159, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2165, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2171, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2279, i32 3 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 734, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 741, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 747, i32 4 }
@___asan_gen_.716 = private unnamed_addr constant [15 x i8] c"bt_disable_cnt\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1672, i32 13 }
@___asan_gen_.722 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1693, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant [17 x i8] c"cck_lock_counter\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 258, i32 12 }
@___asan_gen_.728 = private unnamed_addr constant [14 x i8] c"pre_wifi_busy\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 346, i32 14 }
@___asan_gen_.731 = private unnamed_addr constant [15 x i8] c"pre_under_4way\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 347, i32 14 }
@___asan_gen_.734 = private unnamed_addr constant [13 x i8] c"pre_bt_hs_on\00", align 1
@___asan_gen_.735 = private constant [68 x i8] c"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 347, i32 30 }
@llvm.compiler.used = appending global [181 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @glcoex_dm_8723b_1ant, ptr @glcoex_sta_8723b_1ant, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @halbtc8723b1ant_monitor_bt_ctr.num_of_bt_counter_chk, ptr @.str.134, ptr @.str.135, ptr @halbtc8723b1ant_ps_tdma.pre_wifi_busy, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @btc8723b1ant_tdma_dur_adj_for_acl.up, ptr @btc8723b1ant_tdma_dur_adj_for_acl.dn, ptr @btc8723b1ant_tdma_dur_adj_for_acl.m, ptr @btc8723b1ant_tdma_dur_adj_for_acl.n, ptr @btc8723b1ant_tdma_dur_adj_for_acl.wait_count, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @halbtc8723b1ant_monitor_bt_enable_disable.bt_disable_cnt, ptr @.str.166, ptr @.str.167, ptr @halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter, ptr @btc8723b1ant_is_wifi_status_changed.pre_wifi_busy, ptr @btc8723b1ant_is_wifi_status_changed.pre_under_4way, ptr @btc8723b1ant_is_wifi_status_changed.pre_bt_hs_on], section "llvm.metadata"
@0 = internal global [181 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glcoex_dm_8723b_1ant to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glcoex_sta_8723b_1ant to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @halbtc8723b1ant_monitor_bt_ctr.num_of_bt_counter_chk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @halbtc8723b1ant_ps_tdma.pre_wifi_busy to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8723b1ant_tdma_dur_adj_for_acl.up to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8723b1ant_tdma_dur_adj_for_acl.dn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8723b1ant_tdma_dur_adj_for_acl.m to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8723b1ant_tdma_dur_adj_for_acl.n to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8723b1ant_tdma_dur_adj_for_acl.wait_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @halbtc8723b1ant_monitor_bt_enable_disable.bt_disable_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8723b1ant_is_wifi_status_changed.pre_wifi_busy to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8723b1ant_is_wifi_status_changed.pre_under_4way to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8723b1ant_is_wifi_status_changed.pre_bt_hs_on to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b1ant_power_on_setting(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #4
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !376
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str) #4
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %3 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %stop_coex_dm, align 1
  %btc_write_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %4 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %btc_write_1byte, align 4
  tail call void %5(ptr noundef %btcoexist, i32 noundef 103, i32 noundef 32) #4
  %btc_read_2byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 20
  %6 = ptrtoint ptr %btc_read_2byte to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %btc_read_2byte, align 4
  %call = tail call zeroext i16 %7(ptr noundef %btcoexist, i32 noundef 2) #4
  %btc_write_2byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 21
  %8 = ptrtoint ptr %btc_write_2byte to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btc_write_2byte, align 4
  %10 = or i16 %call, 3
  tail call void %9(ptr noundef %btcoexist, i32 noundef 2, i16 noundef zeroext %10) #4
  %11 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %btc_write_1byte, align 4
  tail call void %12(ptr noundef %btcoexist, i32 noundef 1893, i32 noundef 24) #4
  %13 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %btc_write_1byte, align 4
  tail call void %14(ptr noundef %btcoexist, i32 noundef 1902, i32 noundef 4) #4
  %chip_interface = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 5
  %15 = ptrtoint ptr %chip_interface to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chip_interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp = icmp eq i32 %16, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %btc_write_4byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %17 = ptrtoint ptr %btc_write_4byte to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_write_4byte, align 4
  tail call void %18(ptr noundef %btcoexist, i32 noundef 2376, i32 noundef 0) #4
  %btc_write_local_reg_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 24
  %19 = ptrtoint ptr %btc_write_local_reg_1byte to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_write_local_reg_1byte, align 4
  tail call void %20(ptr noundef %btcoexist, i32 noundef 65032, i8 noundef zeroext 1) #4
  %btdm_ant_pos = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %btdm_ant_pos to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %btdm_ant_pos, align 1
  br label %if.end42

if.else:                                          ; preds = %entry
  %single_ant_path = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %single_ant_path to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %single_ant_path, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i8 %23, label %if.else.if.end27_crit_edge [
    i8 0, label %if.then13
    i8 1, label %if.then21
  ]

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %btc_write_4byte14 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %25 = ptrtoint ptr %btc_write_4byte14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %btc_write_4byte14, align 4
  tail call void %26(ptr noundef %btcoexist, i32 noundef 2376, i32 noundef 640) #4
  %btdm_ant_pos15 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %27 = ptrtoint ptr %btdm_ant_pos15 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %btdm_ant_pos15, align 1
  %28 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %value, align 4
  br label %if.end27

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %btc_write_4byte22 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %29 = ptrtoint ptr %btc_write_4byte22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %btc_write_4byte22, align 4
  tail call void %30(ptr noundef %btcoexist, i32 noundef 2376, i32 noundef 0) #4
  %btdm_ant_pos26 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %btdm_ant_pos26 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %btdm_ant_pos26, align 1
  %32 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %value, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %if.then13, %if.else.if.end27_crit_edge
  %u8tmp.0 = phi i8 [ 0, %if.then13 ], [ 1, %if.then21 ], [ 0, %if.else.if.end27_crit_edge ]
  %btc_set = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %33 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %btc_set, align 4
  %call28 = call zeroext i1 %34(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %value) #4
  %35 = ptrtoint ptr %chip_interface to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %chip_interface, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %36, label %if.end27.if.end42_crit_edge [
    i32 1, label %if.then32
    i32 3, label %if.then38
  ]

if.end27.if.end42_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %btc_write_local_reg_1byte33 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 24
  %38 = ptrtoint ptr %btc_write_local_reg_1byte33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %btc_write_local_reg_1byte33, align 4
  call void %39(ptr noundef %btcoexist, i32 noundef 900, i8 noundef zeroext %u8tmp.0) #4
  br label %if.end42

if.then38:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %btc_write_local_reg_1byte39 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 24
  %40 = ptrtoint ptr %btc_write_local_reg_1byte39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %btc_write_local_reg_1byte39, align 4
  call void %41(ptr noundef %btcoexist, i32 noundef 96, i8 noundef zeroext %u8tmp.0) #4
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.then32, %if.end27.if.end42_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b1ant_init_hwconfig(ptr noundef %btcoexist, i1 noundef zeroext %wifi_only) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @halbtc8723b1ant_init_hw_config(ptr noundef %btcoexist, i1 noundef zeroext %wifi_only)
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %0 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %stop_coex_dm, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_init_hw_config(ptr noundef %btcoexist, i1 noundef zeroext %wifi_only) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.125) #4
  %btc_read_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 17
  %2 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %btc_read_1byte, align 4
  %call = tail call zeroext i8 %3(ptr noundef %btcoexist, i32 noundef 241) #4
  %4 = lshr i8 %call, 4
  store i8 %4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 46), align 1
  %btc_write_1byte_bitmask = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %5 = ptrtoint ptr %btc_write_1byte_bitmask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_write_1byte_bitmask, align 4
  tail call void %6(ptr noundef %btcoexist, i32 noundef 1360, i32 noundef 8, i8 noundef zeroext 1) #4
  %btc_write_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %7 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %btc_write_1byte, align 4
  tail call void %8(ptr noundef %btcoexist, i32 noundef 1936, i32 noundef 5) #4
  %9 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btc_write_1byte, align 4
  tail call void %10(ptr noundef %btcoexist, i32 noundef 1912, i32 noundef 1) #4
  %11 = ptrtoint ptr %btc_write_1byte_bitmask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %btc_write_1byte_bitmask, align 4
  tail call void %12(ptr noundef %btcoexist, i32 noundef 64, i32 noundef 32, i8 noundef zeroext 1) #4
  tail call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 8)
  %not.wifi_only = xor i1 %wifi_only, true
  %. = zext i1 %not.wifi_only to i8
  tail call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext %., i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false)
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  tail call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 1431655765, i32 noundef 1431655765) #4
  %btc_read_4byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %13 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %btc_read_4byte, align 4
  %call5 = tail call i32 %14(ptr noundef %btcoexist, i32 noundef 2376) #4
  %15 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_read_1byte, align 4
  %call7 = tail call zeroext i8 %16(ptr noundef %btcoexist, i32 noundef 1893) #4
  %17 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_read_1byte, align 4
  %call9 = tail call zeroext i8 %18(ptr noundef %btcoexist, i32 noundef 103) #4
  %conv10 = zext i8 %call7 to i32
  %conv11 = zext i8 %call9 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef %call5, i32 noundef %conv10, i32 noundef %conv11) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b1ant_init_coex_dm(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i = alloca [1 x i8], align 1
  %h2c_parameter.i.i.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.1) #4
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %2 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %stop_coex_dm, align 1
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %4, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.127, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 18), align 2
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 17), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i.i.i = icmp eq i8 %5, 0
  br i1 %cmp.i.i.i, label %entry.halbtc8723b1ant_init_coex_dm.exit_crit_edge, label %if.end10.i.i.i

entry.halbtc8723b1ant_init_coex_dm.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_init_coex_dm.exit

if.end10.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i) #4
  %8 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i.i, i32 1
  %9 = call ptr @memset(ptr %8, i32 0, i32 5)
  %10 = ptrtoint ptr %h2c_parameter.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 6, ptr %h2c_parameter.i.i.i.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.130) #4
  %btc_fill_h2c.i.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %11 = ptrtoint ptr %btc_fill_h2c.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %btc_fill_h2c.i.i.i.i, align 4
  call void %12(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i) #4
  %13 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 18), align 2, !range !377
  store i8 %13, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 17), align 1
  br label %halbtc8723b1ant_init_coex_dm.exit

halbtc8723b1ant_init_coex_dm.exit:                ; preds = %if.end10.i.i.i, %entry.halbtc8723b1ant_init_coex_dm.exit_crit_edge
  store i32 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 33), align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 20), align 1
  %14 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %h2c_parameter.i, align 1
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %15 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %16(ptr noundef %btcoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b1ant_display_coex_info(ptr noundef %btcoexist, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i = alloca [1 x i8], align 1
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
  %wifi_link_status = alloca i32, align 4
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
  store i32 -1, ptr %wifi_bw, align 4, !annotation !376
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_traffic_dir) #4
  %9 = ptrtoint ptr %wifi_traffic_dir to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %wifi_traffic_dir, align 4, !annotation !376
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_link_status) #4
  %10 = ptrtoint ptr %wifi_link_status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %wifi_link_status, align 4, !annotation !376
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_dot11_chnl) #4
  %11 = ptrtoint ptr %wifi_dot11_chnl to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %wifi_dot11_chnl, align 1, !annotation !376
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_hs_chnl) #4
  %12 = ptrtoint ptr %wifi_hs_chnl to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %wifi_hs_chnl, align 1, !annotation !376
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_ver) #4
  %13 = ptrtoint ptr %fw_ver to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %fw_ver, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bt_patch_ver) #4
  %14 = ptrtoint ptr %bt_patch_ver to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %bt_patch_ver, align 4
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.2) #4
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %15 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %manual_control, align 2, !range !377
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
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %17 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %stop_coex_dm, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool4.not = icmp eq i8 %18, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.5) #4
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.4) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %pg_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %pg_ant_num to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pg_ant_num, align 1
  %conv = zext i8 %20 to i32
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %btdm_ant_num, align 1
  %conv7 = zext i8 %22 to i32
  %btdm_ant_pos = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %btdm_ant_pos to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %btdm_ant_pos, align 1
  %conv8 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv8) #4
  %25 = ptrtoint ptr %stack_info2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %stack_info2, align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool9.not = icmp eq i8 %26, 0
  %cond = select i1 %tobool9.not, ptr @.str.11, ptr @.str.10
  %hci_version = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %hci_version to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %hci_version, align 2
  %conv11 = zext i16 %28 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond, i32 noundef %conv11) #4
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %29 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %30(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %bt_patch_ver) #4
  %31 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %btc_get, align 4
  %call13 = call zeroext i1 %32(ptr noundef %btcoexist, i8 noundef zeroext 26, ptr noundef nonnull %fw_ver) #4
  %33 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fw_ver, align 4
  %35 = ptrtoint ptr %bt_patch_ver to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bt_patch_ver, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 20130918, i32 noundef 71, i32 noundef %34, i32 noundef %36, i32 noundef %36) #4
  %37 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %btc_get, align 4
  %call15 = call zeroext i1 %38(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on) #4
  %39 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %btc_get, align 4
  %call17 = call zeroext i1 %40(ptr noundef %btcoexist, i8 noundef zeroext 37, ptr noundef nonnull %wifi_dot11_chnl) #4
  %41 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_get, align 4
  %call19 = call zeroext i1 %42(ptr noundef %btcoexist, i8 noundef zeroext 39, ptr noundef nonnull %wifi_hs_chnl) #4
  %43 = ptrtoint ptr %wifi_dot11_chnl to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %wifi_dot11_chnl, align 1
  %conv20 = zext i8 %44 to i32
  %45 = ptrtoint ptr %wifi_hs_chnl to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %wifi_hs_chnl, align 1
  %conv21 = zext i8 %46 to i32
  %47 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bt_hs_on, align 1, !range !377
  %49 = zext i8 %48 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %conv20, i32 noundef %conv21, i32 noundef %49) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 35)) #4
  %50 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %btc_get, align 4
  %call25 = call zeroext i1 %51(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi) #4
  %52 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %btc_get, align 4
  %call27 = call zeroext i1 %53(ptr noundef %btcoexist, i8 noundef zeroext 23, ptr noundef nonnull %bt_hs_rssi) #4
  %54 = ptrtoint ptr %wifi_rssi to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %wifi_rssi, align 4
  %56 = ptrtoint ptr %bt_hs_rssi to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bt_hs_rssi, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %55, i32 noundef %57) #4
  %58 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %btc_get, align 4
  %call29 = call zeroext i1 %59(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %scan) #4
  %60 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %btc_get, align 4
  %call31 = call zeroext i1 %61(ptr noundef %btcoexist, i8 noundef zeroext 6, ptr noundef nonnull %link) #4
  %62 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %btc_get, align 4
  %call33 = call zeroext i1 %63(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %roam) #4
  %64 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %link, align 1, !range !377
  %66 = zext i8 %65 to i32
  %67 = ptrtoint ptr %roam to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %roam, align 1, !range !377
  %69 = zext i8 %68 to i32
  %70 = ptrtoint ptr %scan to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %scan, align 1, !range !377
  %72 = zext i8 %71 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %66, i32 noundef %69, i32 noundef %72) #4
  %73 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %btc_get, align 4
  %call41 = call zeroext i1 %74(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef nonnull %wifi_under_5g) #4
  %75 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %btc_get, align 4
  %call43 = call zeroext i1 %76(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %77 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %btc_get, align 4
  %call45 = call zeroext i1 %78(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %wifi_busy) #4
  %79 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %btc_get, align 4
  %call47 = call zeroext i1 %80(ptr noundef %btcoexist, i8 noundef zeroext 25, ptr noundef nonnull %wifi_traffic_dir) #4
  %81 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %wifi_under_5g, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool48.not = icmp eq i8 %82, 0
  %cond50 = select i1 %tobool48.not, ptr @.str.25, ptr @.str.24
  %83 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp = icmp eq i32 %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp52 = icmp eq i32 %84, 2
  %cond54 = select i1 %cmp52, ptr @.str.27, ptr @.str.28
  %cond55 = select i1 %cmp, ptr @.str.26, ptr %cond54
  %85 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %wifi_busy, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool56.not = icmp eq i8 %86, 0
  br i1 %tobool56.not, label %if.end6.cond.end62_crit_edge, label %cond.false58

if.end6.cond.end62_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end62

cond.false58:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %87 = ptrtoint ptr %wifi_traffic_dir to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %wifi_traffic_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp59 = icmp eq i32 %88, 0
  %cond61 = select i1 %cmp59, ptr @.str.30, ptr @.str.31
  br label %cond.end62

cond.end62:                                       ; preds = %cond.false58, %if.end6.cond.end62_crit_edge
  %cond63 = phi ptr [ %cond61, %cond.false58 ], [ @.str.29, %if.end6.cond.end62_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond50, ptr noundef nonnull %cond55, ptr noundef nonnull %cond63) #4
  %89 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %btc_get, align 4
  %call65 = call zeroext i1 %90(ptr noundef %btcoexist, i8 noundef zeroext 27, ptr noundef nonnull %wifi_link_status) #4
  %91 = ptrtoint ptr %wifi_link_status to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %wifi_link_status, align 4
  %and = and i32 %92, 1
  %and68 = lshr i32 %92, 1
  %and68.lobit = and i32 %and68, 1
  %and71 = lshr i32 %92, 2
  %and71.lobit = and i32 %and71, 1
  %and74 = lshr i32 %92, 3
  %and74.lobit = and i32 %and74, 1
  %and77 = lshr i32 %92, 4
  %and77.lobit = and i32 %and77, 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %and, i32 noundef %and68.lobit, i32 noundef %and71.lobit, i32 noundef %and74.lobit, i32 noundef %and77.lobit) #4
  %93 = load i8, ptr @glcoex_sta_8723b_1ant, align 4, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool80.not = icmp eq i8 %93, 0
  br i1 %tobool80.not, label %cond.false83, label %cond.end62.cond.end102_crit_edge

cond.end62.cond.end102_crit_edge:                 ; preds = %cond.end62
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end102

cond.false83:                                     ; preds = %cond.end62
  %94 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 24), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool84.not = icmp eq i8 %94, 0
  br i1 %tobool84.not, label %cond.false87, label %cond.false83.cond.end102_crit_edge

cond.false83.cond.end102_crit_edge:               ; preds = %cond.false83
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end102

cond.false87:                                     ; preds = %cond.false83
  %95 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 34), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp89 = icmp eq i8 %95, 0
  br i1 %cmp89, label %cond.false87.cond.end102_crit_edge, label %cond.false92

cond.false87.cond.end102_crit_edge:               ; preds = %cond.false87
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end102

cond.false92:                                     ; preds = %cond.false87
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %95)
  %cmp95 = icmp eq i8 %95, 1
  %cond97 = select i1 %cmp95, ptr @.str.39, ptr @.str.40
  br label %cond.end102

cond.end102:                                      ; preds = %cond.false92, %cond.false87.cond.end102_crit_edge, %cond.false83.cond.end102_crit_edge, %cond.end62.cond.end102_crit_edge
  %cond103 = phi ptr [ @.str.36, %cond.end62.cond.end102_crit_edge ], [ @.str.37, %cond.false83.cond.end102_crit_edge ], [ %cond97, %cond.false92 ], [ @.str.38, %cond.false87.cond.end102_crit_edge ]
  %96 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 16), align 4
  %conv104 = zext i8 %96 to i32
  %97 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 27), align 4
  %conv105 = zext i8 %97 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond103, i32 noundef %conv104, i32 noundef %conv105) #4
  %sco_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %98 = ptrtoint ptr %sco_exist to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %sco_exist, align 1, !range !377
  %100 = zext i8 %99 to i32
  %hid_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %101 = ptrtoint ptr %hid_exist to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %hid_exist, align 1, !range !377
  %103 = zext i8 %102 to i32
  %pan_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %104 = ptrtoint ptr %pan_exist to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %pan_exist, align 1, !range !377
  %106 = zext i8 %105 to i32
  %a2dp_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %107 = ptrtoint ptr %a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %a2dp_exist, align 1, !range !377
  %109 = zext i8 %108 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %100, i32 noundef %103, i32 noundef %106, i32 noundef %109) #4
  %btc_disp_dbg_msg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 30
  %110 = ptrtoint ptr %btc_disp_dbg_msg to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %btc_disp_dbg_msg, align 4
  call void %111(ptr noundef %btcoexist, i8 noundef zeroext 1, ptr noundef %m) #4
  %112 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 28), align 1
  %113 = and i8 %112, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool117.not = icmp eq i8 %113, 0
  %cond118 = select i1 %tobool117.not, ptr @.str.46, ptr @.str.45
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull %cond118) #4
  %114 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 22, i32 0), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool122.not = icmp eq i32 %114, 0
  br i1 %tobool122.not, label %cond.end102.for.inc_crit_edge, label %if.then123

cond.end102.for.inc_crit_edge:                    ; preds = %cond.end102
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then123:                                       ; preds = %cond.end102
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.131, ptr noundef getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 21, i32 0), i32 noundef %114) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then123, %cond.end102.for.inc_crit_edge
  %115 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 22, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool122.not.1 = icmp eq i32 %115, 0
  br i1 %tobool122.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then123.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then123.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 21, i32 1), i32 noundef %115) #4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then123.1, %for.inc.for.inc.1_crit_edge
  %116 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 22, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool122.not.2 = icmp eq i32 %116, 0
  br i1 %tobool122.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then123.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then123.2:                                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.133, ptr noundef getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 21, i32 2), i32 noundef %116) #4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then123.2, %for.inc.1.for.inc.2_crit_edge
  %117 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 10), align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool133.not = icmp eq i8 %117, 0
  %cond135 = select i1 %tobool133.not, ptr @.str.51, ptr @.str.50
  %118 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 9), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool136.not = icmp eq i8 %118, 0
  %cond138 = select i1 %tobool136.not, ptr @.str.53, ptr @.str.52
  %lps_val = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 3, i32 25
  %119 = ptrtoint ptr %lps_val to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %lps_val, align 2
  %conv139 = zext i8 %120 to i32
  %rpwm_val = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 3, i32 26
  %121 = ptrtoint ptr %rpwm_val to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %rpwm_val, align 1
  %conv141 = zext i8 %122 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull %cond135, ptr noundef nonnull %cond138, i32 noundef %conv139, i32 noundef %conv141) #4
  %123 = ptrtoint ptr %btc_disp_dbg_msg to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %btc_disp_dbg_msg, align 4
  call void %124(ptr noundef %btcoexist, i8 noundef zeroext 3, ptr noundef %m) #4
  %125 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %manual_control, align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool144.not = icmp eq i8 %126, 0
  br i1 %tobool144.not, label %if.then145, label %for.inc.2.if.end166_crit_edge

for.inc.2.if.end166_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end166

if.then145:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55) #4
  %127 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 18), align 2, !range !377
  %128 = zext i8 %127 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef %128) #4
  %reject_agg_pkt = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 3, i32 9
  %129 = ptrtoint ptr %reject_agg_pkt to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %reject_agg_pkt, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool149.not = icmp eq i8 %130, 0
  %cond151 = select i1 %tobool149.not, ptr @.str.11, ptr @.str.10
  %bt_ctrl_buf_size = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 3, i32 10
  %131 = ptrtoint ptr %bt_ctrl_buf_size to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %bt_ctrl_buf_size, align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool153.not = icmp eq i8 %132, 0
  %cond155 = select i1 %tobool153.not, ptr @.str.11, ptr @.str.10
  %agg_buf_size = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 3, i32 6
  %133 = ptrtoint ptr %agg_buf_size to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %agg_buf_size, align 2
  %conv157 = zext i8 %134 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, ptr noundef nonnull %cond151, ptr noundef nonnull %cond155, i32 noundef %conv157) #4
  %ra_mask = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 3, i32 27
  %135 = ptrtoint ptr %ra_mask to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %ra_mask, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef %136) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.62) #4
  %137 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 5), align 1
  %conv160 = zext i8 %137 to i32
  %138 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 8), align 4, !range !377
  %139 = zext i8 %138 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 6), i32 noundef %conv160, i32 noundef %139) #4
  %140 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 2), align 2, !range !377
  %141 = zext i8 %140 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef %141) #4
  %142 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 45), align 4
  %conv165 = zext i8 %142 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.67, i32 noundef %conv165) #4
  br label %if.end166

if.end166:                                        ; preds = %if.then145, %for.inc.2.if.end166_crit_edge
  %143 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  %conv167 = zext i8 %143 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef %conv167) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.70) #4
  %144 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 28), align 4
  %145 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 29), align 4
  %146 = load i16, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 30), align 4
  %conv168 = zext i16 %146 to i32
  %147 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 31), align 2
  %conv169 = zext i8 %147 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef %144, i32 noundef %145, i32 noundef %conv168, i32 noundef %conv169) #4
  %btc_read_4byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %148 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %btc_read_4byte, align 4
  %call170 = call i32 %149(ptr noundef %btcoexist, i32 noundef 1072) #4
  %150 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %btc_read_4byte, align 4
  %call173 = call i32 %151(ptr noundef %btcoexist, i32 noundef 1076) #4
  %btc_read_2byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 20
  %152 = ptrtoint ptr %btc_read_2byte to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %btc_read_2byte, align 4
  %call175 = call zeroext i16 %153(ptr noundef %btcoexist, i32 noundef 1066) #4
  %btc_read_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 17
  %154 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %btc_read_1byte, align 4
  %call177 = call zeroext i8 %155(ptr noundef %btcoexist, i32 noundef 1110) #4
  %conv182 = zext i16 %call175 to i32
  %conv184 = zext i8 %call177 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.73, i32 noundef %call170, i32 noundef %call173, i32 noundef %conv182, i32 noundef %conv184) #4
  %156 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %btc_read_1byte, align 4
  %call186 = call zeroext i8 %157(ptr noundef %btcoexist, i32 noundef 1912) #4
  %158 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %btc_read_4byte, align 4
  %call189 = call i32 %159(ptr noundef %btcoexist, i32 noundef 1740) #4
  %160 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %btc_read_4byte, align 4
  %call192 = call i32 %161(ptr noundef %btcoexist, i32 noundef 2176) #4
  %conv195 = zext i8 %call186 to i32
  %and198 = lshr i32 %call192, 25
  %shr = and i32 %and198, 31
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef %conv195, i32 noundef %call189, i32 noundef %shr) #4
  %162 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %btc_read_4byte, align 4
  %call200 = call i32 %163(ptr noundef %btcoexist, i32 noundef 2376) #4
  %164 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %btc_read_1byte, align 4
  %call203 = call zeroext i8 %165(ptr noundef %btcoexist, i32 noundef 103) #4
  %166 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %btc_read_1byte, align 4
  %call206 = call zeroext i8 %167(ptr noundef %btcoexist, i32 noundef 1893) #4
  %168 = lshr i8 %call203, 5
  %169 = and i8 %168, 1
  %170 = zext i8 %169 to i32
  %conv214 = zext i8 %call206 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.76, i32 noundef %call200, i32 noundef %170, i32 noundef %conv214) #4
  %171 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %btc_read_4byte, align 4
  %call216 = call i32 %172(ptr noundef %btcoexist, i32 noundef 2348) #4
  %173 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %btc_read_4byte, align 4
  %call219 = call i32 %174(ptr noundef %btcoexist, i32 noundef 2352) #4
  %175 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %btc_read_4byte, align 4
  %call222 = call i32 %176(ptr noundef %btcoexist, i32 noundef 2372) #4
  %and225 = and i32 %call216, 3
  %and227 = and i32 %call219, 255
  %and229 = and i32 %call222, 3
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.77, i32 noundef %and225, i32 noundef %and227, i32 noundef %and229) #4
  %177 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %btc_read_1byte, align 4
  %call231 = call zeroext i8 %178(ptr noundef %btcoexist, i32 noundef 57) #4
  %179 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %btc_read_1byte, align 4
  %call234 = call zeroext i8 %180(ptr noundef %btcoexist, i32 noundef 64) #4
  %181 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %btc_read_4byte, align 4
  %call237 = call i32 %182(ptr noundef %btcoexist, i32 noundef 76) #4
  %183 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %btc_read_1byte, align 4
  %call240 = call zeroext i8 %184(ptr noundef %btcoexist, i32 noundef 100) #4
  %185 = lshr i8 %call231, 3
  %186 = and i8 %185, 1
  %187 = zext i8 %186 to i32
  %conv247 = zext i8 %call234 to i32
  %and249 = lshr i32 %call237, 23
  %shr250 = and i32 %and249, 3
  %188 = and i8 %call240, 1
  %and253 = zext i8 %188 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef %187, i32 noundef %conv247, i32 noundef %shr250, i32 noundef %and253) #4
  %189 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %btc_read_4byte, align 4
  %call255 = call i32 %190(ptr noundef %btcoexist, i32 noundef 1360) #4
  %191 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %btc_read_1byte, align 4
  %call258 = call zeroext i8 %192(ptr noundef %btcoexist, i32 noundef 1314) #4
  %conv262 = zext i8 %call258 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, i32 noundef %call255, i32 noundef %conv262) #4
  %193 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %btc_read_4byte, align 4
  %call264 = call i32 %194(ptr noundef %btcoexist, i32 noundef 3152) #4
  %195 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %btc_read_1byte, align 4
  %call267 = call zeroext i8 %196(ptr noundef %btcoexist, i32 noundef 1180) #4
  %and270 = and i32 %call264, 255
  %conv272 = zext i8 %call267 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.82, i32 noundef %and270, i32 noundef %conv272) #4
  %197 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %btc_read_4byte, align 4
  %call274 = call i32 %198(ptr noundef %btcoexist, i32 noundef 3488) #4
  %199 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %btc_read_4byte, align 4
  %call277 = call i32 %200(ptr noundef %btcoexist, i32 noundef 3492) #4
  %201 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %btc_read_4byte, align 4
  %call280 = call i32 %202(ptr noundef %btcoexist, i32 noundef 3496) #4
  %203 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %btc_read_4byte, align 4
  %call283 = call i32 %204(ptr noundef %btcoexist, i32 noundef 3312) #4
  %205 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %btc_read_1byte, align 4
  %call286 = call zeroext i8 %206(ptr noundef %btcoexist, i32 noundef 2651) #4
  %207 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %btc_read_1byte, align 4
  %call289 = call zeroext i8 %208(ptr noundef %btcoexist, i32 noundef 2652) #4
  %shr293 = lshr i32 %call274, 16
  %shr296 = lshr i32 %call277, 16
  %add = add nuw nsw i32 %shr296, %shr293
  %and298 = and i32 %call277, 65535
  %add299 = add nuw nsw i32 %add, %and298
  %and301 = and i32 %call280, 65535
  %add302 = add nuw nsw i32 %add299, %and301
  %shr305 = lshr i32 %call283, 16
  %add306 = add nuw nsw i32 %add302, %shr305
  %and308 = and i32 %call283, 65535
  %add309 = add nuw nsw i32 %add306, %and308
  %conv311 = zext i8 %call286 to i32
  %shl = shl nuw nsw i32 %conv311, 8
  %conv313 = zext i8 %call289 to i32
  %add314 = or i32 %shl, %conv313
  %and316 = and i32 %call274, 65535
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.83, i32 noundef %and316, i32 noundef %add309, i32 noundef %add314) #4
  %209 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %btc_read_4byte, align 4
  %call318 = call i32 %210(ptr noundef %btcoexist, i32 noundef 1728) #4
  %211 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %btc_read_4byte, align 4
  %call321 = call i32 %212(ptr noundef %btcoexist, i32 noundef 1732) #4
  %213 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %btc_read_4byte, align 4
  %call324 = call i32 %214(ptr noundef %btcoexist, i32 noundef 1736) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.84, i32 noundef %call318, i32 noundef %call321, i32 noundef %call324) #4
  %215 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 13), align 4
  %216 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 12), align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.85, i32 noundef %215, i32 noundef %216) #4
  %217 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 15), align 4
  %218 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 14), align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.86, i32 noundef %217, i32 noundef %218) #4
  %auto_report_1ant = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 7
  %219 = ptrtoint ptr %auto_report_1ant to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %auto_report_1ant, align 4, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool329.not = icmp eq i8 %220, 0
  br i1 %tobool329.not, label %if.end166.if.end331_crit_edge, label %if.then330

if.end166.if.end331_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end331

if.then330:                                       ; preds = %if.end166
  %221 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %btc_read_4byte, align 4
  %call.i = call i32 %222(ptr noundef %btcoexist, i32 noundef 1904) #4
  %and.i = and i32 %call.i, 65535
  %shr.i = lshr i32 %call.i, 16
  %223 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %btc_read_4byte, align 4
  %call3.i = call i32 %224(ptr noundef %btcoexist, i32 noundef 1908) #4
  %and4.i = and i32 %call3.i, 65535
  %shr6.i = lshr i32 %call3.i, 16
  store i32 %and.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 12), align 4
  store i32 %shr.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 13), align 4
  store i32 %and4.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 14), align 4
  store i32 %shr6.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050, i32 %and4.i)
  %cmp.i = icmp ugt i32 %and4.i, 1050
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then330.if.end.i_crit_edge

if.then330.if.end.i_crit_edge:                    ; preds = %if.then330
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then330
  %225 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 24), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool.not.i = icmp eq i8 %225, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %226 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 33), align 4
  %inc.i = add i32 %226, 1
  store i32 %inc.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 33), align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then330.if.end.i_crit_edge
  %btc_write_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %227 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %btc_write_1byte.i, align 4
  call void %228(ptr noundef %btcoexist, i32 noundef 1902, i32 noundef 12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %229 = icmp eq i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %cmp12.i = icmp eq i32 %and4.i, 0
  %or.cond34.i = select i1 %229, i1 %cmp12.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call3.i)
  %cmp14.i = icmp ult i32 %call3.i, 65536
  %or.cond35.i = select i1 %or.cond34.i, i1 %cmp14.i, i1 false
  br i1 %or.cond35.i, label %if.then15.i, label %if.else.i

if.then15.i:                                      ; preds = %if.end.i
  %230 = load i32, ptr @halbtc8723b1ant_monitor_bt_ctr.num_of_bt_counter_chk, align 4
  %inc16.i = add i32 %230, 1
  store i32 %inc16.i, ptr @halbtc8723b1ant_monitor_bt_ctr.num_of_bt_counter_chk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc16.i)
  %cmp17.i = icmp eq i32 %inc16.i, 3
  br i1 %cmp17.i, label %if.then18.i, label %if.then15.i.if.end331_crit_edge

if.then15.i.if.end331_crit_edge:                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end331

if.then18.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 20), align 1
  %231 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 1, ptr %h2c_parameter.i.i, align 1
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %232 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %233(ptr noundef %btcoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  br label %if.end331

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  store i32 0, ptr @halbtc8723b1ant_monitor_bt_ctr.num_of_bt_counter_chk, align 4
  br label %if.end331

if.end331:                                        ; preds = %if.else.i, %if.then18.i, %if.then15.i.if.end331_crit_edge, %if.end166.if.end331_crit_edge
  %234 = ptrtoint ptr %btc_disp_dbg_msg to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %btc_disp_dbg_msg, align 4
  call void %235(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef %m) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bt_patch_ver) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_ver) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_hs_chnl) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_dot11_chnl) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_link_status) #4
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
define dso_local void @ex_btc8723b1ant_ips_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i = alloca [1 x i8], align 1
  %h2c_parameter.i.i.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %2 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %manual_control, align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %4 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stop_coex_dm, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.169)
  switch i8 %type, label %if.end.cleanup_crit_edge [
    i8 1, label %if.then3
    i8 0, label %if.then7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.87) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 10), align 2
  tail call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 1, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true)
  tail call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 0)
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  tail call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765) #4
  br label %cleanup

if.then7:                                         ; preds = %if.end
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.88) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 10), align 2
  tail call fastcc void @halbtc8723b1ant_init_hw_config(ptr noundef %btcoexist, i1 noundef zeroext false)
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.127, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 18), align 2
  %9 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 17), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i.i.i = icmp eq i8 %9, 0
  br i1 %cmp.i.i.i, label %if.then7.halbtc8723b1ant_init_coex_dm.exit_crit_edge, label %if.end10.i.i.i

if.then7.halbtc8723b1ant_init_coex_dm.exit_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_init_coex_dm.exit

if.end10.i.i.i:                                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i) #4
  %12 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i.i, i32 1
  %13 = call ptr @memset(ptr %12, i32 0, i32 5)
  %14 = ptrtoint ptr %h2c_parameter.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 6, ptr %h2c_parameter.i.i.i.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.130) #4
  %btc_fill_h2c.i.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %15 = ptrtoint ptr %btc_fill_h2c.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_fill_h2c.i.i.i.i, align 4
  call void %16(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i) #4
  %17 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 18), align 2, !range !377
  store i8 %17, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 17), align 1
  br label %halbtc8723b1ant_init_coex_dm.exit

halbtc8723b1ant_init_coex_dm.exit:                ; preds = %if.end10.i.i.i, %if.then7.halbtc8723b1ant_init_coex_dm.exit_crit_edge
  store i32 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 33), align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 20), align 1
  %18 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %h2c_parameter.i, align 1
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %19 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %20(ptr noundef %btcoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  br label %cleanup

cleanup:                                          ; preds = %halbtc8723b1ant_init_coex_dm.exit, %if.then3, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext %ant_pos_type, i1 noundef zeroext %force_exec, i1 noundef zeroext %init_hw_cfg, i1 noundef zeroext %wifi_off) unnamed_addr #0 align 64 {
entry:
  %fw_ver = alloca i32, align 4
  %pg_ext_switch = alloca i8, align 1
  %is_in_mp_mode = alloca i8, align 1
  %h2c_parameter = alloca [2 x i8], align 2
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pg_ext_switch) #4
  %3 = ptrtoint ptr %pg_ext_switch to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %pg_ext_switch, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %is_in_mp_mode) #4
  %4 = ptrtoint ptr %is_in_mp_mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_in_mp_mode, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %h2c_parameter) #4
  %5 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %h2c_parameter, align 2
  store i8 %ant_pos_type, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 1), align 1
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %6 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %7(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %pg_ext_switch) #4
  %8 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btc_get, align 4
  %call5 = call zeroext i1 %9(ptr noundef %btcoexist, i8 noundef zeroext 26, ptr noundef nonnull %fw_ver) #4
  %10 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 786432, i32 %11)
  %cmp = icmp ult i32 %11, 786432
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %12 = ptrtoint ptr %pg_ext_switch to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pg_ext_switch, align 1, !range !377
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
  %use_ext_switch.0.off0 = phi i1 [ true, %if.then ], [ false, %lor.lhs.false.if.end_crit_edge ]
  br i1 %init_hw_cfg, label %if.then7, label %if.else16

if.then7:                                         ; preds = %if.end
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %14 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_set_rf_reg, align 4
  call void %15(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 1920) #4
  %16 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572863, i32 %17)
  %cmp8 = icmp ugt i32 %17, 1572863
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %h2c_parameter, align 2
  %btc_fill_h2c = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %19 = ptrtoint ptr %btc_fill_h2c to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_fill_h2c, align 4
  call void %20(ptr noundef %btcoexist, i8 noundef zeroext 110, i32 noundef 1, ptr noundef nonnull %h2c_parameter) #4
  br label %if.end76.thread334

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %btc_write_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %21 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %btc_write_1byte, align 4
  call void %22(ptr noundef %btcoexist, i32 noundef 1893, i32 noundef 24) #4
  br label %if.end76.thread334

if.else16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572863, i32 %11)
  %cmp19 = icmp ugt i32 %11, 1572863
  br i1 %wifi_off, label %if.then18, label %if.else38

if.then18:                                        ; preds = %if.else16
  br i1 %cmp19, label %if.then20, label %if.else24

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %h2c_parameter, align 2
  %btc_fill_h2c22 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %24 = ptrtoint ptr %btc_fill_h2c22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_fill_h2c22, align 4
  call void %25(ptr noundef %btcoexist, i8 noundef zeroext 110, i32 noundef 1, ptr noundef nonnull %h2c_parameter) #4
  br label %if.end26

if.else24:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  %btc_write_1byte25 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %26 = ptrtoint ptr %btc_write_1byte25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %btc_write_1byte25, align 4
  call void %27(ptr noundef %btcoexist, i32 noundef 1893, i32 noundef 24) #4
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then20
  %btc_write_1byte27 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %28 = ptrtoint ptr %btc_write_1byte27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_write_1byte27, align 4
  call void %29(ptr noundef %btcoexist, i32 noundef 1902, i32 noundef 4) #4
  %30 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_get, align 4
  %call29 = call zeroext i1 %31(ptr noundef %btcoexist, i8 noundef zeroext 18, ptr noundef nonnull %is_in_mp_mode) #4
  %32 = ptrtoint ptr %is_in_mp_mode to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %is_in_mp_mode, align 1, !range !377
  %btc_write_1byte_bitmask32 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %34 = ptrtoint ptr %btc_write_1byte_bitmask32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %btc_write_1byte_bitmask32, align 4
  call void %35(ptr noundef %btcoexist, i32 noundef 103, i32 noundef 32, i8 noundef zeroext %33) #4
  %btc_read_4byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %36 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %btc_read_4byte, align 4
  %call36 = call i32 %37(ptr noundef %btcoexist, i32 noundef 76) #4
  %and37 = and i32 %call36, -25165825
  %btc_write_4byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %38 = ptrtoint ptr %btc_write_4byte to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %btc_write_4byte, align 4
  call void %39(ptr noundef %btcoexist, i32 noundef 76, i32 noundef %and37) #4
  br i1 %use_ext_switch.0.off0, label %if.end26.if.end100_crit_edge, label %if.end26.if.end165_crit_edge

if.end26.if.end165_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end165

if.end26.if.end100_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end100

if.else38:                                        ; preds = %if.else16
  %btc_read_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 17
  br i1 %cmp19, label %if.then40, label %if.else38.while.body_crit_edge

if.else38.while.body_crit_edge:                   ; preds = %if.else38
  br label %while.body

if.then40:                                        ; preds = %if.else38
  %40 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %btc_read_1byte, align 4
  %call41 = call zeroext i8 %41(ptr noundef %btcoexist, i32 noundef 1893) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call41)
  %cmp42.not = icmp eq i8 %call41, 0
  br i1 %cmp42.not, label %if.then40.if.end65_crit_edge, label %if.then44

if.then40.if.end65_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

if.then44:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %h2c_parameter, align 2
  %btc_fill_h2c46 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %43 = ptrtoint ptr %btc_fill_h2c46 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %btc_fill_h2c46, align 4
  call void %44(ptr noundef %btcoexist, i8 noundef zeroext 110, i32 noundef 1, ptr noundef nonnull %h2c_parameter) #4
  br label %if.end65

while.cond.loopexit:                              ; preds = %while.body60
  %exitcond.not = icmp eq i32 %inc, 21
  br i1 %exitcond.not, label %while.cond.loopexit.while.end63_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.cond.loopexit.while.end63_crit_edge:        ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end63

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %if.else38.while.body_crit_edge
  %cnt_bt_cal_chk.0338 = phi i32 [ %inc, %while.cond.loopexit.while.body_crit_edge ], [ 0, %if.else38.while.body_crit_edge ]
  %45 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %btc_read_1byte, align 4
  %call53 = call zeroext i8 %46(ptr noundef %btcoexist, i32 noundef 1181) #4
  %inc = add nuw nsw i32 %cnt_bt_cal_chk.0338, 1
  %47 = and i8 %call53, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool56.not = icmp eq i8 %47, 0
  br i1 %tobool56.not, label %if.else61, label %if.then57

if.then57:                                        ; preds = %while.body
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %inc) #4
  br label %while.body60

while.body60:                                     ; preds = %while.body60.while.body60_crit_edge, %if.then57
  %__ms.0337 = phi i32 [ 50, %if.then57 ], [ %dec, %while.body60.while.body60_crit_edge ]
  %dec = add nsw i32 %__ms.0337, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 214748000) #4
  %tobool59.not = icmp eq i32 %dec, 0
  br i1 %tobool59.not, label %while.cond.loopexit, label %while.body60.while.body60_crit_edge

while.body60.while.body60_crit_edge:              ; preds = %while.body60
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body60

if.else61:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %inc) #4
  br label %while.end63

while.end63:                                      ; preds = %if.else61, %while.cond.loopexit.while.end63_crit_edge
  %btc_write_1byte64 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %49 = ptrtoint ptr %btc_write_1byte64 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %btc_write_1byte64, align 4
  call void %50(ptr noundef %btcoexist, i32 noundef 1893, i32 noundef 0) #4
  br label %if.end65

if.end65:                                         ; preds = %while.end63, %if.then44, %if.then40.if.end65_crit_edge
  %btc_read_1byte66 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 17
  %51 = ptrtoint ptr %btc_read_1byte66 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %btc_read_1byte66, align 4
  %call67 = call zeroext i8 %52(ptr noundef %btcoexist, i32 noundef 1902) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %call67)
  %cmp69.not = icmp eq i8 %call67, 12
  br i1 %cmp69.not, label %if.end65.if.end76_crit_edge, label %if.then71

if.end65.if.end76_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end76

if.then71:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  %btc_write_1byte72 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %53 = ptrtoint ptr %btc_write_1byte72 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %btc_write_1byte72, align 4
  call void %54(ptr noundef %btcoexist, i32 noundef 1902, i32 noundef 12) #4
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %if.end65.if.end76_crit_edge
  %btc_write_1byte_bitmask74 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %55 = ptrtoint ptr %btc_write_1byte_bitmask74 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %btc_write_1byte_bitmask74, align 4
  call void %56(ptr noundef %btcoexist, i32 noundef 103, i32 noundef 32, i8 noundef zeroext 1) #4
  br i1 %use_ext_switch.0.off0, label %if.end76.if.end100_crit_edge, label %if.end76.if.end165_crit_edge

if.end76.if.end165_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end165

if.end76.if.end100_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end100

if.end76.thread334:                               ; preds = %if.else, %if.then9
  %btc_write_1byte11 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %57 = ptrtoint ptr %btc_write_1byte11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %btc_write_1byte11, align 4
  call void %58(ptr noundef %btcoexist, i32 noundef 1902, i32 noundef 4) #4
  %btc_write_1byte_bitmask = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %59 = ptrtoint ptr %btc_write_1byte_bitmask to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %btc_write_1byte_bitmask, align 4
  call void %60(ptr noundef %btcoexist, i32 noundef 103, i32 noundef 32, i8 noundef zeroext 0) #4
  %61 = ptrtoint ptr %btc_write_1byte_bitmask to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %btc_write_1byte_bitmask, align 4
  call void %62(ptr noundef %btcoexist, i32 noundef 57, i32 noundef 8, i8 noundef zeroext 1) #4
  %63 = ptrtoint ptr %btc_write_1byte11 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %btc_write_1byte11, align 4
  call void %64(ptr noundef %btcoexist, i32 noundef 2420, i32 noundef 255) #4
  %65 = ptrtoint ptr %btc_write_1byte_bitmask to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %btc_write_1byte_bitmask, align 4
  call void %66(ptr noundef %btcoexist, i32 noundef 2372, i32 noundef 3, i8 noundef zeroext 3) #4
  %67 = ptrtoint ptr %btc_write_1byte11 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %btc_write_1byte11, align 4
  call void %68(ptr noundef %btcoexist, i32 noundef 2352, i32 noundef 119) #4
  %btc_read_4byte81 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %69 = ptrtoint ptr %btc_read_4byte81 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %btc_read_4byte81, align 4
  %call82 = call i32 %70(ptr noundef %btcoexist, i32 noundef 76) #4
  %and83 = and i32 %call82, -25165825
  br i1 %use_ext_switch.0.off0, label %if.then80, label %if.then143

if.then80:                                        ; preds = %if.end76.thread334
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %and83, 16777216
  %btc_write_4byte84 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %71 = ptrtoint ptr %btc_write_4byte84 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %btc_write_4byte84, align 4
  call void %72(ptr noundef %btcoexist, i32 noundef 76, i32 noundef %or) #4
  %73 = ptrtoint ptr %btc_write_4byte84 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %btc_write_4byte84, align 4
  call void %74(ptr noundef %btcoexist, i32 noundef 2376, i32 noundef 0) #4
  %btdm_ant_pos = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %75 = ptrtoint ptr %btdm_ant_pos to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %btdm_ant_pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %76)
  %cmp87 = icmp ne i8 %76, 1
  %. = zext i1 %cmp87 to i8
  %77 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %., ptr %h2c_parameter, align 2
  %arrayidx91 = getelementptr inbounds [2 x i8], ptr %h2c_parameter, i32 0, i32 1
  %78 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %arrayidx91, align 1
  %btc_fill_h2c92 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %79 = ptrtoint ptr %btc_fill_h2c92 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %btc_fill_h2c92, align 4
  call void %80(ptr noundef %btcoexist, i8 noundef zeroext 101, i32 noundef 2, ptr noundef nonnull %h2c_parameter) #4
  br label %if.end100

if.end100:                                        ; preds = %if.then80, %if.end76.if.end100_crit_edge, %if.end26.if.end100_crit_edge
  br i1 %force_exec, label %if.end100.if.then109_crit_edge, label %lor.lhs.false103

if.end100.if.then109_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then109

lor.lhs.false103:                                 ; preds = %if.end100
  %81 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 1), align 1
  %82 = load i8, ptr @glcoex_dm_8723b_1ant, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %81, i8 %82)
  %cmp107.not = icmp eq i8 %81, %82
  br i1 %cmp107.not, label %lor.lhs.false103.if.end210_crit_edge, label %lor.lhs.false103.if.then109_crit_edge

lor.lhs.false103.if.then109_crit_edge:            ; preds = %lor.lhs.false103
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then109

lor.lhs.false103.if.end210_crit_edge:             ; preds = %lor.lhs.false103
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end210

if.then109:                                       ; preds = %lor.lhs.false103.if.then109_crit_edge, %if.end100.if.then109_crit_edge
  %83 = zext i8 %ant_pos_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.170)
  switch i8 %ant_pos_type, label %sw.bb130 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb120
  ]

sw.bb:                                            ; preds = %if.then109
  %btdm_ant_pos111 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %84 = ptrtoint ptr %btdm_ant_pos111 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %btdm_ant_pos111, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %85)
  %cmp113 = icmp eq i8 %85, 1
  %btc_write_1byte_bitmask116 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %86 = ptrtoint ptr %btc_write_1byte_bitmask116 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %btc_write_1byte_bitmask116, align 4
  br i1 %cmp113, label %if.then115, label %if.else117

if.then115:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  call void %87(ptr noundef %btcoexist, i32 noundef 2348, i32 noundef 3, i8 noundef zeroext 1) #4
  br label %if.end210

if.else117:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  call void %87(ptr noundef %btcoexist, i32 noundef 2348, i32 noundef 3, i8 noundef zeroext 2) #4
  br label %if.end210

sw.bb120:                                         ; preds = %if.then109
  %btdm_ant_pos121 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %88 = ptrtoint ptr %btdm_ant_pos121 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %btdm_ant_pos121, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %89)
  %cmp123 = icmp eq i8 %89, 1
  %btc_write_1byte_bitmask126 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %90 = ptrtoint ptr %btc_write_1byte_bitmask126 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %btc_write_1byte_bitmask126, align 4
  br i1 %cmp123, label %if.then125, label %if.else127

if.then125:                                       ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #6
  call void %91(ptr noundef %btcoexist, i32 noundef 2348, i32 noundef 3, i8 noundef zeroext 2) #4
  br label %if.end210

if.else127:                                       ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #6
  call void %91(ptr noundef %btcoexist, i32 noundef 2348, i32 noundef 3, i8 noundef zeroext 1) #4
  br label %if.end210

sw.bb130:                                         ; preds = %if.then109
  %btdm_ant_pos131 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %92 = ptrtoint ptr %btdm_ant_pos131 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %btdm_ant_pos131, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %93)
  %cmp133 = icmp eq i8 %93, 1
  %btc_write_1byte_bitmask136 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %94 = ptrtoint ptr %btc_write_1byte_bitmask136 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %btc_write_1byte_bitmask136, align 4
  br i1 %cmp133, label %if.then135, label %if.else137

if.then135:                                       ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #6
  call void %95(ptr noundef %btcoexist, i32 noundef 2348, i32 noundef 3, i8 noundef zeroext 1) #4
  br label %if.end210

if.else137:                                       ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #6
  call void %95(ptr noundef %btcoexist, i32 noundef 2348, i32 noundef 3, i8 noundef zeroext 2) #4
  br label %if.end210

if.then143:                                       ; preds = %if.end76.thread334
  call void @__sanitizer_cov_trace_pc() #6
  %and147 = or i32 %and83, 8388608
  %btc_write_4byte148 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %96 = ptrtoint ptr %btc_write_4byte148 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %btc_write_4byte148, align 4
  call void %97(ptr noundef %btcoexist, i32 noundef 76, i32 noundef %and147) #4
  %btc_write_1byte_bitmask149 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %98 = ptrtoint ptr %btc_write_1byte_bitmask149 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %btc_write_1byte_bitmask149, align 4
  call void %99(ptr noundef %btcoexist, i32 noundef 100, i32 noundef 1, i8 noundef zeroext 0) #4
  %btdm_ant_pos150 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %100 = ptrtoint ptr %btdm_ant_pos150 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %btdm_ant_pos150, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %101)
  %cmp152 = icmp ne i8 %101, 1
  %.345 = zext i1 %cmp152 to i8
  %102 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %.345, ptr %h2c_parameter, align 2
  %arrayidx156 = getelementptr inbounds [2 x i8], ptr %h2c_parameter, i32 0, i32 1
  %103 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %arrayidx156, align 1
  %btc_fill_h2c157 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %104 = ptrtoint ptr %btc_fill_h2c157 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %btc_fill_h2c157, align 4
  call void %105(ptr noundef %btcoexist, i8 noundef zeroext 101, i32 noundef 2, ptr noundef nonnull %h2c_parameter) #4
  br label %if.end165

if.end165:                                        ; preds = %if.then143, %if.end76.if.end165_crit_edge, %if.end26.if.end165_crit_edge
  br i1 %force_exec, label %if.end165.if.then175_crit_edge, label %lor.lhs.false168

if.end165.if.then175_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then175

lor.lhs.false168:                                 ; preds = %if.end165
  %106 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 1), align 1
  %107 = load i8, ptr @glcoex_dm_8723b_1ant, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %106, i8 %107)
  %cmp173.not = icmp eq i8 %106, %107
  br i1 %cmp173.not, label %lor.lhs.false168.if.end210_crit_edge, label %lor.lhs.false168.if.then175_crit_edge

lor.lhs.false168.if.then175_crit_edge:            ; preds = %lor.lhs.false168
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then175

lor.lhs.false168.if.end210_crit_edge:             ; preds = %lor.lhs.false168
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end210

if.then175:                                       ; preds = %lor.lhs.false168.if.then175_crit_edge, %if.end165.if.then175_crit_edge
  %108 = zext i8 %ant_pos_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.171)
  switch i8 %ant_pos_type, label %sw.bb198 [
    i8 0, label %sw.bb177
    i8 1, label %sw.bb187
  ]

sw.bb177:                                         ; preds = %if.then175
  %btdm_ant_pos178 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %109 = ptrtoint ptr %btdm_ant_pos178 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %btdm_ant_pos178, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %110)
  %cmp180 = icmp eq i8 %110, 1
  %btc_write_4byte183 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %111 = ptrtoint ptr %btc_write_4byte183 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %btc_write_4byte183, align 4
  br i1 %cmp180, label %if.then182, label %if.else184

if.then182:                                       ; preds = %sw.bb177
  call void @__sanitizer_cov_trace_pc() #6
  call void %112(ptr noundef %btcoexist, i32 noundef 2376, i32 noundef 0) #4
  br label %if.end210

if.else184:                                       ; preds = %sw.bb177
  call void @__sanitizer_cov_trace_pc() #6
  call void %112(ptr noundef %btcoexist, i32 noundef 2376, i32 noundef 640) #4
  br label %if.end210

sw.bb187:                                         ; preds = %if.then175
  %btdm_ant_pos188 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %113 = ptrtoint ptr %btdm_ant_pos188 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %btdm_ant_pos188, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %114)
  %cmp190 = icmp eq i8 %114, 1
  %btc_write_4byte193 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %115 = ptrtoint ptr %btc_write_4byte193 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %btc_write_4byte193, align 4
  br i1 %cmp190, label %if.then192, label %if.else194

if.then192:                                       ; preds = %sw.bb187
  call void @__sanitizer_cov_trace_pc() #6
  call void %116(ptr noundef %btcoexist, i32 noundef 2376, i32 noundef 640) #4
  br label %if.end210

if.else194:                                       ; preds = %sw.bb187
  call void @__sanitizer_cov_trace_pc() #6
  call void %116(ptr noundef %btcoexist, i32 noundef 2376, i32 noundef 0) #4
  br label %if.end210

sw.bb198:                                         ; preds = %if.then175
  %btdm_ant_pos199 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %117 = ptrtoint ptr %btdm_ant_pos199 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %btdm_ant_pos199, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %118)
  %cmp201 = icmp eq i8 %118, 1
  %btc_write_4byte204 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %119 = ptrtoint ptr %btc_write_4byte204 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %btc_write_4byte204, align 4
  br i1 %cmp201, label %if.then203, label %if.else205

if.then203:                                       ; preds = %sw.bb198
  call void @__sanitizer_cov_trace_pc() #6
  call void %120(ptr noundef %btcoexist, i32 noundef 2376, i32 noundef 512) #4
  br label %if.end210

if.else205:                                       ; preds = %sw.bb198
  call void @__sanitizer_cov_trace_pc() #6
  call void %120(ptr noundef %btcoexist, i32 noundef 2376, i32 noundef 128) #4
  br label %if.end210

if.end210:                                        ; preds = %if.else205, %if.then203, %if.else194, %if.then192, %if.else184, %if.then182, %lor.lhs.false168.if.end210_crit_edge, %if.else137, %if.then135, %if.else127, %if.then125, %if.else117, %if.then115, %lor.lhs.false103.if.end210_crit_edge
  %121 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 1), align 1
  store i8 %121, ptr @glcoex_dm_8723b_1ant, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %h2c_parameter) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_in_mp_mode) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pg_ext_switch) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_ver) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i1 noundef zeroext %turn_on, i8 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i439 = alloca [5 x i8], align 1
  %ap_enable.i440 = alloca i8, align 1
  %h2c_parameter.i428 = alloca [5 x i8], align 1
  %ap_enable.i429 = alloca i8, align 1
  %h2c_parameter.i = alloca [5 x i8], align 1
  %ap_enable.i = alloca i8, align 1
  %wifi_busy = alloca i8, align 1
  %rssi_adjust_val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool1 = zext i1 %turn_on to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_busy) #4
  %0 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %wifi_busy, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi_adjust_val) #4
  store i8 %frombool1, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 10), align 2
  store i8 %type, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 5), align 1
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %1 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %2(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %wifi_busy) #4
  %3 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %wifi_busy, align 1, !range !377
  %5 = load i8, ptr @halbtc8723b1ant_ps_tdma.pre_wifi_busy, align 1, !range !377
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %5)
  %cmp.not = icmp eq i8 %4, %5
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %4, ptr @halbtc8723b1ant_ps_tdma.pre_wifi_busy, align 1
  br label %if.end26

if.end:                                           ; preds = %entry
  br i1 %force_exec, label %if.end.if.end26_crit_edge, label %if.then11

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then11:                                        ; preds = %if.end
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 9), align 1, !range !377
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 10), align 2, !range !377
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %7)
  %cmp17 = icmp eq i8 %6, %7
  br i1 %cmp17, label %land.lhs.true, label %if.then11.if.end26_crit_edge

if.then11.if.end26_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

land.lhs.true:                                    ; preds = %if.then11
  %8 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 4), align 4
  %9 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 5), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %9)
  %cmp22 = icmp eq i8 %8, %9
  br i1 %cmp22, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true.if.end26_crit_edge, %if.then11.if.end26_crit_edge, %if.end.if.end26_crit_edge, %if.then
  %10 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 29), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %10)
  %cmp28 = icmp ult i8 %10, 6
  br i1 %cmp28, label %if.then30, label %if.else42

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 45), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %11)
  %cmp32 = icmp ugt i8 %11, 34
  %. = select i1 %cmp32, i8 -10, i8 5
  br label %if.end89

if.else42:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp1(i8 39, i8 %10)
  %cmp45 = icmp ugt i8 %10, 39
  br i1 %cmp45, label %if.then47, label %if.else61

if.then47:                                        ; preds = %if.else42
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 45), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %12)
  %cmp50 = icmp ult i8 %12, 35
  br i1 %cmp50, label %if.then47.if.end89_crit_edge, label %if.else53

if.then47.if.end89_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end89

if.else53:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %12)
  %cmp56 = icmp ult i8 %12, 45
  %spec.select = select i1 %cmp56, i8 -10, i8 -15
  br label %if.end89

if.else61:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %10)
  %cmp64 = icmp ugt i8 %10, 19
  %13 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 45), align 4
  br i1 %cmp64, label %if.then66, label %if.else73

if.then66:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %13)
  %cmp69 = icmp ugt i8 %13, 44
  %phi.cast422 = select i1 %cmp69, i8 -15, i8 -10
  br label %if.end89

if.else73:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %13)
  %cmp76 = icmp ugt i8 %13, 34
  %.423 = select i1 %cmp76, i8 -10, i8 0
  br label %if.end89

if.end89:                                         ; preds = %if.else73, %if.then66, %if.else53, %if.then47.if.end89_crit_edge, %if.then30
  %wifi_duration_adjust.0 = phi i8 [ %phi.cast422, %if.then66 ], [ %., %if.then30 ], [ -5, %if.then47.if.end89_crit_edge ], [ %spec.select, %if.else53 ], [ %.423, %if.else73 ]
  %14 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.172)
  switch i8 %type, label %if.else150 [
    i8 1, label %if.end89.if.then120_crit_edge
    i8 2, label %if.end89.if.then120_crit_edge450
    i8 9, label %if.end89.if.then120_crit_edge451
    i8 11, label %if.end89.if.then120_crit_edge452
    i8 101, label %if.end89.if.then120_crit_edge453
    i8 102, label %if.end89.if.then120_crit_edge454
    i8 109, label %if.end89.if.then120_crit_edge455
    i8 111, label %if.end89.if.then120_crit_edge456
    i8 3, label %if.end89.if.end152_crit_edge
    i8 13, label %if.end89.if.end152_crit_edge457
    i8 14, label %if.end89.if.end152_crit_edge458
    i8 103, label %if.end89.if.end152_crit_edge459
    i8 113, label %if.end89.if.end152_crit_edge460
    i8 114, label %if.end89.if.end152_crit_edge461
  ]

if.end89.if.end152_crit_edge461:                  ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end152

if.end89.if.end152_crit_edge460:                  ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end152

if.end89.if.end152_crit_edge459:                  ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end152

if.end89.if.end152_crit_edge458:                  ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end152

if.end89.if.end152_crit_edge457:                  ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end152

if.end89.if.end152_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end152

if.end89.if.then120_crit_edge456:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then120

if.end89.if.then120_crit_edge455:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then120

if.end89.if.then120_crit_edge454:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then120

if.end89.if.then120_crit_edge453:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then120

if.end89.if.then120_crit_edge452:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then120

if.end89.if.then120_crit_edge451:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then120

if.end89.if.then120_crit_edge450:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then120

if.end89.if.then120_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then120

if.then120:                                       ; preds = %if.end89.if.then120_crit_edge, %if.end89.if.then120_crit_edge450, %if.end89.if.then120_crit_edge451, %if.end89.if.then120_crit_edge452, %if.end89.if.then120_crit_edge453, %if.end89.if.then120_crit_edge454, %if.end89.if.then120_crit_edge455, %if.end89.if.then120_crit_edge456
  %15 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool121.not = icmp eq i8 %15, 0
  %.424 = select i1 %tobool121.not, i8 97, i8 81
  %.425 = select i1 %tobool121.not, i8 17, i8 16
  %.426 = select i1 %tobool121.not, i8 16, i8 80
  br label %if.end152

if.else150:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end152

if.end152:                                        ; preds = %if.else150, %if.then120, %if.end89.if.end152_crit_edge, %if.end89.if.end152_crit_edge457, %if.end89.if.end152_crit_edge458, %if.end89.if.end152_crit_edge459, %if.end89.if.end152_crit_edge460, %if.end89.if.end152_crit_edge461
  %ps_tdma_byte0_val.0 = phi i8 [ 97, %if.else150 ], [ %.424, %if.then120 ], [ 81, %if.end89.if.end152_crit_edge ], [ 81, %if.end89.if.end152_crit_edge457 ], [ 81, %if.end89.if.end152_crit_edge458 ], [ 81, %if.end89.if.end152_crit_edge459 ], [ 81, %if.end89.if.end152_crit_edge460 ], [ 81, %if.end89.if.end152_crit_edge461 ]
  %ps_tdma_byte3_val.0 = phi i8 [ 17, %if.else150 ], [ %.425, %if.then120 ], [ 16, %if.end89.if.end152_crit_edge ], [ 16, %if.end89.if.end152_crit_edge457 ], [ 16, %if.end89.if.end152_crit_edge458 ], [ 16, %if.end89.if.end152_crit_edge459 ], [ 16, %if.end89.if.end152_crit_edge460 ], [ 16, %if.end89.if.end152_crit_edge461 ]
  %ps_tdma_byte4_val.0 = phi i8 [ 17, %if.else150 ], [ %.426, %if.then120 ], [ 16, %if.end89.if.end152_crit_edge ], [ 16, %if.end89.if.end152_crit_edge457 ], [ 16, %if.end89.if.end152_crit_edge458 ], [ 16, %if.end89.if.end152_crit_edge459 ], [ 16, %if.end89.if.end152_crit_edge460 ], [ 16, %if.end89.if.end152_crit_edge461 ]
  %slave_role = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 10
  %16 = ptrtoint ptr %slave_role to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %slave_role, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool153.not = icmp eq i8 %17, 0
  br i1 %tobool153.not, label %if.end152.if.end161_crit_edge, label %land.lhs.true155

if.end152.if.end161_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end161

land.lhs.true155:                                 ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #6
  %a2dp_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %18 = ptrtoint ptr %a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %a2dp_exist, align 1, !range !377
  %spec.select427 = or i8 %19, %ps_tdma_byte4_val.0
  br label %if.end161

if.end161:                                        ; preds = %land.lhs.true155, %if.end152.if.end161_crit_edge
  %ps_tdma_byte4_val.1 = phi i8 [ %ps_tdma_byte4_val.0, %if.end152.if.end161_crit_edge ], [ %spec.select427, %land.lhs.true155 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %type)
  %cmp163 = icmp ugt i8 %type, 100
  %20 = or i8 %ps_tdma_byte0_val.0, -126
  %21 = or i8 %ps_tdma_byte3_val.0, 96
  %ps_tdma_byte0_val.1 = select i1 %cmp163, i8 %20, i8 %ps_tdma_byte0_val.0
  %ps_tdma_byte3_val.1 = select i1 %cmp163, i8 %21, i8 %ps_tdma_byte3_val.0
  br i1 %turn_on, label %if.then174, label %if.else248

if.then174:                                       ; preds = %if.end161
  %22 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.173)
  switch i8 %type, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb178
    i8 3, label %sw.bb182
    i8 4, label %sw.bb183
    i8 5, label %sw.bb184
    i8 6, label %sw.bb185
    i8 7, label %sw.bb186
    i8 8, label %sw.bb187
    i8 9, label %sw.bb188
    i8 10, label %sw.bb189
    i8 11, label %sw.bb190
    i8 12, label %sw.bb191
    i8 13, label %sw.bb192
    i8 14, label %sw.bb200
    i8 15, label %sw.bb208
    i8 16, label %sw.bb209
    i8 18, label %sw.bb210
    i8 20, label %sw.bb211
    i8 21, label %sw.bb212
    i8 22, label %sw.bb213
    i8 23, label %sw.bb214
    i8 24, label %sw.bb215
    i8 25, label %sw.bb216
    i8 26, label %sw.bb217
    i8 27, label %sw.bb218
    i8 28, label %sw.bb219
    i8 29, label %sw.bb220
    i8 30, label %sw.bb221
    i8 31, label %sw.bb222
    i8 32, label %sw.bb223
    i8 33, label %sw.bb224
    i8 34, label %sw.bb225
    i8 35, label %sw.bb226
    i8 36, label %sw.bb227
    i8 40, label %sw.bb228
    i8 101, label %sw.bb229
    i8 102, label %sw.bb233
    i8 103, label %sw.bb237
    i8 105, label %sw.bb238
    i8 106, label %sw.bb239
    i8 109, label %sw.bb240
    i8 111, label %sw.bb241
    i8 113, label %sw.bb242
    i8 114, label %sw.bb243
    i8 120, label %sw.bb244
    i8 122, label %sw.bb245
    i8 -124, label %sw.bb246
    i8 -123, label %sw.bb247
  ]

sw.default:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 81, i8 noundef zeroext 26, i8 noundef zeroext 26, i8 noundef zeroext 0, i8 noundef zeroext %ps_tdma_byte4_val.1)
  br label %if.end255

sw.bb:                                            ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  %conv177 = add nsw i8 %wifi_duration_adjust.0, 58
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext %conv177, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext %ps_tdma_byte4_val.1)
  br label %if.end255

sw.bb178:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  %conv181 = add nsw i8 %wifi_duration_adjust.0, 45
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext %conv181, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext %ps_tdma_byte4_val.1)
  br label %if.end255

sw.bb182:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 48, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext %ps_tdma_byte4_val.1)
  br label %if.end255

sw.bb183:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -109, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 20, i8 noundef zeroext 0)
  br label %if.end255

sw.bb184:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 31, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext 17)
  br label %if.end255

sw.bb185:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 32, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext 17)
  br label %if.end255

sw.bb186:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 19, i8 noundef zeroext 12, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %if.end255

sw.bb187:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -109, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext 0)
  br label %if.end255

sw.bb188:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 33, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext %ps_tdma_byte4_val.1)
  br label %if.end255

sw.bb189:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 19, i8 noundef zeroext 10, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 noundef zeroext 64)
  br label %if.end255

sw.bb190:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 33, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext %ps_tdma_byte4_val.1)
  br label %if.end255

sw.bb191:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 81, i8 noundef zeroext 10, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 noundef zeroext 80)
  br label %if.end255

sw.bb192:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %10)
  %cmp195 = icmp ult i8 %10, 4
  br i1 %cmp195, label %if.then197, label %if.else198

if.then197:                                       ; preds = %sw.bb192
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 64, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext %ps_tdma_byte4_val.1)
  br label %if.end255

if.else198:                                       ; preds = %sw.bb192
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 33, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext %ps_tdma_byte4_val.1)
  br label %if.end255

sw.bb200:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %10)
  %cmp203 = icmp ult i8 %10, 4
  br i1 %cmp203, label %if.then205, label %if.else206

if.then205:                                       ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 81, i8 noundef zeroext 48, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext 80)
  br label %if.end255

if.else206:                                       ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 33, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext %ps_tdma_byte4_val.1)
  br label %if.end255

sw.bb208:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 19, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 8, i8 noundef zeroext 0)
  br label %if.end255

sw.bb209:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -109, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext 0)
  br label %if.end255

sw.bb210:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -109, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext 0)
  br label %if.end255

sw.bb211:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 63, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext 16)
  br label %if.end255

sw.bb212:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 97, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext 17, i8 noundef zeroext 17)
  br label %if.end255

sw.bb213:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext 16)
  br label %if.end255

sw.bb214:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext 49, i8 noundef zeroext 24)
  br label %if.end255

sw.bb215:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 49, i8 noundef zeroext 24)
  br label %if.end255

sw.bb216:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 49, i8 noundef zeroext 24)
  br label %if.end255

sw.bb217:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 49, i8 noundef zeroext 24)
  br label %if.end255

sw.bb218:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext 49, i8 noundef zeroext -104)
  br label %if.end255

sw.bb219:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 105, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext 49, i8 noundef zeroext 0)
  br label %if.end255

sw.bb220:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -85, i8 noundef zeroext 26, i8 noundef zeroext 26, i8 noundef zeroext 1, i8 noundef zeroext 16)
  br label %if.end255

sw.bb221:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 81, i8 noundef zeroext 48, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext 16)
  br label %if.end255

sw.bb222:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -45, i8 noundef zeroext 26, i8 noundef zeroext 26, i8 noundef zeroext 0, i8 noundef zeroext 88)
  br label %if.end255

sw.bb223:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 53, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext %ps_tdma_byte4_val.1)
  br label %if.end255

sw.bb224:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 53, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext 16)
  br label %if.end255

sw.bb225:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 83, i8 noundef zeroext 26, i8 noundef zeroext 26, i8 noundef zeroext 0, i8 noundef zeroext 16)
  br label %if.end255

sw.bb226:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 99, i8 noundef zeroext 26, i8 noundef zeroext 26, i8 noundef zeroext 0, i8 noundef zeroext 16)
  br label %if.end255

sw.bb227:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -45, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 20, i8 noundef zeroext 80)
  br label %if.end255

sw.bb228:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 35, i8 noundef zeroext 24, i8 noundef zeroext 0, i8 noundef zeroext 16, i8 noundef zeroext 36)
  br label %if.end255

sw.bb229:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  %conv232 = add nsw i8 %wifi_duration_adjust.0, 58
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext %conv232, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext %ps_tdma_byte4_val.1)
  br label %if.end255

sw.bb233:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  %conv236 = add nsw i8 %wifi_duration_adjust.0, 45
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext %conv236, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext %ps_tdma_byte4_val.1)
  br label %if.end255

sw.bb237:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 58, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext %ps_tdma_byte4_val.1)
  br label %if.end255

sw.bb238:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext 17)
  br label %if.end255

sw.bb239:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 32, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext 17)
  br label %if.end255

sw.bb240:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 33, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext %ps_tdma_byte4_val.1)
  br label %if.end255

sw.bb241:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 33, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext %ps_tdma_byte4_val.1)
  br label %if.end255

sw.bb242:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 33, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext %ps_tdma_byte4_val.1)
  br label %if.end255

sw.bb243:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 33, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext %ps_tdma_byte4_val.1)
  br label %if.end255

sw.bb244:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 63, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext 16)
  br label %if.end255

sw.bb245:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext 16)
  br label %if.end255

sw.bb246:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext %ps_tdma_byte4_val.1)
  br label %if.end255

sw.bb247:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %ps_tdma_byte0_val.1, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext %ps_tdma_byte3_val.1, i8 noundef zeroext 17)
  br label %if.end255

if.else248:                                       ; preds = %if.end161
  %23 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.174)
  switch i8 %type, label %sw.default252 [
    i8 8, label %sw.bb250
    i8 1, label %sw.bb253
  ]

sw.bb250:                                         ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #6
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %24 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i) #4
  %26 = ptrtoint ptr %ap_enable.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %ap_enable.i, align 1
  %27 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %btc_get, align 4
  %call.i = call zeroext i1 %28(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i) #4
  %29 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 8, ptr %h2c_parameter.i, align 1
  %arrayidx18.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 0, ptr %arrayidx18.i, align 1
  store i8 8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 6), align 2
  store i32 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 6, i32 1), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %25, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.137, i32 noundef 8, i32 noundef 0) #4
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %31 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %32(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i) #4
  call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 2, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %if.end255

sw.default252:                                    ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #6
  %adapter.i430 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %33 = ptrtoint ptr %adapter.i430 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter.i430, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i428) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i429) #4
  %35 = ptrtoint ptr %ap_enable.i429 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %ap_enable.i429, align 1
  %36 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %btc_get, align 4
  %call.i432 = call zeroext i1 %37(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i429) #4
  %38 = call ptr @memset(ptr %h2c_parameter.i428, i32 0, i32 5)
  %39 = call ptr @memset(ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 6), i32 0, i32 5)
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %34, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.137, i32 noundef 0, i32 noundef 0) #4
  %btc_fill_h2c.i438 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %40 = ptrtoint ptr %btc_fill_h2c.i438 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %btc_fill_h2c.i438, align 4
  call void %41(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i428) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i429) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i428) #4
  br label %if.end255

sw.bb253:                                         ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #6
  %adapter.i441 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %42 = ptrtoint ptr %adapter.i441 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter.i441, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i439) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i440) #4
  %44 = ptrtoint ptr %ap_enable.i440 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %ap_enable.i440, align 1
  %45 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %btc_get, align 4
  %call.i443 = call zeroext i1 %46(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i440) #4
  %47 = ptrtoint ptr %h2c_parameter.i439 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %h2c_parameter.i439, align 1
  %arrayidx18.i445 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i439, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx18.i445 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %arrayidx18.i445, align 1
  %arrayidx19.i446 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i439, i32 0, i32 2
  %49 = ptrtoint ptr %arrayidx19.i446 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %arrayidx19.i446, align 1
  %arrayidx20.i447 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i439, i32 0, i32 3
  %50 = ptrtoint ptr %arrayidx20.i447 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 72, ptr %arrayidx20.i447, align 1
  %arrayidx21.i448 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i439, i32 0, i32 4
  %51 = ptrtoint ptr %arrayidx21.i448 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %arrayidx21.i448, align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 6), align 2
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 6, i32 1), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 6, i32 2), align 4
  store i8 72, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 6, i32 3), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 6, i32 4), align 2
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %43, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.137, i32 noundef 0, i32 noundef 18432) #4
  %btc_fill_h2c.i449 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %52 = ptrtoint ptr %btc_fill_h2c.i449 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %btc_fill_h2c.i449, align 4
  call void %53(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i439) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i440) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i439) #4
  br label %if.end255

if.end255:                                        ; preds = %sw.bb253, %sw.default252, %sw.bb250, %sw.bb247, %sw.bb246, %sw.bb245, %sw.bb244, %sw.bb243, %sw.bb242, %sw.bb241, %sw.bb240, %sw.bb239, %sw.bb238, %sw.bb237, %sw.bb233, %sw.bb229, %sw.bb228, %sw.bb227, %sw.bb226, %sw.bb225, %sw.bb224, %sw.bb223, %sw.bb222, %sw.bb221, %sw.bb220, %sw.bb219, %sw.bb218, %sw.bb217, %sw.bb216, %sw.bb215, %sw.bb214, %sw.bb213, %sw.bb212, %sw.bb211, %sw.bb210, %sw.bb209, %sw.bb208, %if.else206, %if.then205, %if.else198, %if.then197, %sw.bb191, %sw.bb190, %sw.bb189, %sw.bb188, %sw.bb187, %sw.bb186, %sw.bb185, %sw.bb184, %sw.bb183, %sw.bb182, %sw.bb178, %sw.bb, %sw.default
  %54 = ptrtoint ptr %rssi_adjust_val to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %rssi_adjust_val, align 1
  %btc_set = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %55 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %btc_set, align 4
  %call256 = call zeroext i1 %56(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %rssi_adjust_val) #4
  %57 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 10), align 2, !range !377
  store i8 %57, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 9), align 1
  %58 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 5), align 1
  store i8 %58, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 4), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end255, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi_adjust_val) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_coex_table_with_type(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i8 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  store i8 %type, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  %0 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.175)
  switch i8 %type, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 2, label %sw.bb3
    i8 3, label %sw.bb5
    i8 4, label %sw.bb7
    i8 5, label %sw.bb14
    i8 6, label %sw.bb16
    i8 7, label %sw.bb18
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i32 noundef 1431655765, i32 noundef 1431655765)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i32 noundef 1431655765, i32 noundef 1515870810)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i32 noundef 1515870810, i32 noundef 1515870810)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i32 noundef 1431655765, i32 noundef 1515870810)
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 30), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool8.not = icmp eq i8 %1, 0
  br i1 %tobool8.not, label %sw.bb7.if.else_crit_edge, label %land.lhs.true

sw.bb7.if.else_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb7
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 29), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %2)
  %cmp = icmp ult i8 %2, 6
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i32 noundef 1431655765, i32 noundef -1431676326)
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb7.if.else_crit_edge
  tail call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i32 noundef 1431655765, i32 noundef 1515870810)
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i32 noundef 1515870810, i32 noundef 1521113690)
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i32 noundef 1431655765, i32 noundef -1431655766)
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i32 noundef -1431655766, i32 noundef -1431655766)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb16, %sw.bb14, %if.else, %if.then, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b1ant_lps_notify(ptr nocapture noundef readonly %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %2 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %manual_control, align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %4 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stop_coex_dm, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.176)
  switch i8 %type, label %if.end.cleanup_crit_edge [
    i8 1, label %if.end.cleanup.sink.split_crit_edge
    i8 0, label %if.then7
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then7, %if.end.cleanup.sink.split_crit_edge
  %.str.89.sink = phi ptr [ @.str.90, %if.then7 ], [ @.str.89, %if.end.cleanup.sink.split_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.89.sink) #4
  store i8 %type, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 9), align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b1ant_scan_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i.i = alloca i8, align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rxaggsize.i = alloca i8, align 1
  %h2c_parameter.i = alloca [1 x i8], align 1
  %wifi_connected = alloca i8, align 1
  %bt_hs_on = alloca i8, align 1
  %wifi_link_status = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on) #4
  %3 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bt_hs_on, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_link_status) #4
  %4 = ptrtoint ptr %wifi_link_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wifi_link_status, align 4
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %5 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %manual_control, align 2, !range !377
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
  %8 = load i8, ptr %stop_coex_dm, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
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
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 26), align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.91) #4
  tail call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 8)
  tail call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 2, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false)
  %btc_read_4byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %9 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btc_read_4byte, align 4
  %call = tail call i32 %10(ptr noundef %btcoexist, i32 noundef 2376) #4
  %btc_read_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 17
  %11 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %btc_read_1byte, align 4
  %call4 = tail call zeroext i8 %12(ptr noundef %btcoexist, i32 noundef 1893) #4
  %13 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %btc_read_1byte, align 4
  %call6 = tail call zeroext i8 %14(ptr noundef %btcoexist, i32 noundef 103) #4
  %conv7 = zext i8 %call4 to i32
  %conv8 = zext i8 %call6 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.92, i32 noundef %call, i32 noundef %conv7, i32 noundef %conv8) #4
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 26), align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.93) #4
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %15 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_get, align 4
  %call10 = tail call zeroext i1 %16(ptr noundef %btcoexist, i8 noundef zeroext 41, ptr noundef getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 29)) #4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then3
  %17 = load i8, ptr @glcoex_sta_8723b_1ant, align 4, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool12.not = icmp eq i8 %17, 0
  br i1 %tobool12.not, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %btc_get15 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %18 = ptrtoint ptr %btc_get15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_get15, align 4
  %call16 = call zeroext i1 %19(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on) #4
  %20 = ptrtoint ptr %btc_get15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_get15, align 4
  %call18 = call zeroext i1 %21(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 20), align 1
  %22 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %h2c_parameter.i, align 1
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %23 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %24(ptr noundef %btcoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  %25 = ptrtoint ptr %btc_get15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %btc_get15, align 4
  %call20 = call zeroext i1 %26(ptr noundef %btcoexist, i8 noundef zeroext 27, ptr noundef nonnull %wifi_link_status) #4
  %27 = ptrtoint ptr %wifi_link_status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wifi_link_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %28)
  %cmp21 = icmp ugt i32 %28, 131071
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_limited_tx(ptr noundef %btcoexist, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %29 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %30 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rxaggsize.i) #4
  %31 = ptrtoint ptr %rxaggsize.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 5, ptr %rxaggsize.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %32 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %btc_set.i, align 4
  %call.i = call zeroext i1 %33(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %34 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %35(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %36 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %37(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rxaggsize.i) #4
  %38 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %39(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxaggsize.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i.i) #4
  %40 = ptrtoint ptr %low_pwr_disable.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %low_pwr_disable.i.i, align 1
  %41 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_set.i, align 4
  %call5.i.i = call zeroext i1 %42(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i.i) #4
  %43 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %btc_set.i, align 4
  %call7.i.i = call zeroext i1 %44(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i.i) #4
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8) #4
  call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 2, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #4
  store i8 2, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1515870810) #4
  br label %cleanup

if.end25:                                         ; preds = %if.end14
  %45 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 24), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool26.not = icmp eq i8 %45, 0
  br i1 %tobool26.not, label %if.else28, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_action_bt_inquiry(ptr noundef %btcoexist)
  br label %cleanup

if.else28:                                        ; preds = %if.end25
  %46 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bt_hs_on, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool29.not = icmp eq i8 %47, 0
  br i1 %tobool29.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_action_hs(ptr noundef %btcoexist)
  br label %cleanup

if.end32:                                         ; preds = %if.else28
  br i1 %cmp, label %if.then36, label %if.else41

if.then36:                                        ; preds = %if.end32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.91) #4
  %48 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %wifi_connected, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool37.not = icmp eq i8 %49, 0
  br i1 %tobool37.not, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b1ant_action_wifi_not_conn_scan(ptr noundef %btcoexist)
  br label %cleanup

if.else39:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b1ant_action_wifi_conn_scan(ptr noundef %btcoexist)
  br label %cleanup

if.else41:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp43 = icmp eq i8 %type, 0
  br i1 %cmp43, label %if.then45, label %if.else41.cleanup_crit_edge

if.else41.cleanup_crit_edge:                      ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then45:                                        ; preds = %if.else41
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.93) #4
  %50 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %wifi_connected, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool46.not = icmp eq i8 %51, 0
  br i1 %tobool46.not, label %if.then47, label %if.else48

if.then47:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b1ant_action_wifi_not_conn(ptr noundef %btcoexist)
  br label %cleanup

if.else48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_action_wifi_connected(ptr noundef %btcoexist)
  br label %cleanup

cleanup:                                          ; preds = %if.else48, %if.then47, %if.else41.cleanup_crit_edge, %if.else39, %if.then38, %if.then30, %if.then27, %if.then23, %if.end11.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_link_status) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_limited_tx(ptr noundef %btcoexist, i8 noundef zeroext %ra_masktype, i8 noundef zeroext %arfr_type, i8 noundef zeroext %ampdu_time_type) unnamed_addr #0 align 64 {
entry:
  %wifi_under_bmode.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %ra_masktype to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.177)
  switch i8 %ra_masktype, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  store i32 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 37), align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 36), align 4
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
  store i32 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 37), align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 36), align 4
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
  %btc_set.i2 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %3 = ptrtoint ptr %btc_set.i2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_set.i2, align 4
  %call.i3 = tail call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 30, ptr noundef getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 37)) #4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %sw.bb1.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %5 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 37), align 4
  store i32 %5, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 36), align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_under_bmode.i) #4
  %6 = ptrtoint ptr %wifi_under_bmode.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %wifi_under_bmode.i, align 1
  store i8 %arfr_type, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 39), align 1
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 38), align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %arfr_type)
  %cmp.not.i6 = icmp eq i8 %7, %arfr_type
  br i1 %cmp.not.i6, label %sw.epilog.btc8723b1ant_auto_rate_fb_retry.exit_crit_edge, label %if.then.i7

sw.epilog.btc8723b1ant_auto_rate_fb_retry.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b1ant_auto_rate_fb_retry.exit

if.then.i7:                                       ; preds = %sw.epilog
  %8 = zext i8 %arfr_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.178)
  switch i8 %arfr_type, label %if.then.i7.btc8723b1ant_auto_rate_fb_retry.exit_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb7.i
  ]

if.then.i7.btc8723b1ant_auto_rate_fb_retry.exit_crit_edge: ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b1ant_auto_rate_fb_retry.exit

sw.bb.i:                                          ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #6
  %btc_write_4byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %9 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btc_write_4byte.i, align 4
  %11 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 28), align 4
  tail call void %10(ptr noundef %btcoexist, i32 noundef 1072, i32 noundef %11) #4
  %12 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btc_write_4byte.i, align 4
  %14 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 29), align 4
  tail call void %13(ptr noundef %btcoexist, i32 noundef 1076, i32 noundef %14) #4
  br label %btc8723b1ant_auto_rate_fb_retry.exit

sw.bb7.i:                                         ; preds = %if.then.i7
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %15 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_get.i, align 4
  %call.i8 = call zeroext i1 %16(ptr noundef %btcoexist, i8 noundef zeroext 16, ptr noundef nonnull %wifi_under_bmode.i) #4
  %17 = ptrtoint ptr %wifi_under_bmode.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %wifi_under_bmode.i, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool8.not.i = icmp eq i8 %18, 0
  %btc_write_4byte12.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %19 = ptrtoint ptr %btc_write_4byte12.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_write_4byte12.i, align 4
  call void %20(ptr noundef %btcoexist, i32 noundef 1072, i32 noundef 0) #4
  %21 = ptrtoint ptr %btc_write_4byte12.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %btc_write_4byte12.i, align 4
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #6
  call void %22(ptr noundef %btcoexist, i32 noundef 1076, i32 noundef 16843009) #4
  br label %btc8723b1ant_auto_rate_fb_retry.exit

if.else.i:                                        ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #6
  call void %22(ptr noundef %btcoexist, i32 noundef 1076, i32 noundef 67305985) #4
  br label %btc8723b1ant_auto_rate_fb_retry.exit

btc8723b1ant_auto_rate_fb_retry.exit:             ; preds = %if.else.i, %if.then9.i, %sw.bb.i, %if.then.i7.btc8723b1ant_auto_rate_fb_retry.exit_crit_edge, %sw.epilog.btc8723b1ant_auto_rate_fb_retry.exit_crit_edge
  %23 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 39), align 1
  store i8 %23, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 38), align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_under_bmode.i) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 41), align 1
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 40), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp.not.i9 = icmp eq i8 %24, 0
  br i1 %cmp.not.i9, label %btc8723b1ant_auto_rate_fb_retry.exit.halbtc8723b1ant_retry_limit.exit_crit_edge, label %sw.bb.i10

btc8723b1ant_auto_rate_fb_retry.exit.halbtc8723b1ant_retry_limit.exit_crit_edge: ; preds = %btc8723b1ant_auto_rate_fb_retry.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_retry_limit.exit

sw.bb.i10:                                        ; preds = %btc8723b1ant_auto_rate_fb_retry.exit
  call void @__sanitizer_cov_trace_pc() #6
  %btc_write_2byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 21
  %25 = ptrtoint ptr %btc_write_2byte.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %btc_write_2byte.i, align 4
  %27 = load i16, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 30), align 4
  call void %26(ptr noundef %btcoexist, i32 noundef 1066, i16 noundef zeroext %27) #4
  br label %halbtc8723b1ant_retry_limit.exit

halbtc8723b1ant_retry_limit.exit:                 ; preds = %sw.bb.i10, %btc8723b1ant_auto_rate_fb_retry.exit.halbtc8723b1ant_retry_limit.exit_crit_edge
  %28 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 41), align 1
  store i8 %28, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 40), align 2
  store i8 %ampdu_time_type, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 43), align 1
  %29 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 42), align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %ampdu_time_type)
  %cmp.not.i11 = icmp eq i8 %29, %ampdu_time_type
  br i1 %cmp.not.i11, label %halbtc8723b1ant_retry_limit.exit.halbtc8723b1ant_ampdu_maxtime.exit_crit_edge, label %if.then.i12

halbtc8723b1ant_retry_limit.exit.halbtc8723b1ant_ampdu_maxtime.exit_crit_edge: ; preds = %halbtc8723b1ant_retry_limit.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_ampdu_maxtime.exit

if.then.i12:                                      ; preds = %halbtc8723b1ant_retry_limit.exit
  %30 = zext i8 %ampdu_time_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.179)
  switch i8 %ampdu_time_type, label %if.then.i12.halbtc8723b1ant_ampdu_maxtime.exit_crit_edge [
    i8 0, label %sw.bb.i13
    i8 1, label %sw.bb7.i14
  ]

if.then.i12.halbtc8723b1ant_ampdu_maxtime.exit_crit_edge: ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_ampdu_maxtime.exit

sw.bb.i13:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #6
  %btc_write_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %31 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %btc_write_1byte.i, align 4
  %33 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 31), align 2
  %conv6.i = zext i8 %33 to i32
  call void %32(ptr noundef %btcoexist, i32 noundef 1110, i32 noundef %conv6.i) #4
  br label %halbtc8723b1ant_ampdu_maxtime.exit

sw.bb7.i14:                                       ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #6
  %btc_write_1byte8.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %34 = ptrtoint ptr %btc_write_1byte8.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %btc_write_1byte8.i, align 4
  call void %35(ptr noundef %btcoexist, i32 noundef 1110, i32 noundef 56) #4
  br label %halbtc8723b1ant_ampdu_maxtime.exit

halbtc8723b1ant_ampdu_maxtime.exit:               ; preds = %sw.bb7.i14, %sw.bb.i13, %if.then.i12.halbtc8723b1ant_ampdu_maxtime.exit_crit_edge, %halbtc8723b1ant_retry_limit.exit.halbtc8723b1ant_ampdu_maxtime.exit_crit_edge
  %36 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 43), align 1
  store i8 %36, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 42), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_limited_rx(ptr noundef %btcoexist, i1 noundef zeroext %rej_ap_agg_pkt, i1 noundef zeroext %bt_ctrl_agg_buf_size, i8 noundef zeroext %agg_buf_size) unnamed_addr #0 align 64 {
entry:
  %reject_rx_agg = alloca i8, align 1
  %bt_ctrl_rx_agg_size = alloca i8, align 1
  %rxaggsize = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool1 = zext i1 %rej_ap_agg_pkt to i8
  %frombool2 = zext i1 %bt_ctrl_agg_buf_size to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg) #4
  %0 = ptrtoint ptr %reject_rx_agg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool1, ptr %reject_rx_agg, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size) #4
  %1 = ptrtoint ptr %bt_ctrl_rx_agg_size to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool2, ptr %bt_ctrl_rx_agg_size, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rxaggsize) #4
  %2 = ptrtoint ptr %rxaggsize to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %agg_buf_size, ptr %rxaggsize, align 1
  %btc_set = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %3 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_set, align 4
  %call = call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg) #4
  %5 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_set, align 4
  %call7 = call zeroext i1 %6(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size) #4
  %7 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %btc_set, align 4
  %call9 = call zeroext i1 %8(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rxaggsize) #4
  %9 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btc_set, align 4
  %call11 = call zeroext i1 %10(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxaggsize) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_action_wifi_multiport(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
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
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 2, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  store i8 2, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1515870810) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_action_bt_inquiry(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i71 = alloca i8, align 1
  %low_pwr_disable.i67 = alloca i8, align 1
  %low_pwr_disable.i63 = alloca i8, align 1
  %low_pwr_disable.i = alloca i8, align 1
  %wifi_connected = alloca i8, align 1
  %ap_enable = alloca i8, align 1
  %wifi_busy = alloca i8, align 1
  %bt_busy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_connected) #4
  %0 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %wifi_connected, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable) #4
  %1 = ptrtoint ptr %ap_enable to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %ap_enable, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_busy) #4
  %2 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %wifi_busy, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_busy) #4
  %3 = ptrtoint ptr %bt_busy to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bt_busy, align 1
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %4 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %5(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable) #4
  %6 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %btc_get, align 4
  %call3 = call zeroext i1 %7(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected) #4
  %8 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btc_get, align 4
  %call5 = call zeroext i1 %9(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %wifi_busy) #4
  %btc_set = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %10 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_set, align 4
  %call6 = call zeroext i1 %11(ptr noundef %btcoexist, i8 noundef zeroext 1, ptr noundef nonnull %bt_busy) #4
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 8), align 4, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 33)
  store i8 7, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef -1431655766, i32 noundef -1431655766) #4
  br label %if.end33

if.else:                                          ; preds = %entry
  %13 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %wifi_connected, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not = icmp eq i8 %14, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.else.if.else10_crit_edge

if.else.if.else10_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else10

land.lhs.true:                                    ; preds = %if.else
  %15 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 26), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not = icmp eq i8 %15, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true.if.else10_crit_edge

land.lhs.true.if.else10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else10

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %16 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %17 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_set, align 4
  %call5.i = call zeroext i1 %18(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %19 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_set, align 4
  %call7.i = call zeroext i1 %20(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 2, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765) #4
  br label %if.end33

if.else10:                                        ; preds = %land.lhs.true.if.else10_crit_edge, %if.else.if.else10_crit_edge
  %sco_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %21 = ptrtoint ptr %sco_exist to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sco_exist, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool11.not = icmp eq i8 %22, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %if.else10.if.then15_crit_edge

if.else10.if.then15_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.else10
  %hid_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %23 = ptrtoint ptr %hid_exist to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hid_exist, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool12.not = icmp eq i8 %24, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %a2dp_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %25 = ptrtoint ptr %a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %a2dp_exist, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool14.not = icmp eq i8 %26, 0
  br i1 %tobool14.not, label %if.else19, label %lor.lhs.false13.if.then15_crit_edge

lor.lhs.false13.if.then15_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false13.if.then15_crit_edge, %lor.lhs.false.if.then15_crit_edge, %if.else10.if.then15_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i63) #4
  %27 = ptrtoint ptr %low_pwr_disable.i63 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %low_pwr_disable.i63, align 1
  %28 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_set, align 4
  %call5.i65 = call zeroext i1 %29(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i63) #4
  %30 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_set, align 4
  %call7.i66 = call zeroext i1 %31(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i63) #4
  %32 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 25), align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool16.not = icmp eq i8 %32, 0
  %. = select i1 %tobool16.not, i8 32, i8 33
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %.)
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  %33 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 30), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool8.not.i = icmp eq i8 %33, 0
  br i1 %tobool8.not.i, label %if.then15.if.else.i_crit_edge, label %land.lhs.true.i

if.then15.if.else.i_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then15
  %34 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 29), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %34)
  %cmp.i = icmp ult i8 %34, 6
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef -1431676326) #4
  br label %if.end33

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then15.if.else.i_crit_edge
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #4
  br label %if.end33

if.else19:                                        ; preds = %lor.lhs.false13
  %pan_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %35 = ptrtoint ptr %pan_exist to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pan_exist, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool20.not = icmp eq i8 %36, 0
  br i1 %tobool20.not, label %lor.lhs.false21, label %if.else19.if.then23_crit_edge

if.else19.if.then23_crit_edge:                    ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

lor.lhs.false21:                                  ; preds = %if.else19
  %37 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %wifi_busy, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool22.not = icmp eq i8 %38, 0
  br i1 %tobool22.not, label %if.else29, label %lor.lhs.false21.if.then23_crit_edge

lor.lhs.false21.if.then23_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false21.if.then23_crit_edge, %if.else19.if.then23_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i67) #4
  %39 = ptrtoint ptr %low_pwr_disable.i67 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %low_pwr_disable.i67, align 1
  %40 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %btc_set, align 4
  %call5.i69 = call zeroext i1 %41(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i67) #4
  %42 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %btc_set, align 4
  %call7.i70 = call zeroext i1 %43(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i67) #4
  %44 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 25), align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool25.not = icmp eq i8 %44, 0
  %.76 = select i1 %tobool25.not, i8 32, i8 33
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %.76)
  call fastcc void @halbtc8723b1ant_coex_table_with_type(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 4)
  br label %if.end33

if.else29:                                        ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i71) #4
  %45 = ptrtoint ptr %low_pwr_disable.i71 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %low_pwr_disable.i71, align 1
  %46 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %btc_set, align 4
  %call5.i73 = call zeroext i1 %47(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i71) #4
  %48 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %btc_set, align 4
  %call7.i74 = call zeroext i1 %49(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i71) #4
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 2, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  store i8 7, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef -1431655766, i32 noundef -1431655766) #4
  br label %if.end33

if.end33:                                         ; preds = %if.else29, %if.then23, %if.else.i, %if.then.i, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_busy) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_action_hs(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 5)
  store i8 2, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  tail call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1515870810) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b1ant_action_wifi_not_conn_scan(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %wifi_connected.i = alloca i8, align 1
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
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 34), align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.180)
  switch i8 %5, label %if.else19 [
    i8 3, label %if.then
    i8 4, label %entry.if.then18_crit_edge
    i8 5, label %entry.if.then18_crit_edge34
  ]

entry.if.then18_crit_edge34:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18

entry.if.then18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18

if.then:                                          ; preds = %entry
  %a2dp_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %7 = ptrtoint ptr %a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %a2dp_exist, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.else7, label %if.then3

if.then3:                                         ; preds = %if.then
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 32)
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  %9 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 30), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not.i = icmp eq i8 %9, 0
  br i1 %tobool8.not.i, label %if.then3.if.else.i_crit_edge, label %land.lhs.true.i

if.then3.if.else.i_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then3
  %10 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 29), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %10)
  %cmp.i = icmp ult i8 %10, 6
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef -1431676326) #4
  br label %if.end21

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then3.if.else.i_crit_edge
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #4
  br label %if.end21

if.else7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 20)
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #4
  br label %if.end21

if.then18:                                        ; preds = %entry.if.then18_crit_edge, %entry.if.then18_crit_edge34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  %11 = ptrtoint ptr %wifi_connected.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %wifi_connected.i, align 1
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %12 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %13(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected.i) #4
  %sco_exist.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %14 = ptrtoint ptr %sco_exist.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sco_exist.i, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  %..i = select i1 %tobool.not.i, i8 6, i8 5
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %..i) #4
  store i8 5, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1521113690) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  br label %if.end21

if.else19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 2, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  store i8 2, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1515870810) #4
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then18, %if.else7, %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b1ant_action_wifi_conn_scan(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %wifi_connected.i = alloca i8, align 1
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
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 34), align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.181)
  switch i8 %5, label %if.else22 [
    i8 3, label %if.then
    i8 4, label %entry.if.then21_crit_edge
    i8 5, label %entry.if.then21_crit_edge44
  ]

entry.if.then21_crit_edge44:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

entry.if.then21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

if.then:                                          ; preds = %entry
  %a2dp_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %7 = ptrtoint ptr %a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %a2dp_exist, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.else10, label %if.then3

if.then3:                                         ; preds = %if.then
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 32)
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  %9 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 30), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not.i = icmp eq i8 %9, 0
  br i1 %tobool8.not.i, label %if.then3.if.else.i_crit_edge, label %land.lhs.true.i

if.then3.if.else.i_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then3
  %10 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 29), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %10)
  %cmp.i = icmp ult i8 %10, 6
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef -1431676326) #4
  br label %if.end24

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then3.if.else.i_crit_edge
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #4
  br label %if.end24

if.else10:                                        ; preds = %if.then
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 20)
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 30), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not.i38 = icmp eq i8 %11, 0
  br i1 %tobool8.not.i38, label %if.else10.if.else.i42_crit_edge, label %land.lhs.true.i40

if.else10.if.else.i42_crit_edge:                  ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i42

land.lhs.true.i40:                                ; preds = %if.else10
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 29), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %12)
  %cmp.i39 = icmp ult i8 %12, 6
  br i1 %cmp.i39, label %if.then.i41, label %land.lhs.true.i40.if.else.i42_crit_edge

land.lhs.true.i40.if.else.i42_crit_edge:          ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i42

if.then.i41:                                      ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef -1431676326) #4
  br label %if.end24

if.else.i42:                                      ; preds = %land.lhs.true.i40.if.else.i42_crit_edge, %if.else10.if.else.i42_crit_edge
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #4
  br label %if.end24

if.then21:                                        ; preds = %entry.if.then21_crit_edge, %entry.if.then21_crit_edge44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  %13 = ptrtoint ptr %wifi_connected.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %wifi_connected.i, align 1
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %14 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %15(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected.i) #4
  %sco_exist.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %sco_exist.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sco_exist.i, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  %..i = select i1 %tobool.not.i, i8 6, i8 5
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %..i) #4
  store i8 5, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1521113690) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  br label %if.end24

if.else22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 2, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  store i8 2, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1515870810) #4
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then21, %if.else.i42, %if.then.i41, %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b1ant_action_wifi_not_conn(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
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
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 8)
  call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 2, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_action_wifi_connected(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i141 = alloca i8, align 1
  %low_pwr_disable.i137 = alloca i8, align 1
  %low_pwr_disable.i133 = alloca i8, align 1
  %low_pwr_disable.i = alloca i8, align 1
  %wifi_busy = alloca i8, align 1
  %scan = alloca i8, align 1
  %link = alloca i8, align 1
  %roam = alloca i8, align 1
  %under_4way = alloca i8, align 1
  %ap_enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_busy) #4
  %2 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %wifi_busy, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scan) #4
  %3 = ptrtoint ptr %scan to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %scan, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #4
  %4 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %link, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %roam) #4
  %5 = ptrtoint ptr %roam to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %roam, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %under_4way) #4
  %6 = ptrtoint ptr %under_4way to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %under_4way, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable) #4
  %7 = ptrtoint ptr %ap_enable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %ap_enable, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.145) #4
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %8 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %9(ptr noundef %btcoexist, i8 noundef zeroext 12, ptr noundef nonnull %under_4way) #4
  %10 = ptrtoint ptr %under_4way to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %under_4way, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_action_wifi_connected_special_packet(ptr noundef %btcoexist)
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.146) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btc_get, align 4
  %call2 = call zeroext i1 %13(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %scan) #4
  %14 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_get, align 4
  %call4 = call zeroext i1 %15(ptr noundef %btcoexist, i8 noundef zeroext 6, ptr noundef nonnull %link) #4
  %16 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_get, align 4
  %call6 = call zeroext i1 %17(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %roam) #4
  %18 = ptrtoint ptr %scan to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %scan, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool7.not = icmp eq i8 %19, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.then13

lor.lhs.false:                                    ; preds = %if.end
  %20 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %link, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool8.not = icmp eq i8 %21, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %22 = ptrtoint ptr %roam to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %roam, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool10.not = icmp eq i8 %23, 0
  br i1 %tobool10.not, label %if.end15, label %lor.lhs.false9.if.else_crit_edge

lor.lhs.false9.if.else_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b1ant_action_wifi_conn_scan(ptr noundef %btcoexist)
  br label %if.end14

if.else:                                          ; preds = %lor.lhs.false9.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  call fastcc void @halbtc8723b1ant_action_wifi_connected_special_packet(ptr noundef %btcoexist)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then13
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.147) #4
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false9
  %24 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_get, align 4
  %call17 = call zeroext i1 %25(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable) #4
  %26 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %btc_get, align 4
  %call19 = call zeroext i1 %27(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %wifi_busy) #4
  %28 = ptrtoint ptr %ap_enable to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ap_enable, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool20.not = icmp eq i8 %29, 0
  br i1 %tobool20.not, label %land.lhs.true, label %if.end15.if.else48_crit_edge

if.end15.if.else48_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else48

land.lhs.true:                                    ; preds = %if.end15
  %30 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 34), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %30)
  %cmp = icmp eq i8 %30, 3
  br i1 %cmp, label %land.lhs.true22, label %land.lhs.true.if.else48_crit_edge

land.lhs.true.if.else48_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else48

land.lhs.true22:                                  ; preds = %land.lhs.true
  %hid_only = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 7
  %31 = ptrtoint ptr %hid_only to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %hid_only, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool23.not = icmp eq i8 %32, 0
  br i1 %tobool23.not, label %if.then24, label %land.lhs.true22.if.else48_crit_edge

land.lhs.true22.if.else48_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else48

if.then24:                                        ; preds = %land.lhs.true22
  %a2dp_only = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 5
  %33 = ptrtoint ptr %a2dp_only to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %a2dp_only, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool26.not = icmp eq i8 %34, 0
  br i1 %tobool26.not, label %if.else38, label %if.then27

if.then27:                                        ; preds = %if.then24
  %35 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %wifi_busy, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool28.not = icmp eq i8 %36, 0
  br i1 %tobool28.not, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %37 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %38 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %39(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %40 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %41(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  br label %if.end49

if.else30:                                        ; preds = %if.then27
  %42 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 29), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %42)
  %cmp32 = icmp ugt i8 %42, 49
  br i1 %cmp32, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i133) #4
  %43 = ptrtoint ptr %low_pwr_disable.i133 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %low_pwr_disable.i133, align 1
  %btc_set.i134 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %44 = ptrtoint ptr %btc_set.i134 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %btc_set.i134, align 4
  %call5.i135 = call zeroext i1 %45(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i133) #4
  %46 = ptrtoint ptr %btc_set.i134 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %btc_set.i134, align 4
  %call7.i136 = call zeroext i1 %47(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i133) #4
  br label %if.end49

if.else35:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_power_save_state(ptr noundef %btcoexist, i8 noundef zeroext 1, i8 noundef zeroext 80, i8 noundef zeroext 4)
  br label %if.end49

if.else38:                                        ; preds = %if.then24
  %48 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 5), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool39.not = icmp eq i8 %48, 0
  br i1 %tobool39.not, label %land.lhs.true40, label %if.else38.if.else45_crit_edge

if.else38.if.else45_crit_edge:                    ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else45

land.lhs.true40:                                  ; preds = %if.else38
  %49 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 3), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool41.not = icmp eq i8 %49, 0
  br i1 %tobool41.not, label %land.lhs.true42, label %land.lhs.true40.if.else45_crit_edge

land.lhs.true40.if.else45_crit_edge:              ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else45

land.lhs.true42:                                  ; preds = %land.lhs.true40
  %50 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 4), align 4, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool43.not = icmp eq i8 %50, 0
  br i1 %tobool43.not, label %if.then44, label %land.lhs.true42.if.else45_crit_edge

land.lhs.true42.if.else45_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else45

if.then44:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i137) #4
  %51 = ptrtoint ptr %low_pwr_disable.i137 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %low_pwr_disable.i137, align 1
  %btc_set.i138 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %52 = ptrtoint ptr %btc_set.i138 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %btc_set.i138, align 4
  %call5.i139 = call zeroext i1 %53(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i137) #4
  %54 = ptrtoint ptr %btc_set.i138 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %btc_set.i138, align 4
  %call7.i140 = call zeroext i1 %55(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i137) #4
  br label %if.end49

if.else45:                                        ; preds = %land.lhs.true42.if.else45_crit_edge, %land.lhs.true40.if.else45_crit_edge, %if.else38.if.else45_crit_edge
  call fastcc void @halbtc8723b1ant_power_save_state(ptr noundef %btcoexist, i8 noundef zeroext 1, i8 noundef zeroext 80, i8 noundef zeroext 4)
  br label %if.end49

if.else48:                                        ; preds = %land.lhs.true22.if.else48_crit_edge, %land.lhs.true.if.else48_crit_edge, %if.end15.if.else48_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i141) #4
  %56 = ptrtoint ptr %low_pwr_disable.i141 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %low_pwr_disable.i141, align 1
  %btc_set.i142 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %57 = ptrtoint ptr %btc_set.i142 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %btc_set.i142, align 4
  %call5.i143 = call zeroext i1 %58(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i141) #4
  %59 = ptrtoint ptr %btc_set.i142 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %btc_set.i142, align 4
  %call7.i144 = call zeroext i1 %60(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i141) #4
  br label %if.end49

if.end49:                                         ; preds = %if.else48, %if.else45, %if.then44, %if.else35, %if.then34, %if.then29
  %61 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %wifi_busy, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool50.not = icmp eq i8 %62, 0
  %63 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 34), align 1
  br i1 %tobool50.not, label %if.then51, label %if.else71

if.then51:                                        ; preds = %if.end49
  %64 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.182)
  switch i8 %63, label %if.else68 [
    i8 3, label %if.then56
    i8 4, label %if.then51.if.then67_crit_edge
    i8 5, label %if.then51.if.then67_crit_edge145
  ]

if.then51.if.then67_crit_edge145:                 ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then67

if.then51.if.then67_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then67

if.then56:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_action_wifi_connected_bt_acl_busy(ptr noundef %btcoexist, i8 noundef zeroext 4)
  br label %cleanup

if.then67:                                        ; preds = %if.then51.if.then67_crit_edge, %if.then51.if.then67_crit_edge145
  call fastcc void @btc8723b1ant_act_bt_sco_hid_only_busy(ptr noundef %btcoexist)
  br label %cleanup

if.else68:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 2, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  store i8 2, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1515870810) #4
  br label %cleanup

if.else71:                                        ; preds = %if.end49
  %65 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.183)
  switch i8 %63, label %if.else88 [
    i8 3, label %if.then76
    i8 4, label %if.else71.if.then87_crit_edge
    i8 5, label %if.else71.if.then87_crit_edge146
  ]

if.else71.if.then87_crit_edge146:                 ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then87

if.else71.if.then87_crit_edge:                    ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then87

if.then76:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_action_wifi_connected_bt_acl_busy(ptr noundef %btcoexist, i8 noundef zeroext 5)
  br label %cleanup

if.then87:                                        ; preds = %if.else71.if.then87_crit_edge, %if.else71.if.then87_crit_edge146
  call fastcc void @btc8723b1ant_act_bt_sco_hid_only_busy(ptr noundef %btcoexist)
  br label %cleanup

if.else88:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 32)
  call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 2, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  call fastcc void @halbtc8723b1ant_coex_table_with_type(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 4)
  br label %cleanup

cleanup:                                          ; preds = %if.else88, %if.then87, %if.then76, %if.else68, %if.then67, %if.then56, %if.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %under_4way) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %roam) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scan) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b1ant_connect_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i.i = alloca i8, align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rxaggsize.i = alloca i8, align 1
  %wifi_connected = alloca i8, align 1
  %bt_hs_on = alloca i8, align 1
  %wifi_link_status = alloca i32, align 4
  %under_4way = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on) #4
  %3 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bt_hs_on, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_link_status) #4
  %4 = ptrtoint ptr %wifi_link_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wifi_link_status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %under_4way) #4
  %5 = ptrtoint ptr %under_4way to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %under_4way, align 1
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %6 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %7(ptr noundef %btcoexist, i8 noundef zeroext 12, ptr noundef nonnull %under_4way) #4
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %8 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %manual_control, align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %10 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %stop_coex_dm, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not = icmp eq i8 %11, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %12 = load i8, ptr @glcoex_sta_8723b_1ant, align 4, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool3.not = icmp eq i8 %12, 0
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
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 26), align 1
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 8)
  call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 2, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false)
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.94) #4
  store i32 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 44), align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 26), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.95) #4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %13 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %btc_get, align 4
  %call9 = call zeroext i1 %14(ptr noundef %btcoexist, i8 noundef zeroext 27, ptr noundef nonnull %wifi_link_status) #4
  %15 = ptrtoint ptr %wifi_link_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wifi_link_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %16)
  %cmp10 = icmp ugt i32 %16, 131071
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_limited_tx(ptr noundef %btcoexist, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %17 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %18 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rxaggsize.i) #4
  %19 = ptrtoint ptr %rxaggsize.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 5, ptr %rxaggsize.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %20 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_set.i, align 4
  %call.i = call zeroext i1 %21(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %22 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %23(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %24 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %25(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rxaggsize.i) #4
  %26 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %27(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxaggsize.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i.i) #4
  %28 = ptrtoint ptr %low_pwr_disable.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %low_pwr_disable.i.i, align 1
  %29 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %btc_set.i, align 4
  %call5.i.i = call zeroext i1 %30(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i.i) #4
  %31 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %btc_set.i, align 4
  %call7.i.i = call zeroext i1 %32(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i.i) #4
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8) #4
  call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 2, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #4
  store i8 2, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1515870810) #4
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %33 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %btc_get, align 4
  %call16 = call zeroext i1 %34(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on) #4
  %35 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 24), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool17.not = icmp eq i8 %35, 0
  br i1 %tobool17.not, label %if.else19, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_action_bt_inquiry(ptr noundef %btcoexist)
  br label %cleanup

if.else19:                                        ; preds = %if.end14
  %36 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bt_hs_on, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool20.not = icmp eq i8 %37, 0
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_action_hs(ptr noundef %btcoexist)
  br label %cleanup

if.end23:                                         ; preds = %if.else19
  br i1 %cmp, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.94) #4
  call fastcc void @btc8723b1ant_act_wifi_not_conn_asso_auth(ptr noundef %btcoexist)
  br label %cleanup

if.else28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp30 = icmp eq i8 %type, 0
  br i1 %cmp30, label %if.then32, label %if.else28.cleanup_crit_edge

if.else28.cleanup_crit_edge:                      ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then32:                                        ; preds = %if.else28
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.95) #4
  %38 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %btc_get, align 4
  %call34 = call zeroext i1 %39(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected) #4
  %40 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %wifi_connected, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool35.not = icmp eq i8 %41, 0
  br i1 %tobool35.not, label %if.then36, label %if.else37

if.then36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b1ant_action_wifi_not_conn(ptr noundef %btcoexist)
  br label %cleanup

if.else37:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_action_wifi_connected(ptr noundef %btcoexist)
  br label %cleanup

cleanup:                                          ; preds = %if.else37, %if.then36, %if.else28.cleanup_crit_edge, %if.then27, %if.then21, %if.then18, %if.then12, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %under_4way) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_link_status) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b1ant_act_wifi_not_conn_asso_auth(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
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
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %sco_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %sco_exist to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sco_exist, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %hid_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %7 = ptrtoint ptr %hid_exist to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hid_exist, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %a2dp_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %9 = ptrtoint ptr %a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %a2dp_exist, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %if.else, label %lor.lhs.false3.if.then_crit_edge

lor.lhs.false3.if.then_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false3.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 32)
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 30), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not.i = icmp eq i8 %11, 0
  br i1 %tobool8.not.i, label %if.then.if.else.i_crit_edge, label %land.lhs.true.i

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 29), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %12)
  %cmp.i = icmp ult i8 %12, 6
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 1431655765, i32 noundef -1431676326) #4
  br label %if.end8

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then.if.else.i_crit_edge
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 1431655765, i32 noundef 1515870810) #4
  br label %if.end8

if.else:                                          ; preds = %lor.lhs.false3
  %pan_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %13 = ptrtoint ptr %pan_exist to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pan_exist, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.not = icmp eq i8 %14, 0
  br i1 %tobool5.not, label %if.else7, label %if.then6

if.then6:                                         ; preds = %if.else
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 20)
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  %15 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 30), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not.i20 = icmp eq i8 %15, 0
  br i1 %tobool8.not.i20, label %if.then6.if.else.i24_crit_edge, label %land.lhs.true.i22

if.then6.if.else.i24_crit_edge:                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i24

land.lhs.true.i22:                                ; preds = %if.then6
  %16 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 29), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %16)
  %cmp.i21 = icmp ult i8 %16, 6
  br i1 %cmp.i21, label %if.then.i23, label %land.lhs.true.i22.if.else.i24_crit_edge

land.lhs.true.i22.if.else.i24_crit_edge:          ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i24

if.then.i23:                                      ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 1431655765, i32 noundef -1431676326) #4
  br label %if.end8

if.else.i24:                                      ; preds = %land.lhs.true.i22.if.else.i24_crit_edge, %if.then6.if.else.i24_crit_edge
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 1431655765, i32 noundef 1515870810) #4
  br label %if.end8

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 2, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  store i8 2, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 1515870810, i32 noundef 1515870810) #4
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.else.i24, %if.then.i23, %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b1ant_media_status_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter = alloca [3 x i8], align 1
  %wifi_bw = alloca i32, align 4
  %wifi_central_chnl = alloca i8, align 1
  %wifi_under_b_mode = alloca i8, align 1
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
  store i32 -1, ptr %wifi_bw, align 4, !annotation !376
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_central_chnl) #4
  %4 = ptrtoint ptr %wifi_central_chnl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %wifi_central_chnl, align 1, !annotation !376
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_under_b_mode) #4
  %5 = ptrtoint ptr %wifi_under_b_mode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %wifi_under_b_mode, align 1
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %6 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %manual_control, align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %8 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %stop_coex_dm, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %10 = load i8, ptr @glcoex_sta_8723b_1ant, align 4, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp = icmp eq i8 %type, 1
  br i1 %cmp, label %if.then5, label %if.end20

if.then5:                                         ; preds = %if.end
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.96) #4
  tail call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 8)
  tail call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 2, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false)
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %11 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %12(ptr noundef %btcoexist, i8 noundef zeroext 16, ptr noundef nonnull %wifi_under_b_mode) #4
  %13 = ptrtoint ptr %wifi_under_b_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %wifi_under_b_mode, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not = icmp eq i8 %14, 0
  %btc_write_1byte9 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %15 = ptrtoint ptr %btc_write_1byte9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_write_1byte9, align 4
  call void %16(ptr noundef %btcoexist, i32 noundef 1741, i32 noundef 0) #4
  %17 = ptrtoint ptr %btc_write_1byte9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_write_1byte9, align 4
  %. = select i1 %tobool6.not, i32 16, i32 0
  call void %18(ptr noundef %btcoexist, i32 noundef 1743, i32 noundef %.) #4
  %btc_read_4byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %19 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_read_4byte, align 4
  %call12 = call i32 %20(ptr noundef %btcoexist, i32 noundef 1072) #4
  store i32 %call12, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 28), align 4
  %21 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %btc_read_4byte, align 4
  %call14 = call i32 %22(ptr noundef %btcoexist, i32 noundef 1076) #4
  store i32 %call14, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 29), align 4
  %btc_read_2byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 20
  %23 = ptrtoint ptr %btc_read_2byte to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %btc_read_2byte, align 4
  %call15 = call zeroext i16 %24(ptr noundef %btcoexist, i32 noundef 1066) #4
  store i16 %call15, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 30), align 4
  %btc_read_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 17
  %25 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %btc_read_1byte, align 4
  %call16 = call zeroext i8 %26(ptr noundef %btcoexist, i32 noundef 1110) #4
  store i8 %call16, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 31), align 2
  %27 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %btc_get, align 4
  %call2297 = call zeroext i1 %28(ptr noundef %btcoexist, i8 noundef zeroext 38, ptr noundef nonnull %wifi_central_chnl) #4
  %29 = ptrtoint ptr %wifi_central_chnl to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %wifi_central_chnl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %30)
  %cmp27 = icmp ult i8 %30, 15
  br i1 %cmp27, label %if.then29, label %if.then5.if.end40_crit_edge

if.then5.if.end40_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.97) #4
  store i32 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 44), align 4
  %btc_write_1byte18 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %31 = ptrtoint ptr %btc_write_1byte18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %btc_write_1byte18, align 4
  tail call void %32(ptr noundef %btcoexist, i32 noundef 1741, i32 noundef 0) #4
  %33 = ptrtoint ptr %btc_write_1byte18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %btc_write_1byte18, align 4
  tail call void %34(ptr noundef %btcoexist, i32 noundef 1743, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 30), align 1
  %btc_get21 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %35 = ptrtoint ptr %btc_get21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btc_get21, align 4
  %call22 = call zeroext i1 %36(ptr noundef %btcoexist, i8 noundef zeroext 38, ptr noundef nonnull %wifi_central_chnl) #4
  br label %if.end40

if.then29:                                        ; preds = %if.then5
  %37 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %h2c_parameter, align 1
  %arrayidx30 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %30, ptr %arrayidx30, align 1
  %39 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %btc_get, align 4
  %call32 = call zeroext i1 %40(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %41 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp33 = icmp eq i32 %42, 2
  %arrayidx36 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 2
  br i1 %cmp33, label %if.then35, label %if.else37

if.then35:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 48, ptr %arrayidx36, align 1
  br label %if.end40

if.else37:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 32, ptr %arrayidx36, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.else37, %if.then35, %if.end20, %if.then5.if.end40_crit_edge
  %45 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %h2c_parameter, align 1
  store i8 %46, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 35), align 2
  %arrayidx43 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx43, align 1
  store i8 %48, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 35, i32 1), align 1
  %arrayidx46 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 2
  %49 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx46, align 1
  store i8 %50, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 35, i32 2), align 4
  %conv50 = zext i8 %46 to i32
  %shl = shl nuw nsw i32 %conv50, 16
  %conv52 = zext i8 %48 to i32
  %shl53 = shl nuw nsw i32 %conv52, 8
  %or = or i32 %shl53, %shl
  %conv55 = zext i8 %50 to i32
  %or56 = or i32 %or, %conv55
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.98, i32 noundef %or56) #4
  %btc_fill_h2c = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %51 = ptrtoint ptr %btc_fill_h2c to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %btc_fill_h2c, align 4
  call void %52(ptr noundef %btcoexist, i8 noundef zeroext 102, i32 noundef 3, ptr noundef nonnull %h2c_parameter) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_under_b_mode) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_central_chnl) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %h2c_parameter) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b1ant_special_packet_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i.i = alloca i8, align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rxaggsize.i = alloca i8, align 1
  %bt_hs_on = alloca i8, align 1
  %wifi_link_status = alloca i32, align 4
  %under_4way = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on) #4
  %2 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bt_hs_on, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_link_status) #4
  %3 = ptrtoint ptr %wifi_link_status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %wifi_link_status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %under_4way) #4
  %4 = ptrtoint ptr %under_4way to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %under_4way, align 1
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %5 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %6(ptr noundef %btcoexist, i8 noundef zeroext 12, ptr noundef nonnull %under_4way) #4
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %7 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %manual_control, align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %9 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %stop_coex_dm, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not = icmp eq i8 %10, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %11 = load i8, ptr @glcoex_sta_8723b_1ant, align 4, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %conv = zext i8 %type to i32
  %12 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.184)
  switch i8 %type, label %if.else29 [
    i8 2, label %if.then17
    i8 1, label %if.end.if.else26_crit_edge
    i8 3, label %if.end.if.else26_crit_edge92
  ]

if.end.if.else26_crit_edge92:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else26

if.end.if.else26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else26

if.then17:                                        ; preds = %if.end
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.99) #4
  %13 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 44), align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 44), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.100, i32 noundef %inc) #4
  %14 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 44), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %14)
  %cmp20 = icmp ugt i32 %14, 9
  br i1 %cmp20, label %land.lhs.true, label %if.then17.if.else_crit_edge

if.then17.if.else_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %if.then17
  %15 = ptrtoint ptr %under_4way to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %under_4way, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool22.not = icmp eq i8 %16, 0
  br i1 %tobool22.not, label %if.then23, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 26), align 1
  br label %if.end32

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then17.if.else_crit_edge
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 26), align 1
  br label %if.end32

if.else26:                                        ; preds = %if.end.if.else26_crit_edge, %if.end.if.else26_crit_edge92
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 26), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.101) #4
  br label %if.end32

if.else29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 26), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.102, i32 noundef %conv) #4
  br label %if.end32

if.end32:                                         ; preds = %if.else29, %if.else26, %if.else, %if.then23
  %17 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_get, align 4
  %call34 = call zeroext i1 %18(ptr noundef %btcoexist, i8 noundef zeroext 27, ptr noundef nonnull %wifi_link_status) #4
  %19 = ptrtoint ptr %wifi_link_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wifi_link_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %20)
  %cmp35 = icmp ugt i32 %20, 131071
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_limited_tx(ptr noundef %btcoexist, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %21 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %22 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rxaggsize.i) #4
  %23 = ptrtoint ptr %rxaggsize.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 5, ptr %rxaggsize.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %24 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_set.i, align 4
  %call.i = call zeroext i1 %25(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %26 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %27(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %28 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %29(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rxaggsize.i) #4
  %30 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %31(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxaggsize.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i.i) #4
  %32 = ptrtoint ptr %low_pwr_disable.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %low_pwr_disable.i.i, align 1
  %33 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %btc_set.i, align 4
  %call5.i.i = call zeroext i1 %34(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i.i) #4
  %35 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btc_set.i, align 4
  %call7.i.i = call zeroext i1 %36(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i.i) #4
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8) #4
  call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 2, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #4
  store i8 2, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1515870810) #4
  br label %cleanup

if.end39:                                         ; preds = %if.end32
  store i32 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 11), align 4
  %37 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %btc_get, align 4
  %call41 = call zeroext i1 %38(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on) #4
  %39 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 24), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool42.not = icmp eq i8 %39, 0
  br i1 %tobool42.not, label %if.else44, label %if.then43

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_action_bt_inquiry(ptr noundef %btcoexist)
  br label %cleanup

if.else44:                                        ; preds = %if.end39
  %40 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bt_hs_on, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool45.not = icmp eq i8 %41, 0
  br i1 %tobool45.not, label %if.end48, label %if.then46

if.then46:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_action_hs(ptr noundef %btcoexist)
  br label %cleanup

if.end48:                                         ; preds = %if.else44
  %42 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.185)
  switch i8 %type, label %if.end48.cleanup_crit_edge [
    i8 3, label %if.end48.if.then56_crit_edge
    i8 1, label %if.end48.if.then56_crit_edge93
  ]

if.end48.if.then56_crit_edge93:                   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then56

if.end48.if.then56_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then56

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then56:                                        ; preds = %if.end48.if.then56_crit_edge, %if.end48.if.then56_crit_edge93
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.103, i32 noundef %conv) #4
  call fastcc void @halbtc8723b1ant_action_wifi_connected_special_packet(ptr noundef %btcoexist)
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %if.end48.cleanup_crit_edge, %if.then46, %if.then43, %if.then37, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %under_4way) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_link_status) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_action_wifi_connected_special_packet(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
  %wifi_busy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_busy) #4
  %0 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %wifi_busy, align 1
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %1 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %2(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %wifi_busy) #4
  %3 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %wifi_busy, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pan_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %5 = ptrtoint ptr %pan_exist to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pan_exist, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 7), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp ugt i8 %7, 1
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %8 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %9 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %10(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %11 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %12(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %sco_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %13 = ptrtoint ptr %sco_exist to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sco_exist, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not = icmp eq i8 %14, 0
  br i1 %tobool4.not, label %lor.lhs.false6, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

lor.lhs.false6:                                   ; preds = %if.end
  %hid_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %15 = ptrtoint ptr %hid_exist to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hid_exist, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool7.not = icmp eq i8 %16, 0
  br i1 %tobool7.not, label %if.else, label %lor.lhs.false6.if.then9_crit_edge

lor.lhs.false6.if.then9_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false6.if.then9_crit_edge, %if.end.if.then9_crit_edge
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 32)
  store i8 5, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1521113690) #4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false6
  %a2dp_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %17 = ptrtoint ptr %a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %a2dp_exist, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool10.not = icmp eq i8 %18, 0
  br i1 %tobool10.not, label %if.else12, label %if.then11

if.then11:                                        ; preds = %if.else
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 32)
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  %19 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 30), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool8.not.i = icmp eq i8 %19, 0
  br i1 %tobool8.not.i, label %if.then11.if.else.i_crit_edge, label %land.lhs.true.i

if.then11.if.else.i_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then11
  %20 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 29), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %20)
  %cmp.i = icmp ult i8 %20, 6
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef -1431676326) #4
  br label %cleanup

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then11.if.else.i_crit_edge
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #4
  br label %cleanup

if.else12:                                        ; preds = %if.else
  %pan_exist13 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %21 = ptrtoint ptr %pan_exist13 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pan_exist13, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool14.not = icmp eq i8 %22, 0
  br i1 %tobool14.not, label %if.else16, label %if.then15

if.then15:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 20)
  call fastcc void @halbtc8723b1ant_coex_table_with_type(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 4)
  br label %cleanup

if.else16:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 2, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  store i8 2, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1515870810) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else16, %if.then15, %if.else.i, %if.then.i, %if.then9, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b1ant_bt_info_notify(ptr noundef %btcoexist, ptr nocapture noundef readonly %tmp_buf, i8 noundef zeroext %length) local_unnamed_addr #0 align 64 {
entry:
  %bt_hs_on.i = alloca i8, align 1
  %h2c_parameter.i.i397 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %wifi_connected = alloca i8, align 1
  %bt_busy = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_busy) #4
  %3 = ptrtoint ptr %bt_busy to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bt_busy, align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 20), align 1
  %4 = ptrtoint ptr %tmp_buf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tmp_buf, align 1
  %6 = and i8 %5, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp = icmp ugt i8 %6, 2
  %spec.store.select = select i1 %cmp, i8 0, i8 %6
  %idxprom = zext i8 %spec.store.select to i32
  %arrayidx4 = getelementptr %struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 22, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %arrayidx4, align 4
  %conv6 = zext i8 %length to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.104, i32 noundef %idxprom, i32 noundef %conv6) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %length)
  %cmp9414.not = icmp eq i8 %length, 0
  br i1 %cmp9414.not, label %entry.for.end_crit_edge, label %if.end23.peel

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end23.peel:                                    ; preds = %entry
  %sub = add nsw i32 %conv6, -1
  %9 = ptrtoint ptr %tmp_buf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tmp_buf, align 1
  %arrayidx16.peel = getelementptr %struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 21, i32 %idxprom, i32 0
  %11 = ptrtoint ptr %arrayidx16.peel to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx16.peel, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp26.peel = icmp eq i32 %sub, 0
  %12 = ptrtoint ptr %tmp_buf to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tmp_buf, align 1
  %conv31.peel = zext i8 %13 to i32
  br i1 %cmp26.peel, label %for.inc.peel.thread, label %for.inc.peel

for.inc.peel:                                     ; preds = %if.end23.peel
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.106, i32 noundef %conv31.peel) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %length)
  %exitcond.peel.not = icmp eq i8 %length, 1
  br i1 %exitcond.peel.not, label %for.inc.peel.for.end_crit_edge, label %if.end23.peel424

for.inc.peel.for.end_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.peel.thread:                              ; preds = %if.end23.peel
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.105, i32 noundef %conv31.peel) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %length)
  %exitcond.peel.not435 = icmp eq i8 %length, 1
  br i1 %exitcond.peel.not435, label %for.inc.peel.thread.for.end_crit_edge, label %if.end23.peel424.thread

for.inc.peel.thread.for.end_crit_edge:            ; preds = %for.inc.peel.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end23.peel424.thread:                          ; preds = %for.inc.peel.thread
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx12.peel420436 = getelementptr i8, ptr %tmp_buf, i32 1
  %14 = ptrtoint ptr %arrayidx12.peel420436 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12.peel420436, align 1
  %arrayidx16.peel421437 = getelementptr %struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 21, i32 %idxprom, i32 1
  %16 = ptrtoint ptr %arrayidx16.peel421437 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx16.peel421437, align 1
  br label %for.inc.peel431

if.end23.peel424:                                 ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx12.peel420 = getelementptr i8, ptr %tmp_buf, i32 1
  %17 = ptrtoint ptr %arrayidx12.peel420 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx12.peel420, align 1
  %arrayidx16.peel421 = getelementptr %struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 21, i32 %idxprom, i32 1
  %19 = ptrtoint ptr %arrayidx16.peel421 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx16.peel421, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp26.peel426 = icmp eq i32 %sub, 1
  %spec.select443 = select i1 %cmp26.peel426, ptr @.str.105, ptr @.str.106
  br label %for.inc.peel431

for.inc.peel431:                                  ; preds = %if.end23.peel424, %if.end23.peel424.thread
  %arrayidx12.peel420.sink = phi ptr [ %arrayidx12.peel420436, %if.end23.peel424.thread ], [ %arrayidx12.peel420, %if.end23.peel424 ]
  %.str.105.sink = phi ptr [ @.str.106, %if.end23.peel424.thread ], [ %spec.select443, %if.end23.peel424 ]
  %20 = ptrtoint ptr %arrayidx12.peel420.sink to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx12.peel420.sink, align 1
  %conv31.peel430 = zext i8 %21 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.105.sink, i32 noundef %conv31.peel430) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %length)
  %exitcond.peel433.not = icmp eq i8 %length, 2
  br i1 %exitcond.peel433.not, label %for.inc.peel431.for.end_crit_edge, label %for.inc.peel431.if.end23_crit_edge

for.inc.peel431.if.end23_crit_edge:               ; preds = %for.inc.peel431
  br label %if.end23

for.inc.peel431.for.end_crit_edge:                ; preds = %for.inc.peel431
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end23:                                         ; preds = %if.end23.if.end23_crit_edge, %for.inc.peel431.if.end23_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end23.if.end23_crit_edge ], [ 2, %for.inc.peel431.if.end23_crit_edge ]
  %arrayidx12 = getelementptr i8, ptr %tmp_buf, i32 %indvars.iv
  %22 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx12, align 1
  %arrayidx16 = getelementptr %struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 21, i32 %idxprom, i32 %indvars.iv
  %24 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %indvars.iv)
  %cmp26 = icmp eq i32 %sub, %indvars.iv
  %25 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx12, align 1
  %conv31 = zext i8 %26 to i32
  %.str.105..str.106 = select i1 %cmp26, ptr @.str.105, ptr @.str.106
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.105..str.106, i32 noundef %conv31) #4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv6
  br i1 %exitcond.not, label %if.end23.for.end_crit_edge, label %if.end23.if.end23_crit_edge, !llvm.loop !378

if.end23.if.end23_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.end23.for.end_crit_edge, %for.inc.peel431.for.end_crit_edge, %for.inc.peel.thread.for.end_crit_edge, %for.inc.peel.for.end_crit_edge, %entry.for.end_crit_edge
  %bt_info.0.lcssa = phi i8 [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.peel.for.end_crit_edge ], [ %21, %for.inc.peel431.for.end_crit_edge ], [ 0, %for.inc.peel.thread.for.end_crit_edge ], [ %21, %if.end23.for.end_crit_edge ]
  %conv37 = zext i8 %bt_info.0.lcssa to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bt_info.0.lcssa)
  %cmp38 = icmp eq i8 %bt_info.0.lcssa, -1
  %. = zext i1 %cmp38 to i8
  store i8 %., ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.store.select)
  %cmp45.not = icmp eq i8 %spec.store.select, 0
  br i1 %cmp45.not, label %for.end.if.end144_crit_edge, label %if.then47

for.end.if.end144_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end144

if.then47:                                        ; preds = %for.end
  %arrayidx51 = getelementptr %struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 21, i32 %idxprom, i32 2
  %27 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx51, align 2
  %29 = and i8 %28, 15
  store i8 %29, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 27), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp57.not = icmp eq i8 %29, 0
  br i1 %cmp57.not, label %if.then47.if.end61_crit_edge, label %if.then59

if.then47.if.end61_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

if.then59:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #6
  %30 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 33), align 4
  %inc60 = add i32 %30, 1
  store i32 %inc60, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 33), align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.then47.if.end61_crit_edge
  %31 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx51, align 2
  %33 = lshr i8 %32, 5
  %.lobit413 = and i8 %33, 1
  store i8 %.lobit413, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 25), align 2
  %arrayidx75 = getelementptr %struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 21, i32 %idxprom, i32 3
  %34 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx75, align 1
  %mul = shl i8 %35, 1
  %sub77 = add i8 %mul, -90
  store i8 %sub77, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 16), align 4
  %arrayidx82 = getelementptr %struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 21, i32 %idxprom, i32 4
  %36 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx82, align 2
  store i8 %37, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 28), align 1
  %arrayidx86 = getelementptr %struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 21, i32 %idxprom, i32 1
  %38 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx86, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %39)
  %cmp88 = icmp eq i8 %39, 73
  br i1 %cmp88, label %if.then90, label %if.end61.if.end97_crit_edge

if.end61.if.end97_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end97

if.then90:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx94 = getelementptr %struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 21, i32 %idxprom, i32 6
  %40 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx94, align 2
  br label %if.end97

if.end97:                                         ; preds = %if.then90, %if.end61.if.end97_crit_edge
  %storemerge394 = phi i8 [ %41, %if.then90 ], [ 0, %if.end61.if.end97_crit_edge ]
  store i8 %storemerge394, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 45), align 4
  %42 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx51, align 2
  %44 = lshr i8 %43, 6
  %.lobit = and i8 %44, 1
  store i8 %.lobit, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 19), align 2
  %btc_set = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %45 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %btc_set, align 4
  %call = tail call zeroext i1 %46(ptr noundef %btcoexist, i8 noundef zeroext 7, ptr noundef getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 19)) #4
  %47 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 19), align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool107.not = icmp eq i8 %47, 0
  br i1 %tobool107.not, label %if.then108, label %if.end97.if.end111_crit_edge

if.end97.if.end111_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111

if.then108:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.107) #4
  %btc_set_bt_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 33
  %48 = ptrtoint ptr %btc_set_bt_reg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %btc_set_bt_reg, align 4
  tail call void %49(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 60, i32 noundef 21) #4
  %50 = ptrtoint ptr %btc_set_bt_reg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %btc_set_bt_reg, align 4
  tail call void %51(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 44, i32 noundef 31812) #4
  %52 = ptrtoint ptr %btc_set_bt_reg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %btc_set_bt_reg, align 4
  tail call void %53(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 48, i32 noundef 31812) #4
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %if.end97.if.end111_crit_edge
  %54 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 28), align 1
  %55 = and i8 %54, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool115.not = icmp eq i8 %55, 0
  br i1 %tobool115.not, label %if.end111.if.end122_crit_edge, label %if.then116

if.end111.if.end122_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end122

if.then116:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.108) #4
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %56 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %btc_get, align 4
  %call117 = call zeroext i1 %57(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected) #4
  %58 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %wifi_connected, align 1, !range !377
  call void @ex_btc8723b1ant_media_status_notify(ptr noundef %btcoexist, i8 noundef zeroext %59)
  br label %if.end122

if.end122:                                        ; preds = %if.then116, %if.end111.if.end122_crit_edge
  %60 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 28), align 1
  %61 = and i8 %60, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool126.not = icmp eq i8 %61, 0
  br i1 %tobool126.not, label %if.end122.if.end133_crit_edge, label %if.then127

if.end122.if.end133_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end133

if.then127:                                       ; preds = %if.end122
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %62 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %manual_control, align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool128.not = icmp eq i8 %63, 0
  br i1 %tobool128.not, label %land.lhs.true, label %if.then127.if.end133_crit_edge

if.then127.if.end133_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end133

land.lhs.true:                                    ; preds = %if.then127
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %64 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %stop_coex_dm, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool129.not = icmp eq i8 %65, 0
  br i1 %tobool129.not, label %if.then130, label %land.lhs.true.if.end133_crit_edge

land.lhs.true.if.end133_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end133

if.then130:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.109) #4
  %66 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %67, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.155) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 2), align 2
  %68 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %70 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %h2c_parameter.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %69, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.157, i32 noundef 0) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %71 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %72(ptr noundef %btcoexist, i8 noundef zeroext 99, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %73 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 2), align 2, !range !377
  store i8 %73, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 3), align 1
  br label %if.end133

if.end133:                                        ; preds = %if.then130, %land.lhs.true.if.end133_crit_edge, %if.then127.if.end133_crit_edge, %if.end122.if.end133_crit_edge
  %auto_report_1ant = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 7
  %74 = ptrtoint ptr %auto_report_1ant to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %auto_report_1ant, align 4, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool134.not = icmp eq i8 %75, 0
  br i1 %tobool134.not, label %if.then135, label %if.end133.if.end144_crit_edge

if.end133.if.end144_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end144

if.then135:                                       ; preds = %if.end133
  %76 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 28), align 1
  %77 = and i8 %76, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool139.not = icmp eq i8 %77, 0
  br i1 %tobool139.not, label %if.else141, label %if.then135.if.end144_crit_edge

if.then135.if.end144_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end144

if.else141:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #6
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 12), align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i397) #4
  %78 = ptrtoint ptr %h2c_parameter.i.i397 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %h2c_parameter.i.i397, align 1
  %btc_fill_h2c.i.i398 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %79 = ptrtoint ptr %btc_fill_h2c.i.i398 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %btc_fill_h2c.i.i398, align 4
  call void %80(ptr noundef %btcoexist, i8 noundef zeroext 104, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i397) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i397) #4
  %81 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 12), align 4, !range !377
  store i8 %81, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 11), align 1
  br label %if.end144

if.end144:                                        ; preds = %if.else141, %if.then135.if.end144_crit_edge, %if.end133.if.end144_crit_edge, %for.end.if.end144_crit_edge
  %and146 = and i32 %conv37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  %not.tobool147.not = xor i1 %tobool147.not, true
  %.396 = zext i1 %not.tobool147.not to i8
  store i8 %.396, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 24), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 7), align 1
  %and153 = and i32 %conv37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.then155, label %if.else156

if.then155:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #6
  %82 = call ptr @memset(ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 1), i32 0, i32 6)
  br label %if.end259

if.else156:                                       ; preds = %if.end144
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 1), align 1
  %and159 = and i32 %conv37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %if.else165, label %if.then161

if.then161:                                       ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #6
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 5), align 1
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 7), align 1
  br label %if.end167

if.else165:                                       ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #6
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 5), align 1
  br label %if.end167

if.end167:                                        ; preds = %if.else165, %if.then161
  %and169 = and i32 %conv37, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %if.else175, label %if.then171

if.then171:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #6
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 3), align 1
  %83 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 7), align 1
  %inc174 = add i8 %83, 1
  store i8 %inc174, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 7), align 1
  br label %if.end177

if.else175:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #6
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 3), align 1
  br label %if.end177

if.end177:                                        ; preds = %if.else175, %if.then171
  %and179 = and i32 %conv37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %if.else185, label %if.then181

if.then181:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #6
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 4), align 4
  %84 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 7), align 1
  %inc184 = add i8 %84, 1
  store i8 %inc184, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 7), align 1
  br label %if.end187

if.else185:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #6
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 4), align 4
  br label %if.end187

if.end187:                                        ; preds = %if.else185, %if.then181
  %and189 = and i32 %conv37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %if.else195, label %if.then191

if.then191:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #6
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 2), align 2
  %85 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 7), align 1
  %inc194 = add i8 %85, 1
  store i8 %inc194, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 7), align 1
  br label %if.end197

if.else195:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #6
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 2), align 2
  br label %if.end197

if.end197:                                        ; preds = %if.else195, %if.then191
  %86 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 4), align 4, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool199.not = icmp eq i8 %86, 0
  br i1 %tobool199.not, label %land.lhs.true200, label %if.end197.land.lhs.true224_crit_edge

if.end197.land.lhs.true224_crit_edge:             ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true224

land.lhs.true200:                                 ; preds = %if.end197
  br i1 %tobool147.not, label %land.lhs.true203, label %land.lhs.true200.lor.lhs.false_crit_edge

land.lhs.true200.lor.lhs.false_crit_edge:         ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

land.lhs.true203:                                 ; preds = %land.lhs.true200
  %87 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 2), align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool205.not = icmp eq i8 %87, 0
  br i1 %tobool205.not, label %if.then206, label %land.lhs.true203.if.end217_crit_edge

land.lhs.true203.if.end217_crit_edge:             ; preds = %land.lhs.true203
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end217

if.then206:                                       ; preds = %land.lhs.true203
  %88 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 12), align 4
  %89 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 13), align 4
  %add = add i32 %89, %88
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %add)
  %cmp207 = icmp ugt i32 %add, 159
  br i1 %cmp207, label %if.then209, label %if.then206.if.end217_crit_edge

if.then206.if.end217_crit_edge:                   ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end217

if.then209:                                       ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #6
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 4), align 4
  %90 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 44), align 4
  %inc211 = add i32 %90, 1
  store i32 %inc211, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 44), align 4
  %91 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 7), align 1
  %inc213 = add i8 %91, 1
  store i8 %inc213, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 7), align 1
  %or = or i8 %bt_info.0.lcssa, 40
  br label %if.end217

if.end217:                                        ; preds = %if.then209, %if.then206.if.end217_crit_edge, %land.lhs.true203.if.end217_crit_edge
  %bt_info.2.ph = phi i8 [ %bt_info.0.lcssa, %if.then206.if.end217_crit_edge ], [ %or, %if.then209 ], [ %bt_info.0.lcssa, %land.lhs.true203.if.end217_crit_edge ]
  %.pr = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool219.not = icmp eq i8 %.pr, 0
  br i1 %tobool219.not, label %if.end217.lor.lhs.false_crit_edge, label %land.lhs.true224.thread

if.end217.lor.lhs.false_crit_edge:                ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end217.lor.lhs.false_crit_edge, %land.lhs.true200.lor.lhs.false_crit_edge
  %bt_info.2403 = phi i8 [ %bt_info.2.ph, %if.end217.lor.lhs.false_crit_edge ], [ %bt_info.0.lcssa, %land.lhs.true200.lor.lhs.false_crit_edge ]
  %92 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 2), align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool222.not = icmp eq i8 %92, 0
  br i1 %tobool222.not, label %lor.lhs.false.if.end235_crit_edge, label %lor.lhs.false.land.lhs.true224_crit_edge

lor.lhs.false.land.lhs.true224_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true224

lor.lhs.false.if.end235_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end235

land.lhs.true224:                                 ; preds = %lor.lhs.false.land.lhs.true224_crit_edge, %if.end197.land.lhs.true224_crit_edge
  %bt_info.2401 = phi i8 [ %bt_info.2403, %lor.lhs.false.land.lhs.true224_crit_edge ], [ %bt_info.0.lcssa, %if.end197.land.lhs.true224_crit_edge ]
  %93 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 12), align 4
  %94 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 13), align 4
  %add227 = add i32 %94, %93
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %add227)
  %cmp228 = icmp ult i32 %add227, 160
  %brmerge = select i1 %cmp228, i1 true, i1 %not.tobool147.not
  br i1 %brmerge, label %land.lhs.true224.if.end235_crit_edge, label %land.lhs.true224.if.then233_crit_edge

land.lhs.true224.if.then233_crit_edge:            ; preds = %land.lhs.true224
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then233

land.lhs.true224.if.end235_crit_edge:             ; preds = %land.lhs.true224
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end235

land.lhs.true224.thread:                          ; preds = %if.end217
  %95 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 12), align 4
  %96 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 13), align 4
  %add227408 = add i32 %96, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %add227408)
  %cmp228409 = icmp ugt i32 %add227408, 159
  br i1 %cmp228409, label %land.lhs.true224.thread.if.then233_crit_edge, label %land.lhs.true224.thread.if.end235_crit_edge

land.lhs.true224.thread.if.end235_crit_edge:      ; preds = %land.lhs.true224.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end235

land.lhs.true224.thread.if.then233_crit_edge:     ; preds = %land.lhs.true224.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then233

if.then233:                                       ; preds = %land.lhs.true224.thread.if.then233_crit_edge, %land.lhs.true224.if.then233_crit_edge
  %bt_info.2401410412 = phi i8 [ %bt_info.2.ph, %land.lhs.true224.thread.if.then233_crit_edge ], [ %bt_info.2401, %land.lhs.true224.if.then233_crit_edge ]
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 6), align 2
  br label %if.end235

if.end235:                                        ; preds = %if.then233, %land.lhs.true224.thread.if.end235_crit_edge, %land.lhs.true224.if.end235_crit_edge, %lor.lhs.false.if.end235_crit_edge
  %bt_info.2402 = phi i8 [ %bt_info.2401410412, %if.then233 ], [ %bt_info.2401, %land.lhs.true224.if.end235_crit_edge ], [ %bt_info.2403, %lor.lhs.false.if.end235_crit_edge ], [ %bt_info.2.ph, %land.lhs.true224.thread.if.end235_crit_edge ]
  %97 = and i8 %bt_info.2402, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool238.not = icmp eq i8 %97, 0
  br i1 %tobool238.not, label %if.end235.if.end259_crit_edge, label %land.lhs.true239

if.end235.if.end259_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end259

land.lhs.true239:                                 ; preds = %if.end235
  %98 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 7), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp242 = icmp eq i8 %98, 0
  br i1 %cmp242, label %if.then244, label %land.lhs.true239.if.end259_crit_edge

land.lhs.true239.if.end259_crit_edge:             ; preds = %land.lhs.true239
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end259

if.then244:                                       ; preds = %land.lhs.true239
  %99 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 14), align 4
  %100 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 15), align 4
  %add245 = add i32 %100, %99
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %add245)
  %cmp246 = icmp ugt i32 %add245, 159
  br i1 %cmp246, label %if.then248, label %if.then244.if.end259_crit_edge

if.then244.if.end259_crit_edge:                   ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end259

if.then248:                                       ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #6
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 5), align 1
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 7), align 1
  %101 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 44), align 4
  %inc253 = add i32 %101, 1
  store i32 %inc253, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 44), align 4
  %or255 = or i8 %bt_info.2402, -120
  br label %if.end259

if.end259:                                        ; preds = %if.then248, %if.then244.if.end259_crit_edge, %land.lhs.true239.if.end259_crit_edge, %if.end235.if.end259_crit_edge, %if.then155
  %bt_info.3 = phi i8 [ %or255, %if.then248 ], [ %bt_info.2402, %if.then244.if.end259_crit_edge ], [ %bt_info.2402, %land.lhs.true239.if.end259_crit_edge ], [ %bt_info.2402, %if.end235.if.end259_crit_edge ], [ %bt_info.0.lcssa, %if.then155 ]
  %bt_link_info1.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  %102 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %bt_hs_on.i, align 1
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %103 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %104(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on.i) #4
  %105 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 1), align 1, !range !377
  %106 = ptrtoint ptr %bt_link_info1.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %bt_link_info1.i, align 1
  %107 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 2), align 2, !range !377
  %sco_exist4.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %108 = ptrtoint ptr %sco_exist4.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %sco_exist4.i, align 1
  %109 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 3), align 1, !range !377
  %a2dp_exist7.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %110 = ptrtoint ptr %a2dp_exist7.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %a2dp_exist7.i, align 1
  %111 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 5), align 1, !range !377
  %pan_exist10.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %112 = ptrtoint ptr %pan_exist10.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %pan_exist10.i, align 1
  %113 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 4), align 4, !range !377
  %hid_exist13.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %114 = ptrtoint ptr %hid_exist13.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %hid_exist13.i, align 1
  %115 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 6), align 2, !range !377
  %bt_hi_pri_link_exist16.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 1
  %116 = ptrtoint ptr %bt_hi_pri_link_exist16.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %bt_hi_pri_link_exist16.i, align 1
  %117 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %bt_hs_on.i, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool18.not.i = icmp eq i8 %118, 0
  br i1 %tobool18.not.i, label %if.end259.if.end.i_crit_edge, label %if.then.i

if.end259.if.end.i_crit_edge:                     ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #6
  %119 = ptrtoint ptr %pan_exist10.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %pan_exist10.i, align 1
  %120 = ptrtoint ptr %bt_link_info1.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %bt_link_info1.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end259.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool22.not.i = icmp eq i8 %107, 0
  br i1 %tobool22.not.i, label %land.lhs.true36.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool24.not.i = icmp eq i8 %109, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %land.lhs.true.i.if.end33.thread112.i_crit_edge

land.lhs.true.i.if.end33.thread112.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33.thread112.i

land.lhs.true25.i:                                ; preds = %land.lhs.true.i
  %121 = ptrtoint ptr %pan_exist10.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %pan_exist10.i, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool27.not.i = icmp eq i8 %122, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool30.not.i = icmp eq i8 %113, 0
  %or.cond.i = select i1 %tobool27.not.i, i1 %tobool30.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true25.i.if.end63.i_crit_edge, label %land.lhs.true25.i.if.end33.thread112.i_crit_edge

land.lhs.true25.i.if.end33.thread112.i_crit_edge: ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33.thread112.i

land.lhs.true25.i.if.end63.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63.i

if.end33.thread112.i:                             ; preds = %land.lhs.true25.i.if.end33.thread112.i_crit_edge, %land.lhs.true.i.if.end33.thread112.i_crit_edge
  br label %if.end63.i

land.lhs.true36.i:                                ; preds = %if.end.i
  %sco_only32.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 3
  %123 = ptrtoint ptr %sco_only32.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %sco_only32.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool38.not.i = icmp eq i8 %109, 0
  br i1 %tobool38.not.i, label %land.lhs.true54.i, label %land.lhs.true39.i

land.lhs.true39.i:                                ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #6
  %124 = ptrtoint ptr %pan_exist10.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %pan_exist10.i, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool41.not.i = icmp eq i8 %125, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool44.not.i = icmp eq i8 %113, 0
  %or.cond131.i = select i1 %tobool41.not.i, i1 %tobool44.not.i, i1 false
  %spec.select.i = zext i1 %or.cond131.i to i8
  %126 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 5
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %spec.select.i, ptr %126, align 1
  %pan_only62121.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 9
  %128 = ptrtoint ptr %pan_only62121.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %pan_only62121.i, align 1
  br label %if.else76.i

land.lhs.true54.i:                                ; preds = %land.lhs.true36.i
  %a2dp_only47115.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 5
  %129 = ptrtoint ptr %a2dp_only47115.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %a2dp_only47115.i, align 1
  %130 = ptrtoint ptr %pan_exist10.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %pan_exist10.i, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool56.not.i = icmp eq i8 %131, 0
  br i1 %tobool56.not.i, label %land.lhs.true72.i, label %land.lhs.true57.i

land.lhs.true57.i:                                ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool59.not.i = icmp eq i8 %113, 0
  %pan_only.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 9
  br i1 %tobool59.not.i, label %land.lhs.true69.thread.i, label %land.lhs.true69.i

if.end63.i:                                       ; preds = %if.end33.thread112.i, %land.lhs.true25.i.if.end63.i_crit_edge
  %.sink132.i = phi i8 [ 0, %if.end33.thread112.i ], [ 1, %land.lhs.true25.i.if.end63.i_crit_edge ]
  %sco_only32113.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 3
  %132 = ptrtoint ptr %sco_only32113.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %.sink132.i, ptr %sco_only32113.i, align 1
  %a2dp_only47.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 5
  %133 = ptrtoint ptr %a2dp_only47.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %a2dp_only47.i, align 1
  %pan_only62.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 9
  %134 = ptrtoint ptr %pan_only62.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %pan_only62.i, align 1
  br label %if.else76.i

land.lhs.true69.i:                                ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #6
  %135 = ptrtoint ptr %pan_only.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %pan_only.i, align 1
  br label %if.else76.i

land.lhs.true69.thread.i:                         ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #6
  %136 = ptrtoint ptr %pan_only.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %pan_only.i, align 1
  br label %if.else76.i

land.lhs.true72.i:                                ; preds = %land.lhs.true54.i
  %pan_only62121124129.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 9
  %137 = ptrtoint ptr %pan_only62121124129.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %pan_only62121124129.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool74.not.i = icmp eq i8 %113, 0
  br i1 %tobool74.not.i, label %land.lhs.true72.i.if.else76.i_crit_edge, label %land.lhs.true72.i.halbtc8723b1ant_update_bt_link_info.exit_crit_edge

land.lhs.true72.i.halbtc8723b1ant_update_bt_link_info.exit_crit_edge: ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_update_bt_link_info.exit

land.lhs.true72.i.if.else76.i_crit_edge:          ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else76.i

if.else76.i:                                      ; preds = %land.lhs.true72.i.if.else76.i_crit_edge, %land.lhs.true69.thread.i, %land.lhs.true69.i, %if.end63.i, %land.lhs.true39.i
  br label %halbtc8723b1ant_update_bt_link_info.exit

halbtc8723b1ant_update_bt_link_info.exit:         ; preds = %if.else76.i, %land.lhs.true72.i.halbtc8723b1ant_update_bt_link_info.exit_crit_edge
  %.sink.i = phi i8 [ 0, %if.else76.i ], [ 1, %land.lhs.true72.i.halbtc8723b1ant_update_bt_link_info.exit_crit_edge ]
  %hid_only77.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 7
  %138 = ptrtoint ptr %hid_only77.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %.sink.i, ptr %hid_only77.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  %139 = and i8 %bt_info.3, 31
  %conv263 = zext i8 %139 to i32
  %and264 = and i32 %conv263, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and264)
  %tobool265.not = icmp eq i32 %and264, 0
  br i1 %tobool265.not, label %halbtc8723b1ant_update_bt_link_info.exit.if.end300_crit_edge, label %if.else267

halbtc8723b1ant_update_bt_link_info.exit.if.end300_crit_edge: ; preds = %halbtc8723b1ant_update_bt_link_info.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end300

if.else267:                                       ; preds = %halbtc8723b1ant_update_bt_link_info.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %139)
  %cmp269 = icmp eq i8 %139, 1
  br i1 %cmp269, label %if.else267.if.end300_crit_edge, label %if.else273

if.else267.if.end300_crit_edge:                   ; preds = %if.else267
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end300

if.else273:                                       ; preds = %if.else267
  %140 = and i32 %conv263, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %if.else283, label %if.else273.if.end300_crit_edge

if.else273.if.end300_crit_edge:                   ; preds = %if.else273
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end300

if.else283:                                       ; preds = %if.else273
  %and285 = and i32 %conv263, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and285)
  %tobool286.not = icmp eq i32 %and285, 0
  br i1 %tobool286.not, label %if.else283.if.end300_crit_edge, label %if.then287

if.else283.if.end300_crit_edge:                   ; preds = %if.else283
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end300

if.then287:                                       ; preds = %if.else283
  %142 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 34), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %142)
  %cmp290.not = icmp eq i8 %142, 3
  br i1 %cmp290.not, label %if.then287.if.end300_crit_edge, label %if.then292

if.then287.if.end300_crit_edge:                   ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end300

if.then292:                                       ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #6
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 8), align 4
  br label %if.end300

if.end300:                                        ; preds = %if.then292, %if.then287.if.end300_crit_edge, %if.else283.if.end300_crit_edge, %if.else273.if.end300_crit_edge, %if.else267.if.end300_crit_edge, %halbtc8723b1ant_update_bt_link_info.exit.if.end300_crit_edge
  %.sink441 = phi i8 [ 0, %halbtc8723b1ant_update_bt_link_info.exit.if.end300_crit_edge ], [ 1, %if.else267.if.end300_crit_edge ], [ 4, %if.else273.if.end300_crit_edge ], [ 3, %if.then292 ], [ 3, %if.then287.if.end300_crit_edge ], [ 6, %if.else283.if.end300_crit_edge ]
  %.str.111.sink = phi ptr [ @.str.110, %halbtc8723b1ant_update_bt_link_info.exit.if.end300_crit_edge ], [ @.str.111, %if.else267.if.end300_crit_edge ], [ @.str.112, %if.else273.if.end300_crit_edge ], [ @.str.113, %if.then292 ], [ @.str.113, %if.then287.if.end300_crit_edge ], [ @.str.114, %if.else283.if.end300_crit_edge ]
  store i8 %.sink441, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 34), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.111.sink) #4
  %143 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 34), align 1
  %.off = add i8 %143, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  %spec.select = zext i1 %switch to i8
  %144 = ptrtoint ptr %bt_busy to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %spec.select, ptr %bt_busy, align 1
  %btc_set318 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %145 = ptrtoint ptr %btc_set318 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %btc_set318, align 4
  %call319 = call zeroext i1 %146(ptr noundef %btcoexist, i8 noundef zeroext 1, ptr noundef nonnull %bt_busy) #4
  call fastcc void @halbtc8723b1ant_run_coexist_mechanism(ptr noundef %btcoexist)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_busy) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_run_coexist_mechanism(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i.i = alloca i8, align 1
  %wifi_connected = alloca i8, align 1
  %bt_hs_on = alloca i8, align 1
  %wifi_busy = alloca i8, align 1
  %increase_scan_dev_num = alloca i8, align 1
  %miracast_plus_bt = alloca i8, align 1
  %iot_peer = alloca i8, align 1
  %wifi_link_status = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_connected) #4
  %2 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %wifi_connected, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on) #4
  %3 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bt_hs_on, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_busy) #4
  %4 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %wifi_busy, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %increase_scan_dev_num) #4
  %5 = ptrtoint ptr %increase_scan_dev_num to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %increase_scan_dev_num, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %miracast_plus_bt) #4
  %6 = ptrtoint ptr %miracast_plus_bt to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %miracast_plus_bt, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %iot_peer) #4
  %7 = ptrtoint ptr %iot_peer to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %iot_peer, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_link_status) #4
  %8 = ptrtoint ptr %wifi_link_status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %wifi_link_status, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %9 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !376
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.158) #4
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %10 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %manual_control, align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.159) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %12 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %stop_coex_dm, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not = icmp eq i8 %13, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.160) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %14 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 10), align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.not = icmp eq i8 %14, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.161) #4
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %15 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 23), align 4, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not = icmp eq i8 %15, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.161) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i.i) #4
  %16 = ptrtoint ptr %low_pwr_disable.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %low_pwr_disable.i.i, align 1
  %btc_set.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %17 = ptrtoint ptr %btc_set.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_set.i.i, align 4
  %call5.i.i = call zeroext i1 %18(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i.i) #4
  %19 = ptrtoint ptr %btc_set.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_set.i.i, align 4
  %call7.i.i = call zeroext i1 %20(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i.i) #4
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8) #4
  call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 2, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765) #4
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %21 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 34), align 1
  %.off = add i8 %21, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.then21, label %if.end10.if.end22_crit_edge

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then21:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %increase_scan_dev_num to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %increase_scan_dev_num, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end10.if.end22_crit_edge
  %btc_set = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %23 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %btc_set, align 4
  %call = call zeroext i1 %24(ptr noundef %btcoexist, i8 noundef zeroext 6, ptr noundef nonnull %increase_scan_dev_num) #4
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %25 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %btc_get, align 4
  %call23 = call zeroext i1 %26(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected) #4
  %27 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %btc_get, align 4
  %call25 = call zeroext i1 %28(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %wifi_busy) #4
  %29 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %btc_get, align 4
  %call27 = call zeroext i1 %30(ptr noundef %btcoexist, i8 noundef zeroext 27, ptr noundef nonnull %wifi_link_status) #4
  %31 = ptrtoint ptr %wifi_link_status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wifi_link_status, align 4
  %33 = and i32 %32, -131064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %if.end49, label %if.then32

if.then32:                                        ; preds = %if.end22
  %35 = ptrtoint ptr %bt_link_info1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bt_link_info1, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool33.not = icmp eq i8 %36, 0
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_limited_tx(ptr noundef %btcoexist, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1)
  br label %if.end35

if.else:                                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_limited_tx(ptr noundef %btcoexist, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then34
  %storemerge = phi i8 [ 0, %if.else ], [ 1, %if.then34 ]
  %37 = ptrtoint ptr %miracast_plus_bt to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %storemerge, ptr %miracast_plus_bt, align 1
  %38 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %btc_set, align 4
  %call37 = call zeroext i1 %39(ptr noundef %btcoexist, i8 noundef zeroext 8, ptr noundef nonnull %miracast_plus_bt) #4
  call fastcc void @halbtc8723b1ant_limited_rx(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 5)
  %a2dp_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %40 = ptrtoint ptr %a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %a2dp_exist, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool39.not = icmp eq i8 %41, 0
  br i1 %tobool39.not, label %lor.lhs.false41, label %if.end35.land.lhs.true_crit_edge

if.end35.land.lhs.true_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

lor.lhs.false41:                                  ; preds = %if.end35
  %42 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %wifi_busy, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool42.not = icmp eq i8 %43, 0
  br i1 %tobool42.not, label %lor.lhs.false41.if.else47_crit_edge, label %lor.lhs.false41.land.lhs.true_crit_edge

lor.lhs.false41.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

lor.lhs.false41.if.else47_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else47

land.lhs.true:                                    ; preds = %lor.lhs.false41.land.lhs.true_crit_edge, %if.end35.land.lhs.true_crit_edge
  %44 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 24), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool44.not = icmp eq i8 %44, 0
  br i1 %tobool44.not, label %land.lhs.true.if.else47_crit_edge, label %if.then46

land.lhs.true.if.else47_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else47

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_action_bt_inquiry(ptr noundef %btcoexist)
  br label %cleanup

if.else47:                                        ; preds = %land.lhs.true.if.else47_crit_edge, %lor.lhs.false41.if.else47_crit_edge
  call fastcc void @halbtc8723b1ant_action_wifi_multiport(ptr noundef %btcoexist)
  br label %cleanup

if.end49:                                         ; preds = %if.end22
  %45 = ptrtoint ptr %miracast_plus_bt to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %miracast_plus_bt, align 1
  %46 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %btc_set, align 4
  %call51 = call zeroext i1 %47(ptr noundef %btcoexist, i8 noundef zeroext 8, ptr noundef nonnull %miracast_plus_bt) #4
  %48 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %btc_get, align 4
  %call53 = call zeroext i1 %49(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %50 = ptrtoint ptr %bt_link_info1 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bt_link_info1, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool55.not = icmp eq i8 %51, 0
  br i1 %tobool55.not, label %if.end49.if.else86_crit_edge, label %land.lhs.true57

if.end49.if.else86_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else86

land.lhs.true57:                                  ; preds = %if.end49
  %52 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %wifi_connected, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool58.not = icmp eq i8 %53, 0
  br i1 %tobool58.not, label %land.lhs.true57.if.else86_crit_edge, label %if.then60

land.lhs.true57.if.else86_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else86

if.then60:                                        ; preds = %land.lhs.true57
  call fastcc void @halbtc8723b1ant_limited_tx(ptr noundef %btcoexist, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %54 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %btc_get, align 4
  %call62 = call zeroext i1 %55(ptr noundef %btcoexist, i8 noundef zeroext 43, ptr noundef nonnull %iot_peer) #4
  %56 = ptrtoint ptr %iot_peer to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %iot_peer, align 1
  %58 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.186)
  switch i8 %57, label %if.then70 [
    i8 6, label %if.then60.if.else74_crit_edge
    i8 3, label %if.then60.if.else74_crit_edge192
  ]

if.then60.if.else74_crit_edge192:                 ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else74

if.then60.if.else74_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else74

if.then70:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #6
  %sco_exist71 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %59 = ptrtoint ptr %sco_exist71 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %sco_exist71, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool72 = icmp ne i8 %60, 0
  call fastcc void @halbtc8723b1ant_limited_rx(ptr noundef %btcoexist, i1 noundef zeroext %tobool72, i1 noundef zeroext false, i8 noundef zeroext 5)
  br label %if.end87

if.else74:                                        ; preds = %if.then60.if.else74_crit_edge, %if.then60.if.else74_crit_edge192
  %sco_exist75 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %61 = ptrtoint ptr %sco_exist75 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %sco_exist75, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool76.not = icmp eq i8 %62, 0
  br i1 %tobool76.not, label %if.else78, label %if.then77

if.then77:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_limited_rx(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 5)
  br label %if.end87

if.else78:                                        ; preds = %if.else74
  %63 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp79 = icmp eq i32 %64, 2
  br i1 %cmp79, label %if.then81, label %if.else82

if.then81:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_limited_rx(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 16)
  br label %if.end87

if.else82:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_limited_rx(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 8)
  br label %if.end87

if.else86:                                        ; preds = %land.lhs.true57.if.else86_crit_edge, %if.end49.if.else86_crit_edge
  call fastcc void @halbtc8723b1ant_limited_tx(ptr noundef %btcoexist, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call fastcc void @halbtc8723b1ant_limited_rx(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 5)
  br label %if.end87

if.end87:                                         ; preds = %if.else86, %if.else82, %if.then81, %if.then77, %if.then70
  %.sink = phi i1 [ false, %if.else86 ], [ true, %if.then77 ], [ true, %if.else82 ], [ true, %if.then81 ], [ true, %if.then70 ]
  call fastcc void @halbtc8723b1ant_sw_mechanism(ptr noundef %btcoexist, i1 noundef zeroext %.sink)
  %65 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %btc_get, align 4
  %call89 = call zeroext i1 %66(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on) #4
  %67 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 24), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool91.not = icmp eq i8 %67, 0
  br i1 %tobool91.not, label %if.else93, label %if.then92

if.then92:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_action_bt_inquiry(ptr noundef %btcoexist)
  br label %cleanup

if.else93:                                        ; preds = %if.end87
  %68 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bt_hs_on, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool94.not = icmp eq i8 %69, 0
  br i1 %tobool94.not, label %if.end97, label %if.then95

if.then95:                                        ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_action_hs(ptr noundef %btcoexist)
  br label %cleanup

if.end97:                                         ; preds = %if.else93
  %70 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %wifi_connected, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool98.not = icmp eq i8 %71, 0
  br i1 %tobool98.not, label %if.then99, label %if.else121

if.then99:                                        ; preds = %if.end97
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scan) #4
  %72 = ptrtoint ptr %scan to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %scan, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #4
  %73 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %link, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %roam) #4
  %74 = ptrtoint ptr %roam to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %roam, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.162) #4
  %75 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %btc_get, align 4
  %call101 = call zeroext i1 %76(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %scan) #4
  %77 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %btc_get, align 4
  %call103 = call zeroext i1 %78(ptr noundef %btcoexist, i8 noundef zeroext 6, ptr noundef nonnull %link) #4
  %79 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %btc_get, align 4
  %call105 = call zeroext i1 %80(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %roam) #4
  %81 = ptrtoint ptr %scan to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %scan, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool106.not = icmp eq i8 %82, 0
  br i1 %tobool106.not, label %lor.lhs.false108, label %if.then116

lor.lhs.false108:                                 ; preds = %if.then99
  %83 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %link, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool109.not = icmp eq i8 %84, 0
  br i1 %tobool109.not, label %lor.lhs.false111, label %lor.lhs.false108.if.else117_crit_edge

lor.lhs.false108.if.else117_crit_edge:            ; preds = %lor.lhs.false108
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else117

lor.lhs.false111:                                 ; preds = %lor.lhs.false108
  %85 = ptrtoint ptr %roam to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %roam, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool112.not = icmp eq i8 %86, 0
  br i1 %tobool112.not, label %if.else119, label %lor.lhs.false111.if.else117_crit_edge

lor.lhs.false111.if.else117_crit_edge:            ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else117

if.then116:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b1ant_action_wifi_not_conn_scan(ptr noundef %btcoexist)
  br label %if.end120

if.else117:                                       ; preds = %lor.lhs.false111.if.else117_crit_edge, %lor.lhs.false108.if.else117_crit_edge
  call fastcc void @btc8723b1ant_act_wifi_not_conn_asso_auth(ptr noundef %btcoexist)
  br label %if.end120

if.else119:                                       ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b1ant_action_wifi_not_conn(ptr noundef %btcoexist)
  br label %if.end120

if.end120:                                        ; preds = %if.else119, %if.else117, %if.then116
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %roam) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scan) #4
  br label %cleanup

if.else121:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_action_wifi_connected(ptr noundef %btcoexist)
  br label %cleanup

cleanup:                                          ; preds = %if.else121, %if.end120, %if.then95, %if.then92, %if.else47, %if.then46, %if.then9, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_link_status) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %iot_peer) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %miracast_plus_bt) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %increase_scan_dev_num) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b1ant_rf_status_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %low_pwr_disable.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.115) #4
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.187)
  switch i8 %type, label %entry.if.end15_crit_edge [
    i8 1, label %if.then
    i8 0, label %if.then5
  ]

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.116) #4
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %3 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %stop_coex_dm, align 1
  br label %if.end15

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.117) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %4 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %5 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %6(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %7 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %8(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 0)
  call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 1, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true)
  %9 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.154) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 2), align 2
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %13 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %h2c_parameter.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %12, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.157, i32 noundef 1) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %14 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %15(ptr noundef %btcoexist, i8 noundef zeroext 99, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %16 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 2), align 2, !range !377
  store i8 %16, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 3), align 1
  %stop_coex_dm6 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %17 = ptrtoint ptr %stop_coex_dm6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %stop_coex_dm6, align 1
  %btc_read_4byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %18 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_read_4byte, align 4
  %call = call i32 %19(ptr noundef %btcoexist, i32 noundef 2376) #4
  %btc_read_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 17
  %20 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_read_1byte, align 4
  %call7 = call zeroext i8 %21(ptr noundef %btcoexist, i32 noundef 1893) #4
  %22 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_read_1byte, align 4
  %call9 = call zeroext i8 %23(ptr noundef %btcoexist, i32 noundef 103) #4
  %24 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_read_1byte, align 4
  %call11 = call zeroext i8 %25(ptr noundef %btcoexist, i32 noundef 1902) #4
  %conv12 = zext i8 %call7 to i32
  %conv13 = zext i8 %call9 to i32
  %conv14 = zext i8 %call11 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.118, i32 noundef %call, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14) #4
  br label %if.end15

if.end15:                                         ; preds = %if.then5, %if.then, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_power_save_state(ptr noundef %btcoexist, i8 noundef zeroext %ps_type, i8 noundef zeroext %lps_val, i8 noundef zeroext %rpwm_val) unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.188)
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
  br i1 %tobool.not.i, label %if.then5.i, label %sw.bb3.halbtc8723b1ant_ps_tdma_chk_pwr_save.exit_crit_edge

sw.bb3.halbtc8723b1ant_ps_tdma_chk_pwr_save.exit_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_ps_tdma_chk_pwr_save.exit

if.then5.i:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 0) #4
  br label %halbtc8723b1ant_ps_tdma_chk_pwr_save.exit

halbtc8723b1ant_ps_tdma_chk_pwr_save.exit:        ; preds = %if.then5.i, %sw.bb3.halbtc8723b1ant_ps_tdma_chk_pwr_save.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lps_mode.i) #4
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %7 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter.i, align 4
  %conv.i = zext i8 %lps_val to i32
  %conv1.i = zext i8 %rpwm_val to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.140, i32 noundef %conv.i, i32 noundef %conv1.i) #4
  store i8 %lps_val, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 14), align 2
  store i8 %rpwm_val, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 16), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.164, i32 noundef %conv.i, i32 noundef %conv1.i) #4
  %9 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 13), align 1
  %10 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 14), align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %10)
  %cmp.i = icmp eq i8 %9, %10
  br i1 %cmp.i, label %land.lhs.true.i, label %halbtc8723b1ant_ps_tdma_chk_pwr_save.exit.if.end21.i_crit_edge

halbtc8723b1ant_ps_tdma_chk_pwr_save.exit.if.end21.i_crit_edge: ; preds = %halbtc8723b1ant_ps_tdma_chk_pwr_save.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.i

land.lhs.true.i:                                  ; preds = %halbtc8723b1ant_ps_tdma_chk_pwr_save.exit
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 15), align 1
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 16), align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %12)
  %cmp14.i = icmp eq i8 %11, %12
  br i1 %cmp14.i, label %if.then16.i, label %land.lhs.true.i.if.end21.i_crit_edge

land.lhs.true.i.if.end21.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv13.i = zext i8 %11 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.165, i32 noundef %conv13.i, i32 noundef %conv13.i) #4
  br label %halbtc8723b1ant_lps_rpwm.exit

if.end21.i:                                       ; preds = %land.lhs.true.i.if.end21.i_crit_edge, %halbtc8723b1ant_ps_tdma_chk_pwr_save.exit.if.end21.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lps.i.i) #4
  %13 = ptrtoint ptr %lps.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %lps_val, ptr %lps.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rpwm.i.i) #4
  %14 = ptrtoint ptr %rpwm.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %rpwm_val, ptr %rpwm.i.i, align 1
  %btc_set.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %15 = ptrtoint ptr %btc_set.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_set.i.i, align 4
  %call.i.i = call zeroext i1 %16(ptr noundef %btcoexist, i8 noundef zeroext 18, ptr noundef nonnull %lps.i.i) #4
  %17 = ptrtoint ptr %btc_set.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_set.i.i, align 4
  %call2.i.i = call zeroext i1 %18(ptr noundef %btcoexist, i8 noundef zeroext 19, ptr noundef nonnull %rpwm.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rpwm.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lps.i.i) #4
  %19 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 14), align 2
  store i8 %19, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 13), align 1
  %20 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 16), align 4
  store i8 %20, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 15), align 1
  br label %halbtc8723b1ant_lps_rpwm.exit

halbtc8723b1ant_lps_rpwm.exit:                    ; preds = %if.end21.i, %if.then16.i
  %21 = ptrtoint ptr %low_pwr_disable to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %low_pwr_disable, align 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %halbtc8723b1ant_lps_rpwm.exit, %entry.sw.epilog.sink.split_crit_edge
  %.sink25 = phi i8 [ 23, %halbtc8723b1ant_lps_rpwm.exit ], [ 24, %entry.sw.epilog.sink.split_crit_edge ]
  %btc_set = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %22 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_set, align 4
  %call5 = call zeroext i1 %23(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable) #4
  %24 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_set, align 4
  %call7 = call zeroext i1 %25(ptr noundef %btcoexist, i8 noundef zeroext %.sink25, ptr noundef null) #4
  store i8 %ps_type, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b1ant_halt_notify(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.119) #4
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %2 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %stop_coex_dm, align 1
  tail call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 1, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true)
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %4, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.154) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 2), align 2
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %7 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %h2c_parameter.i.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.157, i32 noundef 1) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %8 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %9(ptr noundef %btcoexist, i8 noundef zeroext 99, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %10 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 2), align 2, !range !377
  store i8 %10, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %11 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %12 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %13(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %14 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %15(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 0)
  call void @ex_btc8723b1ant_media_status_notify(ptr noundef %btcoexist, i8 noundef zeroext 0)
  %16 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %stop_coex_dm, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b1ant_pnp_notify(ptr noundef %btcoexist, i8 noundef zeroext %pnp_state) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i = alloca [1 x i8], align 1
  %h2c_parameter.i.i.i.i = alloca [6 x i8], align 1
  %low_pwr_disable.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.120) #4
  %2 = zext i8 %pnp_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.189)
  switch i8 %pnp_state, label %entry.if.end7_crit_edge [
    i8 1, label %if.then
    i8 0, label %if.then5
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.121) #4
  tail call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 1, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %3 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %4 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %5(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %6 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %7(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 32), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 0)
  store i8 2, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1515870810) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 10), align 2
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 9), align 1
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %8 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %stop_coex_dm, align 1
  br label %if.end7

if.then5:                                         ; preds = %entry
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.122) #4
  %stop_coex_dm6 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %9 = ptrtoint ptr %stop_coex_dm6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %stop_coex_dm6, align 1
  tail call fastcc void @halbtc8723b1ant_init_hw_config(ptr noundef %btcoexist, i1 noundef zeroext false)
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.127, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 18), align 2
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 17), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.i.i.i = icmp eq i8 %12, 0
  br i1 %cmp.i.i.i, label %if.then5.halbtc8723b1ant_init_coex_dm.exit_crit_edge, label %if.end10.i.i.i

if.then5.halbtc8723b1ant_init_coex_dm.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_init_coex_dm.exit

if.end10.i.i.i:                                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i) #4
  %15 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i.i, i32 1
  %16 = call ptr @memset(ptr %15, i32 0, i32 5)
  %17 = ptrtoint ptr %h2c_parameter.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 6, ptr %h2c_parameter.i.i.i.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %14, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.130) #4
  %btc_fill_h2c.i.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %18 = ptrtoint ptr %btc_fill_h2c.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_fill_h2c.i.i.i.i, align 4
  call void %19(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i) #4
  %20 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 18), align 2, !range !377
  store i8 %20, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 17), align 1
  br label %halbtc8723b1ant_init_coex_dm.exit

halbtc8723b1ant_init_coex_dm.exit:                ; preds = %if.end10.i.i.i, %if.then5.halbtc8723b1ant_init_coex_dm.exit_crit_edge
  store i32 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 33), align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 20), align 1
  %21 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %h2c_parameter.i, align 1
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %22 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %23(ptr noundef %btcoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  br label %if.end7

if.end7:                                          ; preds = %halbtc8723b1ant_init_coex_dm.exit, %if.then, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b1ant_coex_dm_reset(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.123) #4
  tail call fastcc void @halbtc8723b1ant_init_hw_config(ptr noundef %btcoexist, i1 noundef zeroext false)
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %3, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.127, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 18), align 2
  %4 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 17), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.i.i.i = icmp eq i8 %4, 0
  br i1 %cmp.i.i.i, label %entry.halbtc8723b1ant_init_coex_dm.exit_crit_edge, label %if.end10.i.i.i

entry.halbtc8723b1ant_init_coex_dm.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_init_coex_dm.exit

if.end10.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i) #4
  %7 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i.i, i32 1
  %8 = call ptr @memset(ptr %7, i32 0, i32 5)
  %9 = ptrtoint ptr %h2c_parameter.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 6, ptr %h2c_parameter.i.i.i.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.130) #4
  %btc_fill_h2c.i.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %10 = ptrtoint ptr %btc_fill_h2c.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_fill_h2c.i.i.i.i, align 4
  call void %11(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i) #4
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 18), align 2, !range !377
  store i8 %12, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 17), align 1
  br label %halbtc8723b1ant_init_coex_dm.exit

halbtc8723b1ant_init_coex_dm.exit:                ; preds = %if.end10.i.i.i, %entry.halbtc8723b1ant_init_coex_dm.exit_crit_edge
  store i32 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 33), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b1ant_periodical(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
entry:
  %wifi_busy.i31 = alloca i8, align 1
  %under_4way.i = alloca i8, align 1
  %bt_hs_on.i = alloca i8, align 1
  %wifi_connected.i = alloca i8, align 1
  %wifi_rssi.i = alloca i32, align 4
  %wifi_busy.i = alloca i8, align 1
  %wifi_under_b_mode.i = alloca i8, align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %bt_disabled.i = alloca i8, align 1
  %h2c_parameter.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.124) #4
  %auto_report_1ant = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 7
  %2 = ptrtoint ptr %auto_report_1ant to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %auto_report_1ant, align 4, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 20), align 1
  %4 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %h2c_parameter.i, align 1
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %5 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %6(ptr noundef %btcoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_disabled.i) #4
  %9 = ptrtoint ptr %bt_disabled.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %bt_disabled.i, align 1
  %10 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 12), align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %10, label %if.then.if.then19.i_crit_edge [
    i32 0, label %land.lhs.true.i
    i32 65535, label %land.lhs.true8.i
  ]

if.then.if.then19.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i

land.lhs.true.i:                                  ; preds = %if.then
  %12 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1.i = icmp eq i32 %12, 0
  br i1 %cmp1.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.then19.i_crit_edge

land.lhs.true.i.if.then19.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %13 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3.i = icmp eq i32 %13, 0
  br i1 %cmp3.i, label %if.end18.i, label %land.lhs.true2.i.if.then19.i_crit_edge

land.lhs.true2.i.if.then19.i_crit_edge:           ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i

land.lhs.true8.i:                                 ; preds = %if.then
  %14 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %14)
  %cmp10.i = icmp eq i32 %14, 65535
  br i1 %cmp10.i, label %land.lhs.true11.i, label %land.lhs.true8.i.if.then19.i_crit_edge

land.lhs.true8.i.if.then19.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i

land.lhs.true11.i:                                ; preds = %land.lhs.true8.i
  %15 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %15)
  %cmp13.i = icmp eq i32 %15, 65535
  br i1 %cmp13.i, label %land.lhs.true14.i, label %land.lhs.true11.i.if.then19.i_crit_edge

land.lhs.true11.i.if.then19.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i

land.lhs.true14.i:                                ; preds = %land.lhs.true11.i
  %16 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %16)
  %cmp16.not.i = icmp eq i32 %16, 65535
  br i1 %cmp16.not.i, label %land.lhs.true14.i.if.else.i_crit_edge, label %land.lhs.true14.i.if.then19.i_crit_edge

land.lhs.true14.i.if.then19.i_crit_edge:          ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i

land.lhs.true14.i.if.else.i_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.end18.i:                                       ; preds = %land.lhs.true2.i
  %17 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp5.not.i = icmp eq i32 %17, 0
  br i1 %cmp5.not.i, label %if.end18.i.if.else.i_crit_edge, label %if.end18.i.if.then19.i_crit_edge

if.end18.i.if.then19.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i

if.end18.i.if.else.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.then19.i:                                      ; preds = %if.end18.i.if.then19.i_crit_edge, %land.lhs.true14.i.if.then19.i_crit_edge, %land.lhs.true11.i.if.then19.i_crit_edge, %land.lhs.true8.i.if.then19.i_crit_edge, %land.lhs.true2.i.if.then19.i_crit_edge, %land.lhs.true.i.if.then19.i_crit_edge, %if.then.if.then19.i_crit_edge
  store i32 0, ptr @halbtc8723b1ant_monitor_bt_enable_disable.bt_disable_cnt, align 4
  br label %if.end23.i

if.else.i:                                        ; preds = %if.end18.i.if.else.i_crit_edge, %land.lhs.true14.i.if.else.i_crit_edge
  %18 = load i32, ptr @halbtc8723b1ant_monitor_bt_enable_disable.bt_disable_cnt, align 4
  %inc.i = add i32 %18, 1
  store i32 %inc.i, ptr @halbtc8723b1ant_monitor_bt_enable_disable.bt_disable_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc.i)
  %cmp20.i = icmp ugt i32 %inc.i, 1
  br i1 %cmp20.i, label %if.then21.i, label %if.else.i.if.end23.i_crit_edge

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %bt_disabled.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %bt_disabled.i, align 1
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.else.i.if.end23.i_crit_edge, %if.then19.i
  %20 = load i8, ptr @glcoex_sta_8723b_1ant, align 4, !range !377
  %21 = ptrtoint ptr %bt_disabled.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bt_disabled.i, align 1, !range !377
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp28.not.i = icmp eq i8 %20, %22
  br i1 %cmp28.not.i, label %if.end23.i.halbtc8723b1ant_monitor_bt_enable_disable.exit_crit_edge, label %if.then30.i

if.end23.i.halbtc8723b1ant_monitor_bt_enable_disable.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_monitor_bt_enable_disable.exit

if.then30.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool26.not.i = icmp eq i8 %22, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool25.not.i = icmp eq i8 %20, 0
  %cond.i = select i1 %tobool25.not.i, ptr @.str.167, ptr @.str.36
  %cond36.i = select i1 %tobool26.not.i, ptr @.str.167, ptr @.str.36
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.166, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond36.i) #4
  %23 = ptrtoint ptr %bt_disabled.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bt_disabled.i, align 1, !range !377
  store i8 %24, ptr @glcoex_sta_8723b_1ant, align 4
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %25 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %btc_set.i, align 4
  %call.i = call zeroext i1 %26(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_disabled.i) #4
  %27 = ptrtoint ptr %bt_disabled.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bt_disabled.i, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool39.not.i = icmp eq i8 %28, 0
  br i1 %tobool39.not.i, label %if.then30.i.halbtc8723b1ant_monitor_bt_enable_disable.exit_crit_edge, label %if.then40.i

if.then30.i.halbtc8723b1ant_monitor_bt_enable_disable.exit_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_monitor_bt_enable_disable.exit

if.then40.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #6
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 1431655765, i32 noundef 1431655765) #4
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 8) #4
  call fastcc void @halbtc8723b1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 2, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %29 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %btc_set.i, align 4
  %call42.i = call zeroext i1 %30(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef null) #4
  %31 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %btc_set.i, align 4
  %call44.i = call zeroext i1 %32(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  br label %halbtc8723b1ant_monitor_bt_enable_disable.exit

halbtc8723b1ant_monitor_bt_enable_disable.exit:   ; preds = %if.then40.i, %if.then30.i.halbtc8723b1ant_monitor_bt_enable_disable.exit_crit_edge, %if.end23.i.halbtc8723b1ant_monitor_bt_enable_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_disabled.i) #4
  br label %if.end8

if.else:                                          ; preds = %entry
  %btc_read_4byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %33 = ptrtoint ptr %btc_read_4byte.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %btc_read_4byte.i, align 4
  %call.i18 = tail call i32 %34(ptr noundef %btcoexist, i32 noundef 1904) #4
  %and.i = and i32 %call.i18, 65535
  %shr.i = lshr i32 %call.i18, 16
  %35 = ptrtoint ptr %btc_read_4byte.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btc_read_4byte.i, align 4
  %call3.i = tail call i32 %36(ptr noundef %btcoexist, i32 noundef 1908) #4
  %and4.i = and i32 %call3.i, 65535
  %shr6.i = lshr i32 %call3.i, 16
  store i32 %and.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 12), align 4
  store i32 %shr.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 13), align 4
  store i32 %and4.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 14), align 4
  store i32 %shr6.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050, i32 %and4.i)
  %cmp.i = icmp ugt i32 %and4.i, 1050
  br i1 %cmp.i, label %land.lhs.true.i19, label %if.else.if.end.i_crit_edge

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true.i19:                                ; preds = %if.else
  %37 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 24), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i19.if.end.i_crit_edge

land.lhs.true.i19.if.end.i_crit_edge:             ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #6
  %38 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 33), align 4
  %inc.i20 = add i32 %38, 1
  store i32 %inc.i20, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 33), align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i19.if.end.i_crit_edge, %if.else.if.end.i_crit_edge
  %btc_write_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %39 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %btc_write_1byte.i, align 4
  tail call void %40(ptr noundef %btcoexist, i32 noundef 1902, i32 noundef 12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %41 = icmp eq i32 %call.i18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %cmp12.i = icmp eq i32 %and4.i, 0
  %or.cond34.i = select i1 %41, i1 %cmp12.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call3.i)
  %cmp14.i = icmp ult i32 %call3.i, 65536
  %or.cond35.i = select i1 %or.cond34.i, i1 %cmp14.i, i1 false
  br i1 %or.cond35.i, label %if.then15.i, label %if.else.i21

if.then15.i:                                      ; preds = %if.end.i
  %42 = load i32, ptr @halbtc8723b1ant_monitor_bt_ctr.num_of_bt_counter_chk, align 4
  %inc16.i = add i32 %42, 1
  store i32 %inc16.i, ptr @halbtc8723b1ant_monitor_bt_ctr.num_of_bt_counter_chk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc16.i)
  %cmp17.i = icmp eq i32 %inc16.i, 3
  br i1 %cmp17.i, label %if.then18.i, label %if.then15.i.halbtc8723b1ant_monitor_bt_ctr.exit_crit_edge

if.then15.i.halbtc8723b1ant_monitor_bt_ctr.exit_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_monitor_bt_ctr.exit

if.then18.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 20), align 1
  %43 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %h2c_parameter.i.i, align 1
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %44 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %45(ptr noundef %btcoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  br label %halbtc8723b1ant_monitor_bt_ctr.exit

if.else.i21:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  store i32 0, ptr @halbtc8723b1ant_monitor_bt_ctr.num_of_bt_counter_chk, align 4
  br label %halbtc8723b1ant_monitor_bt_ctr.exit

halbtc8723b1ant_monitor_bt_ctr.exit:              ; preds = %if.else.i21, %if.then18.i, %if.then15.i.halbtc8723b1ant_monitor_bt_ctr.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %46 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %wifi_rssi.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_busy.i) #4
  %47 = ptrtoint ptr %wifi_busy.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %wifi_busy.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_under_b_mode.i) #4
  %48 = ptrtoint ptr %wifi_under_b_mode.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %wifi_under_b_mode.i, align 1
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %49 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %btc_get.i, align 4
  %call.i22 = call zeroext i1 %50(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %wifi_busy.i) #4
  %51 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %btc_get.i, align 4
  %call2.i = call zeroext i1 %52(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %53 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %btc_get.i, align 4
  %call4.i = call zeroext i1 %54(ptr noundef %btcoexist, i8 noundef zeroext 16, ptr noundef nonnull %wifi_under_b_mode.i) #4
  %55 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 10), align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i23 = icmp eq i8 %55, 0
  br i1 %tobool.not.i23, label %if.else.i26, label %if.then.i24

if.then.i24:                                      ; preds = %halbtc8723b1ant_monitor_bt_ctr.exit
  call void @__sanitizer_cov_trace_pc() #6
  %56 = call ptr @memset(ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 34), i32 0, i32 28)
  br label %if.end.i27

if.else.i26:                                      ; preds = %halbtc8723b1ant_monitor_bt_ctr.exit
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %btc_read_4byte.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %btc_read_4byte.i, align 4
  %call5.i = call i32 %58(ptr noundef %btcoexist, i32 noundef 3976) #4
  store i32 %call5.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 34), align 4
  %btc_read_2byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 20
  %59 = ptrtoint ptr %btc_read_2byte.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %btc_read_2byte.i, align 4
  %call7.i = call zeroext i16 %60(ptr noundef %btcoexist, i32 noundef 3988) #4
  %conv.i = zext i16 %call7.i to i32
  store i32 %conv.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 35), align 4
  %61 = ptrtoint ptr %btc_read_2byte.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %btc_read_2byte.i, align 4
  %call10.i = call zeroext i16 %62(ptr noundef %btcoexist, i32 noundef 3984) #4
  %conv11.i = zext i16 %call10.i to i32
  store i32 %conv11.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 36), align 4
  %63 = ptrtoint ptr %btc_read_2byte.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %btc_read_2byte.i, align 4
  %call14.i = call zeroext i16 %64(ptr noundef %btcoexist, i32 noundef 4024) #4
  %conv15.i = zext i16 %call14.i to i32
  store i32 %conv15.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 37), align 4
  %65 = ptrtoint ptr %btc_read_4byte.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %btc_read_4byte.i, align 4
  %call18.i = call i32 %66(ptr noundef %btcoexist, i32 noundef 3972) #4
  store i32 %call18.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 38), align 4
  %67 = ptrtoint ptr %btc_read_2byte.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %btc_read_2byte.i, align 4
  %call21.i = call zeroext i16 %68(ptr noundef %btcoexist, i32 noundef 3990) #4
  %conv22.i = zext i16 %call21.i to i32
  store i32 %conv22.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 39), align 4
  %69 = ptrtoint ptr %btc_read_2byte.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %btc_read_2byte.i, align 4
  %call25.i = call zeroext i16 %70(ptr noundef %btcoexist, i32 noundef 3986) #4
  %conv26.i = zext i16 %call25.i to i32
  store i32 %conv26.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 40), align 4
  %71 = ptrtoint ptr %btc_read_2byte.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %btc_read_2byte.i, align 4
  %call29.i = call zeroext i16 %72(ptr noundef %btcoexist, i32 noundef 4026) #4
  %conv30.i = zext i16 %call29.i to i32
  br label %if.end.i27

if.end.i27:                                       ; preds = %if.else.i26, %if.then.i24
  %storemerge.i = phi i32 [ %conv30.i, %if.else.i26 ], [ 0, %if.then.i24 ]
  store i32 %storemerge.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 41), align 4
  %btc_write_1byte_bitmask.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %73 = ptrtoint ptr %btc_write_1byte_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %btc_write_1byte_bitmask.i, align 4
  call void %74(ptr noundef %btcoexist, i32 noundef 3862, i32 noundef 1, i8 noundef zeroext 1) #4
  %75 = ptrtoint ptr %btc_write_1byte_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %btc_write_1byte_bitmask.i, align 4
  call void %76(ptr noundef %btcoexist, i32 noundef 3862, i32 noundef 1, i8 noundef zeroext 0) #4
  %77 = ptrtoint ptr %wifi_busy.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %wifi_busy.i, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool33.not.i = icmp eq i8 %78, 0
  br i1 %tobool33.not.i, label %if.end.i27.if.else83.i_crit_edge, label %land.lhs.true.i29

if.end.i27.if.else83.i_crit_edge:                 ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else83.i

land.lhs.true.i29:                                ; preds = %if.end.i27
  %79 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %80)
  %cmp.i28 = icmp sgt i32 %80, 29
  br i1 %cmp.i28, label %land.lhs.true36.i, label %land.lhs.true.i29.if.else83.i_crit_edge

land.lhs.true.i29.if.else83.i_crit_edge:          ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else83.i

land.lhs.true36.i:                                ; preds = %land.lhs.true.i29
  %81 = ptrtoint ptr %wifi_under_b_mode.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %wifi_under_b_mode.i, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool37.not.i = icmp eq i8 %82, 0
  br i1 %tobool37.not.i, label %if.then38.i, label %land.lhs.true36.i.if.else83.i_crit_edge

land.lhs.true36.i.if.else83.i_crit_edge:          ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else83.i

if.then38.i:                                      ; preds = %land.lhs.true36.i
  %83 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 34), align 1
  %.off.i = add i8 %83, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %if.then57.i, label %if.else75.i

if.then57.i:                                      ; preds = %if.then38.i
  %84 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 34), align 4
  %85 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 35), align 4
  %86 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 36), align 4
  %87 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 37), align 4
  %add44.i = add i32 %86, %85
  %sub.i = add i32 %add44.i, %87
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %sub.i)
  %cmp60.i = icmp ugt i32 %84, %sub.i
  %88 = load i8, ptr @halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter, align 1
  br i1 %cmp60.i, label %if.then62.i, label %if.else68.i

if.then62.i:                                      ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %88)
  %cmp64.i = icmp ult i8 %88, 3
  br i1 %cmp64.i, label %if.then66.i, label %if.then62.i.if.end90.i_crit_edge

if.then62.i.if.end90.i_crit_edge:                 ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end90.i

if.then66.i:                                      ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #6
  %inc.i30 = add nuw nsw i8 %88, 1
  br label %if.end90.sink.split.i

if.else68.i:                                      ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp70.not.i = icmp eq i8 %88, 0
  br i1 %cmp70.not.i, label %if.else68.i.if.end90.i_crit_edge, label %if.then72.i

if.else68.i.if.end90.i_crit_edge:                 ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end90.i

if.then72.i:                                      ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #6
  %dec.i = add i8 %88, -1
  br label %if.end90.sink.split.i

if.else75.i:                                      ; preds = %if.then38.i
  %89 = load i8, ptr @halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp77.not.i = icmp eq i8 %89, 0
  br i1 %cmp77.not.i, label %if.else75.i.if.end90.i_crit_edge, label %if.then79.i

if.else75.i.if.end90.i_crit_edge:                 ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end90.i

if.then79.i:                                      ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #6
  %dec80.i = add i8 %89, -1
  br label %if.end90.sink.split.i

if.else83.i:                                      ; preds = %land.lhs.true36.i.if.else83.i_crit_edge, %land.lhs.true.i29.if.else83.i_crit_edge, %if.end.i27.if.else83.i_crit_edge
  %90 = load i8, ptr @halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp85.not.i = icmp eq i8 %90, 0
  br i1 %cmp85.not.i, label %if.else83.i.if.end90.i_crit_edge, label %if.then87.i

if.else83.i.if.end90.i_crit_edge:                 ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end90.i

if.then87.i:                                      ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #6
  %dec88.i = add i8 %90, -1
  br label %if.end90.sink.split.i

if.end90.sink.split.i:                            ; preds = %if.then87.i, %if.then79.i, %if.then72.i, %if.then66.i
  %dec88.sink.i = phi i8 [ %dec88.i, %if.then87.i ], [ %dec.i, %if.then72.i ], [ %inc.i30, %if.then66.i ], [ %dec80.i, %if.then79.i ]
  store i8 %dec88.sink.i, ptr @halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter, align 1
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.end90.sink.split.i, %if.else83.i.if.end90.i_crit_edge, %if.else75.i.if.end90.i_crit_edge, %if.else68.i.if.end90.i_crit_edge, %if.then62.i.if.end90.i_crit_edge
  %91 = phi i8 [ %dec88.sink.i, %if.end90.sink.split.i ], [ 0, %if.else83.i.if.end90.i_crit_edge ], [ 0, %if.else75.i.if.end90.i_crit_edge ], [ 0, %if.else68.i.if.end90.i_crit_edge ], [ %88, %if.then62.i.if.end90.i_crit_edge ]
  %92 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 43), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool91.not.i = icmp eq i8 %92, 0
  br i1 %tobool91.not.i, label %if.then92.i, label %if.else100.i

if.then92.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %91)
  %cmp94.i = icmp ugt i8 %91, 2
  br i1 %cmp94.i, label %if.then92.i.if.then112.i_crit_edge, label %if.else97.i

if.then92.i.if.then112.i_crit_edge:               ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then112.i

if.else97.i:                                      ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #6
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 42), align 4
  br label %halbtc8723b1ant_monitor_wifi_ctr.exit

if.else100.i:                                     ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp102.i = icmp eq i8 %91, 0
  br i1 %cmp102.i, label %if.then104.i, label %if.else100.i.if.then112.i_crit_edge

if.else100.i.if.then112.i_crit_edge:              ; preds = %if.else100.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then112.i

if.then104.i:                                     ; preds = %if.else100.i
  call void @__sanitizer_cov_trace_pc() #6
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 42), align 4
  br label %halbtc8723b1ant_monitor_wifi_ctr.exit

if.then112.i:                                     ; preds = %if.else100.i.if.then112.i_crit_edge, %if.then92.i.if.then112.i_crit_edge
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 42), align 4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 30), align 1
  br label %halbtc8723b1ant_monitor_wifi_ctr.exit

halbtc8723b1ant_monitor_wifi_ctr.exit:            ; preds = %if.then112.i, %if.then104.i, %if.else97.i
  %93 = phi i8 [ 1, %if.then112.i ], [ 0, %if.then104.i ], [ 0, %if.else97.i ]
  store i8 %93, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 43), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_under_b_mode.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %94 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 12), align 4
  %95 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 13), align 4
  %add = add i32 %95, %94
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %add)
  %cmp = icmp ult i32 %add, 50
  br i1 %cmp, label %land.lhs.true, label %halbtc8723b1ant_monitor_wifi_ctr.exit.if.end_crit_edge

halbtc8723b1ant_monitor_wifi_ctr.exit.if.end_crit_edge: ; preds = %halbtc8723b1ant_monitor_wifi_ctr.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %halbtc8723b1ant_monitor_wifi_ctr.exit
  %hid_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %96 = ptrtoint ptr %hid_exist to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %hid_exist, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool2.not = icmp eq i8 %97, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %98 = ptrtoint ptr %hid_exist to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %hid_exist, align 1
  br label %if.end

if.end:                                           ; preds = %if.then3, %land.lhs.true.if.end_crit_edge, %halbtc8723b1ant_monitor_wifi_ctr.exit.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_busy.i31) #4
  %99 = ptrtoint ptr %wifi_busy.i31 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %wifi_busy.i31, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %under_4way.i) #4
  %100 = ptrtoint ptr %under_4way.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %under_4way.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  %101 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %bt_hs_on.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  %102 = ptrtoint ptr %wifi_connected.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %wifi_connected.i, align 1
  %103 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %btc_get.i, align 4
  %call.i33 = call zeroext i1 %104(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected.i) #4
  %105 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %btc_get.i, align 4
  %call2.i34 = call zeroext i1 %106(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %wifi_busy.i31) #4
  %107 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %btc_get.i, align 4
  %call4.i35 = call zeroext i1 %108(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on.i) #4
  %109 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %btc_get.i, align 4
  %call6.i = call zeroext i1 %110(ptr noundef %btcoexist, i8 noundef zeroext 12, ptr noundef nonnull %under_4way.i) #4
  %111 = ptrtoint ptr %wifi_connected.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %wifi_connected.i, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.not.i36 = icmp eq i8 %112, 0
  br i1 %tobool.not.i36, label %if.end.lor.lhs.false_crit_edge, label %if.then.i37

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

if.then.i37:                                      ; preds = %if.end
  %113 = ptrtoint ptr %wifi_busy.i31 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %wifi_busy.i31, align 1, !range !377
  %115 = load i8, ptr @btc8723b1ant_is_wifi_status_changed.pre_wifi_busy, align 1, !range !377
  call void @__sanitizer_cov_trace_cmp1(i8 %114, i8 %115)
  %cmp.not.i = icmp eq i8 %114, %115
  br i1 %cmp.not.i, label %if.end.i38, label %if.then11.i

if.then11.i:                                      ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %114, ptr @btc8723b1ant_is_wifi_status_changed.pre_wifi_busy, align 1
  br label %btc8723b1ant_is_wifi_status_changed.exit.thread

if.end.i38:                                       ; preds = %if.then.i37
  %116 = ptrtoint ptr %under_4way.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %under_4way.i, align 1, !range !377
  %118 = load i8, ptr @btc8723b1ant_is_wifi_status_changed.pre_under_4way, align 1, !range !377
  call void @__sanitizer_cov_trace_cmp1(i8 %117, i8 %118)
  %cmp17.not.i = icmp eq i8 %117, %118
  br i1 %cmp17.not.i, label %if.end22.i, label %if.then19.i39

if.then19.i39:                                    ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %117, ptr @btc8723b1ant_is_wifi_status_changed.pre_under_4way, align 1
  br label %btc8723b1ant_is_wifi_status_changed.exit.thread

if.end22.i:                                       ; preds = %if.end.i38
  %119 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %bt_hs_on.i, align 1, !range !377
  %121 = load i8, ptr @btc8723b1ant_is_wifi_status_changed.pre_bt_hs_on, align 1, !range !377
  call void @__sanitizer_cov_trace_cmp1(i8 %120, i8 %121)
  %cmp27.not.i = icmp eq i8 %120, %121
  br i1 %cmp27.not.i, label %if.end22.i.lor.lhs.false_crit_edge, label %if.then29.i

if.end22.i.lor.lhs.false_crit_edge:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

if.then29.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %120, ptr @btc8723b1ant_is_wifi_status_changed.pre_bt_hs_on, align 1
  br label %btc8723b1ant_is_wifi_status_changed.exit.thread

btc8723b1ant_is_wifi_status_changed.exit.thread:  ; preds = %if.then29.i, %if.then19.i39, %if.then11.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %under_4way.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy.i31) #4
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end22.i.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %under_4way.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy.i31) #4
  %122 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 8), align 4, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool5.not = icmp eq i8 %122, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.end7_crit_edge, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %btc8723b1ant_is_wifi_status_changed.exit.thread
  call fastcc void @halbtc8723b1ant_run_coexist_mechanism(ptr noundef %btcoexist)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %lor.lhs.false.if.end7_crit_edge
  %123 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 11), align 4
  %inc = add i32 %123, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 11), align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %halbtc8723b1ant_monitor_bt_enable_disable.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_sw_mechanism(ptr noundef %btcoexist, i1 noundef zeroext %low_penalty_ra) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %conv = zext i1 %low_penalty_ra to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.127, i32 noundef %conv) #4
  %frombool1.i = zext i1 %low_penalty_ra to i8
  store i8 %frombool1.i, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 18), align 2
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 17), align 1, !range !377
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %frombool1.i)
  %cmp.i = icmp eq i8 %2, %frombool1.i
  br i1 %cmp.i, label %entry.halbtc8723b1ant_low_penalty_ra.exit_crit_edge, label %if.end10.i

entry.halbtc8723b1ant_low_penalty_ra.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_low_penalty_ra.exit

if.end10.i:                                       ; preds = %entry
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i) #4
  %5 = getelementptr inbounds i8, ptr %h2c_parameter.i.i, i32 1
  %6 = call ptr @memset(ptr %5, i32 0, i32 5)
  %7 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 6, ptr %h2c_parameter.i.i, align 1
  br i1 %low_penalty_ra, label %if.then.i.i, label %if.end10.i.btc8723b1ant_set_sw_pen_tx_rate_adapt.exit.i_crit_edge

if.end10.i.btc8723b1ant_set_sw_pen_tx_rate_adapt.exit.i_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b1ant_set_sw_pen_tx_rate_adapt.exit.i

if.then.i.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %5, align 1
  %10 = or i8 %9, 1
  store i8 %10, ptr %5, align 1
  %arrayidx4.i.i = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -9, ptr %arrayidx4.i.i, align 1
  %arrayidx5.i.i = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -8, ptr %arrayidx5.i.i, align 1
  %arrayidx6.i.i = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -7, ptr %arrayidx6.i.i, align 1
  br label %btc8723b1ant_set_sw_pen_tx_rate_adapt.exit.i

btc8723b1ant_set_sw_pen_tx_rate_adapt.exit.i:     ; preds = %if.then.i.i, %if.end10.i.btc8723b1ant_set_sw_pen_tx_rate_adapt.exit.i_crit_edge
  %cond.i.i = phi ptr [ @.str.129, %if.then.i.i ], [ @.str.130, %if.end10.i.btc8723b1ant_set_sw_pen_tx_rate_adapt.exit.i_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %4, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.128, ptr noundef nonnull %cond.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %14 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %15(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i) #4
  %16 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 18), align 2, !range !377
  store i8 %16, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 17), align 1
  br label %halbtc8723b1ant_low_penalty_ra.exit

halbtc8723b1ant_low_penalty_ra.exit:              ; preds = %btc8723b1ant_set_sw_pen_tx_rate_adapt.exit.i, %entry.halbtc8723b1ant_low_penalty_ra.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %byte1, i8 noundef zeroext %byte2, i8 noundef zeroext %byte3, i8 noundef zeroext %byte4, i8 noundef zeroext %byte5) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter = alloca [5 x i8], align 1
  %ap_enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable) #4
  %2 = ptrtoint ptr %ap_enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ap_enable, align 1
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %3 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable) #4
  %5 = ptrtoint ptr %ap_enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ap_enable, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp ne i8 %6, 0
  %7 = and i8 %byte1, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %7)
  %8 = icmp eq i8 %7, 16
  %or.cond = and i1 %8, %tobool.not
  br i1 %or.cond, label %if.then5, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.136) #4
  %and7 = and i8 %byte1, -49
  %9 = or i8 %and7, 32
  %10 = and i8 %byte5, -97
  %11 = or i8 %10, 32
  br label %if.end17

if.end17:                                         ; preds = %if.then5, %entry.if.end17_crit_edge
  %real_byte1.0 = phi i8 [ %9, %if.then5 ], [ %byte1, %entry.if.end17_crit_edge ]
  %real_byte5.0 = phi i8 [ %11, %if.then5 ], [ %byte5, %entry.if.end17_crit_edge ]
  %12 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %real_byte1.0, ptr %h2c_parameter, align 1
  %arrayidx18 = getelementptr inbounds [5 x i8], ptr %h2c_parameter, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %byte2, ptr %arrayidx18, align 1
  %arrayidx19 = getelementptr inbounds [5 x i8], ptr %h2c_parameter, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %byte3, ptr %arrayidx19, align 1
  %arrayidx20 = getelementptr inbounds [5 x i8], ptr %h2c_parameter, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %byte4, ptr %arrayidx20, align 1
  %arrayidx21 = getelementptr inbounds [5 x i8], ptr %h2c_parameter, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %real_byte5.0, ptr %arrayidx21, align 1
  store i8 %real_byte1.0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 6), align 2
  store i8 %byte2, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 6, i32 1), align 1
  store i8 %byte3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 6, i32 2), align 4
  store i8 %byte4, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 6, i32 3), align 1
  store i8 %real_byte5.0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 6, i32 4), align 2
  %conv32 = zext i8 %real_byte1.0 to i32
  %conv34 = zext i8 %byte2 to i32
  %shl = shl nuw i32 %conv34, 24
  %conv36 = zext i8 %byte3 to i32
  %shl37 = shl nuw nsw i32 %conv36, 16
  %or38 = or i32 %shl37, %shl
  %conv40 = zext i8 %byte4 to i32
  %shl41 = shl nuw nsw i32 %conv40, 8
  %or42 = or i32 %or38, %shl41
  %conv44 = zext i8 %real_byte5.0 to i32
  %or45 = or i32 %or42, %conv44
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.137, i32 noundef %conv32, i32 noundef %or45) #4
  %btc_fill_h2c = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %17 = ptrtoint ptr %btc_fill_h2c to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_fill_h2c, align 4
  call void %18(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i32 noundef %val0x6c0, i32 noundef %val0x6c4) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %cond = select i1 %force_exec, ptr @.str.139, ptr @.str.140
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.138, ptr noundef nonnull %cond, i32 noundef %val0x6c0, i32 noundef %val0x6c4, i32 noundef 3) #4
  store i32 %val0x6c0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 20), align 4
  store i32 %val0x6c4, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 22), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 24), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 26), align 1
  br i1 %force_exec, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then:                                          ; preds = %entry
  %2 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %val0x6c0)
  %cmp = icmp eq i32 %2, %val0x6c0
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end18_crit_edge

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

land.lhs.true:                                    ; preds = %if.then
  %3 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %val0x6c4)
  %cmp5 = icmp eq i32 %3, %val0x6c4
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

land.lhs.true7:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %4)
  %cmp9 = icmp eq i32 %4, 16777215
  br i1 %cmp9, label %land.lhs.true11, label %land.lhs.true7.if.end18_crit_edge

land.lhs.true7.if.end18_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

land.lhs.true11:                                  ; preds = %land.lhs.true7
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 25), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp15 = icmp eq i8 %5, 3
  br i1 %cmp15, label %land.lhs.true11.cleanup_crit_edge, label %land.lhs.true11.if.end18_crit_edge

land.lhs.true11.if.end18_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true11.if.end18_crit_edge, %land.lhs.true7.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %if.then.if.end18_crit_edge, %entry.if.end18_crit_edge
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.141, i32 noundef %val0x6c0) #4
  %btc_write_4byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %8 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btc_write_4byte.i, align 4
  tail call void %9(ptr noundef %btcoexist, i32 noundef 1728, i32 noundef %val0x6c0) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.142, i32 noundef %val0x6c4) #4
  %10 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_write_4byte.i, align 4
  tail call void %11(ptr noundef %btcoexist, i32 noundef 1732, i32 noundef %val0x6c4) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.143, i32 noundef 16777215) #4
  %12 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btc_write_4byte.i, align 4
  tail call void %13(ptr noundef %btcoexist, i32 noundef 1736, i32 noundef 16777215) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.144, i32 noundef 3) #4
  %btc_write_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %14 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_write_1byte.i, align 4
  tail call void %15(ptr noundef %btcoexist, i32 noundef 1740, i32 noundef 3) #4
  %16 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 20), align 4
  store i32 %16, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 19), align 4
  %17 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 22), align 4
  store i32 %17, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 21), align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 24), align 4
  store i32 %18, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 23), align 4
  %19 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 26), align 1
  store i8 %19, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 25), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %land.lhs.true11.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b1ant_act_bt_sco_hid_only_busy(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %wifi_connected = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_connected) #4
  %0 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %wifi_connected, align 1
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %1 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %2(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected) #4
  %sco_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %3 = ptrtoint ptr %sco_exist to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sco_exist, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %. = select i1 %tobool.not, i8 6, i8 5
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %.)
  store i8 5, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1521113690) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_action_wifi_connected_bt_acl_busy(ptr noundef %btcoexist, i8 noundef zeroext %wifi_status) unnamed_addr #0 align 64 {
entry:
  %wifi_connected.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 949, i32 %0)
  %cmp = icmp ugt i32 %0, 949
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 10), align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %.sink = phi i8 [ 0, %if.else ], [ 1, %land.lhs.true.if.end_crit_edge ]
  %slave_role2 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 10
  %2 = ptrtoint ptr %slave_role2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %.sink, ptr %slave_role2, align 1
  %hid_only = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 7
  %3 = ptrtoint ptr %hid_only to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hid_only, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.else5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  %5 = ptrtoint ptr %wifi_connected.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %wifi_connected.i, align 1
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %6 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %7(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected.i) #4
  %sco_exist.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %sco_exist.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sco_exist.i, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %..i = select i1 %tobool.not.i, i8 6, i8 5
  call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %..i) #4
  store i8 5, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1521113690) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 8), align 4
  br label %cleanup

if.else5:                                         ; preds = %if.end
  %a2dp_only = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 5
  %10 = ptrtoint ptr %a2dp_only to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %a2dp_only, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.else15, label %if.then7

if.then7:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %wifi_status)
  %cmp8 = icmp eq i8 %wifi_status, 4
  br i1 %cmp8, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.then7
  tail call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 32)
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 30), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not.i = icmp eq i8 %12, 0
  br i1 %tobool8.not.i, label %if.then10.if.else.i_crit_edge, label %land.lhs.true.i

if.then10.if.else.i_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then10
  %13 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 29), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %13)
  %cmp.i = icmp ult i8 %13, 6
  br i1 %cmp.i, label %land.lhs.true.i.halbtc8723b1ant_coex_table_with_type.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

land.lhs.true.i.halbtc8723b1ant_coex_table_with_type.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_coex_table_with_type.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then10.if.else.i_crit_edge
  br label %halbtc8723b1ant_coex_table_with_type.exit

halbtc8723b1ant_coex_table_with_type.exit:        ; preds = %if.else.i, %land.lhs.true.i.halbtc8723b1ant_coex_table_with_type.exit_crit_edge
  %.sink128 = phi i32 [ 1515870810, %if.else.i ], [ -1431676326, %land.lhs.true.i.halbtc8723b1ant_coex_table_with_type.exit_crit_edge ]
  tail call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef %.sink128) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 8), align 4
  br label %cleanup

if.else12:                                        ; preds = %if.then7
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %14 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %15, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.148) #4
  %16 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 8), align 4, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i91 = icmp eq i8 %16, 0
  br i1 %tobool.not.i91, label %if.then28.i, label %if.else.i92

if.then28.i:                                      ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #6
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 8), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %15, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.149) #4
  tail call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 2) #4
  store i8 2, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 7), align 1
  store i32 0, ptr @btc8723b1ant_tdma_dur_adj_for_acl.up, align 4
  store i32 0, ptr @btc8723b1ant_tdma_dur_adj_for_acl.dn, align 4
  store i32 1, ptr @btc8723b1ant_tdma_dur_adj_for_acl.m, align 4
  store i32 3, ptr @btc8723b1ant_tdma_dur_adj_for_acl.n, align 4
  store i32 0, ptr @btc8723b1ant_tdma_dur_adj_for_acl.wait_count, align 4
  br label %btc8723b1ant_tdma_dur_adj_for_acl.exit

if.else.i92:                                      ; preds = %if.else12
  %17 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 27), align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050, i32 %18)
  %cmp31.i = icmp ugt i32 %18, 1050
  br i1 %cmp31.i, label %if.else.i92.if.then36.i_crit_edge, label %lor.lhs.false33.i

if.else.i92.if.then36.i_crit_edge:                ; preds = %if.else.i92
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then36.i

lor.lhs.false33.i:                                ; preds = %if.else.i92
  %19 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1250, i32 %19)
  %cmp34.i = icmp ugt i32 %19, 1250
  br i1 %cmp34.i, label %lor.lhs.false33.i.if.then36.i_crit_edge, label %lor.lhs.false33.i.if.end37.i_crit_edge

lor.lhs.false33.i.if.end37.i_crit_edge:           ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37.i

lor.lhs.false33.i.if.then36.i_crit_edge:          ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then36.i

if.then36.i:                                      ; preds = %lor.lhs.false33.i.if.then36.i_crit_edge, %if.else.i92.if.then36.i_crit_edge
  %inc.i = add i8 %17, 1
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then36.i, %lor.lhs.false33.i.if.end37.i_crit_edge
  %retry_count.0.i = phi i8 [ %inc.i, %if.then36.i ], [ %17, %lor.lhs.false33.i.if.end37.i_crit_edge ]
  %20 = load i32, ptr @btc8723b1ant_tdma_dur_adj_for_acl.wait_count, align 4
  %inc38.i = add i32 %20, 1
  store i32 %inc38.i, ptr @btc8723b1ant_tdma_dur_adj_for_acl.wait_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retry_count.0.i)
  %cmp40.i = icmp eq i8 %retry_count.0.i, 0
  br i1 %cmp40.i, label %if.then42.i, label %if.else52.i

if.then42.i:                                      ; preds = %if.end37.i
  %21 = load i32, ptr @btc8723b1ant_tdma_dur_adj_for_acl.up, align 4
  %inc43.i = add i32 %21, 1
  store i32 %inc43.i, ptr @btc8723b1ant_tdma_dur_adj_for_acl.up, align 4
  %22 = load i32, ptr @btc8723b1ant_tdma_dur_adj_for_acl.dn, align 4
  %dec.i = add i32 %22, -1
  %23 = tail call i32 @llvm.smax.i32(i32 %dec.i, i32 0) #4
  store i32 %23, ptr @btc8723b1ant_tdma_dur_adj_for_acl.dn, align 4
  %24 = load i32, ptr @btc8723b1ant_tdma_dur_adj_for_acl.n, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc43.i, i32 %24)
  %cmp48.not.i = icmp slt i32 %inc43.i, %24
  br i1 %cmp48.not.i, label %if.then42.i.if.end145thread-pre-split.i_crit_edge, label %if.then120.i

if.then42.i.if.end145thread-pre-split.i_crit_edge: ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end145thread-pre-split.i

if.else52.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %retry_count.0.i)
  %cmp54.i = icmp ult i8 %retry_count.0.i, 4
  br i1 %cmp54.i, label %if.then56.i, label %if.else77.i

if.then56.i:                                      ; preds = %if.else52.i
  %25 = load i32, ptr @btc8723b1ant_tdma_dur_adj_for_acl.up, align 4
  %dec57.i = add i32 %25, -1
  store i32 %dec57.i, ptr @btc8723b1ant_tdma_dur_adj_for_acl.up, align 4
  %26 = load i32, ptr @btc8723b1ant_tdma_dur_adj_for_acl.dn, align 4
  %inc58.i = add i32 %26, 1
  store i32 %inc58.i, ptr @btc8723b1ant_tdma_dur_adj_for_acl.dn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec57.i)
  %cmp59.i = icmp slt i32 %dec57.i, 1
  br i1 %cmp59.i, label %if.then61.i, label %if.then56.i.if.end62.i_crit_edge

if.then56.i.if.end62.i_crit_edge:                 ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62.i

if.then61.i:                                      ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #6
  store i32 0, ptr @btc8723b1ant_tdma_dur_adj_for_acl.up, align 4
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then61.i, %if.then56.i.if.end62.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc58.i)
  %cmp63.i = icmp eq i32 %inc58.i, 2
  br i1 %cmp63.i, label %if.then65.i, label %if.end62.i.if.end145thread-pre-split.i_crit_edge

if.end62.i.if.end145thread-pre-split.i_crit_edge: ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end145thread-pre-split.i

if.then65.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc38.i)
  %cmp66.i = icmp slt i32 %inc38.i, 3
  br i1 %cmp66.i, label %if.then65.i.if.then93.sink.split.i_crit_edge, label %if.then65.i.if.then93.i_crit_edge

if.then65.i.if.then93.i_crit_edge:                ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then93.i

if.then65.i.if.then93.sink.split.i_crit_edge:     ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then93.sink.split.i

if.else77.i:                                      ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp78.i = icmp eq i32 %20, 0
  br i1 %cmp78.i, label %if.else77.i.if.then93.sink.split.i_crit_edge, label %if.else77.i.if.then93.i_crit_edge

if.else77.i.if.then93.i_crit_edge:                ; preds = %if.else77.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then93.i

if.else77.i.if.then93.sink.split.i_crit_edge:     ; preds = %if.else77.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then93.sink.split.i

if.then93.sink.split.i:                           ; preds = %if.else77.i.if.then93.sink.split.i_crit_edge, %if.then65.i.if.then93.sink.split.i_crit_edge
  %.str.151.sink.ph.i = phi ptr [ @.str.151, %if.then65.i.if.then93.sink.split.i_crit_edge ], [ @.str.152, %if.else77.i.if.then93.sink.split.i_crit_edge ]
  %27 = load i32, ptr @btc8723b1ant_tdma_dur_adj_for_acl.m, align 4
  %inc81.i = add i32 %27, 1
  %28 = tail call i32 @llvm.smin.i32(i32 %inc81.i, i32 20) #4
  br label %if.then93.i

if.then93.i:                                      ; preds = %if.then93.sink.split.i, %if.else77.i.if.then93.i_crit_edge, %if.then65.i.if.then93.i_crit_edge
  %.sink202.i = phi i32 [ 1, %if.then65.i.if.then93.i_crit_edge ], [ 1, %if.else77.i.if.then93.i_crit_edge ], [ %28, %if.then93.sink.split.i ]
  %.str.151.sink.i = phi ptr [ @.str.151, %if.then65.i.if.then93.i_crit_edge ], [ @.str.152, %if.else77.i.if.then93.i_crit_edge ], [ %.str.151.sink.ph.i, %if.then93.sink.split.i ]
  store i32 %.sink202.i, ptr @btc8723b1ant_tdma_dur_adj_for_acl.m, align 4
  %mul.i = mul i32 %.sink202.i, 3
  store i32 %mul.i, ptr @btc8723b1ant_tdma_dur_adj_for_acl.n, align 4
  store i32 0, ptr @btc8723b1ant_tdma_dur_adj_for_acl.up, align 4
  store i32 0, ptr @btc8723b1ant_tdma_dur_adj_for_acl.dn, align 4
  store i32 0, ptr @btc8723b1ant_tdma_dur_adj_for_acl.wait_count, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %15, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.151.sink.i) #4
  %29 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 5), align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.191)
  switch i8 %29, label %if.then93.i.if.end145.i_crit_edge [
    i8 1, label %if.then93.i.if.end145thread-pre-split.sink.split.i_crit_edge
    i8 2, label %if.then105.i
    i8 9, label %if.then112.i
  ]

if.then93.i.if.end145thread-pre-split.sink.split.i_crit_edge: ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end145thread-pre-split.sink.split.i

if.then93.i.if.end145.i_crit_edge:                ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end145.i

if.then105.i:                                     ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end145thread-pre-split.sink.split.i

if.then112.i:                                     ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end145thread-pre-split.sink.split.i

if.then120.i:                                     ; preds = %if.then42.i
  store i32 0, ptr @btc8723b1ant_tdma_dur_adj_for_acl.wait_count, align 4
  store i32 3, ptr @btc8723b1ant_tdma_dur_adj_for_acl.n, align 4
  store i32 0, ptr @btc8723b1ant_tdma_dur_adj_for_acl.up, align 4
  store i32 0, ptr @btc8723b1ant_tdma_dur_adj_for_acl.dn, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %15, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.150) #4
  %31 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 5), align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.192)
  switch i8 %31, label %if.then120.i.if.end145.i_crit_edge [
    i8 11, label %if.then120.i.if.end145thread-pre-split.sink.split.i_crit_edge
    i8 9, label %if.then132.i
    i8 2, label %if.then139.i
  ]

if.then120.i.if.end145thread-pre-split.sink.split.i_crit_edge: ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end145thread-pre-split.sink.split.i

if.then120.i.if.end145.i_crit_edge:               ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end145.i

if.then132.i:                                     ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end145thread-pre-split.sink.split.i

if.then139.i:                                     ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end145thread-pre-split.sink.split.i

if.end145thread-pre-split.sink.split.i:           ; preds = %if.then139.i, %if.then132.i, %if.then120.i.if.end145thread-pre-split.sink.split.i_crit_edge, %if.then112.i, %if.then105.i, %if.then93.i.if.end145thread-pre-split.sink.split.i_crit_edge
  %.sink204.i = phi i8 [ 9, %if.then105.i ], [ 11, %if.then112.i ], [ 1, %if.then139.i ], [ 2, %if.then132.i ], [ 2, %if.then93.i.if.end145thread-pre-split.sink.split.i_crit_edge ], [ 9, %if.then120.i.if.end145thread-pre-split.sink.split.i_crit_edge ]
  tail call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %.sink204.i) #4
  store i8 %.sink204.i, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 7), align 1
  br label %if.end145thread-pre-split.i

if.end145thread-pre-split.i:                      ; preds = %if.end145thread-pre-split.sink.split.i, %if.end62.i.if.end145thread-pre-split.i_crit_edge, %if.then42.i.if.end145thread-pre-split.i_crit_edge
  %.pr.i = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 5), align 1
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.end145thread-pre-split.i, %if.then120.i.if.end145.i_crit_edge, %if.then93.i.if.end145.i_crit_edge
  %33 = phi i8 [ %.pr.i, %if.end145thread-pre-split.i ], [ %31, %if.then120.i.if.end145.i_crit_edge ], [ %29, %if.then93.i.if.end145.i_crit_edge ]
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.193)
  switch i8 %33, label %if.then165.i [
    i8 1, label %if.end145.i.btc8723b1ant_tdma_dur_adj_for_acl.exit_crit_edge
    i8 2, label %if.end145.i.btc8723b1ant_tdma_dur_adj_for_acl.exit_crit_edge131
    i8 9, label %if.end145.i.btc8723b1ant_tdma_dur_adj_for_acl.exit_crit_edge132
    i8 11, label %if.end145.i.btc8723b1ant_tdma_dur_adj_for_acl.exit_crit_edge133
  ]

if.end145.i.btc8723b1ant_tdma_dur_adj_for_acl.exit_crit_edge133: ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b1ant_tdma_dur_adj_for_acl.exit

if.end145.i.btc8723b1ant_tdma_dur_adj_for_acl.exit_crit_edge132: ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b1ant_tdma_dur_adj_for_acl.exit

if.end145.i.btc8723b1ant_tdma_dur_adj_for_acl.exit_crit_edge131: ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b1ant_tdma_dur_adj_for_acl.exit

if.end145.i.btc8723b1ant_tdma_dur_adj_for_acl.exit_crit_edge: ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b1ant_tdma_dur_adj_for_acl.exit

if.then165.i:                                     ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #6
  %35 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 7), align 1
  tail call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %35) #4
  br label %btc8723b1ant_tdma_dur_adj_for_acl.exit

btc8723b1ant_tdma_dur_adj_for_acl.exit:           ; preds = %if.then165.i, %if.end145.i.btc8723b1ant_tdma_dur_adj_for_acl.exit_crit_edge, %if.end145.i.btc8723b1ant_tdma_dur_adj_for_acl.exit_crit_edge131, %if.end145.i.btc8723b1ant_tdma_dur_adj_for_acl.exit_crit_edge132, %if.end145.i.btc8723b1ant_tdma_dur_adj_for_acl.exit_crit_edge133, %if.then28.i
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  tail call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 8), align 4
  br label %cleanup

if.else15:                                        ; preds = %if.else5
  %a2dp_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %36 = ptrtoint ptr %a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %a2dp_exist, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool16.not = icmp eq i8 %37, 0
  br i1 %tobool16.not, label %if.else43, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.else15
  %pan_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %38 = ptrtoint ptr %pan_exist to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pan_exist, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool19.not = icmp eq i8 %39, 0
  br i1 %tobool19.not, label %lor.lhs.false.thread, label %land.lhs.true18.if.then31_crit_edge

land.lhs.true18.if.then31_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

lor.lhs.false.thread:                             ; preds = %land.lhs.true18
  %hid_exist111 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %40 = ptrtoint ptr %hid_exist111 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %hid_exist111, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool21.not112 = icmp eq i8 %41, 0
  br i1 %tobool21.not112, label %if.else43.thread, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %lor.lhs.false.thread
  %42 = ptrtoint ptr %pan_exist to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pan_exist, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool29.not = icmp eq i8 %43, 0
  br i1 %tobool29.not, label %if.then41, label %land.lhs.true27.if.then31_crit_edge

land.lhs.true27.if.then31_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

if.then31:                                        ; preds = %land.lhs.true27.if.then31_crit_edge, %land.lhs.true18.if.then31_crit_edge
  tail call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 13)
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  %44 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 30), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool8.not.i93 = icmp eq i8 %44, 0
  br i1 %tobool8.not.i93, label %if.then31.if.else.i97_crit_edge, label %land.lhs.true.i95

if.then31.if.else.i97_crit_edge:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i97

land.lhs.true.i95:                                ; preds = %if.then31
  %45 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 29), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %45)
  %cmp.i94 = icmp ult i8 %45, 6
  br i1 %cmp.i94, label %land.lhs.true.i95.halbtc8723b1ant_coex_table_with_type.exit98_crit_edge, label %land.lhs.true.i95.if.else.i97_crit_edge

land.lhs.true.i95.if.else.i97_crit_edge:          ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i97

land.lhs.true.i95.halbtc8723b1ant_coex_table_with_type.exit98_crit_edge: ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_coex_table_with_type.exit98

if.else.i97:                                      ; preds = %land.lhs.true.i95.if.else.i97_crit_edge, %if.then31.if.else.i97_crit_edge
  br label %halbtc8723b1ant_coex_table_with_type.exit98

halbtc8723b1ant_coex_table_with_type.exit98:      ; preds = %if.else.i97, %land.lhs.true.i95.halbtc8723b1ant_coex_table_with_type.exit98_crit_edge
  %.sink129 = phi i32 [ 1515870810, %if.else.i97 ], [ -1431676326, %land.lhs.true.i95.halbtc8723b1ant_coex_table_with_type.exit98_crit_edge ]
  tail call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef %.sink129) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 8), align 4
  br label %cleanup

if.then41:                                        ; preds = %land.lhs.true27
  tail call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 14)
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 8), align 4
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  %46 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 30), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool8.not.i99 = icmp eq i8 %46, 0
  br i1 %tobool8.not.i99, label %if.then41.if.else.i103_crit_edge, label %land.lhs.true.i101

if.then41.if.else.i103_crit_edge:                 ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i103

land.lhs.true.i101:                               ; preds = %if.then41
  %47 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 29), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %47)
  %cmp.i100 = icmp ult i8 %47, 6
  br i1 %cmp.i100, label %if.then.i102, label %land.lhs.true.i101.if.else.i103_crit_edge

land.lhs.true.i101.if.else.i103_crit_edge:        ; preds = %land.lhs.true.i101
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i103

if.then.i102:                                     ; preds = %land.lhs.true.i101
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef -1431676326) #4
  br label %cleanup

if.else.i103:                                     ; preds = %land.lhs.true.i101.if.else.i103_crit_edge, %if.then41.if.else.i103_crit_edge
  tail call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #4
  br label %cleanup

if.else43:                                        ; preds = %if.else15
  %pan_only = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 9
  %48 = ptrtoint ptr %pan_only to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pan_only, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool44.not = icmp eq i8 %49, 0
  br i1 %tobool44.not, label %lor.lhs.false46, label %if.else43.if.then54_crit_edge

if.else43.if.then54_crit_edge:                    ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then54

if.else43.thread:                                 ; preds = %lor.lhs.false.thread
  %pan_only124 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 9
  %50 = ptrtoint ptr %pan_only124 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %pan_only124, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool44.not125 = icmp eq i8 %51, 0
  br i1 %tobool44.not125, label %if.else43.thread.if.else56_crit_edge, label %if.else43.thread.if.then54_crit_edge

if.else43.thread.if.then54_crit_edge:             ; preds = %if.else43.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then54

if.else43.thread.if.else56_crit_edge:             ; preds = %if.else43.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else56

lor.lhs.false46:                                  ; preds = %if.else43
  %hid_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %52 = ptrtoint ptr %hid_exist to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %hid_exist, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool21.not = icmp eq i8 %53, 0
  br i1 %tobool21.not, label %lor.lhs.false46.if.else56_crit_edge, label %land.lhs.true50

lor.lhs.false46.if.else56_crit_edge:              ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else56

land.lhs.true50:                                  ; preds = %lor.lhs.false46
  %pan_exist51 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %54 = ptrtoint ptr %pan_exist51 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %pan_exist51, align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool52.not = icmp eq i8 %55, 0
  br i1 %tobool52.not, label %land.lhs.true50.if.else56_crit_edge, label %land.lhs.true50.if.then54_crit_edge

land.lhs.true50.if.then54_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then54

land.lhs.true50.if.else56_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else56

if.then54:                                        ; preds = %land.lhs.true50.if.then54_crit_edge, %if.else43.thread.if.then54_crit_edge, %if.else43.if.then54_crit_edge
  tail call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 3)
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 31), align 4
  %56 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 30), align 1, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool8.not.i105 = icmp eq i8 %56, 0
  br i1 %tobool8.not.i105, label %if.then54.if.else.i109_crit_edge, label %land.lhs.true.i107

if.then54.if.else.i109_crit_edge:                 ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i109

land.lhs.true.i107:                               ; preds = %if.then54
  %57 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @glcoex_sta_8723b_1ant, i32 0, i32 29), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %57)
  %cmp.i106 = icmp ult i8 %57, 6
  br i1 %cmp.i106, label %land.lhs.true.i107.halbtc8723b1ant_coex_table_with_type.exit110_crit_edge, label %land.lhs.true.i107.if.else.i109_crit_edge

land.lhs.true.i107.if.else.i109_crit_edge:        ; preds = %land.lhs.true.i107
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i109

land.lhs.true.i107.halbtc8723b1ant_coex_table_with_type.exit110_crit_edge: ; preds = %land.lhs.true.i107
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_coex_table_with_type.exit110

if.else.i109:                                     ; preds = %land.lhs.true.i107.if.else.i109_crit_edge, %if.then54.if.else.i109_crit_edge
  br label %halbtc8723b1ant_coex_table_with_type.exit110

halbtc8723b1ant_coex_table_with_type.exit110:     ; preds = %if.else.i109, %land.lhs.true.i107.halbtc8723b1ant_coex_table_with_type.exit110_crit_edge
  %.sink130 = phi i32 [ 1515870810, %if.else.i109 ], [ -1431676326, %land.lhs.true.i107.halbtc8723b1ant_coex_table_with_type.exit110_crit_edge ]
  tail call fastcc void @halbtc8723b1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef %.sink130) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 8), align 4
  br label %cleanup

if.else56:                                        ; preds = %land.lhs.true50.if.else56_crit_edge, %lor.lhs.false46.if.else56_crit_edge, %if.else43.thread.if.else56_crit_edge
  tail call fastcc void @halbtc8723b1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 33)
  tail call fastcc void @halbtc8723b1ant_coex_table_with_type(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 4)
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @glcoex_dm_8723b_1ant, i32 0, i32 8), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else56, %halbtc8723b1ant_coex_table_with_type.exit110, %if.else.i103, %if.then.i102, %halbtc8723b1ant_coex_table_with_type.exit98, %btc8723b1ant_tdma_dur_adj_for_acl.exit, %halbtc8723b1ant_coex_table_with_type.exit, %if.then4
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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 181)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 181)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !259, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !295, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !333, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !359, !361, !363, !365}
!llvm.module.flags = !{!367, !368, !369, !370, !371, !372, !373, !374}
!llvm.ident = !{!375}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2366, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2439, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2466, i32 14}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2469, i32 15}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2470, i32 15}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2473, i32 15}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2477, i32 16}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2478, i32 6}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2482, i32 16}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2483, i32 6}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2484, i32 40}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2484, i32 48}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2489, i32 16}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2490, i32 6}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2498, i32 16}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2499, i32 6}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2502, i32 16}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2503, i32 6}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2508, i32 16}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2509, i32 6}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2514, i32 16}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2515, i32 6}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2524, i32 16}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2525, i32 6}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2525, i32 38}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2525, i32 45}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2526, i32 41}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2527, i32 40}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2527, i32 49}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2528, i32 23}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2530, i32 8}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2530, i32 19}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2534, i32 16}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2535, i32 6}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2542, i32 16}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2543, i32 6}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2544, i32 34}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2545, i32 43}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2548, i32 9}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2551, i32 10}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2551, i32 29}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2554, i32 16}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2555, i32 6}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2561, i32 16}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2562, i32 6}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2563, i32 29}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2563, i32 44}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2567, i32 18}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2573, i32 16}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2574, i32 6}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2575, i32 30}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2575, i32 41}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2576, i32 30}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2576, i32 41}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2583, i32 17}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2584, i32 7}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2586, i32 17}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2587, i32 7}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2589, i32 17}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2590, i32 7}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2595, i32 17}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2596, i32 7}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2600, i32 7}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2603, i32 17}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2604, i32 7}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2607, i32 17}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2608, i32 7}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2611, i32 7}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2615, i32 16}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2616, i32 6}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2620, i32 6}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2622, i32 16}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2623, i32 6}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2632, i32 6}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2638, i32 16}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2639, i32 6}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2646, i32 6}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2653, i32 6}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2660, i32 16}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2661, i32 6}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2667, i32 16}
!162 = !{ptr @.str.81, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2668, i32 6}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2673, i32 6}
!166 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2692, i32 6}
!168 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2699, i32 6}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2703, i32 6}
!172 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2706, i32 6}
!174 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2721, i32 3}
!176 = !{ptr @.str.88, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2732, i32 3}
!178 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2750, i32 3}
!180 = !{ptr @.str.90, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2754, i32 3}
!182 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2776, i32 3}
!184 = !{ptr @.str.92, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2786, i32 3}
!186 = !{ptr @.str.93, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2791, i32 3}
!188 = !{ptr @.str.94, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2869, i32 3}
!190 = !{ptr @.str.95, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2874, i32 3}
!192 = !{ptr @.str.96, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2930, i32 3}
!194 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2961, i32 3}
!196 = !{ptr @.str.98, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2989, i32 2}
!198 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3017, i32 4}
!200 = !{ptr @.str.100, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3021, i32 4}
!202 = !{ptr @.str.101, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3034, i32 4}
!204 = !{ptr @.str.102, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3039, i32 3}
!206 = !{ptr @.str.103, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3068, i32 3}
!208 = !{ptr @.str.104, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3090, i32 2}
!210 = !{ptr @.str.105, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3098, i32 4}
!212 = !{ptr @.str.106, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3101, i32 4}
!214 = !{ptr @.str.107, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3145, i32 4}
!216 = !{ptr @.str.108, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3161, i32 4}
!218 = !{ptr @.str.109, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3176, i32 5}
!220 = !{ptr @.str.110, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3283, i32 3}
!222 = !{ptr @.str.111, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3288, i32 3}
!224 = !{ptr @.str.112, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3293, i32 3}
!226 = !{ptr @.str.113, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3300, i32 3}
!228 = !{ptr @.str.114, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3304, i32 3}
!230 = !{ptr @.str.115, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3325, i32 2}
!232 = !{ptr @.str.116, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3329, i32 3}
!234 = !{ptr @.str.117, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3333, i32 3}
!236 = !{ptr @.str.118, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3350, i32 3}
!238 = !{ptr @.str.119, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3360, i32 2}
!240 = !{ptr @.str.120, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3382, i32 2}
!242 = !{ptr @.str.121, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3385, i32 3}
!244 = !{ptr @.str.122, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3404, i32 3}
!246 = !{ptr @.str.123, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3417, i32 2}
!248 = !{ptr @.str.124, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 3429, i32 2}
!250 = !{ptr @.str.125, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2317, i32 2}
!252 = !{ptr @.str.126, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2350, i32 2}
!254 = !{ptr @.str.127, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 765, i32 2}
!256 = !{ptr @.str.128, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 471, i32 2}
!258 = !{ptr @.str.129, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.130, !257, !"<string literal>", i1 false, i1 false}
!260 = distinct !{null, !261, !"glcoex_ver_date_8723b_1ant", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 32, i32 12}
!262 = distinct !{null, !263, !"glcoex_ver_8723b_1ant", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 33, i32 12}
!264 = distinct !{null, !265, !"coex_dm", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 22, i32 35}
!266 = !{ptr @glcoex_dm_8723b_1ant, !267, !"glcoex_dm_8723b_1ant", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 21, i32 34}
!268 = distinct !{null, !269, !"coex_sta", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 24, i32 36}
!270 = !{ptr @glcoex_sta_8723b_1ant, !271, !"glcoex_sta_8723b_1ant", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 23, i32 35}
!272 = !{ptr @.str.131, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 27, i32 2}
!274 = !{ptr @.str.132, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 28, i32 2}
!276 = !{ptr @.str.133, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 29, i32 2}
!278 = distinct !{null, !279, !"glbt_info_src_8723b_1ant", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 26, i32 26}
!280 = !{ptr @halbtc8723b1ant_monitor_bt_ctr.num_of_bt_counter_chk, !281, !"num_of_bt_counter_chk", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 208, i32 13}
!282 = !{ptr @.str.134, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 864, i32 6}
!284 = !{ptr @.str.135, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 870, i32 6}
!286 = !{ptr @halbtc8723b1ant_ps_tdma.pre_wifi_busy, !287, !"pre_wifi_busy", i1 false, i1 false}
!287 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 1038, i32 14}
!288 = !{ptr @.str.136, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 685, i32 4}
!290 = !{ptr @.str.137, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 707, i32 2}
!292 = !{ptr @.str.138, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 523, i32 2}
!294 = !{ptr @.str.139, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @.str.140, !293, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @.str.141, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 499, i32 2}
!298 = !{ptr @.str.142, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 503, i32 2}
!300 = !{ptr @.str.143, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 507, i32 2}
!302 = !{ptr @.str.144, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 511, i32 2}
!304 = !{ptr @.str.145, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2032, i32 2}
!306 = !{ptr @.str.146, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2039, i32 3}
!308 = !{ptr @.str.147, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2054, i32 3}
!310 = !{ptr @btc8723b1ant_tdma_dur_adj_for_acl.up, !311, !"up", i1 false, i1 false}
!311 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 1422, i32 13}
!312 = !{ptr @btc8723b1ant_tdma_dur_adj_for_acl.dn, !313, !"dn", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 1422, i32 17}
!314 = !{ptr @btc8723b1ant_tdma_dur_adj_for_acl.m, !315, !"m", i1 false, i1 false}
!315 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 1422, i32 21}
!316 = !{ptr @btc8723b1ant_tdma_dur_adj_for_acl.n, !317, !"n", i1 false, i1 false}
!317 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 1422, i32 24}
!318 = !{ptr @btc8723b1ant_tdma_dur_adj_for_acl.wait_count, !319, !"wait_count", i1 false, i1 false}
!319 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 1422, i32 27}
!320 = !{ptr @.str.148, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 1429, i32 2}
!322 = !{ptr @.str.149, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 1454, i32 3}
!324 = !{ptr @.str.150, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 1493, i32 5}
!326 = !{ptr @.str.151, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 1526, i32 5}
!328 = !{ptr @.str.152, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 1551, i32 4}
!330 = !{ptr @.str.153, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 651, i32 2}
!332 = !{ptr @.str.154, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @.str.155, !331, !"<string literal>", i1 false, i1 false}
!334 = distinct !{null, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 657, i32 3}
!336 = !{ptr @.str.157, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 639, i32 2}
!338 = !{ptr @.str.158, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2155, i32 2}
!340 = !{ptr @.str.159, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2159, i32 3}
!342 = !{ptr @.str.160, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2165, i32 3}
!344 = !{ptr @.str.161, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2171, i32 3}
!346 = !{ptr @.str.162, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 2279, i32 3}
!348 = !{ptr @.str.163, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 734, i32 2}
!350 = !{ptr @.str.164, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 741, i32 3}
!352 = !{ptr @.str.165, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 747, i32 4}
!354 = !{ptr @halbtc8723b1ant_monitor_bt_enable_disable.bt_disable_cnt, !355, !"bt_disable_cnt", i1 false, i1 false}
!355 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 1672, i32 13}
!356 = !{ptr @.str.166, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 1693, i32 3}
!358 = !{ptr @.str.167, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter, !360, !"cck_lock_counter", i1 false, i1 false}
!360 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 258, i32 12}
!361 = !{ptr @btc8723b1ant_is_wifi_status_changed.pre_wifi_busy, !362, !"pre_wifi_busy", i1 false, i1 false}
!362 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 346, i32 14}
!363 = !{ptr @btc8723b1ant_is_wifi_status_changed.pre_under_4way, !364, !"pre_under_4way", i1 false, i1 false}
!364 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 347, i32 14}
!365 = !{ptr @btc8723b1ant_is_wifi_status_changed.pre_bt_hs_on, !366, !"pre_bt_hs_on", i1 false, i1 false}
!366 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b1ant.c", i32 347, i32 30}
!367 = !{i32 1, !"wchar_size", i32 2}
!368 = !{i32 1, !"min_enum_size", i32 4}
!369 = !{i32 8, !"branch-target-enforcement", i32 0}
!370 = !{i32 8, !"sign-return-address", i32 0}
!371 = !{i32 8, !"sign-return-address-all", i32 0}
!372 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!373 = !{i32 7, !"uwtable", i32 1}
!374 = !{i32 7, !"frame-pointer", i32 2}
!375 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!376 = !{!"auto-init"}
!377 = !{i8 0, i8 2}
!378 = distinct !{!378, !379}
!379 = !{!"llvm.loop.peeled.count", i32 2}
