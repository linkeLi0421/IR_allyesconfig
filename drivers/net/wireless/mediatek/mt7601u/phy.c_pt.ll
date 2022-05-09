; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt7601u/phy.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt7601u/phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mt76_reg_pair = type { i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.reg_table = type { ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mt7601u_dev = type { ptr, ptr, i32, %struct.mutex, [4 x i32], %struct.cfg80211_chan_def, ptr, %struct.mt7601u_mcu, %struct.delayed_work, %struct.delayed_work, ptr, %struct.delayed_work, ptr, [128 x ptr], %struct.spinlock, %struct.spinlock, ptr, [6 x i8], ptr, %struct.mutex, ptr, %struct.mutex, %struct.mutex, i32, i32, [8 x i8], [8 x i8], i16, i16, %struct.spinlock, %struct.tasklet_struct, ptr, %struct.sk_buff_head, %struct.atomic_t, %struct.spinlock, %struct.tasklet_struct, %struct.mt7601u_rx_queue, %struct.spinlock, [6 x i8], i8, i8, %struct.ewma_rssi, i8, %struct.mt7601u_freq_cal, i8, i8, i8, i16, i32, i32, i32, i32, i8, i8, i8, i8, [2 x i32], %struct.mac_stats }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mt7601u_mcu = type { %struct.mutex, i8, %struct.mt7601u_dma_buf, %struct.completion }
%struct.mt7601u_dma_buf = type { ptr, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.mt7601u_rx_queue = type { ptr, [16 x %struct.mt7601u_dma_buf_rx], i32, i32, i32, i32 }
%struct.mt7601u_dma_buf_rx = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ewma_rssi = type { i32 }
%struct.mt7601u_freq_cal = type { %struct.delayed_work, i8, i8, i8 }
%struct.mac_stats = type { [6 x i64], [6 x i64], [2 x i64], [32 x i64], [2 x i64] }
%struct.mt7601u_rxwi = type { i32, i32, i16, i16, i8, [3 x i8], i8, i8, i8, i8, i32, i32 }
%struct.mt7601u_eeprom_params = type { i8, i8, [2 x i8], i8, i8, [14 x i8], %struct.mt7601u_rate_power, [2 x i8], %struct.tssi_data, %struct.reg_channel_bounds }
%struct.mt7601u_rate_power = type { [2 x %struct.power_per_rate], [4 x %struct.power_per_rate], [4 x %struct.power_per_rate] }
%struct.power_per_rate = type { i8, i8, i8 }
%struct.tssi_data = type { i32, i8, [3 x i8] }
%struct.reg_channel_bounds = type { i8, i8 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.130, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.130 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.131] }
%struct.anon.131 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mt7601u_tssi_params = type { i8, i32 }

@mt7601u_wait_bbp_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 221, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error: BBP is not ready\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt7601u_wait_bbp_ready\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/mediatek/mt7601u/phy.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7601u_wait_bbp_ready._entry_ptr = internal global ptr @mt7601u_wait_bbp_ready._entry, section ".printk_index", align 4
@mt7601u_phy_get_rssi.lna = internal constant { [2 x [2 x [3 x i8]]], [20 x i8] } { [2 x [2 x [3 x i8]]] [[2 x [3 x i8]] [[3 x i8] c"\FE\0F!", [3 x i8] c"\00\10\22"], [2 x [3 x i8]] [[3 x i8] c"\FE\0F!", [3 x i8] c"\FE\10\22"]], [20 x i8] zeroinitializer }, align 32
@rf_central = internal constant { [44 x %struct.mt76_reg_pair], [64 x i8] } { [44 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 -2147483648, i32 2 }, %struct.mt76_reg_pair { i32 -2147483647, i32 1 }, %struct.mt76_reg_pair { i32 -2147483646, i32 17 }, %struct.mt76_reg_pair { i32 -2147483645, i32 255 }, %struct.mt76_reg_pair { i32 -2147483644, i32 10 }, %struct.mt76_reg_pair { i32 -2147483643, i32 32 }, %struct.mt76_reg_pair { i32 -2147483642, i32 0 }, %struct.mt76_reg_pair { i32 -2147483641, i32 0 }, %struct.mt76_reg_pair { i32 -2147483640, i32 0 }, %struct.mt76_reg_pair { i32 -2147483639, i32 0 }, %struct.mt76_reg_pair { i32 -2147483638, i32 0 }, %struct.mt76_reg_pair { i32 -2147483637, i32 33 }, %struct.mt76_reg_pair { i32 -2147483635, i32 0 }, %struct.mt76_reg_pair { i32 -2147483634, i32 124 }, %struct.mt76_reg_pair { i32 -2147483633, i32 34 }, %struct.mt76_reg_pair { i32 -2147483632, i32 128 }, %struct.mt76_reg_pair { i32 -2147483631, i32 153 }, %struct.mt76_reg_pair { i32 -2147483630, i32 153 }, %struct.mt76_reg_pair { i32 -2147483629, i32 9 }, %struct.mt76_reg_pair { i32 -2147483628, i32 80 }, %struct.mt76_reg_pair { i32 -2147483627, i32 176 }, %struct.mt76_reg_pair { i32 -2147483626, i32 0 }, %struct.mt76_reg_pair { i32 -2147483625, i32 197 }, %struct.mt76_reg_pair { i32 -2147483624, i32 252 }, %struct.mt76_reg_pair { i32 -2147483623, i32 64 }, %struct.mt76_reg_pair { i32 -2147483622, i32 77 }, %struct.mt76_reg_pair { i32 -2147483621, i32 2 }, %struct.mt76_reg_pair { i32 -2147483620, i32 114 }, %struct.mt76_reg_pair { i32 -2147483619, i32 1 }, %struct.mt76_reg_pair { i32 -2147483618, i32 0 }, %struct.mt76_reg_pair { i32 -2147483617, i32 0 }, %struct.mt76_reg_pair { i32 -2147483616, i32 0 }, %struct.mt76_reg_pair { i32 -2147483615, i32 0 }, %struct.mt76_reg_pair { i32 -2147483614, i32 35 }, %struct.mt76_reg_pair { i32 -2147483613, i32 1 }, %struct.mt76_reg_pair { i32 -2147483612, i32 0 }, %struct.mt76_reg_pair { i32 -2147483611, i32 0 }, %struct.mt76_reg_pair { i32 -2147483610, i32 0 }, %struct.mt76_reg_pair { i32 -2147483609, i32 32 }, %struct.mt76_reg_pair { i32 -2147483608, i32 0 }, %struct.mt76_reg_pair { i32 -2147483607, i32 208 }, %struct.mt76_reg_pair { i32 -2147483606, i32 27 }, %struct.mt76_reg_pair { i32 -2147483605, i32 2 }, %struct.mt76_reg_pair { i32 -2147483604, i32 0 }], [64 x i8] zeroinitializer }, align 32
@rf_channel = internal constant { [60 x %struct.mt76_reg_pair], [96 x i8] } { [60 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 -2147221504, i32 1 }, %struct.mt76_reg_pair { i32 -2147221503, i32 0 }, %struct.mt76_reg_pair { i32 -2147221502, i32 0 }, %struct.mt76_reg_pair { i32 -2147221501, i32 0 }, %struct.mt76_reg_pair { i32 -2147221500, i32 0 }, %struct.mt76_reg_pair { i32 -2147221499, i32 8 }, %struct.mt76_reg_pair { i32 -2147221498, i32 0 }, %struct.mt76_reg_pair { i32 -2147221497, i32 91 }, %struct.mt76_reg_pair { i32 -2147221496, i32 82 }, %struct.mt76_reg_pair { i32 -2147221495, i32 182 }, %struct.mt76_reg_pair { i32 -2147221494, i32 87 }, %struct.mt76_reg_pair { i32 -2147221493, i32 51 }, %struct.mt76_reg_pair { i32 -2147221492, i32 34 }, %struct.mt76_reg_pair { i32 -2147221491, i32 61 }, %struct.mt76_reg_pair { i32 -2147221490, i32 62 }, %struct.mt76_reg_pair { i32 -2147221489, i32 19 }, %struct.mt76_reg_pair { i32 -2147221488, i32 34 }, %struct.mt76_reg_pair { i32 -2147221487, i32 35 }, %struct.mt76_reg_pair { i32 -2147221486, i32 2 }, %struct.mt76_reg_pair { i32 -2147221485, i32 164 }, %struct.mt76_reg_pair { i32 -2147221484, i32 1 }, %struct.mt76_reg_pair { i32 -2147221483, i32 18 }, %struct.mt76_reg_pair { i32 -2147221482, i32 128 }, %struct.mt76_reg_pair { i32 -2147221481, i32 179 }, %struct.mt76_reg_pair { i32 -2147221480, i32 0 }, %struct.mt76_reg_pair { i32 -2147221479, i32 0 }, %struct.mt76_reg_pair { i32 -2147221478, i32 0 }, %struct.mt76_reg_pair { i32 -2147221477, i32 0 }, %struct.mt76_reg_pair { i32 -2147221476, i32 24 }, %struct.mt76_reg_pair { i32 -2147221475, i32 238 }, %struct.mt76_reg_pair { i32 -2147221474, i32 107 }, %struct.mt76_reg_pair { i32 -2147221473, i32 49 }, %struct.mt76_reg_pair { i32 -2147221472, i32 93 }, %struct.mt76_reg_pair { i32 -2147221471, i32 0 }, %struct.mt76_reg_pair { i32 -2147221470, i32 150 }, %struct.mt76_reg_pair { i32 -2147221469, i32 85 }, %struct.mt76_reg_pair { i32 -2147221468, i32 8 }, %struct.mt76_reg_pair { i32 -2147221467, i32 187 }, %struct.mt76_reg_pair { i32 -2147221466, i32 179 }, %struct.mt76_reg_pair { i32 -2147221465, i32 179 }, %struct.mt76_reg_pair { i32 -2147221464, i32 3 }, %struct.mt76_reg_pair { i32 -2147221463, i32 0 }, %struct.mt76_reg_pair { i32 -2147221462, i32 0 }, %struct.mt76_reg_pair { i32 -2147221461, i32 197 }, %struct.mt76_reg_pair { i32 -2147221460, i32 197 }, %struct.mt76_reg_pair { i32 -2147221459, i32 197 }, %struct.mt76_reg_pair { i32 -2147221458, i32 7 }, %struct.mt76_reg_pair { i32 -2147221457, i32 168 }, %struct.mt76_reg_pair { i32 -2147221456, i32 239 }, %struct.mt76_reg_pair { i32 -2147221455, i32 26 }, %struct.mt76_reg_pair { i32 -2147221450, i32 7 }, %struct.mt76_reg_pair { i32 -2147221449, i32 167 }, %struct.mt76_reg_pair { i32 -2147221448, i32 204 }, %struct.mt76_reg_pair { i32 -2147221447, i32 20 }, %struct.mt76_reg_pair { i32 -2147221446, i32 7 }, %struct.mt76_reg_pair { i32 -2147221445, i32 168 }, %struct.mt76_reg_pair { i32 -2147221444, i32 215 }, %struct.mt76_reg_pair { i32 -2147221443, i32 16 }, %struct.mt76_reg_pair { i32 -2147221442, i32 28 }, %struct.mt76_reg_pair { i32 -2147221441, i32 0 }], [96 x i8] zeroinitializer }, align 32
@rf_vga = internal constant { [59 x %struct.mt76_reg_pair], [104 x i8] } { [59 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 -2147155968, i32 71 }, %struct.mt76_reg_pair { i32 -2147155967, i32 0 }, %struct.mt76_reg_pair { i32 -2147155966, i32 0 }, %struct.mt76_reg_pair { i32 -2147155965, i32 8 }, %struct.mt76_reg_pair { i32 -2147155964, i32 4 }, %struct.mt76_reg_pair { i32 -2147155963, i32 32 }, %struct.mt76_reg_pair { i32 -2147155962, i32 58 }, %struct.mt76_reg_pair { i32 -2147155961, i32 58 }, %struct.mt76_reg_pair { i32 -2147155960, i32 0 }, %struct.mt76_reg_pair { i32 -2147155959, i32 0 }, %struct.mt76_reg_pair { i32 -2147155958, i32 16 }, %struct.mt76_reg_pair { i32 -2147155957, i32 16 }, %struct.mt76_reg_pair { i32 -2147155956, i32 16 }, %struct.mt76_reg_pair { i32 -2147155955, i32 16 }, %struct.mt76_reg_pair { i32 -2147155954, i32 16 }, %struct.mt76_reg_pair { i32 -2147155953, i32 32 }, %struct.mt76_reg_pair { i32 -2147155952, i32 34 }, %struct.mt76_reg_pair { i32 -2147155951, i32 124 }, %struct.mt76_reg_pair { i32 -2147155950, i32 0 }, %struct.mt76_reg_pair { i32 -2147155949, i32 0 }, %struct.mt76_reg_pair { i32 -2147155948, i32 0 }, %struct.mt76_reg_pair { i32 -2147155947, i32 241 }, %struct.mt76_reg_pair { i32 -2147155946, i32 17 }, %struct.mt76_reg_pair { i32 -2147155945, i32 2 }, %struct.mt76_reg_pair { i32 -2147155944, i32 65 }, %struct.mt76_reg_pair { i32 -2147155943, i32 32 }, %struct.mt76_reg_pair { i32 -2147155942, i32 0 }, %struct.mt76_reg_pair { i32 -2147155941, i32 215 }, %struct.mt76_reg_pair { i32 -2147155940, i32 162 }, %struct.mt76_reg_pair { i32 -2147155939, i32 32 }, %struct.mt76_reg_pair { i32 -2147155938, i32 73 }, %struct.mt76_reg_pair { i32 -2147155937, i32 32 }, %struct.mt76_reg_pair { i32 -2147155936, i32 4 }, %struct.mt76_reg_pair { i32 -2147155935, i32 241 }, %struct.mt76_reg_pair { i32 -2147155934, i32 161 }, %struct.mt76_reg_pair { i32 -2147155933, i32 1 }, %struct.mt76_reg_pair { i32 -2147155927, i32 0 }, %struct.mt76_reg_pair { i32 -2147155926, i32 0 }, %struct.mt76_reg_pair { i32 -2147155925, i32 0 }, %struct.mt76_reg_pair { i32 -2147155924, i32 0 }, %struct.mt76_reg_pair { i32 -2147155923, i32 0 }, %struct.mt76_reg_pair { i32 -2147155922, i32 0 }, %struct.mt76_reg_pair { i32 -2147155921, i32 0 }, %struct.mt76_reg_pair { i32 -2147155920, i32 0 }, %struct.mt76_reg_pair { i32 -2147155919, i32 0 }, %struct.mt76_reg_pair { i32 -2147155918, i32 0 }, %struct.mt76_reg_pair { i32 -2147155917, i32 0 }, %struct.mt76_reg_pair { i32 -2147155916, i32 0 }, %struct.mt76_reg_pair { i32 -2147155915, i32 0 }, %struct.mt76_reg_pair { i32 -2147155914, i32 0 }, %struct.mt76_reg_pair { i32 -2147155913, i32 0 }, %struct.mt76_reg_pair { i32 -2147155912, i32 0 }, %struct.mt76_reg_pair { i32 -2147155911, i32 0 }, %struct.mt76_reg_pair { i32 -2147155910, i32 49 }, %struct.mt76_reg_pair { i32 -2147155909, i32 49 }, %struct.mt76_reg_pair { i32 -2147155908, i32 10 }, %struct.mt76_reg_pair { i32 -2147155907, i32 2 }, %struct.mt76_reg_pair { i32 -2147155906, i32 0 }, %struct.mt76_reg_pair { i32 -2147155905, i32 0 }], [104 x i8] zeroinitializer }, align 32
@mt7601u_phy_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&dev->cal_work)->work)\00", [53 x i8] zeroinitializer }, align 32
@mt7601u_phy_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&dev->cal_work)->timer\00", [39 x i8] zeroinitializer }, align 32
@mt7601u_phy_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&dev->freq_cal.work)->work)\00", [48 x i8] zeroinitializer }, align 32
@mt7601u_phy_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&dev->freq_cal.work)->timer\00", [34 x i8] zeroinitializer }, align 32
@mt7601u_bbp_rr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error: BBP read %02hhx failed:%d!!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt7601u_bbp_rr\00", [17 x i8] zeroinitializer }, align 32
@mt7601u_bbp_rr._entry_ptr = internal global ptr @mt7601u_bbp_rr._entry, section ".printk_index", align 4
@__tracepoint_bbp_read = external dso_local global %struct.tracepoint, align 4
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/mediatek/mt7601u/trace.h\00", [50 x i8] zeroinitializer }, align 32
@trace_bbp_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__mt7601u_phy_set_channel.freq_plan = internal unnamed_addr constant [14 x [4 x i8]] [[4 x i8] c"\99\99\09P", [4 x i8] c"FD\0AP", [4 x i8] c"\EC\EE\0AP", [4 x i8] c"\99\99\0BP", [4 x i8] c"FD\08Q", [4 x i8] c"\EC\EE\08Q", [4 x i8] c"\99\99\09Q", [4 x i8] c"FD\0AQ", [4 x i8] c"\EC\EE\0AQ", [4 x i8] c"\99\99\0BQ", [4 x i8] c"FD\08R", [4 x i8] c"\EC\EE\08R", [4 x i8] c"\99\99\09R", [4 x i8] c"33\0BR"], align 1
@__const.__mt7601u_phy_set_channel.channel_freq_plan = private unnamed_addr constant [4 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 17, i32 0 }, %struct.mt76_reg_pair { i32 18, i32 0 }, %struct.mt76_reg_pair { i32 19, i32 0 }, %struct.mt76_reg_pair { i32 20, i32 0 }], align 4
@__mt7601u_phy_set_channel._entry = internal constant %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 392, ptr @.str.3, ptr @.str.4 }, align 1
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error: invalid 40MHz channel!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__mt7601u_phy_set_channel\00", [38 x i8] zeroinitializer }, align 32
@__mt7601u_phy_set_channel._entry_ptr = internal global ptr @__mt7601u_phy_set_channel._entry, section ".printk_index", align 4
@__mt7601u_phy_set_channel.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.18, ptr @.str.2, ptr @.str.20, i8 0, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt7601u\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Info: switching HT mode bw:%d below:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/cfg80211.h\00", [41 x i8] zeroinitializer }, align 32
@mt7601u_rf_rr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 89, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error: RF read %02hhx:%02hhx failed:%d!!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt7601u_rf_rr\00", [18 x i8] zeroinitializer }, align 32
@mt7601u_rf_rr._entry_ptr = internal global ptr @mt7601u_rf_rr._entry, section ".printk_index", align 4
@__tracepoint_rf_read = external dso_local global %struct.tracepoint, align 4
@trace_rf_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mt7601u_rxdc_cal.intro = internal constant { [4 x %struct.mt76_reg_pair], [32 x i8] } { [4 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 158, i32 141 }, %struct.mt76_reg_pair { i32 159, i32 252 }, %struct.mt76_reg_pair { i32 158, i32 140 }, %struct.mt76_reg_pair { i32 159, i32 76 }], [32 x i8] zeroinitializer }, align 32
@mt7601u_rxdc_cal.outro = internal constant { [2 x %struct.mt76_reg_pair], [16 x i8] } { [2 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 158, i32 141 }, %struct.mt76_reg_pair { i32 159, i32 224 }], [16 x i8] zeroinitializer }, align 32
@mt7601u_rxdc_cal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 565, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s intro failed:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt7601u_rxdc_cal\00", [47 x i8] zeroinitializer }, align 32
@mt7601u_rxdc_cal._entry_ptr = internal global ptr @mt7601u_rxdc_cal._entry, section ".printk_index", align 4
@mt7601u_rxdc_cal._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 575, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s timed out\0A\00", [18 x i8] zeroinitializer }, align 32
@mt7601u_rxdc_cal._entry_ptr.28 = internal global ptr @mt7601u_rxdc_cal._entry.26, section ".printk_index", align 4
@mt7601u_rxdc_cal._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 582, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s outro failed:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@mt7601u_rxdc_cal._entry_ptr.31 = internal global ptr @mt7601u_rxdc_cal._entry.29, section ".printk_index", align 4
@mt7601u_bbp_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 131, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error: BBP write %02hhx failed!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt7601u_bbp_wr\00", [17 x i8] zeroinitializer }, align 32
@mt7601u_bbp_wr._entry_ptr = internal global ptr @mt7601u_bbp_wr._entry, section ".printk_index", align 4
@__tracepoint_bbp_write = external dso_local global %struct.tracepoint, align 4
@trace_bbp_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bbp_mode_table = internal constant { [3 x [3 x %struct.reg_table]], [56 x i8] } { [3 x [3 x %struct.reg_table]] [[3 x %struct.reg_table] [%struct.reg_table { ptr @bbp_normal_temp_bw20, i32 10 }, %struct.reg_table { ptr @bbp_normal_temp_bw40, i32 10 }, %struct.reg_table { ptr @bbp_normal_temp, i32 5 }], [3 x %struct.reg_table] [%struct.reg_table { ptr @bbp_high_temp_bw20, i32 10 }, %struct.reg_table { ptr @bbp_high_temp_bw40, i32 10 }, %struct.reg_table { ptr @bbp_high_temp, i32 5 }], [3 x %struct.reg_table] [%struct.reg_table { ptr @bbp_low_temp_bw20, i32 14 }, %struct.reg_table { ptr @bbp_low_temp_bw40, i32 14 }, %struct.reg_table { ptr @bbp_low_temp, i32 1 }]], [56 x i8] zeroinitializer }, align 32
@bbp_normal_temp_bw20 = internal constant { [10 x %struct.mt76_reg_pair], [48 x i8] } { [10 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 69, i32 18 }, %struct.mt76_reg_pair { i32 91, i32 7 }, %struct.mt76_reg_pair { i32 195, i32 35 }, %struct.mt76_reg_pair { i32 196, i32 23 }, %struct.mt76_reg_pair { i32 195, i32 36 }, %struct.mt76_reg_pair { i32 196, i32 6 }, %struct.mt76_reg_pair { i32 195, i32 129 }, %struct.mt76_reg_pair { i32 196, i32 18 }, %struct.mt76_reg_pair { i32 195, i32 131 }, %struct.mt76_reg_pair { i32 196, i32 23 }], [48 x i8] zeroinitializer }, align 32
@bbp_normal_temp_bw40 = internal constant { [10 x %struct.mt76_reg_pair], [48 x i8] } { [10 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 69, i32 21 }, %struct.mt76_reg_pair { i32 91, i32 4 }, %struct.mt76_reg_pair { i32 195, i32 35 }, %struct.mt76_reg_pair { i32 196, i32 18 }, %struct.mt76_reg_pair { i32 195, i32 36 }, %struct.mt76_reg_pair { i32 196, i32 8 }, %struct.mt76_reg_pair { i32 195, i32 129 }, %struct.mt76_reg_pair { i32 196, i32 21 }, %struct.mt76_reg_pair { i32 195, i32 131 }, %struct.mt76_reg_pair { i32 196, i32 22 }], [48 x i8] zeroinitializer }, align 32
@bbp_normal_temp = internal constant { [5 x %struct.mt76_reg_pair], [56 x i8] } { [5 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 75, i32 96 }, %struct.mt76_reg_pair { i32 92, i32 2 }, %struct.mt76_reg_pair { i32 178, i32 255 }, %struct.mt76_reg_pair { i32 195, i32 136 }, %struct.mt76_reg_pair { i32 196, i32 96 }], [56 x i8] zeroinitializer }, align 32
@bbp_high_temp_bw20 = internal constant { [10 x %struct.mt76_reg_pair], [48 x i8] } { [10 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 69, i32 18 }, %struct.mt76_reg_pair { i32 91, i32 7 }, %struct.mt76_reg_pair { i32 195, i32 35 }, %struct.mt76_reg_pair { i32 196, i32 23 }, %struct.mt76_reg_pair { i32 195, i32 36 }, %struct.mt76_reg_pair { i32 196, i32 6 }, %struct.mt76_reg_pair { i32 195, i32 129 }, %struct.mt76_reg_pair { i32 196, i32 18 }, %struct.mt76_reg_pair { i32 195, i32 131 }, %struct.mt76_reg_pair { i32 196, i32 23 }], [48 x i8] zeroinitializer }, align 32
@bbp_high_temp_bw40 = internal constant { [10 x %struct.mt76_reg_pair], [48 x i8] } { [10 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 69, i32 21 }, %struct.mt76_reg_pair { i32 91, i32 4 }, %struct.mt76_reg_pair { i32 195, i32 35 }, %struct.mt76_reg_pair { i32 196, i32 18 }, %struct.mt76_reg_pair { i32 195, i32 36 }, %struct.mt76_reg_pair { i32 196, i32 8 }, %struct.mt76_reg_pair { i32 195, i32 129 }, %struct.mt76_reg_pair { i32 196, i32 21 }, %struct.mt76_reg_pair { i32 195, i32 131 }, %struct.mt76_reg_pair { i32 196, i32 22 }], [48 x i8] zeroinitializer }, align 32
@bbp_high_temp = internal constant { [5 x %struct.mt76_reg_pair], [56 x i8] } { [5 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 75, i32 96 }, %struct.mt76_reg_pair { i32 92, i32 2 }, %struct.mt76_reg_pair { i32 178, i32 255 }, %struct.mt76_reg_pair { i32 195, i32 136 }, %struct.mt76_reg_pair { i32 196, i32 96 }], [56 x i8] zeroinitializer }, align 32
@bbp_low_temp_bw20 = internal constant { [14 x %struct.mt76_reg_pair], [48 x i8] } { [14 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 69, i32 18 }, %struct.mt76_reg_pair { i32 75, i32 94 }, %struct.mt76_reg_pair { i32 91, i32 7 }, %struct.mt76_reg_pair { i32 92, i32 2 }, %struct.mt76_reg_pair { i32 195, i32 35 }, %struct.mt76_reg_pair { i32 196, i32 23 }, %struct.mt76_reg_pair { i32 195, i32 36 }, %struct.mt76_reg_pair { i32 196, i32 6 }, %struct.mt76_reg_pair { i32 195, i32 129 }, %struct.mt76_reg_pair { i32 196, i32 18 }, %struct.mt76_reg_pair { i32 195, i32 131 }, %struct.mt76_reg_pair { i32 196, i32 23 }, %struct.mt76_reg_pair { i32 195, i32 136 }, %struct.mt76_reg_pair { i32 196, i32 94 }], [48 x i8] zeroinitializer }, align 32
@bbp_low_temp_bw40 = internal constant { [14 x %struct.mt76_reg_pair], [48 x i8] } { [14 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 69, i32 21 }, %struct.mt76_reg_pair { i32 75, i32 92 }, %struct.mt76_reg_pair { i32 91, i32 4 }, %struct.mt76_reg_pair { i32 92, i32 3 }, %struct.mt76_reg_pair { i32 195, i32 35 }, %struct.mt76_reg_pair { i32 196, i32 16 }, %struct.mt76_reg_pair { i32 195, i32 36 }, %struct.mt76_reg_pair { i32 196, i32 8 }, %struct.mt76_reg_pair { i32 195, i32 129 }, %struct.mt76_reg_pair { i32 196, i32 21 }, %struct.mt76_reg_pair { i32 195, i32 131 }, %struct.mt76_reg_pair { i32 196, i32 22 }, %struct.mt76_reg_pair { i32 195, i32 136 }, %struct.mt76_reg_pair { i32 196, i32 91 }], [48 x i8] zeroinitializer }, align 32
@bbp_low_temp = internal constant { [1 x %struct.mt76_reg_pair], [24 x i8] } { [1 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 178, i32 255 }], [24 x i8] zeroinitializer }, align 32
@mt7601u_rf_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 48, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error: RF write %02hhx:%02hhx failed:%d!!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt7601u_rf_wr\00", [18 x i8] zeroinitializer }, align 32
@mt7601u_rf_wr._entry_ptr = internal global ptr @mt7601u_rf_wr._entry, section ".printk_index", align 4
@__tracepoint_rf_write = external dso_local global %struct.tracepoint, align 4
@trace_rf_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_read_temp = external dso_local global %struct.tracepoint, align 4
@trace_read_temp.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mt7601u_tssi_dc_gain_cal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.36, ptr @.str.2, i32 687, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt7601u_tssi_dc_gain_cal\00", [39 x i8] zeroinitializer }, align 32
@mt7601u_tssi_dc_gain_cal._entry_ptr = internal global ptr @mt7601u_tssi_dc_gain_cal._entry, section ".printk_index", align 4
@mt7601u_tssi_dc_gain_cal.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 -81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"TSSI_init:%hhx db:%hx hvga:%hhx hvga_db:%hx off_db:%hx\0A\00", [40 x i8] zeroinitializer }, align 32
@mt7601u_temp_comp.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt7601u_temp_comp\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Recalibrate DPD\0A\00", [47 x i8] zeroinitializer }, align 32
@mt7601u_temp_comp.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.38, ptr @.str.2, ptr @.str.40, i8 0, i8 -69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PLL lock protect on - too cold\0A\00", [32 x i8] zeroinitializer }, align 32
@mt7601u_temp_comp.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.38, ptr @.str.2, ptr @.str.41, i8 0, i8 -67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PLL lock protect off\0A\00", [42 x i8] zeroinitializer }, align 32
@__tracepoint_temp_mode = external dso_local global %struct.tracepoint, align 4
@trace_temp_mode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mt7601u_tssi_cal.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 -31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt7601u_tssi_cal\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tssi dc:%04hx db:%04hx hvga:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@mt7601u_tssi_cal.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.45, ptr @.str.2, ptr @.str.47, i8 0, i8 -27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Power curr:%08x diff:%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@mt7601u_tssi_cal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.45, ptr @.str.2, i32 919, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error: TSSI upper saturation\0A\00", [34 x i8] zeroinitializer }, align 32
@mt7601u_tssi_cal._entry_ptr = internal global ptr @mt7601u_tssi_cal._entry, section ".printk_index", align 4
@mt7601u_tssi_cal._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.2, i32 923, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error: TSSI lower saturation\0A\00", [34 x i8] zeroinitializer }, align 32
@mt7601u_tssi_cal._entry_ptr.51 = internal global ptr @mt7601u_tssi_cal._entry.49, section ".printk_index", align 4
@mt7601u_tssi_cal.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.45, ptr @.str.2, ptr @.str.52, i8 0, i8 -22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"final diff: %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@mt7601u_tssi_params_get.ofdm_pkt2rate = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\06\04\02\00\07\05\03\01", [24 x i8] zeroinitializer }, align 32
@mt7601u_tssi_params_get.static_power = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 -49152, i32 -98304, i32 49152], [16 x i8] zeroinitializer }, align 32
@mt7601u_tssi_params_get.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt7601u_tssi_params_get\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tx_rate:%02hhx pwr:%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@mt7601u_tssi_params_get.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.53, ptr @.str.2, ptr @.str.55, i8 0, i8 -40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"tssi:%02hhx t_power:%08x temp:%02hhx pkt_type:%02hhx\0A\00", [42 x i8] zeroinitializer }, align 32
@mt7601u_phy_rf_pa_mode_val.decode_tb = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 0, i16 8847, i16 -5734, i16 -5734], [24 x i8] zeroinitializer }, align 32
@__tracepoint_freq_cal_offset = external dso_local global %struct.tracepoint, align 4
@trace_freq_cal_offset.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_freq_cal_adjust = external dso_local global %struct.tracepoint, align 4
@trace_freq_cal_adjust.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@switch.table.mt7601u_phy_freq_cal = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5, i32 32, i32 20, i32 20], [16 x i8] zeroinitializer }, align 32
@switch.table.mt7601u_phy_freq_cal.57 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 19, i32 102, i32 82, i32 82], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 221, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [4 x i8] c"lna\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 236, i32 18 }
@___asan_gen_.101 = private unnamed_addr constant [11 x i8] c"rf_central\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 13, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant [11 x i8] c"rf_channel\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 67, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"rf_vga\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 135, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1251, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1252, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 176, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [49 x i8] c"../drivers/net/wireless/mediatek/mt7601u/trace.h\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 189, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 108, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 392, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 396, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [26 x i8] c"../include/net/cfg80211.h\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 778, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 88, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [6 x i8] c"intro\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 550, i32 36 }
@___asan_gen_.179 = private unnamed_addr constant [6 x i8] c"outro\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 553, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 565, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 575, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 582, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 131, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [15 x i8] c"bbp_mode_table\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 267, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [21 x i8] c"bbp_normal_temp_bw20\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 246, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant [21 x i8] c"bbp_normal_temp_bw40\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 253, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant [16 x i8] c"bbp_normal_temp\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 241, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant [19 x i8] c"bbp_high_temp_bw20\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 205, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant [19 x i8] c"bbp_high_temp_bw40\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 212, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant [14 x i8] c"bbp_high_temp\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 200, i32 35 }
@___asan_gen_.233 = private unnamed_addr constant [18 x i8] c"bbp_low_temp_bw20\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 221, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant [18 x i8] c"bbp_low_temp_bw40\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 231, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant [13 x i8] c"bbp_low_temp\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [56 x i8] c"../drivers/net/wireless/mediatek/mt7601u/initvals_phy.h\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 219, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 47, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 687, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 700, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 739, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 749, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 756, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 901, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 916, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 919, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 923, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 937, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant [14 x i8] c"ofdm_pkt2rate\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 808, i32 18 }
@___asan_gen_.299 = private unnamed_addr constant [13 x i8] c"static_power\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 809, i32 19 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 847, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 864, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant [10 x i8] c"decode_tb\00", align 1
@___asan_gen_.312 = private constant [47 x i8] c"../drivers/net/wireless/mediatek/mt7601u/phy.c\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 787, i32 19 }
@___asan_gen_.314 = private unnamed_addr constant [34 x i8] c"switch.table.mt7601u_phy_freq_cal\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [37 x i8] c"switch.table.mt7601u_phy_freq_cal.57\00", align 1
@llvm.compiler.used = appending global [93 x ptr] [ptr @__mt7601u_phy_set_channel._entry, ptr @__mt7601u_phy_set_channel._entry_ptr, ptr @mt7601u_bbp_rr._entry, ptr @mt7601u_bbp_rr._entry_ptr, ptr @mt7601u_bbp_wr._entry, ptr @mt7601u_bbp_wr._entry_ptr, ptr @mt7601u_rf_rr._entry, ptr @mt7601u_rf_rr._entry_ptr, ptr @mt7601u_rf_wr._entry, ptr @mt7601u_rf_wr._entry_ptr, ptr @mt7601u_rxdc_cal._entry, ptr @mt7601u_rxdc_cal._entry.26, ptr @mt7601u_rxdc_cal._entry.29, ptr @mt7601u_rxdc_cal._entry_ptr, ptr @mt7601u_rxdc_cal._entry_ptr.28, ptr @mt7601u_rxdc_cal._entry_ptr.31, ptr @mt7601u_tssi_cal._entry, ptr @mt7601u_tssi_cal._entry.49, ptr @mt7601u_tssi_cal._entry_ptr, ptr @mt7601u_tssi_cal._entry_ptr.51, ptr @mt7601u_tssi_dc_gain_cal._entry, ptr @mt7601u_tssi_dc_gain_cal._entry_ptr, ptr @mt7601u_wait_bbp_ready._entry, ptr @mt7601u_wait_bbp_ready._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mt7601u_phy_get_rssi.lna, ptr @rf_central, ptr @rf_channel, ptr @rf_vga, ptr @mt7601u_phy_init.__key, ptr @.str.5, ptr @mt7601u_phy_init.__key.6, ptr @.str.7, ptr @mt7601u_phy_init.__key.8, ptr @.str.9, ptr @mt7601u_phy_init.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @mt7601u_rxdc_cal.intro, ptr @mt7601u_rxdc_cal.outro, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @bbp_mode_table, ptr @bbp_normal_temp_bw20, ptr @bbp_normal_temp_bw40, ptr @bbp_normal_temp, ptr @bbp_high_temp_bw20, ptr @bbp_high_temp_bw40, ptr @bbp_high_temp, ptr @bbp_low_temp_bw20, ptr @bbp_low_temp_bw40, ptr @bbp_low_temp, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @mt7601u_tssi_params_get.ofdm_pkt2rate, ptr @mt7601u_tssi_params_get.static_power, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @mt7601u_phy_rf_pa_mode_val.decode_tb, ptr @switch.table.mt7601u_phy_freq_cal, ptr @switch.table.mt7601u_phy_freq_cal.57], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_wait_bbp_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_phy_get_rssi.lna to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_central to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_channel to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_vga to i32), i32 472, i32 576, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_phy_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_phy_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_phy_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_phy_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_bbp_rr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_rf_rr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_rxdc_cal.intro to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_rxdc_cal.outro to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_rxdc_cal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_rxdc_cal._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_rxdc_cal._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_bbp_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbp_mode_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbp_normal_temp_bw20 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbp_normal_temp_bw40 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbp_normal_temp to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbp_high_temp_bw20 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbp_high_temp_bw40 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbp_high_temp to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbp_low_temp_bw20 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbp_low_temp_bw40 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbp_low_temp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_rf_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_tssi_dc_gain_cal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_tssi_cal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_tssi_cal._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_tssi_params_get.ofdm_pkt2rate to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_tssi_params_get.static_power to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_phy_rf_pa_mode_val.decode_tb to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt7601u_phy_freq_cal to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt7601u_phy_freq_cal.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_wait_bbp_ready(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 0)
  %trunc = trunc i32 %call to i8
  %0 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 0, label %entry.do.cond_crit_edge
    i8 -1, label %entry.do.cond_crit_edge18
  ]

