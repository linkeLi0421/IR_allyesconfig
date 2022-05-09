; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath5k/initvals.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath5k/initvals.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ath5k_ini_mode = type { i16, [3 x i32] }
%struct.ath5k_ini = type { i16, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ath5k_hw = type { %struct.ath_common, ptr, ptr, i32, i16, ptr, %struct.mutex, ptr, [6 x %struct.ieee80211_supported_band], [314 x %struct.ieee80211_channel], [6 x [32 x %struct.ieee80211_rate]], [6 x [32 x i8]], i32, %struct.ath5k_dbg_info, ptr, ptr, i32, i32, [1 x i32], i32, i32, ptr, i16, i32, %struct.spinlock, i8, i8, [6 x i8], i32, i32, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, ptr, %struct.tasklet_struct, %struct.ath5k_led, %struct.list_head, %struct.spinlock, i32, [10 x %struct.ath5k_txq], %struct.tasklet_struct, %struct.ath5k_led, %struct.ath5k_rfkill, %struct.spinlock, %struct.tasklet_struct, %struct.list_head, [4 x ptr], i16, i16, i16, i32, i32, i32, i32, i32, ptr, i8, i8, %struct.ath5k_statistics, %struct.ath5k_ani_state, %struct.tasklet_struct, %struct.delayed_work, %struct.survey_info, i32, ptr, i8, i8, i32, i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, [3 x [3 x i32]], i8, i8, i8, %struct.ath5k_capabilities, [10 x %struct.ath5k_txq_info], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.ath5k_gain, [8 x i8], %struct.anon.137, %struct.ath5k_nfcal_hist, %struct.ewma_beacon_rssi, i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ath5k_dbg_info = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath5k_txq = type { i32, ptr, %struct.list_head, %struct.spinlock, i8, i32, i32, i8, i32 }
%struct.ath5k_led = type { [32 x i8], ptr, %struct.led_classdev }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath5k_rfkill = type { i16, i8, %struct.tasklet_struct }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ath5k_statistics = type { [5 x i32], [5 x i32], i32, i32, i32, i32, i32, i32, [32 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath5k_ani_state = type { i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, %struct.ath_cycle_counters, i32, i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.130, i32 }
%union.anon.130 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.ath5k_capabilities = type { [1 x i32], %struct.anon.134, %struct.ath5k_eeprom_info, %struct.anon.136, i8, i8, i8 }
%struct.anon.134 = type { i16, i16, i16, i16 }
%struct.ath5k_eeprom_info = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x [11 x i16]], [3 x [4 x i16]], [3 x [4 x i16]], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i8], [3 x [4 x i8]], [3 x i8], [10 x %struct.ath5k_chan_pcal_info], [4 x %struct.ath5k_chan_pcal_info], [4 x %struct.ath5k_chan_pcal_info], [3 x i8], [10 x %struct.ath5k_rate_pcal_info], [4 x %struct.ath5k_rate_pcal_info], [4 x %struct.ath5k_rate_pcal_info], i8, [32 x i8], [256 x %struct.ath5k_edge_power], [3 x i16], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, [5 x [2 x i16]], [3 x [3 x i32]] }
%struct.ath5k_chan_pcal_info = type { i16, i16, i16, %union.anon.135, ptr }
%union.anon.135 = type { %struct.ath5k_chan_pcal_info_rf2413 }
%struct.ath5k_chan_pcal_info_rf2413 = type { [4 x i8], [4 x i8], [4 x [5 x i8]], [4 x [5 x i8]] }
%struct.ath5k_rate_pcal_info = type { i16, i16, i16, i16, i16 }
%struct.ath5k_edge_power = type { i16, i16, i8 }
%struct.anon.136 = type { i8 }
%struct.ath5k_txq_info = type { i32, i32, i16, i8, i16, i16, i32, i32, i32, i32 }
%struct.ath5k_gain = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.137 = type { [4 x [64 x i8]], [4 x [64 x i8]], [128 x i8], [32 x i16], i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i32 }
%struct.ath5k_nfcal_hist = type { i16, [8 x i16] }
%struct.ewma_beacon_rssi = type { i32 }

@ar5212_ini_mode_start = internal constant { [24 x %struct.ath5k_ini_mode], [96 x i8] } { [24 x %struct.ath5k_ini_mode] [%struct.ath5k_ini_mode { i16 4160, [3 x i32] [i32 3144719, i32 3144735, i32 3144719] }, %struct.ath5k_ini_mode { i16 4164, [3 x i32] [i32 3144719, i32 3144735, i32 3144719] }, %struct.ath5k_ini_mode { i16 4168, [3 x i32] [i32 3144719, i32 3144735, i32 3144719] }, %struct.ath5k_ini_mode { i16 4172, [3 x i32] [i32 3144719, i32 3144735, i32 3144719] }, %struct.ath5k_ini_mode { i16 4176, [3 x i32] [i32 3144719, i32 3144735, i32 3144719] }, %struct.ath5k_ini_mode { i16 4180, [3 x i32] [i32 3144719, i32 3144735, i32 3144719] }, %struct.ath5k_ini_mode { i16 4184, [3 x i32] [i32 3144719, i32 3144735, i32 3144719] }, %struct.ath5k_ini_mode { i16 4188, [3 x i32] [i32 3144719, i32 3144735, i32 3144719] }, %struct.ath5k_ini_mode { i16 4192, [3 x i32] [i32 3144719, i32 3144735, i32 3144719] }, %struct.ath5k_ini_mode { i16 4196, [3 x i32] [i32 3144719, i32 3144735, i32 3144719] }, %struct.ath5k_ini_mode { i16 4144, [3 x i32] [i32 560, i32 176, i32 352] }, %struct.ath5k_ini_mode { i16 4208, [3 x i32] [i32 360, i32 440, i32 396] }, %struct.ath5k_ini_mode { i16 4272, [3 x i32] [i32 3680, i32 7964, i32 15928] }, %struct.ath5k_ini_mode { i16 4336, [3 x i32] [i32 41184, i32 22656, i32 45280] }, %struct.ath5k_ini_mode { i16 -32748, [3 x i32] [i32 65537000, i32 69207072, i32 138414144] }, %struct.ath5k_ini_mode { i16 -26592, [3 x i32] [i32 33686016, i32 33620480, i32 33686016] }, %struct.ath5k_ini_mode { i16 -26588, [3 x i32] [i32 3598, i32 1799, i32 3598] }, %struct.ath5k_ini_mode { i16 -26556, [3 x i32] [i32 326243868, i32 326244130, i32 326244002] }, %struct.ath5k_ini_mode { i16 -26528, [3 x i32] [i32 40208, i32 40216, i32 40216] }, %struct.ath5k_ini_mode { i16 -26524, [3 x i32] [i32 118272, i32 118272, i32 118272] }, %struct.ath5k_ini_mode { i16 -26520, [3 x i32] [i32 1083851152, i32 1083851152, i32 1083851152] }, %struct.ath5k_ini_mode { i16 -26344, [3 x i32] [i32 440, i32 132, i32 264] }, %struct.ath5k_ini_mode { i16 -26332, [3 x i32] [i32 268798469, i32 268798469, i32 268798469] }, %struct.ath5k_ini_mode { i16 -24016, [3 x i32] [i32 0, i32 0, i32 264] }], [96 x i8] zeroinitializer }, align 32
@ar5212_ini_common_start = internal constant { [191 x %struct.ath5k_ini], [556 x i8] } { [191 x %struct.ath5k_ini] [%struct.ath5k_ini { i16 12, i32 0, i32 0 }, %struct.ath5k_ini { i16 52, i32 5, i32 0 }, %struct.ath5k_ini { i16 64, i32 0, i32 0 }, %struct.ath5k_ini { i16 68, i32 8, i32 0 }, %struct.ath5k_ini { i16 72, i32 8, i32 0 }, %struct.ath5k_ini { i16 76, i32 16, i32 0 }, %struct.ath5k_ini { i16 80, i32 0, i32 0 }, %struct.ath5k_ini { i16 84, i32 31, i32 0 }, %struct.ath5k_ini { i16 2048, i32 0, i32 0 }, %struct.ath5k_ini { i16 2052, i32 0, i32 0 }, %struct.ath5k_ini { i16 2056, i32 0, i32 0 }, %struct.ath5k_ini { i16 2060, i32 0, i32 0 }, %struct.ath5k_ini { i16 2064, i32 0, i32 0 }, %struct.ath5k_ini { i16 2068, i32 0, i32 0 }, %struct.ath5k_ini { i16 2072, i32 0, i32 0 }, %struct.ath5k_ini { i16 2076, i32 0, i32 0 }, %struct.ath5k_ini { i16 2080, i32 0, i32 0 }, %struct.ath5k_ini { i16 2084, i32 0, i32 0 }, %struct.ath5k_ini { i16 4656, i32 0, i32 0 }, %struct.ath5k_ini { i16 4720, i32 0, i32 0 }, %struct.ath5k_ini { i16 4152, i32 0, i32 0 }, %struct.ath5k_ini { i16 4216, i32 0, i32 0 }, %struct.ath5k_ini { i16 4280, i32 0, i32 0 }, %struct.ath5k_ini { i16 4344, i32 0, i32 0 }, %struct.ath5k_ini { i16 4408, i32 0, i32 0 }, %struct.ath5k_ini { i16 4472, i32 0, i32 0 }, %struct.ath5k_ini { i16 4536, i32 0, i32 0 }, %struct.ath5k_ini { i16 4600, i32 0, i32 0 }, %struct.ath5k_ini { i16 4664, i32 0, i32 0 }, %struct.ath5k_ini { i16 4728, i32 0, i32 0 }, %struct.ath5k_ini { i16 4792, i32 0, i32 0 }, %struct.ath5k_ini { i16 4856, i32 0, i32 0 }, %struct.ath5k_ini { i16 4920, i32 0, i32 0 }, %struct.ath5k_ini { i16 4984, i32 0, i32 0 }, %struct.ath5k_ini { i16 5048, i32 0, i32 0 }, %struct.ath5k_ini { i16 5112, i32 0, i32 0 }, %struct.ath5k_ini { i16 5176, i32 0, i32 0 }, %struct.ath5k_ini { i16 5240, i32 0, i32 0 }, %struct.ath5k_ini { i16 5304, i32 0, i32 0 }, %struct.ath5k_ini { i16 5368, i32 0, i32 0 }, %struct.ath5k_ini { i16 5432, i32 0, i32 0 }, %struct.ath5k_ini { i16 5496, i32 0, i32 0 }, %struct.ath5k_ini { i16 5560, i32 0, i32 0 }, %struct.ath5k_ini { i16 5624, i32 0, i32 0 }, %struct.ath5k_ini { i16 5688, i32 0, i32 0 }, %struct.ath5k_ini { i16 5752, i32 0, i32 0 }, %struct.ath5k_ini { i16 5816, i32 0, i32 0 }, %struct.ath5k_ini { i16 5880, i32 0, i32 0 }, %struct.ath5k_ini { i16 5944, i32 0, i32 0 }, %struct.ath5k_ini { i16 6008, i32 0, i32 0 }, %struct.ath5k_ini { i16 6072, i32 0, i32 0 }, %struct.ath5k_ini { i16 6136, i32 0, i32 0 }, %struct.ath5k_ini { i16 4156, i32 0, i32 0 }, %struct.ath5k_ini { i16 4220, i32 0, i32 0 }, %struct.ath5k_ini { i16 4284, i32 0, i32 0 }, %struct.ath5k_ini { i16 4348, i32 0, i32 0 }, %struct.ath5k_ini { i16 4412, i32 0, i32 0 }, %struct.ath5k_ini { i16 4476, i32 0, i32 0 }, %struct.ath5k_ini { i16 4540, i32 0, i32 0 }, %struct.ath5k_ini { i16 4604, i32 0, i32 0 }, %struct.ath5k_ini { i16 4668, i32 0, i32 0 }, %struct.ath5k_ini { i16 4732, i32 0, i32 0 }, %struct.ath5k_ini { i16 4796, i32 0, i32 0 }, %struct.ath5k_ini { i16 4860, i32 0, i32 0 }, %struct.ath5k_ini { i16 4924, i32 0, i32 0 }, %struct.ath5k_ini { i16 4988, i32 0, i32 0 }, %struct.ath5k_ini { i16 5052, i32 0, i32 0 }, %struct.ath5k_ini { i16 5116, i32 0, i32 0 }, %struct.ath5k_ini { i16 5180, i32 0, i32 0 }, %struct.ath5k_ini { i16 5244, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32764, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32760, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32756, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32736, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32732, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32728, i32 48, i32 0 }, %struct.ath5k_ini { i16 -32724, i32 524287, i32 0 }, %struct.ath5k_ini { i16 -32720, i32 33554431, i32 0 }, %struct.ath5k_ini { i16 -32716, i32 49, i32 0 }, %struct.ath5k_ini { i16 -32712, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32708, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32696, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32684, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32680, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32676, i32 1034127, i32 0 }, %struct.ath5k_ini { i16 -32576, i32 713175066, i32 0 }, %struct.ath5k_ini { i16 -32572, i32 98304480, i32 0 }, %struct.ath5k_ini { i16 -32568, i32 524298000, i32 0 }, %struct.ath5k_ini { i16 -32564, i32 32768000, i32 0 }, %struct.ath5k_ini { i16 -32560, i32 7708, i32 0 }, %struct.ath5k_ini { i16 -32556, i32 174762, i32 0 }, %struct.ath5k_ini { i16 -32552, i32 33576277, i32 0 }, %struct.ath5k_ini { i16 -32548, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32544, i32 -1, i32 0 }, %struct.ath5k_ini { i16 -32540, i32 65535, i32 0 }, %struct.ath5k_ini { i16 -32536, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32532, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32528, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32524, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32520, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32516, i32 136, i32 0 }, %struct.ath5k_ini { i16 -30976, i32 0, i32 0 }, %struct.ath5k_ini { i16 -30972, i32 140, i32 0 }, %struct.ath5k_ini { i16 -30968, i32 228, i32 0 }, %struct.ath5k_ini { i16 -30964, i32 725, i32 0 }, %struct.ath5k_ini { i16 -30960, i32 0, i32 0 }, %struct.ath5k_ini { i16 -30956, i32 0, i32 0 }, %struct.ath5k_ini { i16 -30952, i32 160, i32 0 }, %struct.ath5k_ini { i16 -30948, i32 457, i32 0 }, %struct.ath5k_ini { i16 -30944, i32 44, i32 0 }, %struct.ath5k_ini { i16 -30940, i32 44, i32 0 }, %struct.ath5k_ini { i16 -30936, i32 48, i32 0 }, %struct.ath5k_ini { i16 -30932, i32 60, i32 0 }, %struct.ath5k_ini { i16 -30928, i32 44, i32 0 }, %struct.ath5k_ini { i16 -30924, i32 44, i32 0 }, %struct.ath5k_ini { i16 -30920, i32 48, i32 0 }, %struct.ath5k_ini { i16 -30916, i32 60, i32 0 }, %struct.ath5k_ini { i16 -30912, i32 0, i32 0 }, %struct.ath5k_ini { i16 -30908, i32 0, i32 0 }, %struct.ath5k_ini { i16 -30904, i32 0, i32 0 }, %struct.ath5k_ini { i16 -30900, i32 0, i32 0 }, %struct.ath5k_ini { i16 -30896, i32 0, i32 0 }, %struct.ath5k_ini { i16 -30892, i32 0, i32 0 }, %struct.ath5k_ini { i16 -30888, i32 0, i32 0 }, %struct.ath5k_ini { i16 -30884, i32 0, i32 0 }, %struct.ath5k_ini { i16 -30880, i32 213, i32 0 }, %struct.ath5k_ini { i16 -30876, i32 223, i32 0 }, %struct.ath5k_ini { i16 -30872, i32 258, i32 0 }, %struct.ath5k_ini { i16 -30868, i32 314, i32 0 }, %struct.ath5k_ini { i16 -30864, i32 117, i32 0 }, %struct.ath5k_ini { i16 -30860, i32 127, i32 0 }, %struct.ath5k_ini { i16 -30856, i32 162, i32 0 }, %struct.ath5k_ini { i16 -30852, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32512, i32 65538, i32 0 }, %struct.ath5k_ini { i16 -32508, i32 1, i32 0 }, %struct.ath5k_ini { i16 -32504, i32 192, i32 0 }, %struct.ath5k_ini { i16 -32500, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32496, i32 360, i32 0 }, %struct.ath5k_ini { i16 -32492, i32 0, i32 0 }, %struct.ath5k_ini { i16 -30784, i32 50462976, i32 0 }, %struct.ath5k_ini { i16 -30780, i32 117835012, i32 0 }, %struct.ath5k_ini { i16 -30776, i32 185207048, i32 0 }, %struct.ath5k_ini { i16 -30772, i32 252579084, i32 0 }, %struct.ath5k_ini { i16 -30768, i32 319951120, i32 0 }, %struct.ath5k_ini { i16 -30764, i32 387323156, i32 0 }, %struct.ath5k_ini { i16 -30760, i32 454695192, i32 0 }, %struct.ath5k_ini { i16 -30756, i32 522067228, i32 0 }, %struct.ath5k_ini { i16 -30752, i32 50462976, i32 0 }, %struct.ath5k_ini { i16 -30748, i32 117835012, i32 0 }, %struct.ath5k_ini { i16 -30744, i32 185207048, i32 0 }, %struct.ath5k_ini { i16 -30740, i32 252579084, i32 0 }, %struct.ath5k_ini { i16 -30736, i32 319951120, i32 0 }, %struct.ath5k_ini { i16 -30732, i32 387323156, i32 0 }, %struct.ath5k_ini { i16 -30728, i32 454695192, i32 0 }, %struct.ath5k_ini { i16 -30724, i32 522067228, i32 0 }, %struct.ath5k_ini { i16 -26612, i32 -1383821799, i32 0 }, %struct.ath5k_ini { i16 -26608, i32 2099830784, i32 0 }, %struct.ath5k_ini { i16 -26604, i32 -1677025429, i32 0 }, %struct.ath5k_ini { i16 -26596, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26560, i32 543818106, i32 0 }, %struct.ath5k_ini { i16 -26540, i32 2137, i32 0 }, %struct.ath5k_ini { i16 -26368, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26364, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26360, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26356, i32 8388608, i32 0 }, %struct.ath5k_ini { i16 -26352, i32 1, i32 0 }, %struct.ath5k_ini { i16 -26340, i32 3200, i32 0 }, %struct.ath5k_ini { i16 -26336, i32 84934656, i32 0 }, %struct.ath5k_ini { i16 -26328, i32 1, i32 0 }, %struct.ath5k_ini { i16 -26324, i32 4, i32 0 }, %struct.ath5k_ini { i16 -26316, i32 505356322, i32 0 }, %struct.ath5k_ini { i16 -26312, i32 168496141, i32 0 }, %struct.ath5k_ini { i16 -26308, i32 63, i32 0 }, %struct.ath5k_ini { i16 -26296, i32 -1837059566, i32 0 }, %struct.ath5k_ini { i16 -26284, i32 1565581704, i32 0 }, %struct.ath5k_ini { i16 -26276, i32 4942478, i32 0 }, %struct.ath5k_ini { i16 -26264, i32 974, i32 0 }, %struct.ath5k_ini { i16 -26256, i32 422556949, i32 0 }, %struct.ath5k_ini { i16 -26248, i32 1, i32 0 }, %struct.ath5k_ini { i16 -26244, i32 0, i32 0 }, %struct.ath5k_ini { i16 -24048, i32 8414003, i32 0 }, %struct.ath5k_ini { i16 -24044, i32 1076240, i32 0 }, %struct.ath5k_ini { i16 -24040, i32 10240096, i32 0 }, %struct.ath5k_ini { i16 -24032, i32 25702598, i32 0 }, %struct.ath5k_ini { i16 -24028, i32 1024, i32 0 }, %struct.ath5k_ini { i16 -24020, i32 0, i32 0 }, %struct.ath5k_ini { i16 -24012, i32 538976288, i32 0 }, %struct.ath5k_ini { i16 -24008, i32 538976288, i32 0 }, %struct.ath5k_ini { i16 -24000, i32 944310816, i32 0 }, %struct.ath5k_ini { i16 -23996, i32 31670, i32 0 }, %struct.ath5k_ini { i16 -23992, i32 268386300, i32 0 }], [556 x i8] zeroinitializer }, align 32
@rf5111_ini_mode_end = internal constant { [14 x %struct.ath5k_ini_mode], [32 x i8] } { [14 x %struct.ath5k_ini_mode] [%struct.ath5k_ini_mode { i16 48, [3 x i32] [i32 32789, i32 32789, i32 32789] }, %struct.ath5k_ini_mode { i16 -32740, [3 x i32] [i32 311267239, i32 81792917, i32 316673963] }, %struct.ath5k_ini_mode { i16 -26584, [3 x i32] [i32 167903233, i32 83951872, i32 167903233] }, %struct.ath5k_ini_mode { i16 -26572, [3 x i32] [i32 3598, i32 3598, i32 3598] }, %struct.ath5k_ini_mode { i16 -26568, [3 x i32] [i32 7, i32 11, i32 11] }, %struct.ath5k_ini_mode { i16 -26552, [3 x i32] [i32 1628762, i32 1624681, i32 1624681] }, %struct.ath5k_ini_mode { i16 -26544, [3 x i32] [i32 233354464, i32 233354464, i32 233354464] }, %struct.ath5k_ini_mode { i16 -26536, [3 x i32] [i32 2122321198, i32 2129153326, i32 2129153326] }, %struct.ath5k_ini_mode { i16 -26532, [3 x i32] [i32 825714270, i32 825714270, i32 825714270] }, %struct.ath5k_ini_mode { i16 -26516, [3 x i32] [i32 84717697, i32 84717697, i32 84717696] }, %struct.ath5k_ini_mode { i16 -26348, [3 x i32] [i32 10000, i32 5500, i32 11000] }, %struct.ath5k_ini_mode { i16 -26300, [3 x i32] [i32 -138932192, i32 -138932960, i32 -138932192] }, %struct.ath5k_ini_mode { i16 -24052, [3 x i32] [i32 1680621930, i32 1681932650, i32 1681932650] }, %struct.ath5k_ini_mode { i16 -24036, [3 x i32] [i32 411271178, i32 410222602, i32 411271178] }], [32 x i8] zeroinitializer }, align 32
@rf5111_ini_common_end = internal constant { [14 x %struct.ath5k_ini], [56 x i8] } { [14 x %struct.ath5k_ini] [%struct.ath5k_ini { i16 4656, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26616, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26580, i32 143358, i32 0 }, %struct.ath5k_ini { i16 -26564, i32 131328, i32 0 }, %struct.ath5k_ini { i16 -26548, i32 310665532, i32 0 }, %struct.ath5k_ini { i16 -26320, i32 18563, i32 0 }, %struct.ath5k_ini { i16 -26304, i32 4, i32 0 }, %struct.ath5k_ini { i16 -26280, i32 255, i32 0 }, %struct.ath5k_ini { i16 -26252, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26120, i32 24, i32 0 }, %struct.ath5k_ini { i16 -24060, i32 0, i32 0 }, %struct.ath5k_ini { i16 -24056, i32 -801216632, i32 0 }, %struct.ath5k_ini { i16 -24024, i32 437, i32 0 }, %struct.ath5k_ini { i16 -24004, i32 331909551, i32 0 }], [56 x i8] zeroinitializer }, align 32
@rf5111_ini_bbgain = internal constant { [64 x %struct.ath5k_ini], [192 x i8] } { [64 x %struct.ath5k_ini] [%struct.ath5k_ini { i16 -25856, i32 0, i32 0 }, %struct.ath5k_ini { i16 -25852, i32 32, i32 0 }, %struct.ath5k_ini { i16 -25848, i32 16, i32 0 }, %struct.ath5k_ini { i16 -25844, i32 48, i32 0 }, %struct.ath5k_ini { i16 -25840, i32 8, i32 0 }, %struct.ath5k_ini { i16 -25836, i32 40, i32 0 }, %struct.ath5k_ini { i16 -25832, i32 4, i32 0 }, %struct.ath5k_ini { i16 -25828, i32 36, i32 0 }, %struct.ath5k_ini { i16 -25824, i32 20, i32 0 }, %struct.ath5k_ini { i16 -25820, i32 52, i32 0 }, %struct.ath5k_ini { i16 -25816, i32 12, i32 0 }, %struct.ath5k_ini { i16 -25812, i32 44, i32 0 }, %struct.ath5k_ini { i16 -25808, i32 2, i32 0 }, %struct.ath5k_ini { i16 -25804, i32 34, i32 0 }, %struct.ath5k_ini { i16 -25800, i32 18, i32 0 }, %struct.ath5k_ini { i16 -25796, i32 50, i32 0 }, %struct.ath5k_ini { i16 -25792, i32 10, i32 0 }, %struct.ath5k_ini { i16 -25788, i32 42, i32 0 }, %struct.ath5k_ini { i16 -25784, i32 6, i32 0 }, %struct.ath5k_ini { i16 -25780, i32 38, i32 0 }, %struct.ath5k_ini { i16 -25776, i32 22, i32 0 }, %struct.ath5k_ini { i16 -25772, i32 54, i32 0 }, %struct.ath5k_ini { i16 -25768, i32 14, i32 0 }, %struct.ath5k_ini { i16 -25764, i32 46, i32 0 }, %struct.ath5k_ini { i16 -25760, i32 1, i32 0 }, %struct.ath5k_ini { i16 -25756, i32 33, i32 0 }, %struct.ath5k_ini { i16 -25752, i32 17, i32 0 }, %struct.ath5k_ini { i16 -25748, i32 49, i32 0 }, %struct.ath5k_ini { i16 -25744, i32 9, i32 0 }, %struct.ath5k_ini { i16 -25740, i32 41, i32 0 }, %struct.ath5k_ini { i16 -25736, i32 5, i32 0 }, %struct.ath5k_ini { i16 -25732, i32 37, i32 0 }, %struct.ath5k_ini { i16 -25728, i32 21, i32 0 }, %struct.ath5k_ini { i16 -25724, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25720, i32 13, i32 0 }, %struct.ath5k_ini { i16 -25716, i32 45, i32 0 }, %struct.ath5k_ini { i16 -25712, i32 3, i32 0 }, %struct.ath5k_ini { i16 -25708, i32 35, i32 0 }, %struct.ath5k_ini { i16 -25704, i32 19, i32 0 }, %struct.ath5k_ini { i16 -25700, i32 51, i32 0 }, %struct.ath5k_ini { i16 -25696, i32 11, i32 0 }, %struct.ath5k_ini { i16 -25692, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25688, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25684, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25680, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25676, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25672, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25668, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25664, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25660, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25656, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25652, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25648, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25644, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25640, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25636, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25632, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25628, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25624, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25620, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25616, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25612, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25608, i32 2, i32 0 }, %struct.ath5k_ini { i16 -25604, i32 22, i32 0 }], [192 x i8] zeroinitializer }, align 32
@rf5112_ini_mode_end = internal constant { [16 x %struct.ath5k_ini_mode], [64 x i8] } { [16 x %struct.ath5k_ini_mode] [%struct.ath5k_ini_mode { i16 48, [3 x i32] [i32 32789, i32 32789, i32 32789] }, %struct.ath5k_ini_mode { i16 -32740, [3 x i32] [i32 311268263, i32 81793941, i32 316674987] }, %struct.ath5k_ini_mode { i16 -26584, [3 x i32] [i32 167903233, i32 84017408, i32 167903233] }, %struct.ath5k_ini_mode { i16 -26572, [3 x i32] [i32 3598, i32 3598, i32 3598] }, %struct.ath5k_ini_mode { i16 -26568, [3 x i32] [i32 7, i32 11, i32 11] }, %struct.ath5k_ini_mode { i16 -26552, [3 x i32] [i32 1628781, i32 1624693, i32 1624693] }, %struct.ath5k_ini_mode { i16 -26544, [3 x i32] [i32 233354464, i32 233354464, i32 233354464] }, %struct.ath5k_ini_mode { i16 -26536, [3 x i32] [i32 2122321198, i32 2129136942, i32 2129136942] }, %struct.ath5k_ini_mode { i16 -26532, [3 x i32] [i32 825714270, i32 825714270, i32 825714270] }, %struct.ath5k_ini_mode { i16 -26516, [3 x i32] [i32 84717697, i32 84717697, i32 84717697] }, %struct.ath5k_ini_mode { i16 -26348, [3 x i32] [i32 2000, i32 1100, i32 2200] }, %struct.ath5k_ini_mode { i16 -26300, [3 x i32] [i32 -138932192, i32 -138932976, i32 -138932208] }, %struct.ath5k_ini_mode { i16 -24060, [3 x i32] [i32 0, i32 8, i32 8] }, %struct.ath5k_ini_mode { i16 -24056, [3 x i32] [i32 -692164728, i32 -801216632, i32 -801216632] }, %struct.ath5k_ini_mode { i16 -24052, [3 x i32] [i32 1680605504, i32 1682096480, i32 1682096480] }, %struct.ath5k_ini_mode { i16 -24036, [3 x i32] [i32 411271178, i32 410222602, i32 411271178] }], [64 x i8] zeroinitializer }, align 32
@rf5112_ini_common_end = internal constant { [11 x %struct.ath5k_ini], [60 x i8] } { [11 x %struct.ath5k_ini] [%struct.ath5k_ini { i16 4656, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26616, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26580, i32 143358, i32 0 }, %struct.ath5k_ini { i16 -26564, i32 131328, i32 0 }, %struct.ath5k_ini { i16 -26548, i32 310665532, i32 0 }, %struct.ath5k_ini { i16 -26320, i32 18562, i32 0 }, %struct.ath5k_ini { i16 -26304, i32 4, i32 0 }, %struct.ath5k_ini { i16 -26280, i32 255, i32 0 }, %struct.ath5k_ini { i16 -26252, i32 0, i32 0 }, %struct.ath5k_ini { i16 -24024, i32 437, i32 0 }, %struct.ath5k_ini { i16 -24004, i32 331909551, i32 0 }], [60 x i8] zeroinitializer }, align 32
@rf5112_ini_bbgain = internal constant { [64 x %struct.ath5k_ini], [192 x i8] } { [64 x %struct.ath5k_ini] [%struct.ath5k_ini { i16 -25856, i32 0, i32 0 }, %struct.ath5k_ini { i16 -25852, i32 1, i32 0 }, %struct.ath5k_ini { i16 -25848, i32 2, i32 0 }, %struct.ath5k_ini { i16 -25844, i32 3, i32 0 }, %struct.ath5k_ini { i16 -25840, i32 4, i32 0 }, %struct.ath5k_ini { i16 -25836, i32 5, i32 0 }, %struct.ath5k_ini { i16 -25832, i32 8, i32 0 }, %struct.ath5k_ini { i16 -25828, i32 9, i32 0 }, %struct.ath5k_ini { i16 -25824, i32 10, i32 0 }, %struct.ath5k_ini { i16 -25820, i32 11, i32 0 }, %struct.ath5k_ini { i16 -25816, i32 12, i32 0 }, %struct.ath5k_ini { i16 -25812, i32 13, i32 0 }, %struct.ath5k_ini { i16 -25808, i32 16, i32 0 }, %struct.ath5k_ini { i16 -25804, i32 17, i32 0 }, %struct.ath5k_ini { i16 -25800, i32 18, i32 0 }, %struct.ath5k_ini { i16 -25796, i32 19, i32 0 }, %struct.ath5k_ini { i16 -25792, i32 20, i32 0 }, %struct.ath5k_ini { i16 -25788, i32 21, i32 0 }, %struct.ath5k_ini { i16 -25784, i32 24, i32 0 }, %struct.ath5k_ini { i16 -25780, i32 25, i32 0 }, %struct.ath5k_ini { i16 -25776, i32 26, i32 0 }, %struct.ath5k_ini { i16 -25772, i32 27, i32 0 }, %struct.ath5k_ini { i16 -25768, i32 28, i32 0 }, %struct.ath5k_ini { i16 -25764, i32 29, i32 0 }, %struct.ath5k_ini { i16 -25760, i32 32, i32 0 }, %struct.ath5k_ini { i16 -25756, i32 33, i32 0 }, %struct.ath5k_ini { i16 -25752, i32 34, i32 0 }, %struct.ath5k_ini { i16 -25748, i32 35, i32 0 }, %struct.ath5k_ini { i16 -25744, i32 36, i32 0 }, %struct.ath5k_ini { i16 -25740, i32 37, i32 0 }, %struct.ath5k_ini { i16 -25736, i32 40, i32 0 }, %struct.ath5k_ini { i16 -25732, i32 41, i32 0 }, %struct.ath5k_ini { i16 -25728, i32 42, i32 0 }, %struct.ath5k_ini { i16 -25724, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25720, i32 44, i32 0 }, %struct.ath5k_ini { i16 -25716, i32 45, i32 0 }, %struct.ath5k_ini { i16 -25712, i32 48, i32 0 }, %struct.ath5k_ini { i16 -25708, i32 49, i32 0 }, %struct.ath5k_ini { i16 -25704, i32 50, i32 0 }, %struct.ath5k_ini { i16 -25700, i32 51, i32 0 }, %struct.ath5k_ini { i16 -25696, i32 52, i32 0 }, %struct.ath5k_ini { i16 -25692, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25688, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25684, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25680, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25676, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25672, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25668, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25664, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25660, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25656, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25652, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25648, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25644, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25640, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25636, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25632, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25628, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25624, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25620, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25616, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25612, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25608, i32 16, i32 0 }, %struct.ath5k_ini { i16 -25604, i32 26, i32 0 }], [192 x i8] zeroinitializer }, align 32
@rf5413_ini_mode_end = internal constant { [30 x %struct.ath5k_ini_mode], [96 x i8] } { [30 x %struct.ath5k_ini_mode] [%struct.ath5k_ini_mode { i16 48, [3 x i32] [i32 21, i32 21, i32 21] }, %struct.ath5k_ini_mode { i16 -32740, [3 x i32] [i32 311268263, i32 81793941, i32 316674987] }, %struct.ath5k_ini_mode { i16 -26584, [3 x i32] [i32 167903233, i32 84017408, i32 167903233] }, %struct.ath5k_ini_mode { i16 -26572, [3 x i32] [i32 3598, i32 3598, i32 3598] }, %struct.ath5k_ini_mode { i16 -26568, [3 x i32] [i32 7, i32 11, i32 11] }, %struct.ath5k_ini_mode { i16 -26552, [3 x i32] [i32 1636961, i32 1710691, i32 1710691] }, %struct.ath5k_ini_mode { i16 -26544, [3 x i32] [i32 211334368, i32 211333338, i32 211333338] }, %struct.ath5k_ini_mode { i16 -26536, [3 x i32] [i32 2127039790, i32 2127039790, i32 2127039790] }, %struct.ath5k_ini_mode { i16 -26532, [3 x i32] [i32 825843806, i32 825843806, i32 825843806] }, %struct.ath5k_ini_mode { i16 -26516, [3 x i32] [i32 84717697, i32 84717697, i32 84717697] }, %struct.ath5k_ini_mode { i16 -26348, [3 x i32] [i32 2000, i32 1100, i32 2200] }, %struct.ath5k_ini_mode { i16 -26300, [3 x i32] [i32 -138932224, i32 -138932992, i32 -138932224] }, %struct.ath5k_ini_mode { i16 -24060, [3 x i32] zeroinitializer }, %struct.ath5k_ini_mode { i16 -24056, [3 x i32] [i32 -692164728, i32 -801216632, i32 -801216632] }, %struct.ath5k_ini_mode { i16 -24052, [3 x i32] [i32 3064288, i32 2801952, i32 2801952] }, %struct.ath5k_ini_mode { i16 -24036, [3 x i32] [i32 411271178, i32 409174026, i32 411271178] }, %struct.ath5k_ini_mode { i16 -23808, [3 x i32] [i32 402718720, i32 402718720, i32 402718720] }, %struct.ath5k_ini_mode { i16 -23804, [3 x i32] [i32 805512706, i32 805512706, i32 805512706] }, %struct.ath5k_ini_mode { i16 -23800, [3 x i32] [i32 1208434182, i32 1208434182, i32 1208434182] }, %struct.ath5k_ini_mode { i16 -23796, [3 x i32] [i32 1443580938, i32 1443580938, i32 1443580938] }, %struct.ath5k_ini_mode { i16 -23792, [3 x i32] [i32 1679450127, i32 1679450127, i32 1679450127] }, %struct.ath5k_ini_mode { i16 -23788, [3 x i32] [i32 2018471451, i32 2018471451, i32 2018471451] }, %struct.ath5k_ini_mode { i16 -23784, [3 x i32] [i32 -2037416870, i32 -2037416870, i32 -2037416870] }, %struct.ath5k_ini_mode { i16 -23780, [3 x i32] [i32 -1865447845, i32 -1899002277, i32 -1899002277] }, %struct.ath5k_ini_mode { i16 -23776, [3 x i32] [i32 -1655728369, i32 -1689282801, i32 -1689282801] }, %struct.ath5k_ini_mode { i16 -23772, [3 x i32] [i32 -1479564401, i32 -1546674289, i32 -1546674289] }, %struct.ath5k_ini_mode { i16 -23768, [3 x i32] [i32 -1252020449, i32 -1285574881, i32 -1285574881] }, %struct.ath5k_ini_mode { i16 -23764, [3 x i32] [i32 -1109411425, i32 -1142965857, i32 -1142965857] }, %struct.ath5k_ini_mode { i16 -23760, [3 x i32] [i32 -880818881, i32 -880818369, i32 -880818369] }, %struct.ath5k_ini_mode { i16 -23756, [3 x i32] [i32 -704654913, i32 -738209345, i32 -738209345] }], [96 x i8] zeroinitializer }, align 32
@rf5413_ini_common_end = internal constant { [70 x %struct.ath5k_ini], [216 x i8] } { [70 x %struct.ath5k_ini] [%struct.ath5k_ini { i16 4656, i32 992, i32 0 }, %struct.ath5k_ini { i16 16488, i32 16, i32 0 }, %struct.ath5k_ini { i16 -32672, i32 15, i32 0 }, %struct.ath5k_ini { i16 -32612, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32608, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32488, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32484, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32480, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32476, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32472, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32468, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32464, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32460, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32456, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32452, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32448, i32 -2147482631, i32 0 }, %struct.ath5k_ini { i16 -32444, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26616, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26580, i32 40960, i32 0 }, %struct.ath5k_ini { i16 -26564, i32 2098176, i32 0 }, %struct.ath5k_ini { i16 -26548, i32 310649660, i32 0 }, %struct.ath5k_ini { i16 -26512, i32 31, i32 0 }, %struct.ath5k_ini { i16 -26508, i32 128, i32 0 }, %struct.ath5k_ini { i16 -26504, i32 14, i32 0 }, %struct.ath5k_ini { i16 -26280, i32 532479, i32 0 }, %struct.ath5k_ini { i16 -26240, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26236, i32 41943040, i32 0 }, %struct.ath5k_ini { i16 -26208, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26144, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26140, i32 -1431655766, i32 0 }, %struct.ath5k_ini { i16 -26136, i32 1011246200, i32 0 }, %struct.ath5k_ini { i16 -26132, i32 170, i32 0 }, %struct.ath5k_ini { i16 -26128, i32 12, i32 0 }, %struct.ath5k_ini { i16 -26124, i32 255, i32 0 }, %struct.ath5k_ini { i16 -26120, i32 20, i32 0 }, %struct.ath5k_ini { i16 -24024, i32 2485, i32 0 }, %struct.ath5k_ini { i16 -24004, i32 -1815574097, i32 0 }, %struct.ath5k_ini { i16 -23988, i32 1, i32 0 }, %struct.ath5k_ini { i16 -23984, i32 40960, i32 0 }, %struct.ath5k_ini { i16 -23980, i32 0, i32 0 }, %struct.ath5k_ini { i16 -23976, i32 214389632, i32 0 }, %struct.ath5k_ini { i16 -23972, i32 252645121, i32 0 }, %struct.ath5k_ini { i16 -23968, i32 1600720641, i32 0 }, %struct.ath5k_ini { i16 -23964, i32 4295185, i32 0 }, %struct.ath5k_ini { i16 -23960, i32 0, i32 0 }, %struct.ath5k_ini { i16 -23956, i32 204521834, i32 0 }, %struct.ath5k_ini { i16 -23952, i32 8521760, i32 0 }, %struct.ath5k_ini { i16 -23948, i32 136019114, i32 0 }, %struct.ath5k_ini { i16 -23944, i32 484915662, i32 0 }, %struct.ath5k_ini { i16 -23940, i32 85393870, i32 0 }, %struct.ath5k_ini { i16 -23752, i32 0, i32 0 }, %struct.ath5k_ini { i16 -23748, i32 0, i32 0 }, %struct.ath5k_ini { i16 -23744, i32 0, i32 0 }, %struct.ath5k_ini { i16 -23740, i32 0, i32 0 }, %struct.ath5k_ini { i16 -23736, i32 1073741823, i32 0 }, %struct.ath5k_ini { i16 -23732, i32 1073741823, i32 0 }, %struct.ath5k_ini { i16 -23728, i32 1073741823, i32 0 }, %struct.ath5k_ini { i16 -23724, i32 262143, i32 0 }, %struct.ath5k_ini { i16 -23720, i32 2041096735, i32 0 }, %struct.ath5k_ini { i16 -23716, i32 107758095, i32 0 }, %struct.ath5k_ini { i16 -23712, i32 254288391, i32 0 }, %struct.ath5k_ini { i16 -23708, i32 392173189, i32 0 }, %struct.ath5k_ini { i16 -23704, i32 528486660, i32 0 }, %struct.ath5k_ini { i16 -23700, i32 933235715, i32 0 }, %struct.ath5k_ini { i16 -23696, i32 1069811843, i32 0 }, %struct.ath5k_ini { i16 -23692, i32 1472202755, i32 0 }, %struct.ath5k_ini { i16 -23688, i32 1607992962, i32 0 }, %struct.ath5k_ini { i16 -23684, i32 2145387650, i32 0 }, %struct.ath5k_ini { i16 -23680, i32 2134670266, i32 0 }, %struct.ath5k_ini { i16 -23676, i32 -214925328, i32 0 }], [216 x i8] zeroinitializer }, align 32
@rf2413_ini_mode_end = internal constant { [16 x %struct.ath5k_ini_mode], [64 x i8] } { [16 x %struct.ath5k_ini_mode] [%struct.ath5k_ini_mode { i16 48, [3 x i32] [i32 21, i32 21, i32 21] }, %struct.ath5k_ini_mode { i16 -32740, [3 x i32] [i32 311268263, i32 81793941, i32 316674987] }, %struct.ath5k_ini_mode { i16 -26584, [3 x i32] [i32 167903233, i32 84017152, i32 167903233] }, %struct.ath5k_ini_mode { i16 -26572, [3 x i32] [i32 3584, i32 3584, i32 3584] }, %struct.ath5k_ini_mode { i16 -26568, [3 x i32] [i32 2, i32 10, i32 10] }, %struct.ath5k_ini_mode { i16 -26552, [3 x i32] [i32 1628781, i32 1731172, i32 1731172] }, %struct.ath5k_ini_mode { i16 -26544, [3 x i32] [i32 233354464, i32 233353434, i32 211333338] }, %struct.ath5k_ini_mode { i16 -26536, [3 x i32] [i32 2122321198, i32 2129136942, i32 2127039790] }, %struct.ath5k_ini_mode { i16 -26532, [3 x i32] [i32 825714270, i32 825714270, i32 825843806] }, %struct.ath5k_ini_mode { i16 -26516, [3 x i32] [i32 84717697, i32 84717697, i32 84717697] }, %struct.ath5k_ini_mode { i16 -26348, [3 x i32] [i32 2000, i32 1100, i32 2200] }, %struct.ath5k_ini_mode { i16 -26300, [3 x i32] [i32 -138932224, i32 -138932992, i32 -138932224] }, %struct.ath5k_ini_mode { i16 -24060, [3 x i32] zeroinitializer }, %struct.ath5k_ini_mode { i16 -24056, [3 x i32] [i32 -692164728, i32 -801216632, i32 -801216632] }, %struct.ath5k_ini_mode { i16 -24052, [3 x i32] [i32 2883904, i32 4374848, i32 4374848] }, %struct.ath5k_ini_mode { i16 -24036, [3 x i32] [i32 411271178, i32 409174026, i32 411271178] }], [64 x i8] zeroinitializer }, align 32
@rf2413_ini_common_end = internal constant { [81 x %struct.ath5k_ini], [244 x i8] } { [81 x %struct.ath5k_ini] [%struct.ath5k_ini { i16 4656, i32 992, i32 0 }, %struct.ath5k_ini { i16 -32672, i32 15, i32 0 }, %struct.ath5k_ini { i16 -32488, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32484, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32480, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32476, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32472, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32468, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32464, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32460, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32456, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32452, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32448, i32 -2147483480, i32 0 }, %struct.ath5k_ini { i16 -32444, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26616, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26580, i32 40960, i32 0 }, %struct.ath5k_ini { i16 -26564, i32 2098176, i32 0 }, %struct.ath5k_ini { i16 -26548, i32 310649660, i32 0 }, %struct.ath5k_ini { i16 -26512, i32 31, i32 0 }, %struct.ath5k_ini { i16 -26508, i32 128, i32 0 }, %struct.ath5k_ini { i16 -26504, i32 14, i32 0 }, %struct.ath5k_ini { i16 -26280, i32 255, i32 0 }, %struct.ath5k_ini { i16 -26240, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26236, i32 41943040, i32 0 }, %struct.ath5k_ini { i16 -26208, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26144, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26140, i32 -1431655766, i32 0 }, %struct.ath5k_ini { i16 -26136, i32 1011246200, i32 0 }, %struct.ath5k_ini { i16 -26132, i32 170, i32 0 }, %struct.ath5k_ini { i16 -26128, i32 12, i32 0 }, %struct.ath5k_ini { i16 -26124, i32 255, i32 0 }, %struct.ath5k_ini { i16 -26120, i32 20, i32 0 }, %struct.ath5k_ini { i16 -24024, i32 2485, i32 0 }, %struct.ath5k_ini { i16 -24004, i32 -1815574097, i32 0 }, %struct.ath5k_ini { i16 -23988, i32 1, i32 0 }, %struct.ath5k_ini { i16 -23984, i32 40960, i32 0 }, %struct.ath5k_ini { i16 -23980, i32 0, i32 0 }, %struct.ath5k_ini { i16 -23976, i32 214389632, i32 0 }, %struct.ath5k_ini { i16 -23972, i32 252645121, i32 0 }, %struct.ath5k_ini { i16 -23968, i32 1600720641, i32 0 }, %struct.ath5k_ini { i16 -23964, i32 4295185, i32 0 }, %struct.ath5k_ini { i16 -23960, i32 0, i32 0 }, %struct.ath5k_ini { i16 -23956, i32 204521834, i32 0 }, %struct.ath5k_ini { i16 -23952, i32 8521760, i32 0 }, %struct.ath5k_ini { i16 -23948, i32 1801386, i32 0 }, %struct.ath5k_ini { i16 -23944, i32 484915662, i32 0 }, %struct.ath5k_ini { i16 -23940, i32 85393870, i32 0 }, %struct.ath5k_ini { i16 -23808, i32 402718720, i32 0 }, %struct.ath5k_ini { i16 -23804, i32 805512706, i32 0 }, %struct.ath5k_ini { i16 -23800, i32 1208434182, i32 0 }, %struct.ath5k_ini { i16 -23796, i32 1443580938, i32 0 }, %struct.ath5k_ini { i16 -23792, i32 1679450127, i32 0 }, %struct.ath5k_ini { i16 -23788, i32 2018471451, i32 0 }, %struct.ath5k_ini { i16 -23784, i32 -2037416870, i32 0 }, %struct.ath5k_ini { i16 -23780, i32 -1899002277, i32 0 }, %struct.ath5k_ini { i16 -23776, i32 -1655728369, i32 0 }, %struct.ath5k_ini { i16 -23772, i32 -1513119345, i32 0 }, %struct.ath5k_ini { i16 -23768, i32 -1252020449, i32 0 }, %struct.ath5k_ini { i16 -23764, i32 -1109411425, i32 0 }, %struct.ath5k_ini { i16 -23760, i32 -847263937, i32 0 }, %struct.ath5k_ini { i16 -23756, i32 -704654913, i32 0 }, %struct.ath5k_ini { i16 -23752, i32 0, i32 0 }, %struct.ath5k_ini { i16 -23748, i32 0, i32 0 }, %struct.ath5k_ini { i16 -23744, i32 0, i32 0 }, %struct.ath5k_ini { i16 -23740, i32 0, i32 0 }, %struct.ath5k_ini { i16 -23736, i32 1073741823, i32 0 }, %struct.ath5k_ini { i16 -23732, i32 1073741823, i32 0 }, %struct.ath5k_ini { i16 -23728, i32 1073741823, i32 0 }, %struct.ath5k_ini { i16 -23724, i32 262143, i32 0 }, %struct.ath5k_ini { i16 -23720, i32 2041096735, i32 0 }, %struct.ath5k_ini { i16 -23716, i32 107758095, i32 0 }, %struct.ath5k_ini { i16 -23712, i32 254288391, i32 0 }, %struct.ath5k_ini { i16 -23708, i32 392173189, i32 0 }, %struct.ath5k_ini { i16 -23704, i32 528486660, i32 0 }, %struct.ath5k_ini { i16 -23700, i32 933235715, i32 0 }, %struct.ath5k_ini { i16 -23696, i32 1069811843, i32 0 }, %struct.ath5k_ini { i16 -23692, i32 1472202755, i32 0 }, %struct.ath5k_ini { i16 -23688, i32 1607992962, i32 0 }, %struct.ath5k_ini { i16 -23684, i32 2145387650, i32 0 }, %struct.ath5k_ini { i16 -23680, i32 2134670266, i32 0 }, %struct.ath5k_ini { i16 -23676, i32 -214925328, i32 0 }], [244 x i8] zeroinitializer }, align 32
@rf2425_ini_common_end = internal constant { [77 x %struct.ath5k_ini], [228 x i8] } { [77 x %struct.ath5k_ini] [%struct.ath5k_ini { i16 4656, i32 992, i32 0 }, %struct.ath5k_ini { i16 -32672, i32 15, i32 0 }, %struct.ath5k_ini { i16 -32612, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32608, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32488, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32484, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32480, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32476, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32472, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32468, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32464, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32460, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32456, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32452, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32448, i32 -2147482631, i32 0 }, %struct.ath5k_ini { i16 -32444, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26616, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26580, i32 40960, i32 0 }, %struct.ath5k_ini { i16 -26564, i32 2098176, i32 0 }, %struct.ath5k_ini { i16 -26548, i32 310649660, i32 0 }, %struct.ath5k_ini { i16 -26512, i32 31, i32 0 }, %struct.ath5k_ini { i16 -26508, i32 128, i32 0 }, %struct.ath5k_ini { i16 -26504, i32 14, i32 0 }, %struct.ath5k_ini { i16 -26280, i32 532479, i32 0 }, %struct.ath5k_ini { i16 -26240, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26236, i32 41943040, i32 0 }, %struct.ath5k_ini { i16 -26208, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26148, i32 -21308440, i32 0 }, %struct.ath5k_ini { i16 -26144, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26140, i32 -1431655766, i32 0 }, %struct.ath5k_ini { i16 -26136, i32 1011246200, i32 0 }, %struct.ath5k_ini { i16 -26132, i32 170, i32 0 }, %struct.ath5k_ini { i16 -26128, i32 12, i32 0 }, %struct.ath5k_ini { i16 -26124, i32 255, i32 0 }, %struct.ath5k_ini { i16 -26120, i32 20, i32 0 }, %struct.ath5k_ini { i16 -24024, i32 2485, i32 0 }, %struct.ath5k_ini { i16 -24012, i32 538976288, i32 0 }, %struct.ath5k_ini { i16 -24008, i32 538976288, i32 0 }, %struct.ath5k_ini { i16 -24004, i32 -1815574097, i32 0 }, %struct.ath5k_ini { i16 -23988, i32 1, i32 0 }, %struct.ath5k_ini { i16 -23984, i32 40960, i32 0 }, %struct.ath5k_ini { i16 -23980, i32 0, i32 0 }, %struct.ath5k_ini { i16 -23976, i32 214389632, i32 0 }, %struct.ath5k_ini { i16 -23972, i32 252645121, i32 0 }, %struct.ath5k_ini { i16 -23968, i32 1600720641, i32 0 }, %struct.ath5k_ini { i16 -23964, i32 4295185, i32 0 }, %struct.ath5k_ini { i16 -23960, i32 0, i32 0 }, %struct.ath5k_ini { i16 -23956, i32 204521830, i32 0 }, %struct.ath5k_ini { i16 -23952, i32 8521760, i32 0 }, %struct.ath5k_ini { i16 -23948, i32 135937194, i32 0 }, %struct.ath5k_ini { i16 -23944, i32 484915662, i32 0 }, %struct.ath5k_ini { i16 -23940, i32 85393870, i32 0 }, %struct.ath5k_ini { i16 -23808, i32 369164288, i32 0 }, %struct.ath5k_ini { i16 -23804, i32 738403330, i32 0 }, %struct.ath5k_ini { i16 -23800, i32 1212366402, i32 0 }, %struct.ath5k_ini { i16 -23796, i32 1510952971, i32 0 }, %struct.ath5k_ini { i16 -23792, i32 1816879690, i32 0 }, %struct.ath5k_ini { i16 -23788, i32 2123068554, i32 0 }, %struct.ath5k_ini { i16 -23784, i32 -1764782901, i32 0 }, %struct.ath5k_ini { i16 -23780, i32 -1555063537, i32 0 }, %struct.ath5k_ini { i16 -23776, i32 -1479563889, i32 0 }, %struct.ath5k_ini { i16 -23736, i32 1073741823, i32 0 }, %struct.ath5k_ini { i16 -23732, i32 1073741823, i32 0 }, %struct.ath5k_ini { i16 -23728, i32 1073741823, i32 0 }, %struct.ath5k_ini { i16 -23724, i32 262143, i32 0 }, %struct.ath5k_ini { i16 -23720, i32 2041096735, i32 0 }, %struct.ath5k_ini { i16 -23716, i32 107758095, i32 0 }, %struct.ath5k_ini { i16 -23712, i32 254288391, i32 0 }, %struct.ath5k_ini { i16 -23708, i32 392173189, i32 0 }, %struct.ath5k_ini { i16 -23704, i32 528486660, i32 0 }, %struct.ath5k_ini { i16 -23700, i32 933235715, i32 0 }, %struct.ath5k_ini { i16 -23696, i32 1069811843, i32 0 }, %struct.ath5k_ini { i16 -23692, i32 1472202755, i32 0 }, %struct.ath5k_ini { i16 -23688, i32 1607992962, i32 0 }, %struct.ath5k_ini { i16 -23684, i32 2145387650, i32 0 }, %struct.ath5k_ini { i16 -23680, i32 2134670266, i32 0 }, %struct.ath5k_ini { i16 -23676, i32 -214925328, i32 0 }], [228 x i8] zeroinitializer }, align 32
@rf2425_ini_mode_end = internal constant { [22 x %struct.ath5k_ini_mode], [64 x i8] } { [22 x %struct.ath5k_ini_mode] [%struct.ath5k_ini_mode { i16 48, [3 x i32] [i32 21, i32 21, i32 21] }, %struct.ath5k_ini_mode { i16 -32740, [3 x i32] [i32 311268263, i32 81793941, i32 316674987] }, %struct.ath5k_ini_mode { i16 -26584, [3 x i32] [i32 167903233, i32 84017408, i32 167903233] }, %struct.ath5k_ini_mode { i16 -26572, [3 x i32] [i32 3598, i32 3598, i32 3598] }, %struct.ath5k_ini_mode { i16 -26568, [3 x i32] [i32 3, i32 11, i32 11] }, %struct.ath5k_ini_mode { i16 -26556, [3 x i32] [i32 326243868, i32 326244130, i32 326243362] }, %struct.ath5k_ini_mode { i16 -26552, [3 x i32] [i32 1636961, i32 1677925, i32 1677925] }, %struct.ath5k_ini_mode { i16 -26544, [3 x i32] [i32 211334368, i32 211333338, i32 211333338] }, %struct.ath5k_ini_mode { i16 -26536, [3 x i32] [i32 2127039790, i32 2127039790, i32 2127039790] }, %struct.ath5k_ini_mode { i16 -26532, [3 x i32] [i32 825843806, i32 825843806, i32 825843806] }, %struct.ath5k_ini_mode { i16 -26516, [3 x i32] [i32 84717697, i32 84717697, i32 84717697] }, %struct.ath5k_ini_mode { i16 -26348, [3 x i32] [i32 2000, i32 1100, i32 2200] }, %struct.ath5k_ini_mode { i16 -26300, [3 x i32] [i32 -138932224, i32 -138932992, i32 -138932224] }, %struct.ath5k_ini_mode { i16 -24060, [3 x i32] zeroinitializer }, %struct.ath5k_ini_mode { i16 -24056, [3 x i32] [i32 -692164728, i32 -801216632, i32 -801216632] }, %struct.ath5k_ini_mode { i16 -24052, [3 x i32] [i32 320, i32 5423424, i32 5423424] }, %struct.ath5k_ini_mode { i16 -24036, [3 x i32] [i32 411271178, i32 409174026, i32 411271178] }, %struct.ath5k_ini_mode { i16 -23772, [3 x i32] [i32 -1479563313, i32 -1479563313, i32 -1479563313] }, %struct.ath5k_ini_mode { i16 -23768, [3 x i32] [i32 -1479563313, i32 -1479563313, i32 -1479563313] }, %struct.ath5k_ini_mode { i16 -23764, [3 x i32] [i32 -1479563313, i32 -1479563313, i32 -1479563313] }, %struct.ath5k_ini_mode { i16 -23760, [3 x i32] [i32 -1479563313, i32 -1479563313, i32 -1479563313] }, %struct.ath5k_ini_mode { i16 -23756, [3 x i32] [i32 -1479563313, i32 -1479563313, i32 -1479563313] }], [64 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unsupported channel mode: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ar5211_ini_mode = internal constant { [34 x %struct.ath5k_ini_mode], [128 x i8] } { [34 x %struct.ath5k_ini_mode] [%struct.ath5k_ini_mode { i16 48, [3 x i32] [i32 21, i32 29, i32 21] }, %struct.ath5k_ini_mode { i16 4160, [3 x i32] [i32 3144719, i32 3144735, i32 3144719] }, %struct.ath5k_ini_mode { i16 4164, [3 x i32] [i32 3144719, i32 3144735, i32 3144719] }, %struct.ath5k_ini_mode { i16 4168, [3 x i32] [i32 3144719, i32 3144735, i32 3144719] }, %struct.ath5k_ini_mode { i16 4172, [3 x i32] [i32 3144719, i32 3144735, i32 3144719] }, %struct.ath5k_ini_mode { i16 4176, [3 x i32] [i32 3144719, i32 3144735, i32 3144719] }, %struct.ath5k_ini_mode { i16 4180, [3 x i32] [i32 3144719, i32 3144735, i32 3144719] }, %struct.ath5k_ini_mode { i16 4184, [3 x i32] [i32 3144719, i32 3144735, i32 3144719] }, %struct.ath5k_ini_mode { i16 4188, [3 x i32] [i32 3144719, i32 3144735, i32 3144719] }, %struct.ath5k_ini_mode { i16 4192, [3 x i32] [i32 3144719, i32 3144735, i32 3144719] }, %struct.ath5k_ini_mode { i16 4196, [3 x i32] [i32 3144719, i32 3144735, i32 3144719] }, %struct.ath5k_ini_mode { i16 4208, [3 x i32] [i32 360, i32 440, i32 360] }, %struct.ath5k_ini_mode { i16 4144, [3 x i32] [i32 560, i32 176, i32 560] }, %struct.ath5k_ini_mode { i16 4272, [3 x i32] [i32 3480, i32 8008, i32 3480] }, %struct.ath5k_ini_mode { i16 4336, [3 x i32] [i32 41184, i32 22656, i32 41184] }, %struct.ath5k_ini_mode { i16 -32748, [3 x i32] [i32 67109888, i32 536883200, i32 67109888] }, %struct.ath5k_ini_mode { i16 -32740, [3 x i32] [i32 244158375, i32 23105429, i32 244158375] }, %struct.ath5k_ini_mode { i16 -26592, [3 x i32] [i32 33686016, i32 33620480, i32 33686016] }, %struct.ath5k_ini_mode { i16 -26588, [3 x i32] [i32 3598, i32 1799, i32 3598] }, %struct.ath5k_ini_mode { i16 -26584, [3 x i32] [i32 167903233, i32 83951616, i32 167903233] }, %struct.ath5k_ini_mode { i16 -26572, [3 x i32] [i32 3598, i32 3598, i32 3598] }, %struct.ath5k_ini_mode { i16 -26568, [3 x i32] [i32 7, i32 11, i32 11] }, %struct.ath5k_ini_mode { i16 -26556, [3 x i32] [i32 326243996, i32 326244008, i32 326243996] }, %struct.ath5k_ini_mode { i16 -26552, [3 x i32] [i32 1620583, i32 1620585, i32 1620585] }, %struct.ath5k_ini_mode { i16 -26544, [3 x i32] [i32 203994336, i32 203994336, i32 203994336] }, %struct.ath5k_ini_mode { i16 -26536, [3 x i32] [i32 2122321198, i32 2126515502, i32 2122321198] }, %struct.ath5k_ini_mode { i16 -26532, [3 x i32] [i32 825711966, i32 825908574, i32 825711966] }, %struct.ath5k_ini_mode { i16 -26528, [3 x i32] [i32 48400, i32 48440, i32 48400] }, %struct.ath5k_ini_mode { i16 -26524, [3 x i32] [i32 118272, i32 118272, i32 118272] }, %struct.ath5k_ini_mode { i16 -26348, [3 x i32] [i32 10000, i32 5500, i32 10000] }, %struct.ath5k_ini_mode { i16 -26344, [3 x i32] [i32 400, i32 132, i32 400] }, %struct.ath5k_ini_mode { i16 -26300, [3 x i32] [i32 1876955168, i32 1876953376, i32 1876955168] }, %struct.ath5k_ini_mode { i16 -24192, [3 x i32] [i32 100603135, i32 100603135, i32 100604415] }, %struct.ath5k_ini_mode { i16 -26412, [3 x i32] [i32 16, i32 16, i32 16] }], [128 x i8] zeroinitializer }, align 32
@ar5211_ini = internal constant { [116 x %struct.ath5k_ini], [336 x i8] } { [116 x %struct.ath5k_ini] [%struct.ath5k_ini { i16 12, i32 0, i32 0 }, %struct.ath5k_ini { i16 40, i32 -2071683940, i32 0 }, %struct.ath5k_ini { i16 44, i32 2088533116, i32 0 }, %struct.ath5k_ini { i16 52, i32 5, i32 0 }, %struct.ath5k_ini { i16 64, i32 0, i32 0 }, %struct.ath5k_ini { i16 68, i32 8, i32 0 }, %struct.ath5k_ini { i16 72, i32 8, i32 0 }, %struct.ath5k_ini { i16 76, i32 16, i32 0 }, %struct.ath5k_ini { i16 80, i32 0, i32 0 }, %struct.ath5k_ini { i16 84, i32 31, i32 0 }, %struct.ath5k_ini { i16 2048, i32 0, i32 0 }, %struct.ath5k_ini { i16 2052, i32 0, i32 0 }, %struct.ath5k_ini { i16 2056, i32 0, i32 0 }, %struct.ath5k_ini { i16 2060, i32 0, i32 0 }, %struct.ath5k_ini { i16 2064, i32 0, i32 0 }, %struct.ath5k_ini { i16 2068, i32 0, i32 0 }, %struct.ath5k_ini { i16 2072, i32 0, i32 0 }, %struct.ath5k_ini { i16 2076, i32 0, i32 0 }, %struct.ath5k_ini { i16 2080, i32 0, i32 0 }, %struct.ath5k_ini { i16 2084, i32 0, i32 0 }, %struct.ath5k_ini { i16 4656, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32764, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32760, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32756, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32744, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32732, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32728, i32 48, i32 0 }, %struct.ath5k_ini { i16 -32724, i32 524287, i32 0 }, %struct.ath5k_ini { i16 -32720, i32 33554431, i32 0 }, %struct.ath5k_ini { i16 -32716, i32 49, i32 0 }, %struct.ath5k_ini { i16 -32712, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32708, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32704, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32700, i32 2, i32 0 }, %struct.ath5k_ini { i16 -32696, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32684, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32680, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26616, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26612, i32 763662483, i32 0 }, %struct.ath5k_ini { i16 -26608, i32 2100486144, i32 0 }, %struct.ath5k_ini { i16 -26604, i32 3947, i32 0 }, %struct.ath5k_ini { i16 -26596, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26580, i32 159742, i32 0 }, %struct.ath5k_ini { i16 -26576, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26564, i32 131328, i32 0 }, %struct.ath5k_ini { i16 -26560, i32 543818106, i32 0 }, %struct.ath5k_ini { i16 -26548, i32 310665532, i32 0 }, %struct.ath5k_ini { i16 -26540, i32 2137, i32 0 }, %struct.ath5k_ini { i16 -26520, i32 1083851152, i32 0 }, %struct.ath5k_ini { i16 -26516, i32 84717697, i32 0 }, %struct.ath5k_ini { i16 -26512, i32 15, i32 0 }, %struct.ath5k_ini { i16 -26508, i32 128, i32 0 }, %struct.ath5k_ini { i16 -26504, i32 12, i32 0 }, %struct.ath5k_ini { i16 -26368, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26364, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26360, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26356, i32 8388608, i32 0 }, %struct.ath5k_ini { i16 -26352, i32 1, i32 0 }, %struct.ath5k_ini { i16 -26340, i32 2346, i32 0 }, %struct.ath5k_ini { i16 -26336, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26332, i32 363013, i32 0 }, %struct.ath5k_ini { i16 -26328, i32 1, i32 0 }, %struct.ath5k_ini { i16 -26324, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26320, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26316, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26312, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26308, i32 63, i32 0 }, %struct.ath5k_ini { i16 -26304, i32 4, i32 0 }, %struct.ath5k_ini { i16 -26296, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26292, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26288, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26284, i32 1565585740, i32 0 }, %struct.ath5k_ini { i16 -26280, i32 24, i32 0 }, %struct.ath5k_ini { i16 -26276, i32 4942478, i32 0 }, %struct.ath5k_ini { i16 -24188, i32 117376511, i32 0 }, %struct.ath5k_ini { i16 -24184, i32 134154239, i32 0 }, %struct.ath5k_ini { i16 -24180, i32 150931711, i32 0 }, %struct.ath5k_ini { i16 -24176, i32 167709183, i32 0 }, %struct.ath5k_ini { i16 -24172, i32 184486655, i32 0 }, %struct.ath5k_ini { i16 -24168, i32 201264127, i32 0 }, %struct.ath5k_ini { i16 -24164, i32 218041599, i32 0 }, %struct.ath5k_ini { i16 -24160, i32 234819071, i32 0 }, %struct.ath5k_ini { i16 -24156, i32 268373759, i32 0 }, %struct.ath5k_ini { i16 -24152, i32 318706431, i32 0 }, %struct.ath5k_ini { i16 -24148, i32 352261119, i32 0 }, %struct.ath5k_ini { i16 -24144, i32 385816063, i32 0 }, %struct.ath5k_ini { i16 -24140, i32 436148223, i32 0 }, %struct.ath5k_ini { i16 -24136, i32 469703423, i32 0 }, %struct.ath5k_ini { i16 -24132, i32 520035839, i32 0 }, %struct.ath5k_ini { i16 -24128, i32 603922687, i32 0 }, %struct.ath5k_ini { i16 -24124, i32 671032831, i32 0 }, %struct.ath5k_ini { i16 -24120, i32 754919935, i32 0 }, %struct.ath5k_ini { i16 -24116, i32 838807551, i32 0 }, %struct.ath5k_ini { i16 -24112, i32 939472127, i32 0 }, %struct.ath5k_ini { i16 -24108, i32 989805311, i32 0 }, %struct.ath5k_ini { i16 -24104, i32 989805311, i32 0 }, %struct.ath5k_ini { i16 -24100, i32 989805311, i32 0 }, %struct.ath5k_ini { i16 -24096, i32 989805311, i32 0 }, %struct.ath5k_ini { i16 -24092, i32 989805311, i32 0 }, %struct.ath5k_ini { i16 -24088, i32 989805311, i32 0 }, %struct.ath5k_ini { i16 -24084, i32 989805311, i32 0 }, %struct.ath5k_ini { i16 -24080, i32 989805311, i32 0 }, %struct.ath5k_ini { i16 -24076, i32 989805311, i32 0 }, %struct.ath5k_ini { i16 -24072, i32 989805311, i32 0 }, %struct.ath5k_ini { i16 -24068, i32 989805311, i32 0 }, %struct.ath5k_ini { i16 -24060, i32 0, i32 0 }, %struct.ath5k_ini { i16 -24056, i32 1346258502, i32 0 }, %struct.ath5k_ini { i16 -24052, i32 1686126956, i32 0 }, %struct.ath5k_ini { i16 -24048, i32 26845187, i32 0 }, %struct.ath5k_ini { i16 -24044, i32 72144400, i32 0 }, %struct.ath5k_ini { i16 -24040, i32 327155776, i32 0 }, %struct.ath5k_ini { i16 -24036, i32 467664992, i32 0 }, %struct.ath5k_ini { i16 -24032, i32 206798858, i32 0 }, %struct.ath5k_ini { i16 -24028, i32 1367867, i32 0 }, %struct.ath5k_ini { i16 -24024, i32 437, i32 0 }, %struct.ath5k_ini { i16 -24020, i32 32, i32 0 }], [336 x i8] zeroinitializer }, align 32
@ar5210_ini = internal constant { [203 x %struct.ath5k_ini], [636 x i8] } { [203 x %struct.ath5k_ini] [%struct.ath5k_ini zeroinitializer, %struct.ath5k_ini { i16 4, i32 0, i32 0 }, %struct.ath5k_ini { i16 12, i32 0, i32 0 }, %struct.ath5k_ini { i16 8, i32 0, i32 0 }, %struct.ath5k_ini { i16 28, i32 0, i32 1 }, %struct.ath5k_ini { i16 32, i32 0, i32 0 }, %struct.ath5k_ini { i16 36, i32 0, i32 0 }, %struct.ath5k_ini { i16 44, i32 0, i32 1 }, %struct.ath5k_ini { i16 48, i32 5, i32 0 }, %struct.ath5k_ini { i16 52, i32 5, i32 0 }, %struct.ath5k_ini { i16 20, i32 5, i32 0 }, %struct.ath5k_ini { i16 68, i32 8, i32 0 }, %struct.ath5k_ini { i16 72, i32 8, i32 0 }, %struct.ath5k_ini { i16 80, i32 0, i32 0 }, %struct.ath5k_ini { i16 76, i32 0, i32 0 }, %struct.ath5k_ini { i16 16396, i32 0, i32 0 }, %struct.ath5k_ini { i16 64, i32 0, i32 0 }, %struct.ath5k_ini { i16 88, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32692, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32688, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32684, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32680, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32676, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32672, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32668, i32 1, i32 0 }, %struct.ath5k_ini { i16 -32664, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32744, i32 129, i32 0 }, %struct.ath5k_ini { i16 -32660, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32724, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32720, i32 -1, i32 0 }, %struct.ath5k_ini { i16 -32716, i32 -1, i32 0 }, %struct.ath5k_ini { i16 -32712, i32 1, i32 0 }, %struct.ath5k_ini { i16 -32696, i32 0, i32 0 }, %struct.ath5k_ini { i16 -32728, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26624, i32 71, i32 0 }, %struct.ath5k_ini { i16 -26616, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26612, i32 159682214, i32 0 }, %struct.ath5k_ini { i16 -26608, i32 1026744320, i32 0 }, %struct.ath5k_ini { i16 -26604, i32 1899, i32 0 }, %struct.ath5k_ini { i16 -26596, i32 2, i32 0 }, %struct.ath5k_ini { i16 -26592, i32 33686016, i32 0 }, %struct.ath5k_ini { i16 -26588, i32 3598, i32 0 }, %struct.ath5k_ini { i16 -26584, i32 167903745, i32 0 }, %struct.ath5k_ini { i16 -26580, i32 225276, i32 0 }, %struct.ath5k_ini { i16 -26576, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26572, i32 3598, i32 0 }, %struct.ath5k_ini { i16 -26568, i32 7, i32 0 }, %struct.ath5k_ini { i16 -26564, i32 131328, i32 0 }, %struct.ath5k_ini { i16 -26560, i32 -1990000640, i32 0 }, %struct.ath5k_ini { i16 -26556, i32 326243996, i32 0 }, %struct.ath5k_ini { i16 -26552, i32 1619507, i32 0 }, %struct.ath5k_ini { i16 -26548, i32 310665532, i32 0 }, %struct.ath5k_ini { i16 -26544, i32 233355488, i32 0 }, %struct.ath5k_ini { i16 -26540, i32 477273, i32 0 }, %struct.ath5k_ini { i16 -26536, i32 2122366650, i32 0 }, %struct.ath5k_ini { i16 -26532, i32 825910878, i32 0 }, %struct.ath5k_ini { i16 -26528, i32 7432, i32 0 }, %struct.ath5k_ini { i16 -26524, i32 118272, i32 0 }, %struct.ath5k_ini { i16 -26520, i32 1083851152, i32 0 }, %struct.ath5k_ini { i16 -26512, i32 15, i32 0 }, %struct.ath5k_ini { i16 -26508, i32 128, i32 0 }, %struct.ath5k_ini { i16 -26504, i32 4, i32 0 }, %struct.ath5k_ini { i16 -26500, i32 24, i32 0 }, %struct.ath5k_ini { i16 -26368, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26364, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26360, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26356, i32 8388608, i32 0 }, %struct.ath5k_ini { i16 -26352, i32 3, i32 0 }, %struct.ath5k_ini { i16 -25856, i32 0, i32 0 }, %struct.ath5k_ini { i16 -25852, i32 32, i32 0 }, %struct.ath5k_ini { i16 -25848, i32 16, i32 0 }, %struct.ath5k_ini { i16 -25844, i32 48, i32 0 }, %struct.ath5k_ini { i16 -25840, i32 8, i32 0 }, %struct.ath5k_ini { i16 -25836, i32 40, i32 0 }, %struct.ath5k_ini { i16 -25832, i32 40, i32 0 }, %struct.ath5k_ini { i16 -25828, i32 4, i32 0 }, %struct.ath5k_ini { i16 -25824, i32 36, i32 0 }, %struct.ath5k_ini { i16 -25820, i32 20, i32 0 }, %struct.ath5k_ini { i16 -25816, i32 52, i32 0 }, %struct.ath5k_ini { i16 -25812, i32 12, i32 0 }, %struct.ath5k_ini { i16 -25808, i32 44, i32 0 }, %struct.ath5k_ini { i16 -25804, i32 2, i32 0 }, %struct.ath5k_ini { i16 -25800, i32 34, i32 0 }, %struct.ath5k_ini { i16 -25796, i32 18, i32 0 }, %struct.ath5k_ini { i16 -25792, i32 50, i32 0 }, %struct.ath5k_ini { i16 -25788, i32 10, i32 0 }, %struct.ath5k_ini { i16 -25784, i32 42, i32 0 }, %struct.ath5k_ini { i16 -25780, i32 1, i32 0 }, %struct.ath5k_ini { i16 -25776, i32 33, i32 0 }, %struct.ath5k_ini { i16 -25772, i32 17, i32 0 }, %struct.ath5k_ini { i16 -25768, i32 49, i32 0 }, %struct.ath5k_ini { i16 -25764, i32 9, i32 0 }, %struct.ath5k_ini { i16 -25760, i32 41, i32 0 }, %struct.ath5k_ini { i16 -25756, i32 5, i32 0 }, %struct.ath5k_ini { i16 -25752, i32 37, i32 0 }, %struct.ath5k_ini { i16 -25748, i32 21, i32 0 }, %struct.ath5k_ini { i16 -25744, i32 53, i32 0 }, %struct.ath5k_ini { i16 -25740, i32 13, i32 0 }, %struct.ath5k_ini { i16 -25736, i32 45, i32 0 }, %struct.ath5k_ini { i16 -25732, i32 3, i32 0 }, %struct.ath5k_ini { i16 -25728, i32 35, i32 0 }, %struct.ath5k_ini { i16 -25724, i32 19, i32 0 }, %struct.ath5k_ini { i16 -25720, i32 51, i32 0 }, %struct.ath5k_ini { i16 -25716, i32 11, i32 0 }, %struct.ath5k_ini { i16 -25712, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25708, i32 7, i32 0 }, %struct.ath5k_ini { i16 -25704, i32 39, i32 0 }, %struct.ath5k_ini { i16 -25700, i32 23, i32 0 }, %struct.ath5k_ini { i16 -25696, i32 55, i32 0 }, %struct.ath5k_ini { i16 -25692, i32 15, i32 0 }, %struct.ath5k_ini { i16 -25688, i32 47, i32 0 }, %struct.ath5k_ini { i16 -25684, i32 47, i32 0 }, %struct.ath5k_ini { i16 -25680, i32 47, i32 0 }, %struct.ath5k_ini { i16 -25676, i32 47, i32 0 }, %struct.ath5k_ini { i16 -25672, i32 47, i32 0 }, %struct.ath5k_ini { i16 -25668, i32 47, i32 0 }, %struct.ath5k_ini { i16 -25664, i32 47, i32 0 }, %struct.ath5k_ini { i16 -25660, i32 47, i32 0 }, %struct.ath5k_ini { i16 -25656, i32 47, i32 0 }, %struct.ath5k_ini { i16 -25652, i32 47, i32 0 }, %struct.ath5k_ini { i16 -25648, i32 47, i32 0 }, %struct.ath5k_ini { i16 -25644, i32 47, i32 0 }, %struct.ath5k_ini { i16 -25640, i32 47, i32 0 }, %struct.ath5k_ini { i16 -25636, i32 47, i32 0 }, %struct.ath5k_ini { i16 -25632, i32 47, i32 0 }, %struct.ath5k_ini { i16 -25628, i32 47, i32 0 }, %struct.ath5k_ini { i16 -25624, i32 47, i32 0 }, %struct.ath5k_ini { i16 -25620, i32 47, i32 0 }, %struct.ath5k_ini { i16 -25616, i32 47, i32 0 }, %struct.ath5k_ini { i16 -25612, i32 47, i32 0 }, %struct.ath5k_ini { i16 -25608, i32 47, i32 0 }, %struct.ath5k_ini { i16 -25604, i32 47, i32 0 }, %struct.ath5k_ini { i16 -26112, i32 29, i32 0 }, %struct.ath5k_ini { i16 -26108, i32 93, i32 0 }, %struct.ath5k_ini { i16 -26104, i32 157, i32 0 }, %struct.ath5k_ini { i16 -26100, i32 221, i32 0 }, %struct.ath5k_ini { i16 -26096, i32 285, i32 0 }, %struct.ath5k_ini { i16 -26092, i32 33, i32 0 }, %struct.ath5k_ini { i16 -26088, i32 97, i32 0 }, %struct.ath5k_ini { i16 -26084, i32 161, i32 0 }, %struct.ath5k_ini { i16 -26080, i32 225, i32 0 }, %struct.ath5k_ini { i16 -26076, i32 49, i32 0 }, %struct.ath5k_ini { i16 -26072, i32 113, i32 0 }, %struct.ath5k_ini { i16 -26068, i32 177, i32 0 }, %struct.ath5k_ini { i16 -26064, i32 28, i32 0 }, %struct.ath5k_ini { i16 -26060, i32 92, i32 0 }, %struct.ath5k_ini { i16 -26056, i32 41, i32 0 }, %struct.ath5k_ini { i16 -26052, i32 105, i32 0 }, %struct.ath5k_ini { i16 -26048, i32 169, i32 0 }, %struct.ath5k_ini { i16 -26044, i32 32, i32 0 }, %struct.ath5k_ini { i16 -26040, i32 25, i32 0 }, %struct.ath5k_ini { i16 -26036, i32 89, i32 0 }, %struct.ath5k_ini { i16 -26032, i32 153, i32 0 }, %struct.ath5k_ini { i16 -26028, i32 48, i32 0 }, %struct.ath5k_ini { i16 -26024, i32 5, i32 0 }, %struct.ath5k_ini { i16 -26020, i32 37, i32 0 }, %struct.ath5k_ini { i16 -26016, i32 101, i32 0 }, %struct.ath5k_ini { i16 -26012, i32 165, i32 0 }, %struct.ath5k_ini { i16 -26008, i32 40, i32 0 }, %struct.ath5k_ini { i16 -26004, i32 104, i32 0 }, %struct.ath5k_ini { i16 -26000, i32 31, i32 0 }, %struct.ath5k_ini { i16 -25996, i32 30, i32 0 }, %struct.ath5k_ini { i16 -25992, i32 24, i32 0 }, %struct.ath5k_ini { i16 -25988, i32 88, i32 0 }, %struct.ath5k_ini { i16 -25984, i32 152, i32 0 }, %struct.ath5k_ini { i16 -25980, i32 3, i32 0 }, %struct.ath5k_ini { i16 -25976, i32 4, i32 0 }, %struct.ath5k_ini { i16 -25972, i32 68, i32 0 }, %struct.ath5k_ini { i16 -25968, i32 132, i32 0 }, %struct.ath5k_ini { i16 -25964, i32 19, i32 0 }, %struct.ath5k_ini { i16 -25960, i32 18, i32 0 }, %struct.ath5k_ini { i16 -25956, i32 82, i32 0 }, %struct.ath5k_ini { i16 -25952, i32 146, i32 0 }, %struct.ath5k_ini { i16 -25948, i32 210, i32 0 }, %struct.ath5k_ini { i16 -25944, i32 43, i32 0 }, %struct.ath5k_ini { i16 -25940, i32 42, i32 0 }, %struct.ath5k_ini { i16 -25936, i32 106, i32 0 }, %struct.ath5k_ini { i16 -25932, i32 170, i32 0 }, %struct.ath5k_ini { i16 -25928, i32 27, i32 0 }, %struct.ath5k_ini { i16 -25924, i32 26, i32 0 }, %struct.ath5k_ini { i16 -25920, i32 90, i32 0 }, %struct.ath5k_ini { i16 -25916, i32 154, i32 0 }, %struct.ath5k_ini { i16 -25912, i32 218, i32 0 }, %struct.ath5k_ini { i16 -25908, i32 6, i32 0 }, %struct.ath5k_ini { i16 -25904, i32 6, i32 0 }, %struct.ath5k_ini { i16 -25900, i32 6, i32 0 }, %struct.ath5k_ini { i16 -25896, i32 6, i32 0 }, %struct.ath5k_ini { i16 -25892, i32 6, i32 0 }, %struct.ath5k_ini { i16 -25888, i32 6, i32 0 }, %struct.ath5k_ini { i16 -25884, i32 6, i32 0 }, %struct.ath5k_ini { i16 -25880, i32 6, i32 0 }, %struct.ath5k_ini { i16 -25876, i32 6, i32 0 }, %struct.ath5k_ini { i16 -25872, i32 6, i32 0 }, %struct.ath5k_ini { i16 -25868, i32 6, i32 0 }, %struct.ath5k_ini { i16 -25864, i32 6, i32 0 }, %struct.ath5k_ini { i16 -25860, i32 6, i32 0 }, %struct.ath5k_ini { i16 -26412, i32 32, i32 0 }, %struct.ath5k_ini { i16 -26420, i32 4, i32 0 }, %struct.ath5k_ini { i16 -26424, i32 393478, i32 0 }, %struct.ath5k_ini { i16 -26468, i32 109, i32 0 }, %struct.ath5k_ini { i16 -26432, i32 0, i32 0 }, %struct.ath5k_ini { i16 -26416, i32 20, i32 0 }, %struct.ath5k_ini { i16 -26596, i32 1, i32 0 }], [636 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.3 = private unnamed_addr constant [22 x i8] c"ar5212_ini_mode_start\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 679, i32 36 }
@___asan_gen_.6 = private unnamed_addr constant [24 x i8] c"ar5212_ini_common_start\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 468, i32 31 }
@___asan_gen_.9 = private unnamed_addr constant [20 x i8] c"rf5111_ini_mode_end\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 733, i32 36 }
@___asan_gen_.12 = private unnamed_addr constant [22 x i8] c"rf5111_ini_common_end\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 766, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"rf5111_ini_bbgain\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 1236, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant [20 x i8] c"rf5112_ini_mode_end\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 786, i32 36 }
@___asan_gen_.21 = private unnamed_addr constant [22 x i8] c"rf5112_ini_common_end\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 822, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant [18 x i8] c"rf5112_ini_bbgain\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 1304, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"rf5413_ini_mode_end\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 839, i32 36 }
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"rf5413_ini_common_end\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 903, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"rf2413_ini_mode_end\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 979, i32 36 }
@___asan_gen_.36 = private unnamed_addr constant [22 x i8] c"rf2413_ini_common_end\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 1015, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"rf2425_ini_common_end\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 1150, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"rf2425_ini_mode_end\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 1102, i32 36 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 1579, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"ar5211_ini_mode\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 395, i32 36 }
@___asan_gen_.54 = private unnamed_addr constant [11 x i8] c"ar5211_ini\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 267, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"ar5210_ini\00", align 1
@___asan_gen_.58 = private constant [45 x i8] c"../drivers/net/wireless/ath/ath5k/initvals.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 55, i32 31 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @ar5212_ini_mode_start, ptr @ar5212_ini_common_start, ptr @rf5111_ini_mode_end, ptr @rf5111_ini_common_end, ptr @rf5111_ini_bbgain, ptr @rf5112_ini_mode_end, ptr @rf5112_ini_common_end, ptr @rf5112_ini_bbgain, ptr @rf5413_ini_mode_end, ptr @rf5413_ini_common_end, ptr @rf2413_ini_mode_end, ptr @rf2413_ini_common_end, ptr @rf2425_ini_common_end, ptr @rf2425_ini_mode_end, ptr @.str, ptr @.str.1, ptr @ar5211_ini_mode, ptr @ar5211_ini, ptr @ar5210_ini], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5212_ini_mode_start to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5212_ini_common_start to i32), i32 2292, i32 2848, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf5111_ini_mode_end to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf5111_ini_common_end to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf5111_ini_bbgain to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf5112_ini_mode_end to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf5112_ini_common_end to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf5112_ini_bbgain to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf5413_ini_mode_end to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf5413_ini_common_end to i32), i32 840, i32 1056, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf2413_ini_mode_end to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf2413_ini_common_end to i32), i32 972, i32 1216, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf2425_ini_common_end to i32), i32 924, i32 1152, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf2425_ini_mode_end to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5211_ini_mode to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5211_ini to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5210_ini to i32), i32 2436, i32 3072, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_write_initvals(ptr noundef %ah, i8 noundef zeroext %mode, i1 noundef zeroext %skip_pcu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %0 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_version, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 2, label %do.body.i.peel.next
    i32 1, label %if.then23
    i32 0, label %if.then39
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.body.i.peel.next:                              ; preds = %entry
  %idxprom.i = zext i8 %mode to i32
  %iobase.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %arrayidx1.i.peel = getelementptr %struct.ath5k_ini_mode, ptr @ar5212_ini_mode_start, i32 0, i32 1, i32 %idxprom.i
  %3 = ptrtoint ptr %arrayidx1.i.peel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1.i.peel, align 4
  %5 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i.peel = getelementptr i8, ptr %6, i32 4160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %7 = tail call i32 @llvm.bswap.i32(i32 %4) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.peel, i32 %7) #3, !srcloc !47
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.body.i.peel.next
  %i.010.i = phi i32 [ 1, %do.body.i.peel.next ], [ %inc.i, %do.end.i.do.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #3
  %arrayidx.i = getelementptr %struct.ath5k_ini_mode, ptr @ar5212_ini_mode_start, i32 %i.010.i
  %arrayidx1.i = getelementptr %struct.ath5k_ini_mode, ptr @ar5212_ini_mode_start, i32 %i.010.i, i32 1, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1.i, align 4
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i, align 4
  %13 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase.i.i, align 4
  %conv.i.i = zext i16 %12 to i32
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %15 = tail call i32 @llvm.bswap.i32(i32 %10) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #3, !srcloc !47
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %do.end.i.for.body.i_crit_edge, label %do.end.i.do.end.i_crit_edge, !llvm.loop !48

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %i.037.i = phi i32 [ %inc.i111, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end.i.for.body.i_crit_edge ]
  br i1 %skip_pcu, label %land.lhs.true.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx.i105 = getelementptr %struct.ath5k_ini, ptr @ar5212_ini_common_start, i32 %i.037.i
  %16 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %17)
  %18 = icmp slt i16 %17, -28672
  br i1 %18, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %arrayidx9.i = getelementptr %struct.ath5k_ini, ptr @ar5212_ini_common_start, i32 %i.037.i
  %ini_mode.i = getelementptr %struct.ath5k_ini, ptr @ar5212_ini_common_start, i32 %i.037.i, i32 2
  %19 = ptrtoint ptr %ini_mode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ini_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cond.i = icmp eq i32 %20, 1
  br i1 %cond.i, label %sw.bb.i, label %do.body.i109

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx9.i, align 4
  %23 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iobase.i.i, align 4
  %conv.i.i106 = zext i16 %22 to i32
  %add.ptr.i.i107 = getelementptr i8, ptr %24, i32 %conv.i.i106
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i107) #3, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  br label %for.inc.i

do.body.i109:                                     ; preds = %if.end.i
  %rem.i108 = and i32 %i.037.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i108)
  %tobool13.not.i = icmp eq i32 %rem.i108, 0
  br i1 %tobool13.not.i, label %do.body.i109.do.end.i110_crit_edge, label %if.then14.i

