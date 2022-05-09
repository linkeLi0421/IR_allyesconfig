; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.coex_dm_8821a_1ant = type { i8, i8, i8, i8, [5 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, i16, i8, i8, i8, i8, [3 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i32, i8 }
%struct.coex_sta_8821a_1ant = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, [4 x i8], i8, [3 x [10 x i8]], [3 x i32], i8, i8, i8, i8 }
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
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\0A ============[Under Manual Control]============\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\0A ==========================================\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\0A ============[Coex is STOPPED]============\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0A %-35s = %d/ %d/ %d\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Ant PG Num/ Ant Mech/ Ant Pos:\00", [33 x i8] zeroinitializer }, align 32
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
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0A %-35s = %d/ %d\00", [47 x i8] zeroinitializer }, align 32
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
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\0A %-35s = [%s/ %d/ %d] \00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BT [status/ rssi/ retryCnt]\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"inquiry/page scan\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"non-connected idle\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"connected-idle\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"busy\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0A %-35s = %d / %d / %d / %d\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCO/HID/PAN/A2DP\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\0A %-35s = %s\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BT Info A2DP rate\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Basic rate\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EDR rate\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\0A %-35s = %7ph(%d)\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0A %-35s = %s/%s, (0x%x/0x%x)\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PS state, IPS/LPS, (lps/rpwm)\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IPS ON\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IPS OFF\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LPS ON\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LPS OFF\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0A %-35s\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"============[Sw mechanism]============\00", [57 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\0A %-35s = %d\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SM[LowPenaltyRA]\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0A %-35s = %s/ %s/ %d \00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DelBA/ BtCtrlAgg/ AggSize\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0A %-35s = 0x%x \00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Rate Mask\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"============[Fw mechanism]============\00", [57 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\0A %-35s = %5ph case-%d (auto:%d)\00", [63 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PS TDMA\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Latest error condition(should be 0)\00", [60 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0A %-35s = %d \00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IgnWlanAct\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"============[Hw setting]============\00", [59 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0A %-35s = 0x%x/0x%x/0x%x/0x%x\00", [34 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"backup ARFR1/ARFR2/RL/AMaxTime\00", [33 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"0x430/0x434/0x42a/0x456\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0A %-35s = 0x%x/ 0x%x\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0x778/ 0xc58[29:25]\00", [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\0A %-35s = 0x%x\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0x8db[6:5]\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0A %-35s = 0x%x/ 0x%x/ 0x%x\00", [37 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"0xcb4[29:28]/0xcb4[7:0]/0x974[9:8]\00", [61 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"0x40/0x4c[24:23]/0x64[0]\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x550(bcn ctrl)/0x522\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0xc50(dig)\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OFDM-FA/ CCK-FA\00", [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\0A %-35s = 0x%x/ 0x%x/ 0x%x/ 0x%x\00", [63 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"0x6c0/0x6c4/0x6c8/0x6cc(coexTable)\00", [61 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x770(high-pri rx/tx)\00", [42 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"0x774(low-pri rx/tx)\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[BTCoex], RunCoexistMechanism(), return for 5G <===\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[BTCoex], IPS ENTER notify\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[BTCoex], IPS LEAVE notify\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[BTCoex], LPS ENABLE notify\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], LPS DISABLE notify\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[BTCoex], SCAN START notify\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], SCAN FINISH notify\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], CONNECT START notify\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], CONNECT FINISH notify\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], MEDIA connect notify\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[BTCoex], MEDIA disconnect notify\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], FW write 0x66 = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[BTCoex], specific Packet ARP notify\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[BTCoex], specific Packet DHCP or EAPOL notify\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[BTCoex], specific Packet [Type = %d] notify\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], ARP Packet Count = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], special Packet(%d) notify\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[BTCoex], Bt info[%d], length = %d, hex data = [\00", [47 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0x%02x]\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0x%02x, \00", [23 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[BTCoex], Switch BT TRx Mask since BT RF REG 0x3C != 0x15\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[BTCoex], BT ext info bit1 check, send wifi BW&Chnl to BT!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"[BTCoex], BT ext info bit3 check, set BT NOT to ignore Wlan active!!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[BTCoex], BtInfoNotify(), BT Non-Connected idle!!!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[BTCoex], BtInfoNotify(), BT Connected-idle!!!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], BtInfoNotify(), BT SCO busy!!!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], BtInfoNotify(), BT ACL busy!!!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[BTCoex], BtInfoNotify(), BT Non-Defined state!!!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[BTCoex], Halt notify\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[BTCoex], Pnp notify\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[BTCoex], Pnp notify to SLEEP\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], Pnp notify to WAKE UP\0A\00", [63 x i8] zeroinitializer }, align 32
@ex_btc8821a1ant_periodical.dis_ver_info_cnt = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str.115 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"[BTCoex], ==========================Periodical===========================\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"[BTCoex], ****************************************************************\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[BTCoex], Ant PG Num/ Ant Mech/ Ant Pos = %d/ %d/ %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[BTCoex], BT stack/ hci ext ver = %s / %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[BTCoex], CoexVer/ FwVer/ PatchVer = %d_%x/ 0x%x/ 0x%x(%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], 1Ant Init HW Config!!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[BTCoex], SM[LpRA] = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], set WiFi Low-Penalty Retry: %s\00", [55 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ON!!\00", [27 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OFF!!\00", [26 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[BTCoex], Query Bt Info, FW write 0x61 = 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@glcoex_dm_8821a_1ant = internal global { %struct.coex_dm_8821a_1ant, [32 x i8] } zeroinitializer, align 32
@glcoex_sta_8821a_1ant = internal global { %struct.coex_sta_8821a_1ant, [44 x i8] } zeroinitializer, align 32
@.str.126 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BT Info[wifi fw]\00", [47 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BT Info[bt rsp]\00", [16 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"BT Info[bt auto report]\00", [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[BTCoex], ********** TDMA(on, %d) **********\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[BTCoex], ********** TDMA(off, %d) **********\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[BTCoex], FW for 1Ant AP mode\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], PS-TDMA H2C cmd =0x%x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"[BTCoex], %s write Coex Table 0x6c0 = 0x%x, 0x6c4 = 0x%x, 0x6c8 = 0x%x, 0x6cc = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"force to\00", [23 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.136 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], set coex table, set 0x6c0 = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], set coex table, set 0x6c4 = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], set coex table, set 0x6c8 = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], set coex table, set 0x6cc = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[BTCoex], CoexForWifiConnect()===>\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"[BTCoex], CoexForWifiConnect(), return for wifi is under 4way<===\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"[BTCoex], CoexForWifiConnect(), return for wifi is under scan<===\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[BTCoex], BT Rssi state switch to High\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], BT Rssi state stay at Low\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], BT Rssi state switch to Low\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[BTCoex], BT Rssi state stay at High\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], %s turn Ignore WlanAct %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[BTCoex], pre_ignore_wlan_act = %d, cur_ignore_wlan_act = %d!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[BTCoex], set FW for BT Ignore Wlan_Act, FW write 0x63 = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], RunCoexistMechanism()===>\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[BTCoex], RunCoexistMechanism(), return for Manual CTRL <===\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[BTCoex], RunCoexistMechanism(), return for Stop Coex DM <===\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], wifi is under IPS !!!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], wifi is non connected-idle !!!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], wifi RSSI state switch to High\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], wifi RSSI state stay at Low\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], wifi RSSI state switch to Low\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[BTCoex], wifi RSSI state stay at High\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[BTCoex], Action algorithm = SCO\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[BTCoex], Action algorithm = HID\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[BTCoex], Action algorithm = A2DP\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[BTCoex], Action algorithm = A2DP+PAN(HS)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], Action algorithm = PAN(EDR)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[BTCoex], Action algorithm = HS mode\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], Action algorithm = PAN+A2DP\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[BTCoex], Action algorithm = PAN(EDR)+HID\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[BTCoex], Action algorithm = HID+A2DP+PAN\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], Action algorithm = HID+A2DP\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[BTCoex], Action algorithm = coexist All Off!!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], No BT link exists!!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], BT Profile = SCO only\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], BT Profile = HID only\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[BTCoex], BT Profile = A2DP only\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], BT Profile = PAN(HS) only\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[BTCoex], BT Profile = PAN(EDR) only\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[BTCoex], BT Profile = SCO + HID\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[BTCoex], BT Profile = SCO + A2DP ==> SCO\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[BTCoex], BT Profile = SCO + PAN(HS)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], BT Profile = SCO + PAN(EDR)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[BTCoex], BT Profile = HID + A2DP\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[BTCoex], BT Profile = HID + PAN(HS)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], BT Profile = HID + PAN(EDR)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], BT Profile = A2DP + PAN(HS)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[BTCoex], BT Profile = A2DP + PAN(EDR)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[BTCoex], BT Profile = SCO + HID + A2DP ==> HID\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], BT Profile = SCO + HID + PAN(HS)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], BT Profile = SCO + HID + PAN(EDR)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], BT Profile = SCO + A2DP + PAN(HS)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[BTCoex], BT Profile = SCO + A2DP + PAN(EDR) ==> HID\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], BT Profile = HID + A2DP + PAN(HS)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[BTCoex], BT Profile = HID + A2DP + PAN(EDR)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[BTCoex], Error!!! BT Profile = SCO + HID + A2DP + PAN(HS)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"[BTCoex], BT Profile = SCO + HID + A2DP + PAN(EDR)==>PAN(EDR)+HID\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[BTCoex], Wifi non connected-idle + BT non connected-idle!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[BTCoex], Wifi connected + BT non connected-idle!!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"[BTCoex], Wifi non connected-idle + BT connected-idle!!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[BTCoex], Wifi connected + BT connected-idle!!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[BTCoex], Wifi non connected-idle + BT Busy!!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[BTCoex], Wifi Connected-Busy + BT Busy!!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[BTCoex], Wifi Connected-Idle + BT Busy!!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], %s set lps/rpwm = 0x%x/0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[BTCoex], LPS-RxBeaconMode = 0x%x, LPS-RPWM = 0x%x!!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[BTCoex], LPS-RPWM_Last = 0x%x, LPS-RPWM_Now = 0x%x!!\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.212 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.213 = internal global [40 x i64] [i64 38, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 18, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 40, i64 41, i64 42, i64 43]
@__sancov_gen_cov_switch_values.214 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.215 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.216 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.217 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.218 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.219 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.220 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.221 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.222 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.223 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.224 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.225 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.226 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.227 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.228 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.229 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.230 = internal global [5 x i64] [i64 3, i64 4, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.231 = internal global [12 x i64] [i64 10, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2097, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2123, i32 14 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2126, i32 15 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2127, i32 15 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2130, i32 15 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2134, i32 16 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2135, i32 6 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2140, i32 16 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2140, i32 38 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2141, i32 40 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2141, i32 48 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2147, i32 16 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2148, i32 6 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2160, i32 16 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2161, i32 6 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2164, i32 16 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2165, i32 6 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2170, i32 16 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2170, i32 37 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2176, i32 16 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2176, i32 42 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2187, i32 16 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2187, i32 43 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2188, i32 23 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2188, i32 30 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2189, i32 41 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2190, i32 40 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2190, i32 49 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2191, i32 22 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2193, i32 6 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2193, i32 17 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2194, i32 16 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2195, i32 6 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2196, i32 34 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2197, i32 42 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2200, i32 6 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2203, i32 6 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2203, i32 25 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2206, i32 16 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2206, i32 48 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2214, i32 16 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2215, i32 6 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2217, i32 6 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2217, i32 21 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2221, i32 18 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2227, i32 16 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2228, i32 6 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2229, i32 30 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2229, i32 41 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2230, i32 30 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2230, i32 41 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2237, i32 17 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2238, i32 7 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2240, i32 17 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2240, i32 34 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2243, i32 17 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2244, i32 7 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2248, i32 17 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2248, i32 37 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2253, i32 7 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2256, i32 17 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2257, i32 7 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2263, i32 7 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2266, i32 17 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2266, i32 35 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2271, i32 28 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2273, i32 16 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2274, i32 6 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2285, i32 6 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2290, i32 16 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2290, i32 41 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2294, i32 16 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2294, i32 35 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2299, i32 16 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2300, i32 6 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2309, i32 6 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2315, i32 41 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2319, i32 35 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2325, i32 41 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2332, i32 16 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2333, i32 6 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2336, i32 37 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2338, i32 37 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2354, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2361, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2371, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2389, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2393, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2421, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2428, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2506, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2511, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2576, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2579, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2603, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2640, i32 4 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2643, i32 4 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2648, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2679, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2689, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2716, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2724, i32 4 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2727, i32 4 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2750, i32 4 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2760, i32 4 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2776, i32 5 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2828, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2833, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2838, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2844, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2848, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2869, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2904, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2908, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2923, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant [17 x i8] c"dis_ver_info_cnt\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2935, i32 12 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2940, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2945, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2947, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2952, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2959, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2041, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 912, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 663, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 400, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant [21 x i8] c"glcoex_dm_8821a_1ant\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 21, i32 34 }
@___asan_gen_.616 = private unnamed_addr constant [22 x i8] c"glcoex_sta_8821a_1ant\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 23, i32 35 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 29, i32 4 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 30, i32 4 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 31, i32 4 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1013, i32 4 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1017, i32 4 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 834, i32 4 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 856, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 714, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 691, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 695, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 699, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 703, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1746, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1753, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1767, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 58, i32 5 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 62, i32 5 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 68, i32 5 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 72, i32 5 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 801, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 807, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 789, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1908, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1912, i32 3 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1918, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1924, i32 3 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 2002, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 148, i32 5 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 152, i32 5 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 158, i32 5 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 162, i32 5 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1837, i32 4 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1842, i32 4 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1847, i32 4 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1852, i32 4 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1857, i32 4 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1862, i32 4 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1867, i32 4 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1872, i32 4 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1877, i32 4 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1882, i32 4 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1887, i32 4 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 474, i32 3 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 490, i32 4 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 495, i32 5 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 499, i32 5 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 504, i32 6 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 509, i32 6 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 519, i32 5 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 523, i32 5 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 528, i32 6 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 533, i32 6 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 542, i32 5 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 548, i32 6 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 553, i32 6 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 561, i32 6 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 566, i32 6 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 577, i32 5 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 583, i32 6 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 588, i32 6 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 596, i32 6 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 601, i32 6 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 612, i32 6 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 617, i32 6 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 630, i32 6 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 635, i32 6 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1257, i32 3 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1265, i32 3 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1273, i32 3 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1281, i32 3 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1289, i32 3 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1296, i32 4 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 1299, i32 4 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 881, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 888, i32 3 }
@___asan_gen_.856 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.857 = private constant [68 x i8] c"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c\00", align 1
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 894, i32 4 }
@llvm.compiler.used = appending global [209 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @ex_btc8821a1ant_periodical.dis_ver_info_cnt, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @glcoex_dm_8821a_1ant, ptr @glcoex_sta_8821a_1ant, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211], section "llvm.metadata"
@0 = internal global [209 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ex_btc8821a1ant_periodical.dis_ver_info_cnt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glcoex_dm_8821a_1ant to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glcoex_sta_8821a_1ant to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a1ant_init_hwconfig(ptr noundef %btcoexist, i1 noundef zeroext %wifionly) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @btc8821a1ant_init_hw_config(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext %wifionly)
  %auto_report_1ant = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 7
  %0 = ptrtoint ptr %auto_report_1ant to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %auto_report_1ant, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_init_hw_config(ptr noundef %btcoexist, i1 noundef zeroext %back_up, i1 noundef zeroext %wifi_only) unnamed_addr #0 align 64 {
entry:
  %wifi_under_5g = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_under_5g) #3
  %2 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %wifi_under_5g, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.120) #3
  br i1 %wifi_only, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %back_up, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %btc_read_4byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %3 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_read_4byte, align 4
  %call = tail call i32 %4(ptr noundef %btcoexist, i32 noundef 1072) #3
  store i32 %call, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 25), align 4
  %5 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_read_4byte, align 4
  %call5 = tail call i32 %6(ptr noundef %btcoexist, i32 noundef 1076) #3
  store i32 %call5, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 26), align 4
  %btc_read_2byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 20
  %7 = ptrtoint ptr %btc_read_2byte to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %btc_read_2byte, align 4
  %call6 = tail call zeroext i16 %8(ptr noundef %btcoexist, i32 noundef 1066) #3
  store i16 %call6, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 27), align 4
  %btc_read_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 17
  %9 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btc_read_1byte, align 4
  %call7 = tail call zeroext i8 %10(ptr noundef %btcoexist, i32 noundef 1110) #3
  store i8 %call7, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 28), align 2
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %btc_read_1byte9 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 17
  %11 = ptrtoint ptr %btc_read_1byte9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %btc_read_1byte9, align 4
  %call10 = tail call zeroext i8 %12(ptr noundef %btcoexist, i32 noundef 1936) #3
  %13 = and i8 %call10, -64
  %14 = or i8 %13, 5
  %btc_write_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %15 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_write_1byte, align 4
  %conv14 = zext i8 %14 to i32
  tail call void %16(ptr noundef %btcoexist, i32 noundef 1936, i32 noundef %conv14) #3
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %17 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_get, align 4
  %call15 = call zeroext i1 %18(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef nonnull %wifi_under_5g) #3
  %19 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %wifi_under_5g, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool16.not = icmp eq i8 %20, 0
  %. = select i1 %tobool16.not, i8 2, i8 1
  call fastcc void @btc8821a1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext %., i1 noundef zeroext true, i1 noundef zeroext false)
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 1431655765, i32 noundef 1431655765) #3
  %21 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %btc_write_1byte, align 4
  call void %22(ptr noundef %btcoexist, i32 noundef 1902, i32 noundef 12) #3
  %23 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %btc_write_1byte, align 4
  call void %24(ptr noundef %btcoexist, i32 noundef 1912, i32 noundef 3) #3
  %btc_write_1byte_bitmask = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %25 = ptrtoint ptr %btc_write_1byte_bitmask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %btc_write_1byte_bitmask, align 4
  call void %26(ptr noundef %btcoexist, i32 noundef 64, i32 noundef 32, i8 noundef zeroext 1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_under_5g) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a1ant_init_coex_dm(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i = alloca [1 x i8], align 1
  %h2c_parameter.i.i.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str) #3
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %2 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %stop_coex_dm, align 1
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %4, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.121, i32 noundef 0) #3
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i.i.i = icmp eq i8 %5, 0
  br i1 %cmp.i.i.i, label %entry.btc8821a1ant_init_coex_dm.exit_crit_edge, label %if.end10.i.i.i

entry.btc8821a1ant_init_coex_dm.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_init_coex_dm.exit

if.end10.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i) #3
  %8 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i.i, i32 1
  %9 = call ptr @memset(ptr %8, i32 0, i32 5)
  %10 = ptrtoint ptr %h2c_parameter.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 6, ptr %h2c_parameter.i.i.i.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.124) #3
  %btc_fill_h2c.i.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %11 = ptrtoint ptr %btc_fill_h2c.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %btc_fill_h2c.i.i.i.i, align 4
  call void %12(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i) #3
  %13 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4, !range !443
  store i8 %13, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1
  br label %btc8821a1ant_init_coex_dm.exit

btc8821a1ant_init_coex_dm.exit:                   ; preds = %if.end10.i.i.i, %entry.btc8821a1ant_init_coex_dm.exit_crit_edge
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 1431655765, i32 noundef 1431655765) #3
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 17), align 1
  %16 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %h2c_parameter.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %15, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.125, i32 noundef 1) #3
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %17 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %18(ptr noundef %btcoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_init_coex_dm(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.121, i32 noundef 0) #3
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp.i.i = icmp eq i8 %2, 0
  br i1 %cmp.i.i, label %entry.btc8821a1ant_sw_mechanism.exit_crit_edge, label %if.end10.i.i

entry.btc8821a1ant_sw_mechanism.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_sw_mechanism.exit

if.end10.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i) #3
  %5 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i, i32 1
  %6 = call ptr @memset(ptr %5, i32 0, i32 5)
  %7 = ptrtoint ptr %h2c_parameter.i.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 6, ptr %h2c_parameter.i.i.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %4, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.124) #3
  %btc_fill_h2c.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %8 = ptrtoint ptr %btc_fill_h2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btc_fill_h2c.i.i.i, align 4
  call void %9(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i) #3
  %10 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4, !range !443
  store i8 %10, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1
  br label %btc8821a1ant_sw_mechanism.exit

btc8821a1ant_sw_mechanism.exit:                   ; preds = %if.end10.i.i, %entry.btc8821a1ant_sw_mechanism.exit_crit_edge
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 1431655765, i32 noundef 1431655765) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_query_bt_info(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 17), align 1
  %2 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %h2c_parameter, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.125, i32 noundef 1) #3
  %btc_fill_h2c = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %3 = ptrtoint ptr %btc_fill_h2c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_fill_h2c, align 4
  call void %4(ptr noundef %btcoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %h2c_parameter) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a1ant_display_coex_info(ptr noundef %btcoexist, ptr noundef %m) local_unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %stack_info2 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %roam) #3
  %0 = ptrtoint ptr %roam to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %roam, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scan) #3
  %1 = ptrtoint ptr %scan to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %scan, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #3
  %2 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %link, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_under_5g) #3
  %3 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %wifi_under_5g, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on) #3
  %4 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bt_hs_on, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_busy) #3
  %5 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %wifi_busy, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi) #3
  %6 = ptrtoint ptr %wifi_rssi to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wifi_rssi, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bt_hs_rssi) #3
  %7 = ptrtoint ptr %bt_hs_rssi to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bt_hs_rssi, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #3
  %8 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !444
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_traffic_dir) #3
  %9 = ptrtoint ptr %wifi_traffic_dir to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %wifi_traffic_dir, align 4, !annotation !444
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_dot11_chnl) #3
  %10 = ptrtoint ptr %wifi_dot11_chnl to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %wifi_dot11_chnl, align 1, !annotation !444
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_hs_chnl) #3
  %11 = ptrtoint ptr %wifi_hs_chnl to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %wifi_hs_chnl, align 1, !annotation !444
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_ver) #3
  %12 = ptrtoint ptr %fw_ver to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %fw_ver, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bt_patch_ver) #3
  %13 = ptrtoint ptr %bt_patch_ver to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %bt_patch_ver, align 4
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.1) #3
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %14 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %manual_control, align 2, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.2) #3
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %16 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %stop_coex_dm, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool4.not = icmp eq i8 %17, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.4) #3
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.3) #3
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %pg_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %pg_ant_num to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pg_ant_num, align 1
  %conv = zext i8 %19 to i32
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %btdm_ant_num, align 1
  %conv7 = zext i8 %21 to i32
  %btdm_ant_pos = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %btdm_ant_pos to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %btdm_ant_pos, align 1
  %conv8 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv8) #3
  %24 = ptrtoint ptr %stack_info2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %stack_info2, align 2, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool9.not = icmp eq i8 %25, 0
  %cond = select i1 %tobool9.not, ptr @.str.10, ptr @.str.9
  %hci_version = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %hci_version to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %hci_version, align 2
  %conv11 = zext i16 %27 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond, i32 noundef %conv11) #3
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %28 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %29(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %bt_patch_ver) #3
  %30 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_get, align 4
  %call13 = call zeroext i1 %31(ptr noundef %btcoexist, i8 noundef zeroext 26, ptr noundef nonnull %fw_ver) #3
  %32 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fw_ver, align 4
  %34 = ptrtoint ptr %bt_patch_ver to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bt_patch_ver, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 20130816, i32 noundef 65, i32 noundef %33, i32 noundef %35, i32 noundef %35) #3
  %36 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %btc_get, align 4
  %call15 = call zeroext i1 %37(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on) #3
  %38 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %btc_get, align 4
  %call17 = call zeroext i1 %39(ptr noundef %btcoexist, i8 noundef zeroext 37, ptr noundef nonnull %wifi_dot11_chnl) #3
  %40 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %btc_get, align 4
  %call19 = call zeroext i1 %41(ptr noundef %btcoexist, i8 noundef zeroext 39, ptr noundef nonnull %wifi_hs_chnl) #3
  %42 = ptrtoint ptr %wifi_dot11_chnl to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %wifi_dot11_chnl, align 1
  %conv20 = zext i8 %43 to i32
  %44 = ptrtoint ptr %wifi_hs_chnl to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %wifi_hs_chnl, align 1
  %conv21 = zext i8 %45 to i32
  %46 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bt_hs_on, align 1, !range !443
  %48 = zext i8 %47 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %conv20, i32 noundef %conv21, i32 noundef %48) #3
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 32)) #3
  %49 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %btc_get, align 4
  %call25 = call zeroext i1 %50(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi) #3
  %51 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %btc_get, align 4
  %call27 = call zeroext i1 %52(ptr noundef %btcoexist, i8 noundef zeroext 23, ptr noundef nonnull %bt_hs_rssi) #3
  %53 = ptrtoint ptr %wifi_rssi to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %wifi_rssi, align 4
  %55 = ptrtoint ptr %bt_hs_rssi to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bt_hs_rssi, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %54, i32 noundef %56) #3
  %57 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %btc_get, align 4
  %call29 = call zeroext i1 %58(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %scan) #3
  %59 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %btc_get, align 4
  %call31 = call zeroext i1 %60(ptr noundef %btcoexist, i8 noundef zeroext 6, ptr noundef nonnull %link) #3
  %61 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %btc_get, align 4
  %call33 = call zeroext i1 %62(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %roam) #3
  %63 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %link, align 1, !range !443
  %65 = zext i8 %64 to i32
  %66 = ptrtoint ptr %roam to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %roam, align 1, !range !443
  %68 = zext i8 %67 to i32
  %69 = ptrtoint ptr %scan to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %scan, align 1, !range !443
  %71 = zext i8 %70 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %65, i32 noundef %68, i32 noundef %71) #3
  %72 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %btc_get, align 4
  %call41 = call zeroext i1 %73(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef nonnull %wifi_under_5g) #3
  %74 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %btc_get, align 4
  %call43 = call zeroext i1 %75(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #3
  %76 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %btc_get, align 4
  %call45 = call zeroext i1 %77(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %wifi_busy) #3
  %78 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %btc_get, align 4
  %call47 = call zeroext i1 %79(ptr noundef %btcoexist, i8 noundef zeroext 25, ptr noundef nonnull %wifi_traffic_dir) #3
  %80 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %wifi_under_5g, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool48.not = icmp eq i8 %81, 0
  %cond50 = select i1 %tobool48.not, ptr @.str.24, ptr @.str.23
  %82 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp = icmp eq i32 %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %cmp52 = icmp eq i32 %83, 2
  %cond54 = select i1 %cmp52, ptr @.str.26, ptr @.str.27
  %cond55 = select i1 %cmp, ptr @.str.25, ptr %cond54
  %84 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %wifi_busy, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool56.not = icmp eq i8 %85, 0
  br i1 %tobool56.not, label %if.end6.cond.end62_crit_edge, label %cond.false58

if.end6.cond.end62_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end62

cond.false58:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %86 = ptrtoint ptr %wifi_traffic_dir to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %wifi_traffic_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp59 = icmp eq i32 %87, 0
  %cond61 = select i1 %cmp59, ptr @.str.29, ptr @.str.30
  br label %cond.end62

cond.end62:                                       ; preds = %cond.false58, %if.end6.cond.end62_crit_edge
  %cond63 = phi ptr [ %cond61, %cond.false58 ], [ @.str.28, %if.end6.cond.end62_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond50, ptr noundef nonnull %cond55, ptr noundef nonnull %cond63) #3
  %88 = load i8, ptr @glcoex_sta_8821a_1ant, align 4, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool64.not = icmp eq i8 %88, 0
  br i1 %tobool64.not, label %cond.false67, label %cond.end62.cond.end86_crit_edge

cond.end62.cond.end86_crit_edge:                  ; preds = %cond.end62
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end86

cond.false67:                                     ; preds = %cond.end62
  %89 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 20), align 4, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool68.not = icmp eq i8 %89, 0
  br i1 %tobool68.not, label %cond.false71, label %cond.false67.cond.end86_crit_edge

cond.false67.cond.end86_crit_edge:                ; preds = %cond.false67
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end86

cond.false71:                                     ; preds = %cond.false67
  %90 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 31), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp73 = icmp eq i8 %90, 0
  br i1 %cmp73, label %cond.false71.cond.end86_crit_edge, label %cond.false76

cond.false71.cond.end86_crit_edge:                ; preds = %cond.false71
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end86

cond.false76:                                     ; preds = %cond.false71
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %90)
  %cmp79 = icmp eq i8 %90, 1
  %cond81 = select i1 %cmp79, ptr @.str.36, ptr @.str.37
  br label %cond.end86

cond.end86:                                       ; preds = %cond.false76, %cond.false71.cond.end86_crit_edge, %cond.false67.cond.end86_crit_edge, %cond.end62.cond.end86_crit_edge
  %cond87 = phi ptr [ @.str.33, %cond.end62.cond.end86_crit_edge ], [ @.str.34, %cond.false67.cond.end86_crit_edge ], [ %cond81, %cond.false76 ], [ @.str.35, %cond.false71.cond.end86_crit_edge ]
  %91 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 13), align 4
  %conv88 = zext i8 %91 to i32
  %92 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 22), align 2
  %conv89 = zext i8 %92 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull %cond87, i32 noundef %conv88, i32 noundef %conv89) #3
  %sco_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %93 = ptrtoint ptr %sco_exist to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %sco_exist, align 1, !range !443
  %95 = zext i8 %94 to i32
  %hid_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %96 = ptrtoint ptr %hid_exist to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %hid_exist, align 1, !range !443
  %98 = zext i8 %97 to i32
  %pan_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %99 = ptrtoint ptr %pan_exist to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %pan_exist, align 1, !range !443
  %101 = zext i8 %100 to i32
  %a2dp_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %102 = ptrtoint ptr %a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %a2dp_exist, align 1, !range !443
  %104 = zext i8 %103 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %95, i32 noundef %98, i32 noundef %101, i32 noundef %104) #3
  %btc_disp_dbg_msg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 30
  %105 = ptrtoint ptr %btc_disp_dbg_msg to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %btc_disp_dbg_msg, align 4
  call void %106(ptr noundef %btcoexist, i8 noundef zeroext 1, ptr noundef %m) #3
  %107 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 23), align 1
  %108 = and i8 %107, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool100.not = icmp eq i8 %108, 0
  %cond101 = select i1 %tobool100.not, ptr @.str.43, ptr @.str.42
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond101) #3
  %109 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 19, i32 0), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool105.not = icmp eq i32 %109, 0
  br i1 %tobool105.not, label %cond.end86.for.inc_crit_edge, label %if.then106

cond.end86.for.inc_crit_edge:                     ; preds = %cond.end86
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then106:                                       ; preds = %cond.end86
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.126, ptr noundef getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 18, i32 0), i32 noundef %109) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then106, %cond.end86.for.inc_crit_edge
  %110 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 19, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool105.not.1 = icmp eq i32 %110, 0
  br i1 %tobool105.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then106.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.1

if.then106.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.127, ptr noundef getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 18, i32 1), i32 noundef %110) #3
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then106.1, %for.inc.for.inc.1_crit_edge
  %111 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 19, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool105.not.2 = icmp eq i32 %111, 0
  br i1 %tobool105.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then106.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.2

if.then106.2:                                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.128, ptr noundef getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 18, i32 2), i32 noundef %111) #3
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then106.2, %for.inc.1.for.inc.2_crit_edge
  %112 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 7), align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool116.not = icmp eq i8 %112, 0
  %cond118 = select i1 %tobool116.not, ptr @.str.48, ptr @.str.47
  %113 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 6), align 2, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool119.not = icmp eq i8 %113, 0
  %cond121 = select i1 %tobool119.not, ptr @.str.50, ptr @.str.49
  %lps_val = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 3, i32 25
  %114 = ptrtoint ptr %lps_val to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %lps_val, align 2
  %conv122 = zext i8 %115 to i32
  %rpwm_val = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 3, i32 26
  %116 = ptrtoint ptr %rpwm_val to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %rpwm_val, align 1
  %conv124 = zext i8 %117 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull %cond118, ptr noundef nonnull %cond121, i32 noundef %conv122, i32 noundef %conv124) #3
  %118 = ptrtoint ptr %btc_disp_dbg_msg to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %btc_disp_dbg_msg, align 4
  call void %119(ptr noundef %btcoexist, i8 noundef zeroext 3, ptr noundef %m) #3
  %120 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %manual_control, align 2, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool127.not = icmp eq i8 %121, 0
  br i1 %tobool127.not, label %if.then128, label %for.inc.2.if.end149_crit_edge

for.inc.2.if.end149_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end149

if.then128:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) #3
  %122 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4, !range !443
  %123 = zext i8 %122 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef %123) #3
  %reject_agg_pkt = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 3, i32 9
  %124 = ptrtoint ptr %reject_agg_pkt to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %reject_agg_pkt, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool132.not = icmp eq i8 %125, 0
  %cond134 = select i1 %tobool132.not, ptr @.str.10, ptr @.str.9
  %bt_ctrl_buf_size = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 3, i32 10
  %126 = ptrtoint ptr %bt_ctrl_buf_size to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %bt_ctrl_buf_size, align 2, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool136.not = icmp eq i8 %127, 0
  %cond138 = select i1 %tobool136.not, ptr @.str.10, ptr @.str.9
  %agg_buf_size = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 3, i32 6
  %128 = ptrtoint ptr %agg_buf_size to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %agg_buf_size, align 2
  %conv140 = zext i8 %129 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef nonnull %cond134, ptr noundef nonnull %cond138, i32 noundef %conv140) #3
  %ra_mask = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 3, i32 27
  %130 = ptrtoint ptr %ra_mask to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ra_mask, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef %131) #3
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.59) #3
  %132 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  %conv143 = zext i8 %132 to i32
  %133 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 6), align 2, !range !443
  %134 = zext i8 %133 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, ptr noundef getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), i32 noundef %conv143, i32 noundef %134) #3
  %135 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 42), align 4
  %conv146 = zext i8 %135 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.62, i32 noundef %conv146) #3
  %136 = load i8, ptr @glcoex_dm_8821a_1ant, align 4, !range !443
  %137 = zext i8 %136 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef %137) #3
  br label %if.end149