entry.do.cond_crit_edge18:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

entry.do.cond_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond:                                          ; preds = %entry.do.cond_crit_edge, %entry.do.cond_crit_edge18
  %call.1 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 0)
  %trunc.1 = trunc i32 %call.1 to i8
  %1 = zext i8 %trunc.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %trunc.1, label %do.cond.cleanup_crit_edge [
    i8 0, label %do.cond.do.cond.1_crit_edge
    i8 -1, label %do.cond.do.cond.1_crit_edge19
  ]

do.cond.do.cond.1_crit_edge19:                    ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.1

do.cond.do.cond.1_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.1

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.1:                                        ; preds = %do.cond.do.cond.1_crit_edge, %do.cond.do.cond.1_crit_edge19
  %call.2 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 0)
  %trunc.2 = trunc i32 %call.2 to i8
  %2 = zext i8 %trunc.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %trunc.2, label %do.cond.1.cleanup_crit_edge [
    i8 0, label %do.cond.1.do.cond.2_crit_edge
    i8 -1, label %do.cond.1.do.cond.2_crit_edge20
  ]

do.cond.1.do.cond.2_crit_edge20:                  ; preds = %do.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.2

do.cond.1.do.cond.2_crit_edge:                    ; preds = %do.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.2

do.cond.1.cleanup_crit_edge:                      ; preds = %do.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.2:                                        ; preds = %do.cond.1.do.cond.2_crit_edge, %do.cond.1.do.cond.2_crit_edge20
  %call.3 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 0)
  %trunc.3 = trunc i32 %call.3 to i8
  %3 = zext i8 %trunc.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %trunc.3, label %do.cond.2.cleanup_crit_edge [
    i8 0, label %do.cond.2.do.cond.3_crit_edge
    i8 -1, label %do.cond.2.do.cond.3_crit_edge21
  ]

do.cond.2.do.cond.3_crit_edge21:                  ; preds = %do.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.3

do.cond.2.do.cond.3_crit_edge:                    ; preds = %do.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.3

do.cond.2.cleanup_crit_edge:                      ; preds = %do.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.3:                                        ; preds = %do.cond.2.do.cond.3_crit_edge, %do.cond.2.do.cond.3_crit_edge21
  %call.4 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 0)
  %trunc.4 = trunc i32 %call.4 to i8
  %4 = zext i8 %trunc.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %trunc.4, label %do.cond.3.cleanup_crit_edge [
    i8 0, label %do.cond.3.do.cond.4_crit_edge
    i8 -1, label %do.cond.3.do.cond.4_crit_edge22
  ]

do.cond.3.do.cond.4_crit_edge22:                  ; preds = %do.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.4

do.cond.3.do.cond.4_crit_edge:                    ; preds = %do.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.4

do.cond.3.cleanup_crit_edge:                      ; preds = %do.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.4:                                        ; preds = %do.cond.3.do.cond.4_crit_edge, %do.cond.3.do.cond.4_crit_edge22
  %call.5 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 0)
  %trunc.5 = trunc i32 %call.5 to i8
  %5 = zext i8 %trunc.5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %trunc.5, label %do.cond.4.cleanup_crit_edge [
    i8 0, label %do.cond.4.do.cond.5_crit_edge
    i8 -1, label %do.cond.4.do.cond.5_crit_edge23
  ]

do.cond.4.do.cond.5_crit_edge23:                  ; preds = %do.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.5

do.cond.4.do.cond.5_crit_edge:                    ; preds = %do.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.5

do.cond.4.cleanup_crit_edge:                      ; preds = %do.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.5:                                        ; preds = %do.cond.4.do.cond.5_crit_edge, %do.cond.4.do.cond.5_crit_edge23
  %call.6 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 0)
  %trunc.6 = trunc i32 %call.6 to i8
  %6 = zext i8 %trunc.6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %trunc.6, label %do.cond.5.cleanup_crit_edge [
    i8 0, label %do.cond.5.do.cond.6_crit_edge
    i8 -1, label %do.cond.5.do.cond.6_crit_edge24
  ]

do.cond.5.do.cond.6_crit_edge24:                  ; preds = %do.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.6

do.cond.5.do.cond.6_crit_edge:                    ; preds = %do.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.6

do.cond.5.cleanup_crit_edge:                      ; preds = %do.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.6:                                        ; preds = %do.cond.5.do.cond.6_crit_edge, %do.cond.5.do.cond.6_crit_edge24
  %call.7 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 0)
  %trunc.7 = trunc i32 %call.7 to i8
  %7 = zext i8 %trunc.7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %trunc.7, label %do.cond.6.cleanup_crit_edge [
    i8 0, label %do.cond.6.do.cond.7_crit_edge
    i8 -1, label %do.cond.6.do.cond.7_crit_edge25
  ]

do.cond.6.do.cond.7_crit_edge25:                  ; preds = %do.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.7

do.cond.6.do.cond.7_crit_edge:                    ; preds = %do.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.7

do.cond.6.cleanup_crit_edge:                      ; preds = %do.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.7:                                        ; preds = %do.cond.6.do.cond.7_crit_edge, %do.cond.6.do.cond.7_crit_edge25
  %call.8 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 0)
  %trunc.8 = trunc i32 %call.8 to i8
  %8 = zext i8 %trunc.8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %trunc.8, label %do.cond.7.cleanup_crit_edge [
    i8 0, label %do.cond.7.do.cond.8_crit_edge
    i8 -1, label %do.cond.7.do.cond.8_crit_edge26
  ]

do.cond.7.do.cond.8_crit_edge26:                  ; preds = %do.cond.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.8

do.cond.7.do.cond.8_crit_edge:                    ; preds = %do.cond.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.8

do.cond.7.cleanup_crit_edge:                      ; preds = %do.cond.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.8:                                        ; preds = %do.cond.7.do.cond.8_crit_edge, %do.cond.7.do.cond.8_crit_edge26
  %call.9 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 0)
  %trunc.9 = trunc i32 %call.9 to i8
  %9 = zext i8 %trunc.9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %trunc.9, label %do.cond.8.cleanup_crit_edge [
    i8 0, label %do.cond.8.do.cond.9_crit_edge
    i8 -1, label %do.cond.8.do.cond.9_crit_edge27
  ]

do.cond.8.do.cond.9_crit_edge27:                  ; preds = %do.cond.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.9

do.cond.8.do.cond.9_crit_edge:                    ; preds = %do.cond.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.9

do.cond.8.cleanup_crit_edge:                      ; preds = %do.cond.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.9:                                        ; preds = %do.cond.8.do.cond.9_crit_edge, %do.cond.8.do.cond.9_crit_edge27
  %call.10 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 0)
  %trunc.10 = trunc i32 %call.10 to i8
  %10 = zext i8 %trunc.10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %trunc.10, label %do.cond.9.cleanup_crit_edge [
    i8 0, label %do.cond.9.do.cond.10_crit_edge
    i8 -1, label %do.cond.9.do.cond.10_crit_edge28
  ]

do.cond.9.do.cond.10_crit_edge28:                 ; preds = %do.cond.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.10

do.cond.9.do.cond.10_crit_edge:                   ; preds = %do.cond.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.10

do.cond.9.cleanup_crit_edge:                      ; preds = %do.cond.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.10:                                       ; preds = %do.cond.9.do.cond.10_crit_edge, %do.cond.9.do.cond.10_crit_edge28
  %call.11 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 0)
  %trunc.11 = trunc i32 %call.11 to i8
  %11 = zext i8 %trunc.11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %trunc.11, label %do.cond.10.cleanup_crit_edge [
    i8 0, label %do.cond.10.do.cond.11_crit_edge
    i8 -1, label %do.cond.10.do.cond.11_crit_edge29
  ]

do.cond.10.do.cond.11_crit_edge29:                ; preds = %do.cond.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.11

do.cond.10.do.cond.11_crit_edge:                  ; preds = %do.cond.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.11

do.cond.10.cleanup_crit_edge:                     ; preds = %do.cond.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.11:                                       ; preds = %do.cond.10.do.cond.11_crit_edge, %do.cond.10.do.cond.11_crit_edge29
  %call.12 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 0)
  %trunc.12 = trunc i32 %call.12 to i8
  %12 = zext i8 %trunc.12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %trunc.12, label %do.cond.11.cleanup_crit_edge [
    i8 0, label %do.cond.11.do.cond.12_crit_edge
    i8 -1, label %do.cond.11.do.cond.12_crit_edge30
  ]

do.cond.11.do.cond.12_crit_edge30:                ; preds = %do.cond.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.12

do.cond.11.do.cond.12_crit_edge:                  ; preds = %do.cond.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.12

do.cond.11.cleanup_crit_edge:                     ; preds = %do.cond.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.12:                                       ; preds = %do.cond.11.do.cond.12_crit_edge, %do.cond.11.do.cond.12_crit_edge30
  %call.13 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 0)
  %trunc.13 = trunc i32 %call.13 to i8
  %13 = zext i8 %trunc.13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %trunc.13, label %do.cond.12.cleanup_crit_edge [
    i8 0, label %do.cond.12.do.cond.13_crit_edge
    i8 -1, label %do.cond.12.do.cond.13_crit_edge31
  ]

do.cond.12.do.cond.13_crit_edge31:                ; preds = %do.cond.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.13

do.cond.12.do.cond.13_crit_edge:                  ; preds = %do.cond.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.13

do.cond.12.cleanup_crit_edge:                     ; preds = %do.cond.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.13:                                       ; preds = %do.cond.12.do.cond.13_crit_edge, %do.cond.12.do.cond.13_crit_edge31
  %call.14 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 0)
  %trunc.14 = trunc i32 %call.14 to i8
  %14 = zext i8 %trunc.14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %trunc.14, label %do.cond.13.cleanup_crit_edge [
    i8 0, label %do.cond.13.do.cond.14_crit_edge
    i8 -1, label %do.cond.13.do.cond.14_crit_edge32
  ]

do.cond.13.do.cond.14_crit_edge32:                ; preds = %do.cond.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.14

do.cond.13.do.cond.14_crit_edge:                  ; preds = %do.cond.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.14

do.cond.13.cleanup_crit_edge:                     ; preds = %do.cond.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.14:                                       ; preds = %do.cond.13.do.cond.14_crit_edge, %do.cond.13.do.cond.14_crit_edge32
  %call.15 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 0)
  %trunc.15 = trunc i32 %call.15 to i8
  %15 = zext i8 %trunc.15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %trunc.15, label %do.cond.14.cleanup_crit_edge [
    i8 0, label %do.cond.14.do.cond.15_crit_edge
    i8 -1, label %do.cond.14.do.cond.15_crit_edge33
  ]

do.cond.14.do.cond.15_crit_edge33:                ; preds = %do.cond.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.15

do.cond.14.do.cond.15_crit_edge:                  ; preds = %do.cond.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.15

do.cond.14.cleanup_crit_edge:                     ; preds = %do.cond.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.15:                                       ; preds = %do.cond.14.do.cond.15_crit_edge, %do.cond.14.do.cond.15_crit_edge33
  %call.16 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 0)
  %trunc.16 = trunc i32 %call.16 to i8
  %16 = zext i8 %trunc.16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %trunc.16, label %do.cond.15.cleanup_crit_edge [
    i8 0, label %do.cond.15.do.cond.16_crit_edge
    i8 -1, label %do.cond.15.do.cond.16_crit_edge34
  ]

do.cond.15.do.cond.16_crit_edge34:                ; preds = %do.cond.15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.16

do.cond.15.do.cond.16_crit_edge:                  ; preds = %do.cond.15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.16

do.cond.15.cleanup_crit_edge:                     ; preds = %do.cond.15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.16:                                       ; preds = %do.cond.15.do.cond.16_crit_edge, %do.cond.15.do.cond.16_crit_edge34
  %call.17 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 0)
  %trunc.17 = trunc i32 %call.17 to i8
  %17 = zext i8 %trunc.17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %trunc.17, label %do.cond.16.cleanup_crit_edge [
    i8 0, label %do.cond.16.do.cond.17_crit_edge
    i8 -1, label %do.cond.16.do.cond.17_crit_edge35
  ]