do.body.i109.do.end.i110_crit_edge:               ; preds = %do.body.i109
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i110

if.then14.i:                                      ; preds = %do.body.i109
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #3
  br label %do.end.i110

do.end.i110:                                      ; preds = %if.then14.i, %do.body.i109.do.end.i110_crit_edge
  %ini_value.i = getelementptr %struct.ath5k_ini, ptr @ar5212_ini_common_start, i32 %i.037.i, i32 1
  %27 = ptrtoint ptr %ini_value.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ini_value.i, align 4
  %29 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx9.i, align 4
  %31 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iobase.i.i, align 4
  %conv.i34.i = zext i16 %30 to i32
  %add.ptr.i35.i = getelementptr i8, ptr %32, i32 %conv.i34.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %33 = tail call i32 @llvm.bswap.i32(i32 %28) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 %33) #3, !srcloc !47
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i110, %sw.bb.i, %land.lhs.true.i.for.inc.i_crit_edge
  %inc.i111 = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i112 = icmp eq i32 %inc.i111, 191
  br i1 %exitcond.not.i112, label %ath5k_hw_ini_registers.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

ath5k_hw_ini_registers.exit:                      ; preds = %for.inc.i
  %ah_radio = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 69
  %34 = ptrtoint ptr %ah_radio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ah_radio, align 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %35, label %ath5k_hw_ini_registers.exit.return_crit_edge [
    i32 1, label %do.body.i118.peel.next
    i32 2, label %do.body.i181.peel.next
    i32 4, label %do.body.i244.peel.next
    i32 5, label %ath5k_hw_ini_registers.exit.do.body.i307.peel.next_crit_edge
    i32 3, label %ath5k_hw_ini_registers.exit.do.body.i307.peel.next_crit_edge654
    i32 6, label %do.body.i372.peel.next
    i32 7, label %do.body.i447.peel.next
  ]