if.end149:                                        ; preds = %if.then128, %for.inc.2.if.end149_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.65) #3
  %138 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 25), align 4
  %139 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 26), align 4
  %140 = load i16, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 27), align 4
  %conv150 = zext i16 %140 to i32
  %141 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 28), align 2
  %conv151 = zext i8 %141 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef %138, i32 noundef %139, i32 noundef %conv150, i32 noundef %conv151) #3
  %btc_read_4byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %142 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %btc_read_4byte, align 4
  %call152 = call i32 %143(ptr noundef %btcoexist, i32 noundef 1072) #3
  %144 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %btc_read_4byte, align 4
  %call155 = call i32 %145(ptr noundef %btcoexist, i32 noundef 1076) #3
  %btc_read_2byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 20
  %146 = ptrtoint ptr %btc_read_2byte to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %btc_read_2byte, align 4
  %call157 = call zeroext i16 %147(ptr noundef %btcoexist, i32 noundef 1066) #3
  %btc_read_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 17
  %148 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %btc_read_1byte, align 4
  %call159 = call zeroext i8 %149(ptr noundef %btcoexist, i32 noundef 1110) #3
  %conv164 = zext i16 %call157 to i32
  %conv166 = zext i8 %call159 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.68, i32 noundef %call152, i32 noundef %call155, i32 noundef %conv164, i32 noundef %conv166) #3
  %150 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %btc_read_1byte, align 4
  %call168 = call zeroext i8 %151(ptr noundef %btcoexist, i32 noundef 1912) #3
  %152 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %btc_read_4byte, align 4
  %call171 = call i32 %153(ptr noundef %btcoexist, i32 noundef 3160) #3
  %conv174 = zext i8 %call168 to i32
  %and176 = lshr i32 %call171, 25
  %shr = and i32 %and176, 31
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef %conv174, i32 noundef %shr) #3
  %154 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %btc_read_1byte, align 4
  %call178 = call zeroext i8 %155(ptr noundef %btcoexist, i32 noundef 2267) #3
  %156 = lshr i8 %call178, 5
  %157 = and i8 %156, 3
  %158 = zext i8 %157 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef %158) #3
  %159 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %btc_read_1byte, align 4
  %call185 = call zeroext i8 %160(ptr noundef %btcoexist, i32 noundef 2421) #3
  %161 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %btc_read_4byte, align 4
  %call188 = call i32 %162(ptr noundef %btcoexist, i32 noundef 3252) #3
  %and191 = lshr i32 %call188, 28
  %shr192 = and i32 %and191, 3
  %and194 = and i32 %call188, 255
  %163 = and i8 %call185, 3
  %and197 = zext i8 %163 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, i32 noundef %shr192, i32 noundef %and194, i32 noundef %and197) #3
  %164 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %btc_read_1byte, align 4
  %call199 = call zeroext i8 %165(ptr noundef %btcoexist, i32 noundef 64) #3
  %166 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %btc_read_4byte, align 4
  %call202 = call i32 %167(ptr noundef %btcoexist, i32 noundef 76) #3
  %168 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %btc_read_1byte, align 4
  %call205 = call zeroext i8 %169(ptr noundef %btcoexist, i32 noundef 100) #3
  %conv208 = zext i8 %call199 to i32
  %and210 = lshr i32 %call202, 23
  %shr211 = and i32 %and210, 3
  %170 = and i8 %call205, 1
  %and214 = zext i8 %170 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.75, i32 noundef %conv208, i32 noundef %shr211, i32 noundef %and214) #3
  %171 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %btc_read_4byte, align 4
  %call216 = call i32 %172(ptr noundef %btcoexist, i32 noundef 1360) #3
  %173 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %btc_read_1byte, align 4
  %call219 = call zeroext i8 %174(ptr noundef %btcoexist, i32 noundef 1314) #3
  %conv223 = zext i8 %call219 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.76, i32 noundef %call216, i32 noundef %conv223) #3
  %175 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %btc_read_4byte, align 4
  %call225 = call i32 %176(ptr noundef %btcoexist, i32 noundef 3152) #3
  %and228 = and i32 %call225, 255
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.77, i32 noundef %and228) #3
  %177 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %btc_read_4byte, align 4
  %call230 = call i32 %178(ptr noundef %btcoexist, i32 noundef 3912) #3
  %179 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %btc_read_1byte, align 4
  %call233 = call zeroext i8 %180(ptr noundef %btcoexist, i32 noundef 2653) #3
  %181 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %btc_read_1byte, align 4
  %call236 = call zeroext i8 %182(ptr noundef %btcoexist, i32 noundef 2652) #3
  %conv240 = zext i8 %call233 to i32
  %shl = shl nuw nsw i32 %conv240, 8
  %conv242 = zext i8 %call236 to i32
  %add = or i32 %shl, %conv242
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.78, i32 noundef %call230, i32 noundef %add) #3
  %183 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %btc_read_4byte, align 4
  %call244 = call i32 %184(ptr noundef %btcoexist, i32 noundef 1728) #3
  %185 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %btc_read_4byte, align 4
  %call247 = call i32 %186(ptr noundef %btcoexist, i32 noundef 1732) #3
  %187 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %btc_read_4byte, align 4
  %call250 = call i32 %188(ptr noundef %btcoexist, i32 noundef 1736) #3
  %189 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %btc_read_1byte, align 4
  %call253 = call zeroext i8 %190(ptr noundef %btcoexist, i32 noundef 1740) #3
  %conv259 = zext i8 %call253 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef %call244, i32 noundef %call247, i32 noundef %call250, i32 noundef %conv259) #3
  %191 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 10), align 4
  %192 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 9), align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.81, i32 noundef %191, i32 noundef %192) #3
  %193 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 12), align 4
  %194 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 11), align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.82, i32 noundef %193, i32 noundef %194) #3
  %auto_report_1ant = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 7
  %195 = ptrtoint ptr %auto_report_1ant to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %auto_report_1ant, align 4, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool260.not = icmp eq i8 %196, 0
  br i1 %tobool260.not, label %if.end149.if.end262_crit_edge, label %if.then261

if.end149.if.end262_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end262

if.then261:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #5
  %197 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %btc_read_4byte, align 4
  %call.i = call i32 %198(ptr noundef %btcoexist, i32 noundef 1904) #3
  %and.i = and i32 %call.i, 65535
  %shr.i = lshr i32 %call.i, 16
  %199 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %btc_read_4byte, align 4
  %call3.i = call i32 %200(ptr noundef %btcoexist, i32 noundef 1908) #3
  %and4.i = and i32 %call3.i, 65535
  %shr6.i = lshr i32 %call3.i, 16
  store i32 %and.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 9), align 4
  store i32 %shr.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 10), align 4
  store i32 %and4.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 11), align 4
  store i32 %shr6.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 12), align 4
  %btc_write_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %201 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %btc_write_1byte.i, align 4
  call void %202(ptr noundef %btcoexist, i32 noundef 1902, i32 noundef 12) #3
  br label %if.end262

if.end262:                                        ; preds = %if.then261, %if.end149.if.end262_crit_edge
  %203 = ptrtoint ptr %btc_disp_dbg_msg to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %btc_disp_dbg_msg, align 4
  call void %204(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef %m) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bt_patch_ver) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_ver) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_hs_chnl) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_dot11_chnl) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_traffic_dir) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bt_hs_rssi) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_under_5g) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scan) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %roam) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a1ant_ips_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %wifi_under_5g = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_under_5g) #3
  %2 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %wifi_under_5g, align 1
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %3 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %manual_control, align 2, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %5 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %stop_coex_dm, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %7 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %8(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef nonnull %wifi_under_5g) #3
  %9 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %wifi_under_5g, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.83) #3
  call fastcc void @btc8821a1ant_coex_under_5g(ptr noundef %btcoexist)
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %11 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %type, label %if.end4.cleanup_crit_edge [
    i8 1, label %if.then6
    i8 0, label %if.then10
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.84) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 7), align 1
  call fastcc void @btc8821a1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext 1, i1 noundef zeroext false, i1 noundef zeroext true)
  call fastcc void @btc8821a1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 0)
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765) #3
  br label %cleanup

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.85) #3
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 7), align 1
  call fastcc void @btc8821a1ant_init_hw_config(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false)
  call fastcc void @btc8821a1ant_init_coex_dm(ptr noundef %btcoexist)
  call fastcc void @btc8821a1ant_query_bt_info(ptr noundef %btcoexist)
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.then6, %if.end4.cleanup_crit_edge, %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_under_5g) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_coex_under_5g(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %low_pwr_disable.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #3
  %0 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %1 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %2(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #3
  %3 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #3
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %5 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.151) #3
  store i8 1, ptr @glcoex_dm_8821a_1ant, align 4
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 1), align 1, !range !443
  %8 = zext i8 %7 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.153, i32 noundef %8, i32 noundef 1) #3
  %9 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 1), align 1, !range !443
  %10 = load i8, ptr @glcoex_dm_8821a_1ant, align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %10)
  %cmp.i = icmp eq i8 %9, %10
  br i1 %cmp.i, label %entry.btc8821a1ant_ignore_wlan_act.exit_crit_edge, label %if.end19.i

entry.btc8821a1ant_ignore_wlan_act.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ignore_wlan_act.exit

if.end19.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #3
  %13 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %h2c_parameter.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %12, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.154, i32 noundef 1) #3
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %14 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %15(ptr noundef %btcoexist, i8 noundef zeroext 99, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #3
  %16 = load i8, ptr @glcoex_dm_8821a_1ant, align 4, !range !443
  store i8 %16, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 1), align 1
  br label %btc8821a1ant_ignore_wlan_act.exit

btc8821a1ant_ignore_wlan_act.exit:                ; preds = %if.end19.i, %entry.btc8821a1ant_ignore_wlan_act.exit_crit_edge
  call fastcc void @btc8821a1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 10)
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765) #3
  call fastcc void @btc8821a1ant_limited_tx(ptr noundef %btcoexist, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #3
  %17 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #3
  %18 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #3
  %19 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 5, ptr %rx_agg_size.i, align 1
  %20 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_set.i, align 4
  %call.i = call zeroext i1 %21(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #3
  %22 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_set.i, align 4
  %call7.i7 = call zeroext i1 %23(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #3
  %24 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %25(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #3
  %26 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %27(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext %ant_pos_type, i1 noundef zeroext %init_hw_cfg, i1 noundef zeroext %wifi_off) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %h2c_parameter) #3
  %0 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %h2c_parameter, align 2
  br i1 %init_hw_cfg, label %if.then, label %if.else10

if.then:                                          ; preds = %entry
  %btc_read_4byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %1 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %btc_read_4byte, align 4
  %call = tail call i32 %2(ptr noundef %btcoexist, i32 noundef 76) #3
  %and = and i32 %call, -25165825
  %or = or i32 %and, 16777216
  %btc_write_4byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %3 = ptrtoint ptr %btc_write_4byte to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_write_4byte, align 4
  tail call void %4(ptr noundef %btcoexist, i32 noundef 76, i32 noundef %or) #3
  %btc_write_1byte_bitmask = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %5 = ptrtoint ptr %btc_write_1byte_bitmask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_write_1byte_bitmask, align 4
  tail call void %6(ptr noundef %btcoexist, i32 noundef 2421, i32 noundef 3, i8 noundef zeroext 3) #3
  %btc_write_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %7 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %btc_write_1byte, align 4
  tail call void %8(ptr noundef %btcoexist, i32 noundef 3252, i32 noundef 119) #3
  %btdm_ant_pos = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %btdm_ant_pos to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %btdm_ant_pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp = icmp eq i8 %10, 1
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %h2c_parameter, align 2
  %arrayidx5 = getelementptr inbounds [2 x i8], ptr %h2c_parameter, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %arrayidx5, align 1
  %btc_fill_h2c = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %13 = ptrtoint ptr %btc_fill_h2c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %btc_fill_h2c, align 4
  call void %14(ptr noundef %btcoexist, i8 noundef zeroext 101, i32 noundef 2, ptr noundef nonnull %h2c_parameter) #3
  br label %if.end22

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %h2c_parameter, align 2
  %arrayidx7 = getelementptr inbounds [2 x i8], ptr %h2c_parameter, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %arrayidx7, align 1
  %btc_fill_h2c8 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %17 = ptrtoint ptr %btc_fill_h2c8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_fill_h2c8, align 4
  call void %18(ptr noundef %btcoexist, i8 noundef zeroext 101, i32 noundef 2, ptr noundef nonnull %h2c_parameter) #3
  br label %if.end22

if.else10:                                        ; preds = %entry
  br i1 %wifi_off, label %if.then12, label %if.else19

if.then12:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #5
  %btc_read_4byte13 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %19 = ptrtoint ptr %btc_read_4byte13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_read_4byte13, align 4
  %call14 = tail call i32 %20(ptr noundef %btcoexist, i32 noundef 76) #3
  %and16 = and i32 %call14, -25165825
  %btc_write_4byte17 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %21 = ptrtoint ptr %btc_write_4byte17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %btc_write_4byte17, align 4
  tail call void %22(ptr noundef %btcoexist, i32 noundef 76, i32 noundef %and16) #3
  %btc_write_1byte_bitmask18 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %23 = ptrtoint ptr %btc_write_1byte_bitmask18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %btc_write_1byte_bitmask18, align 4
  tail call void %24(ptr noundef %btcoexist, i32 noundef 1893, i32 noundef 24, i8 noundef zeroext 3) #3
  br label %if.end22

if.else19:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #5
  %btc_write_1byte_bitmask20 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %25 = ptrtoint ptr %btc_write_1byte_bitmask20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %btc_write_1byte_bitmask20, align 4
  tail call void %26(ptr noundef %btcoexist, i32 noundef 1893, i32 noundef 24, i8 noundef zeroext 0) #3
  br label %if.end22

if.end22:                                         ; preds = %if.else19, %if.then12, %if.else, %if.then4
  %27 = zext i8 %ant_pos_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.212)
  switch i8 %ant_pos_type, label %sw.bb45 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb34
  ]

sw.bb:                                            ; preds = %if.end22
  %btc_write_1byte24 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %28 = ptrtoint ptr %btc_write_1byte24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_write_1byte24, align 4
  call void %29(ptr noundef %btcoexist, i32 noundef 3252, i32 noundef 119) #3
  %btdm_ant_pos25 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %30 = ptrtoint ptr %btdm_ant_pos25 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %btdm_ant_pos25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp27 = icmp eq i8 %31, 1
  %btc_write_1byte_bitmask30 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %32 = ptrtoint ptr %btc_write_1byte_bitmask30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %btc_write_1byte_bitmask30, align 4
  br i1 %cmp27, label %if.then29, label %if.else31

if.then29:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  call void %33(ptr noundef %btcoexist, i32 noundef 3255, i32 noundef 48, i8 noundef zeroext 1) #3
  br label %sw.epilog

if.else31:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  call void %33(ptr noundef %btcoexist, i32 noundef 3255, i32 noundef 48, i8 noundef zeroext 2) #3
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end22
  %btc_write_1byte35 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %34 = ptrtoint ptr %btc_write_1byte35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %btc_write_1byte35, align 4
  call void %35(ptr noundef %btcoexist, i32 noundef 3252, i32 noundef 119) #3
  %btdm_ant_pos36 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %36 = ptrtoint ptr %btdm_ant_pos36 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %btdm_ant_pos36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp38 = icmp eq i8 %37, 1
  %btc_write_1byte_bitmask41 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %38 = ptrtoint ptr %btc_write_1byte_bitmask41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %btc_write_1byte_bitmask41, align 4
  br i1 %cmp38, label %if.then40, label %if.else42

if.then40:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #5
  call void %39(ptr noundef %btcoexist, i32 noundef 3255, i32 noundef 48, i8 noundef zeroext 2) #3
  br label %sw.epilog

if.else42:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #5
  call void %39(ptr noundef %btcoexist, i32 noundef 3255, i32 noundef 48, i8 noundef zeroext 1) #3
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end22
  %btc_write_1byte46 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %40 = ptrtoint ptr %btc_write_1byte46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %btc_write_1byte46, align 4
  call void %41(ptr noundef %btcoexist, i32 noundef 3252, i32 noundef 102) #3
  %btdm_ant_pos47 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %42 = ptrtoint ptr %btdm_ant_pos47 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %btdm_ant_pos47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %43)
  %cmp49 = icmp eq i8 %43, 1
  %btc_write_1byte_bitmask52 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %44 = ptrtoint ptr %btc_write_1byte_bitmask52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %btc_write_1byte_bitmask52, align 4
  br i1 %cmp49, label %if.then51, label %if.else53

if.then51:                                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #5
  call void %45(ptr noundef %btcoexist, i32 noundef 3255, i32 noundef 48, i8 noundef zeroext 1) #3
  br label %sw.epilog

if.else53:                                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #5
  call void %45(ptr noundef %btcoexist, i32 noundef 3255, i32 noundef 48, i8 noundef zeroext 2) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else53, %if.then51, %if.else42, %if.then40, %if.else31, %if.then29
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %h2c_parameter) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i1 noundef zeroext %turn_on, i8 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i162 = alloca [5 x i8], align 1
  %ap_enable.i163 = alloca i8, align 1
  %h2c_parameter.i148 = alloca [5 x i8], align 1
  %ap_enable.i149 = alloca i8, align 1
  %h2c_parameter.i134 = alloca [5 x i8], align 1
  %ap_enable.i135 = alloca i8, align 1
  %h2c_parameter.i = alloca [5 x i8], align 1
  %ap_enable.i = alloca i8, align 1
  %rssi_adjust_val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool1 = zext i1 %turn_on to i8
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi_adjust_val) #3
  %2 = ptrtoint ptr %rssi_adjust_val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %rssi_adjust_val, align 1
  store i8 %frombool1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4
  store i8 %type, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  br i1 %force_exec, label %entry.if.end23_crit_edge, label %if.then

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

if.then:                                          ; preds = %entry
  %conv = zext i8 %type to i32
  %.str.129..str.130 = select i1 %turn_on, ptr @.str.129, ptr @.str.130
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.129..str.130, i32 noundef %conv) #3
  %3 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1, !range !443
  %4 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %4)
  %cmp = icmp eq i8 %3, %4
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end23_crit_edge

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

land.lhs.true:                                    ; preds = %if.then
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp19 = icmp eq i8 %5, %6
  br i1 %cmp19, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %if.then.if.end23_crit_edge, %entry.if.end23_crit_edge
  br i1 %turn_on, label %if.then25, label %if.else64

if.then25:                                        ; preds = %if.end23
  %7 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.213)
  switch i8 %type, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb27
    i8 3, label %sw.bb28
    i8 4, label %sw.bb29
    i8 5, label %sw.bb30
    i8 6, label %sw.bb31
    i8 7, label %sw.bb32
    i8 8, label %sw.bb33
    i8 9, label %sw.bb34
    i8 10, label %sw.bb35
    i8 11, label %sw.bb36
    i8 12, label %sw.bb37
    i8 13, label %sw.bb38
    i8 14, label %sw.bb39
    i8 15, label %sw.bb40
    i8 16, label %sw.bb41
    i8 18, label %sw.bb42
    i8 20, label %sw.bb43
    i8 21, label %sw.bb44
    i8 22, label %sw.bb45
    i8 23, label %sw.bb46
    i8 24, label %sw.bb47
    i8 25, label %sw.bb48
    i8 26, label %sw.bb49
    i8 27, label %sw.bb50
    i8 28, label %sw.bb51
    i8 29, label %sw.bb52
    i8 30, label %sw.bb53
    i8 31, label %sw.bb54
    i8 32, label %sw.bb55
    i8 33, label %sw.bb56
    i8 34, label %sw.bb57
    i8 35, label %sw.bb58
    i8 36, label %sw.bb59
    i8 40, label %sw.bb60
    i8 41, label %sw.bb61
    i8 42, label %sw.bb62
    i8 43, label %sw.bb63
  ]

sw.default:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 81, i8 noundef zeroext 26, i8 noundef zeroext 26, i8 noundef zeroext 0, i8 noundef zeroext 80)
  br label %if.end72

sw.bb:                                            ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 81, i8 noundef zeroext 58, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext 80)
  br label %if.end72

sw.bb27:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 81, i8 noundef zeroext 43, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext 80)
  br label %if.end72

sw.bb28:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 81, i8 noundef zeroext 29, i8 noundef zeroext 29, i8 noundef zeroext 0, i8 noundef zeroext 16)
  br label %if.end72

sw.bb29:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -109, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 20, i8 noundef zeroext 0)
  br label %if.end72

sw.bb30:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 97, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 17, i8 noundef zeroext 16)
  br label %if.end72

sw.bb31:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 97, i8 noundef zeroext 32, i8 noundef zeroext 3, i8 noundef zeroext 17, i8 noundef zeroext 19)
  br label %if.end72

sw.bb32:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 19, i8 noundef zeroext 12, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %if.end72

sw.bb33:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -109, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext 0)
  br label %if.end72

sw.bb34:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 81, i8 noundef zeroext 33, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext 80)
  br label %if.end72

sw.bb35:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 19, i8 noundef zeroext 10, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 noundef zeroext 64)
  br label %if.end72

sw.bb36:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 81, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext 80)
  %8 = ptrtoint ptr %rssi_adjust_val to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 20, ptr %rssi_adjust_val, align 1
  br label %if.end72

sw.bb37:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 81, i8 noundef zeroext 10, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 noundef zeroext 80)
  br label %if.end72

sw.bb38:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 81, i8 noundef zeroext 18, i8 noundef zeroext 18, i8 noundef zeroext 0, i8 noundef zeroext 80)
  br label %if.end72

sw.bb39:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 81, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext 20)
  br label %if.end72

sw.bb40:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 19, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 8, i8 noundef zeroext 0)
  br label %if.end72

sw.bb41:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -109, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext 0)
  %9 = ptrtoint ptr %rssi_adjust_val to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 18, ptr %rssi_adjust_val, align 1
  br label %if.end72

sw.bb42:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -109, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext 0)
  %10 = ptrtoint ptr %rssi_adjust_val to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 14, ptr %rssi_adjust_val, align 1
  br label %if.end72

sw.bb43:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 97, i8 noundef zeroext 53, i8 noundef zeroext 3, i8 noundef zeroext 17, i8 noundef zeroext 16)
  br label %if.end72

sw.bb44:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 97, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext 17, i8 noundef zeroext 17)
  br label %if.end72

sw.bb45:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 97, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext 17, i8 noundef zeroext 16)
  br label %if.end72

sw.bb46:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext 49, i8 noundef zeroext 24)
  %11 = ptrtoint ptr %rssi_adjust_val to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 22, ptr %rssi_adjust_val, align 1
  br label %if.end72

sw.bb47:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 49, i8 noundef zeroext 24)
  %12 = ptrtoint ptr %rssi_adjust_val to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 22, ptr %rssi_adjust_val, align 1
  br label %if.end72

sw.bb48:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 49, i8 noundef zeroext 24)
  %13 = ptrtoint ptr %rssi_adjust_val to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 22, ptr %rssi_adjust_val, align 1
  br label %if.end72

sw.bb49:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 49, i8 noundef zeroext 24)
  %14 = ptrtoint ptr %rssi_adjust_val to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 22, ptr %rssi_adjust_val, align 1
  br label %if.end72

sw.bb50:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext 49, i8 noundef zeroext -104)
  %15 = ptrtoint ptr %rssi_adjust_val to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 22, ptr %rssi_adjust_val, align 1
  br label %if.end72

sw.bb51:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 105, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext 49, i8 noundef zeroext 0)
  br label %if.end72

sw.bb52:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -85, i8 noundef zeroext 26, i8 noundef zeroext 26, i8 noundef zeroext 1, i8 noundef zeroext 16)
  br label %if.end72

sw.bb53:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 81, i8 noundef zeroext 48, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext 16)
  br label %if.end72

sw.bb54:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -45, i8 noundef zeroext 26, i8 noundef zeroext 26, i8 noundef zeroext 0, i8 noundef zeroext 88)
  br label %if.end72

sw.bb55:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 97, i8 noundef zeroext 53, i8 noundef zeroext 3, i8 noundef zeroext 17, i8 noundef zeroext 17)
  br label %if.end72

sw.bb56:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -93, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext 48, i8 noundef zeroext -112)
  br label %if.end72

sw.bb57:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 83, i8 noundef zeroext 26, i8 noundef zeroext 26, i8 noundef zeroext 0, i8 noundef zeroext 16)
  br label %if.end72

sw.bb58:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 99, i8 noundef zeroext 26, i8 noundef zeroext 26, i8 noundef zeroext 0, i8 noundef zeroext 16)
  br label %if.end72

sw.bb59:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -45, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 20, i8 noundef zeroext 80)
  br label %if.end72

sw.bb60:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 35, i8 noundef zeroext 24, i8 noundef zeroext 0, i8 noundef zeroext 16, i8 noundef zeroext 36)
  br label %if.end72

sw.bb61:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 81, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 17, i8 noundef zeroext 17)
  br label %if.end72

sw.bb62:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 81, i8 noundef zeroext 32, i8 noundef zeroext 3, i8 noundef zeroext 17, i8 noundef zeroext 17)
  br label %if.end72

sw.bb63:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext 81, i8 noundef zeroext 48, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext 17)
  br label %if.end72

if.else64:                                        ; preds = %if.end23
  %16 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.214)
  switch i8 %type, label %sw.default68 [
    i8 8, label %sw.bb66
    i8 10, label %sw.bb70
    i8 9, label %sw.bb69
  ]

sw.bb66:                                          ; preds = %if.else64
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i) #3
  %19 = ptrtoint ptr %ap_enable.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %ap_enable.i, align 1
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %20 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %21(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i) #3
  %22 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 8, ptr %h2c_parameter.i, align 1
  %arrayidx18.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 0, ptr %arrayidx18.i, align 1
  store i8 8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i32 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %18, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef 8, i32 noundef 0) #3
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %24 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %25(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i) #3
  %btc_write_1byte_bitmask20.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %26 = ptrtoint ptr %btc_write_1byte_bitmask20.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %btc_write_1byte_bitmask20.i, align 4
  call void %27(ptr noundef %btcoexist, i32 noundef 1893, i32 noundef 24, i8 noundef zeroext 0) #3
  %btc_write_1byte46.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %28 = ptrtoint ptr %btc_write_1byte46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_write_1byte46.i, align 4
  call void %29(ptr noundef %btcoexist, i32 noundef 3252, i32 noundef 102) #3
  %btdm_ant_pos47.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %30 = ptrtoint ptr %btdm_ant_pos47.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %btdm_ant_pos47.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp49.i = icmp eq i8 %31, 1
  %32 = ptrtoint ptr %btc_write_1byte_bitmask20.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %btc_write_1byte_bitmask20.i, align 4
  br i1 %cmp49.i, label %if.then51.i, label %if.else53.i

if.then51.i:                                      ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #5
  call void %33(ptr noundef %btcoexist, i32 noundef 3255, i32 noundef 48, i8 noundef zeroext 1) #3
  br label %if.end72

if.else53.i:                                      ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #5
  call void %33(ptr noundef %btcoexist, i32 noundef 3255, i32 noundef 48, i8 noundef zeroext 2) #3
  br label %if.end72

sw.default68:                                     ; preds = %if.else64
  %34 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i134) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i135) #3
  %36 = ptrtoint ptr %ap_enable.i135 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %ap_enable.i135, align 1
  %btc_get.i137 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %37 = ptrtoint ptr %btc_get.i137 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %btc_get.i137, align 4
  %call.i138 = call zeroext i1 %38(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i135) #3
  %39 = call ptr @memset(ptr %h2c_parameter.i134, i32 0, i32 5)
  %40 = call ptr @memset(ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), i32 0, i32 5)
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %35, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef 0, i32 noundef 0) #3
  %btc_fill_h2c.i144 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %41 = ptrtoint ptr %btc_fill_h2c.i144 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_fill_h2c.i144, align 4
  call void %42(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i134) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i135) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i134) #3
  %btc_write_1byte_bitmask20.i146 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %43 = ptrtoint ptr %btc_write_1byte_bitmask20.i146 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %btc_write_1byte_bitmask20.i146, align 4
  call void %44(ptr noundef %btcoexist, i32 noundef 1893, i32 noundef 24, i8 noundef zeroext 0) #3
  %btc_write_1byte35.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %45 = ptrtoint ptr %btc_write_1byte35.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %btc_write_1byte35.i, align 4
  call void %46(ptr noundef %btcoexist, i32 noundef 3252, i32 noundef 119) #3
  %btdm_ant_pos36.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %47 = ptrtoint ptr %btdm_ant_pos36.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %btdm_ant_pos36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp38.i = icmp eq i8 %48, 1
  %49 = ptrtoint ptr %btc_write_1byte_bitmask20.i146 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %btc_write_1byte_bitmask20.i146, align 4
  br i1 %cmp38.i, label %if.then40.i, label %if.else42.i

if.then40.i:                                      ; preds = %sw.default68
  call void @__sanitizer_cov_trace_pc() #5
  call void %50(ptr noundef %btcoexist, i32 noundef 3255, i32 noundef 48, i8 noundef zeroext 2) #3
  br label %if.end72

if.else42.i:                                      ; preds = %sw.default68
  call void @__sanitizer_cov_trace_pc() #5
  call void %50(ptr noundef %btcoexist, i32 noundef 3255, i32 noundef 48, i8 noundef zeroext 1) #3
  br label %if.end72

sw.bb69:                                          ; preds = %if.else64
  %51 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i148) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i149) #3
  %53 = ptrtoint ptr %ap_enable.i149 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %ap_enable.i149, align 1
  %btc_get.i151 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %54 = ptrtoint ptr %btc_get.i151 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %btc_get.i151, align 4
  %call.i152 = call zeroext i1 %55(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i149) #3
  %56 = call ptr @memset(ptr %h2c_parameter.i148, i32 0, i32 5)
  %57 = call ptr @memset(ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), i32 0, i32 5)
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %52, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef 0, i32 noundef 0) #3
  %btc_fill_h2c.i158 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %58 = ptrtoint ptr %btc_fill_h2c.i158 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %btc_fill_h2c.i158, align 4
  call void %59(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i148) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i149) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i148) #3
  %btc_write_1byte_bitmask20.i160 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %60 = ptrtoint ptr %btc_write_1byte_bitmask20.i160 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %btc_write_1byte_bitmask20.i160, align 4
  call void %61(ptr noundef %btcoexist, i32 noundef 1893, i32 noundef 24, i8 noundef zeroext 0) #3
  %btc_write_1byte24.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %62 = ptrtoint ptr %btc_write_1byte24.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %btc_write_1byte24.i, align 4
  call void %63(ptr noundef %btcoexist, i32 noundef 3252, i32 noundef 119) #3
  %btdm_ant_pos25.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %64 = ptrtoint ptr %btdm_ant_pos25.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %btdm_ant_pos25.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %65)
  %cmp27.i = icmp eq i8 %65, 1
  %66 = ptrtoint ptr %btc_write_1byte_bitmask20.i160 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %btc_write_1byte_bitmask20.i160, align 4
  br i1 %cmp27.i, label %if.then29.i, label %if.else31.i

if.then29.i:                                      ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #5
  call void %67(ptr noundef %btcoexist, i32 noundef 3255, i32 noundef 48, i8 noundef zeroext 1) #3
  br label %if.end72

if.else31.i:                                      ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #5
  call void %67(ptr noundef %btcoexist, i32 noundef 3255, i32 noundef 48, i8 noundef zeroext 2) #3
  br label %if.end72

sw.bb70:                                          ; preds = %if.else64
  %68 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i162) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i163) #3
  %70 = ptrtoint ptr %ap_enable.i163 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %ap_enable.i163, align 1
  %btc_get.i165 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %71 = ptrtoint ptr %btc_get.i165 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %btc_get.i165, align 4
  %call.i166 = call zeroext i1 %72(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i163) #3
  %73 = ptrtoint ptr %h2c_parameter.i162 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %h2c_parameter.i162, align 1
  %arrayidx18.i168 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i162, i32 0, i32 1
  %74 = ptrtoint ptr %arrayidx18.i168 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %arrayidx18.i168, align 1
  %arrayidx19.i169 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i162, i32 0, i32 2
  %75 = ptrtoint ptr %arrayidx19.i169 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %arrayidx19.i169, align 1
  %arrayidx20.i170 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i162, i32 0, i32 3
  %76 = ptrtoint ptr %arrayidx20.i170 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 8, ptr %arrayidx20.i170, align 1
  %arrayidx21.i171 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i162, i32 0, i32 4
  %77 = ptrtoint ptr %arrayidx21.i171 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %arrayidx21.i171, align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 2), align 2
  store i8 8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 3), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 4), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %69, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef 0, i32 noundef 2048) #3
  %btc_fill_h2c.i172 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %78 = ptrtoint ptr %btc_fill_h2c.i172 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %btc_fill_h2c.i172, align 4
  call void %79(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i162) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i163) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i162) #3
  %btc_write_1byte_bitmask20.i174 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %80 = ptrtoint ptr %btc_write_1byte_bitmask20.i174 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %btc_write_1byte_bitmask20.i174, align 4
  call void %81(ptr noundef %btcoexist, i32 noundef 1893, i32 noundef 24, i8 noundef zeroext 0) #3
  %btc_write_1byte35.i175 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %82 = ptrtoint ptr %btc_write_1byte35.i175 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %btc_write_1byte35.i175, align 4
  call void %83(ptr noundef %btcoexist, i32 noundef 3252, i32 noundef 119) #3
  %btdm_ant_pos36.i176 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %84 = ptrtoint ptr %btdm_ant_pos36.i176 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %btdm_ant_pos36.i176, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %85)
  %cmp38.i177 = icmp eq i8 %85, 1
  %86 = ptrtoint ptr %btc_write_1byte_bitmask20.i174 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %btc_write_1byte_bitmask20.i174, align 4
  br i1 %cmp38.i177, label %if.then40.i179, label %if.else42.i180

if.then40.i179:                                   ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #5
  call void %87(ptr noundef %btcoexist, i32 noundef 3255, i32 noundef 48, i8 noundef zeroext 2) #3
  br label %if.end72

if.else42.i180:                                   ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #5
  call void %87(ptr noundef %btcoexist, i32 noundef 3255, i32 noundef 48, i8 noundef zeroext 1) #3
  br label %if.end72

if.end72:                                         ; preds = %if.else42.i180, %if.then40.i179, %if.else31.i, %if.then29.i, %if.else42.i, %if.then40.i, %if.else53.i, %if.then51.i, %sw.bb63, %sw.bb62, %sw.bb61, %sw.bb60, %sw.bb59, %sw.bb58, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb, %sw.default
  %88 = ptrtoint ptr %rssi_adjust_val to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %rssi_adjust_val, align 1
  %btc_set = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %89 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %btc_set, align 4
  %call = call zeroext i1 %90(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %rssi_adjust_val) #3
  %91 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  store i8 %91, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1
  %92 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  store i8 %92, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi_adjust_val) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a1ant_lps_notify(ptr nocapture noundef readonly %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %2 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %manual_control, align 2, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %4 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stop_coex_dm, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.215)
  switch i8 %type, label %if.end.cleanup_crit_edge [
    i8 1, label %if.end.cleanup.sink.split_crit_edge
    i8 0, label %if.then7
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then7, %if.end.cleanup.sink.split_crit_edge
  %.str.86.sink = phi ptr [ @.str.87, %if.then7 ], [ @.str.86, %if.end.cleanup.sink.split_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.86.sink) #3
  store i8 %type, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 6), align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a1ant_scan_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %wifi_connected = alloca i8, align 1
  %bt_hs_on = alloca i8, align 1
  %wifi_under_5g = alloca i8, align 1
  %wifi_link_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_connected) #3
  %2 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %wifi_connected, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on) #3
  %3 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bt_hs_on, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_under_5g) #3
  %4 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %wifi_under_5g, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_link_status) #3
  %5 = ptrtoint ptr %wifi_link_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wifi_link_status, align 4
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %6 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %manual_control, align 2, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %8 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %stop_coex_dm, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %10 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %11(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef nonnull %wifi_under_5g) #3
  %12 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %wifi_under_5g, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not = icmp eq i8 %13, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.83) #3
  call fastcc void @btc8821a1ant_coex_under_5g(ptr noundef %btcoexist)
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp = icmp eq i8 %type, 1
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 21), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.88) #3
  call fastcc void @btc8821a1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 8)
  br label %if.end8

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 21), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.89) #3
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  %14 = load i8, ptr @glcoex_sta_8821a_1ant, align 4, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool9.not = icmp eq i8 %14, 0
  br i1 %tobool9.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %15 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_get, align 4
  %call13 = call zeroext i1 %16(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on) #3
  %17 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_get, align 4
  %call15 = call zeroext i1 %18(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected) #3
  call fastcc void @btc8821a1ant_query_bt_info(ptr noundef %btcoexist)
  %19 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_get, align 4
  %call17 = call zeroext i1 %20(ptr noundef %btcoexist, i8 noundef zeroext 27, ptr noundef nonnull %wifi_link_status) #3
  %21 = ptrtoint ptr %wifi_link_status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wifi_link_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %22)
  %cmp18 = icmp ugt i32 %22, 131071
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_limited_tx(ptr noundef %btcoexist, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call fastcc void @btc8821a1ant_limited_rx(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 5)
  call fastcc void @btc8821a1ant_action_wifi_multi_port(ptr noundef %btcoexist)
  br label %cleanup

if.end22:                                         ; preds = %if.end11
  %23 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 20), align 4, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool23.not = icmp eq i8 %23, 0
  br i1 %tobool23.not, label %if.else25, label %if.then24

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_action_bt_inquiry(ptr noundef %btcoexist)
  br label %cleanup

if.else25:                                        ; preds = %if.end22
  %24 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bt_hs_on, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool26.not = icmp eq i8 %25, 0
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_action_hs(ptr noundef %btcoexist)
  br label %cleanup

if.end29:                                         ; preds = %if.else25
  br i1 %cmp, label %if.then33, label %if.else38

if.then33:                                        ; preds = %if.end29
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.88) #3
  %26 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %wifi_connected, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool34.not = icmp eq i8 %27, 0
  br i1 %tobool34.not, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_act_wifi_not_conn_scan(ptr noundef %btcoexist)
  br label %cleanup