do.cond.16.do.cond.17_crit_edge35:                ; preds = %do.cond.16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.17

do.cond.16.do.cond.17_crit_edge:                  ; preds = %do.cond.16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.17

do.cond.16.cleanup_crit_edge:                     ; preds = %do.cond.16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.17:                                       ; preds = %do.cond.16.do.cond.17_crit_edge, %do.cond.16.do.cond.17_crit_edge35
  %call.18 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 0)
  %trunc.18 = trunc i32 %call.18 to i8
  %18 = zext i8 %trunc.18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %trunc.18, label %do.cond.17.cleanup_crit_edge [
    i8 0, label %do.cond.17.do.cond.18_crit_edge
    i8 -1, label %do.cond.17.do.cond.18_crit_edge36
  ]

do.cond.17.do.cond.18_crit_edge36:                ; preds = %do.cond.17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.18

do.cond.17.do.cond.18_crit_edge:                  ; preds = %do.cond.17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.18

do.cond.17.cleanup_crit_edge:                     ; preds = %do.cond.17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.18:                                       ; preds = %do.cond.17.do.cond.18_crit_edge, %do.cond.17.do.cond.18_crit_edge36
  %call.19 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 0)
  %trunc.19 = trunc i32 %call.19 to i8
  %19 = zext i8 %trunc.19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %trunc.19, label %do.cond.18.cleanup_crit_edge [
    i8 0, label %do.cond.18.do.cond.19_crit_edge
    i8 -1, label %do.cond.18.do.cond.19_crit_edge37
  ]

do.cond.18.do.cond.19_crit_edge37:                ; preds = %do.cond.18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.19

do.cond.18.do.cond.19_crit_edge:                  ; preds = %do.cond.18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.19

do.cond.18.cleanup_crit_edge:                     ; preds = %do.cond.18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.19:                                       ; preds = %do.cond.18.do.cond.19_crit_edge, %do.cond.18.do.cond.19_crit_edge37
  %dev10 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %20 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str) #11
  br label %cleanup

cleanup:                                          ; preds = %do.cond.19, %do.cond.18.cleanup_crit_edge, %do.cond.17.cleanup_crit_edge, %do.cond.16.cleanup_crit_edge, %do.cond.15.cleanup_crit_edge, %do.cond.14.cleanup_crit_edge, %do.cond.13.cleanup_crit_edge, %do.cond.12.cleanup_crit_edge, %do.cond.11.cleanup_crit_edge, %do.cond.10.cleanup_crit_edge, %do.cond.9.cleanup_crit_edge, %do.cond.8.cleanup_crit_edge, %do.cond.7.cleanup_crit_edge, %do.cond.6.cleanup_crit_edge, %do.cond.5.cleanup_crit_edge, %do.cond.4.cleanup_crit_edge, %do.cond.3.cleanup_crit_edge, %do.cond.2.cleanup_crit_edge, %do.cond.1.cleanup_crit_edge, %do.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.cond.19 ], [ 0, %do.cond.18.cleanup_crit_edge ], [ 0, %do.cond.17.cleanup_crit_edge ], [ 0, %do.cond.16.cleanup_crit_edge ], [ 0, %do.cond.15.cleanup_crit_edge ], [ 0, %do.cond.14.cleanup_crit_edge ], [ 0, %do.cond.13.cleanup_crit_edge ], [ 0, %do.cond.12.cleanup_crit_edge ], [ 0, %do.cond.11.cleanup_crit_edge ], [ 0, %do.cond.10.cleanup_crit_edge ], [ 0, %do.cond.9.cleanup_crit_edge ], [ 0, %do.cond.8.cleanup_crit_edge ], [ 0, %do.cond.7.cleanup_crit_edge ], [ 0, %do.cond.6.cleanup_crit_edge ], [ 0, %do.cond.5.cleanup_crit_edge ], [ 0, %do.cond.4.cleanup_crit_edge ], [ 0, %do.cond.3.cleanup_crit_edge ], [ 0, %do.cond.2.cleanup_crit_edge ], [ 0, %do.cond.1.cleanup_crit_edge ], [ 0, %do.cond.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !191

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 149, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool26.not = icmp eq i32 %5, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %reg_atomic_mutex = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %reg_atomic_mutex, i32 noundef 0) #8
  %call29 = tail call zeroext i1 @mt76_poll(ptr noundef %dev, i32 noundef 4124, i32 noundef 131072, i32 noundef 0, i32 noundef 1000) #8
  %conv51 = zext i8 %offset to i32
  br i1 %call29, label %if.end31, label %if.end28.out.thread_crit_edge

if.end28.out.thread_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.end31:                                         ; preds = %if.end28
  %shl = shl nuw nsw i32 %conv51, 8
  %or54 = or i32 %shl, 720896
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4124, i32 noundef %or54) #8
  %call55 = tail call zeroext i1 @mt76_poll(ptr noundef %dev, i32 noundef 4124, i32 noundef 131072, i32 noundef 0, i32 noundef 1000) #8
  br i1 %call55, label %if.end57, label %if.end31.out.thread_crit_edge

if.end31.out.thread_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.end57:                                         ; preds = %if.end31
  %call58 = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 4124) #8
  %and75 = lshr i32 %call58, 8
  %shr = and i32 %and75, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv51)
  %cmp = icmp eq i32 %shr, %conv51
  br i1 %cmp, label %out, label %if.end57.out.thread_crit_edge

if.end57.out.thread_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

out.thread:                                       ; preds = %if.end57.out.thread_crit_edge, %if.end31.out.thread_crit_edge, %if.end28.out.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %reg_atomic_mutex) #8
  %dev106 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev106, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.12, i32 noundef %conv51, i32 noundef -110) #11
  br label %cleanup

out:                                              ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %and95 = and i32 %call58, 255
  %conv97 = trunc i32 %call58 to i8
  tail call fastcc void @trace_bbp_read(ptr noundef %dev, i8 noundef zeroext %offset, i8 noundef zeroext %conv97)
  tail call void @mutex_unlock(ptr noundef %reg_atomic_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %out.thread, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 255, %if.end23.cleanup_crit_edge ], [ -110, %out.thread ], [ %and95, %out ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_bbp_set_ctrlch(ptr noundef %dev, i1 noundef zeroext %below) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = and i32 %call.i, 255
  br label %mt7601u_bbp_rmc.exit

if.end.i:                                         ; preds = %entry
  %conv = select i1 %below, i8 32, i8 0
  %0 = trunc i32 %call.i to i8
  %1 = and i8 %0, -33
  %conv3.i = or i8 %1, %conv
  %conv4.i = zext i8 %conv3.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv4.i)
  %cmp5.not.i = icmp eq i32 %call.i, %conv4.i
  br i1 %cmp5.not.i, label %if.end.i.mt7601u_bbp_rmc.exit_crit_edge, label %if.then7.i

if.end.i.mt7601u_bbp_rmc.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_bbp_rmc.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext %conv3.i) #8
  br label %mt7601u_bbp_rmc.exit

mt7601u_bbp_rmc.exit:                             ; preds = %if.then7.i, %if.end.i.mt7601u_bbp_rmc.exit_crit_edge, %if.then.i
  %conv1.pre-phi = phi i32 [ %.pre, %if.then.i ], [ %conv4.i, %if.end.i.mt7601u_bbp_rmc.exit_crit_edge ], [ %conv4.i, %if.then7.i ]
  ret i32 %conv1.pre-phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mt7601u_phy_get_rssi(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %rxwi, i16 noundef zeroext %rate) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ant = getelementptr inbounds %struct.mt7601u_rxwi, ptr %rxwi, i32 0, i32 7
  %0 = ptrtoint ptr %ant to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ant, align 1
  %gain = getelementptr inbounds %struct.mt7601u_rxwi, ptr %rxwi, i32 0, i32 8
  %2 = ptrtoint ptr %gain to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gain, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %3)
  %tobool.not = icmp ult i8 %3, 64
  %4 = lshr i8 %3, 6
  %shr50 = zext i8 %4 to i32
  %dec = add nsw i32 %shr50, -1
  %lna_id.0 = select i1 %tobool.not, i32 0, i32 %dec
  %5 = lshr i8 %1, 7
  %shr31 = zext i8 %5 to i32
  %6 = lshr i16 %rate, 7
  %7 = and i16 %6, 1
  %shr = zext i16 %7 to i32
  %arrayidx52 = getelementptr [2 x [2 x [3 x i8]]], ptr @mt7601u_phy_get_rssi.lna, i32 0, i32 %shr31, i32 %shr, i32 %lna_id.0
  %8 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx52, align 1
  %conv53 = sext i8 %9 to i32
  %10 = and i8 %3, 63
  %and72 = zext i8 %10 to i32
  %ee = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 18
  %11 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ee, align 8
  %lna_gain = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %lna_gain to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %lna_gain, align 1
  %conv75 = sext i8 %14 to i32
  %rssi_offset = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %rssi_offset to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rssi_offset, align 2
  %conv79 = sext i8 %16 to i32
  %17 = add nsw i32 %and72, %conv53
  %18 = add nsw i32 %17, %conv75
  %19 = add nsw i32 %18, %conv79
  %sub80 = sub nsw i32 8, %19
  ret i32 %sub80
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_phy_set_channel(ptr noundef %dev, ptr nocapture noundef readonly %chandef) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cal_work = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 8
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %cal_work) #8
  %freq_cal = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 43
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %freq_cal) #8
  %hw_atomic_mutex = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %hw_atomic_mutex, i32 noundef 0) #8
  %call2 = tail call fastcc i32 @__mt7601u_phy_set_channel(ptr noundef %dev, ptr noundef %chandef)
  tail call void @mutex_unlock(ptr noundef %hw_atomic_mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool5.not = icmp eq i32 %2, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  tail call void @ieee80211_queue_delayed_work(ptr noundef %4, ptr noundef %cal_work, i32 noundef 400) #8
  %enabled = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 43, i32 2
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enabled, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool10.not = icmp eq i8 %6, 0
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.then11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void @ieee80211_queue_delayed_work(ptr noundef %8, ptr noundef %freq_cal, i32 noundef 3000) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mt7601u_phy_set_channel(ptr noundef %dev, ptr nocapture noundef readonly %chandef) unnamed_addr #0 align 64 {
entry:
  %channel_freq_plan = alloca [4 x %struct.mt76_reg_pair], align 4
  %bbp_settings = alloca [3 x %struct.mt76_reg_pair], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %channel_freq_plan) #8
  %0 = call ptr @memcpy(ptr %channel_freq_plan, ptr @__const.__mt7601u_phy_set_channel.channel_freq_plan, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %bbp_settings) #8
  %1 = getelementptr inbounds %struct.mt76_reg_pair, ptr %bbp_settings, i32 0, i32 1
  %2 = getelementptr inbounds [3 x %struct.mt76_reg_pair], ptr %bbp_settings, i32 0, i32 1
  %3 = getelementptr inbounds [3 x %struct.mt76_reg_pair], ptr %bbp_settings, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds [3 x %struct.mt76_reg_pair], ptr %bbp_settings, i32 0, i32 2
  %5 = getelementptr inbounds [3 x %struct.mt76_reg_pair], ptr %bbp_settings, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %bbp_settings to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 62, ptr %bbp_settings, align 4
  %ee = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 18
  %7 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ee, align 8
  %lna_gain = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %lna_gain to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %lna_gain, align 1
  %conv = sext i8 %10 to i32
  %sub = sub nsw i32 55, %conv
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 63, ptr %2, align 4
  %13 = load i8, ptr %lna_gain, align 1
  %conv5 = sext i8 %13 to i32
  %sub6 = sub nsw i32 55, %conv5
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub6, ptr %3, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 64, ptr %4, align 4
  %16 = load i8, ptr %lna_gain, align 1
  %conv12 = sext i8 %16 to i32
  %sub13 = sub nsw i32 55, %conv12
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub13, ptr %5, align 4
  %18 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chandef, align 4
  %width.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %20 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %21, label %do.end.i [
    i32 0, label %entry.cfg80211_get_chandef_type.exit_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

entry.cfg80211_get_chandef_type.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cfg80211_get_chandef_type.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cfg80211_get_chandef_type.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %center_freq1.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 2
  %23 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %center_freq1.i, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %19, i32 0, i32 1
  %25 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %center_freq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.i = icmp ugt i32 %24, %26
  %..i = select i1 %cmp.i, i32 3, i32 2
  br label %cfg80211_get_chandef_type.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 778, i32 noundef 9, ptr noundef null) #8
  br label %cfg80211_get_chandef_type.exit

cfg80211_get_chandef_type.exit:                   ; preds = %do.end.i, %sw.bb2.i, %sw.bb1.i, %entry.cfg80211_get_chandef_type.exit_crit_edge
  %retval.0.i187 = phi i32 [ 0, %do.end.i ], [ 1, %sw.bb1.i ], [ %21, %entry.cfg80211_get_chandef_type.exit_crit_edge ], [ %..i, %sw.bb2.i ]
  %27 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ee, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i187)
  %cmp = icmp eq i32 %retval.0.i187, 2
  %frombool = zext i1 %cmp to i8
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %19, i32 0, i32 3
  %29 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hw_value, align 2
  %conv17 = zext i16 %30 to i32
  %sub18 = add nsw i32 %conv17, -1
  %31 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp19 = icmp eq i32 %32, 2
  br i1 %cmp19, label %if.then, label %cfg80211_get_chandef_type.exit.if.end36_crit_edge

cfg80211_get_chandef_type.exit.if.end36_crit_edge: ; preds = %cfg80211_get_chandef_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then:                                          ; preds = %cfg80211_get_chandef_type.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %30)
  %cmp21 = icmp ult i16 %30, 3
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %cmp21, i1 true, i1 %cmp.not
  br i1 %brmerge, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub26 = add nsw i32 %conv17, -3
  br label %if.end36

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %30)
  %cmp27 = icmp ult i16 %30, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %retval.0.i187)
  %cmp30 = icmp eq i32 %retval.0.i187, 3
  %or.cond = select i1 %cmp27, i1 %cmp30, i1 false
  br i1 %or.cond, label %if.then32, label %do.end

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i32 %conv17, 1
  br label %if.end36

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev34 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %33 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.17) #11
  br label %if.end36

if.end36:                                         ; preds = %do.end, %if.then32, %if.then25, %cfg80211_get_chandef_type.exit.if.end36_crit_edge
  %chan_idx.0 = phi i32 [ %sub26, %if.then25 ], [ %add, %if.then32 ], [ %sub18, %do.end ], [ %sub18, %cfg80211_get_chandef_type.exit.if.end36_crit_edge ]
  %bw.0 = phi i32 [ 1, %if.then25 ], [ 1, %if.then32 ], [ 1, %do.end ], [ 0, %cfg80211_get_chandef_type.exit.if.end36_crit_edge ]
  %bw38 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 54
  %35 = ptrtoint ptr %bw38 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bw38, align 2
  %conv39 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bw.0, i32 %conv39)
  %cmp40.not = icmp eq i32 %bw.0, %conv39
  br i1 %cmp40.not, label %lor.lhs.false, label %if.end36.do.body49_crit_edge

if.end36.do.body49_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49

lor.lhs.false:                                    ; preds = %if.end36
  %chan_ext_below43 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 55
  %37 = ptrtoint ptr %chan_ext_below43 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %chan_ext_below43, align 1, !range !192
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %frombool)
  %cmp46.not = icmp eq i8 %38, %frombool
  br i1 %cmp46.not, label %lor.lhs.false.if.end72_crit_edge, label %lor.lhs.false.do.body49_crit_edge

lor.lhs.false.do.body49_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49

lor.lhs.false.if.end72_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

do.body49:                                        ; preds = %lor.lhs.false.do.body49_crit_edge, %if.end36.do.body49_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mt7601u_phy_set_channel.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mt7601u_phy_set_channel, %if.then55)) #8
          to label %do.end62 [label %if.then55], !srcloc !193

if.then55:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  %dev56 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %39 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev56, align 4
  %conv59 = zext i1 %cmp to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__mt7601u_phy_set_channel.__UNIQUE_ID_ddebug497, ptr noundef %40, ptr noundef nonnull @.str.20, i32 noundef %bw.0, i32 noundef %conv59) #8
  br label %do.end62

do.end62:                                         ; preds = %if.then55, %do.body49
  %call64 = tail call i32 @mt7601u_bbp_set_bw(ptr noundef %dev, i32 noundef %bw.0)
  %call.i.i = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end62.mt7601u_bbp_set_ctrlch.exit_crit_edge, label %if.end.i.i

do.end62.mt7601u_bbp_set_ctrlch.exit_crit_edge:   ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_bbp_set_ctrlch.exit

if.end.i.i:                                       ; preds = %do.end62
  %conv.i = select i1 %cmp, i8 32, i8 0
  %41 = trunc i32 %call.i.i to i8
  %42 = and i8 %41, -33
  %conv3.i.i = or i8 %42, %conv.i
  %conv4.i.i = zext i8 %conv3.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %conv4.i.i)
  %cmp5.not.i.i = icmp eq i32 %call.i.i, %conv4.i.i
  br i1 %cmp5.not.i.i, label %if.end.i.i.mt7601u_bbp_set_ctrlch.exit_crit_edge, label %if.then7.i.i

if.end.i.i.mt7601u_bbp_set_ctrlch.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_bbp_set_ctrlch.exit

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext %conv3.i.i) #8
  br label %mt7601u_bbp_set_ctrlch.exit

mt7601u_bbp_set_ctrlch.exit:                      ; preds = %if.then7.i.i, %if.end.i.i.mt7601u_bbp_set_ctrlch.exit_crit_edge, %do.end62.mt7601u_bbp_set_ctrlch.exit_crit_edge
  %conv.i188 = zext i1 %cmp to i32
  %call.i = tail call i32 @mt7601u_rmc(ptr noundef %dev, i32 noundef 4908, i32 noundef 1, i32 noundef %conv.i188) #8
  %chan_ext_below70 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 55
  %43 = ptrtoint ptr %chan_ext_below70 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %frombool, ptr %chan_ext_below70, align 1
  br label %if.end72

if.end72:                                         ; preds = %mt7601u_bbp_set_ctrlch.exit, %lor.lhs.false.if.end72_crit_edge
  %arrayidx75 = getelementptr [14 x [4 x i8]], ptr @__mt7601u_phy_set_channel.freq_plan, i32 0, i32 %chan_idx.0, i32 0
  %44 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %45 to i32
  %value78 = getelementptr inbounds [4 x %struct.mt76_reg_pair], ptr %channel_freq_plan, i32 0, i32 0, i32 1
  %46 = ptrtoint ptr %value78 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv76, ptr %value78, align 4
  %arrayidx75.1 = getelementptr [14 x [4 x i8]], ptr @__mt7601u_phy_set_channel.freq_plan, i32 0, i32 %chan_idx.0, i32 1
  %47 = ptrtoint ptr %arrayidx75.1 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx75.1, align 1
  %conv76.1 = zext i8 %48 to i32
  %value78.1 = getelementptr inbounds [4 x %struct.mt76_reg_pair], ptr %channel_freq_plan, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %value78.1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv76.1, ptr %value78.1, align 4
  %arrayidx75.2 = getelementptr [14 x [4 x i8]], ptr @__mt7601u_phy_set_channel.freq_plan, i32 0, i32 %chan_idx.0, i32 2
  %50 = ptrtoint ptr %arrayidx75.2 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx75.2, align 1
  %conv76.2 = zext i8 %51 to i32
  %value78.2 = getelementptr inbounds [4 x %struct.mt76_reg_pair], ptr %channel_freq_plan, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %value78.2 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv76.2, ptr %value78.2, align 4
  %arrayidx75.3 = getelementptr [14 x [4 x i8]], ptr @__mt7601u_phy_set_channel.freq_plan, i32 0, i32 %chan_idx.0, i32 3
  %53 = ptrtoint ptr %arrayidx75.3 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx75.3, align 1
  %conv76.3 = zext i8 %54 to i32
  %value78.3 = getelementptr inbounds [4 x %struct.mt76_reg_pair], ptr %channel_freq_plan, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %value78.3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv76.3, ptr %value78.3, align 4
  %call79 = call i32 @mt7601u_write_reg_pairs(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %channel_freq_plan, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end82:                                         ; preds = %if.end72
  %56 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ee, align 8
  %arrayidx84 = getelementptr %struct.mt7601u_eeprom_params, ptr %57, i32 0, i32 5, i32 %chan_idx.0
  %58 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx84, align 1
  %60 = and i8 %59, 63
  %and = zext i8 %60 to i32
  %call86 = call i32 @mt7601u_rmw(ptr noundef %dev, i32 noundef 5040, i32 noundef 16191, i32 noundef %and) #8
  %call88 = call i32 @mt7601u_write_reg_pairs(ptr noundef %dev, i32 noundef 1073741824, ptr noundef nonnull %bbp_settings, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end91:                                         ; preds = %if.end82
  %call.i189 = call fastcc i32 @mt7601u_rf_wr(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 10) #8
  %call1.i = call fastcc i32 @mt7601u_rf_wr(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 32) #8
  %call.i.i.i = call fastcc i32 @mt7601u_rf_rr(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end91.mt7601u_vco_cal.exit_crit_edge, label %if.end.i.i.i

if.end91.mt7601u_vco_cal.exit_crit_edge:          ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_vco_cal.exit

if.end.i.i.i:                                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  %61 = trunc i32 %call.i.i.i to i8
  %conv2.i.i.i = or i8 %61, -128
  %call3.i.i.i = call fastcc i32 @mt7601u_rf_wr(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext %conv2.i.i.i) #8
  br label %mt7601u_vco_cal.exit

mt7601u_vco_cal.exit:                             ; preds = %if.end.i.i.i, %if.end91.mt7601u_vco_cal.exit_crit_edge
  call void @msleep(i32 noundef 2) #8
  %call93 = call i32 @mt7601u_bbp_set_bw(ptr noundef %dev, i32 noundef %bw.0)
  %62 = ptrtoint ptr %bw38 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bw38, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp.not.i = icmp eq i8 %63, 0
  %filter.1.i = select i1 %cmp.not.i, i32 65536, i32 65792
  %or5.i = or i32 %filter.1.i, 1
  %call.i190 = call i32 @mt7601u_mcu_calibrate(ptr noundef %dev, i32 noundef 6, i32 noundef %or5.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190)
  %tobool6.not.i = icmp eq i32 %call.i190, 0
  br i1 %tobool6.not.i, label %mt7601u_set_bw_filter.exit, label %mt7601u_vco_cal.exit.cleanup_crit_edge

mt7601u_vco_cal.exit.cleanup_crit_edge:           ; preds = %mt7601u_vco_cal.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mt7601u_set_bw_filter.exit:                       ; preds = %mt7601u_vco_cal.exit
  %call9.i = call i32 @mt7601u_mcu_calibrate(ptr noundef %dev, i32 noundef 6, i32 noundef %filter.1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool95.not = icmp eq i32 %call9.i, 0
  br i1 %tobool95.not, label %if.end97, label %mt7601u_set_bw_filter.exit.cleanup_crit_edge

mt7601u_set_bw_filter.exit.cleanup_crit_edge:     ; preds = %mt7601u_set_bw_filter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end97:                                         ; preds = %mt7601u_set_bw_filter.exit
  %64 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %hw_value, align 2
  %66 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ee, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %65)
  %cmp.not.i192 = icmp eq i16 %65, 14
  br i1 %cmp.not.i192, label %lor.lhs.false.i, label %if.end97.if.then.i_crit_edge

if.end97.if.then.i_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end97
  %68 = ptrtoint ptr %bw38 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bw38, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp1.not.i = icmp eq i8 %69, 0
  br i1 %cmp1.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end97.if.then.i_crit_edge
  %call.i.i194 = call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i194)
  %cmp.i.i195 = icmp slt i32 %call.i.i194, 0
  br i1 %cmp.i.i195, label %if.then.i.mt7601u_bbp_rmw.exit.i_crit_edge, label %if.end.i.i196

if.then.i.mt7601u_bbp_rmw.exit.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_bbp_rmw.exit.i

if.end.i.i196:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = trunc i32 %call.i.i194 to i8
  %71 = and i8 %70, -33
  call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 4, i8 noundef zeroext %71) #8
  br label %mt7601u_bbp_rmw.exit.i

mt7601u_bbp_rmw.exit.i:                           ; preds = %if.end.i.i196, %if.then.i.mt7601u_bbp_rmw.exit.i_crit_edge
  call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext -78, i8 noundef zeroext -1) #8
  %72 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ee, align 8
  %real_cck_bw20.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %73, i32 0, i32 7
  %74 = ptrtoint ptr %real_cck_bw20.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %real_cck_bw20.i, align 2
  %bw20.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %67, i32 0, i32 6, i32 0, i32 0, i32 1
  %76 = ptrtoint ptr %bw20.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %bw20.i, align 1
  %77 = load ptr, ptr %ee, align 8
  %arrayidx7.i = getelementptr %struct.mt7601u_eeprom_params, ptr %77, i32 0, i32 7, i32 1
  %78 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx7.i, align 1
  br label %mt7601u_apply_ch14_fixup.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 4, i8 noundef zeroext 96) #8
  call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext -78, i8 noundef zeroext 0) #8
  %80 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ee, align 8
  %real_cck_bw2012.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %81, i32 0, i32 7
  %82 = ptrtoint ptr %real_cck_bw2012.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %real_cck_bw2012.i, align 2
  %sub.i = add i8 %83, -2
  %bw2018.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %67, i32 0, i32 6, i32 0, i32 0, i32 1
  %84 = ptrtoint ptr %bw2018.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %sub.i, ptr %bw2018.i, align 1
  %85 = load ptr, ptr %ee, align 8
  %arrayidx21.i = getelementptr %struct.mt7601u_eeprom_params, ptr %85, i32 0, i32 7, i32 1
  %86 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx21.i, align 1
  %sub23.i = add i8 %87, -2
  br label %mt7601u_apply_ch14_fixup.exit