ath5k_hw_ini_registers.exit.do.body.i307.peel.next_crit_edge654: ; preds = %ath5k_hw_ini_registers.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i307.peel.next

ath5k_hw_ini_registers.exit.do.body.i307.peel.next_crit_edge: ; preds = %ath5k_hw_ini_registers.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i307.peel.next

ath5k_hw_ini_registers.exit.return_crit_edge:     ; preds = %ath5k_hw_ini_registers.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.body.i447.peel.next:                           ; preds = %ath5k_hw_ini_registers.exit
  %arrayidx1.i450.peel = getelementptr %struct.ath5k_ini_mode, ptr @rf2425_ini_mode_end, i32 0, i32 1, i32 %idxprom.i
  %37 = ptrtoint ptr %arrayidx1.i450.peel to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx1.i450.peel, align 4
  %39 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i452.peel = getelementptr i8, ptr %40, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i452.peel, i32 %41) #3, !srcloc !47
  br label %do.end.i455

do.body.i372.peel.next:                           ; preds = %ath5k_hw_ini_registers.exit
  %arrayidx1.i375.peel = getelementptr %struct.ath5k_ini_mode, ptr @rf2413_ini_mode_end, i32 0, i32 1, i32 %idxprom.i
  %42 = ptrtoint ptr %arrayidx1.i375.peel to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx1.i375.peel, align 4
  %44 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i377.peel = getelementptr i8, ptr %45, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %46 = tail call i32 @llvm.bswap.i32(i32 %43) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i377.peel, i32 %46) #3, !srcloc !47
  br label %do.end.i380