if.else36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_action_wifi_connected_scan(ptr noundef %btcoexist)
  br label %cleanup

if.else38:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp40 = icmp eq i8 %type, 0
  br i1 %cmp40, label %if.then42, label %if.else38.cleanup_crit_edge

if.else38.cleanup_crit_edge:                      ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then42:                                        ; preds = %if.else38
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.89) #3
  %28 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %wifi_connected, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool43.not = icmp eq i8 %29, 0
  br i1 %tobool43.not, label %if.then44, label %if.else45

if.then44:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_action_wifi_not_connected(ptr noundef %btcoexist)
  br label %cleanup

if.else45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_action_wifi_connected(ptr noundef %btcoexist)
  br label %cleanup

cleanup:                                          ; preds = %if.else45, %if.then44, %if.else38.cleanup_crit_edge, %if.else36, %if.then35, %if.then27, %if.then24, %if.then20, %if.end8.cleanup_crit_edge, %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_link_status) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_under_5g) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_limited_tx(ptr noundef %btcoexist, i8 noundef zeroext %ra_mask_type, i8 noundef zeroext %arfr_type, i8 noundef zeroext %ampdu_time_type) unnamed_addr #0 align 64 {
entry:
  %wifi_under_b_mode.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %ra_mask_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.216)
  switch i8 %ra_mask_type, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  store i32 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 34), align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 33), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %sw.bb.sw.epilog.sink.split_crit_edge, label %sw.bb.sw.epilog.sink.split.sink.split_crit_edge

sw.bb.sw.epilog.sink.split.sink.split_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split.sink.split

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  store i32 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 34), align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 33), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp.not.i1 = icmp eq i32 %2, 3
  br i1 %cmp.not.i1, label %sw.bb1.sw.epilog.sink.split_crit_edge, label %sw.bb1.sw.epilog.sink.split.sink.split_crit_edge

sw.bb1.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split.sink.split

sw.bb1.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

sw.epilog.sink.split.sink.split:                  ; preds = %sw.bb1.sw.epilog.sink.split.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split.sink.split_crit_edge
  %btc_set.i2 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %3 = ptrtoint ptr %btc_set.i2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_set.i2, align 4
  %call.i3 = tail call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 30, ptr noundef getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 34)) #3
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %sw.bb1.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %5 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 34), align 4
  store i32 %5, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 33), align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_under_b_mode.i) #3
  %6 = ptrtoint ptr %wifi_under_b_mode.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %wifi_under_b_mode.i, align 1
  store i8 %arfr_type, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 36), align 1
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 35), align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %arfr_type)
  %cmp.not.i6 = icmp eq i8 %7, %arfr_type
  br i1 %cmp.not.i6, label %sw.epilog.btc8821a1ant_auto_rate_fb_retry.exit_crit_edge, label %if.then.i7

sw.epilog.btc8821a1ant_auto_rate_fb_retry.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_auto_rate_fb_retry.exit

if.then.i7:                                       ; preds = %sw.epilog
  %8 = zext i8 %arfr_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.217)
  switch i8 %arfr_type, label %if.then.i7.btc8821a1ant_auto_rate_fb_retry.exit_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb7.i
  ]

if.then.i7.btc8821a1ant_auto_rate_fb_retry.exit_crit_edge: ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_auto_rate_fb_retry.exit

sw.bb.i:                                          ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #5
  %btc_write_4byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %9 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btc_write_4byte.i, align 4
  %11 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 25), align 4
  tail call void %10(ptr noundef %btcoexist, i32 noundef 1072, i32 noundef %11) #3
  %12 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btc_write_4byte.i, align 4
  %14 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 26), align 4
  tail call void %13(ptr noundef %btcoexist, i32 noundef 1076, i32 noundef %14) #3
  br label %btc8821a1ant_auto_rate_fb_retry.exit

sw.bb7.i:                                         ; preds = %if.then.i7
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %15 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_get.i, align 4
  %call.i8 = call zeroext i1 %16(ptr noundef %btcoexist, i8 noundef zeroext 16, ptr noundef nonnull %wifi_under_b_mode.i) #3
  %17 = ptrtoint ptr %wifi_under_b_mode.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %wifi_under_b_mode.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool8.not.i = icmp eq i8 %18, 0
  %btc_write_4byte12.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %19 = ptrtoint ptr %btc_write_4byte12.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_write_4byte12.i, align 4
  call void %20(ptr noundef %btcoexist, i32 noundef 1072, i32 noundef 0) #3
  %21 = ptrtoint ptr %btc_write_4byte12.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %btc_write_4byte12.i, align 4
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #5
  call void %22(ptr noundef %btcoexist, i32 noundef 1076, i32 noundef 16843009) #3
  br label %btc8821a1ant_auto_rate_fb_retry.exit

if.else.i:                                        ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #5
  call void %22(ptr noundef %btcoexist, i32 noundef 1076, i32 noundef 67305985) #3
  br label %btc8821a1ant_auto_rate_fb_retry.exit

btc8821a1ant_auto_rate_fb_retry.exit:             ; preds = %if.else.i, %if.then9.i, %sw.bb.i, %if.then.i7.btc8821a1ant_auto_rate_fb_retry.exit_crit_edge, %sw.epilog.btc8821a1ant_auto_rate_fb_retry.exit_crit_edge
  %23 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 36), align 1
  store i8 %23, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 35), align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_under_b_mode.i) #3
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 38), align 1
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 37), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp.not.i9 = icmp eq i8 %24, 0
  br i1 %cmp.not.i9, label %btc8821a1ant_auto_rate_fb_retry.exit.btc8821a1ant_retry_limit.exit_crit_edge, label %sw.bb.i10

btc8821a1ant_auto_rate_fb_retry.exit.btc8821a1ant_retry_limit.exit_crit_edge: ; preds = %btc8821a1ant_auto_rate_fb_retry.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_retry_limit.exit

sw.bb.i10:                                        ; preds = %btc8821a1ant_auto_rate_fb_retry.exit
  call void @__sanitizer_cov_trace_pc() #5
  %btc_write_2byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 21
  %25 = ptrtoint ptr %btc_write_2byte.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %btc_write_2byte.i, align 4
  %27 = load i16, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 27), align 4
  call void %26(ptr noundef %btcoexist, i32 noundef 1066, i16 noundef zeroext %27) #3
  br label %btc8821a1ant_retry_limit.exit

btc8821a1ant_retry_limit.exit:                    ; preds = %sw.bb.i10, %btc8821a1ant_auto_rate_fb_retry.exit.btc8821a1ant_retry_limit.exit_crit_edge
  %28 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 38), align 1
  store i8 %28, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 37), align 2
  store i8 %ampdu_time_type, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 40), align 1
  %29 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 39), align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %ampdu_time_type)
  %cmp.not.i11 = icmp eq i8 %29, %ampdu_time_type
  br i1 %cmp.not.i11, label %btc8821a1ant_retry_limit.exit.btc8821a1ant_ampdu_max_time.exit_crit_edge, label %if.then.i12

btc8821a1ant_retry_limit.exit.btc8821a1ant_ampdu_max_time.exit_crit_edge: ; preds = %btc8821a1ant_retry_limit.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ampdu_max_time.exit

if.then.i12:                                      ; preds = %btc8821a1ant_retry_limit.exit
  %30 = zext i8 %ampdu_time_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.218)
  switch i8 %ampdu_time_type, label %if.then.i12.btc8821a1ant_ampdu_max_time.exit_crit_edge [
    i8 0, label %sw.bb.i13
    i8 1, label %sw.bb7.i14
  ]

if.then.i12.btc8821a1ant_ampdu_max_time.exit_crit_edge: ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ampdu_max_time.exit

sw.bb.i13:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #5
  %btc_write_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %31 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %btc_write_1byte.i, align 4
  %33 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 28), align 2
  %conv6.i = zext i8 %33 to i32
  call void %32(ptr noundef %btcoexist, i32 noundef 1110, i32 noundef %conv6.i) #3
  br label %btc8821a1ant_ampdu_max_time.exit

sw.bb7.i14:                                       ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #5
  %btc_write_1byte8.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %34 = ptrtoint ptr %btc_write_1byte8.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %btc_write_1byte8.i, align 4
  call void %35(ptr noundef %btcoexist, i32 noundef 1110, i32 noundef 56) #3
  br label %btc8821a1ant_ampdu_max_time.exit

btc8821a1ant_ampdu_max_time.exit:                 ; preds = %sw.bb7.i14, %sw.bb.i13, %if.then.i12.btc8821a1ant_ampdu_max_time.exit_crit_edge, %btc8821a1ant_retry_limit.exit.btc8821a1ant_ampdu_max_time.exit_crit_edge
  %36 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 40), align 1
  store i8 %36, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 39), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_limited_rx(ptr noundef %btcoexist, i1 noundef zeroext %bt_ctrl_agg_buf_size, i8 noundef zeroext %agg_buf_size) unnamed_addr #0 align 64 {
entry:
  %reject_rx_agg = alloca i8, align 1
  %bt_ctrl_rx_agg_size = alloca i8, align 1
  %rx_agg_size = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool2 = zext i1 %bt_ctrl_agg_buf_size to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg) #3
  %0 = ptrtoint ptr %reject_rx_agg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %reject_rx_agg, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size) #3
  %1 = ptrtoint ptr %bt_ctrl_rx_agg_size to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool2, ptr %bt_ctrl_rx_agg_size, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size) #3
  %2 = ptrtoint ptr %rx_agg_size to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %agg_buf_size, ptr %rx_agg_size, align 1
  %btc_set = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %3 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_set, align 4
  %call = call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg) #3
  %5 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_set, align 4
  %call7 = call zeroext i1 %6(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size) #3
  %7 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %btc_set, align 4
  %call9 = call zeroext i1 %8(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size) #3
  %9 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btc_set, align 4
  %call11 = call zeroext i1 %10(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_action_wifi_multi_port(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i49 = alloca [5 x i8], align 1
  %ap_enable.i50 = alloca i8, align 1
  %h2c_parameter.i = alloca [5 x i8], align 1
  %ap_enable.i = alloca i8, align 1
  %rssi_adjust_val.i38 = alloca i8, align 1
  %rssi_adjust_val.i = alloca i8, align 1
  %low_pwr_disable.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #3
  %0 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %1 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %2(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #3
  %3 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #3
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 31), align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.219)
  switch i8 %5, label %if.else22 [
    i8 3, label %if.then
    i8 4, label %entry.if.then21_crit_edge
    i8 5, label %entry.if.then21_crit_edge65
  ]

entry.if.then21_crit_edge65:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then21

entry.if.then21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then21

if.then:                                          ; preds = %entry
  %a2dp_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %7 = ptrtoint ptr %a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %a2dp_exist, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %adapter.i39 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %9 = ptrtoint ptr %adapter.i39 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter.i39, align 4
  br i1 %tobool.not, label %if.else10, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi_adjust_val.i) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4
  store i8 14, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef 14) #3
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1, !range !443
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %12)
  %cmp.i = icmp eq i8 %11, %12
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then3.if.end23.i_crit_edge

if.then3.if.end23.i_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i

land.lhs.true.i:                                  ; preds = %if.then3
  %13 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  %14 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %14)
  %cmp19.i = icmp eq i8 %13, %14
  br i1 %cmp19.i, label %land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge, label %land.lhs.true.i.if.end23.i_crit_edge

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i

land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ps_tdma.exit

if.end23.i:                                       ; preds = %land.lhs.true.i.if.end23.i_crit_edge, %if.then3.if.end23.i_crit_edge
  %15 = ptrtoint ptr %adapter.i39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i39, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i) #3
  %17 = ptrtoint ptr %ap_enable.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %ap_enable.i, align 1
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %18 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_get.i, align 4
  %call.i48 = call zeroext i1 %19(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i) #3
  %20 = ptrtoint ptr %ap_enable.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ap_enable.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.not = icmp eq i8 %21, 0
  br i1 %tobool.not.i.not, label %if.end23.i.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge, label %if.then5.i

if.end23.i.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_set_fw_ps_tdma.exit

if.then5.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %16, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131) #3
  br label %btc8821a1ant_set_fw_ps_tdma.exit

btc8821a1ant_set_fw_ps_tdma.exit:                 ; preds = %if.then5.i, %if.end23.i.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge
  %real_byte1.0.i = phi i8 [ 97, %if.then5.i ], [ 81, %if.end23.i.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge ]
  %real_byte5.0.i = phi i8 [ 52, %if.then5.i ], [ 20, %if.end23.i.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge ]
  %22 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %real_byte1.0.i, ptr %h2c_parameter.i, align 1
  %arrayidx18.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 30, ptr %arrayidx18.i, align 1
  %arrayidx19.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %arrayidx19.i, align 1
  %arrayidx20.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 16, ptr %arrayidx20.i, align 1
  %arrayidx21.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %real_byte5.0.i, ptr %arrayidx21.i, align 1
  store i8 %real_byte1.0.i, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i8 30, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 2), align 2
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 3), align 1
  store i8 %real_byte5.0.i, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 4), align 4
  %conv32.i = zext i8 %real_byte1.0.i to i32
  %conv44.i = zext i8 %real_byte5.0.i to i32
  %or45.i = or i32 %conv44.i, 503517184
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %16, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv32.i, i32 noundef %or45.i) #3
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %27 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %28(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i) #3
  %29 = ptrtoint ptr %rssi_adjust_val.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %rssi_adjust_val.i, align 1
  %30 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_set.i, align 4
  %call.i = call zeroext i1 %31(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %rssi_adjust_val.i) #3
  %32 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  store i8 %32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1
  %33 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  store i8 %33, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  br label %btc8821a1ant_ps_tdma.exit

btc8821a1ant_ps_tdma.exit:                        ; preds = %btc8821a1ant_set_fw_ps_tdma.exit, %land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi_adjust_val.i) #3
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #3
  br label %if.end24

if.else10:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi_adjust_val.i38) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4
  store i8 20, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef 20) #3
  %34 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1, !range !443
  %35 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %35)
  %cmp.i40 = icmp eq i8 %34, %35
  br i1 %cmp.i40, label %land.lhs.true.i42, label %if.else10.if.end23.i43_crit_edge

if.else10.if.end23.i43_crit_edge:                 ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i43

land.lhs.true.i42:                                ; preds = %if.else10
  %36 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  %37 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %37)
  %cmp19.i41 = icmp eq i8 %36, %37
  br i1 %cmp19.i41, label %land.lhs.true.i42.btc8821a1ant_ps_tdma.exit46_crit_edge, label %land.lhs.true.i42.if.end23.i43_crit_edge

land.lhs.true.i42.if.end23.i43_crit_edge:         ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i43

land.lhs.true.i42.btc8821a1ant_ps_tdma.exit46_crit_edge: ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ps_tdma.exit46

if.end23.i43:                                     ; preds = %land.lhs.true.i42.if.end23.i43_crit_edge, %if.else10.if.end23.i43_crit_edge
  %38 = ptrtoint ptr %adapter.i39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i39, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i49) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i50) #3
  %40 = ptrtoint ptr %ap_enable.i50 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %ap_enable.i50, align 1
  %btc_get.i52 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %41 = ptrtoint ptr %btc_get.i52 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_get.i52, align 4
  %call.i53 = call zeroext i1 %42(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i50) #3
  %43 = ptrtoint ptr %h2c_parameter.i49 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 97, ptr %h2c_parameter.i49, align 1
  %arrayidx18.i57 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i49, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx18.i57 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 53, ptr %arrayidx18.i57, align 1
  %arrayidx19.i58 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i49, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx19.i58 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 3, ptr %arrayidx19.i58, align 1
  %arrayidx20.i59 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i49, i32 0, i32 3
  %46 = ptrtoint ptr %arrayidx20.i59 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 17, ptr %arrayidx20.i59, align 1
  %arrayidx21.i60 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i49, i32 0, i32 4
  %47 = ptrtoint ptr %arrayidx21.i60 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 16, ptr %arrayidx21.i60, align 1
  store i8 97, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i8 53, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 2), align 2
  store i8 17, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 3), align 1
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 4), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef 97, i32 noundef 889393424) #3
  %btc_fill_h2c.i64 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %48 = ptrtoint ptr %btc_fill_h2c.i64 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %btc_fill_h2c.i64, align 4
  call void %49(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i49) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i50) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i49) #3
  %50 = ptrtoint ptr %rssi_adjust_val.i38 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %rssi_adjust_val.i38, align 1
  %51 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %btc_set.i, align 4
  %call.i45 = call zeroext i1 %52(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %rssi_adjust_val.i38) #3
  %53 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  store i8 %53, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1
  %54 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  store i8 %54, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  br label %btc8821a1ant_ps_tdma.exit46

btc8821a1ant_ps_tdma.exit46:                      ; preds = %if.end23.i43, %land.lhs.true.i42.btc8821a1ant_ps_tdma.exit46_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi_adjust_val.i38) #3
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #3
  br label %if.end24

if.then21:                                        ; preds = %entry.if.then21_crit_edge, %entry.if.then21_crit_edge65
  call fastcc void @btc8821a1ant_act_bt_sco_hid_only_busy(ptr noundef %btcoexist)
  br label %if.end24

if.else22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1515870810) #3
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then21, %btc8821a1ant_ps_tdma.exit46, %btc8821a1ant_ps_tdma.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_action_bt_inquiry(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i80 = alloca [5 x i8], align 1
  %ap_enable.i81 = alloca i8, align 1
  %h2c_parameter.i = alloca [5 x i8], align 1
  %ap_enable.i = alloca i8, align 1
  %low_pwr_disable.i74 = alloca i8, align 1
  %rssi_adjust_val.i65 = alloca i8, align 1
  %low_pwr_disable.i61 = alloca i8, align 1
  %rssi_adjust_val.i = alloca i8, align 1
  %low_pwr_disable.i56 = alloca i8, align 1
  %low_pwr_disable.i = alloca i8, align 1
  %wifi_connected = alloca i8, align 1
  %ap_enable = alloca i8, align 1
  %wifi_busy = alloca i8, align 1
  %bt_busy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_connected) #3
  %0 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %wifi_connected, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable) #3
  %1 = ptrtoint ptr %ap_enable to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %ap_enable, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_busy) #3
  %2 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %wifi_busy, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_busy) #3
  %3 = ptrtoint ptr %bt_busy to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bt_busy, align 1
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %4 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %5(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected) #3
  %6 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %btc_get, align 4
  %call3 = call zeroext i1 %7(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable) #3
  %8 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btc_get, align 4
  %call5 = call zeroext i1 %9(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %wifi_busy) #3
  %btc_set = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %10 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_set, align 4
  %call6 = call zeroext i1 %11(ptr noundef %btcoexist, i8 noundef zeroext 1, ptr noundef nonnull %bt_busy) #3
  %12 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %wifi_connected, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %14 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 21), align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not = icmp eq i8 %14, 0
  br i1 %tobool7.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #3
  %15 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %16 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_set, align 4
  %call5.i = call zeroext i1 %17(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #3
  %18 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_set, align 4
  %call7.i = call zeroext i1 %19(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #3
  call fastcc void @btc8821a1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765) #3
  br label %if.end27

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %sco_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %20 = ptrtoint ptr %sco_exist to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sco_exist, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool8.not = icmp eq i8 %21, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.else.if.then12_crit_edge

if.else.if.then12_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.else
  %a2dp_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %22 = ptrtoint ptr %a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %a2dp_exist, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool9.not = icmp eq i8 %23, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then12

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %hid_only = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 7
  %24 = ptrtoint ptr %hid_only to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %hid_only, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool11.not = icmp eq i8 %25, 0
  br i1 %tobool11.not, label %if.else19, label %lor.lhs.false10.if.then12_crit_edge

lor.lhs.false10.if.then12_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false10.if.then12_crit_edge, %lor.lhs.false.if.then12_crit_edge, %if.else.if.then12_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i56) #3
  %26 = ptrtoint ptr %low_pwr_disable.i56 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %low_pwr_disable.i56, align 1
  %27 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %btc_set, align 4
  %call5.i58 = call zeroext i1 %28(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i56) #3
  %29 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %btc_set, align 4
  %call7.i59 = call zeroext i1 %30(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i56) #3
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %31 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi_adjust_val.i) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4
  store i8 32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %32, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef 32) #3
  %33 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1, !range !443
  %34 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %34)
  %cmp.i = icmp eq i8 %33, %34
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then12.if.end23.i_crit_edge

if.then12.if.end23.i_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i

land.lhs.true.i:                                  ; preds = %if.then12
  %35 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  %36 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %36)
  %cmp19.i = icmp eq i8 %35, %36
  br i1 %cmp19.i, label %land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge, label %land.lhs.true.i.if.end23.i_crit_edge

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i

land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ps_tdma.exit

if.end23.i:                                       ; preds = %land.lhs.true.i.if.end23.i_crit_edge, %if.then12.if.end23.i_crit_edge
  %37 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i) #3
  %39 = ptrtoint ptr %ap_enable.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %ap_enable.i, align 1
  %40 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %btc_get, align 4
  %call.i79 = call zeroext i1 %41(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i) #3
  %42 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 97, ptr %h2c_parameter.i, align 1
  %arrayidx18.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 53, ptr %arrayidx18.i, align 1
  %arrayidx19.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 2
  %44 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 3, ptr %arrayidx19.i, align 1
  %arrayidx20.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 3
  %45 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 17, ptr %arrayidx20.i, align 1
  %arrayidx21.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 4
  %46 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 17, ptr %arrayidx21.i, align 1
  store i8 97, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i8 53, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 2), align 2
  store i8 17, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 3), align 1
  store i8 17, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 4), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %38, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef 97, i32 noundef 889393425) #3
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %47 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %48(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i) #3
  %49 = ptrtoint ptr %rssi_adjust_val.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %rssi_adjust_val.i, align 1
  %50 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %btc_set, align 4
  %call.i = call zeroext i1 %51(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %rssi_adjust_val.i) #3
  %52 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  store i8 %52, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1
  %53 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  store i8 %53, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  br label %btc8821a1ant_ps_tdma.exit

btc8821a1ant_ps_tdma.exit:                        ; preds = %if.end23.i, %land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi_adjust_val.i) #3
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #3
  br label %if.end27

if.else19:                                        ; preds = %lor.lhs.false10
  %pan_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %54 = ptrtoint ptr %pan_exist to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %pan_exist, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool20.not = icmp eq i8 %55, 0
  br i1 %tobool20.not, label %lor.lhs.false21, label %if.else19.if.then23_crit_edge

if.else19.if.then23_crit_edge:                    ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then23

lor.lhs.false21:                                  ; preds = %if.else19
  %56 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %wifi_busy, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool22.not = icmp eq i8 %57, 0
  br i1 %tobool22.not, label %if.else24, label %lor.lhs.false21.if.then23_crit_edge

lor.lhs.false21.if.then23_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false21.if.then23_crit_edge, %if.else19.if.then23_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i61) #3
  %58 = ptrtoint ptr %low_pwr_disable.i61 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %low_pwr_disable.i61, align 1
  %59 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %btc_set, align 4
  %call5.i63 = call zeroext i1 %60(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i61) #3
  %61 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %btc_set, align 4
  %call7.i64 = call zeroext i1 %62(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i61) #3
  %adapter.i66 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %63 = ptrtoint ptr %adapter.i66 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %adapter.i66, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi_adjust_val.i65) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4
  store i8 20, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %64, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef 20) #3
  %65 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1, !range !443
  %66 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %65, i8 %66)
  %cmp.i67 = icmp eq i8 %65, %66
  br i1 %cmp.i67, label %land.lhs.true.i69, label %if.then23.if.end23.i70_crit_edge

if.then23.if.end23.i70_crit_edge:                 ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i70

land.lhs.true.i69:                                ; preds = %if.then23
  %67 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  %68 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %68)
  %cmp19.i68 = icmp eq i8 %67, %68
  br i1 %cmp19.i68, label %land.lhs.true.i69.btc8821a1ant_ps_tdma.exit73_crit_edge, label %land.lhs.true.i69.if.end23.i70_crit_edge

land.lhs.true.i69.if.end23.i70_crit_edge:         ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i70

land.lhs.true.i69.btc8821a1ant_ps_tdma.exit73_crit_edge: ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ps_tdma.exit73

if.end23.i70:                                     ; preds = %land.lhs.true.i69.if.end23.i70_crit_edge, %if.then23.if.end23.i70_crit_edge
  %69 = ptrtoint ptr %adapter.i66 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %adapter.i66, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i80) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i81) #3
  %71 = ptrtoint ptr %ap_enable.i81 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %ap_enable.i81, align 1
  %72 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %btc_get, align 4
  %call.i84 = call zeroext i1 %73(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i81) #3
  %74 = ptrtoint ptr %h2c_parameter.i80 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 97, ptr %h2c_parameter.i80, align 1
  %arrayidx18.i86 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i80, i32 0, i32 1
  %75 = ptrtoint ptr %arrayidx18.i86 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 53, ptr %arrayidx18.i86, align 1
  %arrayidx19.i87 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i80, i32 0, i32 2
  %76 = ptrtoint ptr %arrayidx19.i87 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 3, ptr %arrayidx19.i87, align 1
  %arrayidx20.i88 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i80, i32 0, i32 3
  %77 = ptrtoint ptr %arrayidx20.i88 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 17, ptr %arrayidx20.i88, align 1
  %arrayidx21.i89 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i80, i32 0, i32 4
  %78 = ptrtoint ptr %arrayidx21.i89 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 16, ptr %arrayidx21.i89, align 1
  store i8 97, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i8 53, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 2), align 2
  store i8 17, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 3), align 1
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 4), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %70, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef 97, i32 noundef 889393424) #3
  %btc_fill_h2c.i90 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %79 = ptrtoint ptr %btc_fill_h2c.i90 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %btc_fill_h2c.i90, align 4
  call void %80(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i80) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i81) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i80) #3
  %81 = ptrtoint ptr %rssi_adjust_val.i65 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %rssi_adjust_val.i65, align 1
  %82 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %btc_set, align 4
  %call.i72 = call zeroext i1 %83(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %rssi_adjust_val.i65) #3
  %84 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  store i8 %84, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1
  %85 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  store i8 %85, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  br label %btc8821a1ant_ps_tdma.exit73

btc8821a1ant_ps_tdma.exit73:                      ; preds = %if.end23.i70, %land.lhs.true.i69.btc8821a1ant_ps_tdma.exit73_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi_adjust_val.i65) #3
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #3
  br label %if.end27

if.else24:                                        ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i74) #3
  %86 = ptrtoint ptr %low_pwr_disable.i74 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %low_pwr_disable.i74, align 1
  %87 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %btc_set, align 4
  %call5.i76 = call zeroext i1 %88(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i74) #3
  %89 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %btc_set, align 4
  %call7.i77 = call zeroext i1 %90(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i74) #3
  call fastcc void @btc8821a1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef -1431655766, i32 noundef -1431655766) #3
  br label %if.end27

if.end27:                                         ; preds = %if.else24, %btc8821a1ant_ps_tdma.exit73, %btc8821a1ant_ps_tdma.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_busy) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_action_hs(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i = alloca [5 x i8], align 1
  %ap_enable.i = alloca i8, align 1
  %rssi_adjust_val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi_adjust_val.i) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4
  store i8 5, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef 5) #3
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1, !range !443
  %3 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %3)
  %cmp.i = icmp eq i8 %2, %3
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end23.i_crit_edge

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i

land.lhs.true.i:                                  ; preds = %entry
  %4 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %5)
  %cmp19.i = icmp eq i8 %4, %5
  br i1 %cmp19.i, label %land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge, label %land.lhs.true.i.if.end23.i_crit_edge

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i

land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ps_tdma.exit

if.end23.i:                                       ; preds = %land.lhs.true.i.if.end23.i_crit_edge, %entry.if.end23.i_crit_edge
  %6 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i) #3
  %8 = ptrtoint ptr %ap_enable.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ap_enable.i, align 1
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %9 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btc_get.i, align 4
  %call.i3 = call zeroext i1 %10(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i) #3
  %11 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 97, ptr %h2c_parameter.i, align 1
  %arrayidx18.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 21, ptr %arrayidx18.i, align 1
  %arrayidx19.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %arrayidx19.i, align 1
  %arrayidx20.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 17, ptr %arrayidx20.i, align 1
  %arrayidx21.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 16, ptr %arrayidx21.i, align 1
  store i8 97, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i8 21, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 2), align 2
  store i8 17, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 3), align 1
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 4), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef 97, i32 noundef 352522512) #3
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %16 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %17(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i) #3
  %18 = ptrtoint ptr %rssi_adjust_val.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %rssi_adjust_val.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %19 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_set.i, align 4
  %call.i = call zeroext i1 %20(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %rssi_adjust_val.i) #3
  %21 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  store i8 %21, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1
  %22 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  store i8 %22, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  br label %btc8821a1ant_ps_tdma.exit

btc8821a1ant_ps_tdma.exit:                        ; preds = %if.end23.i, %land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi_adjust_val.i) #3
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 1515870810, i32 noundef 1515870810) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_act_wifi_not_conn_scan(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i49 = alloca [5 x i8], align 1
  %ap_enable.i50 = alloca i8, align 1
  %h2c_parameter.i = alloca [5 x i8], align 1
  %ap_enable.i = alloca i8, align 1
  %rssi_adjust_val.i38 = alloca i8, align 1
  %rssi_adjust_val.i = alloca i8, align 1
  %low_pwr_disable.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #3
  %0 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %1 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %2(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #3
  %3 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #3
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 31), align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.220)
  switch i8 %5, label %if.else22 [
    i8 3, label %if.then
    i8 4, label %entry.if.then21_crit_edge
    i8 5, label %entry.if.then21_crit_edge65
  ]

entry.if.then21_crit_edge65:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then21

entry.if.then21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then21

if.then:                                          ; preds = %entry
  %a2dp_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %7 = ptrtoint ptr %a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %a2dp_exist, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %adapter.i39 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %9 = ptrtoint ptr %adapter.i39 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter.i39, align 4
  br i1 %tobool.not, label %if.else10, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi_adjust_val.i) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4
  store i8 14, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef 14) #3
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1, !range !443
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %12)
  %cmp.i = icmp eq i8 %11, %12
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then3.if.end23.i_crit_edge

if.then3.if.end23.i_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i

land.lhs.true.i:                                  ; preds = %if.then3
  %13 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  %14 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %14)
  %cmp19.i = icmp eq i8 %13, %14
  br i1 %cmp19.i, label %land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge, label %land.lhs.true.i.if.end23.i_crit_edge

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i

land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ps_tdma.exit

if.end23.i:                                       ; preds = %land.lhs.true.i.if.end23.i_crit_edge, %if.then3.if.end23.i_crit_edge
  %15 = ptrtoint ptr %adapter.i39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i39, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i) #3
  %17 = ptrtoint ptr %ap_enable.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %ap_enable.i, align 1
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %18 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_get.i, align 4
  %call.i48 = call zeroext i1 %19(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i) #3
  %20 = ptrtoint ptr %ap_enable.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ap_enable.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.not = icmp eq i8 %21, 0
  br i1 %tobool.not.i.not, label %if.end23.i.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge, label %if.then5.i

if.end23.i.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_set_fw_ps_tdma.exit

if.then5.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %16, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131) #3
  br label %btc8821a1ant_set_fw_ps_tdma.exit

btc8821a1ant_set_fw_ps_tdma.exit:                 ; preds = %if.then5.i, %if.end23.i.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge
  %real_byte1.0.i = phi i8 [ 97, %if.then5.i ], [ 81, %if.end23.i.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge ]
  %real_byte5.0.i = phi i8 [ 52, %if.then5.i ], [ 20, %if.end23.i.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge ]
  %22 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %real_byte1.0.i, ptr %h2c_parameter.i, align 1
  %arrayidx18.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 30, ptr %arrayidx18.i, align 1
  %arrayidx19.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %arrayidx19.i, align 1
  %arrayidx20.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 16, ptr %arrayidx20.i, align 1
  %arrayidx21.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %real_byte5.0.i, ptr %arrayidx21.i, align 1
  store i8 %real_byte1.0.i, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i8 30, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 2), align 2
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 3), align 1
  store i8 %real_byte5.0.i, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 4), align 4
  %conv32.i = zext i8 %real_byte1.0.i to i32
  %conv44.i = zext i8 %real_byte5.0.i to i32
  %or45.i = or i32 %conv44.i, 503517184
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %16, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv32.i, i32 noundef %or45.i) #3
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %27 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %28(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i) #3
  %29 = ptrtoint ptr %rssi_adjust_val.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %rssi_adjust_val.i, align 1
  %30 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_set.i, align 4
  %call.i = call zeroext i1 %31(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %rssi_adjust_val.i) #3
  %32 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  store i8 %32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1
  %33 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  store i8 %33, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  br label %btc8821a1ant_ps_tdma.exit

btc8821a1ant_ps_tdma.exit:                        ; preds = %btc8821a1ant_set_fw_ps_tdma.exit, %land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi_adjust_val.i) #3
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #3
  br label %if.end24

if.else10:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi_adjust_val.i38) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4
  store i8 20, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef 20) #3
  %34 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1, !range !443
  %35 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %35)
  %cmp.i40 = icmp eq i8 %34, %35
  br i1 %cmp.i40, label %land.lhs.true.i42, label %if.else10.if.end23.i43_crit_edge

if.else10.if.end23.i43_crit_edge:                 ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i43

land.lhs.true.i42:                                ; preds = %if.else10
  %36 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  %37 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %37)
  %cmp19.i41 = icmp eq i8 %36, %37
  br i1 %cmp19.i41, label %land.lhs.true.i42.btc8821a1ant_ps_tdma.exit46_crit_edge, label %land.lhs.true.i42.if.end23.i43_crit_edge

land.lhs.true.i42.if.end23.i43_crit_edge:         ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i43

land.lhs.true.i42.btc8821a1ant_ps_tdma.exit46_crit_edge: ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ps_tdma.exit46

if.end23.i43:                                     ; preds = %land.lhs.true.i42.if.end23.i43_crit_edge, %if.else10.if.end23.i43_crit_edge
  %38 = ptrtoint ptr %adapter.i39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i39, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i49) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i50) #3
  %40 = ptrtoint ptr %ap_enable.i50 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %ap_enable.i50, align 1
  %btc_get.i52 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %41 = ptrtoint ptr %btc_get.i52 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_get.i52, align 4
  %call.i53 = call zeroext i1 %42(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i50) #3
  %43 = ptrtoint ptr %h2c_parameter.i49 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 97, ptr %h2c_parameter.i49, align 1
  %arrayidx18.i57 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i49, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx18.i57 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 53, ptr %arrayidx18.i57, align 1
  %arrayidx19.i58 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i49, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx19.i58 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 3, ptr %arrayidx19.i58, align 1
  %arrayidx20.i59 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i49, i32 0, i32 3
  %46 = ptrtoint ptr %arrayidx20.i59 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 17, ptr %arrayidx20.i59, align 1
  %arrayidx21.i60 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i49, i32 0, i32 4
  %47 = ptrtoint ptr %arrayidx21.i60 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 16, ptr %arrayidx21.i60, align 1
  store i8 97, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i8 53, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 2), align 2
  store i8 17, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 3), align 1
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 4), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef 97, i32 noundef 889393424) #3
  %btc_fill_h2c.i64 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %48 = ptrtoint ptr %btc_fill_h2c.i64 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %btc_fill_h2c.i64, align 4
  call void %49(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i49) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i50) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i49) #3
  %50 = ptrtoint ptr %rssi_adjust_val.i38 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %rssi_adjust_val.i38, align 1
  %51 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %btc_set.i, align 4
  %call.i45 = call zeroext i1 %52(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %rssi_adjust_val.i38) #3
  %53 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  store i8 %53, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1
  %54 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  store i8 %54, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  br label %btc8821a1ant_ps_tdma.exit46

btc8821a1ant_ps_tdma.exit46:                      ; preds = %if.end23.i43, %land.lhs.true.i42.btc8821a1ant_ps_tdma.exit46_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi_adjust_val.i38) #3
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #3
  br label %if.end24

if.then21:                                        ; preds = %entry.if.then21_crit_edge, %entry.if.then21_crit_edge65
  call fastcc void @btc8821a1ant_act_bt_sco_hid_only_busy(ptr noundef %btcoexist)
  br label %if.end24