mt7601u_apply_ch14_fixup.exit:                    ; preds = %if.else.i, %mt7601u_bbp_rmw.exit.i
  %sub23.sink.i = phi i8 [ %sub23.i, %if.else.i ], [ %79, %mt7601u_bbp_rmw.exit.i ]
  %bw2027.i = getelementptr %struct.mt7601u_eeprom_params, ptr %67, i32 0, i32 6, i32 0, i32 1, i32 1
  %88 = ptrtoint ptr %bw2027.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %sub23.sink.i, ptr %bw2027.i, align 1
  %bw20 = getelementptr %struct.mt7601u_eeprom_params, ptr %28, i32 0, i32 6, i32 1, i32 1, i32 1
  %89 = ptrtoint ptr %bw20 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %bw20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %90)
  %cmp.i197 = icmp slt i8 %90, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %90)
  %cmp1.i = icmp sgt i8 %90, 31
  %91 = and i8 %90, 63
  %narrow = select i1 %cmp1.i, i8 31, i8 %91
  %narrow218 = select i1 %cmp.i197, i8 32, i8 %narrow
  %retval.0.i198 = zext i8 %narrow218 to i32
  %shl = shl nuw nsw i32 %retval.0.i198, 24
  %bw20105 = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %28, i32 0, i32 6, i32 1, i32 0, i32 1
  %92 = ptrtoint ptr %bw20105 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %bw20105, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %93)
  %cmp.i199 = icmp slt i8 %93, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %93)
  %cmp1.i200 = icmp sgt i8 %93, 31
  %94 = and i8 %93, 63
  %narrow220 = select i1 %cmp1.i200, i8 31, i8 %94
  %narrow221 = select i1 %cmp.i199, i8 32, i8 %narrow220
  %retval.0.i203 = zext i8 %narrow221 to i32
  %shl108 = shl nuw nsw i32 %retval.0.i203, 16
  %or = or i32 %shl108, %shl
  %bw20110 = getelementptr %struct.mt7601u_eeprom_params, ptr %28, i32 0, i32 6, i32 0, i32 1, i32 1
  %95 = ptrtoint ptr %bw20110 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %bw20110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %96)
  %cmp.i204 = icmp slt i8 %96, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %96)
  %cmp1.i205 = icmp sgt i8 %96, 31
  %97 = and i8 %96, 63
  %narrow223 = select i1 %cmp1.i205, i8 31, i8 %97
  %narrow224 = select i1 %cmp.i204, i8 32, i8 %narrow223
  %retval.0.i208 = zext i8 %narrow224 to i32
  %shl113 = shl nuw nsw i32 %retval.0.i208, 8
  %or114 = or i32 %or, %shl113
  %bw20117 = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %28, i32 0, i32 6, i32 0, i32 0, i32 1
  %98 = ptrtoint ptr %bw20117 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %bw20117, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %99)
  %cmp.i209 = icmp slt i8 %99, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %99)
  %cmp1.i210 = icmp sgt i8 %99, 31
  %100 = and i8 %99, 63
  %narrow226 = select i1 %cmp1.i210, i8 31, i8 %100
  %narrow227 = select i1 %cmp.i209, i8 32, i8 %narrow226
  %retval.0.i213 = zext i8 %narrow227 to i32
  %or120 = or i32 %or114, %retval.0.i213
  call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4884, i32 noundef %or120) #8
  %state = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 2
  %101 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %state, align 4
  %103 = and i32 %102, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool122.not = icmp eq i32 %103, 0
  br i1 %tobool122.not, label %mt7601u_apply_ch14_fixup.exit.if.end124_crit_edge, label %if.then123

mt7601u_apply_ch14_fixup.exit.if.end124_crit_edge: ; preds = %mt7601u_apply_ch14_fixup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

if.then123:                                       ; preds = %mt7601u_apply_ch14_fixup.exit
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ee, align 8
  %lna_gain.i.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %lna_gain.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %lna_gain.i.i, align 1
  %sub.i.i = shl i8 %107, 1
  %add.i.i = add i8 %sub.i.i, 36
  call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 66, i8 noundef zeroext %add.i.i) #8
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %mt7601u_apply_ch14_fixup.exit.if.end124_crit_edge
  %chandef125 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 5
  %108 = call ptr @memcpy(ptr %chandef125, ptr %chandef, i32 28)
  br label %cleanup

cleanup:                                          ; preds = %if.end124, %mt7601u_set_bw_filter.exit.cleanup_crit_edge, %mt7601u_vco_cal.exit.cleanup_crit_edge, %if.end82.cleanup_crit_edge, %if.end72.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end124 ], [ %call79, %if.end72.cleanup_crit_edge ], [ %call88, %if.end82.cleanup_crit_edge ], [ %call9.i, %mt7601u_set_bw_filter.exit.cleanup_crit_edge ], [ %call.i190, %mt7601u_vco_cal.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %bbp_settings) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %channel_freq_plan) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_phy_recalibrate_after_assoc(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %curr_temp = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 50
  %3 = ptrtoint ptr %curr_temp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %curr_temp, align 8
  %call1 = tail call i32 @mt7601u_mcu_calibrate(ptr noundef %dev, i32 noundef 7, i32 noundef %4) #8
  tail call fastcc void @mt7601u_rxdc_cal(ptr noundef %dev)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_mcu_calibrate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7601u_rxdc_cal(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 4100) #8
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4100, i32 noundef 8) #8
  %call1 = tail call i32 @mt7601u_write_reg_pairs(ptr noundef %dev, i32 noundef 1073741824, ptr noundef nonnull @mt7601u_rxdc_cal.intro, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.for.body.preheader_crit_edge, label %do.end

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev2 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call1) #11
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end, %entry.for.body.preheader_crit_edge
  br label %for.body

for.cond:                                         ; preds = %for.body
  %dec = add nsw i32 %i.037, -1
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %do.end11.critedge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.037 = phi i32 [ %dec, %for.cond.for.body_crit_edge ], [ 20, %for.body.preheader ]
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 500, i32 noundef 2) #8
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext -98, i8 noundef zeroext -116)
  %call4 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext -97)
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call4)
  %cmp = icmp eq i32 %call4, 12
  br i1 %cmp, label %for.body.if.end13_crit_edge, label %for.cond

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.end11.critedge:                                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %dev12 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25) #11
  br label %if.end13

if.end13:                                         ; preds = %do.end11.critedge, %for.body.if.end13_crit_edge
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4100, i32 noundef 0) #8
  %call14 = tail call i32 @mt7601u_write_reg_pairs(ptr noundef %dev, i32 noundef 1073741824, ptr noundef nonnull @mt7601u_rxdc_cal.outro, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.if.end21_crit_edge, label %do.end19

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %dev20 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25, i32 noundef %call14) #11
  br label %if.end21

if.end21:                                         ; preds = %do.end19, %if.end13.if.end21_crit_edge
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4100, i32 noundef %call) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_agc_save(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 66)
  %conv = trunc i32 %call to i8
  %agc_save = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 42
  %0 = ptrtoint ptr %agc_save to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %agc_save, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_agc_restore(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %agc_save = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 42
  %0 = ptrtoint ptr %agc_save to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %agc_save, align 4
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 66, i8 noundef zeroext %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext %offset, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %lor.lhs.false.critedge, !prof !191

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 124, i32 noundef 9, ptr noundef null) #8
  br label %return

lor.lhs.false.critedge:                           ; preds = %entry
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool24.not = icmp eq i32 %5, 0
  br i1 %tobool24.not, label %if.end26, label %lor.lhs.false.critedge.return_crit_edge

lor.lhs.false.critedge.return_crit_edge:          ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end26:                                         ; preds = %lor.lhs.false.critedge
  %reg_atomic_mutex = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %reg_atomic_mutex, i32 noundef 0) #8
  %call27 = tail call zeroext i1 @mt76_poll(ptr noundef %dev, i32 noundef 4124, i32 noundef 131072, i32 noundef 0, i32 noundef 1000) #8
  br i1 %call27, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %dev32 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev32, align 4
  %conv = zext i8 %offset to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.32, i32 noundef %conv) #11
  br label %out

if.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %conv54 = zext i8 %val to i32
  %conv79 = zext i8 %offset to i32
  %shl80 = shl nuw nsw i32 %conv79, 8
  %or = or i32 %shl80, %conv54
  %or83 = or i32 %or, 655360
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4124, i32 noundef %or83) #8
  tail call fastcc void @trace_bbp_write(ptr noundef %dev, i8 noundef zeroext %offset, i8 noundef zeroext %val)
  br label %out

out:                                              ; preds = %if.end33, %do.end31
  tail call void @mutex_unlock(ptr noundef %reg_atomic_mutex) #8
  br label %return

return:                                           ; preds = %out, %lor.lhs.false.critedge.return_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_phy_con_cal_onoff(ptr noundef %dev, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %assoc = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 10
  %0 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %assoc, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %freq_cal = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 43
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %freq_cal) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %con_mon_lock = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 37
  tail call void @_raw_spin_lock_bh(ptr noundef %con_mon_lock) #8
  %ap_bssid = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 38
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = ptrtoint ptr %ap_bssid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ap_bssid, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.mt7601u_dev, ptr %dev, i32 0, i32 38, i32 4
  %9 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %add.ptr1.i, align 2
  %avg_rssi = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 41
  %10 = ptrtoint ptr %avg_rssi to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %avg_rssi, align 4
  %bcn_freq_off = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 39
  %11 = ptrtoint ptr %bcn_freq_off to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -128, ptr %bcn_freq_off, align 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %con_mon_lock) #8
  %ee = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 18
  %12 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ee, align 8
  %rf_freq_off = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %rf_freq_off to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rf_freq_off, align 1
  %freq = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 43, i32 1
  %16 = ptrtoint ptr %freq to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %freq, align 4
  %17 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %assoc, align 1, !range !192
  %enabled = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 43, i32 2
  %19 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %enabled, align 1
  %adjusting = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 43, i32 3
  %20 = ptrtoint ptr %adjusting to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %adjusting, align 2
  %21 = load i8, ptr %assoc, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool8.not = icmp eq i8 %21, 0
  br i1 %tobool8.not, label %if.end.if.end12_crit_edge, label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %freq_cal2 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 43
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  tail call void @ieee80211_queue_delayed_work(ptr noundef %23, ptr noundef %freq_cal2, i32 noundef 3000) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_bbp_set_bw(ptr noundef %dev, i32 noundef %bw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bw1 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 54
  %0 = ptrtoint ptr %bw1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bw1, align 2
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %bw)
  %cmp = icmp eq i32 %conv, %bw
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bw)
  %cmp3 = icmp eq i32 %bw, 0
  %conv5 = select i1 %cmp3, i8 0, i8 16
  %2 = trunc i32 %call.i to i8
  %3 = and i8 %2, -25
  %conv3.i = or i8 %3, %conv5
  %conv4.i = zext i8 %conv3.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv4.i)
  %cmp5.not.i = icmp eq i32 %call.i, %conv4.i
  br i1 %cmp5.not.i, label %if.end.i.cleanup_crit_edge, label %if.then7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 4, i8 noundef zeroext %conv3.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv6 = trunc i32 %bw to i8
  %4 = ptrtoint ptr %bw1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv6, ptr %bw1, align 2
  %call8 = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 4100) #8
  %and = and i32 %call8, -13
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4100, i32 noundef %and) #8
  %call9 = tail call zeroext i1 @mt76_poll(ptr noundef %dev, i32 noundef 4608, i32 noundef 3, i32 noundef 0, i32 noundef 500000) #8
  %call.i29 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %cmp.i30 = icmp slt i32 %call.i29, 0
  br i1 %cmp.i30, label %if.end.mt7601u_bbp_rmc.exit40_crit_edge, label %if.end.i37

if.end.mt7601u_bbp_rmc.exit40_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_bbp_rmc.exit40

if.end.i37:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bw)
  %cmp10 = icmp eq i32 %bw, 0
  %conv13 = select i1 %cmp10, i8 0, i8 16
  %5 = trunc i32 %call.i29 to i8
  %6 = and i8 %5, -25
  %conv3.i34 = or i8 %6, %conv13
  %conv4.i35 = zext i8 %conv3.i34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i29, i32 %conv4.i35)
  %cmp5.not.i36 = icmp eq i32 %call.i29, %conv4.i35
  br i1 %cmp5.not.i36, label %if.end.i37.mt7601u_bbp_rmc.exit40_crit_edge, label %if.then7.i38

if.end.i37.mt7601u_bbp_rmc.exit40_crit_edge:      ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_bbp_rmc.exit40

if.then7.i38:                                     ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 4, i8 noundef zeroext %conv3.i34) #8
  br label %mt7601u_bbp_rmc.exit40

mt7601u_bbp_rmc.exit40:                           ; preds = %if.then7.i38, %if.end.i37.mt7601u_bbp_rmc.exit40_crit_edge, %if.end.mt7601u_bbp_rmc.exit40_crit_edge
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4100, i32 noundef %call8) #8
  %temp_mode.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 49
  %7 = ptrtoint ptr %temp_mode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temp_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.i41 = icmp ugt i32 %8, 2
  br i1 %cmp.i41, label %do.end.i, label %if.end21.i, !prof !191

do.end.i:                                         ; preds = %mt7601u_bbp_rmc.exit40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 293, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end21.i:                                       ; preds = %mt7601u_bbp_rmc.exit40
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %bw1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bw1, align 2
  %idxprom.i = zext i8 %10 to i32
  %arrayidx23.i = getelementptr [3 x [3 x %struct.reg_table]], ptr @bbp_mode_table, i32 0, i32 %8, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx23.i, align 4
  %n.i = getelementptr [3 x [3 x %struct.reg_table]], ptr @bbp_mode_table, i32 0, i32 %8, i32 %idxprom.i, i32 1
  %13 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n.i, align 4
  %call.i42 = tail call i32 @mt7601u_write_reg_pairs(ptr noundef %dev, i32 noundef 1073741824, ptr noundef %12, i32 noundef %14) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i, %do.end.i, %if.then7.i, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then7.i ], [ -22, %do.end.i ], [ %call.i42, %if.end21.i ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_rr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_wr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_set_rx_path(ptr noundef %dev, i8 noundef zeroext %path) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.mt7601u_bbp_rmw.exit_crit_edge, label %if.end.i

entry.mt7601u_bbp_rmw.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_bbp_rmw.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl i8 %path, 3
  %0 = trunc i32 %call.i to i8
  %1 = and i8 %0, -25
  %conv2.i = or i8 %1, %shl
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext %conv2.i) #8
  br label %mt7601u_bbp_rmw.exit

mt7601u_bbp_rmw.exit:                             ; preds = %if.end.i, %entry.mt7601u_bbp_rmw.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_set_tx_dac(ptr noundef %dev, i8 noundef zeroext %dac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.mt7601u_bbp_rmc.exit_crit_edge, label %if.end.i

entry.mt7601u_bbp_rmc.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_bbp_rmc.exit

if.end.i:                                         ; preds = %entry
  %shl = shl i8 %dac, 3
  %0 = trunc i32 %call.i to i8
  %1 = and i8 %0, -25
  %conv3.i = or i8 %1, %shl
  %conv4.i = zext i8 %conv3.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv4.i)
  %cmp5.not.i = icmp eq i32 %call.i, %conv4.i
  br i1 %cmp5.not.i, label %if.end.i.mt7601u_bbp_rmc.exit_crit_edge, label %if.then7.i

if.end.i.mt7601u_bbp_rmc.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_bbp_rmc.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext %conv3.i) #8
  br label %mt7601u_bbp_rmc.exit

mt7601u_bbp_rmc.exit:                             ; preds = %if.then7.i, %if.end.i.mt7601u_bbp_rmc.exit_crit_edge, %entry.mt7601u_bbp_rmc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_phy_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 4636) #8
  %rf_pa_mode = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 56
  %0 = ptrtoint ptr %rf_pa_mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %rf_pa_mode, align 4
  %call1 = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 4640) #8
  %arrayidx3 = getelementptr %struct.mt7601u_dev, ptr %dev, i32 0, i32 56, i32 1
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call1, ptr %arrayidx3, align 4
  %ee = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ee, align 8
  %rf_freq_off = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %rf_freq_off to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rf_freq_off, align 1
  %call4 = tail call fastcc i32 @mt7601u_rf_wr(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext 12, i8 noundef zeroext %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @mt7601u_write_reg_pairs(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @rf_central, i32 noundef 44) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @mt7601u_write_reg_pairs(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @rf_channel, i32 noundef 60) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @mt7601u_write_reg_pairs(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @rf_vga, i32 noundef 59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call.i.i = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 1292) #8
  %call1.i.i = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 1284) #8
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 1284, i32 noundef 0) #8
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 1292, i32 noundef 16) #8
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 1284, i32 noundef 16) #8
  %call.i.i.i = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end16.mt7601u_bbp_rmw.exit.i.i_crit_edge, label %if.end.i.i.i

if.end16.mt7601u_bbp_rmw.exit.i.i_crit_edge:      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_bbp_rmw.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %6 = trunc i32 %call.i.i.i to i8
  %conv2.i.i.i = or i8 %6, 16
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 47, i8 noundef zeroext %conv2.i.i.i) #8
  %conv3.i.i.i = zext i8 %conv2.i.i.i to i32
  br label %mt7601u_bbp_rmw.exit.i.i

mt7601u_bbp_rmw.exit.i.i:                         ; preds = %if.end.i.i.i, %if.end16.mt7601u_bbp_rmw.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv3.i.i.i, %if.end.i.i.i ], [ %call.i.i.i, %if.end16.mt7601u_bbp_rmw.exit.i.i_crit_edge ]
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 64) #8
  %and40.i.i = and i32 %retval.0.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i)
  %tobool4.not41.i.i = icmp eq i32 %and40.i.i, 0
  br i1 %tobool4.not41.i.i, label %mt7601u_bbp_rmw.exit.i.i.mt7601u_read_bootup_temp.exit.i_crit_edge, label %mt7601u_bbp_rmw.exit.i.i.for.body.i.i_crit_edge

mt7601u_bbp_rmw.exit.i.i.for.body.i.i_crit_edge:  ; preds = %mt7601u_bbp_rmw.exit.i.i
  br label %for.body.i.i

mt7601u_bbp_rmw.exit.i.i.mt7601u_read_bootup_temp.exit.i_crit_edge: ; preds = %mt7601u_bbp_rmw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_read_bootup_temp.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %mt7601u_bbp_rmw.exit.i.i.for.body.i.i_crit_edge
  %i.042.i.i = phi i32 [ %dec.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 100, %mt7601u_bbp_rmw.exit.i.i.for.body.i.i_crit_edge ]
  %call5.i.i = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47) #8
  %dec.i.i = add nsw i32 %i.042.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  %and.i.i = and i32 %call5.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool4.not.i.i = icmp eq i32 %and.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool4.not.i.i
  br i1 %or.cond.i.i, label %for.body.i.i.mt7601u_read_bootup_temp.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.mt7601u_read_bootup_temp.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_read_bootup_temp.exit.i