do.body.i244.peel.next:                           ; preds = %ath5k_hw_ini_registers.exit
  %arrayidx1.i247.peel = getelementptr %struct.ath5k_ini_mode, ptr @rf5413_ini_mode_end, i32 0, i32 1, i32 %idxprom.i
  %47 = ptrtoint ptr %arrayidx1.i247.peel to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx1.i247.peel, align 4
  %49 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i249.peel = getelementptr i8, ptr %50, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %51 = tail call i32 @llvm.bswap.i32(i32 %48) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i249.peel, i32 %51) #3, !srcloc !47
  br label %do.end.i252

do.body.i181.peel.next:                           ; preds = %ath5k_hw_ini_registers.exit
  %arrayidx1.i184.peel = getelementptr %struct.ath5k_ini_mode, ptr @rf5112_ini_mode_end, i32 0, i32 1, i32 %idxprom.i
  %52 = ptrtoint ptr %arrayidx1.i184.peel to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx1.i184.peel, align 4
  %54 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i186.peel = getelementptr i8, ptr %55, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %56 = tail call i32 @llvm.bswap.i32(i32 %53) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i186.peel, i32 %56) #3, !srcloc !47
  br label %do.end.i189

do.body.i118.peel.next:                           ; preds = %ath5k_hw_ini_registers.exit
  %arrayidx1.i121.peel = getelementptr %struct.ath5k_ini_mode, ptr @rf5111_ini_mode_end, i32 0, i32 1, i32 %idxprom.i
  %57 = ptrtoint ptr %arrayidx1.i121.peel to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx1.i121.peel, align 4
  %59 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i123.peel = getelementptr i8, ptr %60, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %61 = tail call i32 @llvm.bswap.i32(i32 %58) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i123.peel, i32 %61) #3, !srcloc !47
  br label %do.end.i126