if.else22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1515870810) #3
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then21, %btc8821a1ant_ps_tdma.exit46, %btc8821a1ant_ps_tdma.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_action_wifi_connected_scan(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i37 = alloca [5 x i8], align 1
  %ap_enable.i38 = alloca i8, align 1
  %h2c_parameter.i = alloca [5 x i8], align 1
  %ap_enable.i = alloca i8, align 1
  %rssi_adjust_val.i26 = alloca i8, align 1
  %rssi_adjust_val.i = alloca i8, align 1
  %low_pwr_disable.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #3
  %0 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %1 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %2(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #3
  %3 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #3
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 31), align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.221)
  switch i8 %5, label %if.else14 [
    i8 3, label %if.then
    i8 4, label %entry.if.then13_crit_edge
    i8 5, label %entry.if.then13_crit_edge53
  ]

entry.if.then13_crit_edge53:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then13

entry.if.then13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then13

if.then:                                          ; preds = %entry
  %a2dp_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %7 = ptrtoint ptr %a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %a2dp_exist, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %adapter.i27 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %9 = ptrtoint ptr %adapter.i27 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter.i27, align 4
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi_adjust_val.i) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4
  store i8 14, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef 14) #3
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1, !range !443
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %12)
  %cmp.i = icmp eq i8 %11, %12
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then3.if.end23.i_crit_edge

if.then3.if.end23.i_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i

land.lhs.true.i:                                  ; preds = %if.then3
  %13 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  %14 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %14)
  %cmp19.i = icmp eq i8 %13, %14
  br i1 %cmp19.i, label %land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge, label %land.lhs.true.i.if.end23.i_crit_edge

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i

land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ps_tdma.exit

if.end23.i:                                       ; preds = %land.lhs.true.i.if.end23.i_crit_edge, %if.then3.if.end23.i_crit_edge
  %15 = ptrtoint ptr %adapter.i27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i27, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i) #3
  %17 = ptrtoint ptr %ap_enable.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %ap_enable.i, align 1
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %18 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_get.i, align 4
  %call.i36 = call zeroext i1 %19(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i) #3
  %20 = ptrtoint ptr %ap_enable.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ap_enable.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.not = icmp eq i8 %21, 0
  br i1 %tobool.not.i.not, label %if.end23.i.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge, label %if.then5.i

if.end23.i.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_set_fw_ps_tdma.exit

if.then5.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %16, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131) #3
  br label %btc8821a1ant_set_fw_ps_tdma.exit

btc8821a1ant_set_fw_ps_tdma.exit:                 ; preds = %if.then5.i, %if.end23.i.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge
  %real_byte1.0.i = phi i8 [ 97, %if.then5.i ], [ 81, %if.end23.i.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge ]
  %real_byte5.0.i = phi i8 [ 52, %if.then5.i ], [ 20, %if.end23.i.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge ]
  %22 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %real_byte1.0.i, ptr %h2c_parameter.i, align 1
  %arrayidx18.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 30, ptr %arrayidx18.i, align 1
  %arrayidx19.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %arrayidx19.i, align 1
  %arrayidx20.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 16, ptr %arrayidx20.i, align 1
  %arrayidx21.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %real_byte5.0.i, ptr %arrayidx21.i, align 1
  store i8 %real_byte1.0.i, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i8 30, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 2), align 2
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 3), align 1
  store i8 %real_byte5.0.i, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 4), align 4
  %conv32.i = zext i8 %real_byte1.0.i to i32
  %conv44.i = zext i8 %real_byte5.0.i to i32
  %or45.i = or i32 %conv44.i, 503517184
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %16, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv32.i, i32 noundef %or45.i) #3
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %27 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %28(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i) #3
  %29 = ptrtoint ptr %rssi_adjust_val.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %rssi_adjust_val.i, align 1
  %30 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_set.i, align 4
  %call.i = call zeroext i1 %31(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %rssi_adjust_val.i) #3
  %32 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  store i8 %32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1
  %33 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  store i8 %33, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  br label %btc8821a1ant_ps_tdma.exit

btc8821a1ant_ps_tdma.exit:                        ; preds = %btc8821a1ant_set_fw_ps_tdma.exit, %land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi_adjust_val.i) #3
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #3
  br label %if.end16

if.else:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi_adjust_val.i26) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4
  store i8 20, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef 20) #3
  %34 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1, !range !443
  %35 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %35)
  %cmp.i28 = icmp eq i8 %34, %35
  br i1 %cmp.i28, label %land.lhs.true.i30, label %if.else.if.end23.i31_crit_edge

if.else.if.end23.i31_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i31

land.lhs.true.i30:                                ; preds = %if.else
  %36 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  %37 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %37)
  %cmp19.i29 = icmp eq i8 %36, %37
  br i1 %cmp19.i29, label %land.lhs.true.i30.btc8821a1ant_ps_tdma.exit34_crit_edge, label %land.lhs.true.i30.if.end23.i31_crit_edge

land.lhs.true.i30.if.end23.i31_crit_edge:         ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i31

land.lhs.true.i30.btc8821a1ant_ps_tdma.exit34_crit_edge: ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ps_tdma.exit34

if.end23.i31:                                     ; preds = %land.lhs.true.i30.if.end23.i31_crit_edge, %if.else.if.end23.i31_crit_edge
  %38 = ptrtoint ptr %adapter.i27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i27, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i37) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i38) #3
  %40 = ptrtoint ptr %ap_enable.i38 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %ap_enable.i38, align 1
  %btc_get.i40 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %41 = ptrtoint ptr %btc_get.i40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_get.i40, align 4
  %call.i41 = call zeroext i1 %42(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i38) #3
  %43 = ptrtoint ptr %h2c_parameter.i37 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 97, ptr %h2c_parameter.i37, align 1
  %arrayidx18.i45 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i37, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx18.i45 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 53, ptr %arrayidx18.i45, align 1
  %arrayidx19.i46 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i37, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx19.i46 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 3, ptr %arrayidx19.i46, align 1
  %arrayidx20.i47 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i37, i32 0, i32 3
  %46 = ptrtoint ptr %arrayidx20.i47 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 17, ptr %arrayidx20.i47, align 1
  %arrayidx21.i48 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i37, i32 0, i32 4
  %47 = ptrtoint ptr %arrayidx21.i48 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 16, ptr %arrayidx21.i48, align 1
  store i8 97, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i8 53, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 2), align 2
  store i8 17, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 3), align 1
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 4), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef 97, i32 noundef 889393424) #3
  %btc_fill_h2c.i52 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %48 = ptrtoint ptr %btc_fill_h2c.i52 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %btc_fill_h2c.i52, align 4
  call void %49(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i37) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i38) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i37) #3
  %50 = ptrtoint ptr %rssi_adjust_val.i26 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %rssi_adjust_val.i26, align 1
  %51 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %btc_set.i, align 4
  %call.i33 = call zeroext i1 %52(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %rssi_adjust_val.i26) #3
  %53 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  store i8 %53, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1
  %54 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  store i8 %54, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  br label %btc8821a1ant_ps_tdma.exit34

btc8821a1ant_ps_tdma.exit34:                      ; preds = %if.end23.i31, %land.lhs.true.i30.btc8821a1ant_ps_tdma.exit34_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi_adjust_val.i26) #3
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #3
  br label %if.end16

if.then13:                                        ; preds = %entry.if.then13_crit_edge, %entry.if.then13_crit_edge53
  call fastcc void @btc8821a1ant_act_bt_sco_hid_only_busy(ptr noundef %btcoexist)
  br label %if.end16

if.else14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1515870810) #3
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then13, %btc8821a1ant_ps_tdma.exit34, %btc8821a1ant_ps_tdma.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_action_wifi_not_connected(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #3
  %0 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %1 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %2(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #3
  %3 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #3
  call fastcc void @btc8821a1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_action_wifi_connected(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i113 = alloca i8, align 1
  %low_pwr_disable.i = alloca i8, align 1
  %wifi_busy = alloca i8, align 1
  %scan = alloca i8, align 1
  %link = alloca i8, align 1
  %roam = alloca i8, align 1
  %under_4way = alloca i8, align 1
  %ap_enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_busy) #3
  %2 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %wifi_busy, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scan) #3
  %3 = ptrtoint ptr %scan to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %scan, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #3
  %4 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %link, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %roam) #3
  %5 = ptrtoint ptr %roam to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %roam, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %under_4way) #3
  %6 = ptrtoint ptr %under_4way to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %under_4way, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable) #3
  %7 = ptrtoint ptr %ap_enable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %ap_enable, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.140) #3
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %8 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %9(ptr noundef %btcoexist, i8 noundef zeroext 12, ptr noundef nonnull %under_4way) #3
  %10 = ptrtoint ptr %under_4way to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %under_4way, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_act_wifi_conn_sp_pkt(ptr noundef %btcoexist)
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.141) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btc_get, align 4
  %call2 = call zeroext i1 %13(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %scan) #3
  %14 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_get, align 4
  %call4 = call zeroext i1 %15(ptr noundef %btcoexist, i8 noundef zeroext 6, ptr noundef nonnull %link) #3
  %16 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_get, align 4
  %call6 = call zeroext i1 %17(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %roam) #3
  %18 = ptrtoint ptr %scan to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %scan, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool7.not = icmp eq i8 %19, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.then13

lor.lhs.false:                                    ; preds = %if.end
  %20 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %link, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool8.not = icmp eq i8 %21, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %22 = ptrtoint ptr %roam to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %roam, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool10.not = icmp eq i8 %23, 0
  br i1 %tobool10.not, label %if.end15, label %lor.lhs.false9.if.else_crit_edge

lor.lhs.false9.if.else_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_action_wifi_connected_scan(ptr noundef %btcoexist)
  br label %if.end14

if.else:                                          ; preds = %lor.lhs.false9.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  call fastcc void @btc8821a1ant_act_wifi_conn_sp_pkt(ptr noundef %btcoexist)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then13
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.142) #3
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false9
  %24 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_get, align 4
  %call17 = call zeroext i1 %25(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable) #3
  %26 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %btc_get, align 4
  %call19 = call zeroext i1 %27(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %wifi_busy) #3
  %28 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 31), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp = icmp eq i8 %28, 3
  br i1 %cmp, label %land.lhs.true, label %if.end15.if.else33_crit_edge

if.end15.if.else33_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else33

land.lhs.true:                                    ; preds = %if.end15
  %29 = ptrtoint ptr %ap_enable to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ap_enable, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool21.not = icmp eq i8 %30, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %land.lhs.true.if.else33_crit_edge

land.lhs.true.if.else33_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else33

land.lhs.true22:                                  ; preds = %land.lhs.true
  %hid_only = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 7
  %31 = ptrtoint ptr %hid_only to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %hid_only, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool23.not = icmp eq i8 %32, 0
  br i1 %tobool23.not, label %if.then24, label %land.lhs.true22.if.else33_crit_edge

land.lhs.true22.if.else33_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else33

if.then24:                                        ; preds = %land.lhs.true22
  %33 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %wifi_busy, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool25.not = icmp eq i8 %34, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %if.then24.if.else31_crit_edge

if.then24.if.else31_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else31

land.lhs.true26:                                  ; preds = %if.then24
  %a2dp_only = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 5
  %35 = ptrtoint ptr %a2dp_only to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %a2dp_only, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool28.not = icmp eq i8 %36, 0
  br i1 %tobool28.not, label %land.lhs.true26.if.else31_crit_edge, label %if.then30

land.lhs.true26.if.else31_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else31

if.then30:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #3
  %37 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %38 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %39(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #3
  %40 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %41(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #3
  br label %if.end34

if.else31:                                        ; preds = %land.lhs.true26.if.else31_crit_edge, %if.then24.if.else31_crit_edge
  call fastcc void @btc8821a1ant_power_save_state(ptr noundef %btcoexist, i8 noundef zeroext 1, i8 noundef zeroext 80, i8 noundef zeroext 4)
  br label %if.end34

if.else33:                                        ; preds = %land.lhs.true22.if.else33_crit_edge, %land.lhs.true.if.else33_crit_edge, %if.end15.if.else33_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i113) #3
  %42 = ptrtoint ptr %low_pwr_disable.i113 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %low_pwr_disable.i113, align 1
  %btc_set.i114 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %43 = ptrtoint ptr %btc_set.i114 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %btc_set.i114, align 4
  %call5.i115 = call zeroext i1 %44(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i113) #3
  %45 = ptrtoint ptr %btc_set.i114 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %btc_set.i114, align 4
  %call7.i116 = call zeroext i1 %46(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i113) #3
  br label %if.end34

if.end34:                                         ; preds = %if.else33, %if.else31, %if.then30
  %47 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %wifi_busy, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool35.not = icmp eq i8 %48, 0
  %49 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 31), align 1
  br i1 %tobool35.not, label %if.then36, label %if.else56

if.then36:                                        ; preds = %if.end34
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.222)
  switch i8 %49, label %if.else53 [
    i8 3, label %if.then41
    i8 4, label %if.then36.if.then52_crit_edge
    i8 5, label %if.then36.if.then52_crit_edge117
  ]

if.then36.if.then52_crit_edge117:                 ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then52

if.then36.if.then52_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then52

if.then41:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_act_wifi_con_bt_acl_busy(ptr noundef %btcoexist, i8 noundef zeroext 4)
  br label %cleanup

if.then52:                                        ; preds = %if.then36.if.then52_crit_edge, %if.then36.if.then52_crit_edge117
  call fastcc void @btc8821a1ant_act_bt_sco_hid_only_busy(ptr noundef %btcoexist)
  br label %cleanup

if.else53:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1515870810) #3
  br label %cleanup

if.else56:                                        ; preds = %if.end34
  %51 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.223)
  switch i8 %49, label %if.else73 [
    i8 3, label %if.then61
    i8 4, label %if.else56.if.then72_crit_edge
    i8 5, label %if.else56.if.then72_crit_edge118
  ]

if.else56.if.then72_crit_edge118:                 ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then72

if.else56.if.then72_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then72

if.then61:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_act_wifi_con_bt_acl_busy(ptr noundef %btcoexist, i8 noundef zeroext 5)
  br label %cleanup

if.then72:                                        ; preds = %if.else56.if.then72_crit_edge, %if.else56.if.then72_crit_edge118
  call fastcc void @btc8821a1ant_act_bt_sco_hid_only_busy(ptr noundef %btcoexist)
  br label %cleanup

if.else73:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1515870810) #3
  br label %cleanup

cleanup:                                          ; preds = %if.else73, %if.then72, %if.then61, %if.else53, %if.then52, %if.then41, %if.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %under_4way) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %roam) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scan) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a1ant_connect_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %wifi_connected = alloca i8, align 1
  %bt_hs_on = alloca i8, align 1
  %wifi_link_status = alloca i32, align 4
  %wifi_under_5g = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_connected) #3
  %2 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %wifi_connected, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on) #3
  %3 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bt_hs_on, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_link_status) #3
  %4 = ptrtoint ptr %wifi_link_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wifi_link_status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_under_5g) #3
  %5 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %wifi_under_5g, align 1
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %6 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %manual_control, align 2, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %8 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %stop_coex_dm, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %10 = load i8, ptr @glcoex_sta_8821a_1ant, align 4, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %11 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %12(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef nonnull %wifi_under_5g) #3
  %13 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %wifi_under_5g, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not = icmp eq i8 %14, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.83) #3
  call fastcc void @btc8821a1ant_coex_under_5g(ptr noundef %btcoexist)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp = icmp eq i8 %type, 1
  %. = zext i1 %cmp to i8
  %.str.90..str.91 = select i1 %cmp, ptr @.str.90, ptr @.str.91
  store i8 %., ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 21), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.90..str.91) #3
  store i32 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 41), align 4
  %15 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_get, align 4
  %call13 = call zeroext i1 %16(ptr noundef %btcoexist, i8 noundef zeroext 27, ptr noundef nonnull %wifi_link_status) #3
  %17 = ptrtoint ptr %wifi_link_status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wifi_link_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %18)
  %cmp14 = icmp ugt i32 %18, 131071
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_limited_tx(ptr noundef %btcoexist, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call fastcc void @btc8821a1ant_limited_rx(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 5)
  call fastcc void @btc8821a1ant_action_wifi_multi_port(ptr noundef %btcoexist)
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %19 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_get, align 4
  %call20 = call zeroext i1 %20(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on) #3
  %21 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 20), align 4, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool21.not = icmp eq i8 %21, 0
  br i1 %tobool21.not, label %if.else23, label %if.then22

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_action_bt_inquiry(ptr noundef %btcoexist)
  br label %cleanup

if.else23:                                        ; preds = %if.end18
  %22 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bt_hs_on, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool24.not = icmp eq i8 %23, 0
  br i1 %tobool24.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_action_hs(ptr noundef %btcoexist)
  br label %cleanup

if.end27:                                         ; preds = %if.else23
  br i1 %cmp, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.90) #3
  call fastcc void @btc8821a1ant_act_wifi_not_conn_scan(ptr noundef %btcoexist)
  br label %cleanup

if.else32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp34 = icmp eq i8 %type, 0
  br i1 %cmp34, label %if.then36, label %if.else32.cleanup_crit_edge

if.else32.cleanup_crit_edge:                      ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then36:                                        ; preds = %if.else32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.91) #3
  %24 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_get, align 4
  %call38 = call zeroext i1 %25(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected) #3
  %26 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %wifi_connected, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool39.not = icmp eq i8 %27, 0
  br i1 %tobool39.not, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_action_wifi_not_connected(ptr noundef %btcoexist)
  br label %cleanup

if.else41:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_action_wifi_connected(ptr noundef %btcoexist)
  br label %cleanup

cleanup:                                          ; preds = %if.else41, %if.then40, %if.else32.cleanup_crit_edge, %if.then31, %if.then25, %if.then22, %if.then16, %if.then5, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_under_5g) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_link_status) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a1ant_media_status_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter = alloca [3 x i8], align 1
  %wifi_bw = alloca i32, align 4
  %wifi_central_chnl = alloca i8, align 1
  %wifi_under_5g = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %h2c_parameter) #3
  %2 = call ptr @memset(ptr %h2c_parameter, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #3
  %3 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !444
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_central_chnl) #3
  %4 = ptrtoint ptr %wifi_central_chnl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %wifi_central_chnl, align 1, !annotation !444
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_under_5g) #3
  %5 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %wifi_under_5g, align 1
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %6 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %manual_control, align 2, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %8 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %stop_coex_dm, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %10 = load i8, ptr @glcoex_sta_8821a_1ant, align 4, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %11 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %12(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef nonnull %wifi_under_5g) #3
  %13 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %wifi_under_5g, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not = icmp eq i8 %14, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.83) #3
  call fastcc void @btc8821a1ant_coex_under_5g(ptr noundef %btcoexist)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp = icmp eq i8 %type, 1
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.92) #3
  %15 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_get, align 4
  %call11.c65 = call zeroext i1 %16(ptr noundef %btcoexist, i8 noundef zeroext 38, ptr noundef nonnull %wifi_central_chnl) #3
  %17 = ptrtoint ptr %wifi_central_chnl to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %wifi_central_chnl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %18)
  %cmp16 = icmp ult i8 %18, 15
  br i1 %cmp16, label %if.then18, label %if.then8.if.end29_crit_edge

if.then8.if.end29_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.93) #3
  store i32 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 41), align 4
  %19 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_get, align 4
  %call11.c = call zeroext i1 %20(ptr noundef %btcoexist, i8 noundef zeroext 38, ptr noundef nonnull %wifi_central_chnl) #3
  br label %if.end29

if.then18:                                        ; preds = %if.then8
  %21 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %h2c_parameter, align 1
  %arrayidx19 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %18, ptr %arrayidx19, align 1
  %23 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %btc_get, align 4
  %call21 = call zeroext i1 %24(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #3
  %25 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp22 = icmp eq i32 %26, 2
  %arrayidx25 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 2
  br i1 %cmp22, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #5
  %27 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 48, ptr %arrayidx25, align 1
  br label %if.end29

if.else26:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 32, ptr %arrayidx25, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %if.then24, %if.else, %if.then8.if.end29_crit_edge
  %29 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %h2c_parameter, align 1
  store i8 %30, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 32), align 2
  %arrayidx32 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx32, align 1
  store i8 %32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 32, i32 1), align 1
  %arrayidx35 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx35, align 1
  store i8 %34, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 32, i32 2), align 4
  %conv39 = zext i8 %30 to i32
  %shl = shl nuw nsw i32 %conv39, 16
  %conv41 = zext i8 %32 to i32
  %shl42 = shl nuw nsw i32 %conv41, 8
  %or = or i32 %shl42, %shl
  %conv44 = zext i8 %34 to i32
  %or45 = or i32 %or, %conv44
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.94, i32 noundef %or45) #3
  %btc_fill_h2c = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %35 = ptrtoint ptr %btc_fill_h2c to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btc_fill_h2c, align 4
  call void %36(ptr noundef %btcoexist, i8 noundef zeroext 102, i32 noundef 3, ptr noundef nonnull %h2c_parameter) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then5, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_under_5g) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_central_chnl) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #3
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %h2c_parameter) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a1ant_special_packet_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %bt_hs_on = alloca i8, align 1
  %wifi_under_5g = alloca i8, align 1
  %wifi_link_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on) #3
  %2 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bt_hs_on, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_under_5g) #3
  %3 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %wifi_under_5g, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_link_status) #3
  %4 = ptrtoint ptr %wifi_link_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wifi_link_status, align 4
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %5 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %manual_control, align 2, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %7 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %stop_coex_dm, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %9 = load i8, ptr @glcoex_sta_8821a_1ant, align 4, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %10 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %11(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef nonnull %wifi_under_5g) #3
  %12 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %wifi_under_5g, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not = icmp eq i8 %13, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.83) #3
  call fastcc void @btc8821a1ant_coex_under_5g(ptr noundef %btcoexist)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %conv = zext i8 %type to i32
  %type.off = add i8 %type, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %type.off)
  %switch = icmp ult i8 %type.off, 3
  br i1 %switch, label %if.then16, label %if.else22

if.then16:                                        ; preds = %if.end6
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 21), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type)
  %cmp18 = icmp eq i8 %type, 2
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.95) #3
  br label %if.end25

if.else:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.96) #3
  br label %if.end25

if.else22:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 21), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.97, i32 noundef %conv) #3
  br label %if.end25

if.end25:                                         ; preds = %if.else22, %if.else, %if.then20
  store i32 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 8), align 4
  %14 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_get, align 4
  %call27 = call zeroext i1 %15(ptr noundef %btcoexist, i8 noundef zeroext 27, ptr noundef nonnull %wifi_link_status) #3
  %16 = ptrtoint ptr %wifi_link_status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wifi_link_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %17)
  %cmp28 = icmp ugt i32 %17, 131071
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_limited_tx(ptr noundef %btcoexist, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call fastcc void @btc8821a1ant_limited_rx(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 5)
  call fastcc void @btc8821a1ant_action_wifi_multi_port(ptr noundef %btcoexist)
  br label %cleanup

if.end32:                                         ; preds = %if.end25
  %18 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_get, align 4
  %call34 = call zeroext i1 %19(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on) #3
  %20 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 20), align 4, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool35.not = icmp eq i8 %20, 0
  br i1 %tobool35.not, label %if.else37, label %if.then36

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_action_bt_inquiry(ptr noundef %btcoexist)
  br label %cleanup

if.else37:                                        ; preds = %if.end32
  %21 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bt_hs_on, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool38.not = icmp eq i8 %22, 0
  br i1 %tobool38.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_action_hs(ptr noundef %btcoexist)
  br label %cleanup

if.end41:                                         ; preds = %if.else37
  %23 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.224)
  switch i8 %type, label %if.end41.cleanup_crit_edge [
    i8 2, label %if.then57
    i8 1, label %if.end41.if.end64_crit_edge
    i8 3, label %if.end41.if.end64_crit_edge105
  ]

if.end41.if.end64_crit_edge105:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end64

if.end41.if.end64_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end64

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then57:                                        ; preds = %if.end41
  %24 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 41), align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 41), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.98, i32 noundef %inc) #3
  %25 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 41), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %25)
  %cmp60 = icmp ugt i32 %25, 9
  br i1 %cmp60, label %if.then57.cleanup_crit_edge, label %if.then57.if.end64_crit_edge

if.then57.if.end64_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end64

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end64:                                         ; preds = %if.then57.if.end64_crit_edge, %if.end41.if.end64_crit_edge, %if.end41.if.end64_crit_edge105
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.99, i32 noundef %conv) #3
  call fastcc void @btc8821a1ant_act_wifi_conn_sp_pkt(ptr noundef %btcoexist)
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.then57.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.then39, %if.then36, %if.then30, %if.then5, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_link_status) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_under_5g) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_act_wifi_conn_sp_pkt(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i61 = alloca [5 x i8], align 1
  %ap_enable.i62 = alloca i8, align 1
  %h2c_parameter.i50 = alloca [5 x i8], align 1
  %ap_enable.i51 = alloca i8, align 1
  %h2c_parameter.i = alloca [5 x i8], align 1
  %ap_enable.i = alloca i8, align 1
  %rssi_adjust_val.i39 = alloca i8, align 1
  %rssi_adjust_val.i30 = alloca i8, align 1
  %rssi_adjust_val.i = alloca i8, align 1
  %low_pwr_disable.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #3
  %0 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %1 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %2(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #3
  %3 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #3
  %sco_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %sco_exist to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sco_exist, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %hid_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %7 = ptrtoint ptr %hid_exist to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hid_exist, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %a2dp_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %9 = ptrtoint ptr %a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %a2dp_exist, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %lor.lhs.false3.if.end_crit_edge, label %lor.lhs.false3.if.then_crit_edge

lor.lhs.false3.if.then_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false3.if.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false3.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %11 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi_adjust_val.i) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4
  store i8 32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %12, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef 32) #3
  %13 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1, !range !443
  %14 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %14)
  %cmp.i = icmp eq i8 %13, %14
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.if.end23.i_crit_edge

if.then.if.end23.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i

land.lhs.true.i:                                  ; preds = %if.then
  %15 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  %16 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %16)
  %cmp19.i = icmp eq i8 %15, %16
  br i1 %cmp19.i, label %land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge, label %land.lhs.true.i.if.end23.i_crit_edge

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i

land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ps_tdma.exit

if.end23.i:                                       ; preds = %land.lhs.true.i.if.end23.i_crit_edge, %if.then.if.end23.i_crit_edge
  %17 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i) #3
  %19 = ptrtoint ptr %ap_enable.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %ap_enable.i, align 1
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %20 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_get.i, align 4
  %call.i49 = call zeroext i1 %21(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i) #3
  %22 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 97, ptr %h2c_parameter.i, align 1
  %arrayidx18.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 53, ptr %arrayidx18.i, align 1
  %arrayidx19.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %arrayidx19.i, align 1
  %arrayidx20.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 17, ptr %arrayidx20.i, align 1
  %arrayidx21.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 17, ptr %arrayidx21.i, align 1
  store i8 97, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i8 53, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 2), align 2
  store i8 17, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 3), align 1
  store i8 17, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 4), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %18, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef 97, i32 noundef 889393425) #3
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %27 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %28(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i) #3
  %29 = ptrtoint ptr %rssi_adjust_val.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %rssi_adjust_val.i, align 1
  %30 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_set.i, align 4
  %call.i = call zeroext i1 %31(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %rssi_adjust_val.i) #3
  %32 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  store i8 %32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1
  %33 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  store i8 %33, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  br label %btc8821a1ant_ps_tdma.exit

btc8821a1ant_ps_tdma.exit:                        ; preds = %if.end23.i, %land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi_adjust_val.i) #3
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #3
  br label %if.end

if.end:                                           ; preds = %btc8821a1ant_ps_tdma.exit, %lor.lhs.false3.if.end_crit_edge
  %hid_exist5 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %34 = ptrtoint ptr %hid_exist5 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %hid_exist5, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool6.not = icmp eq i8 %35, 0
  br i1 %tobool6.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %a2dp_exist7 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %36 = ptrtoint ptr %a2dp_exist7 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %a2dp_exist7, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool8.not = icmp eq i8 %37, 0
  br i1 %tobool8.not, label %land.lhs.true.if.else_crit_edge, label %if.then9

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then9:                                         ; preds = %land.lhs.true
  %adapter.i31 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %38 = ptrtoint ptr %adapter.i31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i31, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi_adjust_val.i30) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4
  store i8 14, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef 14) #3
  %40 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1, !range !443
  %41 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %41)
  %cmp.i32 = icmp eq i8 %40, %41
  br i1 %cmp.i32, label %land.lhs.true.i34, label %if.then9.if.end23.i35_crit_edge

if.then9.if.end23.i35_crit_edge:                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i35

land.lhs.true.i34:                                ; preds = %if.then9
  %42 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  %43 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %43)
  %cmp19.i33 = icmp eq i8 %42, %43
  br i1 %cmp19.i33, label %land.lhs.true.i34.btc8821a1ant_ps_tdma.exit38_crit_edge, label %land.lhs.true.i34.if.end23.i35_crit_edge

land.lhs.true.i34.if.end23.i35_crit_edge:         ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i35

land.lhs.true.i34.btc8821a1ant_ps_tdma.exit38_crit_edge: ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ps_tdma.exit38

if.end23.i35:                                     ; preds = %land.lhs.true.i34.if.end23.i35_crit_edge, %if.then9.if.end23.i35_crit_edge
  %44 = ptrtoint ptr %adapter.i31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter.i31, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i50) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i51) #3
  %46 = ptrtoint ptr %ap_enable.i51 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %ap_enable.i51, align 1
  %btc_get.i53 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %47 = ptrtoint ptr %btc_get.i53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %btc_get.i53, align 4
  %call.i54 = call zeroext i1 %48(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i51) #3
  %49 = ptrtoint ptr %ap_enable.i51 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ap_enable.i51, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i55.not = icmp eq i8 %50, 0
  br i1 %tobool.not.i55.not, label %if.end23.i35.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge, label %if.then5.i

if.end23.i35.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge: ; preds = %if.end23.i35
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_set_fw_ps_tdma.exit

if.then5.i:                                       ; preds = %if.end23.i35
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %45, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131) #3
  br label %btc8821a1ant_set_fw_ps_tdma.exit

btc8821a1ant_set_fw_ps_tdma.exit:                 ; preds = %if.then5.i, %if.end23.i35.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge
  %real_byte1.0.i = phi i8 [ 97, %if.then5.i ], [ 81, %if.end23.i35.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge ]
  %real_byte5.0.i = phi i8 [ 52, %if.then5.i ], [ 20, %if.end23.i35.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge ]
  %51 = ptrtoint ptr %h2c_parameter.i50 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %real_byte1.0.i, ptr %h2c_parameter.i50, align 1
  %arrayidx18.i56 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i50, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx18.i56 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 30, ptr %arrayidx18.i56, align 1
  %arrayidx19.i57 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i50, i32 0, i32 2
  %53 = ptrtoint ptr %arrayidx19.i57 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 3, ptr %arrayidx19.i57, align 1
  %arrayidx20.i58 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i50, i32 0, i32 3
  %54 = ptrtoint ptr %arrayidx20.i58 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 16, ptr %arrayidx20.i58, align 1
  %arrayidx21.i59 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i50, i32 0, i32 4
  %55 = ptrtoint ptr %arrayidx21.i59 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %real_byte5.0.i, ptr %arrayidx21.i59, align 1
  store i8 %real_byte1.0.i, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i8 30, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 2), align 2
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 3), align 1
  store i8 %real_byte5.0.i, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 4), align 4
  %conv32.i = zext i8 %real_byte1.0.i to i32
  %conv44.i = zext i8 %real_byte5.0.i to i32
  %or45.i = or i32 %conv44.i, 503517184
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %45, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv32.i, i32 noundef %or45.i) #3
  %btc_fill_h2c.i60 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %56 = ptrtoint ptr %btc_fill_h2c.i60 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %btc_fill_h2c.i60, align 4
  call void %57(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i50) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i51) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i50) #3
  %58 = ptrtoint ptr %rssi_adjust_val.i30 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %rssi_adjust_val.i30, align 1
  %59 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %btc_set.i, align 4
  %call.i37 = call zeroext i1 %60(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %rssi_adjust_val.i30) #3
  %61 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  store i8 %61, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1
  %62 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  store i8 %62, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  br label %btc8821a1ant_ps_tdma.exit38

btc8821a1ant_ps_tdma.exit38:                      ; preds = %btc8821a1ant_set_fw_ps_tdma.exit, %land.lhs.true.i34.btc8821a1ant_ps_tdma.exit38_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi_adjust_val.i30) #3
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %pan_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %63 = ptrtoint ptr %pan_exist to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %pan_exist, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool10.not = icmp eq i8 %64, 0
  br i1 %tobool10.not, label %if.else12, label %if.then11

if.then11:                                        ; preds = %if.else
  %adapter.i40 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %65 = ptrtoint ptr %adapter.i40 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %adapter.i40, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi_adjust_val.i39) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4
  store i8 20, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %66, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef 20) #3
  %67 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1, !range !443
  %68 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %68)
  %cmp.i41 = icmp eq i8 %67, %68
  br i1 %cmp.i41, label %land.lhs.true.i43, label %if.then11.if.end23.i44_crit_edge

if.then11.if.end23.i44_crit_edge:                 ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i44

land.lhs.true.i43:                                ; preds = %if.then11
  %69 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  %70 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %69, i8 %70)
  %cmp19.i42 = icmp eq i8 %69, %70
  br i1 %cmp19.i42, label %land.lhs.true.i43.btc8821a1ant_ps_tdma.exit47_crit_edge, label %land.lhs.true.i43.if.end23.i44_crit_edge

land.lhs.true.i43.if.end23.i44_crit_edge:         ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i44

land.lhs.true.i43.btc8821a1ant_ps_tdma.exit47_crit_edge: ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ps_tdma.exit47

if.end23.i44:                                     ; preds = %land.lhs.true.i43.if.end23.i44_crit_edge, %if.then11.if.end23.i44_crit_edge
  %71 = ptrtoint ptr %adapter.i40 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %adapter.i40, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i61) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i62) #3
  %73 = ptrtoint ptr %ap_enable.i62 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %ap_enable.i62, align 1
  %btc_get.i64 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %74 = ptrtoint ptr %btc_get.i64 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %btc_get.i64, align 4
  %call.i65 = call zeroext i1 %75(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i62) #3
  %76 = ptrtoint ptr %h2c_parameter.i61 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 97, ptr %h2c_parameter.i61, align 1
  %arrayidx18.i69 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i61, i32 0, i32 1
  %77 = ptrtoint ptr %arrayidx18.i69 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 53, ptr %arrayidx18.i69, align 1
  %arrayidx19.i70 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i61, i32 0, i32 2
  %78 = ptrtoint ptr %arrayidx19.i70 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 3, ptr %arrayidx19.i70, align 1
  %arrayidx20.i71 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i61, i32 0, i32 3
  %79 = ptrtoint ptr %arrayidx20.i71 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 17, ptr %arrayidx20.i71, align 1
  %arrayidx21.i72 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i61, i32 0, i32 4
  %80 = ptrtoint ptr %arrayidx21.i72 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 16, ptr %arrayidx21.i72, align 1
  store i8 97, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i8 53, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 2), align 2
  store i8 17, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 3), align 1
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 4), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %72, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef 97, i32 noundef 889393424) #3
  %btc_fill_h2c.i76 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %81 = ptrtoint ptr %btc_fill_h2c.i76 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %btc_fill_h2c.i76, align 4
  call void %82(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i61) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i62) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i61) #3
  %83 = ptrtoint ptr %rssi_adjust_val.i39 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %rssi_adjust_val.i39, align 1
  %84 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %btc_set.i, align 4
  %call.i46 = call zeroext i1 %85(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %rssi_adjust_val.i39) #3
  %86 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  store i8 %86, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1
  %87 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  store i8 %87, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  br label %btc8821a1ant_ps_tdma.exit47