mt7601u_read_bootup_temp.exit.i:                  ; preds = %for.body.i.i.mt7601u_read_bootup_temp.exit.i_crit_edge, %mt7601u_bbp_rmw.exit.i.i.mt7601u_read_bootup_temp.exit.i_crit_edge
  %bbp_val.0.in.lcssa.i.i = phi i32 [ %retval.0.i.i.i, %mt7601u_bbp_rmw.exit.i.i.mt7601u_read_bootup_temp.exit.i_crit_edge ], [ %call5.i.i, %for.body.i.i.mt7601u_read_bootup_temp.exit.i_crit_edge ]
  %bbp_val.0.i.i = trunc i32 %bbp_val.0.in.lcssa.i.i to i8
  %7 = and i8 %bbp_val.0.i.i, -8
  %or6.i.i.i = or i8 %7, 4
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 47, i8 noundef zeroext %or6.i.i.i) #8
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 700, i32 noundef 2) #8
  %call.i38.i.i = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 49) #8
  %conv3.i39.i.i = trunc i32 %call.i38.i.i to i8
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 0) #8
  %call8.i.i = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 21) #8
  %8 = trunc i32 %call8.i.i to i8
  %conv11.i.i = or i8 %8, 2
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 21, i8 noundef zeroext %conv11.i.i) #8
  %conv14.i.i = and i8 %8, -3
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 21, i8 noundef zeroext %conv14.i.i) #8
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 1284, i32 noundef 0) #8
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 1292, i32 noundef %call.i.i) #8
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 1284, i32 noundef %call1.i.i) #8
  tail call fastcc void @trace_read_temp(ptr noundef %dev, i8 noundef zeroext %conv3.i39.i.i) #8
  %raw_temp.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 52
  %9 = ptrtoint ptr %raw_temp.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv3.i39.i.i, ptr %raw_temp.i, align 8
  %sext.i = shl i32 %call.i38.i.i, 24
  %conv.i = ashr exact i32 %sext.i, 24
  %10 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ee, align 8
  %ref_temp.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %ref_temp.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ref_temp.i, align 4
  %conv2.i = sext i8 %13 to i32
  %sub.i = sub nsw i32 %conv.i, %conv2.i
  %mul.i = mul nsw i32 %sub.i, 39
  %curr_temp.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 50
  %14 = ptrtoint ptr %curr_temp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul.i, ptr %curr_temp.i, align 8
  %dpd_temp.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 51
  %15 = ptrtoint ptr %dpd_temp.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul.i, ptr %dpd_temp.i, align 4
  %call4.i = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 4100) #8
  %call5.i = tail call i32 @mt7601u_mcu_calibrate(ptr noundef %dev, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %mt7601u_read_bootup_temp.exit.i.cleanup_crit_edge

mt7601u_read_bootup_temp.exit.i.cleanup_crit_edge: ; preds = %mt7601u_read_bootup_temp.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %mt7601u_read_bootup_temp.exit.i
  %call6.i = tail call fastcc i32 @mt7601u_rf_rr(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end9.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  %16 = trunc i32 %call6.i to i8
  %conv10.i = or i8 %16, -128
  %call11.i = tail call fastcc i32 @mt7601u_rf_wr(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext %conv10.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end9.i.cleanup_crit_edge

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14.i:                                       ; preds = %if.end9.i
  tail call void @msleep(i32 noundef 2) #8
  %call15.i = tail call i32 @mt7601u_mcu_calibrate(ptr noundef %dev, i32 noundef 9, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end14.i.cleanup_crit_edge

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18.i:                                       ; preds = %if.end14.i
  tail call fastcc void @mt7601u_rxdc_cal(ptr noundef %dev) #8
  %bw.i.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 54
  %17 = ptrtoint ptr %bw.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bw.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.not.i.i = icmp eq i8 %18, 0
  %filter.1.i.i = select i1 %cmp.not.i.i, i32 0, i32 256
  %or5.i.i = or i32 %filter.1.i.i, 1
  %call.i83.i = tail call i32 @mt7601u_mcu_calibrate(ptr noundef %dev, i32 noundef 6, i32 noundef %or5.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i)
  %tobool6.not.i.i = icmp eq i32 %call.i83.i, 0
  br i1 %tobool6.not.i.i, label %mt7601u_set_bw_filter.exit.i, label %if.end18.i.cleanup_crit_edge

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mt7601u_set_bw_filter.exit.i:                     ; preds = %if.end18.i
  %call9.i.i = tail call i32 @mt7601u_mcu_calibrate(ptr noundef %dev, i32 noundef 6, i32 noundef %filter.1.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool20.not.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %mt7601u_set_bw_filter.exit.i.cleanup_crit_edge

mt7601u_set_bw_filter.exit.i.cleanup_crit_edge:   ; preds = %mt7601u_set_bw_filter.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22.i:                                       ; preds = %mt7601u_set_bw_filter.exit.i
  %call23.i = tail call i32 @mt7601u_mcu_calibrate(ptr noundef %dev, i32 noundef 4, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end22.i.cleanup_crit_edge

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26.i:                                       ; preds = %if.end22.i
  %call27.i = tail call i32 @mt7601u_mcu_calibrate(ptr noundef %dev, i32 noundef 5, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end26.i.cleanup_crit_edge

if.end26.i.cleanup_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30.i:                                       ; preds = %if.end26.i
  %call31.i = tail call i32 @mt7601u_mcu_calibrate(ptr noundef %dev, i32 noundef 8, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.end30.i.cleanup_crit_edge

if.end30.i.cleanup_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34.i:                                       ; preds = %if.end30.i
  %19 = ptrtoint ptr %dpd_temp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dpd_temp.i, align 4
  %call36.i = tail call i32 @mt7601u_mcu_calibrate(ptr noundef %dev, i32 noundef 7, i32 noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end20, label %if.end34.i.cleanup_crit_edge

if.end34.i.cleanup_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mt7601u_rxdc_cal(ptr noundef %dev) #8
  tail call fastcc void @mt7601u_tssi_dc_gain_cal(ptr noundef %dev) #8
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4100, i32 noundef %call4.i) #8
  tail call fastcc void @mt7601u_temp_comp(ptr noundef %dev) #8
  %prev_pwr_diff = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 48
  %21 = ptrtoint ptr %prev_pwr_diff to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 100, ptr %prev_pwr_diff, align 8
  %cal_work = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 8
  tail call void @__init_work(ptr noundef %cal_work, i32 noundef 0) #8
  %22 = ptrtoint ptr %cal_work to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %cal_work, align 8
  %lockdep_map = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 8, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @mt7601u_phy_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry28 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 8, i32 0, i32 1
  %23 = ptrtoint ptr %entry28 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry28, ptr %entry28, align 4
  %prev.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 8, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry28, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 8, i32 0, i32 2
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mt7601u_phy_calibrate, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.7, ptr noundef nonnull @mt7601u_phy_init.__key.6) #8
  %freq_cal = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 43
  tail call void @__init_work(ptr noundef %freq_cal, i32 noundef 0) #8
  %26 = ptrtoint ptr %freq_cal to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %freq_cal, align 8
  %lockdep_map50 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 43, i32 0, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map50, ptr noundef nonnull @.str.9, ptr noundef nonnull @mt7601u_phy_init.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry54 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 43, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %entry54 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry54, ptr %entry54, align 4
  %prev.i100 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 43, i32 0, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i100 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry54, ptr %prev.i100, align 4
  %func58 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 43, i32 0, i32 0, i32 2
  %29 = ptrtoint ptr %func58 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mt7601u_phy_freq_cal, ptr %func58, align 4
  %timer64 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 43, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer64, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.11, ptr noundef nonnull @mt7601u_phy_init.__key.10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end34.i.cleanup_crit_edge, %if.end30.i.cleanup_crit_edge, %if.end26.i.cleanup_crit_edge, %if.end22.i.cleanup_crit_edge, %mt7601u_set_bw_filter.exit.i.cleanup_crit_edge, %if.end18.i.cleanup_crit_edge, %if.end14.i.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %mt7601u_read_bootup_temp.exit.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ %call4, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call.i83.i, %if.end18.i.cleanup_crit_edge ], [ %call36.i, %if.end34.i.cleanup_crit_edge ], [ %call31.i, %if.end30.i.cleanup_crit_edge ], [ %call27.i, %if.end26.i.cleanup_crit_edge ], [ %call23.i, %if.end22.i.cleanup_crit_edge ], [ %call9.i.i, %mt7601u_set_bw_filter.exit.i.cleanup_crit_edge ], [ %call15.i, %if.end14.i.cleanup_crit_edge ], [ %call11.i, %if.end9.i.cleanup_crit_edge ], [ %call6.i, %if.end.i.cleanup_crit_edge ], [ %call5.i, %mt7601u_read_bootup_temp.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7601u_rf_wr(ptr noundef %dev, i8 noundef zeroext %bank, i8 noundef zeroext %offset, i8 noundef zeroext %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %lor.lhs.false.critedge, !prof !191

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 23, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

lor.lhs.false.critedge:                           ; preds = %entry
  %conv = zext i8 %offset to i32
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool58.not = icmp eq i32 %5, 0
  br i1 %tobool58.not, label %if.end60, label %lor.lhs.false.critedge.cleanup_crit_edge

lor.lhs.false.critedge.cleanup_crit_edge:         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end60:                                         ; preds = %lor.lhs.false.critedge
  %reg_atomic_mutex = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %reg_atomic_mutex, i32 noundef 0) #8
  %call61 = tail call zeroext i1 @mt76_poll(ptr noundef %dev, i32 noundef 1280, i32 noundef -2147483648, i32 noundef 0, i32 noundef 100) #8
  br i1 %call61, label %out.thread, label %do.end147

out.thread:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %conv109 = zext i8 %bank to i32
  %shl110 = shl nuw nsw i32 %conv109, 14
  %and111 = and i32 %shl110, 245760
  %conv84 = zext i8 %value to i32
  %shl136 = shl nuw nsw i32 %conv, 8
  %and137 = and i32 %shl136, 16128
  %or = or i32 %and111, %conv84
  %or138 = or i32 %or, %and137
  %or140 = or i32 %or138, -1073741824
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 1280, i32 noundef %or140) #8
  tail call fastcc void @trace_rf_write(ptr noundef %dev, i8 noundef zeroext %bank, i8 noundef zeroext %offset, i8 noundef zeroext %value)
  tail call void @mutex_unlock(ptr noundef %reg_atomic_mutex) #8
  br label %cleanup

do.end147:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %reg_atomic_mutex) #8
  %dev148 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %dev148 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev148, align 4
  %conv149 = zext i8 %bank to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.34, i32 noundef %conv149, i32 noundef %conv, i32 noundef -110) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end147, %out.thread, %lor.lhs.false.critedge.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %lor.lhs.false.critedge.cleanup_crit_edge ], [ -110, %do.end147 ], [ 0, %out.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_write_reg_pairs(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7601u_phy_calibrate(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -320
  %ee.i.i = getelementptr i8, ptr %work, i32 920
  %0 = ptrtoint ptr %ee.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ee.i.i, align 8
  %lna_gain.i.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lna_gain.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lna_gain.i.i, align 1
  %sub.i.i = shl i8 %3, 1
  %state.i = getelementptr i8, ptr %work, i32 -312
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mt7601u_agc_tune.exit_crit_edge

entry.mt7601u_agc_tune.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_agc_tune.exit

if.end.i:                                         ; preds = %entry
  %con_mon_lock.i = getelementptr i8, ptr %work, i32 1580
  tail call void @_raw_spin_lock_bh(ptr noundef %con_mon_lock.i) #8
  %avg_rssi2.i = getelementptr i8, ptr %work, i32 1632
  %7 = ptrtoint ptr %avg_rssi2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %avg_rssi2.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %con_mon_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %8)
  %cmp.i = icmp ult i32 %8, 1024
  br i1 %cmp.i, label %if.end.i.mt7601u_agc_tune.exit_crit_edge, label %if.end6.i

if.end.i.mt7601u_agc_tune.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_agc_tune.exit

if.end6.i:                                        ; preds = %if.end.i
  %shr.i38.i = lshr i32 %8, 10
  %sub.i = sub nsw i32 0, %shr.i38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -69, i32 %sub.i)
  %cmp7.i = icmp ult i32 %sub.i, -69
  call void @__sanitizer_cov_trace_const_cmp4(i32 -59, i32 %sub.i)
  %cmp11.i = icmp ult i32 %sub.i, -59
  %spec.select.v.i = select i1 %cmp11.i, i8 20, i8 36
  %val.0.v.i = select i1 %cmp7.i, i8 4, i8 %spec.select.v.i
  %val.0.i = add i8 %val.0.v.i, %sub.i.i
  %conv19.i = zext i8 %val.0.i to i32
  %call20.i = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %add.ptr, i8 noundef zeroext 66) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call20.i, i32 %conv19.i)
  %cmp21.not.i = icmp eq i32 %call20.i, %conv19.i
  br i1 %cmp21.not.i, label %if.end6.i.mt7601u_agc_tune.exit_crit_edge, label %if.then23.i

if.end6.i.mt7601u_agc_tune.exit_crit_edge:        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_agc_tune.exit

if.then23.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %add.ptr, i8 noundef zeroext 66, i8 noundef zeroext %val.0.i) #8
  br label %mt7601u_agc_tune.exit

mt7601u_agc_tune.exit:                            ; preds = %if.then23.i, %if.end6.i.mt7601u_agc_tune.exit_crit_edge, %if.end.i.mt7601u_agc_tune.exit_crit_edge, %entry.mt7601u_agc_tune.exit_crit_edge
  tail call fastcc void @mt7601u_tssi_cal(ptr noundef %add.ptr)
  %9 = ptrtoint ptr %ee.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ee.i.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.then, label %mt7601u_agc_tune.exit.if.end_crit_edge

mt7601u_agc_tune.exit.if.end_crit_edge:           ; preds = %mt7601u_agc_tune.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %mt7601u_agc_tune.exit
  %call.i.i = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %add.ptr, i8 noundef zeroext 47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.mt7601u_bbp_rmw.exit.i_crit_edge, label %if.end.i.i

if.then.mt7601u_bbp_rmw.exit.i_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_bbp_rmw.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %13 = trunc i32 %call.i.i to i8
  %14 = and i8 %13, -128
  %conv2.i.i = or i8 %14, 16
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %add.ptr, i8 noundef zeroext 47, i8 noundef zeroext %conv2.i.i) #8
  %conv3.i.i = zext i8 %conv2.i.i to i32
  br label %mt7601u_bbp_rmw.exit.i

mt7601u_bbp_rmw.exit.i:                           ; preds = %if.end.i.i, %if.then.mt7601u_bbp_rmw.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv3.i.i, %if.end.i.i ], [ %call.i.i, %if.then.mt7601u_bbp_rmw.exit.i_crit_edge ]
  %and14.i = and i32 %retval.0.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool2.not15.i = icmp eq i32 %and14.i, 0
  br i1 %tobool2.not15.i, label %mt7601u_bbp_rmw.exit.i.mt7601u_read_temp.exit_crit_edge, label %mt7601u_bbp_rmw.exit.i.for.body.i_crit_edge

mt7601u_bbp_rmw.exit.i.for.body.i_crit_edge:      ; preds = %mt7601u_bbp_rmw.exit.i
  br label %for.body.i

mt7601u_bbp_rmw.exit.i.mt7601u_read_temp.exit_crit_edge: ; preds = %mt7601u_bbp_rmw.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_read_temp.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %mt7601u_bbp_rmw.exit.i.for.body.i_crit_edge
  %i.016.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ 100, %mt7601u_bbp_rmw.exit.i.for.body.i_crit_edge ]
  %call3.i = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %add.ptr, i8 noundef zeroext 47) #8
  %dec.i = add nsw i32 %i.016.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i10 = icmp eq i32 %dec.i, 0
  %and.i = and i32 %call3.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %tobool.not.i10, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %for.body.i.mt7601u_read_temp.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.mt7601u_read_temp.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_read_temp.exit

mt7601u_read_temp.exit:                           ; preds = %for.body.i.mt7601u_read_temp.exit_crit_edge, %mt7601u_bbp_rmw.exit.i.mt7601u_read_temp.exit_crit_edge
  %val.0.in.lcssa.i = phi i32 [ %retval.0.i.i, %mt7601u_bbp_rmw.exit.i.mt7601u_read_temp.exit_crit_edge ], [ %call3.i, %for.body.i.mt7601u_read_temp.exit_crit_edge ]
  %val.0.i11 = trunc i32 %val.0.in.lcssa.i to i8
  %15 = and i8 %val.0.i11, -8
  %or6.i.i = or i8 %15, 4
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %add.ptr, i8 noundef zeroext 47, i8 noundef zeroext %or6.i.i) #8
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 700, i32 noundef 2) #8
  %call.i12.i = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %add.ptr, i8 noundef zeroext 49) #8
  %conv3.i13.i = trunc i32 %call.i12.i to i8
  tail call fastcc void @trace_read_temp(ptr noundef %add.ptr, i8 noundef zeroext %conv3.i13.i) #8
  %raw_temp = getelementptr i8, ptr %work, i32 1768
  %16 = ptrtoint ptr %raw_temp to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3.i13.i, ptr %raw_temp, align 8
  br label %if.end

if.end:                                           ; preds = %mt7601u_read_temp.exit, %mt7601u_agc_tune.exit.if.end_crit_edge
  tail call fastcc void @mt7601u_temp_comp(ptr noundef %add.ptr)
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 8
  tail call void @ieee80211_queue_delayed_work(ptr noundef %18, ptr noundef %work, i32 noundef 400) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7601u_phy_freq_cal(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1960
  %con_mon_lock = getelementptr i8, ptr %work, i32 -60
  tail call void @_raw_spin_lock_bh(ptr noundef %con_mon_lock) #8
  %bcn_freq_off = getelementptr i8, ptr %work, i32 -10
  %0 = ptrtoint ptr %bcn_freq_off to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bcn_freq_off, align 2
  %bcn_phy_mode = getelementptr i8, ptr %work, i32 -9
  %2 = ptrtoint ptr %bcn_phy_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bcn_phy_mode, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %con_mon_lock) #8
  tail call fastcc void @trace_freq_cal_offset(ptr noundef %add.ptr, i8 noundef zeroext %3, i8 noundef signext %1) #8
  %conv.i = sext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %1)
  %cmp.i = icmp eq i8 %1, -128
  br i1 %cmp.i, label %entry.__mt7601u_phy_freq_cal.exit_crit_edge, label %if.end.i

entry.__mt7601u_phy_freq_cal.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt7601u_phy_freq_cal.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %4 = icmp ult i8 %3, 4
  br i1 %4, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1044, i32 noundef 9, ptr noundef null) #8
  br label %__mt7601u_phy_freq_cal.exit

switch.lookup:                                    ; preds = %if.end.i
  %5 = sext i8 %3 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mt7601u_phy_freq_cal, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %7 = sext i8 %3 to i32
  %switch.gep15 = getelementptr inbounds [4 x i32], ptr @switch.table.mt7601u_phy_freq_cal.57, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load16 = load i32, ptr %switch.gep15, align 4
  %9 = tail call i32 @llvm.abs.i32(i32 %conv.i, i1 true) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %switch.load16)
  %cmp28.not.i = icmp ult i32 %9, %switch.load16
  br i1 %cmp28.not.i, label %if.else.i, label %switch.lookup.if.end50.sink.split.i_crit_edge

switch.lookup.if.end50.sink.split.i_crit_edge:    ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.sink.split.i

if.else.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %switch.load)
  %cmp44.not.i = icmp ugt i32 %9, %switch.load
  br i1 %cmp44.not.i, label %if.else.i.if.end50.i_crit_edge, label %if.else.i.if.end50.sink.split.i_crit_edge

if.else.i.if.end50.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.sink.split.i

if.else.i.if.end50.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

if.end50.sink.split.i:                            ; preds = %if.else.i.if.end50.sink.split.i_crit_edge, %switch.lookup.if.end50.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 1, %switch.lookup.if.end50.sink.split.i_crit_edge ], [ 0, %if.else.i.if.end50.sink.split.i_crit_edge ]
  %adjusting48.i = getelementptr i8, ptr %work, i32 102
  %10 = ptrtoint ptr %adjusting48.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink.i, ptr %adjusting48.i, align 2
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.end50.sink.split.i, %if.else.i.if.end50.i_crit_edge
  %adjusting52.i = getelementptr i8, ptr %work, i32 102
  %11 = ptrtoint ptr %adjusting52.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %adjusting52.i, align 2, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool53.not.i = icmp eq i8 %12, 0
  br i1 %tobool53.not.i, label %if.end50.i.__mt7601u_phy_freq_cal.exit_crit_edge, label %if.end55.i

if.end50.i.__mt7601u_phy_freq_cal.exit_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt7601u_phy_freq_cal.exit

if.end55.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load, i32 %conv.i)
  %cmp58.i = icmp slt i32 %switch.load, %conv.i
  br i1 %cmp58.i, label %if.then60.i, label %if.else72.i

if.then60.i:                                      ; preds = %if.end55.i
  %freq.i = getelementptr i8, ptr %work, i32 100
  %13 = ptrtoint ptr %freq.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp63.not.i = icmp eq i8 %14, 0
  br i1 %cmp63.not.i, label %if.else68.i, label %if.then65.i

if.then65.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add i8 %14, -1
  %15 = ptrtoint ptr %freq.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %dec.i, ptr %freq.i, align 4
  br label %if.end92.i

if.else68.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %adjusting52.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %adjusting52.i, align 2
  br label %if.end92.i

if.else72.i:                                      ; preds = %if.end55.i
  %sub75.i = sub nsw i32 0, %switch.load
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %sub75.i)
  %cmp76.i = icmp slt i32 %conv.i, %sub75.i
  br i1 %cmp76.i, label %if.then78.i, label %if.else72.i.if.end92.i_crit_edge

if.else72.i.if.end92.i_crit_edge:                 ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.i

if.then78.i:                                      ; preds = %if.else72.i
  %freq80.i = getelementptr i8, ptr %work, i32 100
  %17 = ptrtoint ptr %freq80.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %freq80.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %18)
  %cmp82.i = icmp ult i8 %18, -65
  br i1 %cmp82.i, label %if.then84.i, label %if.else87.i

if.then84.i:                                      ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add nuw i8 %18, 1
  %19 = ptrtoint ptr %freq80.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %inc.i, ptr %freq80.i, align 4
  br label %if.end92.i

if.else87.i:                                      ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %adjusting52.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %adjusting52.i, align 2
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.else87.i, %if.then84.i, %if.else72.i.if.end92.i_crit_edge, %if.else68.i, %if.then65.i
  %freq94.i = getelementptr i8, ptr %work, i32 100
  %21 = ptrtoint ptr %freq94.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %freq94.i, align 4
  tail call fastcc void @trace_freq_cal_adjust(ptr noundef %add.ptr, i8 noundef zeroext %22) #8
  %23 = ptrtoint ptr %freq94.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %freq94.i, align 4
  %call.i = tail call fastcc i32 @mt7601u_rf_wr(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 12, i8 noundef zeroext %24) #8
  %call.i.i = tail call fastcc i32 @mt7601u_rf_wr(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 10) #8
  %call1.i.i = tail call fastcc i32 @mt7601u_rf_wr(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 32) #8
  %call.i.i.i.i = tail call fastcc i32 @mt7601u_rf_rr(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end92.i.mt7601u_vco_cal.exit.i_crit_edge, label %if.end.i.i.i.i

if.end92.i.mt7601u_vco_cal.exit.i_crit_edge:      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_vco_cal.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = trunc i32 %call.i.i.i.i to i8
  %conv2.i.i.i.i = or i8 %25, -128
  %call3.i.i.i.i = tail call fastcc i32 @mt7601u_rf_wr(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext %conv2.i.i.i.i) #8
  br label %mt7601u_vco_cal.exit.i

mt7601u_vco_cal.exit.i:                           ; preds = %if.end.i.i.i.i, %if.end92.i.mt7601u_vco_cal.exit.i_crit_edge
  tail call void @msleep(i32 noundef 2) #8
  %26 = ptrtoint ptr %adjusting52.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %adjusting52.i, align 2, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool99.not.i = icmp eq i8 %27, 0
  %cond101.i = select i1 %tobool99.not.i, i32 1000, i32 50
  br label %__mt7601u_phy_freq_cal.exit

__mt7601u_phy_freq_cal.exit:                      ; preds = %mt7601u_vco_cal.exit.i, %if.end50.i.__mt7601u_phy_freq_cal.exit_crit_edge, %do.end.i, %entry.__mt7601u_phy_freq_cal.exit_crit_edge
  %retval.0.i = phi i32 [ 1000, %do.end.i ], [ %cond101.i, %mt7601u_vco_cal.exit.i ], [ 50, %entry.__mt7601u_phy_freq_cal.exit_crit_edge ], [ 1000, %if.end50.i.__mt7601u_phy_freq_cal.exit_crit_edge ]
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 8
  tail call void @ieee80211_queue_delayed_work(ptr noundef %29, ptr noundef %work, i32 noundef %retval.0.i) #8
  tail call void @_raw_spin_lock_bh(ptr noundef %con_mon_lock) #8
  %30 = ptrtoint ptr %bcn_freq_off to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -128, ptr %bcn_freq_off, align 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %con_mon_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bbp_read(ptr noundef %dev, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bbp_read, i32 0, i32 1), ptr blockaddress(@trace_bbp_read, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !193

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !194

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !195
  %call42 = tail call i32 @__traceiter_bbp_read(ptr noundef null, ptr noundef %dev, i8 noundef zeroext %reg, i8 noundef zeroext %val) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !196
  %13 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !194

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bbp_read, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bbp_read, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_bbp_read.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_bbp_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 192, ptr noundef nonnull @.str.15) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !198
  %31 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_bbp_read(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_rmw(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_rmc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7601u_rf_rr(ptr noundef %dev, i8 noundef zeroext %bank, i8 noundef zeroext %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %lor.lhs.false.critedge, !prof !191

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 59, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

lor.lhs.false.critedge:                           ; preds = %entry
  %conv = zext i8 %offset to i32
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool58.not = icmp eq i32 %5, 0
  br i1 %tobool58.not, label %if.end60, label %lor.lhs.false.critedge.cleanup_crit_edge

lor.lhs.false.critedge.cleanup_crit_edge:         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end60:                                         ; preds = %lor.lhs.false.critedge
  %reg_atomic_mutex = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %reg_atomic_mutex, i32 noundef 0) #8
  %call61 = tail call zeroext i1 @mt76_poll(ptr noundef %dev, i32 noundef 1280, i32 noundef -2147483648, i32 noundef 0, i32 noundef 100) #8
  %conv84 = zext i8 %bank to i32
  br i1 %call61, label %do.end82, label %if.end60.out.thread_crit_edge

if.end60.out.thread_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

do.end82:                                         ; preds = %if.end60
  %shl = shl nuw nsw i32 %conv84, 14
  %and85 = and i32 %shl, 245760
  %shl110 = shl nuw nsw i32 %conv, 8
  %and111 = and i32 %shl110, 16128
  %or = or i32 %and85, %and111
  %or112 = or i32 %or, -2147483648
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 1280, i32 noundef %or112) #8
  %call113 = tail call zeroext i1 @mt76_poll(ptr noundef %dev, i32 noundef 1280, i32 noundef -2147483648, i32 noundef 0, i32 noundef 100) #8
  br i1 %call113, label %if.end115, label %do.end82.out.thread_crit_edge

do.end82.out.thread_crit_edge:                    ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.end115:                                        ; preds = %do.end82
  %call116 = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 1280) #8
  %and133 = lshr i32 %call116, 8
  %shr = and i32 %and133, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv)
  %cmp135 = icmp eq i32 %shr, %conv
  %and153 = lshr i32 %call116, 14
  %shr154 = and i32 %and153, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %shr154, i32 %conv84)
  %cmp156 = icmp eq i32 %shr154, %conv84
  %or.cond220 = select i1 %cmp135, i1 %cmp156, i1 false
  br i1 %or.cond220, label %out, label %if.end115.out.thread_crit_edge

if.end115.out.thread_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

out.thread:                                       ; preds = %if.end115.out.thread_crit_edge, %do.end82.out.thread_crit_edge, %if.end60.out.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %reg_atomic_mutex) #8
  %dev186 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %dev186 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev186, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.22, i32 noundef %conv84, i32 noundef %conv, i32 noundef -110) #11
  br label %cleanup