do.end.i126:                                      ; preds = %do.end.i126.do.end.i126_crit_edge, %do.body.i118.peel.next
  %i.010.i115 = phi i32 [ %inc.i124, %do.end.i126.do.end.i126_crit_edge ], [ 1, %do.body.i118.peel.next ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748) #3
  %arrayidx.i120 = getelementptr %struct.ath5k_ini_mode, ptr @rf5111_ini_mode_end, i32 %i.010.i115
  %arrayidx1.i121 = getelementptr %struct.ath5k_ini_mode, ptr @rf5111_ini_mode_end, i32 %i.010.i115, i32 1, i32 %idxprom.i
  %63 = ptrtoint ptr %arrayidx1.i121 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx1.i121, align 4
  %65 = ptrtoint ptr %arrayidx.i120 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx.i120, align 4
  %67 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %iobase.i.i, align 4
  %conv.i.i122 = zext i16 %66 to i32
  %add.ptr.i.i123 = getelementptr i8, ptr %68, i32 %conv.i.i122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %69 = tail call i32 @llvm.bswap.i32(i32 %64) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i123, i32 %69) #3, !srcloc !47
  %inc.i124 = add nuw nsw i32 %i.010.i115, 1
  %exitcond.not.i125 = icmp eq i32 %inc.i124, 14
  br i1 %exitcond.not.i125, label %for.body.i130.peel.next, label %do.end.i126.do.end.i126_crit_edge, !llvm.loop !52

do.end.i126.do.end.i126_crit_edge:                ; preds = %do.end.i126
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i126

for.body.i130.peel.next:                          ; preds = %do.end.i126
  %70 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i35.i146.peel = getelementptr i8, ptr %71, i32 4656
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i146.peel, i32 0) #3, !srcloc !47
  br label %for.body.i130

for.body.i130:                                    ; preds = %for.body.i130.backedge, %for.body.i130.peel.next
  %i.037.i129 = phi i32 [ 1, %for.body.i130.peel.next ], [ %i.037.i129.be, %for.body.i130.backedge ]
  br i1 %skip_pcu, label %land.lhs.true.i132, label %for.body.i130.if.end.i136_crit_edge

for.body.i130.if.end.i136_crit_edge:              ; preds = %for.body.i130
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i136

land.lhs.true.i132:                               ; preds = %for.body.i130
  %arrayidx.i131 = getelementptr %struct.ath5k_ini, ptr @rf5111_ini_common_end, i32 %i.037.i129
  %72 = ptrtoint ptr %arrayidx.i131 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %73)
  %74 = icmp slt i16 %73, -28672
  br i1 %74, label %for.inc.i150.thread, label %land.lhs.true.i132.if.end.i136_crit_edge

land.lhs.true.i132.if.end.i136_crit_edge:         ; preds = %land.lhs.true.i132
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i136

if.end.i136:                                      ; preds = %land.lhs.true.i132.if.end.i136_crit_edge, %for.body.i130.if.end.i136_crit_edge
  %arrayidx9.i133 = getelementptr %struct.ath5k_ini, ptr @rf5111_ini_common_end, i32 %i.037.i129
  %ini_mode.i134 = getelementptr %struct.ath5k_ini, ptr @rf5111_ini_common_end, i32 %i.037.i129, i32 2
  %75 = ptrtoint ptr %ini_mode.i134 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ini_mode.i134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cond.i135 = icmp eq i32 %76, 1
  br i1 %cond.i135, label %sw.bb.i139, label %do.end.i147

sw.bb.i139:                                       ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #5
  %77 = ptrtoint ptr %arrayidx9.i133 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx9.i133, align 4
  %79 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %iobase.i.i, align 4
  %conv.i.i137 = zext i16 %78 to i32
  %add.ptr.i.i138 = getelementptr i8, ptr %80, i32 %conv.i.i137
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i138) #3, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  br label %for.inc.i150

do.end.i147:                                      ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748) #3
  %ini_value.i144 = getelementptr %struct.ath5k_ini, ptr @rf5111_ini_common_end, i32 %i.037.i129, i32 1
  %83 = ptrtoint ptr %ini_value.i144 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ini_value.i144, align 4
  %85 = ptrtoint ptr %arrayidx9.i133 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx9.i133, align 4
  %87 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %iobase.i.i, align 4
  %conv.i34.i145 = zext i16 %86 to i32
  %add.ptr.i35.i146 = getelementptr i8, ptr %88, i32 %conv.i34.i145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %89 = tail call i32 @llvm.bswap.i32(i32 %84) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i146, i32 %89) #3, !srcloc !47
  br label %for.inc.i150

for.inc.i150:                                     ; preds = %do.end.i147, %sw.bb.i139
  %inc.i148 = add nuw nsw i32 %i.037.i129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %inc.i148)
  %exitcond.not.i149 = icmp eq i32 %inc.i148, 14
  br i1 %exitcond.not.i149, label %for.inc.i150.for.body.i154.peel.next_crit_edge, label %for.inc.i150.for.body.i130.backedge_crit_edge

for.inc.i150.for.body.i130.backedge_crit_edge:    ; preds = %for.inc.i150
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i130.backedge

for.inc.i150.for.body.i154.peel.next_crit_edge:   ; preds = %for.inc.i150
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i154.peel.next

for.body.i130.backedge:                           ; preds = %for.inc.i150.thread.for.body.i130.backedge_crit_edge, %for.inc.i150.for.body.i130.backedge_crit_edge
  %i.037.i129.be = phi i32 [ %inc.i148, %for.inc.i150.for.body.i130.backedge_crit_edge ], [ %inc.i148623, %for.inc.i150.thread.for.body.i130.backedge_crit_edge ]
  br label %for.body.i130, !llvm.loop !53

for.inc.i150.thread:                              ; preds = %land.lhs.true.i132
  %inc.i148623 = add nuw nsw i32 %i.037.i129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %inc.i148623)
  %exitcond.not.i149624 = icmp eq i32 %inc.i148623, 14
  br i1 %exitcond.not.i149624, label %for.inc.i150.thread.for.body.i154.peel.next_crit_edge, label %for.inc.i150.thread.for.body.i130.backedge_crit_edge

for.inc.i150.thread.for.body.i130.backedge_crit_edge: ; preds = %for.inc.i150.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i130.backedge

for.inc.i150.thread.for.body.i154.peel.next_crit_edge: ; preds = %for.inc.i150.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i154.peel.next

for.body.i154.peel.next:                          ; preds = %for.inc.i150.thread.for.body.i154.peel.next_crit_edge, %for.inc.i150.for.body.i154.peel.next_crit_edge
  %90 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i35.i170.peel = getelementptr i8, ptr %91, i32 39680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i170.peel, i32 0) #3, !srcloc !47
  br label %for.body.i154

for.body.i154:                                    ; preds = %for.inc.i174.for.body.i154_crit_edge, %for.body.i154.peel.next
  %i.037.i153 = phi i32 [ %inc.i172, %for.inc.i174.for.body.i154_crit_edge ], [ 1, %for.body.i154.peel.next ]
  br i1 %skip_pcu, label %land.lhs.true.i156, label %for.body.i154.if.end.i160_crit_edge

for.body.i154.if.end.i160_crit_edge:              ; preds = %for.body.i154
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i160

land.lhs.true.i156:                               ; preds = %for.body.i154
  %arrayidx.i155 = getelementptr %struct.ath5k_ini, ptr @rf5111_ini_bbgain, i32 %i.037.i153
  %92 = ptrtoint ptr %arrayidx.i155 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx.i155, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %93)
  %94 = icmp slt i16 %93, -28672
  br i1 %94, label %land.lhs.true.i156.for.inc.i174_crit_edge, label %land.lhs.true.i156.if.end.i160_crit_edge

land.lhs.true.i156.if.end.i160_crit_edge:         ; preds = %land.lhs.true.i156
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i160

land.lhs.true.i156.for.inc.i174_crit_edge:        ; preds = %land.lhs.true.i156
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i174

if.end.i160:                                      ; preds = %land.lhs.true.i156.if.end.i160_crit_edge, %for.body.i154.if.end.i160_crit_edge
  %arrayidx9.i157 = getelementptr %struct.ath5k_ini, ptr @rf5111_ini_bbgain, i32 %i.037.i153
  %ini_mode.i158 = getelementptr %struct.ath5k_ini, ptr @rf5111_ini_bbgain, i32 %i.037.i153, i32 2
  %95 = ptrtoint ptr %ini_mode.i158 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ini_mode.i158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %96)
  %cond.i159 = icmp eq i32 %96, 1
  br i1 %cond.i159, label %sw.bb.i163, label %do.end.i171

sw.bb.i163:                                       ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #5
  %97 = ptrtoint ptr %arrayidx9.i157 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx9.i157, align 4
  %99 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %iobase.i.i, align 4
  %conv.i.i161 = zext i16 %98 to i32
  %add.ptr.i.i162 = getelementptr i8, ptr %100, i32 %conv.i.i161
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i162) #3, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  br label %for.inc.i174

do.end.i171:                                      ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 214748) #3
  %ini_value.i168 = getelementptr %struct.ath5k_ini, ptr @rf5111_ini_bbgain, i32 %i.037.i153, i32 1
  %103 = ptrtoint ptr %ini_value.i168 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ini_value.i168, align 4
  %105 = ptrtoint ptr %arrayidx9.i157 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx9.i157, align 4
  %107 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %iobase.i.i, align 4
  %conv.i34.i169 = zext i16 %106 to i32
  %add.ptr.i35.i170 = getelementptr i8, ptr %108, i32 %conv.i34.i169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %109 = tail call i32 @llvm.bswap.i32(i32 %104) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i170, i32 %109) #3, !srcloc !47
  br label %for.inc.i174

for.inc.i174:                                     ; preds = %do.end.i171, %sw.bb.i163, %land.lhs.true.i156.for.inc.i174_crit_edge
  %inc.i172 = add nuw nsw i32 %i.037.i153, 1
  %exitcond.not.i173 = icmp eq i32 %inc.i172, 64
  br i1 %exitcond.not.i173, label %for.inc.i174.return_crit_edge, label %for.inc.i174.for.body.i154_crit_edge, !llvm.loop !54

for.inc.i174.for.body.i154_crit_edge:             ; preds = %for.inc.i174
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i154

for.inc.i174.return_crit_edge:                    ; preds = %for.inc.i174
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.end.i189:                                      ; preds = %do.end.i189.do.end.i189_crit_edge, %do.body.i181.peel.next
  %i.010.i178 = phi i32 [ %inc.i187, %do.end.i189.do.end.i189_crit_edge ], [ 1, %do.body.i181.peel.next ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %110(i32 noundef 214748) #3
  %arrayidx.i183 = getelementptr %struct.ath5k_ini_mode, ptr @rf5112_ini_mode_end, i32 %i.010.i178
  %arrayidx1.i184 = getelementptr %struct.ath5k_ini_mode, ptr @rf5112_ini_mode_end, i32 %i.010.i178, i32 1, i32 %idxprom.i
  %111 = ptrtoint ptr %arrayidx1.i184 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx1.i184, align 4
  %113 = ptrtoint ptr %arrayidx.i183 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %arrayidx.i183, align 4
  %115 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %iobase.i.i, align 4
  %conv.i.i185 = zext i16 %114 to i32
  %add.ptr.i.i186 = getelementptr i8, ptr %116, i32 %conv.i.i185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %117 = tail call i32 @llvm.bswap.i32(i32 %112) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i186, i32 %117) #3, !srcloc !47
  %inc.i187 = add nuw nsw i32 %i.010.i178, 1
  %exitcond.not.i188 = icmp eq i32 %inc.i187, 16
  br i1 %exitcond.not.i188, label %for.body.i193.peel.next, label %do.end.i189.do.end.i189_crit_edge, !llvm.loop !55

do.end.i189.do.end.i189_crit_edge:                ; preds = %do.end.i189
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i189

for.body.i193.peel.next:                          ; preds = %do.end.i189
  %118 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i35.i209.peel = getelementptr i8, ptr %119, i32 4656
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i209.peel, i32 0) #3, !srcloc !47
  br label %for.body.i193

for.body.i193:                                    ; preds = %for.body.i193.backedge, %for.body.i193.peel.next
  %i.037.i192 = phi i32 [ 1, %for.body.i193.peel.next ], [ %i.037.i192.be, %for.body.i193.backedge ]
  br i1 %skip_pcu, label %land.lhs.true.i195, label %for.body.i193.if.end.i199_crit_edge

for.body.i193.if.end.i199_crit_edge:              ; preds = %for.body.i193
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i199

land.lhs.true.i195:                               ; preds = %for.body.i193
  %arrayidx.i194 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_common_end, i32 %i.037.i192
  %120 = ptrtoint ptr %arrayidx.i194 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %arrayidx.i194, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %121)
  %122 = icmp slt i16 %121, -28672
  br i1 %122, label %for.inc.i213.thread, label %land.lhs.true.i195.if.end.i199_crit_edge

land.lhs.true.i195.if.end.i199_crit_edge:         ; preds = %land.lhs.true.i195
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i199

if.end.i199:                                      ; preds = %land.lhs.true.i195.if.end.i199_crit_edge, %for.body.i193.if.end.i199_crit_edge
  %arrayidx9.i196 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_common_end, i32 %i.037.i192
  %ini_mode.i197 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_common_end, i32 %i.037.i192, i32 2
  %123 = ptrtoint ptr %ini_mode.i197 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %ini_mode.i197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %124)
  %cond.i198 = icmp eq i32 %124, 1
  br i1 %cond.i198, label %sw.bb.i202, label %do.end.i210

sw.bb.i202:                                       ; preds = %if.end.i199
  call void @__sanitizer_cov_trace_pc() #5
  %125 = ptrtoint ptr %arrayidx9.i196 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %arrayidx9.i196, align 4
  %127 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %iobase.i.i, align 4
  %conv.i.i200 = zext i16 %126 to i32
  %add.ptr.i.i201 = getelementptr i8, ptr %128, i32 %conv.i.i200
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i201) #3, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  br label %for.inc.i213

do.end.i210:                                      ; preds = %if.end.i199
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %130(i32 noundef 214748) #3
  %ini_value.i207 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_common_end, i32 %i.037.i192, i32 1
  %131 = ptrtoint ptr %ini_value.i207 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %ini_value.i207, align 4
  %133 = ptrtoint ptr %arrayidx9.i196 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %arrayidx9.i196, align 4
  %135 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %iobase.i.i, align 4
  %conv.i34.i208 = zext i16 %134 to i32
  %add.ptr.i35.i209 = getelementptr i8, ptr %136, i32 %conv.i34.i208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %137 = tail call i32 @llvm.bswap.i32(i32 %132) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i209, i32 %137) #3, !srcloc !47
  br label %for.inc.i213

for.inc.i213:                                     ; preds = %do.end.i210, %sw.bb.i202
  %inc.i211 = add nuw nsw i32 %i.037.i192, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %inc.i211)
  %exitcond.not.i212 = icmp eq i32 %inc.i211, 11
  br i1 %exitcond.not.i212, label %for.inc.i213.for.body.i217.peel.next_crit_edge, label %for.inc.i213.for.body.i193.backedge_crit_edge

for.inc.i213.for.body.i193.backedge_crit_edge:    ; preds = %for.inc.i213
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i193.backedge

for.inc.i213.for.body.i217.peel.next_crit_edge:   ; preds = %for.inc.i213
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i217.peel.next

for.body.i193.backedge:                           ; preds = %for.inc.i213.thread.for.body.i193.backedge_crit_edge, %for.inc.i213.for.body.i193.backedge_crit_edge
  %i.037.i192.be = phi i32 [ %inc.i211, %for.inc.i213.for.body.i193.backedge_crit_edge ], [ %inc.i211625, %for.inc.i213.thread.for.body.i193.backedge_crit_edge ]
  br label %for.body.i193, !llvm.loop !56

for.inc.i213.thread:                              ; preds = %land.lhs.true.i195
  %inc.i211625 = add nuw nsw i32 %i.037.i192, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %inc.i211625)
  %exitcond.not.i212626 = icmp eq i32 %inc.i211625, 11
  br i1 %exitcond.not.i212626, label %for.inc.i213.thread.for.body.i217.peel.next_crit_edge, label %for.inc.i213.thread.for.body.i193.backedge_crit_edge

for.inc.i213.thread.for.body.i193.backedge_crit_edge: ; preds = %for.inc.i213.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i193.backedge

for.inc.i213.thread.for.body.i217.peel.next_crit_edge: ; preds = %for.inc.i213.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i217.peel.next

for.body.i217.peel.next:                          ; preds = %for.inc.i213.thread.for.body.i217.peel.next_crit_edge, %for.inc.i213.for.body.i217.peel.next_crit_edge
  %138 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i35.i233.peel = getelementptr i8, ptr %139, i32 39680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i233.peel, i32 0) #3, !srcloc !47
  br label %for.body.i217

for.body.i217:                                    ; preds = %for.inc.i237.for.body.i217_crit_edge, %for.body.i217.peel.next
  %i.037.i216 = phi i32 [ %inc.i235, %for.inc.i237.for.body.i217_crit_edge ], [ 1, %for.body.i217.peel.next ]
  br i1 %skip_pcu, label %land.lhs.true.i219, label %for.body.i217.if.end.i223_crit_edge

for.body.i217.if.end.i223_crit_edge:              ; preds = %for.body.i217
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i223

land.lhs.true.i219:                               ; preds = %for.body.i217
  %arrayidx.i218 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_bbgain, i32 %i.037.i216
  %140 = ptrtoint ptr %arrayidx.i218 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %arrayidx.i218, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %141)
  %142 = icmp slt i16 %141, -28672
  br i1 %142, label %land.lhs.true.i219.for.inc.i237_crit_edge, label %land.lhs.true.i219.if.end.i223_crit_edge

land.lhs.true.i219.if.end.i223_crit_edge:         ; preds = %land.lhs.true.i219
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i223

land.lhs.true.i219.for.inc.i237_crit_edge:        ; preds = %land.lhs.true.i219
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i237

if.end.i223:                                      ; preds = %land.lhs.true.i219.if.end.i223_crit_edge, %for.body.i217.if.end.i223_crit_edge
  %arrayidx9.i220 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_bbgain, i32 %i.037.i216
  %ini_mode.i221 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_bbgain, i32 %i.037.i216, i32 2
  %143 = ptrtoint ptr %ini_mode.i221 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %ini_mode.i221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %144)
  %cond.i222 = icmp eq i32 %144, 1
  br i1 %cond.i222, label %sw.bb.i226, label %do.end.i234