btc8821a1ant_ps_tdma.exit47:                      ; preds = %if.end23.i44, %land.lhs.true.i43.btc8821a1ant_ps_tdma.exit47_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi_adjust_val.i39) #3
  br label %if.end14

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %btc8821a1ant_ps_tdma.exit47, %btc8821a1ant_ps_tdma.exit38
  %.sink = phi i32 [ 1431655765, %btc8821a1ant_ps_tdma.exit47 ], [ 1515870810, %if.else12 ], [ 1431655765, %btc8821a1ant_ps_tdma.exit38 ]
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef %.sink, i32 noundef 1515870810) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a1ant_bt_info_notify(ptr noundef %btcoexist, ptr nocapture noundef readonly %tmp_buf, i8 noundef zeroext %length) local_unnamed_addr #0 align 64 {
entry:
  %wifi_connected.i = alloca i8, align 1
  %bt_hs_on.i265 = alloca i8, align 1
  %increase_scan_dev_num.i = alloca i8, align 1
  %wifi_link_status.i = alloca i32, align 4
  %wifi_under_5g.i = alloca i8, align 1
  %scan.i = alloca i8, align 1
  %link.i = alloca i8, align 1
  %roam.i = alloca i8, align 1
  %bt_hs_on.i = alloca i8, align 1
  %wifi_connected = alloca i8, align 1
  %bt_busy = alloca i8, align 1
  %wifi_under_5g = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_connected) #3
  %2 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %wifi_connected, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_busy) #3
  %3 = ptrtoint ptr %bt_busy to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bt_busy, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_under_5g) #3
  %4 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %wifi_under_5g, align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 17), align 1
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %5 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %6(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef nonnull %wifi_under_5g) #3
  %7 = ptrtoint ptr %tmp_buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tmp_buf, align 1
  %9 = and i8 %8, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp = icmp ugt i8 %9, 2
  %spec.store.select = select i1 %cmp, i8 0, i8 %9
  %idxprom = zext i8 %spec.store.select to i32
  %arrayidx4 = getelementptr %struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 19, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %arrayidx4, align 4
  %conv6 = zext i8 %length to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.100, i32 noundef %idxprom, i32 noundef %conv6) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %length)
  %cmp9275.not = icmp eq i8 %length, 0
  br i1 %cmp9275.not, label %entry.for.end_crit_edge, label %if.end23.peel

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end23.peel:                                    ; preds = %entry
  %sub = add nsw i32 %conv6, -1
  %12 = ptrtoint ptr %tmp_buf to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tmp_buf, align 1
  %arrayidx16.peel = getelementptr %struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 18, i32 %idxprom, i32 0
  %14 = ptrtoint ptr %arrayidx16.peel to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx16.peel, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp26.peel = icmp eq i32 %sub, 0
  %15 = ptrtoint ptr %tmp_buf to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tmp_buf, align 1
  %conv31.peel = zext i8 %16 to i32
  br i1 %cmp26.peel, label %for.inc.peel.thread, label %for.inc.peel

for.inc.peel:                                     ; preds = %if.end23.peel
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.102, i32 noundef %conv31.peel) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %length)
  %exitcond.peel.not = icmp eq i8 %length, 1
  br i1 %exitcond.peel.not, label %for.inc.peel.for.end_crit_edge, label %if.end23.peel285

for.inc.peel.for.end_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.inc.peel.thread:                              ; preds = %if.end23.peel
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.101, i32 noundef %conv31.peel) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %length)
  %exitcond.peel.not296 = icmp eq i8 %length, 1
  br i1 %exitcond.peel.not296, label %for.inc.peel.thread.for.end_crit_edge, label %if.end23.peel285.thread

for.inc.peel.thread.for.end_crit_edge:            ; preds = %for.inc.peel.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end23.peel285.thread:                          ; preds = %for.inc.peel.thread
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx12.peel281297 = getelementptr i8, ptr %tmp_buf, i32 1
  %17 = ptrtoint ptr %arrayidx12.peel281297 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx12.peel281297, align 1
  %arrayidx16.peel282298 = getelementptr %struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 18, i32 %idxprom, i32 1
  %19 = ptrtoint ptr %arrayidx16.peel282298 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx16.peel282298, align 1
  br label %for.inc.peel292

if.end23.peel285:                                 ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx12.peel281 = getelementptr i8, ptr %tmp_buf, i32 1
  %20 = ptrtoint ptr %arrayidx12.peel281 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx12.peel281, align 1
  %arrayidx16.peel282 = getelementptr %struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 18, i32 %idxprom, i32 1
  %22 = ptrtoint ptr %arrayidx16.peel282 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx16.peel282, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp26.peel287 = icmp eq i32 %sub, 1
  %spec.select303 = select i1 %cmp26.peel287, ptr @.str.101, ptr @.str.102
  br label %for.inc.peel292

for.inc.peel292:                                  ; preds = %if.end23.peel285, %if.end23.peel285.thread
  %arrayidx12.peel281.sink = phi ptr [ %arrayidx12.peel281297, %if.end23.peel285.thread ], [ %arrayidx12.peel281, %if.end23.peel285 ]
  %.str.101.sink = phi ptr [ @.str.102, %if.end23.peel285.thread ], [ %spec.select303, %if.end23.peel285 ]
  %23 = ptrtoint ptr %arrayidx12.peel281.sink to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx12.peel281.sink, align 1
  %conv31.peel291 = zext i8 %24 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.101.sink, i32 noundef %conv31.peel291) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %length)
  %exitcond.peel294.not = icmp eq i8 %length, 2
  br i1 %exitcond.peel294.not, label %for.inc.peel292.for.end_crit_edge, label %for.inc.peel292.if.end23_crit_edge

for.inc.peel292.if.end23_crit_edge:               ; preds = %for.inc.peel292
  br label %if.end23

for.inc.peel292.for.end_crit_edge:                ; preds = %for.inc.peel292
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end23:                                         ; preds = %if.end23.if.end23_crit_edge, %for.inc.peel292.if.end23_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end23.if.end23_crit_edge ], [ 2, %for.inc.peel292.if.end23_crit_edge ]
  %arrayidx12 = getelementptr i8, ptr %tmp_buf, i32 %indvars.iv
  %25 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx12, align 1
  %arrayidx16 = getelementptr %struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 18, i32 %idxprom, i32 %indvars.iv
  %27 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %indvars.iv)
  %cmp26 = icmp eq i32 %sub, %indvars.iv
  %28 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx12, align 1
  %conv31 = zext i8 %29 to i32
  %.str.101..str.102 = select i1 %cmp26, ptr @.str.101, ptr @.str.102
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.101..str.102, i32 noundef %conv31) #3
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv6
  br i1 %exitcond.not, label %if.end23.for.end_crit_edge, label %if.end23.if.end23_crit_edge, !llvm.loop !445

if.end23.if.end23_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %if.end23.for.end_crit_edge, %for.inc.peel292.for.end_crit_edge, %for.inc.peel.thread.for.end_crit_edge, %for.inc.peel.for.end_crit_edge, %entry.for.end_crit_edge
  %bt_info.0.lcssa = phi i8 [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.peel.for.end_crit_edge ], [ %24, %for.inc.peel292.for.end_crit_edge ], [ 0, %for.inc.peel.thread.for.end_crit_edge ], [ %24, %if.end23.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.store.select)
  %cmp38.not = icmp eq i8 %spec.store.select, 0
  br i1 %cmp38.not, label %for.end.if.end94_crit_edge, label %if.then40

for.end.if.end94_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end94

if.then40:                                        ; preds = %for.end
  %arrayidx44 = getelementptr %struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 18, i32 %idxprom, i32 2
  %30 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx44, align 2
  %32 = and i8 %31, 15
  store i8 %32, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 22), align 2
  %arrayidx51 = getelementptr %struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 18, i32 %idxprom, i32 3
  %33 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx51, align 1
  %mul = shl i8 %34, 1
  %add = add i8 %mul, 10
  store i8 %add, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 13), align 4
  %arrayidx57 = getelementptr %struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 18, i32 %idxprom, i32 4
  %35 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx57, align 2
  store i8 %36, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 23), align 1
  %37 = load i8, ptr %arrayidx44, align 2
  %38 = lshr i8 %37, 6
  %.lobit = and i8 %38, 1
  store i8 %.lobit, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 14), align 1
  %btc_set = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %39 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %btc_set, align 4
  %call65 = call zeroext i1 %40(ptr noundef %btcoexist, i8 noundef zeroext 7, ptr noundef getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 14)) #3
  %41 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 14), align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool67.not = icmp eq i8 %41, 0
  br i1 %tobool67.not, label %if.then68, label %if.then40.if.end69_crit_edge

if.then40.if.end69_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end69

if.then68:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.103) #3
  %btc_set_bt_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 33
  %42 = ptrtoint ptr %btc_set_bt_reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %btc_set_bt_reg, align 4
  call void %43(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 60, i32 noundef 21) #3
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.then40.if.end69_crit_edge
  %44 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 23), align 1
  %45 = and i8 %44, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool73.not = icmp eq i8 %45, 0
  br i1 %tobool73.not, label %if.end69.if.end81_crit_edge, label %if.then74

if.end69.if.end81_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end81

if.then74:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.104) #3
  %46 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %btc_get, align 4
  %call76 = call zeroext i1 %47(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected) #3
  %48 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %wifi_connected, align 1, !range !443
  call void @ex_btc8821a1ant_media_status_notify(ptr noundef %btcoexist, i8 noundef zeroext %49)
  br label %if.end81

if.end81:                                         ; preds = %if.then74, %if.end69.if.end81_crit_edge
  %50 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 23), align 1
  %51 = and i8 %50, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool85.not = icmp eq i8 %51, 0
  br i1 %tobool85.not, label %if.end81.if.end94_crit_edge, label %land.lhs.true

if.end81.if.end94_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end94

land.lhs.true:                                    ; preds = %if.end81
  %52 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %wifi_under_5g, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool86.not = icmp eq i8 %53, 0
  br i1 %tobool86.not, label %if.then87, label %land.lhs.true.if.end94_crit_edge

land.lhs.true.if.end94_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end94

if.then87:                                        ; preds = %land.lhs.true
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %54 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %manual_control, align 2, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool88.not = icmp eq i8 %55, 0
  br i1 %tobool88.not, label %land.lhs.true89, label %if.then87.if.end94_crit_edge

if.then87.if.end94_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end94

land.lhs.true89:                                  ; preds = %if.then87
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %56 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %stop_coex_dm, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool90.not = icmp eq i8 %57, 0
  br i1 %tobool90.not, label %if.then91, label %land.lhs.true89.if.end94_crit_edge

land.lhs.true89.if.end94_crit_edge:               ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end94

if.then91:                                        ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.105) #3
  call fastcc void @btc8821a1ant_ignore_wlan_act(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %land.lhs.true89.if.end94_crit_edge, %if.then87.if.end94_crit_edge, %land.lhs.true.if.end94_crit_edge, %if.end81.if.end94_crit_edge, %for.end.if.end94_crit_edge
  %conv95 = zext i8 %bt_info.0.lcssa to i32
  %and96 = lshr i8 %bt_info.0.lcssa, 2
  %and96.lobit = and i8 %and96, 1
  store i8 %and96.lobit, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 20), align 4
  %and103 = and i32 %conv95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.then105, label %if.else106

if.then105:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #5
  %58 = call ptr @memset(ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 1), i32 0, i32 5)
  br label %if.end140

if.else106:                                       ; preds = %if.end94
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 1), align 1
  %and109.lobit = lshr i8 %bt_info.0.lcssa, 7
  store i8 %and109.lobit, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 5), align 1
  %and117 = lshr i8 %bt_info.0.lcssa, 6
  %and117.lobit = and i8 %and117, 1
  store i8 %and117.lobit, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 3), align 1
  %and125 = lshr i8 %bt_info.0.lcssa, 5
  %and125.lobit = and i8 %and125, 1
  store i8 %and125.lobit, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 4), align 4
  %and133 = and i32 %conv95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %if.else137, label %if.then135

if.then135:                                       ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #5
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 2), align 2
  br label %if.end140

if.else137:                                       ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #5
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 2), align 2
  br label %if.end140

if.end140:                                        ; preds = %if.else137, %if.then135, %if.then105
  %bt_link_info1.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on.i) #3
  %59 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %bt_hs_on.i, align 1
  %60 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %btc_get, align 4
  %call.i = call zeroext i1 %61(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on.i) #3
  %62 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 1), align 1, !range !443
  %63 = ptrtoint ptr %bt_link_info1.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %bt_link_info1.i, align 1
  %64 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 2), align 2, !range !443
  %sco_exist4.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %65 = ptrtoint ptr %sco_exist4.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %sco_exist4.i, align 1
  %66 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 3), align 1, !range !443
  %a2dp_exist7.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %67 = ptrtoint ptr %a2dp_exist7.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %a2dp_exist7.i, align 1
  %68 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 5), align 1, !range !443
  %pan_exist10.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %69 = ptrtoint ptr %pan_exist10.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %pan_exist10.i, align 1
  %70 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 4), align 4, !range !443
  %hid_exist13.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %71 = ptrtoint ptr %hid_exist13.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %hid_exist13.i, align 1
  %72 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bt_hs_on.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool15.not.i = icmp eq i8 %73, 0
  br i1 %tobool15.not.i, label %if.end140.if.end.i_crit_edge, label %if.then.i

if.end140.if.end.i_crit_edge:                     ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #5
  %74 = ptrtoint ptr %pan_exist10.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %pan_exist10.i, align 1
  %75 = ptrtoint ptr %bt_link_info1.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %bt_link_info1.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end140.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool19.not.i = icmp eq i8 %64, 0
  br i1 %tobool19.not.i, label %land.lhs.true33.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool21.not.i = icmp eq i8 %66, 0
  br i1 %tobool21.not.i, label %land.lhs.true22.i, label %land.lhs.true.i.if.end30.thread108.i_crit_edge

land.lhs.true.i.if.end30.thread108.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30.thread108.i

land.lhs.true22.i:                                ; preds = %land.lhs.true.i
  %76 = ptrtoint ptr %pan_exist10.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %pan_exist10.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool24.not.i = icmp eq i8 %77, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool27.not.i = icmp eq i8 %70, 0
  %or.cond.i = select i1 %tobool24.not.i, i1 %tobool27.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true22.i.if.end60.i_crit_edge, label %land.lhs.true22.i.if.end30.thread108.i_crit_edge

land.lhs.true22.i.if.end30.thread108.i_crit_edge: ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30.thread108.i

land.lhs.true22.i.if.end60.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end60.i

if.end30.thread108.i:                             ; preds = %land.lhs.true22.i.if.end30.thread108.i_crit_edge, %land.lhs.true.i.if.end30.thread108.i_crit_edge
  br label %if.end60.i

land.lhs.true33.i:                                ; preds = %if.end.i
  %sco_only29.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 3
  %78 = ptrtoint ptr %sco_only29.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %sco_only29.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool35.not.i = icmp eq i8 %66, 0
  br i1 %tobool35.not.i, label %land.lhs.true51.i, label %land.lhs.true36.i

land.lhs.true36.i:                                ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #5
  %79 = ptrtoint ptr %pan_exist10.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %pan_exist10.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool38.not.i = icmp eq i8 %80, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool41.not.i = icmp eq i8 %70, 0
  %or.cond127.i = select i1 %tobool38.not.i, i1 %tobool41.not.i, i1 false
  %spec.select.i = zext i1 %or.cond127.i to i8
  %81 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 5
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %spec.select.i, ptr %81, align 1
  %pan_only59117.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 9
  %83 = ptrtoint ptr %pan_only59117.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %pan_only59117.i, align 1
  br label %if.else73.i

land.lhs.true51.i:                                ; preds = %land.lhs.true33.i
  %a2dp_only44111.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 5
  %84 = ptrtoint ptr %a2dp_only44111.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %a2dp_only44111.i, align 1
  %85 = ptrtoint ptr %pan_exist10.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %pan_exist10.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool53.not.i = icmp eq i8 %86, 0
  br i1 %tobool53.not.i, label %land.lhs.true69.i, label %land.lhs.true54.i

land.lhs.true54.i:                                ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool56.not.i = icmp eq i8 %70, 0
  %pan_only.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 9
  br i1 %tobool56.not.i, label %land.lhs.true66.thread.i, label %land.lhs.true66.i

if.end60.i:                                       ; preds = %if.end30.thread108.i, %land.lhs.true22.i.if.end60.i_crit_edge
  %.sink128.i = phi i8 [ 0, %if.end30.thread108.i ], [ 1, %land.lhs.true22.i.if.end60.i_crit_edge ]
  %sco_only29109.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 3
  %87 = ptrtoint ptr %sco_only29109.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %.sink128.i, ptr %sco_only29109.i, align 1
  %a2dp_only44.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 5
  %88 = ptrtoint ptr %a2dp_only44.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %a2dp_only44.i, align 1
  %pan_only59.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 9
  %89 = ptrtoint ptr %pan_only59.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %pan_only59.i, align 1
  br label %if.else73.i

land.lhs.true66.i:                                ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #5
  %90 = ptrtoint ptr %pan_only.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %pan_only.i, align 1
  br label %if.else73.i

land.lhs.true66.thread.i:                         ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #5
  %91 = ptrtoint ptr %pan_only.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %pan_only.i, align 1
  br label %if.else73.i

land.lhs.true69.i:                                ; preds = %land.lhs.true51.i
  %pan_only59117120125.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 9
  %92 = ptrtoint ptr %pan_only59117120125.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %pan_only59117120125.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool71.not.i = icmp eq i8 %70, 0
  br i1 %tobool71.not.i, label %land.lhs.true69.i.if.else73.i_crit_edge, label %land.lhs.true69.i.btc8821a1ant_update_bt_link_info.exit_crit_edge

land.lhs.true69.i.btc8821a1ant_update_bt_link_info.exit_crit_edge: ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_update_bt_link_info.exit

land.lhs.true69.i.if.else73.i_crit_edge:          ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else73.i

if.else73.i:                                      ; preds = %land.lhs.true69.i.if.else73.i_crit_edge, %land.lhs.true66.thread.i, %land.lhs.true66.i, %if.end60.i, %land.lhs.true36.i
  br label %btc8821a1ant_update_bt_link_info.exit

btc8821a1ant_update_bt_link_info.exit:            ; preds = %if.else73.i, %land.lhs.true69.i.btc8821a1ant_update_bt_link_info.exit_crit_edge
  %.sink.i = phi i8 [ 0, %if.else73.i ], [ 1, %land.lhs.true69.i.btc8821a1ant_update_bt_link_info.exit_crit_edge ]
  %hid_only74.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 7
  %93 = ptrtoint ptr %hid_only74.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %.sink.i, ptr %hid_only74.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on.i) #3
  %and142 = and i8 %bt_info.0.lcssa, 31
  %conv144 = zext i8 %and142 to i32
  %and145 = and i32 %conv144, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %btc8821a1ant_update_bt_link_info.exit.if.end180_crit_edge, label %if.else148

btc8821a1ant_update_bt_link_info.exit.if.end180_crit_edge: ; preds = %btc8821a1ant_update_bt_link_info.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end180

if.else148:                                       ; preds = %btc8821a1ant_update_bt_link_info.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %and142)
  %cmp150 = icmp eq i8 %and142, 1
  br i1 %cmp150, label %if.else148.if.end180_crit_edge, label %if.else154

if.else148.if.end180_crit_edge:                   ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end180

if.else154:                                       ; preds = %if.else148
  %94 = and i32 %conv144, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %if.else163, label %if.else154.if.end180_crit_edge

if.else154.if.end180_crit_edge:                   ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end180

if.else163:                                       ; preds = %if.else154
  %and165 = and i32 %conv144, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.else163.if.end180_crit_edge, label %if.then167

if.else163.if.end180_crit_edge:                   ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end180

if.then167:                                       ; preds = %if.else163
  %96 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 31), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %96)
  %cmp170.not = icmp eq i8 %96, 3
  br i1 %cmp170.not, label %if.then167.if.end180_crit_edge, label %if.then172

if.then167.if.end180_crit_edge:                   ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end180

if.then172:                                       ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #5
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 6), align 2
  br label %if.end180

if.end180:                                        ; preds = %if.then172, %if.then167.if.end180_crit_edge, %if.else163.if.end180_crit_edge, %if.else154.if.end180_crit_edge, %if.else148.if.end180_crit_edge, %btc8821a1ant_update_bt_link_info.exit.if.end180_crit_edge
  %.sink302 = phi i8 [ 0, %btc8821a1ant_update_bt_link_info.exit.if.end180_crit_edge ], [ 1, %if.else148.if.end180_crit_edge ], [ 4, %if.else154.if.end180_crit_edge ], [ 3, %if.then172 ], [ 3, %if.then167.if.end180_crit_edge ], [ 6, %if.else163.if.end180_crit_edge ]
  %.str.107.sink = phi ptr [ @.str.106, %btc8821a1ant_update_bt_link_info.exit.if.end180_crit_edge ], [ @.str.107, %if.else148.if.end180_crit_edge ], [ @.str.108, %if.else154.if.end180_crit_edge ], [ @.str.109, %if.then172 ], [ @.str.109, %if.then167.if.end180_crit_edge ], [ @.str.110, %if.else163.if.end180_crit_edge ]
  store i8 %.sink302, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 31), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.107.sink) #3
  %97 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 31), align 1
  %.off = add i8 %97, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  %spec.select = zext i1 %switch to i8
  %98 = ptrtoint ptr %bt_busy to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %spec.select, ptr %bt_busy, align 1
  %btc_set198 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %99 = ptrtoint ptr %btc_set198 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %btc_set198, align 4
  %call199 = call zeroext i1 %100(ptr noundef %btcoexist, i8 noundef zeroext 1, ptr noundef nonnull %bt_busy) #3
  %101 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_connected.i) #3
  %103 = ptrtoint ptr %wifi_connected.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %wifi_connected.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on.i265) #3
  %104 = ptrtoint ptr %bt_hs_on.i265 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %bt_hs_on.i265, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %increase_scan_dev_num.i) #3
  %105 = ptrtoint ptr %increase_scan_dev_num.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %increase_scan_dev_num.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_link_status.i) #3
  %106 = ptrtoint ptr %wifi_link_status.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %wifi_link_status.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_under_5g.i) #3
  %107 = ptrtoint ptr %wifi_under_5g.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %wifi_under_5g.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %102, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.155) #3
  %manual_control.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %108 = ptrtoint ptr %manual_control.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %manual_control.i, align 2, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i = icmp eq i8 %109, 0
  br i1 %tobool.not.i, label %if.end.i267, label %if.then.i266

if.then.i266:                                     ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %102, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.156) #3
  br label %btc8821a1ant_run_coexist_mechanism.exit

if.end.i267:                                      ; preds = %if.end180
  %stop_coex_dm.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %110 = ptrtoint ptr %stop_coex_dm.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %stop_coex_dm.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool2.not.i = icmp eq i8 %111, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i267
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %102, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.157) #3
  br label %btc8821a1ant_run_coexist_mechanism.exit

if.end4.i:                                        ; preds = %if.end.i267
  %112 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 7), align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool5.not.i = icmp eq i8 %112, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %102, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.158) #3
  br label %btc8821a1ant_run_coexist_mechanism.exit

if.end7.i:                                        ; preds = %if.end4.i
  %113 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %btc_get, align 4
  %call.i269 = call zeroext i1 %114(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef nonnull %wifi_under_5g.i) #3
  %115 = ptrtoint ptr %wifi_under_5g.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %wifi_under_5g.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool8.not.i = icmp eq i8 %116, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %102, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.83) #3
  call fastcc void @btc8821a1ant_coex_under_5g(ptr noundef %btcoexist) #3
  br label %btc8821a1ant_run_coexist_mechanism.exit

if.end10.i:                                       ; preds = %if.end7.i
  %117 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 31), align 1
  %.off.i = add i8 %117, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %if.then21.i, label %if.end10.i.if.end22.i_crit_edge

if.end10.i.if.end22.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22.i

if.then21.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #5
  %118 = ptrtoint ptr %increase_scan_dev_num.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 1, ptr %increase_scan_dev_num.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %if.end10.i.if.end22.i_crit_edge
  %119 = ptrtoint ptr %btc_set198 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %btc_set198, align 4
  %call23.i = call zeroext i1 %120(ptr noundef %btcoexist, i8 noundef zeroext 6, ptr noundef nonnull %increase_scan_dev_num.i) #3
  %121 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %btc_get, align 4
  %call25.i = call zeroext i1 %122(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected.i) #3
  %123 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %btc_get, align 4
  %call27.i = call zeroext i1 %124(ptr noundef %btcoexist, i8 noundef zeroext 27, ptr noundef nonnull %wifi_link_status.i) #3
  %125 = ptrtoint ptr %wifi_link_status.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %wifi_link_status.i, align 4
  %127 = and i32 %126, -131064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %if.end34.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_limited_tx(ptr noundef %btcoexist, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  call fastcc void @btc8821a1ant_limited_rx(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 5) #3
  call fastcc void @btc8821a1ant_action_wifi_multi_port(ptr noundef %btcoexist) #3
  br label %btc8821a1ant_run_coexist_mechanism.exit

if.end34.i:                                       ; preds = %if.end22.i
  %129 = ptrtoint ptr %sco_exist4.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %sco_exist4.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool35.not.i270 = icmp eq i8 %130, 0
  br i1 %tobool35.not.i270, label %land.lhs.true.i271, label %if.end34.i.if.else.i_crit_edge

if.end34.i.if.else.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

land.lhs.true.i271:                               ; preds = %if.end34.i
  %131 = ptrtoint ptr %hid_exist13.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %hid_exist13.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool36.not.i = icmp eq i8 %132, 0
  br i1 %tobool36.not.i, label %if.then37.i, label %land.lhs.true.i271.if.else.i_crit_edge

land.lhs.true.i271.if.else.i_crit_edge:           ; preds = %land.lhs.true.i271
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

if.then37.i:                                      ; preds = %land.lhs.true.i271
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_limited_tx(ptr noundef %btcoexist, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  br label %if.end43.i

if.else.i:                                        ; preds = %land.lhs.true.i271.if.else.i_crit_edge, %if.end34.i.if.else.i_crit_edge
  %133 = ptrtoint ptr %wifi_connected.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %wifi_connected.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool38.not.i272 = icmp eq i8 %134, 0
  br i1 %tobool38.not.i272, label %if.else41.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_wifi_rssi_state(ptr noundef %btcoexist) #3
  call fastcc void @btc8821a1ant_limited_tx(ptr noundef %btcoexist, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #3
  br label %if.end43.i

if.else41.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_limited_tx(ptr noundef %btcoexist, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else41.i, %if.then39.i, %if.then37.i
  %135 = ptrtoint ptr %sco_exist4.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %sco_exist4.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool45.not.i = icmp eq i8 %136, 0
  br i1 %tobool45.not.i, label %if.else47.i, label %if.end43.i.if.end60.i273_crit_edge

if.end43.i.if.end60.i273_crit_edge:               ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end60.i273

if.else47.i:                                      ; preds = %if.end43.i
  %137 = ptrtoint ptr %hid_exist13.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %hid_exist13.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool49.not.i = icmp eq i8 %138, 0
  br i1 %tobool49.not.i, label %if.else51.i, label %if.else47.i.if.end60.i273_crit_edge

if.else47.i.if.end60.i273_crit_edge:              ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end60.i273

if.else51.i:                                      ; preds = %if.else47.i
  %139 = ptrtoint ptr %a2dp_exist7.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %a2dp_exist7.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool52.not.i = icmp eq i8 %140, 0
  br i1 %tobool52.not.i, label %lor.lhs.false54.i, label %if.else51.i.if.then57.i_crit_edge

if.else51.i.if.then57.i_crit_edge:                ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then57.i

lor.lhs.false54.i:                                ; preds = %if.else51.i
  %141 = ptrtoint ptr %pan_exist10.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %pan_exist10.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool55.not.i = icmp eq i8 %142, 0
  br i1 %tobool55.not.i, label %lor.lhs.false54.i.if.end60.i273_crit_edge, label %lor.lhs.false54.i.if.then57.i_crit_edge

lor.lhs.false54.i.if.then57.i_crit_edge:          ; preds = %lor.lhs.false54.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then57.i

lor.lhs.false54.i.if.end60.i273_crit_edge:        ; preds = %lor.lhs.false54.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end60.i273

if.then57.i:                                      ; preds = %lor.lhs.false54.i.if.then57.i_crit_edge, %if.else51.i.if.then57.i_crit_edge
  br label %if.end60.i273

if.end60.i273:                                    ; preds = %if.then57.i, %lor.lhs.false54.i.if.end60.i273_crit_edge, %if.else47.i.if.end60.i273_crit_edge, %if.end43.i.if.end60.i273_crit_edge
  %bt_ctrl_agg_buf_size.0.off0.i = phi i1 [ true, %if.then57.i ], [ false, %lor.lhs.false54.i.if.end60.i273_crit_edge ], [ true, %if.end43.i.if.end60.i273_crit_edge ], [ true, %if.else47.i.if.end60.i273_crit_edge ]
  %agg_buf_size.0.i = phi i8 [ 8, %if.then57.i ], [ 5, %lor.lhs.false54.i.if.end60.i273_crit_edge ], [ 3, %if.end43.i.if.end60.i273_crit_edge ], [ 5, %if.else47.i.if.end60.i273_crit_edge ]
  call fastcc void @btc8821a1ant_limited_rx(ptr noundef %btcoexist, i1 noundef zeroext %bt_ctrl_agg_buf_size.0.off0.i, i8 noundef zeroext %agg_buf_size.0.i) #3
  call fastcc void @btc8821a1ant_run_sw_coex_mech(ptr noundef %btcoexist) #3
  %143 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %btc_get, align 4
  %call63.i = call zeroext i1 %144(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on.i265) #3
  %145 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 20), align 4, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool64.not.i = icmp eq i8 %145, 0
  br i1 %tobool64.not.i, label %if.else66.i, label %if.then65.i

if.then65.i:                                      ; preds = %if.end60.i273
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_action_bt_inquiry(ptr noundef %btcoexist) #3
  br label %btc8821a1ant_run_coexist_mechanism.exit

if.else66.i:                                      ; preds = %if.end60.i273
  %146 = ptrtoint ptr %bt_hs_on.i265 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %bt_hs_on.i265, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool67.not.i = icmp eq i8 %147, 0
  br i1 %tobool67.not.i, label %if.end70.i, label %if.then68.i

if.then68.i:                                      ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_action_hs(ptr noundef %btcoexist) #3
  br label %btc8821a1ant_run_coexist_mechanism.exit

if.end70.i:                                       ; preds = %if.else66.i
  %148 = ptrtoint ptr %wifi_connected.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %wifi_connected.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool71.not.i274 = icmp eq i8 %149, 0
  br i1 %tobool71.not.i274, label %if.then72.i, label %if.else94.i

if.then72.i:                                      ; preds = %if.end70.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scan.i) #3
  %150 = ptrtoint ptr %scan.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %scan.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link.i) #3
  %151 = ptrtoint ptr %link.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %link.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %roam.i) #3
  %152 = ptrtoint ptr %roam.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %roam.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %102, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.159) #3
  %153 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %btc_get, align 4
  %call74.i = call zeroext i1 %154(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %scan.i) #3
  %155 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %btc_get, align 4
  %call76.i = call zeroext i1 %156(ptr noundef %btcoexist, i8 noundef zeroext 6, ptr noundef nonnull %link.i) #3
  %157 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %btc_get, align 4
  %call78.i = call zeroext i1 %158(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %roam.i) #3
  %159 = ptrtoint ptr %scan.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %scan.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool79.not.i = icmp eq i8 %160, 0
  br i1 %tobool79.not.i, label %lor.lhs.false81.i, label %if.then89.i

lor.lhs.false81.i:                                ; preds = %if.then72.i
  %161 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %link.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool82.not.i = icmp eq i8 %162, 0
  br i1 %tobool82.not.i, label %lor.lhs.false84.i, label %lor.lhs.false81.i.if.else90.i_crit_edge

lor.lhs.false81.i.if.else90.i_crit_edge:          ; preds = %lor.lhs.false81.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else90.i

lor.lhs.false84.i:                                ; preds = %lor.lhs.false81.i
  %163 = ptrtoint ptr %roam.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %roam.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool85.not.i = icmp eq i8 %164, 0
  br i1 %tobool85.not.i, label %if.else92.i, label %lor.lhs.false84.i.if.else90.i_crit_edge

lor.lhs.false84.i.if.else90.i_crit_edge:          ; preds = %lor.lhs.false84.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else90.i

if.then89.i:                                      ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_act_wifi_not_conn_scan(ptr noundef %btcoexist) #3
  br label %if.end93.i

if.else90.i:                                      ; preds = %lor.lhs.false84.i.if.else90.i_crit_edge, %lor.lhs.false81.i.if.else90.i_crit_edge
  call fastcc void @btc8821a1ant_action_wifi_not_connected_asso_auth(ptr noundef %btcoexist) #3
  br label %if.end93.i

if.else92.i:                                      ; preds = %lor.lhs.false84.i
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_action_wifi_not_connected(ptr noundef %btcoexist) #3
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.else92.i, %if.else90.i, %if.then89.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %roam.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scan.i) #3
  br label %btc8821a1ant_run_coexist_mechanism.exit

if.else94.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_action_wifi_connected(ptr noundef %btcoexist) #3
  br label %btc8821a1ant_run_coexist_mechanism.exit

btc8821a1ant_run_coexist_mechanism.exit:          ; preds = %if.else94.i, %if.end93.i, %if.then68.i, %if.then65.i, %if.then32.i, %if.then9.i, %if.then6.i, %if.then3.i, %if.then.i266
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_under_5g.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_link_status.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %increase_scan_dev_num.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on.i265) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_under_5g) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_busy) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_ignore_wlan_act(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool1 = zext i1 %enable to i8
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %cond = select i1 %force_exec, ptr @.str.134, ptr @.str.135
  %cond3 = select i1 %enable, ptr @.str.151, ptr @.str.152
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.150, ptr noundef nonnull %cond, ptr noundef nonnull %cond3) #3
  store i8 %frombool1, ptr @glcoex_dm_8821a_1ant, align 4
  br i1 %force_exec, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %.pre = zext i1 %enable to i32
  br label %if.end19