out:                                              ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  %and175 = and i32 %call116, 255
  %conv177 = trunc i32 %call116 to i8
  tail call fastcc void @trace_rf_read(ptr noundef %dev, i8 noundef zeroext %bank, i8 noundef zeroext %offset, i8 noundef zeroext %conv177)
  tail call void @mutex_unlock(ptr noundef %reg_atomic_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %out.thread, %lor.lhs.false.critedge.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 255, %lor.lhs.false.critedge.cleanup_crit_edge ], [ -110, %out.thread ], [ %and175, %out ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rf_read(ptr noundef %dev, i8 noundef zeroext %bank, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rf_read, i32 0, i32 1), ptr blockaddress(@trace_rf_read, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !193

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !194

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !199
  %call42 = tail call i32 @__traceiter_rf_read(ptr noundef null, ptr noundef %dev, i8 noundef zeroext %bank, i8 noundef zeroext %reg, i8 noundef zeroext %val) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !200
  %13 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !194

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rf_read, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rf_read, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rf_read.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rf_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 164, ptr noundef nonnull @.str.15) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !198
  %31 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rf_read(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bbp_write(ptr noundef %dev, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bbp_write, i32 0, i32 1), ptr blockaddress(@trace_bbp_write, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !193

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !194

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !201
  %call42 = tail call i32 @__traceiter_bbp_write(ptr noundef null, ptr noundef %dev, i8 noundef zeroext %reg, i8 noundef zeroext %val) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !202
  %13 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !194

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bbp_write, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bbp_write, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_bbp_write.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_bbp_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 197, ptr noundef nonnull @.str.15) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !198
  %31 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_bbp_write(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rf_write(ptr noundef %dev, i8 noundef zeroext %bank, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rf_write, i32 0, i32 1), ptr blockaddress(@trace_rf_write, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !193

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !194

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !203
  %call42 = tail call i32 @__traceiter_rf_write(ptr noundef null, ptr noundef %dev, i8 noundef zeroext %bank, i8 noundef zeroext %reg, i8 noundef zeroext %val) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !204
  %13 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !194

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rf_write, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rf_write, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rf_write.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rf_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 169, ptr noundef nonnull @.str.15) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !198
  %31 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rf_write(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7601u_tssi_dc_gain_cal(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %res = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #8
  %0 = getelementptr inbounds [4 x i8], ptr %res, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %res, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %res, i32 0, i32 3
  %3 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %res, align 4
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 1292, i32 noundef 48) #8
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 1284, i32 noundef 786480) #8
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4100, i32 noundef 0) #8
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 58, i8 noundef zeroext 0)
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext -15, i8 noundef zeroext 2)
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 23, i8 noundef zeroext 8)
  %call = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47)
  %call1 = tail call fastcc i32 @mt7601u_rf_rr(ptr noundef %dev, i8 noundef zeroext 5, i8 noundef zeroext 3)
  %call3 = tail call fastcc i32 @mt7601u_rf_wr(ptr noundef %dev, i8 noundef zeroext 5, i8 noundef zeroext 3, i8 noundef zeroext 8)
  %call4 = tail call fastcc i32 @mt7601u_rf_rr(ptr noundef %dev, i8 noundef zeroext 4, i8 noundef zeroext 39)
  %conv5 = trunc i32 %call4 to i8
  %call6 = tail call fastcc i32 @mt7601u_rf_wr(ptr noundef %dev, i8 noundef zeroext 4, i8 noundef zeroext 39, i8 noundef zeroext 0)
  %dev36 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end37.for.body_crit_edge, %entry
  %i.0183 = phi i32 [ 0, %entry ], [ %inc, %if.end37.for.body_crit_edge ]
  %and = and i32 %i.0183, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond26 = select i1 %tobool.not, i8 64, i8 49
  %cond22 = select i1 %tobool.not, i8 22, i8 -12
  %cond = select i1 %tobool.not, i8 0, i8 %conv5
  %call10 = tail call fastcc i32 @mt7601u_rf_wr(ptr noundef %dev, i8 noundef zeroext 4, i8 noundef zeroext 39, i8 noundef zeroext %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0183)
  %cmp11 = icmp ult i32 %i.0183, 2
  %conv14 = select i1 %cmp11, i8 8, i8 2
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 23, i8 noundef zeroext %conv14)
  %conv18 = select i1 %cmp11, i8 8, i8 17
  %call19 = tail call fastcc i32 @mt7601u_rf_wr(ptr noundef %dev, i8 noundef zeroext 5, i8 noundef zeroext 3, i8 noundef zeroext %conv18)
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 0)
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext -12, i8 noundef zeroext 0)
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 21, i8 noundef zeroext 1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #8
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 21, i8 noundef zeroext 0)
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 47, i8 noundef zeroext 80)
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext %cond22, i8 noundef zeroext %cond26)
  %call31 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47)
  %and32 = and i32 %call31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %for.body.if.end37_crit_edge, label %for.cond28

for.body.if.end37_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.cond28:                                       ; preds = %for.body
  %call31.1 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47)
  %and32.1 = and i32 %call31.1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.1)
  %tobool33.not.1 = icmp eq i32 %and32.1, 0
  br i1 %tobool33.not.1, label %for.cond28.if.end37_crit_edge, label %for.cond28.1

for.cond28.if.end37_crit_edge:                    ; preds = %for.cond28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.cond28.1:                                     ; preds = %for.cond28
  %call31.2 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47)
  %and32.2 = and i32 %call31.2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.2)
  %tobool33.not.2 = icmp eq i32 %and32.2, 0
  br i1 %tobool33.not.2, label %for.cond28.1.if.end37_crit_edge, label %for.cond28.2

for.cond28.1.if.end37_crit_edge:                  ; preds = %for.cond28.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.cond28.2:                                     ; preds = %for.cond28.1
  %call31.3 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47)
  %and32.3 = and i32 %call31.3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.3)
  %tobool33.not.3 = icmp eq i32 %and32.3, 0
  br i1 %tobool33.not.3, label %for.cond28.2.if.end37_crit_edge, label %for.cond28.3

for.cond28.2.if.end37_crit_edge:                  ; preds = %for.cond28.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.cond28.3:                                     ; preds = %for.cond28.2
  %call31.4 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47)
  %and32.4 = and i32 %call31.4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.4)
  %tobool33.not.4 = icmp eq i32 %and32.4, 0
  br i1 %tobool33.not.4, label %for.cond28.3.if.end37_crit_edge, label %for.cond28.4

for.cond28.3.if.end37_crit_edge:                  ; preds = %for.cond28.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.cond28.4:                                     ; preds = %for.cond28.3
  %call31.5 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47)
  %and32.5 = and i32 %call31.5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.5)
  %tobool33.not.5 = icmp eq i32 %and32.5, 0
  br i1 %tobool33.not.5, label %for.cond28.4.if.end37_crit_edge, label %for.cond28.5

for.cond28.4.if.end37_crit_edge:                  ; preds = %for.cond28.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.cond28.5:                                     ; preds = %for.cond28.4
  %call31.6 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47)
  %and32.6 = and i32 %call31.6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.6)
  %tobool33.not.6 = icmp eq i32 %and32.6, 0
  br i1 %tobool33.not.6, label %for.cond28.5.if.end37_crit_edge, label %for.cond28.6

for.cond28.5.if.end37_crit_edge:                  ; preds = %for.cond28.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.cond28.6:                                     ; preds = %for.cond28.5
  %call31.7 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47)
  %and32.7 = and i32 %call31.7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.7)
  %tobool33.not.7 = icmp eq i32 %and32.7, 0
  br i1 %tobool33.not.7, label %for.cond28.6.if.end37_crit_edge, label %for.cond28.7

for.cond28.6.if.end37_crit_edge:                  ; preds = %for.cond28.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.cond28.7:                                     ; preds = %for.cond28.6
  %call31.8 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47)
  %and32.8 = and i32 %call31.8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.8)
  %tobool33.not.8 = icmp eq i32 %and32.8, 0
  br i1 %tobool33.not.8, label %for.cond28.7.if.end37_crit_edge, label %for.cond28.8

for.cond28.7.if.end37_crit_edge:                  ; preds = %for.cond28.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.cond28.8:                                     ; preds = %for.cond28.7
  %call31.9 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47)
  %and32.9 = and i32 %call31.9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.9)
  %tobool33.not.9 = icmp eq i32 %and32.9, 0
  br i1 %tobool33.not.9, label %for.cond28.8.if.end37_crit_edge, label %for.cond28.9

for.cond28.8.if.end37_crit_edge:                  ; preds = %for.cond28.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.cond28.9:                                     ; preds = %for.cond28.8
  %call31.10 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47)
  %and32.10 = and i32 %call31.10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.10)
  %tobool33.not.10 = icmp eq i32 %and32.10, 0
  br i1 %tobool33.not.10, label %for.cond28.9.if.end37_crit_edge, label %for.cond28.10

for.cond28.9.if.end37_crit_edge:                  ; preds = %for.cond28.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.cond28.10:                                    ; preds = %for.cond28.9
  %call31.11 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47)
  %and32.11 = and i32 %call31.11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.11)
  %tobool33.not.11 = icmp eq i32 %and32.11, 0
  br i1 %tobool33.not.11, label %for.cond28.10.if.end37_crit_edge, label %for.cond28.11

for.cond28.10.if.end37_crit_edge:                 ; preds = %for.cond28.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.cond28.11:                                    ; preds = %for.cond28.10
  %call31.12 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47)
  %and32.12 = and i32 %call31.12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.12)
  %tobool33.not.12 = icmp eq i32 %and32.12, 0
  br i1 %tobool33.not.12, label %for.cond28.11.if.end37_crit_edge, label %for.cond28.12

for.cond28.11.if.end37_crit_edge:                 ; preds = %for.cond28.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.cond28.12:                                    ; preds = %for.cond28.11
  %call31.13 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47)
  %and32.13 = and i32 %call31.13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.13)
  %tobool33.not.13 = icmp eq i32 %and32.13, 0
  br i1 %tobool33.not.13, label %for.cond28.12.if.end37_crit_edge, label %for.cond28.13

for.cond28.12.if.end37_crit_edge:                 ; preds = %for.cond28.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.cond28.13:                                    ; preds = %for.cond28.12
  %call31.14 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47)
  %and32.14 = and i32 %call31.14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.14)
  %tobool33.not.14 = icmp eq i32 %and32.14, 0
  br i1 %tobool33.not.14, label %for.cond28.13.if.end37_crit_edge, label %for.cond28.14

for.cond28.13.if.end37_crit_edge:                 ; preds = %for.cond28.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.cond28.14:                                    ; preds = %for.cond28.13
  %call31.15 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47)
  %and32.15 = and i32 %call31.15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.15)
  %tobool33.not.15 = icmp eq i32 %and32.15, 0
  br i1 %tobool33.not.15, label %for.cond28.14.if.end37_crit_edge, label %for.cond28.15

for.cond28.14.if.end37_crit_edge:                 ; preds = %for.cond28.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.cond28.15:                                    ; preds = %for.cond28.14
  %call31.16 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47)
  %and32.16 = and i32 %call31.16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.16)
  %tobool33.not.16 = icmp eq i32 %and32.16, 0
  br i1 %tobool33.not.16, label %for.cond28.15.if.end37_crit_edge, label %for.cond28.16

for.cond28.15.if.end37_crit_edge:                 ; preds = %for.cond28.15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.cond28.16:                                    ; preds = %for.cond28.15
  %call31.17 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47)
  %and32.17 = and i32 %call31.17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.17)
  %tobool33.not.17 = icmp eq i32 %and32.17, 0
  br i1 %tobool33.not.17, label %for.cond28.16.if.end37_crit_edge, label %for.cond28.17

for.cond28.16.if.end37_crit_edge:                 ; preds = %for.cond28.16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.cond28.17:                                    ; preds = %for.cond28.16
  %call31.18 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47)
  %and32.18 = and i32 %call31.18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.18)
  %tobool33.not.18 = icmp eq i32 %and32.18, 0
  br i1 %tobool33.not.18, label %for.cond28.17.if.end37_crit_edge, label %for.cond28.18

for.cond28.17.if.end37_crit_edge:                 ; preds = %for.cond28.17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.cond28.18:                                    ; preds = %for.cond28.17
  %call31.19 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47)
  %and32.19 = and i32 %call31.19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.19)
  %tobool33.not.19 = icmp eq i32 %and32.19, 0
  br i1 %tobool33.not.19, label %for.cond28.18.if.end37_crit_edge, label %for.cond28.19

for.cond28.18.if.end37_crit_edge:                 ; preds = %for.cond28.18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.cond28.19:                                    ; preds = %for.cond28.18
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.36) #11
  br label %if.end37

if.end37:                                         ; preds = %for.cond28.19, %for.cond28.18.if.end37_crit_edge, %for.cond28.17.if.end37_crit_edge, %for.cond28.16.if.end37_crit_edge, %for.cond28.15.if.end37_crit_edge, %for.cond28.14.if.end37_crit_edge, %for.cond28.13.if.end37_crit_edge, %for.cond28.12.if.end37_crit_edge, %for.cond28.11.if.end37_crit_edge, %for.cond28.10.if.end37_crit_edge, %for.cond28.9.if.end37_crit_edge, %for.cond28.8.if.end37_crit_edge, %for.cond28.7.if.end37_crit_edge, %for.cond28.6.if.end37_crit_edge, %for.cond28.5.if.end37_crit_edge, %for.cond28.4.if.end37_crit_edge, %for.cond28.3.if.end37_crit_edge, %for.cond28.2.if.end37_crit_edge, %for.cond28.1.if.end37_crit_edge, %for.cond28.if.end37_crit_edge, %for.body.if.end37_crit_edge
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 47, i8 noundef zeroext 64)
  %call38 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 49)
  %conv39 = trunc i32 %call38 to i8
  %arrayidx = getelementptr [4 x i8], ptr %res, i32 0, i32 %i.0183
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv39, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.0183, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end41, label %if.end37.for.body_crit_edge

if.end37.for.body_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end41:                                        ; preds = %if.end37
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %0, align 1
  %10 = ptrtoint ptr %res to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %res, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %tobool.not.i = icmp eq i8 %9, %11
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !191

do.end.i:                                         ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 604, i32 noundef 9, ptr noundef null) #8
  br label %lin2dBd.exit

if.end23.i:                                       ; preds = %for.end41
  %conv46 = sext i8 %11 to i32
  %conv44 = sext i8 %9 to i32
  %sub = sub nsw i32 %conv44, %conv46
  %conv.i = and i32 %sub, 65535
  %12 = tail call i32 @llvm.ctlz.i32(i32 %conv.i, i1 true) #8, !range !205
  %.neg.i = mul nsw i32 %12, -65536
  %sext.i = add nsw i32 %.neg.i, 1048576
  %conv25.i = ashr exact i32 %sext.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048576, i32 %.neg.i)
  %cmp.i = icmp sgt i32 %.neg.i, -1048576
  br i1 %cmp.i, label %if.then27.i, label %if.else.i

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = lshr i32 %conv.i, %conv25.i
  br label %if.end36.i

if.else.i:                                        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp31.not.i = icmp eq i32 %12, 16
  %sub34.i = sub nsw i32 0, %conv25.i
  %cond.i = select i1 %cmp31.not.i, i32 0, i32 %sub34.i
  %shl.i = shl nuw i32 %conv.i, %cond.i
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else.i, %if.then27.i
  %mantisa.0.i = phi i32 [ %shr.i, %if.then27.i ], [ %shl.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 47105, i32 %mantisa.0.i)
  %cmp37.i = icmp ult i32 %mantisa.0.i, 47105
  %shr40.i = lshr i32 %mantisa.0.i, 3
  br i1 %cmp37.i, label %if.then39.i, label %if.else44.i

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr41.i = lshr i32 %mantisa.0.i, 4
  %add.i = add nsw i32 %mantisa.0.i, -38400
  %add42.i = add nsw i32 %add.i, %shr40.i
  %sub43.i = add nsw i32 %add42.i, %shr41.i
  br label %if.end50.i

if.else44.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr47.i = lshr i32 %mantisa.0.i, 6
  %.neg = add i32 %mantisa.0.i, -23040
  %13 = add nuw nsw i32 %shr40.i, %shr47.i
  %sub49.i = sub i32 %.neg, %13
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.else44.i, %if.then39.i
  %app.0.i = phi i32 [ %sub43.i, %if.then39.i ], [ %sub49.i, %if.else44.i ]
  %14 = tail call i32 @llvm.smax.i32(i32 %app.0.i, i32 0) #8
  %add56.i = ashr exact i32 %sext.i, 1
  %shl57.i = add nsw i32 %add56.i, 491520
  %add58.i = add i32 %shl57.i, %14
  %add61.i = mul i32 %add58.i, 6
  %15 = lshr i32 %add58.i, 6
  %add63.i = add i32 %add61.i, %15
  %shr64.i = ashr i32 %add58.i, 7
  %add65.i = add i32 %add63.i, %shr64.i
  %16 = lshr i32 %add65.i, 10
  %conv67.i = trunc i32 %16 to i16
  br label %lin2dBd.exit

lin2dBd.exit:                                     ; preds = %if.end50.i, %do.end.i
  %retval.0.i137 = phi i16 [ -10000, %do.end.i ], [ %conv67.i, %if.end50.i ]
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %2, align 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %tobool.not.i138 = icmp eq i8 %18, %20
  br i1 %tobool.not.i138, label %do.end.i139, label %if.end23.i145, !prof !191

do.end.i139:                                      ; preds = %lin2dBd.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 604, i32 noundef 9, ptr noundef null) #8
  br label %lin2dBd.exit177

if.end23.i145:                                    ; preds = %lin2dBd.exit
  %conv53 = sext i8 %20 to i32
  %conv51 = sext i8 %18 to i32
  %sub54 = sub nsw i32 %conv51, %conv53
  %mul = shl nsw i32 %sub54, 2
  %conv.i140 = and i32 %mul, 65532
  %21 = tail call i32 @llvm.ctlz.i32(i32 %conv.i140, i1 true) #8, !range !205
  %.neg.i141 = mul nsw i32 %21, -65536
  %sext.i142 = add nsw i32 %.neg.i141, 1048576
  %conv25.i143 = ashr exact i32 %sext.i142, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048576, i32 %.neg.i141)
  %cmp.i144 = icmp sgt i32 %.neg.i141, -1048576
  br i1 %cmp.i144, label %if.then27.i147, label %if.else.i152

if.then27.i147:                                   ; preds = %if.end23.i145
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i146 = lshr i32 %conv.i140, %conv25.i143
  br label %if.end36.i156

if.else.i152:                                     ; preds = %if.end23.i145
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %21)
  %cmp31.not.i148 = icmp eq i32 %21, 16
  %sub34.i149 = sub nsw i32 0, %conv25.i143
  %cond.i150 = select i1 %cmp31.not.i148, i32 0, i32 %sub34.i149
  %shl.i151 = shl nuw i32 %conv.i140, %cond.i150
  br label %if.end36.i156

if.end36.i156:                                    ; preds = %if.else.i152, %if.then27.i147
  %mantisa.0.i153 = phi i32 [ %shr.i146, %if.then27.i147 ], [ %shl.i151, %if.else.i152 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 47105, i32 %mantisa.0.i153)
  %cmp37.i154 = icmp ult i32 %mantisa.0.i153, 47105
  %shr40.i155 = lshr i32 %mantisa.0.i153, 3
  br i1 %cmp37.i154, label %if.then39.i161, label %if.else44.i165

if.then39.i161:                                   ; preds = %if.end36.i156
  call void @__sanitizer_cov_trace_pc() #10
  %shr41.i157 = lshr i32 %mantisa.0.i153, 4
  %add.i158 = add nsw i32 %mantisa.0.i153, -38400
  %add42.i159 = add nsw i32 %add.i158, %shr40.i155
  %sub43.i160 = add nsw i32 %add42.i159, %shr41.i157
  br label %if.end50.i175

if.else44.i165:                                   ; preds = %if.end36.i156
  call void @__sanitizer_cov_trace_pc() #10
  %shr47.i162 = lshr i32 %mantisa.0.i153, 6
  %.neg181 = add i32 %mantisa.0.i153, -23040
  %22 = add nuw nsw i32 %shr40.i155, %shr47.i162
  %sub49.i164 = sub i32 %.neg181, %22
  br label %if.end50.i175

if.end50.i175:                                    ; preds = %if.else44.i165, %if.then39.i161
  %app.0.i166 = phi i32 [ %sub43.i160, %if.then39.i161 ], [ %sub49.i164, %if.else44.i165 ]
  %23 = tail call i32 @llvm.smax.i32(i32 %app.0.i166, i32 0) #8
  %add56.i167 = ashr exact i32 %sext.i142, 1
  %shl57.i168 = add nsw i32 %add56.i167, 491520
  %add58.i169 = add i32 %shl57.i168, %23
  %add61.i170 = mul i32 %add58.i169, 6
  %24 = lshr i32 %add58.i169, 6
  %add63.i171 = add i32 %add61.i170, %24
  %shr64.i172 = ashr i32 %add58.i169, 7
  %add65.i173 = add i32 %add63.i171, %shr64.i172
  %25 = lshr i32 %add65.i173, 10
  %conv67.i174 = trunc i32 %25 to i16
  br label %lin2dBd.exit177

lin2dBd.exit177:                                  ; preds = %if.end50.i175, %do.end.i139
  %retval.0.i176 = phi i16 [ -10000, %do.end.i139 ], [ %conv67.i174, %if.end50.i175 ]
  %tssi_init = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 45
  %26 = ptrtoint ptr %tssi_init to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %11, ptr %tssi_init, align 1
  %tssi_init_hvga = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 46
  %27 = ptrtoint ptr %tssi_init_hvga to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %20, ptr %tssi_init_hvga, align 2
  %sub61 = sub i16 %retval.0.i176, %retval.0.i137
  %tssi_init_hvga_offset_db = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 47
  %28 = ptrtoint ptr %tssi_init_hvga_offset_db to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %sub61, ptr %tssi_init_hvga_offset_db, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7601u_tssi_dc_gain_cal.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7601u_tssi_dc_gain_cal, %if.then68)) #8
          to label %do.end80 [label %if.then68], !srcloc !193

if.then68:                                        ; preds = %lin2dBd.exit177
  call void @__sanitizer_cov_trace_pc() #10
  %conv60 = sext i16 %retval.0.i137 to i32
  %conv59 = sext i16 %retval.0.i176 to i32
  %29 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev36, align 4
  %31 = ptrtoint ptr %tssi_init to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tssi_init, align 1
  %conv71 = sext i8 %32 to i32
  %33 = ptrtoint ptr %tssi_init_hvga to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tssi_init_hvga, align 2
  %conv74 = sext i8 %34 to i32
  %35 = ptrtoint ptr %tssi_init_hvga_offset_db to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %tssi_init_hvga_offset_db, align 4
  %conv77 = sext i16 %36 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7601u_tssi_dc_gain_cal.__UNIQUE_ID_ddebug498, ptr noundef %30, ptr noundef nonnull @.str.37, i32 noundef %conv71, i32 noundef %conv60, i32 noundef %conv74, i32 noundef %conv59, i32 noundef %conv77) #8
  br label %do.end80

do.end80:                                         ; preds = %if.then68, %lin2dBd.exit177
  %conv2 = trunc i32 %call1 to i8
  %conv = trunc i32 %call to i8
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 22, i8 noundef zeroext 0)
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext -12, i8 noundef zeroext 0)
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 21, i8 noundef zeroext 1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #8
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 21, i8 noundef zeroext 0)
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 1284, i32 noundef 0) #8
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 1292, i32 noundef 0) #8
  %call81 = tail call fastcc i32 @mt7601u_rf_wr(ptr noundef %dev, i8 noundef zeroext 5, i8 noundef zeroext 3, i8 noundef zeroext %conv2)
  %call82 = tail call fastcc i32 @mt7601u_rf_wr(ptr noundef %dev, i8 noundef zeroext 4, i8 noundef zeroext 39, i8 noundef zeroext %conv5)
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 47, i8 noundef zeroext %conv)
  %ee.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 18
  %38 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ee.i, align 8
  %conv.i178 = sext i16 %retval.0.i137 to i32
  %slope.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %39, i32 0, i32 8, i32 1
  %40 = ptrtoint ptr %slope.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %slope.i, align 4
  %conv1.i = zext i8 %41 to i32
  %mul.i = mul nsw i32 %conv1.i, %conv.i178
  %arrayidx.i = getelementptr %struct.mt7601u_eeprom_params, ptr %39, i32 0, i32 8, i32 2, i32 1
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i, align 1
  %conv2.i = zext i8 %43 to i32
  %add.i179 = add nsw i32 %mul.i, %conv2.i
  %div.neg.i = sdiv i32 %add.i179, -4096
  %add3.i = add nsw i32 %div.neg.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 176127, i32 %add.i179)
  %cmp.i.i = icmp sgt i32 %add.i179, 176127
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90111, i32 %add.i179)
  %cmp1.i.i = icmp slt i32 %add.i179, -90111
  %and.i.i = and i32 %add3.i, 63
  %spec.select.i.i = select i1 %cmp1.i.i, i32 31, i32 %and.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i32 32, i32 %spec.select.i.i
  %call.i.i = tail call i32 @mt7601u_rmw(ptr noundef %dev, i32 noundef 5044, i32 noundef 63, i32 noundef %retval.0.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7601u_temp_comp(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_temp = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 52
  %0 = ptrtoint ptr %raw_temp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %raw_temp, align 8
  %conv = sext i8 %1 to i32
  %ee = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ee, align 8
  %ref_temp = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ref_temp to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ref_temp, align 4
  %conv1 = sext i8 %5 to i32
  %sub = sub nsw i32 %conv, %conv1
  %mul = mul nsw i32 %sub, 39
  %curr_temp = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 50
  %6 = ptrtoint ptr %curr_temp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %curr_temp, align 8
  %dpd_temp = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 51
  %7 = ptrtoint ptr %dpd_temp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dpd_temp, align 4
  %sub2 = sub i32 -451, %8
  %9 = add i32 %sub2, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 -901, i32 %9)
  %10 = icmp ult i32 %9, -901
  br i1 %10, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %dpd_temp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %dpd_temp, align 4
  %call = tail call i32 @mt7601u_mcu_calibrate(ptr noundef %dev, i32 noundef 7, i32 noundef %mul) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call.i = tail call fastcc i32 @mt7601u_rf_wr(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 10) #8
  %call1.i = tail call fastcc i32 @mt7601u_rf_wr(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 32) #8
  %call.i.i.i = tail call fastcc i32 @mt7601u_rf_rr(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.mt7601u_vco_cal.exit_crit_edge, label %if.end.i.i.i

if.end.mt7601u_vco_cal.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_vco_cal.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = trunc i32 %call.i.i.i to i8
  %conv2.i.i.i = or i8 %12, -128
  %call3.i.i.i = tail call fastcc i32 @mt7601u_rf_wr(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext %conv2.i.i.i) #8
  br label %mt7601u_vco_cal.exit

mt7601u_vco_cal.exit:                             ; preds = %if.end.i.i.i, %if.end.mt7601u_vco_cal.exit_crit_edge
  tail call void @msleep(i32 noundef 2) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7601u_temp_comp.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7601u_temp_comp, %if.then16)) #8
          to label %if.end19 [label %if.then16], !srcloc !193