sw.bb.i226:                                       ; preds = %if.end.i223
  call void @__sanitizer_cov_trace_pc() #5
  %145 = ptrtoint ptr %arrayidx9.i220 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %arrayidx9.i220, align 4
  %147 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %iobase.i.i, align 4
  %conv.i.i224 = zext i16 %146 to i32
  %add.ptr.i.i225 = getelementptr i8, ptr %148, i32 %conv.i.i224
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i225) #3, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  br label %for.inc.i237

do.end.i234:                                      ; preds = %if.end.i223
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %150(i32 noundef 214748) #3
  %ini_value.i231 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_bbgain, i32 %i.037.i216, i32 1
  %151 = ptrtoint ptr %ini_value.i231 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %ini_value.i231, align 4
  %153 = ptrtoint ptr %arrayidx9.i220 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %arrayidx9.i220, align 4
  %155 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %iobase.i.i, align 4
  %conv.i34.i232 = zext i16 %154 to i32
  %add.ptr.i35.i233 = getelementptr i8, ptr %156, i32 %conv.i34.i232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %157 = tail call i32 @llvm.bswap.i32(i32 %152) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i233, i32 %157) #3, !srcloc !47
  br label %for.inc.i237

for.inc.i237:                                     ; preds = %do.end.i234, %sw.bb.i226, %land.lhs.true.i219.for.inc.i237_crit_edge
  %inc.i235 = add nuw nsw i32 %i.037.i216, 1
  %exitcond.not.i236 = icmp eq i32 %inc.i235, 64
  br i1 %exitcond.not.i236, label %for.inc.i237.return_crit_edge, label %for.inc.i237.for.body.i217_crit_edge, !llvm.loop !57

for.inc.i237.for.body.i217_crit_edge:             ; preds = %for.inc.i237
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i217

for.inc.i237.return_crit_edge:                    ; preds = %for.inc.i237
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.end.i252:                                      ; preds = %do.end.i252.do.end.i252_crit_edge, %do.body.i244.peel.next
  %i.010.i241 = phi i32 [ %inc.i250, %do.end.i252.do.end.i252_crit_edge ], [ 1, %do.body.i244.peel.next ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %158(i32 noundef 214748) #3
  %arrayidx.i246 = getelementptr %struct.ath5k_ini_mode, ptr @rf5413_ini_mode_end, i32 %i.010.i241
  %arrayidx1.i247 = getelementptr %struct.ath5k_ini_mode, ptr @rf5413_ini_mode_end, i32 %i.010.i241, i32 1, i32 %idxprom.i
  %159 = ptrtoint ptr %arrayidx1.i247 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx1.i247, align 4
  %161 = ptrtoint ptr %arrayidx.i246 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %arrayidx.i246, align 4
  %163 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %iobase.i.i, align 4
  %conv.i.i248 = zext i16 %162 to i32
  %add.ptr.i.i249 = getelementptr i8, ptr %164, i32 %conv.i.i248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %165 = tail call i32 @llvm.bswap.i32(i32 %160) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i249, i32 %165) #3, !srcloc !47
  %inc.i250 = add nuw nsw i32 %i.010.i241, 1
  %exitcond.not.i251 = icmp eq i32 %inc.i250, 30
  br i1 %exitcond.not.i251, label %do.end.i252.for.body.i256_crit_edge, label %do.end.i252.do.end.i252_crit_edge, !llvm.loop !58

do.end.i252.do.end.i252_crit_edge:                ; preds = %do.end.i252
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i252

do.end.i252.for.body.i256_crit_edge:              ; preds = %do.end.i252
  br label %for.body.i256

for.body.i256:                                    ; preds = %for.body.i256.backedge, %do.end.i252.for.body.i256_crit_edge
  %i.037.i255 = phi i32 [ %i.037.i255.be, %for.body.i256.backedge ], [ 0, %do.end.i252.for.body.i256_crit_edge ]
  br i1 %skip_pcu, label %land.lhs.true.i258, label %for.body.i256.if.end.i262_crit_edge

for.body.i256.if.end.i262_crit_edge:              ; preds = %for.body.i256
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i262

land.lhs.true.i258:                               ; preds = %for.body.i256
  %arrayidx.i257 = getelementptr %struct.ath5k_ini, ptr @rf5413_ini_common_end, i32 %i.037.i255
  %166 = ptrtoint ptr %arrayidx.i257 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %arrayidx.i257, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %167)
  %168 = icmp slt i16 %167, -28672
  br i1 %168, label %for.inc.i276.thread, label %land.lhs.true.i258.if.end.i262_crit_edge

land.lhs.true.i258.if.end.i262_crit_edge:         ; preds = %land.lhs.true.i258
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i262

if.end.i262:                                      ; preds = %land.lhs.true.i258.if.end.i262_crit_edge, %for.body.i256.if.end.i262_crit_edge
  %arrayidx9.i259 = getelementptr %struct.ath5k_ini, ptr @rf5413_ini_common_end, i32 %i.037.i255
  %ini_mode.i260 = getelementptr %struct.ath5k_ini, ptr @rf5413_ini_common_end, i32 %i.037.i255, i32 2
  %169 = ptrtoint ptr %ini_mode.i260 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %ini_mode.i260, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %170)
  %cond.i261 = icmp eq i32 %170, 1
  br i1 %cond.i261, label %sw.bb.i265, label %do.body.i268

sw.bb.i265:                                       ; preds = %if.end.i262
  call void @__sanitizer_cov_trace_pc() #5
  %171 = ptrtoint ptr %arrayidx9.i259 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %arrayidx9.i259, align 4
  %173 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %iobase.i.i, align 4
  %conv.i.i263 = zext i16 %172 to i32
  %add.ptr.i.i264 = getelementptr i8, ptr %174, i32 %conv.i.i263
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i264) #3, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  br label %for.inc.i276

do.body.i268:                                     ; preds = %if.end.i262
  %rem.i266 = and i32 %i.037.i255, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i266)
  %tobool13.not.i267 = icmp eq i32 %rem.i266, 0
  br i1 %tobool13.not.i267, label %do.body.i268.do.end.i273_crit_edge, label %if.then14.i269

do.body.i268.do.end.i273_crit_edge:               ; preds = %do.body.i268
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i273

if.then14.i269:                                   ; preds = %do.body.i268
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %176 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %176(i32 noundef 214748) #3
  br label %do.end.i273

do.end.i273:                                      ; preds = %if.then14.i269, %do.body.i268.do.end.i273_crit_edge
  %ini_value.i270 = getelementptr %struct.ath5k_ini, ptr @rf5413_ini_common_end, i32 %i.037.i255, i32 1
  %177 = ptrtoint ptr %ini_value.i270 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %ini_value.i270, align 4
  %179 = ptrtoint ptr %arrayidx9.i259 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %arrayidx9.i259, align 4
  %181 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %iobase.i.i, align 4
  %conv.i34.i271 = zext i16 %180 to i32
  %add.ptr.i35.i272 = getelementptr i8, ptr %182, i32 %conv.i34.i271
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %183 = tail call i32 @llvm.bswap.i32(i32 %178) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i272, i32 %183) #3, !srcloc !47
  br label %for.inc.i276

for.inc.i276:                                     ; preds = %do.end.i273, %sw.bb.i265
  %inc.i274 = add nuw nsw i32 %i.037.i255, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %inc.i274)
  %exitcond.not.i275 = icmp eq i32 %inc.i274, 70
  br i1 %exitcond.not.i275, label %for.inc.i276.for.body.i280.peel.next_crit_edge, label %for.inc.i276.for.body.i256.backedge_crit_edge

for.inc.i276.for.body.i256.backedge_crit_edge:    ; preds = %for.inc.i276
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i256.backedge

for.inc.i276.for.body.i280.peel.next_crit_edge:   ; preds = %for.inc.i276
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i280.peel.next

for.body.i256.backedge:                           ; preds = %for.inc.i276.thread.for.body.i256.backedge_crit_edge, %for.inc.i276.for.body.i256.backedge_crit_edge
  %i.037.i255.be = phi i32 [ %inc.i274, %for.inc.i276.for.body.i256.backedge_crit_edge ], [ %inc.i274627, %for.inc.i276.thread.for.body.i256.backedge_crit_edge ]
  br label %for.body.i256

for.inc.i276.thread:                              ; preds = %land.lhs.true.i258
  %inc.i274627 = add nuw nsw i32 %i.037.i255, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %inc.i274627)
  %exitcond.not.i275628 = icmp eq i32 %inc.i274627, 70
  br i1 %exitcond.not.i275628, label %for.inc.i276.thread.for.body.i280.peel.next_crit_edge, label %for.inc.i276.thread.for.body.i256.backedge_crit_edge

for.inc.i276.thread.for.body.i256.backedge_crit_edge: ; preds = %for.inc.i276.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i256.backedge

for.inc.i276.thread.for.body.i280.peel.next_crit_edge: ; preds = %for.inc.i276.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i280.peel.next

for.body.i280.peel.next:                          ; preds = %for.inc.i276.thread.for.body.i280.peel.next_crit_edge, %for.inc.i276.for.body.i280.peel.next_crit_edge
  %184 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i35.i296.peel = getelementptr i8, ptr %185, i32 39680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i296.peel, i32 0) #3, !srcloc !47
  br label %for.body.i280

for.body.i280:                                    ; preds = %for.inc.i300.for.body.i280_crit_edge, %for.body.i280.peel.next
  %i.037.i279 = phi i32 [ %inc.i298, %for.inc.i300.for.body.i280_crit_edge ], [ 1, %for.body.i280.peel.next ]
  br i1 %skip_pcu, label %land.lhs.true.i282, label %for.body.i280.if.end.i286_crit_edge

for.body.i280.if.end.i286_crit_edge:              ; preds = %for.body.i280
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i286

land.lhs.true.i282:                               ; preds = %for.body.i280
  %arrayidx.i281 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_bbgain, i32 %i.037.i279
  %186 = ptrtoint ptr %arrayidx.i281 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %arrayidx.i281, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %187)
  %188 = icmp slt i16 %187, -28672
  br i1 %188, label %land.lhs.true.i282.for.inc.i300_crit_edge, label %land.lhs.true.i282.if.end.i286_crit_edge

land.lhs.true.i282.if.end.i286_crit_edge:         ; preds = %land.lhs.true.i282
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i286

land.lhs.true.i282.for.inc.i300_crit_edge:        ; preds = %land.lhs.true.i282
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i300

if.end.i286:                                      ; preds = %land.lhs.true.i282.if.end.i286_crit_edge, %for.body.i280.if.end.i286_crit_edge
  %arrayidx9.i283 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_bbgain, i32 %i.037.i279
  %ini_mode.i284 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_bbgain, i32 %i.037.i279, i32 2
  %189 = ptrtoint ptr %ini_mode.i284 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %ini_mode.i284, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %190)
  %cond.i285 = icmp eq i32 %190, 1
  br i1 %cond.i285, label %sw.bb.i289, label %do.end.i297

sw.bb.i289:                                       ; preds = %if.end.i286
  call void @__sanitizer_cov_trace_pc() #5
  %191 = ptrtoint ptr %arrayidx9.i283 to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %arrayidx9.i283, align 4
  %193 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %iobase.i.i, align 4
  %conv.i.i287 = zext i16 %192 to i32
  %add.ptr.i.i288 = getelementptr i8, ptr %194, i32 %conv.i.i287
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i288) #3, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  br label %for.inc.i300

do.end.i297:                                      ; preds = %if.end.i286
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %196 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %196(i32 noundef 214748) #3
  %ini_value.i294 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_bbgain, i32 %i.037.i279, i32 1
  %197 = ptrtoint ptr %ini_value.i294 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %ini_value.i294, align 4
  %199 = ptrtoint ptr %arrayidx9.i283 to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %arrayidx9.i283, align 4
  %201 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %iobase.i.i, align 4
  %conv.i34.i295 = zext i16 %200 to i32
  %add.ptr.i35.i296 = getelementptr i8, ptr %202, i32 %conv.i34.i295
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %203 = tail call i32 @llvm.bswap.i32(i32 %198) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i296, i32 %203) #3, !srcloc !47
  br label %for.inc.i300

for.inc.i300:                                     ; preds = %do.end.i297, %sw.bb.i289, %land.lhs.true.i282.for.inc.i300_crit_edge
  %inc.i298 = add nuw nsw i32 %i.037.i279, 1
  %exitcond.not.i299 = icmp eq i32 %inc.i298, 64
  br i1 %exitcond.not.i299, label %for.inc.i300.return_crit_edge, label %for.inc.i300.for.body.i280_crit_edge, !llvm.loop !59

for.inc.i300.for.body.i280_crit_edge:             ; preds = %for.inc.i300
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i280

for.inc.i300.return_crit_edge:                    ; preds = %for.inc.i300
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.body.i307.peel.next:                           ; preds = %ath5k_hw_ini_registers.exit.do.body.i307.peel.next_crit_edge, %ath5k_hw_ini_registers.exit.do.body.i307.peel.next_crit_edge654
  %arrayidx1.i310.peel = getelementptr %struct.ath5k_ini_mode, ptr @rf2413_ini_mode_end, i32 0, i32 1, i32 %idxprom.i
  %204 = ptrtoint ptr %arrayidx1.i310.peel to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx1.i310.peel, align 4
  %206 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i312.peel = getelementptr i8, ptr %207, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %208 = tail call i32 @llvm.bswap.i32(i32 %205) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i312.peel, i32 %208) #3, !srcloc !47
  br label %do.end.i315

do.end.i315:                                      ; preds = %do.end.i315.do.end.i315_crit_edge, %do.body.i307.peel.next
  %i.010.i304 = phi i32 [ 1, %do.body.i307.peel.next ], [ %inc.i313, %do.end.i315.do.end.i315_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %209 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %209(i32 noundef 214748) #3
  %arrayidx.i309 = getelementptr %struct.ath5k_ini_mode, ptr @rf2413_ini_mode_end, i32 %i.010.i304
  %arrayidx1.i310 = getelementptr %struct.ath5k_ini_mode, ptr @rf2413_ini_mode_end, i32 %i.010.i304, i32 1, i32 %idxprom.i
  %210 = ptrtoint ptr %arrayidx1.i310 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx1.i310, align 4
  %212 = ptrtoint ptr %arrayidx.i309 to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %arrayidx.i309, align 4
  %214 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %iobase.i.i, align 4
  %conv.i.i311 = zext i16 %213 to i32
  %add.ptr.i.i312 = getelementptr i8, ptr %215, i32 %conv.i.i311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %216 = tail call i32 @llvm.bswap.i32(i32 %211) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i312, i32 %216) #3, !srcloc !47
  %inc.i313 = add nuw nsw i32 %i.010.i304, 1
  %exitcond.not.i314 = icmp eq i32 %inc.i313, 16
  br i1 %exitcond.not.i314, label %do.end.i315.for.body.i319_crit_edge, label %do.end.i315.do.end.i315_crit_edge, !llvm.loop !60

do.end.i315.do.end.i315_crit_edge:                ; preds = %do.end.i315
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i315

do.end.i315.for.body.i319_crit_edge:              ; preds = %do.end.i315
  br label %for.body.i319

for.body.i319:                                    ; preds = %for.inc.i339.for.body.i319_crit_edge, %do.end.i315.for.body.i319_crit_edge
  %i.037.i318 = phi i32 [ %inc.i337, %for.inc.i339.for.body.i319_crit_edge ], [ 0, %do.end.i315.for.body.i319_crit_edge ]
  br i1 %skip_pcu, label %land.lhs.true.i321, label %for.body.i319.if.end.i325_crit_edge

for.body.i319.if.end.i325_crit_edge:              ; preds = %for.body.i319
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i325

land.lhs.true.i321:                               ; preds = %for.body.i319
  %arrayidx.i320 = getelementptr %struct.ath5k_ini, ptr @rf2413_ini_common_end, i32 %i.037.i318
  %217 = ptrtoint ptr %arrayidx.i320 to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %arrayidx.i320, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %218)
  %219 = icmp slt i16 %218, -28672
  br i1 %219, label %land.lhs.true.i321.for.inc.i339_crit_edge, label %land.lhs.true.i321.if.end.i325_crit_edge

land.lhs.true.i321.if.end.i325_crit_edge:         ; preds = %land.lhs.true.i321
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i325

land.lhs.true.i321.for.inc.i339_crit_edge:        ; preds = %land.lhs.true.i321
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i339

if.end.i325:                                      ; preds = %land.lhs.true.i321.if.end.i325_crit_edge, %for.body.i319.if.end.i325_crit_edge
  %arrayidx9.i322 = getelementptr %struct.ath5k_ini, ptr @rf2413_ini_common_end, i32 %i.037.i318
  %ini_mode.i323 = getelementptr %struct.ath5k_ini, ptr @rf2413_ini_common_end, i32 %i.037.i318, i32 2
  %220 = ptrtoint ptr %ini_mode.i323 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %ini_mode.i323, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %221)
  %cond.i324 = icmp eq i32 %221, 1
  br i1 %cond.i324, label %sw.bb.i328, label %do.body.i331

sw.bb.i328:                                       ; preds = %if.end.i325
  call void @__sanitizer_cov_trace_pc() #5
  %222 = ptrtoint ptr %arrayidx9.i322 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %arrayidx9.i322, align 4
  %224 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %iobase.i.i, align 4
  %conv.i.i326 = zext i16 %223 to i32
  %add.ptr.i.i327 = getelementptr i8, ptr %225, i32 %conv.i.i326
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i327) #3, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  br label %for.inc.i339

do.body.i331:                                     ; preds = %if.end.i325
  %rem.i329 = and i32 %i.037.i318, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i329)
  %tobool13.not.i330 = icmp eq i32 %rem.i329, 0
  br i1 %tobool13.not.i330, label %do.body.i331.do.end.i336_crit_edge, label %if.then14.i332

do.body.i331.do.end.i336_crit_edge:               ; preds = %do.body.i331
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i336

if.then14.i332:                                   ; preds = %do.body.i331
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %227 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %227(i32 noundef 214748) #3
  br label %do.end.i336

do.end.i336:                                      ; preds = %if.then14.i332, %do.body.i331.do.end.i336_crit_edge
  %ini_value.i333 = getelementptr %struct.ath5k_ini, ptr @rf2413_ini_common_end, i32 %i.037.i318, i32 1
  %228 = ptrtoint ptr %ini_value.i333 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %ini_value.i333, align 4
  %230 = ptrtoint ptr %arrayidx9.i322 to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %arrayidx9.i322, align 4
  %232 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %iobase.i.i, align 4
  %conv.i34.i334 = zext i16 %231 to i32
  %add.ptr.i35.i335 = getelementptr i8, ptr %233, i32 %conv.i34.i334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %234 = tail call i32 @llvm.bswap.i32(i32 %229) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i335, i32 %234) #3, !srcloc !47
  br label %for.inc.i339

for.inc.i339:                                     ; preds = %do.end.i336, %sw.bb.i328, %land.lhs.true.i321.for.inc.i339_crit_edge
  %inc.i337 = add nuw nsw i32 %i.037.i318, 1
  %exitcond.not.i338 = icmp eq i32 %inc.i337, 81
  br i1 %exitcond.not.i338, label %ath5k_hw_ini_registers.exit340, label %for.inc.i339.for.body.i319_crit_edge

for.inc.i339.for.body.i319_crit_edge:             ; preds = %for.inc.i339
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i319

ath5k_hw_ini_registers.exit340:                   ; preds = %for.inc.i339
  %235 = ptrtoint ptr %ah_radio to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %ah_radio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %236)
  %cmp12 = icmp eq i32 %236, 5
  br i1 %cmp12, label %if.then13, label %ath5k_hw_ini_registers.exit340.for.body.i345.peel.next_crit_edge

ath5k_hw_ini_registers.exit340.for.body.i345.peel.next_crit_edge: ; preds = %ath5k_hw_ini_registers.exit340
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i345.peel.next

if.then13:                                        ; preds = %ath5k_hw_ini_registers.exit340
  call void @__sanitizer_cov_trace_pc() #5
  %237 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %238, i32 38920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 4194304) #3, !srcloc !47
  %239 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i342 = getelementptr i8, ptr %240, i32 41588
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i342, i32 -1434707192) #3, !srcloc !47
  br label %for.body.i345.peel.next

for.body.i345.peel.next:                          ; preds = %if.then13, %ath5k_hw_ini_registers.exit340.for.body.i345.peel.next_crit_edge
  %241 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i35.i361.peel = getelementptr i8, ptr %242, i32 39680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i361.peel, i32 0) #3, !srcloc !47
  br label %for.body.i345

for.body.i345:                                    ; preds = %for.inc.i365.for.body.i345_crit_edge, %for.body.i345.peel.next
  %i.037.i344 = phi i32 [ 1, %for.body.i345.peel.next ], [ %inc.i363, %for.inc.i365.for.body.i345_crit_edge ]
  br i1 %skip_pcu, label %land.lhs.true.i347, label %for.body.i345.if.end.i351_crit_edge

for.body.i345.if.end.i351_crit_edge:              ; preds = %for.body.i345
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i351

land.lhs.true.i347:                               ; preds = %for.body.i345
  %arrayidx.i346 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_bbgain, i32 %i.037.i344
  %243 = ptrtoint ptr %arrayidx.i346 to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %arrayidx.i346, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %244)
  %245 = icmp slt i16 %244, -28672
  br i1 %245, label %land.lhs.true.i347.for.inc.i365_crit_edge, label %land.lhs.true.i347.if.end.i351_crit_edge

land.lhs.true.i347.if.end.i351_crit_edge:         ; preds = %land.lhs.true.i347
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i351

land.lhs.true.i347.for.inc.i365_crit_edge:        ; preds = %land.lhs.true.i347
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i365

if.end.i351:                                      ; preds = %land.lhs.true.i347.if.end.i351_crit_edge, %for.body.i345.if.end.i351_crit_edge
  %arrayidx9.i348 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_bbgain, i32 %i.037.i344
  %ini_mode.i349 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_bbgain, i32 %i.037.i344, i32 2
  %246 = ptrtoint ptr %ini_mode.i349 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %ini_mode.i349, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %247)
  %cond.i350 = icmp eq i32 %247, 1
  br i1 %cond.i350, label %sw.bb.i354, label %do.end.i362

sw.bb.i354:                                       ; preds = %if.end.i351
  call void @__sanitizer_cov_trace_pc() #5
  %248 = ptrtoint ptr %arrayidx9.i348 to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %arrayidx9.i348, align 4
  %250 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %iobase.i.i, align 4
  %conv.i.i352 = zext i16 %249 to i32
  %add.ptr.i.i353 = getelementptr i8, ptr %251, i32 %conv.i.i352
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i353) #3, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  br label %for.inc.i365