if.then:                                          ; preds = %entry
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 1), align 1, !range !443
  %3 = zext i8 %2 to i32
  %4 = zext i1 %enable to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.153, i32 noundef %3, i32 noundef %4) #3
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 1), align 1, !range !443
  %6 = load i8, ptr @glcoex_dm_8821a_1ant, align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp = icmp eq i8 %5, %6
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end19_crit_edge

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end19:                                         ; preds = %if.then.if.end19_crit_edge, %entry.if.end19_crit_edge
  %conv3.i.pre-phi = phi i32 [ %.pre, %entry.if.end19_crit_edge ], [ %4, %if.then.if.end19_crit_edge ]
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i) #3
  %9 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool1, ptr %h2c_parameter.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.154, i32 noundef %conv3.i.pre-phi) #3
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %10 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %11(ptr noundef %btcoexist, i8 noundef zeroext 99, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i) #3
  %12 = load i8, ptr @glcoex_dm_8821a_1ant, align 4, !range !443
  store i8 %12, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 1), align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a1ant_halt_notify(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %wifi_under_5g = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_under_5g) #3
  %2 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %wifi_under_5g, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.111) #3
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %3 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef nonnull %wifi_under_5g) #3
  %5 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wifi_under_5g, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.83) #3
  call fastcc void @btc8821a1ant_coex_under_5g(ptr noundef %btcoexist)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %7 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %stop_coex_dm, align 1
  %btc_read_4byte13.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %8 = ptrtoint ptr %btc_read_4byte13.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btc_read_4byte13.i, align 4
  %call14.i = call i32 %9(ptr noundef %btcoexist, i32 noundef 76) #3
  %and16.i = and i32 %call14.i, -25165825
  %btc_write_4byte17.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %10 = ptrtoint ptr %btc_write_4byte17.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_write_4byte17.i, align 4
  call void %11(ptr noundef %btcoexist, i32 noundef 76, i32 noundef %and16.i) #3
  %btc_write_1byte_bitmask18.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %12 = ptrtoint ptr %btc_write_1byte_bitmask18.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btc_write_1byte_bitmask18.i, align 4
  call void %13(ptr noundef %btcoexist, i32 noundef 1893, i32 noundef 24, i8 noundef zeroext 3) #3
  %btc_write_1byte35.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %14 = ptrtoint ptr %btc_write_1byte35.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_write_1byte35.i, align 4
  call void %15(ptr noundef %btcoexist, i32 noundef 3252, i32 noundef 119) #3
  %btdm_ant_pos36.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %btdm_ant_pos36.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %btdm_ant_pos36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp38.i = icmp eq i8 %17, 1
  %18 = ptrtoint ptr %btc_write_1byte_bitmask18.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_write_1byte_bitmask18.i, align 4
  %. = select i1 %cmp38.i, i8 2, i8 1
  call void %19(ptr noundef %btcoexist, i32 noundef 3255, i32 noundef 48, i8 noundef zeroext %.) #3
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %21, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.151) #3
  store i8 1, ptr @glcoex_dm_8821a_1ant, align 4
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #3
  %24 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %h2c_parameter.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %23, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.154, i32 noundef 1) #3
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %25 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %26(ptr noundef %btcoexist, i8 noundef zeroext 99, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #3
  %27 = load i8, ptr @glcoex_dm_8821a_1ant, align 4, !range !443
  store i8 %27, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 1), align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #3
  %28 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %29 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %30(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #3
  %31 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %32(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #3
  call fastcc void @btc8821a1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 0)
  call void @ex_btc8821a1ant_media_status_notify(ptr noundef %btcoexist, i8 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_under_5g) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_power_save_state(ptr noundef %btcoexist, i8 noundef zeroext %ps_type, i8 noundef zeroext %lps_val, i8 noundef zeroext %rpwm_val) unnamed_addr #0 align 64 {
entry:
  %lps.i.i = alloca i8, align 1
  %rpwm.i.i = alloca i8, align 1
  %lps_mode.i = alloca i8, align 1
  %low_pwr_disable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable) #3
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lps_mode.i) #3
  %2 = ptrtoint ptr %lps_mode.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %lps_mode.i, align 1
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %3 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 44, ptr noundef nonnull %lps_mode.i) #3
  %5 = ptrtoint ptr %lps_mode.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %lps_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.then5.i, label %sw.bb3.btc8821a1ant_ps_tdma_check_for_pwr_save.exit_crit_edge

sw.bb3.btc8821a1ant_ps_tdma_check_for_pwr_save.exit_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ps_tdma_check_for_pwr_save.exit

if.then5.i:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 0) #3
  br label %btc8821a1ant_ps_tdma_check_for_pwr_save.exit

btc8821a1ant_ps_tdma_check_for_pwr_save.exit:     ; preds = %if.then5.i, %sw.bb3.btc8821a1ant_ps_tdma_check_for_pwr_save.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lps_mode.i) #3
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %7 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter.i, align 4
  %conv.i = zext i8 %lps_val to i32
  %conv1.i = zext i8 %rpwm_val to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.135, i32 noundef %conv.i, i32 noundef %conv1.i) #3
  store i8 %lps_val, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 12), align 4
  store i8 %rpwm_val, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 14), align 2
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.210, i32 noundef %conv.i, i32 noundef %conv1.i) #3
  %9 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 11), align 1
  %10 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %10)
  %cmp.i = icmp eq i8 %9, %10
  br i1 %cmp.i, label %land.lhs.true.i, label %btc8821a1ant_ps_tdma_check_for_pwr_save.exit.if.end21.i_crit_edge

btc8821a1ant_ps_tdma_check_for_pwr_save.exit.if.end21.i_crit_edge: ; preds = %btc8821a1ant_ps_tdma_check_for_pwr_save.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21.i

land.lhs.true.i:                                  ; preds = %btc8821a1ant_ps_tdma_check_for_pwr_save.exit
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 13), align 1
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 14), align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %12)
  %cmp14.i = icmp eq i8 %11, %12
  br i1 %cmp14.i, label %if.then16.i, label %land.lhs.true.i.if.end21.i_crit_edge

land.lhs.true.i.if.end21.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv13.i = zext i8 %11 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.211, i32 noundef %conv13.i, i32 noundef %conv13.i) #3
  br label %btc8821a1ant_lps_rpwm.exit

if.end21.i:                                       ; preds = %land.lhs.true.i.if.end21.i_crit_edge, %btc8821a1ant_ps_tdma_check_for_pwr_save.exit.if.end21.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lps.i.i) #3
  %13 = ptrtoint ptr %lps.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %lps_val, ptr %lps.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rpwm.i.i) #3
  %14 = ptrtoint ptr %rpwm.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %rpwm_val, ptr %rpwm.i.i, align 1
  %btc_set.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %15 = ptrtoint ptr %btc_set.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_set.i.i, align 4
  %call.i.i = call zeroext i1 %16(ptr noundef %btcoexist, i8 noundef zeroext 18, ptr noundef nonnull %lps.i.i) #3
  %17 = ptrtoint ptr %btc_set.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_set.i.i, align 4
  %call2.i.i = call zeroext i1 %18(ptr noundef %btcoexist, i8 noundef zeroext 19, ptr noundef nonnull %rpwm.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rpwm.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lps.i.i) #3
  %19 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 12), align 4
  store i8 %19, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 11), align 1
  %20 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 14), align 2
  store i8 %20, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 13), align 1
  br label %btc8821a1ant_lps_rpwm.exit

btc8821a1ant_lps_rpwm.exit:                       ; preds = %if.end21.i, %if.then16.i
  %21 = ptrtoint ptr %low_pwr_disable to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %low_pwr_disable, align 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %btc8821a1ant_lps_rpwm.exit, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 23, %btc8821a1ant_lps_rpwm.exit ], [ 24, %entry.sw.epilog.sink.split_crit_edge ]
  %btc_set = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %22 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_set, align 4
  %call5 = call zeroext i1 %23(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable) #3
  %24 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_set, align 4
  %call7 = call zeroext i1 %25(ptr noundef %btcoexist, i8 noundef zeroext %.sink, ptr noundef null) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a1ant_pnp_notify(ptr noundef %btcoexist, i8 noundef zeroext %pnp_state) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i27 = alloca [1 x i8], align 1
  %h2c_parameter.i.i.i.i = alloca [6 x i8], align 1
  %wifi_under_5g.i = alloca i8, align 1
  %low_pwr_disable.i = alloca i8, align 1
  %wifi_under_5g = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_under_5g) #3
  %2 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %wifi_under_5g, align 1
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %3 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef nonnull %wifi_under_5g) #3
  %5 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wifi_under_5g, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.83) #3
  call fastcc void @btc8821a1ant_coex_under_5g(ptr noundef %btcoexist)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.112) #3
  %7 = zext i8 %pnp_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.226)
  switch i8 %pnp_state, label %if.end.cleanup_crit_edge [
    i8 1, label %if.then2
    i8 0, label %if.then6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.113) #3
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 7), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 6), align 2
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %8 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %stop_coex_dm, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #3
  %9 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %10 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %11(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #3
  %12 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %13(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #3
  call fastcc void @btc8821a1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 0)
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1515870810) #3
  %btc_read_4byte13.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %14 = ptrtoint ptr %btc_read_4byte13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_read_4byte13.i, align 4
  %call14.i = call i32 %15(ptr noundef %btcoexist, i32 noundef 76) #3
  %and16.i = and i32 %call14.i, -25165825
  %btc_write_4byte17.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %16 = ptrtoint ptr %btc_write_4byte17.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_write_4byte17.i, align 4
  call void %17(ptr noundef %btcoexist, i32 noundef 76, i32 noundef %and16.i) #3
  %btc_write_1byte_bitmask18.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %18 = ptrtoint ptr %btc_write_1byte_bitmask18.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_write_1byte_bitmask18.i, align 4
  call void %19(ptr noundef %btcoexist, i32 noundef 1893, i32 noundef 24, i8 noundef zeroext 3) #3
  %btc_write_1byte35.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %20 = ptrtoint ptr %btc_write_1byte35.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_write_1byte35.i, align 4
  call void %21(ptr noundef %btcoexist, i32 noundef 3252, i32 noundef 119) #3
  %btdm_ant_pos36.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %btdm_ant_pos36.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %btdm_ant_pos36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp38.i = icmp eq i8 %23, 1
  %24 = ptrtoint ptr %btc_write_1byte_bitmask18.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_write_1byte_bitmask18.i, align 4
  br i1 %cmp38.i, label %if.then40.i, label %if.else42.i

if.then40.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  call void %25(ptr noundef %btcoexist, i32 noundef 3255, i32 noundef 48, i8 noundef zeroext 2) #3
  br label %cleanup

if.else42.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  call void %25(ptr noundef %btcoexist, i32 noundef 3255, i32 noundef 48, i8 noundef zeroext 1) #3
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.114) #3
  %stop_coex_dm7 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %26 = ptrtoint ptr %stop_coex_dm7 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %stop_coex_dm7, align 1
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_under_5g.i) #3
  %29 = ptrtoint ptr %wifi_under_5g.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %wifi_under_5g.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.120) #3
  %btc_read_1byte9.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 17
  %30 = ptrtoint ptr %btc_read_1byte9.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_read_1byte9.i, align 4
  %call10.i = call zeroext i8 %31(ptr noundef %btcoexist, i32 noundef 1936) #3
  %32 = and i8 %call10.i, -64
  %33 = or i8 %32, 5
  %btc_write_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %34 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %btc_write_1byte.i, align 4
  %conv14.i = zext i8 %33 to i32
  call void %35(ptr noundef %btcoexist, i32 noundef 1936, i32 noundef %conv14.i) #3
  %36 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %btc_get, align 4
  %call15.i = call zeroext i1 %37(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef nonnull %wifi_under_5g.i) #3
  %38 = ptrtoint ptr %wifi_under_5g.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %wifi_under_5g.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool16.not.i = icmp eq i8 %39, 0
  %..i = select i1 %tobool16.not.i, i8 2, i8 1
  call fastcc void @btc8821a1ant_set_ant_path(ptr noundef %btcoexist, i8 noundef zeroext %..i, i1 noundef zeroext true, i1 noundef zeroext false) #3
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 1431655765, i32 noundef 1431655765) #3
  %40 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %btc_write_1byte.i, align 4
  call void %41(ptr noundef %btcoexist, i32 noundef 1902, i32 noundef 12) #3
  %42 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %btc_write_1byte.i, align 4
  call void %43(ptr noundef %btcoexist, i32 noundef 1912, i32 noundef 3) #3
  %btc_write_1byte_bitmask.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %44 = ptrtoint ptr %btc_write_1byte_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %btc_write_1byte_bitmask.i, align 4
  call void %45(ptr noundef %btcoexist, i32 noundef 64, i32 noundef 32, i8 noundef zeroext 1) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_under_5g.i) #3
  %46 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %47, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.121, i32 noundef 0) #3
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4
  %48 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp.i.i.i = icmp eq i8 %48, 0
  br i1 %cmp.i.i.i, label %if.then6.btc8821a1ant_init_coex_dm.exit_crit_edge, label %if.end10.i.i.i

if.then6.btc8821a1ant_init_coex_dm.exit_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_init_coex_dm.exit

if.end10.i.i.i:                                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  %49 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i) #3
  %51 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i.i, i32 1
  %52 = call ptr @memset(ptr %51, i32 0, i32 5)
  %53 = ptrtoint ptr %h2c_parameter.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 6, ptr %h2c_parameter.i.i.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %50, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.124) #3
  %btc_fill_h2c.i.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %54 = ptrtoint ptr %btc_fill_h2c.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %btc_fill_h2c.i.i.i.i, align 4
  call void %55(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i) #3
  %56 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4, !range !443
  store i8 %56, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1
  br label %btc8821a1ant_init_coex_dm.exit

btc8821a1ant_init_coex_dm.exit:                   ; preds = %if.end10.i.i.i, %if.then6.btc8821a1ant_init_coex_dm.exit_crit_edge
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 1431655765, i32 noundef 1431655765) #3
  %57 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i27) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 17), align 1
  %59 = ptrtoint ptr %h2c_parameter.i27 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %h2c_parameter.i27, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %58, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.125, i32 noundef 1) #3
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %60 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %61(ptr noundef %btcoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i27) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i27) #3
  br label %cleanup

cleanup:                                          ; preds = %btc8821a1ant_init_coex_dm.exit, %if.else42.i, %if.then40.i, %if.end.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_under_5g) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a1ant_periodical(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i = alloca [1 x i8], align 1
  %fw_ver = alloca i32, align 4
  %bt_patch_ver = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_ver) #3
  %2 = ptrtoint ptr %fw_ver to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %fw_ver, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bt_patch_ver) #3
  %3 = ptrtoint ptr %bt_patch_ver to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bt_patch_ver, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.115) #3
  %4 = load i8, ptr @ex_btc8821a1ant_periodical.dis_ver_info_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %cmp = icmp ult i8 %4, 6
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %stack_info2 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 4
  %add = add nuw nsw i8 %4, 1
  store i8 %add, ptr @ex_btc8821a1ant_periodical.dis_ver_info_cnt, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.116) #3
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.117, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8) #3
  %11 = ptrtoint ptr %stack_info2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %stack_info2, align 2, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  %cond = select i1 %tobool.not, ptr @.str.10, ptr @.str.9
  %hci_version = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %hci_version to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hci_version, align 2
  %conv10 = zext i16 %14 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.118, ptr noundef nonnull %cond, i32 noundef %conv10) #3
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %15 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %16(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %bt_patch_ver) #3
  %17 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_get, align 4
  %call12 = call zeroext i1 %18(ptr noundef %btcoexist, i8 noundef zeroext 26, ptr noundef nonnull %fw_ver) #3
  %19 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fw_ver, align 4
  %21 = ptrtoint ptr %bt_patch_ver to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bt_patch_ver, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.119, i32 noundef 20130816, i32 noundef 65, i32 noundef %20, i32 noundef %22, i32 noundef %22) #3
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.116) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %auto_report_1ant = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 7
  %23 = ptrtoint ptr %auto_report_1ant to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %auto_report_1ant, align 4, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool13.not = icmp eq i8 %24, 0
  br i1 %tobool13.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 17), align 1
  %27 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %h2c_parameter.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %26, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.125, i32 noundef 1) #3
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %28 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %29(ptr noundef %btcoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i) #3
  %btc_read_4byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %30 = ptrtoint ptr %btc_read_4byte.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_read_4byte.i, align 4
  %call.i = call i32 %31(ptr noundef %btcoexist, i32 noundef 1904) #3
  %and.i = and i32 %call.i, 65535
  %shr.i = lshr i32 %call.i, 16
  %32 = ptrtoint ptr %btc_read_4byte.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %btc_read_4byte.i, align 4
  %call3.i = call i32 %33(ptr noundef %btcoexist, i32 noundef 1908) #3
  %and4.i = and i32 %call3.i, 65535
  %shr6.i = lshr i32 %call3.i, 16
  store i32 %and.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 9), align 4
  store i32 %shr.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 10), align 4
  store i32 %and4.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 11), align 4
  store i32 %shr6.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 12), align 4
  %btc_write_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %34 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %btc_write_1byte.i, align 4
  call void %35(ptr noundef %btcoexist, i32 noundef 1902, i32 noundef 12) #3
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %36 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 8), align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 8), align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bt_patch_ver) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_ver) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %byte1, i8 noundef zeroext %byte2, i8 noundef zeroext %byte3, i8 noundef zeroext %byte4, i8 noundef zeroext %byte5) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter = alloca [5 x i8], align 1
  %ap_enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable) #3
  %2 = ptrtoint ptr %ap_enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ap_enable, align 1
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %3 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable) #3
  %5 = ptrtoint ptr %ap_enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ap_enable, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp ne i8 %6, 0
  %7 = and i8 %byte1, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %7)
  %8 = icmp eq i8 %7, 16
  %or.cond = and i1 %8, %tobool.not
  br i1 %or.cond, label %if.then5, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131) #3
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
  store i8 %real_byte1.0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i8 %byte2, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  store i8 %byte3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 2), align 2
  store i8 %byte4, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 3), align 1
  store i8 %real_byte5.0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 4), align 4
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
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv32, i32 noundef %or45) #3
  %btc_fill_h2c = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %17 = ptrtoint ptr %btc_fill_h2c to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_fill_h2c, align 4
  call void %18(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i32 noundef %val0x6c0, i32 noundef %val0x6c4) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %cond = select i1 %force_exec, ptr @.str.134, ptr @.str.135
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, ptr noundef nonnull %cond, i32 noundef %val0x6c0, i32 noundef %val0x6c4, i32 noundef 16777215, i32 noundef 3) #3
  store i32 %val0x6c0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 18), align 4
  store i32 %val0x6c4, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 24), align 1
  br i1 %force_exec, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

if.then:                                          ; preds = %entry
  %2 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %val0x6c0)
  %cmp = icmp eq i32 %2, %val0x6c0
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end18_crit_edge

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

land.lhs.true:                                    ; preds = %if.then
  %3 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %val0x6c4)
  %cmp5 = icmp eq i32 %3, %val0x6c4
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

land.lhs.true7:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %4)
  %cmp9 = icmp eq i32 %4, 16777215
  br i1 %cmp9, label %land.lhs.true11, label %land.lhs.true7.if.end18_crit_edge

land.lhs.true7.if.end18_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

land.lhs.true11:                                  ; preds = %land.lhs.true7
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp15 = icmp eq i8 %5, 3
  br i1 %cmp15, label %land.lhs.true11.cleanup_crit_edge, label %land.lhs.true11.if.end18_crit_edge

land.lhs.true11.if.end18_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true11.if.end18_crit_edge, %land.lhs.true7.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %if.then.if.end18_crit_edge, %entry.if.end18_crit_edge
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.136, i32 noundef %val0x6c0) #3
  %btc_write_4byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %8 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btc_write_4byte.i, align 4
  tail call void %9(ptr noundef %btcoexist, i32 noundef 1728, i32 noundef %val0x6c0) #3
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.137, i32 noundef %val0x6c4) #3
  %10 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_write_4byte.i, align 4
  tail call void %11(ptr noundef %btcoexist, i32 noundef 1732, i32 noundef %val0x6c4) #3
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.138, i32 noundef 16777215) #3
  %12 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btc_write_4byte.i, align 4
  tail call void %13(ptr noundef %btcoexist, i32 noundef 1736, i32 noundef 16777215) #3
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.139, i32 noundef 3) #3
  %btc_write_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %14 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_write_1byte.i, align 4
  tail call void %15(ptr noundef %btcoexist, i32 noundef 1740, i32 noundef 3) #3
  %16 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 18), align 4
  store i32 %16, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 17), align 4
  %17 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 20), align 4
  store i32 %17, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 19), align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 22), align 4
  store i32 %18, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 21), align 4
  %19 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 24), align 1
  store i8 %19, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 23), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %land.lhs.true11.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_act_bt_sco_hid_only_busy(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i = alloca [5 x i8], align 1
  %ap_enable.i = alloca i8, align 1
  %rssi_adjust_val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi_adjust_val.i) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4
  store i8 5, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef 5) #3
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1, !range !443
  %3 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %3)
  %cmp.i = icmp eq i8 %2, %3
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end23.i_crit_edge

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i

land.lhs.true.i:                                  ; preds = %entry
  %4 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %5)
  %cmp19.i = icmp eq i8 %4, %5
  br i1 %cmp19.i, label %land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge, label %land.lhs.true.i.if.end23.i_crit_edge

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i

land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ps_tdma.exit

if.end23.i:                                       ; preds = %land.lhs.true.i.if.end23.i_crit_edge, %entry.if.end23.i_crit_edge
  %6 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i) #3
  %8 = ptrtoint ptr %ap_enable.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ap_enable.i, align 1
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %9 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btc_get.i, align 4
  %call.i2 = call zeroext i1 %10(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i) #3
  %11 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 97, ptr %h2c_parameter.i, align 1
  %arrayidx18.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 21, ptr %arrayidx18.i, align 1
  %arrayidx19.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %arrayidx19.i, align 1
  %arrayidx20.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 17, ptr %arrayidx20.i, align 1
  %arrayidx21.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 16, ptr %arrayidx21.i, align 1
  store i8 97, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i8 21, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 2), align 2
  store i8 17, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 3), align 1
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 4), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef 97, i32 noundef 352522512) #3
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %16 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %17(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i) #3
  %18 = ptrtoint ptr %rssi_adjust_val.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %rssi_adjust_val.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %19 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_set.i, align 4
  %call.i = call zeroext i1 %20(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %rssi_adjust_val.i) #3
  %21 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  store i8 %21, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1
  %22 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  store i8 %22, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  br label %btc8821a1ant_ps_tdma.exit

btc8821a1ant_ps_tdma.exit:                        ; preds = %if.end23.i, %land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi_adjust_val.i) #3
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_act_wifi_con_bt_acl_busy(ptr noundef %btcoexist, i8 noundef zeroext %wifi_status) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i197 = alloca [5 x i8], align 1
  %ap_enable.i198 = alloca i8, align 1
  %h2c_parameter.i179 = alloca [5 x i8], align 1
  %ap_enable.i180 = alloca i8, align 1
  %h2c_parameter.i161 = alloca [5 x i8], align 1
  %ap_enable.i162 = alloca i8, align 1
  %h2c_parameter.i150 = alloca [5 x i8], align 1
  %ap_enable.i151 = alloca i8, align 1
  %h2c_parameter.i = alloca [5 x i8], align 1
  %ap_enable.i = alloca i8, align 1
  %rssi_adjust_val.i139 = alloca i8, align 1
  %rssi_adjust_val.i130 = alloca i8, align 1
  %rssi_adjust_val.i121 = alloca i8, align 1
  %rssi_adjust_val.i112 = alloca i8, align 1
  %rssi_adjust_val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter.i, align 4
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 13), align 4
  %3 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 15), align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.227)
  switch i8 %3, label %if.else17.i [
    i8 2, label %entry.if.then12.i_crit_edge
    i8 5, label %entry.if.then12.i_crit_edge222
  ]

entry.if.then12.i_crit_edge222:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then12.i

entry.if.then12.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then12.i

if.then12.i:                                      ; preds = %entry.if.then12.i_crit_edge, %entry.if.then12.i_crit_edge222
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %2)
  %cmp14.i = icmp ugt i8 %2, 29
  %.str.143..str.144.i = select i1 %cmp14.i, ptr @.str.143, ptr @.str.144
  %..i = select i1 %cmp14.i, i8 0, i8 5
  br label %btc8821a1ant_bt_rssi_state.exit

if.else17.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %2)
  %cmp19.i = icmp ult i8 %2, 28
  %.str.145..str.146.i = select i1 %cmp19.i, ptr @.str.145, ptr @.str.146
  %.1.i = select i1 %cmp19.i, i8 2, i8 3
  br label %btc8821a1ant_bt_rssi_state.exit

btc8821a1ant_bt_rssi_state.exit:                  ; preds = %if.else17.i, %if.then12.i
  %.str.144.sink.i = phi ptr [ %.str.143..str.144.i, %if.then12.i ], [ %.str.145..str.146.i, %if.else17.i ]
  %bt_rssi_state.0.i = phi i8 [ %..i, %if.then12.i ], [ %.1.i, %if.else17.i ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.144.sink.i) #3
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 15), align 2
  %hid_only = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 7
  %5 = ptrtoint ptr %hid_only to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hid_only, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %btc8821a1ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_act_bt_sco_hid_only_busy(ptr noundef %btcoexist)
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 6), align 2
  br label %cleanup

if.else:                                          ; preds = %btc8821a1ant_bt_rssi_state.exit
  %a2dp_only = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 5
  %7 = ptrtoint ptr %a2dp_only to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %a2dp_only, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  br i1 %tobool2.not, label %if.else18, label %if.then3

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %wifi_status)
  %cmp = icmp eq i8 %wifi_status, 4
  br i1 %cmp, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.then3
  %9 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi_adjust_val.i) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4
  store i8 32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef 32) #3
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1, !range !443
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %12)
  %cmp.i = icmp eq i8 %11, %12
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then5.if.end23.i_crit_edge

if.then5.if.end23.i_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i

land.lhs.true.i:                                  ; preds = %if.then5
  %13 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  %14 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %14)
  %cmp19.i111 = icmp eq i8 %13, %14
  br i1 %cmp19.i111, label %land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge, label %land.lhs.true.i.if.end23.i_crit_edge

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i

land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ps_tdma.exit

if.end23.i:                                       ; preds = %land.lhs.true.i.if.end23.i_crit_edge, %if.then5.if.end23.i_crit_edge
  %15 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i) #3
  %17 = ptrtoint ptr %ap_enable.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %ap_enable.i, align 1
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %18 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_get.i, align 4
  %call.i149 = call zeroext i1 %19(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i) #3
  %20 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 97, ptr %h2c_parameter.i, align 1
  %arrayidx18.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 53, ptr %arrayidx18.i, align 1
  %arrayidx19.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %arrayidx19.i, align 1
  %arrayidx20.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 17, ptr %arrayidx20.i, align 1
  %arrayidx21.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 4
  %24 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 17, ptr %arrayidx21.i, align 1
  store i8 97, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i8 53, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 2), align 2
  store i8 17, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 3), align 1
  store i8 17, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 4), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %16, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef 97, i32 noundef 889393425) #3
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %25 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %26(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i) #3
  %27 = ptrtoint ptr %rssi_adjust_val.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %rssi_adjust_val.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %28 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_set.i, align 4
  %call.i = call zeroext i1 %29(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %rssi_adjust_val.i) #3
  %30 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  store i8 %30, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1
  %31 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  store i8 %31, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  br label %btc8821a1ant_ps_tdma.exit

btc8821a1ant_ps_tdma.exit:                        ; preds = %if.end23.i, %land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi_adjust_val.i) #3
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #3
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 6), align 2
  br label %cleanup

if.else7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bt_rssi_state.0.i)
  %cond = icmp eq i8 %bt_rssi_state.0.i, 3
  %32 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter.i, align 4
  br i1 %cond, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi_adjust_val.i112) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4
  store i8 14, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %33, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef 14) #3
  %34 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1, !range !443
  %35 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %35)
  %cmp.i114 = icmp eq i8 %34, %35
  br i1 %cmp.i114, label %land.lhs.true.i116, label %if.then14.if.end23.i117_crit_edge

if.then14.if.end23.i117_crit_edge:                ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i117

land.lhs.true.i116:                               ; preds = %if.then14
  %36 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  %37 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %37)
  %cmp19.i115 = icmp eq i8 %36, %37
  br i1 %cmp19.i115, label %land.lhs.true.i116.btc8821a1ant_ps_tdma.exit120_crit_edge, label %land.lhs.true.i116.if.end23.i117_crit_edge

land.lhs.true.i116.if.end23.i117_crit_edge:       ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i117

land.lhs.true.i116.btc8821a1ant_ps_tdma.exit120_crit_edge: ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ps_tdma.exit120

if.end23.i117:                                    ; preds = %land.lhs.true.i116.if.end23.i117_crit_edge, %if.then14.if.end23.i117_crit_edge
  %38 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i150) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i151) #3
  %40 = ptrtoint ptr %ap_enable.i151 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %ap_enable.i151, align 1
  %btc_get.i153 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %41 = ptrtoint ptr %btc_get.i153 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_get.i153, align 4
  %call.i154 = call zeroext i1 %42(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i151) #3
  %43 = ptrtoint ptr %ap_enable.i151 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ap_enable.i151, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i155.not = icmp eq i8 %44, 0
  br i1 %tobool.not.i155.not, label %if.end23.i117.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge, label %if.then5.i

if.end23.i117.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge: ; preds = %if.end23.i117
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_set_fw_ps_tdma.exit

if.then5.i:                                       ; preds = %if.end23.i117
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131) #3
  br label %btc8821a1ant_set_fw_ps_tdma.exit

btc8821a1ant_set_fw_ps_tdma.exit:                 ; preds = %if.then5.i, %if.end23.i117.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge
  %real_byte1.0.i = phi i8 [ 97, %if.then5.i ], [ 81, %if.end23.i117.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge ]
  %real_byte5.0.i = phi i8 [ 52, %if.then5.i ], [ 20, %if.end23.i117.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge ]
  %45 = ptrtoint ptr %h2c_parameter.i150 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %real_byte1.0.i, ptr %h2c_parameter.i150, align 1
  %arrayidx18.i156 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i150, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx18.i156 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 30, ptr %arrayidx18.i156, align 1
  %arrayidx19.i157 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i150, i32 0, i32 2
  %47 = ptrtoint ptr %arrayidx19.i157 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 3, ptr %arrayidx19.i157, align 1
  %arrayidx20.i158 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i150, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx20.i158 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 16, ptr %arrayidx20.i158, align 1
  %arrayidx21.i159 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i150, i32 0, i32 4
  %49 = ptrtoint ptr %arrayidx21.i159 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %real_byte5.0.i, ptr %arrayidx21.i159, align 1
  store i8 %real_byte1.0.i, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i8 30, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 2), align 2
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 3), align 1
  store i8 %real_byte5.0.i, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 4), align 4
  %conv32.i = zext i8 %real_byte1.0.i to i32
  %conv44.i = zext i8 %real_byte5.0.i to i32
  %or45.i = or i32 %conv44.i, 503517184
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv32.i, i32 noundef %or45.i) #3
  %btc_fill_h2c.i160 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %50 = ptrtoint ptr %btc_fill_h2c.i160 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %btc_fill_h2c.i160, align 4
  call void %51(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i150) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i151) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i150) #3
  %52 = ptrtoint ptr %rssi_adjust_val.i112 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %rssi_adjust_val.i112, align 1
  %btc_set.i118 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %53 = ptrtoint ptr %btc_set.i118 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %btc_set.i118, align 4
  %call.i119 = call zeroext i1 %54(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %rssi_adjust_val.i112) #3
  %55 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  store i8 %55, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1
  %56 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  store i8 %56, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  br label %btc8821a1ant_ps_tdma.exit120

btc8821a1ant_ps_tdma.exit120:                     ; preds = %btc8821a1ant_set_fw_ps_tdma.exit, %land.lhs.true.i116.btc8821a1ant_ps_tdma.exit120_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi_adjust_val.i112) #3
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #3
  br label %cleanup

if.else15:                                        ; preds = %if.else7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi_adjust_val.i121) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4
  store i8 14, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %33, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef 14) #3
  %57 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1, !range !443
  %58 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %58)
  %cmp.i123 = icmp eq i8 %57, %58
  br i1 %cmp.i123, label %land.lhs.true.i125, label %if.else15.if.end23.i126_crit_edge

if.else15.if.end23.i126_crit_edge:                ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i126

land.lhs.true.i125:                               ; preds = %if.else15
  %59 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  %60 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %60)
  %cmp19.i124 = icmp eq i8 %59, %60
  br i1 %cmp19.i124, label %land.lhs.true.i125.btc8821a1ant_ps_tdma.exit129_crit_edge, label %land.lhs.true.i125.if.end23.i126_crit_edge

land.lhs.true.i125.if.end23.i126_crit_edge:       ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i126

land.lhs.true.i125.btc8821a1ant_ps_tdma.exit129_crit_edge: ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ps_tdma.exit129

if.end23.i126:                                    ; preds = %land.lhs.true.i125.if.end23.i126_crit_edge, %if.else15.if.end23.i126_crit_edge
  %61 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i161) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i162) #3
  %63 = ptrtoint ptr %ap_enable.i162 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %ap_enable.i162, align 1
  %btc_get.i164 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %64 = ptrtoint ptr %btc_get.i164 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %btc_get.i164, align 4
  %call.i165 = call zeroext i1 %65(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i162) #3
  %66 = ptrtoint ptr %ap_enable.i162 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ap_enable.i162, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i166.not = icmp eq i8 %67, 0
  br i1 %tobool.not.i166.not, label %if.end23.i126.btc8821a1ant_set_fw_ps_tdma.exit178_crit_edge, label %if.then5.i167

if.end23.i126.btc8821a1ant_set_fw_ps_tdma.exit178_crit_edge: ; preds = %if.end23.i126
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_set_fw_ps_tdma.exit178

if.then5.i167:                                    ; preds = %if.end23.i126
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %62, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131) #3
  br label %btc8821a1ant_set_fw_ps_tdma.exit178

btc8821a1ant_set_fw_ps_tdma.exit178:              ; preds = %if.then5.i167, %if.end23.i126.btc8821a1ant_set_fw_ps_tdma.exit178_crit_edge
  %real_byte1.0.i168 = phi i8 [ 97, %if.then5.i167 ], [ 81, %if.end23.i126.btc8821a1ant_set_fw_ps_tdma.exit178_crit_edge ]
  %real_byte5.0.i169 = phi i8 [ 52, %if.then5.i167 ], [ 20, %if.end23.i126.btc8821a1ant_set_fw_ps_tdma.exit178_crit_edge ]
  %68 = ptrtoint ptr %h2c_parameter.i161 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %real_byte1.0.i168, ptr %h2c_parameter.i161, align 1
  %arrayidx18.i170 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i161, i32 0, i32 1
  %69 = ptrtoint ptr %arrayidx18.i170 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 30, ptr %arrayidx18.i170, align 1
  %arrayidx19.i171 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i161, i32 0, i32 2
  %70 = ptrtoint ptr %arrayidx19.i171 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 3, ptr %arrayidx19.i171, align 1
  %arrayidx20.i172 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i161, i32 0, i32 3
  %71 = ptrtoint ptr %arrayidx20.i172 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 16, ptr %arrayidx20.i172, align 1
  %arrayidx21.i173 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i161, i32 0, i32 4
  %72 = ptrtoint ptr %arrayidx21.i173 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %real_byte5.0.i169, ptr %arrayidx21.i173, align 1
  store i8 %real_byte1.0.i168, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i8 30, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 2), align 2
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 3), align 1
  store i8 %real_byte5.0.i169, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 4), align 4
  %conv32.i174 = zext i8 %real_byte1.0.i168 to i32
  %conv44.i175 = zext i8 %real_byte5.0.i169 to i32
  %or45.i176 = or i32 %conv44.i175, 503517184
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %62, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv32.i174, i32 noundef %or45.i176) #3
  %btc_fill_h2c.i177 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %73 = ptrtoint ptr %btc_fill_h2c.i177 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %btc_fill_h2c.i177, align 4
  call void %74(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i161) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i162) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i161) #3
  %75 = ptrtoint ptr %rssi_adjust_val.i121 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %rssi_adjust_val.i121, align 1
  %btc_set.i127 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %76 = ptrtoint ptr %btc_set.i127 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %btc_set.i127, align 4
  %call.i128 = call zeroext i1 %77(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %rssi_adjust_val.i121) #3
  %78 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  store i8 %78, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1
  %79 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  store i8 %79, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  br label %btc8821a1ant_ps_tdma.exit129

btc8821a1ant_ps_tdma.exit129:                     ; preds = %btc8821a1ant_set_fw_ps_tdma.exit178, %land.lhs.true.i125.btc8821a1ant_ps_tdma.exit129_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi_adjust_val.i121) #3
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #3
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 6), align 2
  br label %cleanup

if.else18:                                        ; preds = %if.else
  %hid_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %80 = ptrtoint ptr %hid_exist to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %hid_exist, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool19.not = icmp eq i8 %81, 0
  br i1 %tobool19.not, label %if.else36, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %if.else18
  %a2dp_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %82 = ptrtoint ptr %a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %a2dp_exist, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool22.not = icmp eq i8 %83, 0
  br i1 %tobool22.not, label %if.else36.thread, label %if.then24

if.then24:                                        ; preds = %land.lhs.true21
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %84 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.228)
  switch i3 %trunc, label %if.else33 [
    i3 0, label %if.then24.if.then31_crit_edge
    i3 3, label %if.then24.if.then31_crit_edge223
  ]

if.then24.if.then31_crit_edge223:                 ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then31

if.then24.if.then31_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then31

if.then31:                                        ; preds = %if.then24.if.then31_crit_edge, %if.then24.if.then31_crit_edge223
  %85 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi_adjust_val.i130) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4
  store i8 14, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %86, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef 14) #3
  %87 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1, !range !443
  %88 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %87, i8 %88)
  %cmp.i132 = icmp eq i8 %87, %88
  br i1 %cmp.i132, label %land.lhs.true.i134, label %if.then31.if.end23.i135_crit_edge