if.then16:                                        ; preds = %mt7601u_vco_cal.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev17 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %13 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7601u_temp_comp.__UNIQUE_ID_ddebug499, ptr noundef %14, ptr noundef nonnull @.str.39) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %mt7601u_vco_cal.exit, %entry.if.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -50, i32 %mul)
  %cmp20 = icmp slt i32 %mul, -50
  br i1 %cmp20, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end19
  %pll_lock_protect = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 53
  %15 = ptrtoint ptr %pll_lock_protect to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pll_lock_protect, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool22.not = icmp eq i8 %16, 0
  br i1 %tobool22.not, label %if.then23, label %land.lhs.true.if.else82_crit_edge

land.lhs.true.if.else82_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else82

if.then23:                                        ; preds = %land.lhs.true
  %17 = ptrtoint ptr %pll_lock_protect to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %pll_lock_protect, align 1
  %call25 = tail call fastcc i32 @mt7601u_rf_wr(ptr noundef %dev, i8 noundef zeroext 4, i8 noundef zeroext 4, i8 noundef zeroext 6)
  %call.i.i = tail call fastcc i32 @mt7601u_rf_rr(ptr noundef %dev, i8 noundef zeroext 4, i8 noundef zeroext 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then23.mt7601u_rf_clear.exit_crit_edge, label %if.end.i.i

if.then23.mt7601u_rf_clear.exit_crit_edge:        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_rf_clear.exit

if.end.i.i:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %18 = trunc i32 %call.i.i to i8
  %19 = and i8 %18, -49
  %call3.i.i = tail call fastcc i32 @mt7601u_rf_wr(ptr noundef %dev, i8 noundef zeroext 4, i8 noundef zeroext 10, i8 noundef zeroext %19) #8
  br label %mt7601u_rf_clear.exit

mt7601u_rf_clear.exit:                            ; preds = %if.end.i.i, %if.then23.mt7601u_rf_clear.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7601u_temp_comp.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7601u_temp_comp, %if.then39)) #8
          to label %if.end77 [label %if.then39], !srcloc !193

if.then39:                                        ; preds = %mt7601u_rf_clear.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev40 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %20 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7601u_temp_comp.__UNIQUE_ID_ddebug500, ptr noundef %21, ptr noundef nonnull @.str.40) #8
  br label %if.else82

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %mul)
  %cmp44 = icmp sgt i32 %mul, 50
  br i1 %cmp44, label %land.lhs.true46, label %if.else.if.then85_crit_edge

if.else.if.then85_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then85

land.lhs.true46:                                  ; preds = %if.else
  %pll_lock_protect47 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 53
  %22 = ptrtoint ptr %pll_lock_protect47 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pll_lock_protect47, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool48.not = icmp eq i8 %23, 0
  br i1 %tobool48.not, label %land.lhs.true46.if.end77_crit_edge, label %if.then50

land.lhs.true46.if.end77_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then50:                                        ; preds = %land.lhs.true46
  %24 = ptrtoint ptr %pll_lock_protect47 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %pll_lock_protect47, align 1
  %call52 = tail call fastcc i32 @mt7601u_rf_wr(ptr noundef %dev, i8 noundef zeroext 4, i8 noundef zeroext 4, i8 noundef zeroext 0)
  %call.i7 = tail call fastcc i32 @mt7601u_rf_rr(ptr noundef %dev, i8 noundef zeroext 4, i8 noundef zeroext 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %cmp.i = icmp slt i32 %call.i7, 0
  br i1 %cmp.i, label %if.then50.mt7601u_rf_rmw.exit_crit_edge, label %if.end.i

if.then50.mt7601u_rf_rmw.exit_crit_edge:          ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt7601u_rf_rmw.exit

if.end.i:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %25 = trunc i32 %call.i7 to i8
  %26 = and i8 %25, -49
  %conv2.i = or i8 %26, 16
  %call3.i = tail call fastcc i32 @mt7601u_rf_wr(ptr noundef %dev, i8 noundef zeroext 4, i8 noundef zeroext 10, i8 noundef zeroext %conv2.i) #8
  br label %mt7601u_rf_rmw.exit

mt7601u_rf_rmw.exit:                              ; preds = %if.end.i, %if.then50.mt7601u_rf_rmw.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7601u_temp_comp.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7601u_temp_comp, %if.then66)) #8
          to label %if.end77 [label %if.then66], !srcloc !193

if.then66:                                        ; preds = %mt7601u_rf_rmw.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev67 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %27 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev67, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7601u_temp_comp.__UNIQUE_ID_ddebug501, ptr noundef %28, ptr noundef nonnull @.str.41) #8
  br label %if.end77

if.end77:                                         ; preds = %if.then66, %mt7601u_rf_rmw.exit, %land.lhs.true46.if.end77_crit_edge, %mt7601u_rf_clear.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 350, i32 %mul)
  %cmp78 = icmp sgt i32 %mul, 350
  br i1 %cmp78, label %if.then80, label %if.end77.if.else82_crit_edge

if.end77.if.else82_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else82

if.then80:                                        ; preds = %if.end77
  %temp_mode.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 49
  %29 = ptrtoint ptr %temp_mode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %temp_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i8 = icmp eq i32 %30, 1
  br i1 %cmp.i8, label %if.then80.cleanup_crit_edge, label %if.end.i10

if.then80.cleanup_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i10:                                       ; preds = %if.then80
  %31 = ptrtoint ptr %temp_mode.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %temp_mode.i, align 4
  tail call fastcc void @trace_temp_mode(ptr noundef %dev, i8 noundef zeroext 1) #8
  %32 = ptrtoint ptr %temp_mode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %temp_mode.i, align 4
  %arrayidx.i = getelementptr [3 x [3 x %struct.reg_table]], ptr @bbp_mode_table, i32 0, i32 %33
  %arrayidx3.i = getelementptr %struct.reg_table, ptr %arrayidx.i, i32 2
  %34 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx3.i, align 4
  %n.i = getelementptr %struct.reg_table, ptr %arrayidx.i, i32 2, i32 1
  %36 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n.i, align 4
  %call.i9 = tail call i32 @mt7601u_write_reg_pairs(ptr noundef %dev, i32 noundef 1073741824, ptr noundef %35, i32 noundef %37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %tobool.not.i = icmp eq i32 %call.i9, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.end.i10.cleanup_crit_edge

if.end.i10.cleanup_crit_edge:                     ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #10
  %bw.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 54
  %38 = ptrtoint ptr %bw.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bw.i, align 2
  %idxprom.i = zext i8 %39 to i32
  %arrayidx7.i = getelementptr %struct.reg_table, ptr %arrayidx.i, i32 %idxprom.i
  %n12.i = getelementptr %struct.reg_table, ptr %arrayidx.i, i32 %idxprom.i, i32 1
  br label %cleanup.sink.split

if.else82:                                        ; preds = %if.end77.if.else82_crit_edge, %if.then39, %land.lhs.true.if.else82_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -250, i32 %mul)
  %cmp83 = icmp sgt i32 %mul, -250
  br i1 %cmp83, label %if.else82.if.then85_crit_edge, label %if.else87

if.else82.if.then85_crit_edge:                    ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then85

if.then85:                                        ; preds = %if.else82.if.then85_crit_edge, %if.else.if.then85_crit_edge
  %temp_mode.i12 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 49
  %40 = ptrtoint ptr %temp_mode.i12 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %temp_mode.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i13 = icmp eq i32 %41, 0
  br i1 %cmp.i13, label %if.then85.cleanup_crit_edge, label %if.end.i19

if.then85.cleanup_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i19:                                       ; preds = %if.then85
  %42 = ptrtoint ptr %temp_mode.i12 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %temp_mode.i12, align 4
  tail call fastcc void @trace_temp_mode(ptr noundef %dev, i8 noundef zeroext 0) #8
  %43 = ptrtoint ptr %temp_mode.i12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %temp_mode.i12, align 4
  %arrayidx.i14 = getelementptr [3 x [3 x %struct.reg_table]], ptr @bbp_mode_table, i32 0, i32 %44
  %arrayidx3.i15 = getelementptr %struct.reg_table, ptr %arrayidx.i14, i32 2
  %45 = ptrtoint ptr %arrayidx3.i15 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx3.i15, align 4
  %n.i16 = getelementptr %struct.reg_table, ptr %arrayidx.i14, i32 2, i32 1
  %47 = ptrtoint ptr %n.i16 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %n.i16, align 4
  %call.i17 = tail call i32 @mt7601u_write_reg_pairs(ptr noundef %dev, i32 noundef 1073741824, ptr noundef %46, i32 noundef %48) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool.not.i18 = icmp eq i32 %call.i17, 0
  br i1 %tobool.not.i18, label %if.end6.i25, label %if.end.i19.cleanup_crit_edge

if.end.i19.cleanup_crit_edge:                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i25:                                      ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #10
  %bw.i20 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 54
  %49 = ptrtoint ptr %bw.i20 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bw.i20, align 2
  %idxprom.i21 = zext i8 %50 to i32
  %arrayidx7.i22 = getelementptr %struct.reg_table, ptr %arrayidx.i14, i32 %idxprom.i21
  %n12.i23 = getelementptr %struct.reg_table, ptr %arrayidx.i14, i32 %idxprom.i21, i32 1
  br label %cleanup.sink.split

if.else87:                                        ; preds = %if.else82
  %temp_mode.i28 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 49
  %51 = ptrtoint ptr %temp_mode.i28 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %temp_mode.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp.i29 = icmp eq i32 %52, 2
  br i1 %cmp.i29, label %if.else87.cleanup_crit_edge, label %if.end.i35

if.else87.cleanup_crit_edge:                      ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i35:                                       ; preds = %if.else87
  %53 = ptrtoint ptr %temp_mode.i28 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %temp_mode.i28, align 4
  tail call fastcc void @trace_temp_mode(ptr noundef %dev, i8 noundef zeroext 2) #8
  %54 = ptrtoint ptr %temp_mode.i28 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %temp_mode.i28, align 4
  %arrayidx.i30 = getelementptr [3 x [3 x %struct.reg_table]], ptr @bbp_mode_table, i32 0, i32 %55
  %arrayidx3.i31 = getelementptr %struct.reg_table, ptr %arrayidx.i30, i32 2
  %56 = ptrtoint ptr %arrayidx3.i31 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx3.i31, align 4
  %n.i32 = getelementptr %struct.reg_table, ptr %arrayidx.i30, i32 2, i32 1
  %58 = ptrtoint ptr %n.i32 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %n.i32, align 4
  %call.i33 = tail call i32 @mt7601u_write_reg_pairs(ptr noundef %dev, i32 noundef 1073741824, ptr noundef %57, i32 noundef %59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool.not.i34 = icmp eq i32 %call.i33, 0
  br i1 %tobool.not.i34, label %if.end6.i41, label %if.end.i35.cleanup_crit_edge

if.end.i35.cleanup_crit_edge:                     ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i41:                                      ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #10
  %bw.i36 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 54
  %60 = ptrtoint ptr %bw.i36 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bw.i36, align 2
  %idxprom.i37 = zext i8 %61 to i32
  %arrayidx7.i38 = getelementptr %struct.reg_table, ptr %arrayidx.i30, i32 %idxprom.i37
  %n12.i39 = getelementptr %struct.reg_table, ptr %arrayidx.i30, i32 %idxprom.i37, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end6.i41, %if.end6.i25, %if.end6.i
  %n12.i39.sink = phi ptr [ %n12.i39, %if.end6.i41 ], [ %n12.i23, %if.end6.i25 ], [ %n12.i, %if.end6.i ]
  %.sink.in = phi ptr [ %arrayidx7.i38, %if.end6.i41 ], [ %arrayidx7.i22, %if.end6.i25 ], [ %arrayidx7.i, %if.end6.i ]
  %62 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %62)
  %.sink = load ptr, ptr %.sink.in, align 4
  %63 = ptrtoint ptr %n12.i39.sink to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %n12.i39.sink, align 4
  %call13.i40 = tail call i32 @mt7601u_write_reg_pairs(ptr noundef %dev, i32 noundef 1073741824, ptr noundef %.sink, i32 noundef %64) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i35.cleanup_crit_edge, %if.else87.cleanup_crit_edge, %if.end.i19.cleanup_crit_edge, %if.then85.cleanup_crit_edge, %if.end.i10.cleanup_crit_edge, %if.then80.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_read_temp(ptr noundef %dev, i8 noundef zeroext %val) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_temp, i32 0, i32 1), ptr blockaddress(@trace_read_temp, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !193

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !194

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !206
  %call42 = tail call i32 @__traceiter_read_temp(ptr noundef null, ptr noundef %dev, i8 noundef zeroext %val) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !207
  %13 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !194

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_temp, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_temp, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_read_temp.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_read_temp.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 223, ptr noundef nonnull @.str.15) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !198
  %31 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_read_temp(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_temp_mode(ptr noundef %dev, i8 noundef zeroext %val) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_temp_mode, i32 0, i32 1), ptr blockaddress(@trace_temp_mode, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !193

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !194

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !208
  %call42 = tail call i32 @__traceiter_temp_mode(ptr noundef null, ptr noundef %dev, i8 noundef zeroext %val) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !209
  %13 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !194

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_temp_mode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_temp_mode, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_temp_mode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_temp_mode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 218, ptr noundef nonnull @.str.15) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !198
  %31 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_temp_mode(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7601u_tssi_cal(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.mt7601u_tssi_params, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ee = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ee, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %chandef.i.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %chandef.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef.i.i, align 8
  %hw_value.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %hw_value.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hw_value.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %arrayidx.i.i = getelementptr %struct.mt7601u_eeprom_params, ptr %1, i32 0, i32 5, i32 %sub.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %9)
  %cmp.i = icmp ult i8 %9, 21
  %tssi_read_trig = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 44
  %10 = ptrtoint ptr %tssi_read_trig to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tssi_read_trig, align 8, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not = icmp eq i8 %11, 0
  br i1 %tobool1.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %call.i = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47) #8
  %and.i = and i32 %call.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  call fastcc void @mt7601u_tssi_params_get(ptr nonnull sret(%struct.mt7601u_tssi_params) align 4 %tmp, ptr noundef %dev)
  %12 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %12)
  %params.sroa.0.0.copyload244 = load i8, ptr %tmp, align 4
  %params.sroa.7245.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 4
  %13 = ptrtoint ptr %params.sroa.7245.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %params.sroa.7245.0.copyload246 = load i32, ptr %params.sroa.7245.0.tmp.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  %tssi_init_hvga = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 46
  %tssi_init12 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 45
  %cond.in.in = select i1 %cmp.i, ptr %tssi_init_hvga, ptr %tssi_init12
  %14 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %14)
  %cond.in1 = load i8, ptr %cond.in.in, align 1
  %conv15 = zext i8 %params.sroa.0.0.copyload244 to i32
  %conv16 = sext i8 %cond.in1 to i32
  %sub = sub nsw i32 %conv15, %conv16
  %conv17 = trunc i32 %sub to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv17)
  %tobool.not.i9 = icmp eq i16 %conv17, 0
  br i1 %tobool.not.i9, label %do.end.i, label %if.end23.i, !prof !191

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 604, i32 noundef 9, ptr noundef null) #8
  br label %lin2dBd.exit

if.end23.i:                                       ; preds = %if.end8
  %conv.i = and i32 %sub, 65535
  %15 = tail call i32 @llvm.ctlz.i32(i32 %conv.i, i1 true) #8, !range !205
  %.neg.i = mul nsw i32 %15, -65536
  %sext.i = add nsw i32 %.neg.i, 1048576
  %conv25.i = ashr exact i32 %sext.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048576, i32 %.neg.i)
  %cmp.i10 = icmp sgt i32 %.neg.i, -1048576
  br i1 %cmp.i10, label %if.then27.i, label %if.else.i

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = lshr i32 %conv.i, %conv25.i
  br label %if.end36.i

if.else.i:                                        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %15)
  %cmp31.not.i = icmp eq i32 %15, 16
  %sub34.i = sub nsw i32 0, %conv25.i
  %cond.i = select i1 %cmp31.not.i, i32 0, i32 %sub34.i
  %shl.i = shl nuw i32 %conv.i, %cond.i
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else.i, %if.then27.i
  %mantisa.0.i = phi i32 [ %shr.i, %if.then27.i ], [ %shl.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 47105, i32 %mantisa.0.i)
  %cmp37.i = icmp ult i32 %mantisa.0.i, 47105
  %shr40.i = lshr i32 %mantisa.0.i, 3
  br i1 %cmp37.i, label %if.then39.i, label %if.else44.i

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr41.i = lshr i32 %mantisa.0.i, 4
  %add.i = add nsw i32 %mantisa.0.i, -38400
  %add42.i = add nsw i32 %add.i, %shr40.i
  %sub43.i = add nsw i32 %add42.i, %shr41.i
  br label %if.end50.i

if.else44.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr47.i = lshr i32 %mantisa.0.i, 6
  %.neg = add i32 %mantisa.0.i, -23040
  %16 = add nuw nsw i32 %shr40.i, %shr47.i
  %sub49.i = sub i32 %.neg, %16
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.else44.i, %if.then39.i
  %app.0.i = phi i32 [ %sub43.i, %if.then39.i ], [ %sub49.i, %if.else44.i ]
  %17 = tail call i32 @llvm.smax.i32(i32 %app.0.i, i32 0) #8
  %add56.i = ashr exact i32 %sext.i, 1
  %shl57.i = add nsw i32 %add56.i, 491520
  %add58.i = add i32 %shl57.i, %17
  %add61.i = mul i32 %add58.i, 6
  %18 = lshr i32 %add58.i, 6
  %add63.i = add i32 %add61.i, %18
  %shr64.i = ashr i32 %add58.i, 7
  %add65.i = add i32 %add63.i, %shr64.i
  %19 = lshr i32 %add65.i, 10
  %conv67.i = trunc i32 %19 to i16
  br label %lin2dBd.exit

lin2dBd.exit:                                     ; preds = %if.end50.i, %do.end.i
  %retval.0.i11 = phi i16 [ -10000, %do.end.i ], [ %conv67.i, %if.end50.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7601u_tssi_cal.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7601u_tssi_cal, %if.then25)) #8
          to label %do.end [label %if.then25], !srcloc !193

if.then25:                                        ; preds = %lin2dBd.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev26 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %20 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev26, align 4
  %conv28 = sext i16 %retval.0.i11 to i32
  %conv30 = zext i1 %cmp.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7601u_tssi_cal.__UNIQUE_ID_ddebug504, ptr noundef %21, ptr noundef nonnull @.str.46, i32 noundef %sub, i32 noundef %conv28, i32 noundef %conv30) #8
  br label %do.end

do.end:                                           ; preds = %if.then25, %lin2dBd.exit
  %22 = ptrtoint ptr %chandef.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chandef.i.i, align 8
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hw_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %25)
  %cmp = icmp ult i16 %25, 5
  br i1 %cmp, label %if.then34, label %if.else

if.then34:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ee, align 8
  %offset = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %27, i32 0, i32 8, i32 2
  br label %if.end53

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %25)
  %cmp40 = icmp ult i16 %25, 9
  %28 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ee, align 8
  br i1 %cmp40, label %if.then42, label %if.else47

if.then42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx46 = getelementptr %struct.mt7601u_eeprom_params, ptr %29, i32 0, i32 8, i32 2, i32 1
  br label %if.end53

if.else47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx51 = getelementptr %struct.mt7601u_eeprom_params, ptr %29, i32 0, i32 8, i32 2, i32 2
  br label %if.end53

if.end53:                                         ; preds = %if.else47, %if.then42, %if.then34
  %tssi_offset.0.in = phi ptr [ %offset, %if.then34 ], [ %arrayidx46, %if.then42 ], [ %arrayidx51, %if.else47 ]
  %30 = ptrtoint ptr %tssi_offset.0.in to i32
  call void @__asan_load1_noabort(i32 %30)
  %tssi_offset.0 = load i8, ptr %tssi_offset.0.in, align 1
  br i1 %cmp.i, label %if.then55, label %if.end53.if.end60_crit_edge

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %tssi_init_hvga_offset_db = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 47
  %31 = ptrtoint ptr %tssi_init_hvga_offset_db to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %tssi_init_hvga_offset_db, align 4
  %sub58 = sub i16 %retval.0.i11, %32
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %if.end53.if.end60_crit_edge
  %tssi_db.0 = phi i16 [ %sub58, %if.then55 ], [ %retval.0.i11, %if.end53.if.end60_crit_edge ]
  %conv61 = sext i16 %tssi_db.0 to i32
  %33 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ee, align 8
  %slope = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %34, i32 0, i32 8, i32 1
  %35 = ptrtoint ptr %slope to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %slope, align 4
  %conv64 = zext i8 %36 to i32
  %mul = mul nsw i32 %conv64, %conv61
  %conv65 = zext i8 %tssi_offset.0 to i32
  %shl = shl nuw nsw i32 %conv65, 9
  %add = add nsw i32 %mul, %shl
  %sub66 = sub i32 %params.sroa.7245.0.copyload246, %add
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7601u_tssi_cal.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7601u_tssi_cal, %if.then79)) #8
          to label %do.end83 [label %if.then79], !srcloc !193

if.then79:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %dev80 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %37 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev80, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7601u_tssi_cal.__UNIQUE_ID_ddebug505, ptr noundef %38, ptr noundef nonnull @.str.47, i32 noundef %add, i32 noundef %sub66) #8
  br label %do.end83

do.end83:                                         ; preds = %if.then79, %if.end60
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %params.sroa.0.0.copyload244)
  %cmp86 = icmp ugt i8 %params.sroa.0.0.copyload244, 126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub66)
  %cmp88 = icmp sgt i32 %sub66, 0
  %or.cond = select i1 %cmp86, i1 %cmp88, i1 false
  br i1 %or.cond, label %do.end83.if.end110.sink.split_crit_edge, label %if.end95

do.end83.if.end110.sink.split_crit_edge:          ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110.sink.split

if.end95:                                         ; preds = %do.end83
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp100 = icmp slt i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub66)
  %cmp103 = icmp slt i32 %sub66, 0
  %or.cond2 = select i1 %cmp100, i1 %cmp103, i1 false
  br i1 %or.cond2, label %if.end95.if.end110.sink.split_crit_edge, label %if.end95.if.end110_crit_edge

if.end95.if.end110_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.end95.if.end110.sink.split_crit_edge:          ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110.sink.split

if.end110.sink.split:                             ; preds = %if.end95.if.end110.sink.split_crit_edge, %do.end83.if.end110.sink.split_crit_edge
  %.str.48.sink = phi ptr [ @.str.48, %do.end83.if.end110.sink.split_crit_edge ], [ @.str.50, %if.end95.if.end110.sink.split_crit_edge ]
  %dev94 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %39 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev94, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull %.str.48.sink) #11
  br label %if.end110

if.end110:                                        ; preds = %if.end110.sink.split, %if.end95.if.end110_crit_edge
  %diff_pwr.1 = phi i32 [ %sub66, %if.end95.if.end110_crit_edge ], [ 0, %if.end110.sink.split ]
  %prev_pwr_diff = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 48
  %41 = ptrtoint ptr %prev_pwr_diff to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %prev_pwr_diff, align 8
  %xor = xor i32 %42, %diff_pwr.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %cmp111 = icmp slt i32 %xor, 0
  br i1 %cmp111, label %land.lhs.true113, label %if.end110.if.end156_crit_edge