do.end.i362:                                      ; preds = %if.end.i351
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %253 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %253(i32 noundef 214748) #3
  %ini_value.i359 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_bbgain, i32 %i.037.i344, i32 1
  %254 = ptrtoint ptr %ini_value.i359 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %ini_value.i359, align 4
  %256 = ptrtoint ptr %arrayidx9.i348 to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %arrayidx9.i348, align 4
  %258 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %iobase.i.i, align 4
  %conv.i34.i360 = zext i16 %257 to i32
  %add.ptr.i35.i361 = getelementptr i8, ptr %259, i32 %conv.i34.i360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %260 = tail call i32 @llvm.bswap.i32(i32 %255) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i361, i32 %260) #3, !srcloc !47
  br label %for.inc.i365

for.inc.i365:                                     ; preds = %do.end.i362, %sw.bb.i354, %land.lhs.true.i347.for.inc.i365_crit_edge
  %inc.i363 = add nuw nsw i32 %i.037.i344, 1
  %exitcond.not.i364 = icmp eq i32 %inc.i363, 64
  br i1 %exitcond.not.i364, label %for.inc.i365.return_crit_edge, label %for.inc.i365.for.body.i345_crit_edge, !llvm.loop !61

for.inc.i365.for.body.i345_crit_edge:             ; preds = %for.inc.i365
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i345

for.inc.i365.return_crit_edge:                    ; preds = %for.inc.i365
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.end.i380:                                      ; preds = %do.end.i380.do.end.i380_crit_edge, %do.body.i372.peel.next
  %i.010.i369 = phi i32 [ %inc.i378, %do.end.i380.do.end.i380_crit_edge ], [ 1, %do.body.i372.peel.next ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %261 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %261(i32 noundef 214748) #3
  %arrayidx.i374 = getelementptr %struct.ath5k_ini_mode, ptr @rf2413_ini_mode_end, i32 %i.010.i369
  %arrayidx1.i375 = getelementptr %struct.ath5k_ini_mode, ptr @rf2413_ini_mode_end, i32 %i.010.i369, i32 1, i32 %idxprom.i
  %262 = ptrtoint ptr %arrayidx1.i375 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx1.i375, align 4
  %264 = ptrtoint ptr %arrayidx.i374 to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %arrayidx.i374, align 4
  %266 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %iobase.i.i, align 4
  %conv.i.i376 = zext i16 %265 to i32
  %add.ptr.i.i377 = getelementptr i8, ptr %267, i32 %conv.i.i376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %268 = tail call i32 @llvm.bswap.i32(i32 %263) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i377, i32 %268) #3, !srcloc !47
  %inc.i378 = add nuw nsw i32 %i.010.i369, 1
  %exitcond.not.i379 = icmp eq i32 %inc.i378, 16
  br i1 %exitcond.not.i379, label %do.end.i380.for.body.i384_crit_edge, label %do.end.i380.do.end.i380_crit_edge, !llvm.loop !62

do.end.i380.do.end.i380_crit_edge:                ; preds = %do.end.i380
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i380

do.end.i380.for.body.i384_crit_edge:              ; preds = %do.end.i380
  br label %for.body.i384

for.body.i384:                                    ; preds = %for.inc.i404.for.body.i384_crit_edge, %do.end.i380.for.body.i384_crit_edge
  %i.037.i383 = phi i32 [ %inc.i402, %for.inc.i404.for.body.i384_crit_edge ], [ 0, %do.end.i380.for.body.i384_crit_edge ]
  br i1 %skip_pcu, label %land.lhs.true.i386, label %for.body.i384.if.end.i390_crit_edge

for.body.i384.if.end.i390_crit_edge:              ; preds = %for.body.i384
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i390

land.lhs.true.i386:                               ; preds = %for.body.i384
  %arrayidx.i385 = getelementptr %struct.ath5k_ini, ptr @rf2425_ini_common_end, i32 %i.037.i383
  %269 = ptrtoint ptr %arrayidx.i385 to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %arrayidx.i385, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %270)
  %271 = icmp slt i16 %270, -28672
  br i1 %271, label %land.lhs.true.i386.for.inc.i404_crit_edge, label %land.lhs.true.i386.if.end.i390_crit_edge

land.lhs.true.i386.if.end.i390_crit_edge:         ; preds = %land.lhs.true.i386
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i390

land.lhs.true.i386.for.inc.i404_crit_edge:        ; preds = %land.lhs.true.i386
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i404

if.end.i390:                                      ; preds = %land.lhs.true.i386.if.end.i390_crit_edge, %for.body.i384.if.end.i390_crit_edge
  %arrayidx9.i387 = getelementptr %struct.ath5k_ini, ptr @rf2425_ini_common_end, i32 %i.037.i383
  %ini_mode.i388 = getelementptr %struct.ath5k_ini, ptr @rf2425_ini_common_end, i32 %i.037.i383, i32 2
  %272 = ptrtoint ptr %ini_mode.i388 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %ini_mode.i388, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %273)
  %cond.i389 = icmp eq i32 %273, 1
  br i1 %cond.i389, label %sw.bb.i393, label %do.body.i396

sw.bb.i393:                                       ; preds = %if.end.i390
  call void @__sanitizer_cov_trace_pc() #5
  %274 = ptrtoint ptr %arrayidx9.i387 to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %arrayidx9.i387, align 4
  %276 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %iobase.i.i, align 4
  %conv.i.i391 = zext i16 %275 to i32
  %add.ptr.i.i392 = getelementptr i8, ptr %277, i32 %conv.i.i391
  %278 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i392) #3, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  br label %for.inc.i404

do.body.i396:                                     ; preds = %if.end.i390
  %rem.i394 = and i32 %i.037.i383, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i394)
  %tobool13.not.i395 = icmp eq i32 %rem.i394, 0
  br i1 %tobool13.not.i395, label %do.body.i396.do.end.i401_crit_edge, label %if.then14.i397

do.body.i396.do.end.i401_crit_edge:               ; preds = %do.body.i396
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i401

if.then14.i397:                                   ; preds = %do.body.i396
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %279 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %279(i32 noundef 214748) #3
  br label %do.end.i401

do.end.i401:                                      ; preds = %if.then14.i397, %do.body.i396.do.end.i401_crit_edge
  %ini_value.i398 = getelementptr %struct.ath5k_ini, ptr @rf2425_ini_common_end, i32 %i.037.i383, i32 1
  %280 = ptrtoint ptr %ini_value.i398 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %ini_value.i398, align 4
  %282 = ptrtoint ptr %arrayidx9.i387 to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %arrayidx9.i387, align 4
  %284 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %iobase.i.i, align 4
  %conv.i34.i399 = zext i16 %283 to i32
  %add.ptr.i35.i400 = getelementptr i8, ptr %285, i32 %conv.i34.i399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %286 = tail call i32 @llvm.bswap.i32(i32 %281) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i400, i32 %286) #3, !srcloc !47
  br label %for.inc.i404

for.inc.i404:                                     ; preds = %do.end.i401, %sw.bb.i393, %land.lhs.true.i386.for.inc.i404_crit_edge
  %inc.i402 = add nuw nsw i32 %i.037.i383, 1
  %exitcond.not.i403 = icmp eq i32 %inc.i402, 77
  br i1 %exitcond.not.i403, label %ath5k_hw_ini_registers.exit405, label %for.inc.i404.for.body.i384_crit_edge

for.inc.i404.for.body.i384_crit_edge:             ; preds = %for.inc.i404
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i384

ath5k_hw_ini_registers.exit405:                   ; preds = %for.inc.i404
  %287 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i407 = getelementptr i8, ptr %288, i32 38984
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i407, i32 1695160320) #3, !srcloc !47
  %289 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i409 = getelementptr i8, ptr %290, i32 38920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i409, i32 4194304) #3, !srcloc !47
  %291 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i411 = getelementptr i8, ptr %292, i32 41580
  %293 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i411) #3, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  %294 = and i32 %293, -251658241
  %295 = or i32 %294, 167772160
  %296 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i413 = getelementptr i8, ptr %297, i32 41580
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i413, i32 %295) #3, !srcloc !47
  %298 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i415 = getelementptr i8, ptr %299, i32 33088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i415, i32 -1476394880) #3, !srcloc !47
  %300 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i417 = getelementptr i8, ptr %301, i32 39256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i417, i32 -16777216) #3, !srcloc !47
  %302 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i35.i436.peel = getelementptr i8, ptr %303, i32 39680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i436.peel, i32 0) #3, !srcloc !47
  br label %for.body.i420

for.body.i420:                                    ; preds = %for.inc.i440.for.body.i420_crit_edge, %ath5k_hw_ini_registers.exit405
  %i.037.i419 = phi i32 [ 1, %ath5k_hw_ini_registers.exit405 ], [ %inc.i438, %for.inc.i440.for.body.i420_crit_edge ]
  br i1 %skip_pcu, label %land.lhs.true.i422, label %for.body.i420.if.end.i426_crit_edge

for.body.i420.if.end.i426_crit_edge:              ; preds = %for.body.i420
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i426

land.lhs.true.i422:                               ; preds = %for.body.i420
  %arrayidx.i421 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_bbgain, i32 %i.037.i419
  %304 = ptrtoint ptr %arrayidx.i421 to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %arrayidx.i421, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %305)
  %306 = icmp slt i16 %305, -28672
  br i1 %306, label %land.lhs.true.i422.for.inc.i440_crit_edge, label %land.lhs.true.i422.if.end.i426_crit_edge

land.lhs.true.i422.if.end.i426_crit_edge:         ; preds = %land.lhs.true.i422
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i426

land.lhs.true.i422.for.inc.i440_crit_edge:        ; preds = %land.lhs.true.i422
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i440

if.end.i426:                                      ; preds = %land.lhs.true.i422.if.end.i426_crit_edge, %for.body.i420.if.end.i426_crit_edge
  %arrayidx9.i423 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_bbgain, i32 %i.037.i419
  %ini_mode.i424 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_bbgain, i32 %i.037.i419, i32 2
  %307 = ptrtoint ptr %ini_mode.i424 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %ini_mode.i424, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %308)
  %cond.i425 = icmp eq i32 %308, 1
  br i1 %cond.i425, label %sw.bb.i429, label %do.end.i437

sw.bb.i429:                                       ; preds = %if.end.i426
  call void @__sanitizer_cov_trace_pc() #5
  %309 = ptrtoint ptr %arrayidx9.i423 to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %arrayidx9.i423, align 4
  %311 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %iobase.i.i, align 4
  %conv.i.i427 = zext i16 %310 to i32
  %add.ptr.i.i428 = getelementptr i8, ptr %312, i32 %conv.i.i427
  %313 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i428) #3, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  br label %for.inc.i440

do.end.i437:                                      ; preds = %if.end.i426
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %314 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %314(i32 noundef 214748) #3
  %ini_value.i434 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_bbgain, i32 %i.037.i419, i32 1
  %315 = ptrtoint ptr %ini_value.i434 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %ini_value.i434, align 4
  %317 = ptrtoint ptr %arrayidx9.i423 to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %arrayidx9.i423, align 4
  %319 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %iobase.i.i, align 4
  %conv.i34.i435 = zext i16 %318 to i32
  %add.ptr.i35.i436 = getelementptr i8, ptr %320, i32 %conv.i34.i435
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %321 = tail call i32 @llvm.bswap.i32(i32 %316) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i436, i32 %321) #3, !srcloc !47
  br label %for.inc.i440

for.inc.i440:                                     ; preds = %do.end.i437, %sw.bb.i429, %land.lhs.true.i422.for.inc.i440_crit_edge
  %inc.i438 = add nuw nsw i32 %i.037.i419, 1
  %exitcond.not.i439 = icmp eq i32 %inc.i438, 64
  br i1 %exitcond.not.i439, label %for.inc.i440.return_crit_edge, label %for.inc.i440.for.body.i420_crit_edge, !llvm.loop !63

for.inc.i440.for.body.i420_crit_edge:             ; preds = %for.inc.i440
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i420

for.inc.i440.return_crit_edge:                    ; preds = %for.inc.i440
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.end.i455:                                      ; preds = %do.end.i455.do.end.i455_crit_edge, %do.body.i447.peel.next
  %i.010.i444 = phi i32 [ %inc.i453, %do.end.i455.do.end.i455_crit_edge ], [ 1, %do.body.i447.peel.next ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %322 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %322(i32 noundef 214748) #3
  %arrayidx.i449 = getelementptr %struct.ath5k_ini_mode, ptr @rf2425_ini_mode_end, i32 %i.010.i444
  %arrayidx1.i450 = getelementptr %struct.ath5k_ini_mode, ptr @rf2425_ini_mode_end, i32 %i.010.i444, i32 1, i32 %idxprom.i
  %323 = ptrtoint ptr %arrayidx1.i450 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %arrayidx1.i450, align 4
  %325 = ptrtoint ptr %arrayidx.i449 to i32
  call void @__asan_load2_noabort(i32 %325)
  %326 = load i16, ptr %arrayidx.i449, align 4
  %327 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %iobase.i.i, align 4
  %conv.i.i451 = zext i16 %326 to i32
  %add.ptr.i.i452 = getelementptr i8, ptr %328, i32 %conv.i.i451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %329 = tail call i32 @llvm.bswap.i32(i32 %324) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i452, i32 %329) #3, !srcloc !47
  %inc.i453 = add nuw nsw i32 %i.010.i444, 1
  %exitcond.not.i454 = icmp eq i32 %inc.i453, 22
  br i1 %exitcond.not.i454, label %do.end.i455.for.body.i459_crit_edge, label %do.end.i455.do.end.i455_crit_edge, !llvm.loop !64

do.end.i455.do.end.i455_crit_edge:                ; preds = %do.end.i455
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i455

do.end.i455.for.body.i459_crit_edge:              ; preds = %do.end.i455
  br label %for.body.i459

for.body.i459:                                    ; preds = %for.body.i459.backedge, %do.end.i455.for.body.i459_crit_edge
  %i.037.i458 = phi i32 [ %i.037.i458.be, %for.body.i459.backedge ], [ 0, %do.end.i455.for.body.i459_crit_edge ]
  br i1 %skip_pcu, label %land.lhs.true.i461, label %for.body.i459.if.end.i465_crit_edge

for.body.i459.if.end.i465_crit_edge:              ; preds = %for.body.i459
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i465

land.lhs.true.i461:                               ; preds = %for.body.i459
  %arrayidx.i460 = getelementptr %struct.ath5k_ini, ptr @rf2425_ini_common_end, i32 %i.037.i458
  %330 = ptrtoint ptr %arrayidx.i460 to i32
  call void @__asan_load2_noabort(i32 %330)
  %331 = load i16, ptr %arrayidx.i460, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %331)
  %332 = icmp slt i16 %331, -28672
  br i1 %332, label %for.inc.i479.thread, label %land.lhs.true.i461.if.end.i465_crit_edge

land.lhs.true.i461.if.end.i465_crit_edge:         ; preds = %land.lhs.true.i461
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i465

if.end.i465:                                      ; preds = %land.lhs.true.i461.if.end.i465_crit_edge, %for.body.i459.if.end.i465_crit_edge
  %arrayidx9.i462 = getelementptr %struct.ath5k_ini, ptr @rf2425_ini_common_end, i32 %i.037.i458
  %ini_mode.i463 = getelementptr %struct.ath5k_ini, ptr @rf2425_ini_common_end, i32 %i.037.i458, i32 2
  %333 = ptrtoint ptr %ini_mode.i463 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %ini_mode.i463, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %334)
  %cond.i464 = icmp eq i32 %334, 1
  br i1 %cond.i464, label %sw.bb.i468, label %do.body.i471

sw.bb.i468:                                       ; preds = %if.end.i465
  call void @__sanitizer_cov_trace_pc() #5
  %335 = ptrtoint ptr %arrayidx9.i462 to i32
  call void @__asan_load2_noabort(i32 %335)
  %336 = load i16, ptr %arrayidx9.i462, align 4
  %337 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %iobase.i.i, align 4
  %conv.i.i466 = zext i16 %336 to i32
  %add.ptr.i.i467 = getelementptr i8, ptr %338, i32 %conv.i.i466
  %339 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i467) #3, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  br label %for.inc.i479

do.body.i471:                                     ; preds = %if.end.i465
  %rem.i469 = and i32 %i.037.i458, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i469)
  %tobool13.not.i470 = icmp eq i32 %rem.i469, 0
  br i1 %tobool13.not.i470, label %do.body.i471.do.end.i476_crit_edge, label %if.then14.i472

do.body.i471.do.end.i476_crit_edge:               ; preds = %do.body.i471
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i476

if.then14.i472:                                   ; preds = %do.body.i471
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %340 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %340(i32 noundef 214748) #3
  br label %do.end.i476

do.end.i476:                                      ; preds = %if.then14.i472, %do.body.i471.do.end.i476_crit_edge
  %ini_value.i473 = getelementptr %struct.ath5k_ini, ptr @rf2425_ini_common_end, i32 %i.037.i458, i32 1
  %341 = ptrtoint ptr %ini_value.i473 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %ini_value.i473, align 4
  %343 = ptrtoint ptr %arrayidx9.i462 to i32
  call void @__asan_load2_noabort(i32 %343)
  %344 = load i16, ptr %arrayidx9.i462, align 4
  %345 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %iobase.i.i, align 4
  %conv.i34.i474 = zext i16 %344 to i32
  %add.ptr.i35.i475 = getelementptr i8, ptr %346, i32 %conv.i34.i474
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %347 = tail call i32 @llvm.bswap.i32(i32 %342) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i475, i32 %347) #3, !srcloc !47
  br label %for.inc.i479

for.inc.i479:                                     ; preds = %do.end.i476, %sw.bb.i468
  %inc.i477 = add nuw nsw i32 %i.037.i458, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 77, i32 %inc.i477)
  %exitcond.not.i478 = icmp eq i32 %inc.i477, 77
  br i1 %exitcond.not.i478, label %for.inc.i479.for.body.i483.peel.next_crit_edge, label %for.inc.i479.for.body.i459.backedge_crit_edge

for.inc.i479.for.body.i459.backedge_crit_edge:    ; preds = %for.inc.i479
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i459.backedge

for.inc.i479.for.body.i483.peel.next_crit_edge:   ; preds = %for.inc.i479
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i483.peel.next

for.body.i459.backedge:                           ; preds = %for.inc.i479.thread.for.body.i459.backedge_crit_edge, %for.inc.i479.for.body.i459.backedge_crit_edge
  %i.037.i458.be = phi i32 [ %inc.i477, %for.inc.i479.for.body.i459.backedge_crit_edge ], [ %inc.i477629, %for.inc.i479.thread.for.body.i459.backedge_crit_edge ]
  br label %for.body.i459

for.inc.i479.thread:                              ; preds = %land.lhs.true.i461
  %inc.i477629 = add nuw nsw i32 %i.037.i458, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 77, i32 %inc.i477629)
  %exitcond.not.i478630 = icmp eq i32 %inc.i477629, 77
  br i1 %exitcond.not.i478630, label %for.inc.i479.thread.for.body.i483.peel.next_crit_edge, label %for.inc.i479.thread.for.body.i459.backedge_crit_edge

for.inc.i479.thread.for.body.i459.backedge_crit_edge: ; preds = %for.inc.i479.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i459.backedge

for.inc.i479.thread.for.body.i483.peel.next_crit_edge: ; preds = %for.inc.i479.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i483.peel.next

for.body.i483.peel.next:                          ; preds = %for.inc.i479.thread.for.body.i483.peel.next_crit_edge, %for.inc.i479.for.body.i483.peel.next_crit_edge
  %348 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i35.i499.peel = getelementptr i8, ptr %349, i32 39680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i499.peel, i32 0) #3, !srcloc !47
  br label %for.body.i483

for.body.i483:                                    ; preds = %for.inc.i503.for.body.i483_crit_edge, %for.body.i483.peel.next
  %i.037.i482 = phi i32 [ %inc.i501, %for.inc.i503.for.body.i483_crit_edge ], [ 1, %for.body.i483.peel.next ]
  br i1 %skip_pcu, label %land.lhs.true.i485, label %for.body.i483.if.end.i489_crit_edge

for.body.i483.if.end.i489_crit_edge:              ; preds = %for.body.i483
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i489

land.lhs.true.i485:                               ; preds = %for.body.i483
  %arrayidx.i484 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_bbgain, i32 %i.037.i482
  %350 = ptrtoint ptr %arrayidx.i484 to i32
  call void @__asan_load2_noabort(i32 %350)
  %351 = load i16, ptr %arrayidx.i484, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %351)
  %352 = icmp slt i16 %351, -28672
  br i1 %352, label %land.lhs.true.i485.for.inc.i503_crit_edge, label %land.lhs.true.i485.if.end.i489_crit_edge

land.lhs.true.i485.if.end.i489_crit_edge:         ; preds = %land.lhs.true.i485
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i489

land.lhs.true.i485.for.inc.i503_crit_edge:        ; preds = %land.lhs.true.i485
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i503

if.end.i489:                                      ; preds = %land.lhs.true.i485.if.end.i489_crit_edge, %for.body.i483.if.end.i489_crit_edge
  %arrayidx9.i486 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_bbgain, i32 %i.037.i482
  %ini_mode.i487 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_bbgain, i32 %i.037.i482, i32 2
  %353 = ptrtoint ptr %ini_mode.i487 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %ini_mode.i487, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %354)
  %cond.i488 = icmp eq i32 %354, 1
  br i1 %cond.i488, label %sw.bb.i492, label %do.end.i500

sw.bb.i492:                                       ; preds = %if.end.i489
  call void @__sanitizer_cov_trace_pc() #5
  %355 = ptrtoint ptr %arrayidx9.i486 to i32
  call void @__asan_load2_noabort(i32 %355)
  %356 = load i16, ptr %arrayidx9.i486, align 4
  %357 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %iobase.i.i, align 4
  %conv.i.i490 = zext i16 %356 to i32
  %add.ptr.i.i491 = getelementptr i8, ptr %358, i32 %conv.i.i490
  %359 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i491) #3, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  br label %for.inc.i503

do.end.i500:                                      ; preds = %if.end.i489
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %360 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %360(i32 noundef 214748) #3
  %ini_value.i497 = getelementptr %struct.ath5k_ini, ptr @rf5112_ini_bbgain, i32 %i.037.i482, i32 1
  %361 = ptrtoint ptr %ini_value.i497 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %ini_value.i497, align 4
  %363 = ptrtoint ptr %arrayidx9.i486 to i32
  call void @__asan_load2_noabort(i32 %363)
  %364 = load i16, ptr %arrayidx9.i486, align 4
  %365 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %iobase.i.i, align 4
  %conv.i34.i498 = zext i16 %364 to i32
  %add.ptr.i35.i499 = getelementptr i8, ptr %366, i32 %conv.i34.i498
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %367 = tail call i32 @llvm.bswap.i32(i32 %362) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i499, i32 %367) #3, !srcloc !47
  br label %for.inc.i503