if.then31.if.end23.i135_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i135

land.lhs.true.i134:                               ; preds = %if.then31
  %89 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  %90 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %89, i8 %90)
  %cmp19.i133 = icmp eq i8 %89, %90
  br i1 %cmp19.i133, label %land.lhs.true.i134.btc8821a1ant_ps_tdma.exit138_crit_edge, label %land.lhs.true.i134.if.end23.i135_crit_edge

land.lhs.true.i134.if.end23.i135_crit_edge:       ; preds = %land.lhs.true.i134
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i135

land.lhs.true.i134.btc8821a1ant_ps_tdma.exit138_crit_edge: ; preds = %land.lhs.true.i134
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ps_tdma.exit138

if.end23.i135:                                    ; preds = %land.lhs.true.i134.if.end23.i135_crit_edge, %if.then31.if.end23.i135_crit_edge
  %91 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i179) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i180) #3
  %93 = ptrtoint ptr %ap_enable.i180 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %ap_enable.i180, align 1
  %btc_get.i182 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %94 = ptrtoint ptr %btc_get.i182 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %btc_get.i182, align 4
  %call.i183 = call zeroext i1 %95(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i180) #3
  %96 = ptrtoint ptr %ap_enable.i180 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %ap_enable.i180, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i184.not = icmp eq i8 %97, 0
  br i1 %tobool.not.i184.not, label %if.end23.i135.btc8821a1ant_set_fw_ps_tdma.exit196_crit_edge, label %if.then5.i185

if.end23.i135.btc8821a1ant_set_fw_ps_tdma.exit196_crit_edge: ; preds = %if.end23.i135
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_set_fw_ps_tdma.exit196

if.then5.i185:                                    ; preds = %if.end23.i135
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %92, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131) #3
  br label %btc8821a1ant_set_fw_ps_tdma.exit196

btc8821a1ant_set_fw_ps_tdma.exit196:              ; preds = %if.then5.i185, %if.end23.i135.btc8821a1ant_set_fw_ps_tdma.exit196_crit_edge
  %real_byte1.0.i186 = phi i8 [ 97, %if.then5.i185 ], [ 81, %if.end23.i135.btc8821a1ant_set_fw_ps_tdma.exit196_crit_edge ]
  %real_byte5.0.i187 = phi i8 [ 52, %if.then5.i185 ], [ 20, %if.end23.i135.btc8821a1ant_set_fw_ps_tdma.exit196_crit_edge ]
  %98 = ptrtoint ptr %h2c_parameter.i179 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %real_byte1.0.i186, ptr %h2c_parameter.i179, align 1
  %arrayidx18.i188 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i179, i32 0, i32 1
  %99 = ptrtoint ptr %arrayidx18.i188 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 30, ptr %arrayidx18.i188, align 1
  %arrayidx19.i189 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i179, i32 0, i32 2
  %100 = ptrtoint ptr %arrayidx19.i189 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 3, ptr %arrayidx19.i189, align 1
  %arrayidx20.i190 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i179, i32 0, i32 3
  %101 = ptrtoint ptr %arrayidx20.i190 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 16, ptr %arrayidx20.i190, align 1
  %arrayidx21.i191 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i179, i32 0, i32 4
  %102 = ptrtoint ptr %arrayidx21.i191 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %real_byte5.0.i187, ptr %arrayidx21.i191, align 1
  store i8 %real_byte1.0.i186, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i8 30, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 2), align 2
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 3), align 1
  store i8 %real_byte5.0.i187, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 4), align 4
  %conv32.i192 = zext i8 %real_byte1.0.i186 to i32
  %conv44.i193 = zext i8 %real_byte5.0.i187 to i32
  %or45.i194 = or i32 %conv44.i193, 503517184
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %92, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv32.i192, i32 noundef %or45.i194) #3
  %btc_fill_h2c.i195 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %103 = ptrtoint ptr %btc_fill_h2c.i195 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %btc_fill_h2c.i195, align 4
  call void %104(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i179) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i180) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i179) #3
  %105 = ptrtoint ptr %rssi_adjust_val.i130 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %rssi_adjust_val.i130, align 1
  %btc_set.i136 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %106 = ptrtoint ptr %btc_set.i136 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %btc_set.i136, align 4
  %call.i137 = call zeroext i1 %107(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %rssi_adjust_val.i130) #3
  %108 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  store i8 %108, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1
  %109 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  store i8 %109, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  br label %btc8821a1ant_ps_tdma.exit138

btc8821a1ant_ps_tdma.exit138:                     ; preds = %btc8821a1ant_set_fw_ps_tdma.exit196, %land.lhs.true.i134.btc8821a1ant_ps_tdma.exit138_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi_adjust_val.i130) #3
  br label %if.end35

if.else33:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @btc8821a1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 14)
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %btc8821a1ant_ps_tdma.exit138
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 6), align 2
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #3
  br label %cleanup

if.else36:                                        ; preds = %if.else18
  %pan_only = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 9
  %110 = ptrtoint ptr %pan_only to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %pan_only, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool37.not = icmp eq i8 %111, 0
  br i1 %tobool37.not, label %if.else48, label %if.else36.if.then46_crit_edge

if.else36.if.then46_crit_edge:                    ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then46

if.else36.thread:                                 ; preds = %land.lhs.true21
  %pan_only215 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 9
  %112 = ptrtoint ptr %pan_only215 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %pan_only215, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool37.not216 = icmp eq i8 %113, 0
  br i1 %tobool37.not216, label %land.lhs.true43, label %if.else36.thread.if.then46_crit_edge

if.else36.thread.if.then46_crit_edge:             ; preds = %if.else36.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then46

land.lhs.true43:                                  ; preds = %if.else36.thread
  %pan_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %114 = ptrtoint ptr %pan_exist to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %pan_exist, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool44.not = icmp eq i8 %115, 0
  br i1 %tobool44.not, label %if.else48.thread, label %land.lhs.true43.if.then46_crit_edge

land.lhs.true43.if.then46_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then46

if.then46:                                        ; preds = %land.lhs.true43.if.then46_crit_edge, %if.else36.thread.if.then46_crit_edge, %if.else36.if.then46_crit_edge
  %116 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi_adjust_val.i139) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %117, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef 3) #3
  %118 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1, !range !443
  %119 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %118, i8 %119)
  %cmp.i141 = icmp eq i8 %118, %119
  br i1 %cmp.i141, label %land.lhs.true.i143, label %if.then46.if.end23.i144_crit_edge

if.then46.if.end23.i144_crit_edge:                ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i144

land.lhs.true.i143:                               ; preds = %if.then46
  %120 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  %121 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %120, i8 %121)
  %cmp19.i142 = icmp eq i8 %120, %121
  br i1 %cmp19.i142, label %land.lhs.true.i143.btc8821a1ant_ps_tdma.exit147_crit_edge, label %land.lhs.true.i143.if.end23.i144_crit_edge

land.lhs.true.i143.if.end23.i144_crit_edge:       ; preds = %land.lhs.true.i143
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i144

land.lhs.true.i143.btc8821a1ant_ps_tdma.exit147_crit_edge: ; preds = %land.lhs.true.i143
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ps_tdma.exit147

if.end23.i144:                                    ; preds = %land.lhs.true.i143.if.end23.i144_crit_edge, %if.then46.if.end23.i144_crit_edge
  %122 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i197) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i198) #3
  %124 = ptrtoint ptr %ap_enable.i198 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %ap_enable.i198, align 1
  %btc_get.i200 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %125 = ptrtoint ptr %btc_get.i200 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %btc_get.i200, align 4
  %call.i201 = call zeroext i1 %126(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i198) #3
  %127 = ptrtoint ptr %ap_enable.i198 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %ap_enable.i198, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool.not.i202.not = icmp eq i8 %128, 0
  br i1 %tobool.not.i202.not, label %if.end23.i144.btc8821a1ant_set_fw_ps_tdma.exit214_crit_edge, label %if.then5.i203

if.end23.i144.btc8821a1ant_set_fw_ps_tdma.exit214_crit_edge: ; preds = %if.end23.i144
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_set_fw_ps_tdma.exit214

if.then5.i203:                                    ; preds = %if.end23.i144
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %123, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131) #3
  br label %btc8821a1ant_set_fw_ps_tdma.exit214

btc8821a1ant_set_fw_ps_tdma.exit214:              ; preds = %if.then5.i203, %if.end23.i144.btc8821a1ant_set_fw_ps_tdma.exit214_crit_edge
  %real_byte1.0.i204 = phi i8 [ 97, %if.then5.i203 ], [ 81, %if.end23.i144.btc8821a1ant_set_fw_ps_tdma.exit214_crit_edge ]
  %real_byte5.0.i205 = phi i8 [ 48, %if.then5.i203 ], [ 16, %if.end23.i144.btc8821a1ant_set_fw_ps_tdma.exit214_crit_edge ]
  %129 = ptrtoint ptr %h2c_parameter.i197 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %real_byte1.0.i204, ptr %h2c_parameter.i197, align 1
  %arrayidx18.i206 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i197, i32 0, i32 1
  %130 = ptrtoint ptr %arrayidx18.i206 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 29, ptr %arrayidx18.i206, align 1
  %arrayidx19.i207 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i197, i32 0, i32 2
  %131 = ptrtoint ptr %arrayidx19.i207 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 29, ptr %arrayidx19.i207, align 1
  %arrayidx20.i208 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i197, i32 0, i32 3
  %132 = ptrtoint ptr %arrayidx20.i208 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %arrayidx20.i208, align 1
  %arrayidx21.i209 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i197, i32 0, i32 4
  %133 = ptrtoint ptr %arrayidx21.i209 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %real_byte5.0.i205, ptr %arrayidx21.i209, align 1
  store i8 %real_byte1.0.i204, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i8 29, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  store i8 29, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 2), align 2
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 3), align 1
  store i8 %real_byte5.0.i205, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 4), align 4
  %conv32.i210 = zext i8 %real_byte1.0.i204 to i32
  %conv44.i211 = zext i8 %real_byte5.0.i205 to i32
  %or45.i212 = or i32 %conv44.i211, 488439808
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %123, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv32.i210, i32 noundef %or45.i212) #3
  %btc_fill_h2c.i213 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %134 = ptrtoint ptr %btc_fill_h2c.i213 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %btc_fill_h2c.i213, align 4
  call void %135(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i197) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i198) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i197) #3
  %136 = ptrtoint ptr %rssi_adjust_val.i139 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %rssi_adjust_val.i139, align 1
  %btc_set.i145 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %137 = ptrtoint ptr %btc_set.i145 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %btc_set.i145, align 4
  %call.i146 = call zeroext i1 %138(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %rssi_adjust_val.i139) #3
  %139 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  store i8 %139, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1
  %140 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  store i8 %140, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  br label %btc8821a1ant_ps_tdma.exit147

btc8821a1ant_ps_tdma.exit147:                     ; preds = %btc8821a1ant_set_fw_ps_tdma.exit214, %land.lhs.true.i143.btc8821a1ant_ps_tdma.exit147_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi_adjust_val.i139) #3
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef -1431676326) #3
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 6), align 2
  br label %cleanup

if.else48:                                        ; preds = %if.else36
  %a2dp_exist49 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %141 = ptrtoint ptr %a2dp_exist49 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %a2dp_exist49, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool50.not = icmp eq i8 %142, 0
  br i1 %tobool50.not, label %if.else48.if.else70_crit_edge, label %land.lhs.true52

if.else48.if.else70_crit_edge:                    ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else70

if.else48.thread:                                 ; preds = %land.lhs.true43
  %143 = ptrtoint ptr %a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %a2dp_exist, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool50.not218 = icmp eq i8 %144, 0
  br i1 %tobool50.not218, label %if.else48.thread.if.else70_crit_edge, label %land.lhs.true52.thread

if.else48.thread.if.else70_crit_edge:             ; preds = %if.else48.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else70

land.lhs.true52:                                  ; preds = %if.else48
  %pan_exist53 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %145 = ptrtoint ptr %pan_exist53 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %pan_exist53, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool54.not = icmp eq i8 %146, 0
  br i1 %tobool54.not, label %land.lhs.true52.if.else70_crit_edge, label %land.lhs.true52.if.then68_crit_edge

land.lhs.true52.if.then68_crit_edge:              ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then68

land.lhs.true52.if.else70_crit_edge:              ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else70

land.lhs.true52.thread:                           ; preds = %if.else48.thread
  %147 = ptrtoint ptr %pan_exist to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %pan_exist, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool54.not221 = icmp eq i8 %148, 0
  br i1 %tobool54.not221, label %land.lhs.true64, label %land.lhs.true52.thread.if.then68_crit_edge

land.lhs.true52.thread.if.then68_crit_edge:       ; preds = %land.lhs.true52.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then68

land.lhs.true64:                                  ; preds = %land.lhs.true52.thread
  %149 = ptrtoint ptr %pan_exist to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %pan_exist, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool66.not = icmp eq i8 %150, 0
  br i1 %tobool66.not, label %land.lhs.true64.if.else70_crit_edge, label %land.lhs.true64.if.then68_crit_edge

land.lhs.true64.if.then68_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then68

land.lhs.true64.if.else70_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else70

if.then68:                                        ; preds = %land.lhs.true64.if.then68_crit_edge, %land.lhs.true52.thread.if.then68_crit_edge, %land.lhs.true52.if.then68_crit_edge
  tail call fastcc void @btc8821a1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 43)
  tail call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #3
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 6), align 2
  br label %cleanup

if.else70:                                        ; preds = %land.lhs.true64.if.else70_crit_edge, %land.lhs.true52.if.else70_crit_edge, %if.else48.thread.if.else70_crit_edge, %if.else48.if.else70_crit_edge
  tail call fastcc void @btc8821a1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 11)
  tail call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #3
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 6), align 2
  br label %cleanup

cleanup:                                          ; preds = %if.else70, %if.then68, %btc8821a1ant_ps_tdma.exit147, %if.end35, %btc8821a1ant_ps_tdma.exit129, %btc8821a1ant_ps_tdma.exit120, %btc8821a1ant_ps_tdma.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_wifi_rssi_state(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %wifi_rssi = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi) #3
  %2 = ptrtoint ptr %wifi_rssi to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wifi_rssi, align 4
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %3 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi) #3
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 16, i32 1), align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.229)
  switch i8 %5, label %if.else19 [
    i8 2, label %entry.if.then14_crit_edge
    i8 5, label %entry.if.then14_crit_edge2
  ]

entry.if.then14_crit_edge2:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then14

entry.if.then14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then14

if.then14:                                        ; preds = %entry.if.then14_crit_edge, %entry.if.then14_crit_edge2
  %7 = ptrtoint ptr %wifi_rssi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wifi_rssi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %8)
  %cmp16 = icmp sgt i32 %8, 31
  %.str.160..str.161 = select i1 %cmp16, ptr @.str.160, ptr @.str.161
  %. = select i1 %cmp16, i8 0, i8 5
  br label %if.end100

if.else19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %wifi_rssi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wifi_rssi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %10)
  %cmp21 = icmp slt i32 %10, 30
  %.str.162..str.163 = select i1 %cmp21, ptr @.str.162, ptr @.str.163
  %.1 = select i1 %cmp21, i8 2, i8 3
  br label %if.end100

if.end100:                                        ; preds = %if.else19, %if.then14
  %.str.161.sink = phi ptr [ %.str.160..str.161, %if.then14 ], [ %.str.162..str.163, %if.else19 ]
  %wifi_rssi_state.0 = phi i8 [ %., %if.then14 ], [ %.1, %if.else19 ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.161.sink) #3
  store i8 %wifi_rssi_state.0, ptr getelementptr inbounds (%struct.coex_sta_8821a_1ant, ptr @glcoex_sta_8821a_1ant, i32 0, i32 16, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_run_sw_coex_mech(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i.i.i93 = alloca [6 x i8], align 1
  %h2c_parameter.i.i.i.i85 = alloca [6 x i8], align 1
  %h2c_parameter.i.i.i.i77 = alloca [6 x i8], align 1
  %h2c_parameter.i.i.i.i72 = alloca [6 x i8], align 1
  %h2c_parameter.i.i.i.i67 = alloca [6 x i8], align 1
  %h2c_parameter.i.i.i.i62 = alloca [6 x i8], align 1
  %h2c_parameter.i.i.i.i57 = alloca [6 x i8], align 1
  %h2c_parameter.i.i.i.i52 = alloca [6 x i8], align 1
  %h2c_parameter.i.i.i.i44 = alloca [6 x i8], align 1
  %h2c_parameter.i.i.i.i40 = alloca [6 x i8], align 1
  %h2c_parameter.i.i.i80.i = alloca [6 x i8], align 1
  %h2c_parameter.i.i.i74.i = alloca [6 x i8], align 1
  %h2c_parameter.i.i.i68.i = alloca [6 x i8], align 1
  %h2c_parameter.i.i.i62.i = alloca [6 x i8], align 1
  %h2c_parameter.i.i.i.i = alloca [6 x i8], align 1
  %wifi_connected.i = alloca i8, align 1
  %wifi_busy.i = alloca i8, align 1
  %bt_hs_on.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %bt_link_info1.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on.i) #3
  %2 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bt_hs_on.i, align 1
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %3 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on.i) #3
  %5 = ptrtoint ptr %bt_link_info1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bt_link_info1.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %entry.cleanup.sink.split.i_crit_edge, label %if.end.i

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %sco_exist.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %7 = ptrtoint ptr %sco_exist.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sco_exist.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not.i = icmp eq i8 %8, 0
  %not.tobool2.not.i = xor i1 %tobool2.not.i, true
  %spec.select.i = zext i1 %not.tobool2.not.i to i8
  %hid_exist.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %9 = ptrtoint ptr %hid_exist.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hid_exist.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not.i = icmp eq i8 %10, 0
  %inc7.i = select i1 %tobool2.not.i, i8 1, i8 2
  %num_of_diff_profile.1.i = select i1 %tobool5.not.i, i8 %spec.select.i, i8 %inc7.i
  %pan_exist.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %11 = ptrtoint ptr %pan_exist.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pan_exist.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not.i = icmp eq i8 %12, 0
  %not.tobool9.not.i = xor i1 %tobool9.not.i, true
  %inc11.i = zext i1 %not.tobool9.not.i to i8
  %num_of_diff_profile.2.i = add nuw nsw i8 %num_of_diff_profile.1.i, %inc11.i
  %a2dp_exist.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %13 = ptrtoint ptr %a2dp_exist.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %a2dp_exist.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool13.not.i = icmp eq i8 %14, 0
  %not.tobool13.not.i = xor i1 %tobool13.not.i, true
  %inc15.i = zext i1 %not.tobool13.not.i to i8
  %num_of_diff_profile.3.i = add nuw nsw i8 %num_of_diff_profile.2.i, %inc15.i
  %trunc.i = trunc i8 %num_of_diff_profile.3.i to i4
  %15 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.230)
  switch i4 %trunc.i, label %if.else169.i [
    i4 1, label %if.then18.i
    i4 2, label %if.then45.i
    i4 3, label %if.then109.i
  ]

if.then18.i:                                      ; preds = %if.end.i
  %16 = select i1 %tobool2.not.i, i1 %tobool5.not.i, i1 false
  %.str.179.mux.i = select i1 %tobool2.not.i, ptr @.str.180, ptr @.str.179
  %.mux.i = select i1 %tobool2.not.i, i8 2, i8 1
  %17 = select i1 %16, i1 %tobool13.not.i, i1 false
  %.str.179.mux.mux.i = select i1 %16, ptr @.str.181, ptr %.str.179.mux.i
  %.mux.mux.i = select i1 %16, i8 3, i8 %.mux.i
  br i1 %17, label %if.else29.i, label %if.then18.i.cleanup.sink.split.i_crit_edge

if.then18.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

if.else29.i:                                      ; preds = %if.then18.i
  br i1 %tobool9.not.i, label %if.else29.i.btc8821a1ant_action_algorithm.exit_crit_edge, label %if.then32.i

if.else29.i.btc8821a1ant_action_algorithm.exit_crit_edge: ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_action_algorithm.exit

if.then32.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bt_hs_on.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool33.not.i = icmp eq i8 %19, 0
  %.str.183..str.182.i = select i1 %tobool33.not.i, ptr @.str.183, ptr @.str.182
  %..i = select i1 %tobool33.not.i, i8 5, i8 6
  br label %cleanup.sink.split.i

if.then45.i:                                      ; preds = %if.end.i
  br i1 %tobool2.not.i, label %if.else67.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.then45.i
  %20 = select i1 %tobool5.not.i, i1 %tobool13.not.i, i1 false
  %.str.184.mux.i = select i1 %tobool5.not.i, ptr @.str.185, ptr @.str.184
  %.mux288.i = select i1 %tobool5.not.i, i8 1, i8 2
  br i1 %20, label %if.else56.i, label %if.then48.i.cleanup.sink.split.i_crit_edge

if.then48.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

if.else56.i:                                      ; preds = %if.then48.i
  br i1 %tobool9.not.i, label %if.else56.i.btc8821a1ant_action_algorithm.exit_crit_edge, label %if.then59.i

if.else56.i.btc8821a1ant_action_algorithm.exit_crit_edge: ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_action_algorithm.exit

if.then59.i:                                      ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bt_hs_on.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool60.not.i = icmp eq i8 %22, 0
  %.str.187..str.186.i = select i1 %tobool60.not.i, ptr @.str.187, ptr @.str.186
  %.276.i = select i1 %tobool60.not.i, i8 8, i8 1
  br label %cleanup.sink.split.i

if.else67.i:                                      ; preds = %if.then45.i
  br i1 %tobool5.not.i, label %if.else88.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.else67.i
  br i1 %tobool13.not.i, label %land.lhs.true79.i, label %land.lhs.true.i.cleanup.sink.split.i_crit_edge

land.lhs.true.i.cleanup.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

land.lhs.true79.i:                                ; preds = %land.lhs.true.i
  br i1 %tobool9.not.i, label %land.lhs.true79.i.btc8821a1ant_action_algorithm.exit_crit_edge, label %if.then83.i

land.lhs.true79.i.btc8821a1ant_action_algorithm.exit_crit_edge: ; preds = %land.lhs.true79.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_action_algorithm.exit

if.then83.i:                                      ; preds = %land.lhs.true79.i
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bt_hs_on.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool84.not.i = icmp eq i8 %24, 0
  %.str.190..str.189.i = select i1 %tobool84.not.i, ptr @.str.190, ptr @.str.189
  %.277.i = select i1 %tobool84.not.i, i8 8, i8 10
  br label %cleanup.sink.split.i

if.else88.i:                                      ; preds = %if.else67.i
  %brmerge.i = select i1 %tobool9.not.i, i1 true, i1 %tobool13.not.i
  br i1 %brmerge.i, label %if.else88.i.btc8821a1ant_action_algorithm.exit_crit_edge, label %if.then96.i

if.else88.i.btc8821a1ant_action_algorithm.exit_crit_edge: ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_action_algorithm.exit

if.then96.i:                                      ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #5
  %25 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bt_hs_on.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool97.not.i = icmp eq i8 %26, 0
  %.str.192..str.191.i = select i1 %tobool97.not.i, ptr @.str.192, ptr @.str.191
  %.278.i = select i1 %tobool97.not.i, i8 7, i8 4
  br label %cleanup.sink.split.i

if.then109.i:                                     ; preds = %if.end.i
  br i1 %tobool2.not.i, label %if.else150.i, label %if.then112.i

if.then112.i:                                     ; preds = %if.then109.i
  br i1 %tobool5.not.i, label %if.else134.i, label %land.lhs.true116.i

land.lhs.true116.i:                               ; preds = %if.then112.i
  br i1 %tobool13.not.i, label %land.lhs.true125.i, label %land.lhs.true116.i.cleanup.sink.split.i_crit_edge

land.lhs.true116.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true116.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

land.lhs.true125.i:                               ; preds = %land.lhs.true116.i
  br i1 %tobool9.not.i, label %land.lhs.true125.i.btc8821a1ant_action_algorithm.exit_crit_edge, label %if.then129.i

land.lhs.true125.i.btc8821a1ant_action_algorithm.exit_crit_edge: ; preds = %land.lhs.true125.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_action_algorithm.exit

if.then129.i:                                     ; preds = %land.lhs.true125.i
  call void @__sanitizer_cov_trace_pc() #5
  %27 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bt_hs_on.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool130.not.i = icmp eq i8 %28, 0
  %.str.195..str.194.i = select i1 %tobool130.not.i, ptr @.str.195, ptr @.str.194
  %.279.i = select i1 %tobool130.not.i, i8 8, i8 10
  br label %cleanup.sink.split.i

if.else134.i:                                     ; preds = %if.then112.i
  %brmerge269.i = select i1 %tobool9.not.i, i1 true, i1 %tobool13.not.i
  br i1 %brmerge269.i, label %if.else134.i.btc8821a1ant_action_algorithm.exit_crit_edge, label %if.then142.i

if.else134.i.btc8821a1ant_action_algorithm.exit_crit_edge: ; preds = %if.else134.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_action_algorithm.exit

if.then142.i:                                     ; preds = %if.else134.i
  call void @__sanitizer_cov_trace_pc() #5
  %29 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bt_hs_on.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool143.not.i = icmp eq i8 %30, 0
  %.str.197..str.196.i = select i1 %tobool143.not.i, ptr @.str.197, ptr @.str.196
  %.280.i = select i1 %tobool143.not.i, i8 8, i8 1
  br label %cleanup.sink.split.i

if.else150.i:                                     ; preds = %if.then109.i
  %brmerge270.i = select i1 %tobool5.not.i, i1 true, i1 %tobool9.not.i
  %brmerge271.i = select i1 %brmerge270.i, i1 true, i1 %tobool13.not.i
  br i1 %brmerge271.i, label %if.else150.i.btc8821a1ant_action_algorithm.exit_crit_edge, label %if.then162.i

if.else150.i.btc8821a1ant_action_algorithm.exit_crit_edge: ; preds = %if.else150.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_action_algorithm.exit

if.then162.i:                                     ; preds = %if.else150.i
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bt_hs_on.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool163.not.i = icmp eq i8 %32, 0
  %.str.199..str.198.i = select i1 %tobool163.not.i, ptr @.str.199, ptr @.str.198
  %.281.i = select i1 %tobool163.not.i, i8 9, i8 10
  br label %cleanup.sink.split.i

if.else169.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %num_of_diff_profile.3.i)
  %cmp171.i = icmp ult i8 %num_of_diff_profile.3.i, 3
  %brmerge272.i = select i1 %cmp171.i, i1 true, i1 %tobool2.not.i
  %brmerge273.i = select i1 %brmerge272.i, i1 true, i1 %tobool5.not.i
  %brmerge274.i = select i1 %brmerge273.i, i1 true, i1 %tobool9.not.i
  %brmerge275.i = select i1 %brmerge274.i, i1 true, i1 %tobool13.not.i
  br i1 %brmerge275.i, label %if.else169.i.btc8821a1ant_action_algorithm.exit_crit_edge, label %if.then188.i

if.else169.i.btc8821a1ant_action_algorithm.exit_crit_edge: ; preds = %if.else169.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_action_algorithm.exit

if.then188.i:                                     ; preds = %if.else169.i
  call void @__sanitizer_cov_trace_pc() #5
  %33 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bt_hs_on.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool189.not.i = icmp eq i8 %34, 0
  %.str.201..str.200.i = select i1 %tobool189.not.i, ptr @.str.201, ptr @.str.200
  %.282.i = select i1 %tobool189.not.i, i8 8, i8 0
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then188.i, %if.then162.i, %if.then142.i, %if.then129.i, %land.lhs.true116.i.cleanup.sink.split.i_crit_edge, %if.then96.i, %if.then83.i, %land.lhs.true.i.cleanup.sink.split.i_crit_edge, %if.then59.i, %if.then48.i.cleanup.sink.split.i_crit_edge, %if.then32.i, %if.then18.i.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %.str.180.sink.i = phi ptr [ @.str.178, %entry.cleanup.sink.split.i_crit_edge ], [ %.str.179.mux.mux.i, %if.then18.i.cleanup.sink.split.i_crit_edge ], [ %.str.183..str.182.i, %if.then32.i ], [ %.str.184.mux.i, %if.then48.i.cleanup.sink.split.i_crit_edge ], [ %.str.187..str.186.i, %if.then59.i ], [ @.str.188, %land.lhs.true.i.cleanup.sink.split.i_crit_edge ], [ %.str.190..str.189.i, %if.then83.i ], [ %.str.192..str.191.i, %if.then96.i ], [ @.str.193, %land.lhs.true116.i.cleanup.sink.split.i_crit_edge ], [ %.str.195..str.194.i, %if.then129.i ], [ %.str.197..str.196.i, %if.then142.i ], [ %.str.199..str.198.i, %if.then162.i ], [ %.str.201..str.200.i, %if.then188.i ]
  %retval.0.ph.i = phi i8 [ 0, %entry.cleanup.sink.split.i_crit_edge ], [ %.mux.mux.i, %if.then18.i.cleanup.sink.split.i_crit_edge ], [ %..i, %if.then32.i ], [ %.mux288.i, %if.then48.i.cleanup.sink.split.i_crit_edge ], [ %.276.i, %if.then59.i ], [ 10, %land.lhs.true.i.cleanup.sink.split.i_crit_edge ], [ %.277.i, %if.then83.i ], [ %.278.i, %if.then96.i ], [ 2, %land.lhs.true116.i.cleanup.sink.split.i_crit_edge ], [ %.279.i, %if.then129.i ], [ %.280.i, %if.then142.i ], [ %.281.i, %if.then162.i ], [ %.282.i, %if.then188.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.180.sink.i) #3
  br label %btc8821a1ant_action_algorithm.exit

btc8821a1ant_action_algorithm.exit:               ; preds = %cleanup.sink.split.i, %if.else169.i.btc8821a1ant_action_algorithm.exit_crit_edge, %if.else150.i.btc8821a1ant_action_algorithm.exit_crit_edge, %if.else134.i.btc8821a1ant_action_algorithm.exit_crit_edge, %land.lhs.true125.i.btc8821a1ant_action_algorithm.exit_crit_edge, %if.else88.i.btc8821a1ant_action_algorithm.exit_crit_edge, %land.lhs.true79.i.btc8821a1ant_action_algorithm.exit_crit_edge, %if.else56.i.btc8821a1ant_action_algorithm.exit_crit_edge, %if.else29.i.btc8821a1ant_action_algorithm.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %if.else29.i.btc8821a1ant_action_algorithm.exit_crit_edge ], [ 0, %if.else56.i.btc8821a1ant_action_algorithm.exit_crit_edge ], [ 0, %if.else88.i.btc8821a1ant_action_algorithm.exit_crit_edge ], [ 0, %if.else134.i.btc8821a1ant_action_algorithm.exit_crit_edge ], [ 0, %if.else150.i.btc8821a1ant_action_algorithm.exit_crit_edge ], [ 0, %if.else169.i.btc8821a1ant_action_algorithm.exit_crit_edge ], [ 0, %land.lhs.true79.i.btc8821a1ant_action_algorithm.exit_crit_edge ], [ 0, %land.lhs.true125.i.btc8821a1ant_action_algorithm.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on.i) #3
  store i8 %retval.0.i, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 30), align 4
  %35 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_connected.i) #3
  %37 = ptrtoint ptr %wifi_connected.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %wifi_connected.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_busy.i) #3
  %38 = ptrtoint ptr %wifi_busy.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %wifi_busy.i, align 1
  %39 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %btc_get.i, align 4
  %call.i37 = call zeroext i1 %40(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected.i) #3
  %41 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_get.i, align 4
  %call2.i = call zeroext i1 %42(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %wifi_busy.i) #3
  %43 = ptrtoint ptr %wifi_connected.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %wifi_connected.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i38 = icmp eq i8 %44, 0
  %45 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 31), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i38, label %land.lhs.true.i39, label %land.lhs.true6.i

land.lhs.true.i39:                                ; preds = %btc8821a1ant_action_algorithm.exit
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true14.i

if.then.i:                                        ; preds = %land.lhs.true.i39
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.202) #3
  %46 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %47, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.121, i32 noundef 0) #3
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4
  %48 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp.i.i.i = icmp eq i8 %48, 0
  br i1 %cmp.i.i.i, label %if.then.i.btc8821a1ant_is_common_action.exit.thread_crit_edge, label %if.end10.i.i.i

if.then.i.btc8821a1ant_is_common_action.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_is_common_action.exit.thread

if.end10.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %49 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i) #3
  %51 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i.i, i32 1
  %52 = call ptr @memset(ptr %51, i32 0, i32 5)
  %53 = ptrtoint ptr %h2c_parameter.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 6, ptr %h2c_parameter.i.i.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %50, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.124) #3
  %btc_fill_h2c.i.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %54 = ptrtoint ptr %btc_fill_h2c.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %btc_fill_h2c.i.i.i.i, align 4
  call void %55(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i) #3
  br label %btc8821a1ant_is_common_action.exit.thread.sink.split

land.lhs.true6.i:                                 ; preds = %btc8821a1ant_action_algorithm.exit
  br i1 %cmp.i, label %if.then11.i, label %land.lhs.true23.i

if.then11.i:                                      ; preds = %land.lhs.true6.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.203) #3
  %56 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %57, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.121, i32 noundef 0) #3
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4
  %58 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp.i.i64.i = icmp eq i8 %58, 0
  br i1 %cmp.i.i64.i, label %if.then11.i.btc8821a1ant_is_common_action.exit.thread_crit_edge, label %if.end10.i.i65.i

if.then11.i.btc8821a1ant_is_common_action.exit.thread_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_is_common_action.exit.thread

if.end10.i.i65.i:                                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #5
  %59 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i62.i) #3
  %61 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i62.i, i32 1
  %62 = call ptr @memset(ptr %61, i32 0, i32 5)
  %63 = ptrtoint ptr %h2c_parameter.i.i.i62.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 6, ptr %h2c_parameter.i.i.i62.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %60, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.124) #3
  %btc_fill_h2c.i.i.i66.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %64 = ptrtoint ptr %btc_fill_h2c.i.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %btc_fill_h2c.i.i.i66.i, align 4
  call void %65(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i.i62.i) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i62.i) #3
  br label %btc8821a1ant_is_common_action.exit.thread.sink.split

land.lhs.true14.i:                                ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp17.i = icmp eq i8 %45, 1
  br i1 %cmp17.i, label %if.then19.i, label %if.then36.i

if.then19.i:                                      ; preds = %land.lhs.true14.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.204) #3
  %66 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %67, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.121, i32 noundef 0) #3
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4
  %68 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp.i.i70.i = icmp eq i8 %68, 0
  br i1 %cmp.i.i70.i, label %if.then19.i.btc8821a1ant_is_common_action.exit.thread_crit_edge, label %if.end10.i.i71.i

if.then19.i.btc8821a1ant_is_common_action.exit.thread_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_is_common_action.exit.thread

if.end10.i.i71.i:                                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #5
  %69 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i68.i) #3
  %71 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i68.i, i32 1
  %72 = call ptr @memset(ptr %71, i32 0, i32 5)
  %73 = ptrtoint ptr %h2c_parameter.i.i.i68.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 6, ptr %h2c_parameter.i.i.i68.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %70, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.124) #3
  %btc_fill_h2c.i.i.i72.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %74 = ptrtoint ptr %btc_fill_h2c.i.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %btc_fill_h2c.i.i.i72.i, align 4
  call void %75(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i.i68.i) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i68.i) #3
  br label %btc8821a1ant_is_common_action.exit.thread.sink.split

land.lhs.true23.i:                                ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp26.i = icmp eq i8 %45, 1
  br i1 %cmp26.i, label %if.then28.i, label %if.else37.i

if.then28.i:                                      ; preds = %land.lhs.true23.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.205) #3
  %76 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %77, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.121, i32 noundef 0) #3
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4
  %78 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp.i.i76.i = icmp eq i8 %78, 0
  br i1 %cmp.i.i76.i, label %if.then28.i.btc8821a1ant_is_common_action.exit.thread_crit_edge, label %if.end10.i.i77.i

if.then28.i.btc8821a1ant_is_common_action.exit.thread_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_is_common_action.exit.thread