if.end110.if.end156_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end156

land.lhs.true113:                                 ; preds = %if.end110
  %43 = tail call i32 @llvm.abs.i32(i32 %diff_pwr.1, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %43)
  %cmp122 = icmp slt i32 %43, 4096
  br i1 %cmp122, label %land.lhs.true124, label %land.lhs.true113.if.end156_crit_edge

land.lhs.true113.if.end156_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end156

land.lhs.true124:                                 ; preds = %land.lhs.true113
  %sub140 = sub i32 0, %42
  %44 = tail call i32 @llvm.abs.i32(i32 %42, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %44)
  %cmp144 = icmp sgt i32 %43, %44
  br i1 %cmp144, label %land.lhs.true124.if.end156.thread_crit_edge, label %lor.lhs.false

land.lhs.true124.if.end156.thread_crit_edge:      ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end156.thread

lor.lhs.false:                                    ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %diff_pwr.1)
  %cmp146 = icmp sgt i32 %diff_pwr.1, 0
  br i1 %cmp146, label %land.lhs.true148, label %if.end156.thread29

if.end156.thread29:                               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %prev_pwr_diff to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %diff_pwr.1, ptr %prev_pwr_diff, align 8
  br label %if.end156.thread

land.lhs.true148:                                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %diff_pwr.1, i32 %sub140)
  %cmp151 = icmp eq i32 %diff_pwr.1, %sub140
  br i1 %cmp151, label %land.lhs.true148.if.end156.thread_crit_edge, label %if.end156.thread27

land.lhs.true148.if.end156.thread_crit_edge:      ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end156.thread

if.end156.thread27:                               ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %prev_pwr_diff to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %diff_pwr.1, ptr %prev_pwr_diff, align 8
  br label %48

if.end156:                                        ; preds = %land.lhs.true113.if.end156_crit_edge, %if.end110.if.end156_crit_edge
  %47 = ptrtoint ptr %prev_pwr_diff to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %diff_pwr.1, ptr %prev_pwr_diff, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %diff_pwr.1)
  %cmp157 = icmp sgt i32 %diff_pwr.1, 0
  br i1 %cmp157, label %if.end156._crit_edge, label %if.end156.if.end156.thread_crit_edge

if.end156.if.end156.thread_crit_edge:             ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end156.thread

if.end156._crit_edge:                             ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  br label %48

48:                                               ; preds = %if.end156._crit_edge, %if.end156.thread27
  br label %if.end156.thread

if.end156.thread:                                 ; preds = %48, %if.end156.if.end156.thread_crit_edge, %land.lhs.true148.if.end156.thread_crit_edge, %if.end156.thread29, %land.lhs.true124.if.end156.thread_crit_edge
  %diff_pwr.226 = phi i32 [ %diff_pwr.1, %48 ], [ %diff_pwr.1, %if.end156.if.end156.thread_crit_edge ], [ %diff_pwr.1, %if.end156.thread29 ], [ 0, %land.lhs.true148.if.end156.thread_crit_edge ], [ 0, %land.lhs.true124.if.end156.thread_crit_edge ]
  %49 = phi i32 [ 2048, %48 ], [ -2048, %if.end156.if.end156.thread_crit_edge ], [ -2048, %if.end156.thread29 ], [ -2048, %land.lhs.true148.if.end156.thread_crit_edge ], [ -2048, %land.lhs.true124.if.end156.thread_crit_edge ]
  %add160 = add i32 %49, %diff_pwr.226
  %div = sdiv i32 %add160, 4096
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7601u_tssi_cal.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7601u_tssi_cal, %if.then173)) #8
          to label %do.end177 [label %if.then173], !srcloc !193

if.then173:                                       ; preds = %if.end156.thread
  call void @__sanitizer_cov_trace_pc() #10
  %dev174 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %50 = ptrtoint ptr %dev174 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev174, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7601u_tssi_cal.__UNIQUE_ID_ddebug506, ptr noundef %51, ptr noundef nonnull @.str.52, i32 noundef %div) #8
  br label %do.end177

do.end177:                                        ; preds = %if.then173, %if.end156.thread
  %call178 = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 5044) #8
  %and = and i32 %call178, 63
  %and.i12 = and i32 %call178, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12)
  %tobool.not.i13 = icmp eq i32 %and.i12, 0
  %masksel.i = select i1 %tobool.not.i13, i32 0, i32 -64
  %spec.select.i = or i32 %masksel.i, %and
  %add196 = add nsw i32 %spec.select.i, %div
  %and197 = and i32 %call178, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %add196)
  %cmp.i14 = icmp slt i32 %add196, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add196)
  %cmp1.i = icmp sgt i32 %add196, 31
  %and.i15 = and i32 %add196, 63
  %spec.select.i16 = select i1 %cmp1.i, i32 31, i32 %and.i15
  %retval.0.i17 = select i1 %cmp.i14, i32 32, i32 %spec.select.i16
  %or = or i32 %retval.0.i17, %and197
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 5044, i32 noundef %or) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end177, %if.end.cleanup.sink.split_crit_edge
  %conv200 = zext i1 %cmp.i to i32
  %call201 = tail call i32 @mt7601u_mcu_tssi_read_kick(ptr noundef %dev, i32 noundef %conv200) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_mcu_tssi_read_kick(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7601u_tssi_params_get(ptr noalias nocapture sret(%struct.mt7601u_tssi_params) align 4 %agg.result, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 -1, ptr %agg.result, align 4, !annotation !210
  %call = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 47)
  %conv = trunc i32 %call to i8
  %1 = and i8 %conv, -8
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 47, i8 noundef zeroext %1) #8
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 700, i32 noundef 2) #8
  %call.i = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 49) #8
  %conv3.i = trunc i32 %call.i to i8
  %2 = ptrtoint ptr %agg.result to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv3.i, ptr %agg.result, align 4
  %or6.i = or i8 %1, 4
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 47, i8 noundef zeroext %or6.i) #8
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 700, i32 noundef 2) #8
  %call.i138 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 49) #8
  %conv3.i139 = trunc i32 %call.i138 to i8
  %raw_temp = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 52
  %3 = ptrtoint ptr %raw_temp to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3.i139, ptr %raw_temp, align 8
  %or6.i140 = or i8 %1, 1
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 47, i8 noundef zeroext %or6.i140) #8
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 700, i32 noundef 2) #8
  %call.i141 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 49) #8
  %ee.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ee.i, align 8
  %chandef.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chandef.i, align 8
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hw_value.i, align 2
  %conv.i = zext i16 %9 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr %struct.mt7601u_eeprom_params, ptr %5, i32 0, i32 5, i32 %sub.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %conv1.i = zext i8 %11 to i32
  %trgt_power = getelementptr inbounds %struct.mt7601u_tssi_params, ptr %agg.result, i32 0, i32 1
  %conv5 = and i32 %call.i141, 255
  %and = and i32 %call.i141, 3
  %12 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv3.i142 = trunc i32 %call.i141 to i8
  %13 = lshr i8 %conv3.i142, 4
  %and7 = and i8 %13, 3
  %power_rate_table = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %5, i32 0, i32 6
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = lshr i32 %call.i141, 4
  %and12 = and i32 %14, 7
  %arrayidx = getelementptr [8 x i8], ptr @mt7601u_tssi_params_get.ofdm_pkt2rate, i32 0, i32 %and12
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %ofdm = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %5, i32 0, i32 6, i32 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or6.i143 = or i8 %1, 2
  tail call fastcc void @mt7601u_bbp_wr(ptr noundef %dev, i8 noundef zeroext 47, i8 noundef zeroext %or6.i143) #8
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 700, i32 noundef 2) #8
  %call.i144 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 49) #8
  %conv3.i145 = trunc i32 %call.i144 to i8
  %17 = and i8 %conv3.i145, 127
  %18 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ee.i, align 8
  %ht = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %19, i32 0, i32 6, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb
  %rate_table.0 = phi ptr [ %ht, %sw.default ], [ %ofdm, %sw.bb9 ], [ %power_rate_table, %sw.bb ]
  %tx_rate.0 = phi i8 [ %17, %sw.default ], [ %16, %sw.bb9 ], [ %and7, %sw.bb ]
  %bw = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 54
  %20 = ptrtoint ptr %bw to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bw, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp = icmp eq i8 %21, 0
  %22 = lshr i8 %tx_rate.0, 1
  %div = zext i8 %22 to i32
  %bw40 = getelementptr %struct.power_per_rate, ptr %rate_table.0, i32 %div, i32 2
  %bw20 = getelementptr %struct.power_per_rate, ptr %rate_table.0, i32 %div, i32 1
  %conv32.pn.in.in = select i1 %cmp, ptr %bw20, ptr %bw40
  %23 = ptrtoint ptr %conv32.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %23)
  %conv32.pn.in = load i8, ptr %conv32.pn.in.in, align 1
  %conv32.pn = sext i8 %conv32.pn.in to i32
  %storemerge = add nsw i32 %conv32.pn, %conv1.i
  %shl = shl nsw i32 %storemerge, 12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7601u_tssi_params_get.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7601u_tssi_params_get, %if.then39)) #8
          to label %do.end [label %if.then39], !srcloc !193

if.then39:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %dev40 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %24 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev40, align 4
  %conv41 = zext i8 %tx_rate.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7601u_tssi_params_get.__UNIQUE_ID_ddebug502, ptr noundef %25, ptr noundef nonnull @.str.54, i32 noundef %conv41, i32 noundef %shl) #8
  br label %do.end

do.end:                                           ; preds = %if.then39, %sw.epilog
  %conv46 = zext i8 %tx_rate.0 to i32
  %26 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %and, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 0, label %do.end.sw.bb1.i_crit_edge
  ]

do.end.sw.bb1.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

sw.bb.i:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %conv46, 4
  br label %sw.bb1.i

sw.bb1.i:                                         ; preds = %sw.bb.i, %do.end.sw.bb1.i_crit_edge
  %tx_rate.addr.0.i = phi i32 [ %conv46, %do.end.sw.bb1.i_crit_edge ], [ %add.i, %sw.bb.i ]
  %rf_pa_mode.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 56
  br label %mt7601u_phy_rf_pa_mode_val.exit

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3.i = getelementptr %struct.mt7601u_dev, ptr %dev, i32 0, i32 56, i32 1
  br label %mt7601u_phy_rf_pa_mode_val.exit

mt7601u_phy_rf_pa_mode_val.exit:                  ; preds = %sw.default.i, %sw.bb1.i
  %tx_rate.addr.1.i = phi i32 [ %conv46, %sw.default.i ], [ %tx_rate.addr.0.i, %sw.bb1.i ]
  %reg.0.in.i = phi ptr [ %arrayidx3.i, %sw.default.i ], [ %rf_pa_mode.i, %sw.bb1.i ]
  %27 = ptrtoint ptr %reg.0.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %reg.0.i = load i32, ptr %reg.0.in.i, align 4
  %mul.i = shl nuw nsw i32 %tx_rate.addr.1.i, 1
  %shr.i = lshr i32 %reg.0.i, %mul.i
  %and.i = and i32 %shr.i, 3
  %arrayidx4.i = getelementptr [4 x i16], ptr @mt7601u_phy_rf_pa_mode_val.decode_tb, i32 0, i32 %and.i
  %28 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx4.i, align 2
  %conv48 = sext i16 %29 to i32
  %add50 = add nsw i32 %shl, %conv48
  %30 = ptrtoint ptr %trgt_power to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add50, ptr %trgt_power, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp53 = icmp eq i32 %and, 0
  br i1 %cmp53, label %if.then55, label %mt7601u_phy_rf_pa_mode_val.exit.if.end71_crit_edge

mt7601u_phy_rf_pa_mode_val.exit.if.end71_crit_edge: ; preds = %mt7601u_phy_rf_pa_mode_val.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then55:                                        ; preds = %mt7601u_phy_rf_pa_mode_val.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call56 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 4)
  %and57 = and i32 %call56, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %call65 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext -78)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  %cond = select i1 %tobool66.not, i32 9830, i32 18022
  %cond67 = select i1 %tobool66.not, i32 24576, i32 819
  %cond.sink = select i1 %tobool58.not, i32 %cond67, i32 %cond
  %add63 = add nsw i32 %cond.sink, %add50
  %31 = ptrtoint ptr %trgt_power to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add63, ptr %trgt_power, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then55, %mt7601u_phy_rf_pa_mode_val.exit.if.end71_crit_edge
  %call72 = tail call fastcc i32 @mt7601u_bbp_rr(ptr noundef %dev, i8 noundef zeroext 1)
  %and73 = and i32 %call72, 3
  %arrayidx74 = getelementptr [4 x i32], ptr @mt7601u_tssi_params_get.static_power, i32 0, i32 %and73
  %32 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx74, align 4
  %34 = ptrtoint ptr %trgt_power to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %trgt_power, align 4
  %add76 = add i32 %35, %33
  %36 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ee.i, align 8
  %tssi_data = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %tssi_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tssi_data, align 4
  %add79 = add i32 %39, %add76
  store i32 %add79, ptr %trgt_power, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7601u_tssi_params_get.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7601u_tssi_params_get, %if.then92)) #8
          to label %do.end102 [label %if.then92], !srcloc !193

if.then92:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %dev93 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %40 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev93, align 4
  %conv95 = and i32 %call.i, 255
  %42 = ptrtoint ptr %raw_temp to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %raw_temp, align 8
  %conv98 = sext i8 %43 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7601u_tssi_params_get.__UNIQUE_ID_ddebug503, ptr noundef %41, ptr noundef nonnull @.str.55, i32 noundef %conv95, i32 noundef %add79, i32 noundef %conv98, i32 noundef %conv5) #8
  br label %do.end102

do.end102:                                        ; preds = %if.then92, %if.end71
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_freq_cal_offset(ptr noundef %dev, i8 noundef zeroext %phy_mode, i8 noundef signext %freq_off) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_freq_cal_offset, i32 0, i32 1), ptr blockaddress(@trace_freq_cal_offset, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !193

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !194

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !211
  %call42 = tail call i32 @__traceiter_freq_cal_offset(ptr noundef null, ptr noundef %dev, i8 noundef zeroext %phy_mode, i8 noundef signext %freq_off) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !212
  %13 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !194

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_freq_cal_offset, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_freq_cal_offset, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_freq_cal_offset.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_freq_cal_offset.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 245, ptr noundef nonnull @.str.15) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !198
  %31 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_freq_cal_adjust(ptr noundef %dev, i8 noundef zeroext %val) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_freq_cal_adjust, i32 0, i32 1), ptr blockaddress(@trace_freq_cal_adjust, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !193

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !194

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !213
  %call42 = tail call i32 @__traceiter_freq_cal_adjust(ptr noundef null, ptr noundef %dev, i8 noundef zeroext %val) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !214
  %13 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !194

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_freq_cal_adjust, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_freq_cal_adjust, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_freq_cal_adjust.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_freq_cal_adjust.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 228, ptr noundef nonnull @.str.15) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !198
  %31 = tail call i32 @llvm.read_register.i32(metadata !181) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_freq_cal_offset(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_freq_cal_adjust(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !51, !53, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103, !104, !106, !107, !109, !111, !113, !115, !116, !118, !119, !120, !122, !123, !125, !126, !127, !129, !130, !132, !133, !135, !137, !139, !141, !142, !144, !145, !146, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !162, !164, !166, !167, !168, !170, !171, !173, !175, !177, !178, !180}
!llvm.named.register.sp = !{!181}
!llvm.module.flags = !{!182, !183, !184, !185, !186, !187, !188, !189}
!llvm.ident = !{!190}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 221, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt7601u_wait_bbp_ready._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt7601u_wait_bbp_ready._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @mt7601u_phy_get_rssi.lna, !9, !"lna", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 236, i32 18}
!10 = !{ptr @mt7601u_phy_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 1251, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mt7601u_phy_init.__key.6, !11, !"__key", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mt7601u_phy_init.__key.8, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 1252, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mt7601u_phy_init.__key.10, !16, !"__key", i1 false, i1 false}
!19 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 176, i32 3}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mt7601u_bbp_rr._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @mt7601u_bbp_rr._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/mediatek/mt7601u/trace.h", i32 189, i32 1}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!29 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @__mt7601u_phy_set_channel.freq_plan, !34, !"freq_plan", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 346, i32 18}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 392, i32 4}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__mt7601u_phy_set_channel._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @__mt7601u_phy_set_channel._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 396, i32 3}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @__mt7601u_phy_set_channel.__UNIQUE_ID_ddebug497, !41, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/net/cfg80211.h", i32 778, i32 3}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 88, i32 3}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mt7601u_rf_rr._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @mt7601u_rf_rr._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/mediatek/mt7601u/trace.h", i32 161, i32 1}
!53 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!54 = !{ptr @mt7601u_rxdc_cal.intro, !55, !"intro", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 550, i32 36}
!56 = !{ptr @mt7601u_rxdc_cal.outro, !57, !"outro", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 553, i32 5}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 565, i32 3}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mt7601u_rxdc_cal._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @mt7601u_rxdc_cal._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 575, i32 3}
!65 = !{ptr @mt7601u_rxdc_cal._entry.26, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @mt7601u_rxdc_cal._entry_ptr.28, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 582, i32 3}
!69 = !{ptr @mt7601u_rxdc_cal._entry.29, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @mt7601u_rxdc_cal._entry_ptr.31, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 131, i32 3}
!73 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @mt7601u_bbp_wr._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @mt7601u_bbp_wr._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/mediatek/mt7601u/trace.h", i32 194, i32 1}
!78 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!79 = !{ptr @bbp_mode_table, !80, !"bbp_mode_table", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/mediatek/mt7601u/initvals_phy.h", i32 267, i32 3}
!81 = !{ptr @bbp_normal_temp_bw20, !82, !"bbp_normal_temp_bw20", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/mediatek/mt7601u/initvals_phy.h", i32 246, i32 4}
!83 = !{ptr @bbp_normal_temp_bw40, !84, !"bbp_normal_temp_bw40", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/mediatek/mt7601u/initvals_phy.h", i32 253, i32 4}
!85 = !{ptr @bbp_normal_temp, !86, !"bbp_normal_temp", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/mediatek/mt7601u/initvals_phy.h", i32 241, i32 4}
!87 = !{ptr @bbp_high_temp_bw20, !88, !"bbp_high_temp_bw20", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/mediatek/mt7601u/initvals_phy.h", i32 205, i32 4}
!89 = !{ptr @bbp_high_temp_bw40, !90, !"bbp_high_temp_bw40", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/mediatek/mt7601u/initvals_phy.h", i32 212, i32 4}
!91 = !{ptr @bbp_high_temp, !92, !"bbp_high_temp", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/mediatek/mt7601u/initvals_phy.h", i32 200, i32 35}
!93 = !{ptr @bbp_low_temp_bw20, !94, !"bbp_low_temp_bw20", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/mediatek/mt7601u/initvals_phy.h", i32 221, i32 4}
!95 = !{ptr @bbp_low_temp_bw40, !96, !"bbp_low_temp_bw40", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/mediatek/mt7601u/initvals_phy.h", i32 231, i32 4}
!97 = !{ptr @bbp_low_temp, !98, !"bbp_low_temp", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/mediatek/mt7601u/initvals_phy.h", i32 219, i32 4}
!99 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 47, i32 3}
!101 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @mt7601u_rf_wr._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @mt7601u_rf_wr._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/mediatek/mt7601u/trace.h", i32 166, i32 1}
!106 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!107 = !{ptr @rf_central, !108, !"rf_central", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/mediatek/mt7601u/initvals_phy.h", i32 13, i32 35}
!109 = !{ptr @rf_channel, !110, !"rf_channel", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/mediatek/mt7601u/initvals_phy.h", i32 67, i32 35}
!111 = !{ptr @rf_vga, !112, !"rf_vga", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/mediatek/mt7601u/initvals_phy.h", i32 135, i32 35}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/mediatek/mt7601u/trace.h", i32 220, i32 1}
!115 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!116 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 687, i32 4}
!118 = !{ptr @mt7601u_tssi_dc_gain_cal._entry, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @mt7601u_tssi_dc_gain_cal._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.37, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 700, i32 2}
!122 = !{ptr @mt7601u_tssi_dc_gain_cal.__UNIQUE_ID_ddebug498, !121, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!123 = !{ptr @.str.38, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 739, i32 3}
!125 = !{ptr @.str.39, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @mt7601u_temp_comp.__UNIQUE_ID_ddebug499, !124, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!127 = !{ptr @.str.40, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 749, i32 3}
!129 = !{ptr @mt7601u_temp_comp.__UNIQUE_ID_ddebug500, !128, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!130 = !{ptr @.str.41, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 756, i32 3}
!132 = !{ptr @mt7601u_temp_comp.__UNIQUE_ID_ddebug501, !131, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!133 = distinct !{null, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 766, i32 51}
!135 = distinct !{null, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 768, i32 53}
!137 = distinct !{null, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 770, i32 50}
!139 = distinct !{null, !140, !"__already_done", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/mediatek/mt7601u/trace.h", i32 215, i32 1}
!141 = distinct !{null, !140, !"__warned", i1 false, i1 false}
!142 = !{ptr @.str.45, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 901, i32 2}
!144 = !{ptr @.str.46, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @mt7601u_tssi_cal.__UNIQUE_ID_ddebug504, !143, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!146 = !{ptr @.str.47, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 916, i32 2}
!148 = !{ptr @mt7601u_tssi_cal.__UNIQUE_ID_ddebug505, !147, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!149 = !{ptr @.str.48, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 919, i32 3}
!151 = !{ptr @mt7601u_tssi_cal._entry, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @mt7601u_tssi_cal._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.50, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 923, i32 3}
!155 = !{ptr @mt7601u_tssi_cal._entry.49, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @mt7601u_tssi_cal._entry_ptr.51, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.52, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 937, i32 2}
!159 = !{ptr @mt7601u_tssi_cal.__UNIQUE_ID_ddebug506, !158, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!160 = !{ptr @mt7601u_tssi_params_get.ofdm_pkt2rate, !161, !"ofdm_pkt2rate", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 808, i32 18}
!162 = !{ptr @mt7601u_tssi_params_get.static_power, !163, !"static_power", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 809, i32 19}
!164 = !{ptr @.str.53, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 847, i32 2}
!166 = !{ptr @.str.54, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @mt7601u_tssi_params_get.__UNIQUE_ID_ddebug502, !165, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!168 = !{ptr @.str.55, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 864, i32 2}
!170 = !{ptr @mt7601u_tssi_params_get.__UNIQUE_ID_ddebug503, !169, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!171 = !{ptr @mt7601u_phy_rf_pa_mode_val.decode_tb, !172, !"decode_tb", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/mediatek/mt7601u/phy.c", i32 787, i32 19}
!173 = distinct !{null, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/mediatek/mt7601u/eeprom.h", i32 118, i32 2}
!175 = distinct !{null, !176, !"__already_done", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/mediatek/mt7601u/trace.h", i32 230, i32 1}
!177 = distinct !{null, !176, !"__warned", i1 false, i1 false}
!178 = distinct !{null, !179, !"__already_done", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/mediatek/mt7601u/trace.h", i32 225, i32 1}
!180 = distinct !{null, !179, !"__warned", i1 false, i1 false}
!181 = !{!"sp"}
!182 = !{i32 1, !"wchar_size", i32 2}
!183 = !{i32 1, !"min_enum_size", i32 4}
!184 = !{i32 8, !"branch-target-enforcement", i32 0}
!185 = !{i32 8, !"sign-return-address", i32 0}
!186 = !{i32 8, !"sign-return-address-all", i32 0}
!187 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!188 = !{i32 7, !"uwtable", i32 1}
!189 = !{i32 7, !"frame-pointer", i32 2}
!190 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!191 = !{!"branch_weights", i32 1, i32 2000}
!192 = !{i8 0, i8 2}
!193 = !{i64 2148761152, i64 2148761157, i64 2148761170, i64 2148761214, i64 2148761248, i64 2148761269}
!194 = !{!"branch_weights", i32 2000, i32 1}
!195 = !{i64 2157867522}
!196 = !{i64 2157867727}
!197 = !{i64 2149365680}
!198 = !{i64 2149366716}
!199 = !{i64 2157835496}
!200 = !{i64 2157835711}
!201 = !{i64 2157883444}
!202 = !{i64 2157883651}
!203 = !{i64 2157851572}
!204 = !{i64 2157851789}
!205 = !{i32 0, i32 33}
!206 = !{i64 2157919087}
!207 = !{i64 2157919284}
!208 = !{i64 2157899263}
!209 = !{i64 2157899460}
!210 = !{!"auto-init"}
!211 = !{i64 2157951780}
!212 = !{i64 2157952019}
!213 = !{i64 2157935078}
!214 = !{i64 2157935287}