for.inc.i503:                                     ; preds = %do.end.i500, %sw.bb.i492, %land.lhs.true.i485.for.inc.i503_crit_edge
  %inc.i501 = add nuw nsw i32 %i.037.i482, 1
  %exitcond.not.i502 = icmp eq i32 %inc.i501, 64
  br i1 %exitcond.not.i502, label %for.inc.i503.return_crit_edge, label %for.inc.i503.for.body.i483_crit_edge, !llvm.loop !65

for.inc.i503.for.body.i483_crit_edge:             ; preds = %for.inc.i503
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i483

for.inc.i503.return_crit_edge:                    ; preds = %for.inc.i503
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then23:                                        ; preds = %entry
  %conv = zext i8 %mode to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %mode)
  %cmp24 = icmp ugt i8 %mode, 2
  br i1 %cmp24, label %do.body, label %do.body.i510.peel.next

do.body:                                          ; preds = %if.then23
  %call27 = tail call i32 @net_ratelimit() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.body.return_crit_edge, label %if.then29

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv) #3
  br label %return

do.body.i510.peel.next:                           ; preds = %if.then23
  %iobase.i.i506 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %arrayidx1.i513.peel = getelementptr %struct.ath5k_ini_mode, ptr @ar5211_ini_mode, i32 0, i32 1, i32 %conv
  %368 = ptrtoint ptr %arrayidx1.i513.peel to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %arrayidx1.i513.peel, align 4
  %370 = ptrtoint ptr %iobase.i.i506 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %iobase.i.i506, align 4
  %add.ptr.i.i515.peel = getelementptr i8, ptr %371, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %372 = tail call i32 @llvm.bswap.i32(i32 %369) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i515.peel, i32 %372) #3, !srcloc !47
  br label %do.end.i518

do.end.i518:                                      ; preds = %do.end.i518.do.end.i518_crit_edge, %do.body.i510.peel.next
  %i.010.i507 = phi i32 [ 1, %do.body.i510.peel.next ], [ %inc.i516, %do.end.i518.do.end.i518_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %373 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %373(i32 noundef 214748) #3
  %arrayidx.i512 = getelementptr %struct.ath5k_ini_mode, ptr @ar5211_ini_mode, i32 %i.010.i507
  %arrayidx1.i513 = getelementptr %struct.ath5k_ini_mode, ptr @ar5211_ini_mode, i32 %i.010.i507, i32 1, i32 %conv
  %374 = ptrtoint ptr %arrayidx1.i513 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %arrayidx1.i513, align 4
  %376 = ptrtoint ptr %arrayidx.i512 to i32
  call void @__asan_load2_noabort(i32 %376)
  %377 = load i16, ptr %arrayidx.i512, align 4
  %378 = ptrtoint ptr %iobase.i.i506 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %iobase.i.i506, align 4
  %conv.i.i514 = zext i16 %377 to i32
  %add.ptr.i.i515 = getelementptr i8, ptr %379, i32 %conv.i.i514
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %380 = tail call i32 @llvm.bswap.i32(i32 %375) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i515, i32 %380) #3, !srcloc !47
  %inc.i516 = add nuw nsw i32 %i.010.i507, 1
  %exitcond.not.i517 = icmp eq i32 %inc.i516, 34
  br i1 %exitcond.not.i517, label %do.end.i518.for.body.i522_crit_edge, label %do.end.i518.do.end.i518_crit_edge, !llvm.loop !66

do.end.i518.do.end.i518_crit_edge:                ; preds = %do.end.i518
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i518

do.end.i518.for.body.i522_crit_edge:              ; preds = %do.end.i518
  br label %for.body.i522

for.body.i522:                                    ; preds = %for.body.i522.backedge, %do.end.i518.for.body.i522_crit_edge
  %i.037.i521 = phi i32 [ %i.037.i521.be, %for.body.i522.backedge ], [ 0, %do.end.i518.for.body.i522_crit_edge ]
  br i1 %skip_pcu, label %land.lhs.true.i524, label %for.body.i522.if.end.i528_crit_edge

for.body.i522.if.end.i528_crit_edge:              ; preds = %for.body.i522
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i528

land.lhs.true.i524:                               ; preds = %for.body.i522
  %arrayidx.i523 = getelementptr %struct.ath5k_ini, ptr @ar5211_ini, i32 %i.037.i521
  %381 = ptrtoint ptr %arrayidx.i523 to i32
  call void @__asan_load2_noabort(i32 %381)
  %382 = load i16, ptr %arrayidx.i523, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %382)
  %383 = icmp slt i16 %382, -28672
  br i1 %383, label %for.inc.i542.thread, label %land.lhs.true.i524.if.end.i528_crit_edge

land.lhs.true.i524.if.end.i528_crit_edge:         ; preds = %land.lhs.true.i524
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i528

if.end.i528:                                      ; preds = %land.lhs.true.i524.if.end.i528_crit_edge, %for.body.i522.if.end.i528_crit_edge
  %arrayidx9.i525 = getelementptr %struct.ath5k_ini, ptr @ar5211_ini, i32 %i.037.i521
  %ini_mode.i526 = getelementptr %struct.ath5k_ini, ptr @ar5211_ini, i32 %i.037.i521, i32 2
  %384 = ptrtoint ptr %ini_mode.i526 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %ini_mode.i526, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %385)
  %cond.i527 = icmp eq i32 %385, 1
  br i1 %cond.i527, label %sw.bb.i531, label %do.body.i534

sw.bb.i531:                                       ; preds = %if.end.i528
  call void @__sanitizer_cov_trace_pc() #5
  %386 = ptrtoint ptr %arrayidx9.i525 to i32
  call void @__asan_load2_noabort(i32 %386)
  %387 = load i16, ptr %arrayidx9.i525, align 4
  %388 = ptrtoint ptr %iobase.i.i506 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %iobase.i.i506, align 4
  %conv.i.i529 = zext i16 %387 to i32
  %add.ptr.i.i530 = getelementptr i8, ptr %389, i32 %conv.i.i529
  %390 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i530) #3, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  br label %for.inc.i542

do.body.i534:                                     ; preds = %if.end.i528
  %rem.i532 = and i32 %i.037.i521, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i532)
  %tobool13.not.i533 = icmp eq i32 %rem.i532, 0
  br i1 %tobool13.not.i533, label %do.body.i534.do.end.i539_crit_edge, label %if.then14.i535

do.body.i534.do.end.i539_crit_edge:               ; preds = %do.body.i534
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i539

if.then14.i535:                                   ; preds = %do.body.i534
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %391 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %391(i32 noundef 214748) #3
  br label %do.end.i539

do.end.i539:                                      ; preds = %if.then14.i535, %do.body.i534.do.end.i539_crit_edge
  %ini_value.i536 = getelementptr %struct.ath5k_ini, ptr @ar5211_ini, i32 %i.037.i521, i32 1
  %392 = ptrtoint ptr %ini_value.i536 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %ini_value.i536, align 4
  %394 = ptrtoint ptr %arrayidx9.i525 to i32
  call void @__asan_load2_noabort(i32 %394)
  %395 = load i16, ptr %arrayidx9.i525, align 4
  %396 = ptrtoint ptr %iobase.i.i506 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %iobase.i.i506, align 4
  %conv.i34.i537 = zext i16 %395 to i32
  %add.ptr.i35.i538 = getelementptr i8, ptr %397, i32 %conv.i34.i537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %398 = tail call i32 @llvm.bswap.i32(i32 %393) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i538, i32 %398) #3, !srcloc !47
  br label %for.inc.i542

for.inc.i542:                                     ; preds = %do.end.i539, %sw.bb.i531
  %inc.i540 = add nuw nsw i32 %i.037.i521, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 116, i32 %inc.i540)
  %exitcond.not.i541 = icmp eq i32 %inc.i540, 116
  br i1 %exitcond.not.i541, label %for.inc.i542.for.body.i546.peel.next_crit_edge, label %for.inc.i542.for.body.i522.backedge_crit_edge

for.inc.i542.for.body.i522.backedge_crit_edge:    ; preds = %for.inc.i542
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i522.backedge

for.inc.i542.for.body.i546.peel.next_crit_edge:   ; preds = %for.inc.i542
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i546.peel.next

for.body.i522.backedge:                           ; preds = %for.inc.i542.thread.for.body.i522.backedge_crit_edge, %for.inc.i542.for.body.i522.backedge_crit_edge
  %i.037.i521.be = phi i32 [ %inc.i540, %for.inc.i542.for.body.i522.backedge_crit_edge ], [ %inc.i540631, %for.inc.i542.thread.for.body.i522.backedge_crit_edge ]
  br label %for.body.i522

for.inc.i542.thread:                              ; preds = %land.lhs.true.i524
  %inc.i540631 = add nuw nsw i32 %i.037.i521, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 116, i32 %inc.i540631)
  %exitcond.not.i541632 = icmp eq i32 %inc.i540631, 116
  br i1 %exitcond.not.i541632, label %for.inc.i542.thread.for.body.i546.peel.next_crit_edge, label %for.inc.i542.thread.for.body.i522.backedge_crit_edge

for.inc.i542.thread.for.body.i522.backedge_crit_edge: ; preds = %for.inc.i542.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i522.backedge

for.inc.i542.thread.for.body.i546.peel.next_crit_edge: ; preds = %for.inc.i542.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i546.peel.next

for.body.i546.peel.next:                          ; preds = %for.inc.i542.thread.for.body.i546.peel.next_crit_edge, %for.inc.i542.for.body.i546.peel.next_crit_edge
  %399 = ptrtoint ptr %iobase.i.i506 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %iobase.i.i506, align 4
  %add.ptr.i35.i562.peel = getelementptr i8, ptr %400, i32 39680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i562.peel, i32 0) #3, !srcloc !47
  br label %for.body.i546

for.body.i546:                                    ; preds = %for.inc.i566.for.body.i546_crit_edge, %for.body.i546.peel.next
  %i.037.i545 = phi i32 [ %inc.i564, %for.inc.i566.for.body.i546_crit_edge ], [ 1, %for.body.i546.peel.next ]
  br i1 %skip_pcu, label %land.lhs.true.i548, label %for.body.i546.if.end.i552_crit_edge

for.body.i546.if.end.i552_crit_edge:              ; preds = %for.body.i546
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i552

land.lhs.true.i548:                               ; preds = %for.body.i546
  %arrayidx.i547 = getelementptr %struct.ath5k_ini, ptr @rf5111_ini_bbgain, i32 %i.037.i545
  %401 = ptrtoint ptr %arrayidx.i547 to i32
  call void @__asan_load2_noabort(i32 %401)
  %402 = load i16, ptr %arrayidx.i547, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %402)
  %403 = icmp slt i16 %402, -28672
  br i1 %403, label %land.lhs.true.i548.for.inc.i566_crit_edge, label %land.lhs.true.i548.if.end.i552_crit_edge

land.lhs.true.i548.if.end.i552_crit_edge:         ; preds = %land.lhs.true.i548
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i552

land.lhs.true.i548.for.inc.i566_crit_edge:        ; preds = %land.lhs.true.i548
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i566

if.end.i552:                                      ; preds = %land.lhs.true.i548.if.end.i552_crit_edge, %for.body.i546.if.end.i552_crit_edge
  %arrayidx9.i549 = getelementptr %struct.ath5k_ini, ptr @rf5111_ini_bbgain, i32 %i.037.i545
  %ini_mode.i550 = getelementptr %struct.ath5k_ini, ptr @rf5111_ini_bbgain, i32 %i.037.i545, i32 2
  %404 = ptrtoint ptr %ini_mode.i550 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %ini_mode.i550, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %405)
  %cond.i551 = icmp eq i32 %405, 1
  br i1 %cond.i551, label %sw.bb.i555, label %do.end.i563

sw.bb.i555:                                       ; preds = %if.end.i552
  call void @__sanitizer_cov_trace_pc() #5
  %406 = ptrtoint ptr %arrayidx9.i549 to i32
  call void @__asan_load2_noabort(i32 %406)
  %407 = load i16, ptr %arrayidx9.i549, align 4
  %408 = ptrtoint ptr %iobase.i.i506 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %iobase.i.i506, align 4
  %conv.i.i553 = zext i16 %407 to i32
  %add.ptr.i.i554 = getelementptr i8, ptr %409, i32 %conv.i.i553
  %410 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i554) #3, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  br label %for.inc.i566

do.end.i563:                                      ; preds = %if.end.i552
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %411 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %411(i32 noundef 214748) #3
  %ini_value.i560 = getelementptr %struct.ath5k_ini, ptr @rf5111_ini_bbgain, i32 %i.037.i545, i32 1
  %412 = ptrtoint ptr %ini_value.i560 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %ini_value.i560, align 4
  %414 = ptrtoint ptr %arrayidx9.i549 to i32
  call void @__asan_load2_noabort(i32 %414)
  %415 = load i16, ptr %arrayidx9.i549, align 4
  %416 = ptrtoint ptr %iobase.i.i506 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %iobase.i.i506, align 4
  %conv.i34.i561 = zext i16 %415 to i32
  %add.ptr.i35.i562 = getelementptr i8, ptr %417, i32 %conv.i34.i561
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %418 = tail call i32 @llvm.bswap.i32(i32 %413) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i562, i32 %418) #3, !srcloc !47
  br label %for.inc.i566

for.inc.i566:                                     ; preds = %do.end.i563, %sw.bb.i555, %land.lhs.true.i548.for.inc.i566_crit_edge
  %inc.i564 = add nuw nsw i32 %i.037.i545, 1
  %exitcond.not.i565 = icmp eq i32 %inc.i564, 64
  br i1 %exitcond.not.i565, label %for.inc.i566.return_crit_edge, label %for.inc.i566.for.body.i546_crit_edge, !llvm.loop !67

for.inc.i566.for.body.i546_crit_edge:             ; preds = %for.inc.i566
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i546

for.inc.i566.return_crit_edge:                    ; preds = %for.inc.i566
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then39:                                        ; preds = %entry
  %iobase.i33.i568 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  br label %for.body.i570

for.body.i570:                                    ; preds = %for.inc.i590.for.body.i570_crit_edge, %if.then39
  %i.037.i569 = phi i32 [ 0, %if.then39 ], [ %inc.i588, %for.inc.i590.for.body.i570_crit_edge ]
  br i1 %skip_pcu, label %land.lhs.true.i572, label %for.body.i570.if.end.i576_crit_edge

for.body.i570.if.end.i576_crit_edge:              ; preds = %for.body.i570
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i576

land.lhs.true.i572:                               ; preds = %for.body.i570
  %arrayidx.i571 = getelementptr %struct.ath5k_ini, ptr @ar5210_ini, i32 %i.037.i569
  %419 = ptrtoint ptr %arrayidx.i571 to i32
  call void @__asan_load2_noabort(i32 %419)
  %420 = load i16, ptr %arrayidx.i571, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %420)
  %421 = icmp slt i16 %420, -28672
  br i1 %421, label %land.lhs.true.i572.for.inc.i590_crit_edge, label %land.lhs.true.i572.if.end.i576_crit_edge

land.lhs.true.i572.if.end.i576_crit_edge:         ; preds = %land.lhs.true.i572
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i576

land.lhs.true.i572.for.inc.i590_crit_edge:        ; preds = %land.lhs.true.i572
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i590

if.end.i576:                                      ; preds = %land.lhs.true.i572.if.end.i576_crit_edge, %for.body.i570.if.end.i576_crit_edge
  %arrayidx9.i573 = getelementptr %struct.ath5k_ini, ptr @ar5210_ini, i32 %i.037.i569
  %ini_mode.i574 = getelementptr %struct.ath5k_ini, ptr @ar5210_ini, i32 %i.037.i569, i32 2
  %422 = ptrtoint ptr %ini_mode.i574 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %ini_mode.i574, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %423)
  %cond.i575 = icmp eq i32 %423, 1
  br i1 %cond.i575, label %sw.bb.i579, label %do.body.i582

sw.bb.i579:                                       ; preds = %if.end.i576
  call void @__sanitizer_cov_trace_pc() #5
  %424 = ptrtoint ptr %arrayidx9.i573 to i32
  call void @__asan_load2_noabort(i32 %424)
  %425 = load i16, ptr %arrayidx9.i573, align 4
  %426 = ptrtoint ptr %iobase.i33.i568 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %iobase.i33.i568, align 4
  %conv.i.i577 = zext i16 %425 to i32
  %add.ptr.i.i578 = getelementptr i8, ptr %427, i32 %conv.i.i577
  %428 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i578) #3, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  br label %for.inc.i590

do.body.i582:                                     ; preds = %if.end.i576
  %rem.i580 = and i32 %i.037.i569, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i580)
  %tobool13.not.i581 = icmp eq i32 %rem.i580, 0
  br i1 %tobool13.not.i581, label %do.body.i582.do.end.i587_crit_edge, label %if.then14.i583

do.body.i582.do.end.i587_crit_edge:               ; preds = %do.body.i582
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i587

if.then14.i583:                                   ; preds = %do.body.i582
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %429 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %429(i32 noundef 214748) #3
  br label %do.end.i587

do.end.i587:                                      ; preds = %if.then14.i583, %do.body.i582.do.end.i587_crit_edge
  %ini_value.i584 = getelementptr %struct.ath5k_ini, ptr @ar5210_ini, i32 %i.037.i569, i32 1
  %430 = ptrtoint ptr %ini_value.i584 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %ini_value.i584, align 4
  %432 = ptrtoint ptr %arrayidx9.i573 to i32
  call void @__asan_load2_noabort(i32 %432)
  %433 = load i16, ptr %arrayidx9.i573, align 4
  %434 = ptrtoint ptr %iobase.i33.i568 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %iobase.i33.i568, align 4
  %conv.i34.i585 = zext i16 %433 to i32
  %add.ptr.i35.i586 = getelementptr i8, ptr %435, i32 %conv.i34.i585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %436 = tail call i32 @llvm.bswap.i32(i32 %431) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i586, i32 %436) #3, !srcloc !47
  br label %for.inc.i590

for.inc.i590:                                     ; preds = %do.end.i587, %sw.bb.i579, %land.lhs.true.i572.for.inc.i590_crit_edge
  %inc.i588 = add nuw nsw i32 %i.037.i569, 1
  %exitcond.not.i589 = icmp eq i32 %inc.i588, 203
  br i1 %exitcond.not.i589, label %for.inc.i590.return_crit_edge, label %for.inc.i590.for.body.i570_crit_edge

for.inc.i590.for.body.i570_crit_edge:             ; preds = %for.inc.i590
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i570

for.inc.i590.return_crit_edge:                    ; preds = %for.inc.i590
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

return:                                           ; preds = %for.inc.i590.return_crit_edge, %for.inc.i566.return_crit_edge, %if.then29, %do.body.return_crit_edge, %for.inc.i503.return_crit_edge, %for.inc.i440.return_crit_edge, %for.inc.i365.return_crit_edge, %for.inc.i300.return_crit_edge, %for.inc.i237.return_crit_edge, %for.inc.i174.return_crit_edge, %ath5k_hw_ini_registers.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %ath5k_hw_ini_registers.exit.return_crit_edge ], [ -22, %do.body.return_crit_edge ], [ -22, %if.then29 ], [ 0, %entry.return_crit_edge ], [ 0, %for.inc.i174.return_crit_edge ], [ 0, %for.inc.i237.return_crit_edge ], [ 0, %for.inc.i300.return_crit_edge ], [ 0, %for.inc.i365.return_crit_edge ], [ 0, %for.inc.i440.return_crit_edge ], [ 0, %for.inc.i503.return_crit_edge ], [ 0, %for.inc.i566.return_crit_edge ], [ 0, %for.inc.i590.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_ath5k_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath5k/initvals.c", i32 1579, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @ar5212_ini_mode_start, !4, !"ar5212_ini_mode_start", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath5k/initvals.c", i32 679, i32 36}
!5 = !{ptr @ar5212_ini_common_start, !6, !"ar5212_ini_common_start", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath5k/initvals.c", i32 468, i32 31}
!7 = !{ptr @rf5111_ini_mode_end, !8, !"rf5111_ini_mode_end", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath5k/initvals.c", i32 733, i32 36}
!9 = !{ptr @rf5111_ini_common_end, !10, !"rf5111_ini_common_end", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath5k/initvals.c", i32 766, i32 31}
!11 = !{ptr @rf5111_ini_bbgain, !12, !"rf5111_ini_bbgain", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath5k/initvals.c", i32 1236, i32 31}
!13 = !{ptr @rf5112_ini_mode_end, !14, !"rf5112_ini_mode_end", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath5k/initvals.c", i32 786, i32 36}
!15 = !{ptr @rf5112_ini_common_end, !16, !"rf5112_ini_common_end", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath5k/initvals.c", i32 822, i32 31}
!17 = !{ptr @rf5112_ini_bbgain, !18, !"rf5112_ini_bbgain", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath5k/initvals.c", i32 1304, i32 31}
!19 = !{ptr @rf5413_ini_mode_end, !20, !"rf5413_ini_mode_end", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath5k/initvals.c", i32 839, i32 36}
!21 = !{ptr @rf5413_ini_common_end, !22, !"rf5413_ini_common_end", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath5k/initvals.c", i32 903, i32 31}
!23 = !{ptr @rf2413_ini_mode_end, !24, !"rf2413_ini_mode_end", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath5k/initvals.c", i32 979, i32 36}
!25 = !{ptr @rf2413_ini_common_end, !26, !"rf2413_ini_common_end", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath5k/initvals.c", i32 1015, i32 31}
!27 = !{ptr @rf2425_ini_common_end, !28, !"rf2425_ini_common_end", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath5k/initvals.c", i32 1150, i32 31}
!29 = !{ptr @rf2425_ini_mode_end, !30, !"rf2425_ini_mode_end", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath5k/initvals.c", i32 1102, i32 36}
!31 = !{ptr @ar5211_ini_mode, !32, !"ar5211_ini_mode", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath5k/initvals.c", i32 395, i32 36}
!33 = !{ptr @ar5211_ini, !34, !"ar5211_ini", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath5k/initvals.c", i32 267, i32 31}
!35 = !{ptr @ar5210_ini, !36, !"ar5210_ini", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath5k/initvals.c", i32 55, i32 31}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2148976337}
!47 = !{i64 789391}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.peeled.count", i32 1}
!50 = !{i64 789809}
!51 = !{i64 2148974982}
!52 = distinct !{!52, !49}
!53 = distinct !{!53, !49}
!54 = distinct !{!54, !49}
!55 = distinct !{!55, !49}
!56 = distinct !{!56, !49}
!57 = distinct !{!57, !49}
!58 = distinct !{!58, !49}
!59 = distinct !{!59, !49}
!60 = distinct !{!60, !49}
!61 = distinct !{!61, !49}
!62 = distinct !{!62, !49}
!63 = distinct !{!63, !49}
!64 = distinct !{!64, !49}
!65 = distinct !{!65, !49}
!66 = distinct !{!66, !49}
!67 = distinct !{!67, !49}