if.end10.i.i77.i:                                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #5
  %79 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i74.i) #3
  %81 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i74.i, i32 1
  %82 = call ptr @memset(ptr %81, i32 0, i32 5)
  %83 = ptrtoint ptr %h2c_parameter.i.i.i74.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 6, ptr %h2c_parameter.i.i.i74.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %80, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.124) #3
  %btc_fill_h2c.i.i.i78.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %84 = ptrtoint ptr %btc_fill_h2c.i.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %btc_fill_h2c.i.i.i78.i, align 4
  call void %85(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i.i74.i) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i74.i) #3
  br label %btc8821a1ant_is_common_action.exit.thread.sink.split

if.then36.i:                                      ; preds = %land.lhs.true14.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.206) #3
  %86 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %87, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.121, i32 noundef 0) #3
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4
  %88 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp.i.i82.i = icmp eq i8 %88, 0
  br i1 %cmp.i.i82.i, label %if.then36.i.btc8821a1ant_is_common_action.exit.thread_crit_edge, label %if.end10.i.i83.i

if.then36.i.btc8821a1ant_is_common_action.exit.thread_crit_edge: ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_is_common_action.exit.thread

if.end10.i.i83.i:                                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #5
  %89 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i80.i) #3
  %91 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i80.i, i32 1
  %92 = call ptr @memset(ptr %91, i32 0, i32 5)
  %93 = ptrtoint ptr %h2c_parameter.i.i.i80.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 6, ptr %h2c_parameter.i.i.i80.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %90, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.124) #3
  %btc_fill_h2c.i.i.i84.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %94 = ptrtoint ptr %btc_fill_h2c.i.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %btc_fill_h2c.i.i.i84.i, align 4
  call void %95(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i.i80.i) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i80.i) #3
  br label %btc8821a1ant_is_common_action.exit.thread.sink.split

if.else37.i:                                      ; preds = %land.lhs.true23.i
  %96 = ptrtoint ptr %wifi_busy.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %wifi_busy.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool38.not.i = icmp eq i8 %97, 0
  %.str.208..str.207 = select i1 %tobool38.not.i, ptr @.str.208, ptr @.str.207
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.208..str.207) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected.i) #3
  %98 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 30), align 4
  %99 = zext i8 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.231)
  switch i8 %98, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb3
    i8 3, label %sw.bb4
    i8 4, label %sw.bb5
    i8 5, label %sw.bb6
    i8 6, label %sw.bb7
    i8 7, label %sw.bb8
    i8 8, label %sw.bb9
    i8 9, label %sw.bb10
    i8 10, label %sw.bb11
  ]

btc8821a1ant_is_common_action.exit.thread.sink.split: ; preds = %if.end10.i.i83.i, %if.end10.i.i77.i, %if.end10.i.i71.i, %if.end10.i.i65.i, %if.end10.i.i.i
  %100 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4, !range !443
  store i8 %100, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1
  br label %btc8821a1ant_is_common_action.exit.thread

btc8821a1ant_is_common_action.exit.thread:        ; preds = %btc8821a1ant_is_common_action.exit.thread.sink.split, %if.then36.i.btc8821a1ant_is_common_action.exit.thread_crit_edge, %if.then28.i.btc8821a1ant_is_common_action.exit.thread_crit_edge, %if.then19.i.btc8821a1ant_is_common_action.exit.thread_crit_edge, %if.then11.i.btc8821a1ant_is_common_action.exit.thread_crit_edge, %if.then.i.btc8821a1ant_is_common_action.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected.i) #3
  br label %if.end

sw.bb:                                            ; preds = %if.else37.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.167) #3
  %101 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %102, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.121, i32 noundef 1) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4
  %103 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %103)
  %cmp.i.i.i41 = icmp eq i8 %103, 1
  br i1 %cmp.i.i.i41, label %sw.bb.sw.epilog_crit_edge, label %if.end10.i.i.i43

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end10.i.i.i43:                                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %104 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i40) #3
  %106 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i.i40, i32 1
  %107 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i.i40, i32 2
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %107, align 1
  %109 = ptrtoint ptr %h2c_parameter.i.i.i.i40 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 6, ptr %h2c_parameter.i.i.i.i40, align 1
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %106, align 1
  %arrayidx4.i.i.i.i = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i.i.i40, i32 0, i32 3
  %111 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 -9, ptr %arrayidx4.i.i.i.i, align 1
  %arrayidx5.i.i.i.i = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i.i.i40, i32 0, i32 4
  %112 = ptrtoint ptr %arrayidx5.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 -8, ptr %arrayidx5.i.i.i.i, align 1
  %arrayidx6.i.i.i.i = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i.i.i40, i32 0, i32 5
  %113 = ptrtoint ptr %arrayidx6.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -7, ptr %arrayidx6.i.i.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %105, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123) #3
  %btc_fill_h2c.i.i.i.i42 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %114 = ptrtoint ptr %btc_fill_h2c.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %btc_fill_h2c.i.i.i.i42, align 4
  call void %115(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i.i.i40) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i40) #3
  %116 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4, !range !443
  store i8 %116, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.else37.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.168) #3
  %117 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %118, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.121, i32 noundef 1) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4
  %119 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %119)
  %cmp.i.i.i46 = icmp eq i8 %119, 1
  br i1 %cmp.i.i.i46, label %sw.bb3.sw.epilog_crit_edge, label %if.end10.i.i.i51

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end10.i.i.i51:                                 ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  %120 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i44) #3
  %122 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i.i44, i32 1
  %123 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i.i44, i32 2
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %123, align 1
  %125 = ptrtoint ptr %h2c_parameter.i.i.i.i44 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 6, ptr %h2c_parameter.i.i.i.i44, align 1
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %122, align 1
  %arrayidx4.i.i.i.i47 = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i.i.i44, i32 0, i32 3
  %127 = ptrtoint ptr %arrayidx4.i.i.i.i47 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -9, ptr %arrayidx4.i.i.i.i47, align 1
  %arrayidx5.i.i.i.i48 = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i.i.i44, i32 0, i32 4
  %128 = ptrtoint ptr %arrayidx5.i.i.i.i48 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 -8, ptr %arrayidx5.i.i.i.i48, align 1
  %arrayidx6.i.i.i.i49 = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i.i.i44, i32 0, i32 5
  %129 = ptrtoint ptr %arrayidx6.i.i.i.i49 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -7, ptr %arrayidx6.i.i.i.i49, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %121, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123) #3
  %btc_fill_h2c.i.i.i.i50 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %130 = ptrtoint ptr %btc_fill_h2c.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %btc_fill_h2c.i.i.i.i50, align 4
  call void %131(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i.i.i44) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i44) #3
  %132 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4, !range !443
  store i8 %132, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.else37.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.169) #3
  %133 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %134, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.121, i32 noundef 0) #3
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4
  %135 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %cmp.i.i.i54 = icmp eq i8 %135, 0
  br i1 %cmp.i.i.i54, label %sw.bb4.sw.epilog_crit_edge, label %if.end10.i.i.i56

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end10.i.i.i56:                                 ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  %136 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i52) #3
  %138 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i.i52, i32 1
  %139 = call ptr @memset(ptr %138, i32 0, i32 5)
  %140 = ptrtoint ptr %h2c_parameter.i.i.i.i52 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 6, ptr %h2c_parameter.i.i.i.i52, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %137, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.124) #3
  %btc_fill_h2c.i.i.i.i55 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %141 = ptrtoint ptr %btc_fill_h2c.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %btc_fill_h2c.i.i.i.i55, align 4
  call void %142(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i.i.i52) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i52) #3
  %143 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4, !range !443
  store i8 %143, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.else37.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.170) #3
  %144 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %145, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.121, i32 noundef 0) #3
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4
  %146 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %cmp.i.i.i59 = icmp eq i8 %146, 0
  br i1 %cmp.i.i.i59, label %sw.bb5.sw.epilog_crit_edge, label %if.end10.i.i.i61

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end10.i.i.i61:                                 ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  %147 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i57) #3
  %149 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i.i57, i32 1
  %150 = call ptr @memset(ptr %149, i32 0, i32 5)
  %151 = ptrtoint ptr %h2c_parameter.i.i.i.i57 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 6, ptr %h2c_parameter.i.i.i.i57, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %148, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.124) #3
  %btc_fill_h2c.i.i.i.i60 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %152 = ptrtoint ptr %btc_fill_h2c.i.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %btc_fill_h2c.i.i.i.i60, align 4
  call void %153(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i.i.i57) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i57) #3
  %154 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4, !range !443
  store i8 %154, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.else37.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.171) #3
  %155 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %156, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.121, i32 noundef 0) #3
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4
  %157 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %cmp.i.i.i64 = icmp eq i8 %157, 0
  br i1 %cmp.i.i.i64, label %sw.bb6.sw.epilog_crit_edge, label %if.end10.i.i.i66

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end10.i.i.i66:                                 ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  %158 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i62) #3
  %160 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i.i62, i32 1
  %161 = call ptr @memset(ptr %160, i32 0, i32 5)
  %162 = ptrtoint ptr %h2c_parameter.i.i.i.i62 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 6, ptr %h2c_parameter.i.i.i.i62, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %159, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.124) #3
  %btc_fill_h2c.i.i.i.i65 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %163 = ptrtoint ptr %btc_fill_h2c.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %btc_fill_h2c.i.i.i.i65, align 4
  call void %164(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i.i.i62) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i62) #3
  %165 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4, !range !443
  store i8 %165, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.else37.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.172) #3
  %166 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %167, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.121, i32 noundef 0) #3
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4
  %168 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %cmp.i.i.i69 = icmp eq i8 %168, 0
  br i1 %cmp.i.i.i69, label %sw.bb7.sw.epilog_crit_edge, label %if.end10.i.i.i71

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end10.i.i.i71:                                 ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  %169 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i67) #3
  %171 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i.i67, i32 1
  %172 = call ptr @memset(ptr %171, i32 0, i32 5)
  %173 = ptrtoint ptr %h2c_parameter.i.i.i.i67 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 6, ptr %h2c_parameter.i.i.i.i67, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %170, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.124) #3
  %btc_fill_h2c.i.i.i.i70 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %174 = ptrtoint ptr %btc_fill_h2c.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %btc_fill_h2c.i.i.i.i70, align 4
  call void %175(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i.i.i67) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i67) #3
  %176 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4, !range !443
  store i8 %176, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.else37.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.173) #3
  %177 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %178, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.121, i32 noundef 0) #3
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4
  %179 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %cmp.i.i.i74 = icmp eq i8 %179, 0
  br i1 %cmp.i.i.i74, label %sw.bb8.sw.epilog_crit_edge, label %if.end10.i.i.i76

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end10.i.i.i76:                                 ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  %180 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i72) #3
  %182 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i.i72, i32 1
  %183 = call ptr @memset(ptr %182, i32 0, i32 5)
  %184 = ptrtoint ptr %h2c_parameter.i.i.i.i72 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 6, ptr %h2c_parameter.i.i.i.i72, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %181, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.124) #3
  %btc_fill_h2c.i.i.i.i75 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %185 = ptrtoint ptr %btc_fill_h2c.i.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %btc_fill_h2c.i.i.i.i75, align 4
  call void %186(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i.i.i72) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i72) #3
  %187 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4, !range !443
  store i8 %187, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.else37.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.174) #3
  %188 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %189, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.121, i32 noundef 1) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4
  %190 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %190)
  %cmp.i.i.i79 = icmp eq i8 %190, 1
  br i1 %cmp.i.i.i79, label %sw.bb9.sw.epilog_crit_edge, label %if.end10.i.i.i84

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end10.i.i.i84:                                 ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #5
  %191 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i77) #3
  %193 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i.i77, i32 1
  %194 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i.i77, i32 2
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %194, align 1
  %196 = ptrtoint ptr %h2c_parameter.i.i.i.i77 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 6, ptr %h2c_parameter.i.i.i.i77, align 1
  %197 = ptrtoint ptr %193 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 1, ptr %193, align 1
  %arrayidx4.i.i.i.i80 = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i.i.i77, i32 0, i32 3
  %198 = ptrtoint ptr %arrayidx4.i.i.i.i80 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 -9, ptr %arrayidx4.i.i.i.i80, align 1
  %arrayidx5.i.i.i.i81 = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i.i.i77, i32 0, i32 4
  %199 = ptrtoint ptr %arrayidx5.i.i.i.i81 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 -8, ptr %arrayidx5.i.i.i.i81, align 1
  %arrayidx6.i.i.i.i82 = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i.i.i77, i32 0, i32 5
  %200 = ptrtoint ptr %arrayidx6.i.i.i.i82 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 -7, ptr %arrayidx6.i.i.i.i82, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %192, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123) #3
  %btc_fill_h2c.i.i.i.i83 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %201 = ptrtoint ptr %btc_fill_h2c.i.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %btc_fill_h2c.i.i.i.i83, align 4
  call void %202(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i.i.i77) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i77) #3
  %203 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4, !range !443
  store i8 %203, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.else37.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.175) #3
  %204 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %205, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.121, i32 noundef 1) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4
  %206 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %206)
  %cmp.i.i.i87 = icmp eq i8 %206, 1
  br i1 %cmp.i.i.i87, label %sw.bb10.sw.epilog_crit_edge, label %if.end10.i.i.i92

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end10.i.i.i92:                                 ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #5
  %207 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i85) #3
  %209 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i.i85, i32 1
  %210 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i.i85, i32 2
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 0, ptr %210, align 1
  %212 = ptrtoint ptr %h2c_parameter.i.i.i.i85 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 6, ptr %h2c_parameter.i.i.i.i85, align 1
  %213 = ptrtoint ptr %209 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 1, ptr %209, align 1
  %arrayidx4.i.i.i.i88 = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i.i.i85, i32 0, i32 3
  %214 = ptrtoint ptr %arrayidx4.i.i.i.i88 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 -9, ptr %arrayidx4.i.i.i.i88, align 1
  %arrayidx5.i.i.i.i89 = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i.i.i85, i32 0, i32 4
  %215 = ptrtoint ptr %arrayidx5.i.i.i.i89 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 -8, ptr %arrayidx5.i.i.i.i89, align 1
  %arrayidx6.i.i.i.i90 = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i.i.i85, i32 0, i32 5
  %216 = ptrtoint ptr %arrayidx6.i.i.i.i90 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 -7, ptr %arrayidx6.i.i.i.i90, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %208, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123) #3
  %btc_fill_h2c.i.i.i.i91 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %217 = ptrtoint ptr %btc_fill_h2c.i.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %btc_fill_h2c.i.i.i.i91, align 4
  call void %218(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i.i.i85) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i85) #3
  %219 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4, !range !443
  store i8 %219, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.else37.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.176) #3
  %220 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %221, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.121, i32 noundef 1) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4
  %222 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %222)
  %cmp.i.i.i95 = icmp eq i8 %222, 1
  br i1 %cmp.i.i.i95, label %sw.bb11.sw.epilog_crit_edge, label %if.end10.i.i.i100

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end10.i.i.i100:                                ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #5
  %223 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i93) #3
  %225 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i.i93, i32 1
  %226 = getelementptr inbounds i8, ptr %h2c_parameter.i.i.i.i93, i32 2
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 0, ptr %226, align 1
  %228 = ptrtoint ptr %h2c_parameter.i.i.i.i93 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 6, ptr %h2c_parameter.i.i.i.i93, align 1
  %229 = ptrtoint ptr %225 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 1, ptr %225, align 1
  %arrayidx4.i.i.i.i96 = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i.i.i93, i32 0, i32 3
  %230 = ptrtoint ptr %arrayidx4.i.i.i.i96 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 -9, ptr %arrayidx4.i.i.i.i96, align 1
  %arrayidx5.i.i.i.i97 = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i.i.i93, i32 0, i32 4
  %231 = ptrtoint ptr %arrayidx5.i.i.i.i97 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 -8, ptr %arrayidx5.i.i.i.i97, align 1
  %arrayidx6.i.i.i.i98 = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i.i.i93, i32 0, i32 5
  %232 = ptrtoint ptr %arrayidx6.i.i.i.i98 to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 -7, ptr %arrayidx6.i.i.i.i98, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %224, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123) #3
  %btc_fill_h2c.i.i.i.i99 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %233 = ptrtoint ptr %btc_fill_h2c.i.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %btc_fill_h2c.i.i.i.i99, align 4
  call void %234(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i.i.i93) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i.i.i93) #3
  %235 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 16), align 4, !range !443
  store i8 %235, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 15), align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.177) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end10.i.i.i100, %sw.bb11.sw.epilog_crit_edge, %if.end10.i.i.i92, %sw.bb10.sw.epilog_crit_edge, %if.end10.i.i.i84, %sw.bb9.sw.epilog_crit_edge, %if.end10.i.i.i76, %sw.bb8.sw.epilog_crit_edge, %if.end10.i.i.i71, %sw.bb7.sw.epilog_crit_edge, %if.end10.i.i.i66, %sw.bb6.sw.epilog_crit_edge, %if.end10.i.i.i61, %sw.bb5.sw.epilog_crit_edge, %if.end10.i.i.i56, %sw.bb4.sw.epilog_crit_edge, %if.end10.i.i.i51, %sw.bb3.sw.epilog_crit_edge, %if.end10.i.i.i43, %sw.bb.sw.epilog_crit_edge
  %236 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 30), align 4
  store i8 %236, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 29), align 1
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %btc8821a1ant_is_common_action.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a1ant_action_wifi_not_connected_asso_auth(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i31 = alloca [5 x i8], align 1
  %ap_enable.i32 = alloca i8, align 1
  %h2c_parameter.i = alloca [5 x i8], align 1
  %ap_enable.i = alloca i8, align 1
  %rssi_adjust_val.i20 = alloca i8, align 1
  %rssi_adjust_val.i = alloca i8, align 1
  %low_pwr_disable.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #3
  %0 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %1 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %2(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #3
  %3 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #3
  %sco_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %sco_exist to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sco_exist, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %hid_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %7 = ptrtoint ptr %hid_exist to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hid_exist, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  br i1 %tobool2.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %9 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi_adjust_val.i) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4
  store i8 14, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef 14) #3
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1, !range !443
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %12)
  %cmp.i = icmp eq i8 %11, %12
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.if.end23.i_crit_edge

if.then.if.end23.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i

land.lhs.true.i:                                  ; preds = %if.then
  %13 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  %14 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %14)
  %cmp19.i = icmp eq i8 %13, %14
  br i1 %cmp19.i, label %land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge, label %land.lhs.true.i.if.end23.i_crit_edge

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i

land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ps_tdma.exit

if.end23.i:                                       ; preds = %land.lhs.true.i.if.end23.i_crit_edge, %if.then.if.end23.i_crit_edge
  %15 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i) #3
  %17 = ptrtoint ptr %ap_enable.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %ap_enable.i, align 1
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %18 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_get.i, align 4
  %call.i30 = call zeroext i1 %19(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i) #3
  %20 = ptrtoint ptr %ap_enable.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ap_enable.i, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.not = icmp eq i8 %21, 0
  br i1 %tobool.not.i.not, label %if.end23.i.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge, label %if.then5.i

if.end23.i.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_set_fw_ps_tdma.exit

if.then5.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %16, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131) #3
  br label %btc8821a1ant_set_fw_ps_tdma.exit

btc8821a1ant_set_fw_ps_tdma.exit:                 ; preds = %if.then5.i, %if.end23.i.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge
  %real_byte1.0.i = phi i8 [ 97, %if.then5.i ], [ 81, %if.end23.i.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge ]
  %real_byte5.0.i = phi i8 [ 52, %if.then5.i ], [ 20, %if.end23.i.btc8821a1ant_set_fw_ps_tdma.exit_crit_edge ]
  %22 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %real_byte1.0.i, ptr %h2c_parameter.i, align 1
  %arrayidx18.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 30, ptr %arrayidx18.i, align 1
  %arrayidx19.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %arrayidx19.i, align 1
  %arrayidx20.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 16, ptr %arrayidx20.i, align 1
  %arrayidx21.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %real_byte5.0.i, ptr %arrayidx21.i, align 1
  store i8 %real_byte1.0.i, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i8 30, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 2), align 2
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 3), align 1
  store i8 %real_byte5.0.i, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 4), align 4
  %conv32.i = zext i8 %real_byte1.0.i to i32
  %conv44.i = zext i8 %real_byte5.0.i to i32
  %or45.i = or i32 %conv44.i, 503517184
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %16, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv32.i, i32 noundef %or45.i) #3
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %27 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %28(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i) #3
  %29 = ptrtoint ptr %rssi_adjust_val.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %rssi_adjust_val.i, align 1
  %30 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_set.i, align 4
  %call.i = call zeroext i1 %31(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %rssi_adjust_val.i) #3
  %32 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  store i8 %32, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1
  %33 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  store i8 %33, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  br label %btc8821a1ant_ps_tdma.exit

btc8821a1ant_ps_tdma.exit:                        ; preds = %btc8821a1ant_set_fw_ps_tdma.exit, %land.lhs.true.i.btc8821a1ant_ps_tdma.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi_adjust_val.i) #3
  br label %if.end8

if.else:                                          ; preds = %lor.lhs.false
  %a2dp_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %34 = ptrtoint ptr %a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %a2dp_exist, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool3.not = icmp eq i8 %35, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %if.else.if.then6_crit_edge

if.else.if.then6_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then6

lor.lhs.false4:                                   ; preds = %if.else
  %pan_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %36 = ptrtoint ptr %pan_exist to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %pan_exist, align 1, !range !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool5.not = icmp eq i8 %37, 0
  br i1 %tobool5.not, label %if.else7, label %lor.lhs.false4.if.then6_crit_edge

lor.lhs.false4.if.then6_crit_edge:                ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false4.if.then6_crit_edge, %if.else.if.then6_crit_edge
  %adapter.i21 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %38 = ptrtoint ptr %adapter.i21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i21, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi_adjust_val.i20) #3
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4
  store i8 20, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef 20) #3
  %40 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1, !range !443
  %41 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %41)
  %cmp.i22 = icmp eq i8 %40, %41
  br i1 %cmp.i22, label %land.lhs.true.i24, label %if.then6.if.end23.i25_crit_edge

if.then6.if.end23.i25_crit_edge:                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i25

land.lhs.true.i24:                                ; preds = %if.then6
  %42 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  %43 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %43)
  %cmp19.i23 = icmp eq i8 %42, %43
  br i1 %cmp19.i23, label %land.lhs.true.i24.btc8821a1ant_ps_tdma.exit28_crit_edge, label %land.lhs.true.i24.if.end23.i25_crit_edge

land.lhs.true.i24.if.end23.i25_crit_edge:         ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i25

land.lhs.true.i24.btc8821a1ant_ps_tdma.exit28_crit_edge: ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #5
  br label %btc8821a1ant_ps_tdma.exit28

if.end23.i25:                                     ; preds = %land.lhs.true.i24.if.end23.i25_crit_edge, %if.then6.if.end23.i25_crit_edge
  %44 = ptrtoint ptr %adapter.i21 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter.i21, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i31) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i32) #3
  %46 = ptrtoint ptr %ap_enable.i32 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %ap_enable.i32, align 1
  %btc_get.i34 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %47 = ptrtoint ptr %btc_get.i34 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %btc_get.i34, align 4
  %call.i35 = call zeroext i1 %48(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i32) #3
  %49 = ptrtoint ptr %h2c_parameter.i31 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 97, ptr %h2c_parameter.i31, align 1
  %arrayidx18.i39 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i31, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx18.i39 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 53, ptr %arrayidx18.i39, align 1
  %arrayidx19.i40 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i31, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx19.i40 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 3, ptr %arrayidx19.i40, align 1
  %arrayidx20.i41 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i31, i32 0, i32 3
  %52 = ptrtoint ptr %arrayidx20.i41 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 17, ptr %arrayidx20.i41, align 1
  %arrayidx21.i42 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i31, i32 0, i32 4
  %53 = ptrtoint ptr %arrayidx21.i42 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 16, ptr %arrayidx21.i42, align 1
  store i8 97, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4), align 4
  store i8 53, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 2), align 2
  store i8 17, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 3), align 1
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 4, i32 4), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %45, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef 97, i32 noundef 889393424) #3
  %btc_fill_h2c.i46 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %54 = ptrtoint ptr %btc_fill_h2c.i46 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %btc_fill_h2c.i46, align 4
  call void %55(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i31) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i32) #3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i31) #3
  %56 = ptrtoint ptr %rssi_adjust_val.i20 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %rssi_adjust_val.i20, align 1
  %57 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %btc_set.i, align 4
  %call.i27 = call zeroext i1 %58(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %rssi_adjust_val.i20) #3
  %59 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 8), align 4, !range !443
  store i8 %59, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 7), align 1
  %60 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 3), align 1
  store i8 %60, ptr getelementptr inbounds (%struct.coex_dm_8821a_1ant, ptr @glcoex_dm_8821a_1ant, i32 0, i32 2), align 2
  br label %btc8821a1ant_ps_tdma.exit28

btc8821a1ant_ps_tdma.exit28:                      ; preds = %if.end23.i25, %land.lhs.true.i24.btc8821a1ant_ps_tdma.exit28_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi_adjust_val.i20) #3
  br label %if.end8

if.else7:                                         ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @btc8821a1ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %btc8821a1ant_ps_tdma.exit28, %btc8821a1ant_ps_tdma.exit
  %.sink = phi i32 [ 1431655765, %btc8821a1ant_ps_tdma.exit28 ], [ 1515870810, %if.else7 ], [ 1431655765, %btc8821a1ant_ps_tdma.exit ]
  call fastcc void @btc8821a1ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef %.sink, i32 noundef 1515870810) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 209)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 209)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !249, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !283, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !315, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432}
!llvm.module.flags = !{!434, !435, !436, !437, !438, !439, !440, !441}
!llvm.ident = !{!442}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2097, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2123, i32 14}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2126, i32 15}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2127, i32 15}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2130, i32 15}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2134, i32 16}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2135, i32 6}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2140, i32 16}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2140, i32 38}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2141, i32 40}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2141, i32 48}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2147, i32 16}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2148, i32 6}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2160, i32 16}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2161, i32 6}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2164, i32 16}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2165, i32 6}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2170, i32 16}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2170, i32 37}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2176, i32 16}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2176, i32 42}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2187, i32 16}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2187, i32 43}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2188, i32 23}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2188, i32 30}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2189, i32 41}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2190, i32 40}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2190, i32 49}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2191, i32 22}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2193, i32 6}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2193, i32 17}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2194, i32 16}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2195, i32 6}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2196, i32 34}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2197, i32 42}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2200, i32 6}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2203, i32 6}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2203, i32 25}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2206, i32 16}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2206, i32 48}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2214, i32 16}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2215, i32 6}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2217, i32 6}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2217, i32 21}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2221, i32 18}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2227, i32 16}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2228, i32 6}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2229, i32 30}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2229, i32 41}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2230, i32 30}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2230, i32 41}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2237, i32 17}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2238, i32 7}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2240, i32 17}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2240, i32 34}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2243, i32 17}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2244, i32 7}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2248, i32 17}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2248, i32 37}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2253, i32 7}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2256, i32 17}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2257, i32 7}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2263, i32 7}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2266, i32 17}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2266, i32 35}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2271, i32 28}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2273, i32 16}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2274, i32 6}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2285, i32 6}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2290, i32 16}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2290, i32 41}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2294, i32 16}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2294, i32 35}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2299, i32 16}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2300, i32 6}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2309, i32 6}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2315, i32 41}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2319, i32 35}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2325, i32 41}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2332, i32 16}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2333, i32 6}
!162 = !{ptr @.str.81, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2336, i32 37}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2338, i32 37}
!166 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2354, i32 3}
!168 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2361, i32 3}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2371, i32 3}
!172 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2389, i32 3}
!174 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2393, i32 3}
!176 = !{ptr @.str.88, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2421, i32 3}
!178 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2428, i32 3}
!180 = !{ptr @.str.90, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2506, i32 3}
!182 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2511, i32 3}
!184 = !{ptr @.str.92, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2576, i32 3}
!186 = !{ptr @.str.93, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2579, i32 3}
!188 = !{ptr @.str.94, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2603, i32 2}
!190 = !{ptr @.str.95, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2640, i32 4}
!192 = !{ptr @.str.96, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2643, i32 4}
!194 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2648, i32 3}
!196 = !{ptr @.str.98, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2679, i32 4}
!198 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2689, i32 3}
!200 = !{ptr @.str.100, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2716, i32 2}
!202 = !{ptr @.str.101, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2724, i32 4}
!204 = !{ptr @.str.102, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2727, i32 4}
!206 = !{ptr @.str.103, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2750, i32 4}
!208 = !{ptr @.str.104, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2760, i32 4}
!210 = !{ptr @.str.105, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2776, i32 5}
!212 = !{ptr @.str.106, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2828, i32 3}
!214 = !{ptr @.str.107, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2833, i32 3}
!216 = !{ptr @.str.108, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2838, i32 3}
!218 = !{ptr @.str.109, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2844, i32 3}
!220 = !{ptr @.str.110, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2848, i32 3}
!222 = !{ptr @.str.111, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2869, i32 2}
!224 = !{ptr @.str.112, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2904, i32 2}
!226 = !{ptr @.str.113, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2908, i32 3}
!228 = !{ptr @.str.114, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2923, i32 3}
!230 = !{ptr @ex_btc8821a1ant_periodical.dis_ver_info_cnt, !231, !"dis_ver_info_cnt", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2935, i32 12}
!232 = !{ptr @.str.115, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2940, i32 2}
!234 = !{ptr @.str.116, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2945, i32 3}
!236 = !{ptr @.str.117, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2947, i32 3}
!238 = !{ptr @.str.118, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2952, i32 3}
!240 = !{ptr @.str.119, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2959, i32 3}
!242 = !{ptr @.str.120, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2041, i32 2}
!244 = !{ptr @.str.121, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 912, i32 2}
!246 = !{ptr @.str.122, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 663, i32 2}
!248 = !{ptr @.str.123, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.124, !247, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.125, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 400, i32 2}
!252 = distinct !{null, !253, !"glcoex_ver_date_8821a_1ant", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 34, i32 12}
!254 = distinct !{null, !255, !"glcoex_ver_8821a_1ant", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 35, i32 12}
!256 = distinct !{null, !257, !"coex_dm", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 22, i32 35}
!258 = !{ptr @glcoex_dm_8821a_1ant, !259, !"glcoex_dm_8821a_1ant", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 21, i32 34}
!260 = distinct !{null, !261, !"coex_sta", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 24, i32 36}
!262 = !{ptr @glcoex_sta_8821a_1ant, !263, !"glcoex_sta_8821a_1ant", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 23, i32 35}
!264 = !{ptr @.str.126, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 29, i32 4}
!266 = !{ptr @.str.127, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 30, i32 4}
!268 = !{ptr @.str.128, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 31, i32 4}
!270 = distinct !{null, !271, !"glbt_info_src_8821a_1ant", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 28, i32 26}
!272 = !{ptr @.str.129, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1013, i32 4}
!274 = !{ptr @.str.130, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1017, i32 4}
!276 = !{ptr @.str.131, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 834, i32 4}
!278 = !{ptr @.str.132, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 856, i32 2}
!280 = !{ptr @.str.133, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 714, i32 2}
!282 = !{ptr @.str.134, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.135, !281, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.136, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 691, i32 2}
!286 = !{ptr @.str.137, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 695, i32 2}
!288 = !{ptr @.str.138, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 699, i32 2}
!290 = !{ptr @.str.139, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 703, i32 2}
!292 = !{ptr @.str.140, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1746, i32 2}
!294 = !{ptr @.str.141, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1753, i32 3}
!296 = !{ptr @.str.142, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1767, i32 3}
!298 = !{ptr @.str.143, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 58, i32 5}
!300 = !{ptr @.str.144, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 62, i32 5}
!302 = !{ptr @.str.145, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 68, i32 5}
!304 = !{ptr @.str.146, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 72, i32 5}
!306 = distinct !{null, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 78, i32 4}
!308 = distinct !{null, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 88, i32 5}
!310 = distinct !{null, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 110, i32 5}
!312 = !{ptr @.str.150, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 801, i32 2}
!314 = !{ptr @.str.151, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.152, !313, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @.str.153, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 807, i32 3}
!318 = !{ptr @.str.154, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 789, i32 2}
!320 = !{ptr @.str.155, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1908, i32 2}
!322 = !{ptr @.str.156, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1912, i32 3}
!324 = !{ptr @.str.157, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1918, i32 3}
!326 = !{ptr @.str.158, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1924, i32 3}
!328 = !{ptr @.str.159, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 2002, i32 3}
!330 = !{ptr @.str.160, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 148, i32 5}
!332 = !{ptr @.str.161, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 152, i32 5}
!334 = !{ptr @.str.162, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 158, i32 5}
!336 = !{ptr @.str.163, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 162, i32 5}
!338 = distinct !{null, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 168, i32 4}
!340 = distinct !{null, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 180, i32 5}
!342 = distinct !{null, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 202, i32 5}
!344 = !{ptr @.str.167, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1837, i32 4}
!346 = !{ptr @.str.168, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1842, i32 4}
!348 = !{ptr @.str.169, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1847, i32 4}
!350 = !{ptr @.str.170, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1852, i32 4}
!352 = !{ptr @.str.171, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1857, i32 4}
!354 = !{ptr @.str.172, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1862, i32 4}
!356 = !{ptr @.str.173, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1867, i32 4}
!358 = !{ptr @.str.174, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1872, i32 4}
!360 = !{ptr @.str.175, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1877, i32 4}
!362 = !{ptr @.str.176, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1882, i32 4}
!364 = !{ptr @.str.177, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1887, i32 4}
!366 = !{ptr @.str.178, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 474, i32 3}
!368 = !{ptr @.str.179, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 490, i32 4}
!370 = !{ptr @.str.180, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 495, i32 5}
!372 = !{ptr @.str.181, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 499, i32 5}
!374 = !{ptr @.str.182, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 504, i32 6}
!376 = !{ptr @.str.183, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 509, i32 6}
!378 = !{ptr @.str.184, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 519, i32 5}
!380 = !{ptr @.str.185, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 523, i32 5}
!382 = !{ptr @.str.186, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 528, i32 6}
!384 = !{ptr @.str.187, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 533, i32 6}
!386 = !{ptr @.str.188, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 542, i32 5}
!388 = !{ptr @.str.189, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 548, i32 6}
!390 = !{ptr @.str.190, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 553, i32 6}
!392 = !{ptr @.str.191, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 561, i32 6}
!394 = !{ptr @.str.192, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 566, i32 6}
!396 = !{ptr @.str.193, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 577, i32 5}
!398 = !{ptr @.str.194, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 583, i32 6}
!400 = !{ptr @.str.195, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 588, i32 6}
!402 = !{ptr @.str.196, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 596, i32 6}
!404 = !{ptr @.str.197, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 601, i32 6}
!406 = !{ptr @.str.198, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 612, i32 6}
!408 = !{ptr @.str.199, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 617, i32 6}
!410 = !{ptr @.str.200, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 630, i32 6}
!412 = !{ptr @.str.201, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 635, i32 6}
!414 = !{ptr @.str.202, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1257, i32 3}
!416 = !{ptr @.str.203, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1265, i32 3}
!418 = !{ptr @.str.204, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1273, i32 3}
!420 = !{ptr @.str.205, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1281, i32 3}
!422 = !{ptr @.str.206, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1289, i32 3}
!424 = !{ptr @.str.207, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1296, i32 4}
!426 = !{ptr @.str.208, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 1299, i32 4}
!428 = !{ptr @.str.209, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 881, i32 2}
!430 = !{ptr @.str.210, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 888, i32 3}
!432 = !{ptr @.str.211, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a1ant.c", i32 894, i32 4}
!434 = !{i32 1, !"wchar_size", i32 2}
!435 = !{i32 1, !"min_enum_size", i32 4}
!436 = !{i32 8, !"branch-target-enforcement", i32 0}
!437 = !{i32 8, !"sign-return-address", i32 0}
!438 = !{i32 8, !"sign-return-address-all", i32 0}
!439 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!440 = !{i32 7, !"uwtable", i32 1}
!441 = !{i32 7, !"frame-pointer", i32 2}
!442 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!443 = !{i8 0, i8 2}
!444 = !{!"auto-init"}
!445 = distinct !{!445, !446}
!446 = !{!"llvm.loop.peeled.count", i32 2}
