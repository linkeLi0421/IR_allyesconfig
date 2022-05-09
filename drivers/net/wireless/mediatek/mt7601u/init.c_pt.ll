; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt7601u/init.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt7601u/init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mt76_reg_pair = type { i32, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
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
%struct.atomic_t = type { i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.mt7601u_rx_queue = type { ptr, [16 x %struct.mt7601u_dma_buf_rx], i32, i32, i32, i32 }
%struct.mt7601u_dma_buf_rx = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ewma_rssi = type { i32 }
%struct.mt7601u_freq_cal = type { %struct.delayed_work, i8, i8, i8 }
%struct.mac_stats = type { [6 x i64], [6 x i64], [2 x i64], [32 x i64], [2 x i64] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.mt76_wcid = type { i8, i8, i16, i8, i8 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.mt7601u_eeprom_params = type { i8, i8, [2 x i8], i8, i8, [14 x i8], %struct.mt7601u_rate_power, [2 x i8], %struct.tssi_data, %struct.reg_channel_bounds }
%struct.mt7601u_rate_power = type { [2 x %struct.power_per_rate], [4 x %struct.power_per_rate], [4 x %struct.power_per_rate] }
%struct.power_per_rate = type { i8, i8, i8 }
%struct.tssi_data = type { i32, i8, [3 x i8] }
%struct.reg_channel_bounds = type { i8, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }

@mt7601u_init_hardware.beacon_offsets = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 -16384, i16 -15872, i16 -15360, i16 -14848, i16 -14336, i16 -13824, i16 -13312, i16 -12800, i16 -12288, i16 -11776, i16 -11264, i16 -10752, i16 -10240, i16 -9728, i16 -9216, i16 -8704], [32 x i8] zeroinitializer }, align 32
@mt7601u_ops = external dso_local constant %struct.ieee80211_ops, align 4
@mt7601u_alloc_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&dev->vendor_req_mutex\00", [41 x i8] zeroinitializer }, align 32
@mt7601u_alloc_device.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&dev->reg_atomic_mutex\00", [41 x i8] zeroinitializer }, align 32
@mt7601u_alloc_device.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&dev->hw_atomic_mutex\00", [42 x i8] zeroinitializer }, align 32
@mt7601u_alloc_device.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->mutex\00", [20 x i8] zeroinitializer }, align 32
@mt7601u_alloc_device.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dev->tx_lock\00", [18 x i8] zeroinitializer }, align 32
@mt7601u_alloc_device.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dev->rx_lock\00", [18 x i8] zeroinitializer }, align 32
@mt7601u_alloc_device.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@mt7601u_alloc_device.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->mac_lock\00", [17 x i8] zeroinitializer }, align 32
@mt7601u_alloc_device.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&dev->con_mon_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt7601u\00", [24 x i8] zeroinitializer }, align 32
@mt7601u_register_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&dev->mac_work)->work)\00", [53 x i8] zeroinitializer }, align 32
@mt7601u_register_device.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&dev->mac_work)->timer\00", [39 x i8] zeroinitializer }, align 32
@mt7601u_register_device.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&dev->stat_work)->work)\00", [52 x i8] zeroinitializer }, align 32
@mt7601u_register_device.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&dev->stat_work)->timer\00", [38 x i8] zeroinitializer }, align 32
@mt7601u_mac_stop_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.27, i32 269, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Warning: TX DMA did not stop!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt7601u_mac_stop_hw\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/mediatek/mt7601u/init.c\00", [51 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7601u_mac_stop_hw._entry_ptr = internal global ptr @mt7601u_mac_stop_hw._entry, section ".printk_index", align 4
@mt7601u_mac_stop_hw._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.27, i32 279, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Warning: MAC TX did not stop!\0A\00", [33 x i8] zeroinitializer }, align 32
@mt7601u_mac_stop_hw._entry_ptr.32 = internal global ptr @mt7601u_mac_stop_hw._entry.30, section ".printk_index", align 4
@mt7601u_mac_stop_hw._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.27, i32 299, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Warning: MAC RX did not stop!\0A\00", [33 x i8] zeroinitializer }, align 32
@mt7601u_mac_stop_hw._entry_ptr.35 = internal global ptr @mt7601u_mac_stop_hw._entry.33, section ".printk_index", align 4
@mt7601u_mac_stop_hw._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.26, ptr @.str.27, i32 302, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Warning: RX DMA did not stop!\0A\00", [33 x i8] zeroinitializer }, align 32
@mt7601u_mac_stop_hw._entry_ptr.38 = internal global ptr @mt7601u_mac_stop_hw._entry.36, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mt7601u_set_wlan_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.27, i32 56, ptr @.str.41, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error: PLL and XTAL check failed!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt7601u_set_wlan_state\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mt7601u_set_wlan_state._entry_ptr = internal global ptr @mt7601u_set_wlan_state._entry, section ".printk_index", align 4
@mac_common_vals = internal constant { [27 x %struct.mt76_reg_pair], [40 x i8] } { [27 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 5128, i32 319 }, %struct.mt76_reg_pair { i32 5132, i32 32771 }, %struct.mt76_reg_pair { i32 4100, i32 0 }, %struct.mt76_reg_pair { i32 5120, i32 98199 }, %struct.mt76_reg_pair { i32 4356, i32 521 }, %struct.mt76_reg_pair { i32 4912, i32 0 }, %struct.mt76_reg_pair { i32 4916, i32 525830 }, %struct.mt76_reg_pair { i32 4944, i32 4128 }, %struct.mt76_reg_pair { i32 4936, i32 663696 }, %struct.mt76_reg_pair { i32 4120, i32 16383 }, %struct.mt76_reg_pair { i32 1032, i32 532619039 }, %struct.mt76_reg_pair { i32 1036, i32 159 }, %struct.mt76_reg_pair { i32 4940, i32 1204821775 }, %struct.mt76_reg_pair { i32 5124, i32 19 }, %struct.mt76_reg_pair { i32 4964, i32 91488259 }, %struct.mt76_reg_pair { i32 4968, i32 91488259 }, %struct.mt76_reg_pair { i32 4976, i32 66338948 }, %struct.mt76_reg_pair { i32 4980, i32 24395780 }, %struct.mt76_reg_pair { i32 4984, i32 66338948 }, %struct.mt76_reg_pair { i32 4972, i32 24395780 }, %struct.mt76_reg_pair { i32 4928, i32 22591 }, %struct.mt76_reg_pair { i32 4932, i32 17378080 }, %struct.mt76_reg_pair { i32 4992, i32 2359498 }, %struct.mt76_reg_pair { i32 5640, i32 2 }, %struct.mt76_reg_pair { i32 4352, i32 866390032 }, %struct.mt76_reg_pair { i32 4612, i32 0 }, %struct.mt76_reg_pair { i32 5388, i32 1 }], [40 x i8] zeroinitializer }, align 32
@mac_chip_vals = internal constant { [17 x %struct.mt76_reg_pair], [56 x i8] } { [17 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 592, i32 24656 }, %struct.mt76_reg_pair { i32 1052, i32 403703808 }, %struct.mt76_reg_pair { i32 1056, i32 942680096 }, %struct.mt76_reg_pair { i32 1024, i32 527360 }, %struct.mt76_reg_pair { i32 1028, i32 2138192927 }, %struct.mt76_reg_pair { i32 2048, i32 1 }, %struct.mt76_reg_pair { i32 2616, i32 0 }, %struct.mt76_reg_pair { i32 5024, i32 3866629 }, %struct.mt76_reg_pair { i32 5032, i32 26880 }, %struct.mt76_reg_pair { i32 5056, i32 1024 }, %struct.mt76_reg_pair { i32 5064, i32 393222 }, %struct.mt76_reg_pair { i32 4912, i32 1026 }, %struct.mt76_reg_pair { i32 4916, i32 0 }, %struct.mt76_reg_pair { i32 4920, i32 0 }, %struct.mt76_reg_pair { i32 608, i32 0 }, %struct.mt76_reg_pair { i32 2056, i32 783 }, %struct.mt76_reg_pair { i32 2052, i32 2453263 }], [56 x i8] zeroinitializer }, align 32
@bbp_common_vals = internal constant { [16 x %struct.mt76_reg_pair], [32 x i8] } { [16 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 65, i32 44 }, %struct.mt76_reg_pair { i32 66, i32 56 }, %struct.mt76_reg_pair { i32 68, i32 11 }, %struct.mt76_reg_pair { i32 69, i32 18 }, %struct.mt76_reg_pair { i32 70, i32 10 }, %struct.mt76_reg_pair { i32 73, i32 16 }, %struct.mt76_reg_pair { i32 81, i32 55 }, %struct.mt76_reg_pair { i32 82, i32 98 }, %struct.mt76_reg_pair { i32 83, i32 106 }, %struct.mt76_reg_pair { i32 84, i32 153 }, %struct.mt76_reg_pair { i32 86, i32 0 }, %struct.mt76_reg_pair { i32 91, i32 4 }, %struct.mt76_reg_pair { i32 92, i32 0 }, %struct.mt76_reg_pair { i32 103, i32 0 }, %struct.mt76_reg_pair { i32 105, i32 5 }, %struct.mt76_reg_pair { i32 106, i32 53 }], [32 x i8] zeroinitializer }, align 32
@bbp_chip_vals = internal constant { [150 x %struct.mt76_reg_pair], [304 x i8] } { [150 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 1, i32 4 }, %struct.mt76_reg_pair { i32 4, i32 64 }, %struct.mt76_reg_pair { i32 20, i32 6 }, %struct.mt76_reg_pair { i32 31, i32 8 }, %struct.mt76_reg_pair { i32 178, i32 255 }, %struct.mt76_reg_pair { i32 66, i32 20 }, %struct.mt76_reg_pair { i32 68, i32 139 }, %struct.mt76_reg_pair { i32 69, i32 18 }, %struct.mt76_reg_pair { i32 70, i32 9 }, %struct.mt76_reg_pair { i32 73, i32 17 }, %struct.mt76_reg_pair { i32 75, i32 96 }, %struct.mt76_reg_pair { i32 76, i32 68 }, %struct.mt76_reg_pair { i32 84, i32 154 }, %struct.mt76_reg_pair { i32 86, i32 56 }, %struct.mt76_reg_pair { i32 91, i32 7 }, %struct.mt76_reg_pair { i32 92, i32 2 }, %struct.mt76_reg_pair { i32 99, i32 80 }, %struct.mt76_reg_pair { i32 101, i32 0 }, %struct.mt76_reg_pair { i32 103, i32 192 }, %struct.mt76_reg_pair { i32 104, i32 146 }, %struct.mt76_reg_pair { i32 105, i32 60 }, %struct.mt76_reg_pair { i32 106, i32 3 }, %struct.mt76_reg_pair { i32 128, i32 18 }, %struct.mt76_reg_pair { i32 142, i32 4 }, %struct.mt76_reg_pair { i32 143, i32 55 }, %struct.mt76_reg_pair { i32 142, i32 3 }, %struct.mt76_reg_pair { i32 143, i32 153 }, %struct.mt76_reg_pair { i32 160, i32 235 }, %struct.mt76_reg_pair { i32 161, i32 196 }, %struct.mt76_reg_pair { i32 162, i32 119 }, %struct.mt76_reg_pair { i32 163, i32 249 }, %struct.mt76_reg_pair { i32 164, i32 136 }, %struct.mt76_reg_pair { i32 165, i32 128 }, %struct.mt76_reg_pair { i32 166, i32 255 }, %struct.mt76_reg_pair { i32 167, i32 228 }, %struct.mt76_reg_pair { i32 195, i32 0 }, %struct.mt76_reg_pair { i32 196, i32 0 }, %struct.mt76_reg_pair { i32 195, i32 1 }, %struct.mt76_reg_pair { i32 196, i32 4 }, %struct.mt76_reg_pair { i32 195, i32 2 }, %struct.mt76_reg_pair { i32 196, i32 32 }, %struct.mt76_reg_pair { i32 195, i32 3 }, %struct.mt76_reg_pair { i32 196, i32 10 }, %struct.mt76_reg_pair { i32 195, i32 6 }, %struct.mt76_reg_pair { i32 196, i32 22 }, %struct.mt76_reg_pair { i32 195, i32 7 }, %struct.mt76_reg_pair { i32 196, i32 5 }, %struct.mt76_reg_pair { i32 195, i32 8 }, %struct.mt76_reg_pair { i32 196, i32 55 }, %struct.mt76_reg_pair { i32 195, i32 10 }, %struct.mt76_reg_pair { i32 196, i32 21 }, %struct.mt76_reg_pair { i32 195, i32 11 }, %struct.mt76_reg_pair { i32 196, i32 23 }, %struct.mt76_reg_pair { i32 195, i32 12 }, %struct.mt76_reg_pair { i32 196, i32 6 }, %struct.mt76_reg_pair { i32 195, i32 13 }, %struct.mt76_reg_pair { i32 196, i32 9 }, %struct.mt76_reg_pair { i32 195, i32 14 }, %struct.mt76_reg_pair { i32 196, i32 5 }, %struct.mt76_reg_pair { i32 195, i32 15 }, %struct.mt76_reg_pair { i32 196, i32 9 }, %struct.mt76_reg_pair { i32 195, i32 16 }, %struct.mt76_reg_pair { i32 196, i32 32 }, %struct.mt76_reg_pair { i32 195, i32 32 }, %struct.mt76_reg_pair { i32 196, i32 23 }, %struct.mt76_reg_pair { i32 195, i32 33 }, %struct.mt76_reg_pair { i32 196, i32 6 }, %struct.mt76_reg_pair { i32 195, i32 34 }, %struct.mt76_reg_pair { i32 196, i32 9 }, %struct.mt76_reg_pair { i32 195, i32 35 }, %struct.mt76_reg_pair { i32 196, i32 23 }, %struct.mt76_reg_pair { i32 195, i32 36 }, %struct.mt76_reg_pair { i32 196, i32 6 }, %struct.mt76_reg_pair { i32 195, i32 37 }, %struct.mt76_reg_pair { i32 196, i32 9 }, %struct.mt76_reg_pair { i32 195, i32 38 }, %struct.mt76_reg_pair { i32 196, i32 23 }, %struct.mt76_reg_pair { i32 195, i32 39 }, %struct.mt76_reg_pair { i32 196, i32 6 }, %struct.mt76_reg_pair { i32 195, i32 40 }, %struct.mt76_reg_pair { i32 196, i32 9 }, %struct.mt76_reg_pair { i32 195, i32 41 }, %struct.mt76_reg_pair { i32 196, i32 5 }, %struct.mt76_reg_pair { i32 195, i32 42 }, %struct.mt76_reg_pair { i32 196, i32 9 }, %struct.mt76_reg_pair { i32 195, i32 128 }, %struct.mt76_reg_pair { i32 196, i32 139 }, %struct.mt76_reg_pair { i32 195, i32 129 }, %struct.mt76_reg_pair { i32 196, i32 18 }, %struct.mt76_reg_pair { i32 195, i32 130 }, %struct.mt76_reg_pair { i32 196, i32 9 }, %struct.mt76_reg_pair { i32 195, i32 131 }, %struct.mt76_reg_pair { i32 196, i32 23 }, %struct.mt76_reg_pair { i32 195, i32 132 }, %struct.mt76_reg_pair { i32 196, i32 17 }, %struct.mt76_reg_pair { i32 195, i32 133 }, %struct.mt76_reg_pair { i32 196, i32 0 }, %struct.mt76_reg_pair { i32 195, i32 134 }, %struct.mt76_reg_pair { i32 196, i32 0 }, %struct.mt76_reg_pair { i32 195, i32 135 }, %struct.mt76_reg_pair { i32 196, i32 24 }, %struct.mt76_reg_pair { i32 195, i32 136 }, %struct.mt76_reg_pair { i32 196, i32 96 }, %struct.mt76_reg_pair { i32 195, i32 137 }, %struct.mt76_reg_pair { i32 196, i32 68 }, %struct.mt76_reg_pair { i32 195, i32 138 }, %struct.mt76_reg_pair { i32 196, i32 139 }, %struct.mt76_reg_pair { i32 195, i32 139 }, %struct.mt76_reg_pair { i32 196, i32 139 }, %struct.mt76_reg_pair { i32 195, i32 140 }, %struct.mt76_reg_pair { i32 196, i32 139 }, %struct.mt76_reg_pair { i32 195, i32 141 }, %struct.mt76_reg_pair { i32 196, i32 139 }, %struct.mt76_reg_pair { i32 195, i32 142 }, %struct.mt76_reg_pair { i32 196, i32 9 }, %struct.mt76_reg_pair { i32 195, i32 143 }, %struct.mt76_reg_pair { i32 196, i32 9 }, %struct.mt76_reg_pair { i32 195, i32 144 }, %struct.mt76_reg_pair { i32 196, i32 9 }, %struct.mt76_reg_pair { i32 195, i32 145 }, %struct.mt76_reg_pair { i32 196, i32 9 }, %struct.mt76_reg_pair { i32 195, i32 146 }, %struct.mt76_reg_pair { i32 196, i32 17 }, %struct.mt76_reg_pair { i32 195, i32 147 }, %struct.mt76_reg_pair { i32 196, i32 17 }, %struct.mt76_reg_pair { i32 195, i32 148 }, %struct.mt76_reg_pair { i32 196, i32 17 }, %struct.mt76_reg_pair { i32 195, i32 149 }, %struct.mt76_reg_pair { i32 196, i32 17 }, %struct.mt76_reg_pair { i32 47, i32 128 }, %struct.mt76_reg_pair { i32 60, i32 128 }, %struct.mt76_reg_pair { i32 150, i32 210 }, %struct.mt76_reg_pair { i32 151, i32 50 }, %struct.mt76_reg_pair { i32 152, i32 35 }, %struct.mt76_reg_pair { i32 153, i32 65 }, %struct.mt76_reg_pair { i32 154, i32 0 }, %struct.mt76_reg_pair { i32 155, i32 79 }, %struct.mt76_reg_pair { i32 253, i32 126 }, %struct.mt76_reg_pair { i32 195, i32 48 }, %struct.mt76_reg_pair { i32 196, i32 50 }, %struct.mt76_reg_pair { i32 195, i32 49 }, %struct.mt76_reg_pair { i32 196, i32 35 }, %struct.mt76_reg_pair { i32 195, i32 50 }, %struct.mt76_reg_pair { i32 196, i32 69 }, %struct.mt76_reg_pair { i32 195, i32 53 }, %struct.mt76_reg_pair { i32 196, i32 74 }, %struct.mt76_reg_pair { i32 195, i32 54 }, %struct.mt76_reg_pair { i32 196, i32 90 }, %struct.mt76_reg_pair { i32 195, i32 55 }, %struct.mt76_reg_pair { i32 196, i32 90 }], [304 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@mt76_channels_2ghz = internal constant { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 1, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 2, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 3, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 4, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 5, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 6, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 7, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 8, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 9, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 10, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 11, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 12, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 13, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 14, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@mt76_rates = internal global { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 1, i16 10, i16 0, i16 8 }, %struct.ieee80211_rate { i32 1, i16 20, i16 1, i16 9 }, %struct.ieee80211_rate { i32 1, i16 55, i16 2, i16 10 }, %struct.ieee80211_rate { i32 1, i16 110, i16 3, i16 11 }, %struct.ieee80211_rate { i32 0, i16 60, i16 256, i16 256 }, %struct.ieee80211_rate { i32 0, i16 90, i16 257, i16 257 }, %struct.ieee80211_rate { i32 0, i16 120, i16 258, i16 258 }, %struct.ieee80211_rate { i32 0, i16 180, i16 259, i16 259 }, %struct.ieee80211_rate { i32 0, i16 240, i16 260, i16 260 }, %struct.ieee80211_rate { i32 0, i16 360, i16 261, i16 261 }, %struct.ieee80211_rate { i32 0, i16 480, i16 262, i16 262 }, %struct.ieee80211_rate { i32 0, i16 540, i16 263, i16 263 }], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"beacon_offsets\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 319, i32 19 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 444, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 445, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 446, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 447, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 448, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 449, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 450, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 451, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 452, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 456, i32 33 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 621, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 622, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 269, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 279, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 299, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 302, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 56, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [16 x i8] c"mac_common_vals\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 107, i32 35 }
@___asan_gen_.178 = private unnamed_addr constant [14 x i8] c"mac_chip_vals\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 137, i32 35 }
@___asan_gen_.181 = private unnamed_addr constant [16 x i8] c"bbp_common_vals\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 10, i32 35 }
@___asan_gen_.184 = private unnamed_addr constant [14 x i8] c"bbp_chip_vals\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [52 x i8] c"../drivers/net/wireless/mediatek/mt7601u/initvals.h\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 29, i32 35 }
@___asan_gen_.187 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1984, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [19 x i8] c"mt76_channels_2ghz\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 472, i32 39 }
@___asan_gen_.196 = private unnamed_addr constant [11 x i8] c"mt76_rates\00", align 1
@___asan_gen_.197 = private constant [48 x i8] c"../drivers/net/wireless/mediatek/mt7601u/init.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 502, i32 30 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @mt7601u_mac_stop_hw._entry, ptr @mt7601u_mac_stop_hw._entry.30, ptr @mt7601u_mac_stop_hw._entry.33, ptr @mt7601u_mac_stop_hw._entry.36, ptr @mt7601u_mac_stop_hw._entry_ptr, ptr @mt7601u_mac_stop_hw._entry_ptr.32, ptr @mt7601u_mac_stop_hw._entry_ptr.35, ptr @mt7601u_mac_stop_hw._entry_ptr.38, ptr @mt7601u_set_wlan_state._entry, ptr @mt7601u_set_wlan_state._entry_ptr, ptr @mt7601u_init_hardware.beacon_offsets, ptr @mt7601u_alloc_device.__key, ptr @.str, ptr @mt7601u_alloc_device.__key.1, ptr @.str.2, ptr @mt7601u_alloc_device.__key.3, ptr @.str.4, ptr @mt7601u_alloc_device.__key.5, ptr @.str.6, ptr @mt7601u_alloc_device.__key.7, ptr @.str.8, ptr @mt7601u_alloc_device.__key.9, ptr @.str.10, ptr @mt7601u_alloc_device.__key.11, ptr @.str.12, ptr @mt7601u_alloc_device.__key.13, ptr @.str.14, ptr @mt7601u_alloc_device.__key.15, ptr @.str.16, ptr @.str.17, ptr @mt7601u_register_device.__key, ptr @.str.18, ptr @mt7601u_register_device.__key.19, ptr @.str.20, ptr @mt7601u_register_device.__key.21, ptr @.str.22, ptr @mt7601u_register_device.__key.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @mac_common_vals, ptr @mac_chip_vals, ptr @bbp_common_vals, ptr @bbp_chip_vals, ptr @skb_queue_head_init.__key, ptr @.str.42, ptr @mt76_channels_2ghz, ptr @mt76_rates], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_init_hardware.beacon_offsets to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_alloc_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_alloc_device.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_alloc_device.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_alloc_device.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_alloc_device.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_alloc_device.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_alloc_device.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_alloc_device.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_alloc_device.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_register_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_register_device.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_register_device.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_register_device.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_mac_stop_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_mac_stop_hw._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_mac_stop_hw._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_mac_stop_hw._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_set_wlan_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_common_vals to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_chip_vals to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbp_common_vals to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbp_chip_vals to i32), i32 1200, i32 1504, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76_channels_2ghz to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76_rates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_mac_start(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4100, i32 noundef 4) #5
  %call = tail call zeroext i1 @mt76_poll(ptr noundef %dev, i32 noundef 520, i32 noundef 10, i32 noundef 0, i32 noundef 200000) #5
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rxfilter = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %rxfilter to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 98199, ptr %rxfilter, align 4
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 5120, i32 noundef 98199) #5
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4100, i32 noundef 12) #5
  %call2 = tail call zeroext i1 @mt76_poll(ptr noundef %dev, i32 noundef 520, i32 noundef 10, i32 noundef 0, i32 noundef 50) #5
  %. = select i1 %call2, i32 0, i32 -110
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -110, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_wr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_mac_stop(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mt7601u_mac_stop_hw.exit_crit_edge

entry.mt7601u_mac_stop_hw.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt7601u_mac_stop_hw.exit

if.end.i:                                         ; preds = %entry
  %call.i.i.i = tail call i32 @mt7601u_rmw(ptr noundef %dev, i32 noundef 4372, i32 noundef 2031616, i32 noundef 0) #5
  %call2.i = tail call zeroext i1 @mt76_poll(ptr noundef %dev, i32 noundef 568, i32 noundef -2147483648, i32 noundef 0, i32 noundef 1000) #5
  br i1 %call2.i, label %if.end.i.land.rhs.i.preheader_crit_edge, label %do.end.i

if.end.i.land.rhs.i.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i.preheader

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev4.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev4.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.25) #8
  br label %land.rhs.i.preheader

land.rhs.i.preheader:                             ; preds = %do.end.i, %if.end.i.land.rhs.i.preheader_crit_edge
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.i.preheader
  %dec81.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 199, %land.rhs.i.preheader ]
  %call.i.i = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 1080) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i, label %land.rhs.i.while.body.i_crit_edge

land.rhs.i.while.body.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %call.i73.i = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 2608) #5
  %and10.i = and i32 %call.i73.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %lor.rhs.i, label %lor.lhs.false.i.while.body.i_crit_edge

lor.lhs.false.i.while.body.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %call.i74.i = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 2612) #5
  %and13.i = and i32 %call.i74.i, 16711935
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %lor.rhs.i.while.end.i_crit_edge, label %lor.rhs.i.while.body.i_crit_edge

lor.rhs.i.while.body.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

lor.rhs.i.while.end.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.i:                                     ; preds = %lor.rhs.i.while.body.i_crit_edge, %lor.lhs.false.i.while.body.i_crit_edge, %land.rhs.i.while.body.i_crit_edge
  tail call void @msleep(i32 noundef 10) #5
  %dec.i = add nsw i32 %dec81.i, -1
  %tobool6.not.i = icmp eq i32 %dec81.i, 0
  br i1 %tobool6.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %lor.rhs.i.while.end.i_crit_edge
  %call15.i = tail call zeroext i1 @mt76_poll(ptr noundef %dev, i32 noundef 4608, i32 noundef 1, i32 noundef 0, i32 noundef 1000) #5
  br i1 %call15.i, label %while.end.i.if.end21.i_crit_edge, label %do.end19.i

while.end.i.if.end21.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

do.end19.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev20.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev20.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.31) #8
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end19.i, %while.end.i.if.end21.i_crit_edge
  %call.i.i75.i = tail call i32 @mt7601u_rmw(ptr noundef %dev, i32 noundef 4100, i32 noundef 12, i32 noundef 0) #5
  br label %while.cond23.outer.i

while.cond23.outer.i:                             ; preds = %if.then35.i.while.cond23.outer.i_crit_edge, %if.end21.i
  %i.1.ph.i = phi i32 [ %dec2484.i, %if.then35.i.while.cond23.outer.i_crit_edge ], [ 200, %if.end21.i ]
  %ok.0.ph.i = phi i32 [ %inc.i, %if.then35.i.while.cond23.outer.i_crit_edge ], [ 0, %if.end21.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1.ph.i)
  %tobool25.not83.i = icmp eq i32 %i.1.ph.i, 0
  br i1 %tobool25.not83.i, label %while.cond23.outer.i.while.end39.i_crit_edge, label %while.cond23.outer.i.while.body26.i_crit_edge

while.cond23.outer.i.while.body26.i_crit_edge:    ; preds = %while.cond23.outer.i
  br label %while.body26.i

while.cond23.outer.i.while.end39.i_crit_edge:     ; preds = %while.cond23.outer.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end39.i

while.body26.i:                                   ; preds = %if.end38.i.while.body26.i_crit_edge, %while.cond23.outer.i.while.body26.i_crit_edge
  %dec2484.in.i = phi i32 [ %dec2484.i, %if.end38.i.while.body26.i_crit_edge ], [ %i.1.ph.i, %while.cond23.outer.i.while.body26.i_crit_edge ]
  %dec2484.i = add i32 %dec2484.in.i, -1
  %call.i76.i = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 1072) #5
  %and28.i = and i32 %call.i76.i, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %land.lhs.true.i, label %while.body26.i.if.end38.i_crit_edge

while.body26.i.if.end38.i_crit_edge:              ; preds = %while.body26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

land.lhs.true.i:                                  ; preds = %while.body26.i
  %call.i77.i = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 2608) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i)
  %tobool31.not.i = icmp eq i32 %call.i77.i, 0
  br i1 %tobool31.not.i, label %land.lhs.true32.i, label %land.lhs.true.i.if.end38.i_crit_edge

land.lhs.true.i.if.end38.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

land.lhs.true32.i:                                ; preds = %land.lhs.true.i
  %call.i78.i = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 2612) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.i)
  %tobool34.not.i = icmp eq i32 %call.i78.i, 0
  br i1 %tobool34.not.i, label %if.then35.i, label %land.lhs.true32.i.if.end38.i_crit_edge

land.lhs.true32.i.if.end38.i_crit_edge:           ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

if.then35.i:                                      ; preds = %land.lhs.true32.i
  %inc.i = add nuw nsw i32 %ok.0.ph.i, 1
  %exitcond.i = icmp eq i32 %inc.i, 7
  br i1 %exitcond.i, label %if.then35.i.while.end39.i_crit_edge, label %if.then35.i.while.cond23.outer.i_crit_edge

if.then35.i.while.cond23.outer.i_crit_edge:       ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond23.outer.i

if.then35.i.while.end39.i_crit_edge:              ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end39.i

if.end38.i:                                       ; preds = %land.lhs.true32.i.if.end38.i_crit_edge, %land.lhs.true.i.if.end38.i_crit_edge, %while.body26.i.if.end38.i_crit_edge
  tail call void @msleep(i32 noundef 1) #5
  %tobool25.not.i = icmp eq i32 %dec2484.i, 0
  br i1 %tobool25.not.i, label %if.end38.i.while.end39.i_crit_edge, label %if.end38.i.while.body26.i_crit_edge

if.end38.i.while.body26.i_crit_edge:              ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body26.i

if.end38.i.while.end39.i_crit_edge:               ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end39.i

while.end39.i:                                    ; preds = %if.end38.i.while.end39.i_crit_edge, %if.then35.i.while.end39.i_crit_edge, %while.cond23.outer.i.while.end39.i_crit_edge
  %call40.i = tail call zeroext i1 @mt76_poll(ptr noundef %dev, i32 noundef 4608, i32 noundef 2, i32 noundef 0, i32 noundef 1000) #5
  br i1 %call40.i, label %while.end39.i.if.end46.i_crit_edge, label %do.end44.i

while.end39.i.if.end46.i_crit_edge:               ; preds = %while.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46.i

do.end44.i:                                       ; preds = %while.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev45.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %dev45.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev45.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.34) #8
  br label %if.end46.i

if.end46.i:                                       ; preds = %do.end44.i, %while.end39.i.if.end46.i_crit_edge
  %call47.i = tail call zeroext i1 @mt76_poll(ptr noundef %dev, i32 noundef 568, i32 noundef 1073741824, i32 noundef 0, i32 noundef 1000) #5
  br i1 %call47.i, label %if.end46.i.mt7601u_mac_stop_hw.exit_crit_edge, label %do.end51.i

if.end46.i.mt7601u_mac_stop_hw.exit_crit_edge:    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt7601u_mac_stop_hw.exit

do.end51.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev52.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %9 = ptrtoint ptr %dev52.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev52.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.37) #8
  br label %mt7601u_mac_stop_hw.exit

mt7601u_mac_stop_hw.exit:                         ; preds = %do.end51.i, %if.end46.i.mt7601u_mac_stop_hw.exit_crit_edge, %entry.mt7601u_mac_stop_hw.exit_crit_edge
  %stat_work = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 11
  %call = tail call zeroext i1 @flush_delayed_work(ptr noundef %stat_work) #5
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %stat_work) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_init_hardware(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %vals.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %beacon_offsets = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %beacon_offsets to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mt7601u_init_hardware.beacon_offsets, ptr %beacon_offsets, align 4
  tail call fastcc void @mt7601u_chip_onoff(ptr noundef %dev, i1 noundef zeroext true)
  %call = tail call i32 @mt7601u_wait_asic_ready(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mt7601u_mcu_init(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end4:                                          ; preds = %if.end
  %call5 = tail call zeroext i1 @mt76_poll_msec(ptr noundef %dev, i32 noundef 520, i32 noundef 10, i32 noundef 0, i32 noundef 100) #5
  br i1 %call5, label %if.end7, label %if.end4.err_crit_edge

if.end4.err_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end7:                                          ; preds = %if.end4
  %call8 = tail call i32 @mt7601u_wait_asic_ready(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.err_crit_edge

if.end7.err_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end11:                                         ; preds = %if.end7
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4100, i32 noundef 3) #5
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 568, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 1) #5
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4100, i32 noundef 0) #5
  %in_max_packet.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 28
  %1 = ptrtoint ptr %in_max_packet.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %in_max_packet.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %2)
  %cmp.i = icmp eq i16 %2, 512
  %spec.select.i = select i1 %cmp.i, i32 14687360, i32 12590208
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 568, i32 noundef %spec.select.i) #5
  %or33.i = or i32 %spec.select.i, 33554432
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 568, i32 noundef %or33.i) #5
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 568, i32 noundef %spec.select.i) #5
  %call12 = tail call i32 @mt7601u_mcu_cmd_init(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.err_crit_edge

if.end11.err_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @mt7601u_dma_init(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.err_mcu_crit_edge

if.end15.err_mcu_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_mcu

if.end19:                                         ; preds = %if.end15
  %call20 = tail call fastcc i32 @mt7601u_write_mac_initvals(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.err_rx_crit_edge

if.end19.err_rx_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_rx

if.end23:                                         ; preds = %if.end19
  %call24 = tail call zeroext i1 @mt76_poll_msec(ptr noundef %dev, i32 noundef 4608, i32 noundef 3, i32 noundef 0, i32 noundef 100) #5
  br i1 %call24, label %if.end26, label %if.end23.err_rx_crit_edge

if.end23.err_rx_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_rx

if.end26:                                         ; preds = %if.end23
  %call27 = tail call fastcc i32 @mt7601u_init_bbp(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.err_rx_crit_edge

if.end26.err_rx_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_rx

if.end30:                                         ; preds = %if.end26
  %call31 = tail call fastcc i32 @mt7601u_init_wcid_mem(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.err_rx_crit_edge

if.end30.err_rx_crit_edge:                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_rx

if.end34:                                         ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vals.i) #5
  %3 = call ptr @memset(ptr %vals.i, i32 0, i32 16)
  %call.i = call i32 @mt7601u_burst_write_regs(ptr noundef %dev, i32 noundef 45056, ptr noundef nonnull %vals.i, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vals.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.err_rx_crit_edge

if.end34.err_rx_crit_edge:                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_rx

if.end38:                                         ; preds = %if.end34
  %call39 = call fastcc i32 @mt7601u_init_wcid_attr_mem(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.err_rx_crit_edge

if.end38.err_rx_crit_edge:                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_rx

if.end42:                                         ; preds = %if.end38
  %call.i.i = call i32 @mt7601u_rmw(ptr noundef %dev, i32 noundef 4372, i32 noundef 2031616, i32 noundef 0) #5
  call fastcc void @mt7601u_reset_counters(ptr noundef %dev)
  %call44 = call i32 @mt7601u_rmw(ptr noundef %dev, i32 noundef 676, i32 noundef 255, i32 noundef 30) #5
  call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4928, i32 noundef 22591) #5
  %call73 = call i32 @mt7601u_eeprom_init(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end42.err_rx_crit_edge

if.end42.err_rx_crit_edge:                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_rx

if.end76:                                         ; preds = %if.end42
  %call77 = call i32 @mt7601u_phy_init(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end76.err_rx_crit_edge

if.end76.err_rx_crit_edge:                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_rx

if.end80:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  call void @mt7601u_set_rx_path(ptr noundef %dev, i8 noundef zeroext 0) #5
  call void @mt7601u_set_tx_dac(ptr noundef %dev, i8 noundef zeroext 0) #5
  %call.i125 = call i32 @mt7601u_rmc(ptr noundef %dev, i32 noundef 4908, i32 noundef 1, i32 noundef 0) #5
  %call82 = call i32 @mt7601u_bbp_set_ctrlch(ptr noundef %dev, i1 noundef zeroext false) #5
  %call83 = call i32 @mt7601u_bbp_set_bw(ptr noundef %dev, i32 noundef 0) #5
  br label %cleanup

err_rx:                                           ; preds = %if.end76.err_rx_crit_edge, %if.end42.err_rx_crit_edge, %if.end38.err_rx_crit_edge, %if.end34.err_rx_crit_edge, %if.end30.err_rx_crit_edge, %if.end26.err_rx_crit_edge, %if.end23.err_rx_crit_edge, %if.end19.err_rx_crit_edge
  %ret.0 = phi i32 [ %call20, %if.end19.err_rx_crit_edge ], [ %call27, %if.end26.err_rx_crit_edge ], [ %call31, %if.end30.err_rx_crit_edge ], [ %call.i, %if.end34.err_rx_crit_edge ], [ %call39, %if.end38.err_rx_crit_edge ], [ %call73, %if.end42.err_rx_crit_edge ], [ %call77, %if.end76.err_rx_crit_edge ], [ -5, %if.end23.err_rx_crit_edge ]
  call void @mt7601u_dma_cleanup(ptr noundef %dev) #5
  br label %err_mcu

err_mcu:                                          ; preds = %err_rx, %if.end15.err_mcu_crit_edge
  %ret.1 = phi i32 [ %call16, %if.end15.err_mcu_crit_edge ], [ %ret.0, %err_rx ]
  call void @mt7601u_mcu_cmd_deinit(ptr noundef %dev) #5
  br label %err

err:                                              ; preds = %err_mcu, %if.end11.err_crit_edge, %if.end7.err_crit_edge, %if.end4.err_crit_edge, %if.end.err_crit_edge, %entry.err_crit_edge
  %ret.2 = phi i32 [ %call, %entry.err_crit_edge ], [ %call1, %if.end.err_crit_edge ], [ %call8, %if.end7.err_crit_edge ], [ %call12, %if.end11.err_crit_edge ], [ %ret.1, %err_mcu ], [ -5, %if.end4.err_crit_edge ]
  %hw_atomic_mutex.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 22
  call void @mutex_lock_nested(ptr noundef %hw_atomic_mutex.i, i32 noundef 0) #5
  %call.i126 = call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 128) #5
  call void @mt7601u_wr(ptr noundef %dev, i32 noundef 128, i32 noundef %call.i126) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %4(i32 noundef 4294960) #5
  %and.i.i = and i32 %call.i126, -2
  call void @mt7601u_wr(ptr noundef %dev, i32 noundef 128, i32 noundef %and.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 4294960) #5
  %state.i.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 2
  call void @_clear_bit(i32 noundef 2, ptr noundef %state.i.i) #5
  call void @mutex_unlock(ptr noundef %hw_atomic_mutex.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end80
  %retval.0 = phi i32 [ %ret.2, %err ], [ 0, %if.end80 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7601u_chip_onoff(ptr noundef %dev, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_atomic_mutex = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %hw_atomic_mutex, i32 noundef 0) #5
  %call = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 128) #5
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 128, i32 noundef %call) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 4294960) #5
  %or.i = or i32 %call, 3
  %and.i = and i32 %call, -2
  %val.addr.0.i = select i1 %enable, i32 %or.i, i32 %and.i
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 128, i32 noundef %val.addr.0.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 4294960) #5
  %state.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 2
  br i1 %enable, label %if.then2.i, label %if.else3.i

if.then2.i:                                       ; preds = %entry
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state.i) #5
  br label %for.body.i

if.else3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state.i) #5
  br label %mt7601u_set_wlan_state.exit

for.body.i:                                       ; preds = %if.end12.i.for.body.i_crit_edge, %if.then2.i
  %i.028.i = phi i32 [ 200, %if.then2.i ], [ %dec.i, %if.end12.i.for.body.i_crit_edge ]
  %call.i = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 32) #5
  %2 = and i32 %call.i, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %2)
  %.not.i = icmp eq i32 %2, 12582912
  br i1 %.not.i, label %for.body.i.mt7601u_set_wlan_state.exit_crit_edge, label %if.end12.i

for.body.i.mt7601u_set_wlan_state.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt7601u_set_wlan_state.exit

if.end12.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 4294960) #5
  %dec.i = add nsw i32 %i.028.i, -1
  %tobool6.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool6.not.i, label %do.end.critedge.i, label %if.end12.i.for.body.i_crit_edge

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end.critedge.i:                                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev15.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev15.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.39) #8
  br label %mt7601u_set_wlan_state.exit

mt7601u_set_wlan_state.exit:                      ; preds = %do.end.critedge.i, %for.body.i.mt7601u_set_wlan_state.exit_crit_edge, %if.else3.i
  tail call void @mutex_unlock(ptr noundef %hw_atomic_mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_wait_asic_ready(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_mcu_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt76_poll_msec(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_mcu_cmd_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_dma_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7601u_write_mac_initvals(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %regs.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt7601u_write_reg_pairs(ptr noundef %dev, i32 noundef 4259840, ptr noundef nonnull @mac_common_vals, i32 noundef 27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mt7601u_write_reg_pairs(ptr noundef %dev, i32 noundef 4259840, ptr noundef nonnull @mac_chip_vals, i32 noundef 17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %regs.i) #5
  %0 = call ptr @memset(ptr %regs.i, i32 0, i32 16)
  %beacon_offsets.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 16
  %1 = ptrtoint ptr %beacon_offsets.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %beacon_offsets.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end4
  %i.023.i = phi i32 [ 0, %if.end4 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %2, i32 %i.023.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %4 to i32
  %sub.i = add nsw i32 %conv.i, -49152
  %div.i = sdiv i32 %sub.i, 64
  %rem.i = shl i32 %i.023.i, 3
  %mul.i = and i32 %rem.i, 24
  %shl.i = shl i32 %div.i, %mul.i
  %div222.i = lshr i32 %i.023.i, 2
  %arrayidx3.i = getelementptr [4 x i32], ptr %regs.i, i32 0, i32 %div222.i
  %5 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx3.i, align 4
  %or.i = or i32 %shl.i, %6
  store i32 %or.i, ptr %arrayidx3.i, align 4
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %mt76_init_beacon_offsets.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

mt76_init_beacon_offsets.exit:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regs.i, align 4
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 1052, i32 noundef %8) #5
  %arrayidx9.1.i = getelementptr inbounds [4 x i32], ptr %regs.i, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx9.1.i, align 4
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 1056, i32 noundef %10) #5
  %arrayidx9.2.i = getelementptr inbounds [4 x i32], ptr %regs.i, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx9.2.i, align 4
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 1060, i32 noundef %12) #5
  %arrayidx9.3.i = getelementptr inbounds [4 x i32], ptr %regs.i, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx9.3.i, align 4
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 1064, i32 noundef %14) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %regs.i) #5
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 4620, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %mt76_init_beacon_offsets.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mt76_init_beacon_offsets.exit ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7601u_init_bbp(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt7601u_wait_bbp_ready(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mt7601u_write_reg_pairs(ptr noundef %dev, i32 noundef 1073741824, ptr noundef nonnull @bbp_common_vals, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @mt7601u_write_reg_pairs(ptr noundef %dev, i32 noundef 1073741824, ptr noundef nonnull @bbp_chip_vals, i32 noundef 150) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7601u_init_wcid_mem(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1024) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl nuw i32 %i.013, 1
  %arrayidx = getelementptr i32, ptr %call7.i, i32 %mul
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %arrayidx, align 8
  %add = or i32 %mul, 1
  %arrayidx2 = getelementptr i32, ptr %call7.i, i32 %add
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16777215, ptr %arrayidx2, align 4
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @mt7601u_burst_write_regs(ptr noundef %dev, i32 noundef 6144, ptr noundef nonnull %call7.i, i32 noundef 256) #5
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7601u_init_wcid_attr_mem(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1024) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %call7.i, i32 %i.09
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @mt7601u_burst_write_regs(ptr noundef %dev, i32 noundef 43008, ptr noundef nonnull %call7.i, i32 noundef 256) #5
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7601u_reset_counters(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 5888) #5
  %call1 = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 5892) #5
  %call2 = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 5896) #5
  %call3 = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 5900) #5
  %call4 = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 5904) #5
  %call5 = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 5908) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_rmw(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_eeprom_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_set_rx_path(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_set_tx_dac(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_bbp_set_ctrlch(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_bbp_set_bw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_dma_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_mcu_cmd_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_cleanup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 2
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %state) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hw_atomic_mutex.i.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %hw_atomic_mutex.i.i, i32 noundef 0) #5
  %call.i.i = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 128) #5
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 128, i32 noundef %call.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 4294960) #5
  %and.i.i.i = and i32 %call.i.i, -2
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 128, i32 noundef %and.i.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 4294960) #5
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #5
  tail call void @mutex_unlock(ptr noundef %hw_atomic_mutex.i.i) #5
  tail call void @mt7601u_dma_cleanup(ptr noundef %dev) #5
  tail call void @mt7601u_mcu_cmd_deinit(ptr noundef %dev) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mt7601u_alloc_device(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 2488, ptr noundef nonnull @mt7601u_ops, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev1 = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %dev1, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %1, align 8
  %vendor_req_mutex = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %vendor_req_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @mt7601u_alloc_device.__key) #5
  %reg_atomic_mutex = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %reg_atomic_mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @mt7601u_alloc_device.__key.1) #5
  %hw_atomic_mutex = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %hw_atomic_mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @mt7601u_alloc_device.__key.3) #5
  %mutex = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @mt7601u_alloc_device.__key.5) #5
  %tx_lock = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 29
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @mt7601u_alloc_device.__key.7, i16 noundef signext 3) #5
  %rx_lock = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 34
  tail call void @__raw_spin_lock_init(ptr noundef %rx_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @mt7601u_alloc_device.__key.9, i16 noundef signext 3) #5
  %lock = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @mt7601u_alloc_device.__key.11, i16 noundef signext 3) #5
  %mac_lock = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %mac_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @mt7601u_alloc_device.__key.13, i16 noundef signext 3) #5
  %con_mon_lock = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 37
  tail call void @__raw_spin_lock_init(ptr noundef %con_mon_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @mt7601u_alloc_device.__key.15, i16 noundef signext 3) #5
  %avg_ampdu_len = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 33
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %avg_ampdu_len, i32 noundef 4) #5
  %4 = ptrtoint ptr %avg_ampdu_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %avg_ampdu_len, align 4
  %tx_skb_done = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 32
  %lock.i = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 32, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %5 = ptrtoint ptr %tx_skb_done to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tx_skb_done, ptr %tx_skb_done, align 4
  %prev.i.i = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 32, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tx_skb_done, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 32, i32 1
  %7 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %qlen.i.i, align 4
  %call32 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.17, i32 noundef 2, i32 noundef 0) #5
  %stat_wq = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %stat_wq to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call32, ptr %stat_wq, align 8
  %tobool34.not = icmp eq ptr %call32, null
  br i1 %tobool34.not, label %if.then35, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then35:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ieee80211_free_hw(ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then35 ], [ null, %entry.cleanup_crit_edge ], [ %1, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_register_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %wiphy2 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy2, align 8
  %wcid_mask = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 4
  %4 = ptrtoint ptr %wcid_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wcid_mask, align 8
  %or = or i32 %5, 1
  store i32 %or, ptr %wcid_mask, align 8
  %dev3 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  %call = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 6, i32 noundef 3264) #5
  %mon_wcid = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 12
  %8 = ptrtoint ptr %mon_wcid to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %mon_wcid, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %call, align 2
  %hw_key_idx = getelementptr inbounds %struct.mt76_wcid, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %hw_key_idx, align 1
  %11 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev3, align 4
  %13 = ptrtoint ptr %wiphy2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wiphy2, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %14, i32 0, i32 56, i32 1
  %15 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %parent.i.i, align 8
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %queues to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 4, ptr %queues, align 4
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %or.i.i114 = or i32 %18, 37751440
  store i32 %or.i.i114, ptr %flags.i, align 4
  %max_rates = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %max_rates to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %max_rates, align 1
  %max_report_rates = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 15
  %20 = ptrtoint ptr %max_report_rates to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 7, ptr %max_report_rates, align 2
  %max_rate_tries = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 16
  %21 = ptrtoint ptr %max_rate_tries to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %max_rate_tries, align 1
  %sta_data_size = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %sta_data_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 38, ptr %sta_data_size, align 8
  %vif_data_size = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %vif_data_size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %vif_data_size, align 4
  %macaddr = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 17
  %24 = load ptr, ptr %wiphy2, align 8
  %perm_addr.i = getelementptr inbounds %struct.wiphy, ptr %24, i32 0, i32 1
  %25 = call ptr @memcpy(ptr %perm_addr.i, ptr %macaddr, i32 6)
  %features = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 13
  %26 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %features, align 8
  %or8 = or i32 %27, 131072
  store i32 %or8, ptr %features, align 8
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 9
  %28 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 4, ptr %interface_modes, align 4
  %flags = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 11
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 32
  %or9 = or i32 %30, 32768
  store i32 %or9, ptr %flags, align 32
  %arrayidx.i = getelementptr %struct.wiphy, ptr %3, i32 0, i32 14, i32 1
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i, align 1
  %33 = or i8 %32, 32
  store i8 %33, ptr %arrayidx.i, align 1
  %34 = load ptr, ptr %dev3, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %34, i32 noundef 92, i32 noundef 3520) #5
  %sband_2g.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 6
  %35 = ptrtoint ptr %sband_2g.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i.i, ptr %sband_2g.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  %wiphy.i116 = getelementptr inbounds %struct.ieee80211_hw, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wiphy.i116 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wiphy.i116, align 8
  %bands.i = getelementptr inbounds %struct.wiphy, ptr %39, i32 0, i32 53
  %40 = ptrtoint ptr %bands.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i.i, ptr %bands.i, align 16
  %ee.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 18
  %41 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ee.i, align 8
  %reg.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %reg.i, align 4
  %conv.i = zext i8 %44 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %num.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %42, i32 0, i32 9, i32 1
  %45 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num.i, align 1
  %conv6.i = zext i8 %46 to i32
  %add.i = add nsw i32 %sub.i, %conv6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 14
  br i1 %cmp.i, label %do.end.i, label %if.end.i.if.end22.i_crit_edge, !prof !91

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 566, i32 noundef 9, ptr noundef null) #5
  br label %if.end22.i

if.end22.i:                                       ; preds = %do.end.i, %if.end.i.if.end22.i_crit_edge
  %47 = ptrtoint ptr %sband_2g.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sband_2g.i, align 4
  %49 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ee.i, align 8
  %reg31.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %reg31.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %reg31.i, align 4
  %conv33.i = zext i8 %52 to i32
  %sub34.i = add nsw i32 %conv33.i, -1
  %arrayidx35.i = getelementptr [14 x %struct.ieee80211_channel], ptr @mt76_channels_2ghz, i32 0, i32 %sub34.i
  %num38.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %50, i32 0, i32 9, i32 1
  %53 = ptrtoint ptr %num38.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %num38.i, align 1
  %conv39.i = zext i8 %54 to i32
  %mul.i.i = mul nuw nsw i32 %conv39.i, 56
  %55 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev3, align 4
  %call.i52.i = tail call ptr @devm_kmemdup(ptr noundef %56, ptr noundef %arrayidx35.i, i32 noundef %mul.i.i, i32 noundef 3264) #5
  %tobool.not.i.i = icmp eq ptr %call.i52.i, null
  br i1 %tobool.not.i.i, label %if.end22.i.cleanup_crit_edge, label %do.body14

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body14:                                        ; preds = %if.end22.i
  %57 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i52.i, ptr %48, align 4
  %n_channels.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %48, i32 0, i32 3
  %58 = ptrtoint ptr %n_channels.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv39.i, ptr %n_channels.i.i, align 4
  %bitrates.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %48, i32 0, i32 1
  %59 = ptrtoint ptr %bitrates.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @mt76_rates, ptr %bitrates.i.i, align 4
  %n_bitrates.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %48, i32 0, i32 4
  %60 = ptrtoint ptr %n_bitrates.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 12, ptr %n_bitrates.i.i, align 4
  %ht_cap2.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %48, i32 0, i32 5
  %ht_supported.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %48, i32 0, i32 5, i32 1
  %61 = ptrtoint ptr %ht_supported.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %ht_supported.i.i, align 2
  %62 = ptrtoint ptr %ht_cap2.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 370, ptr %ht_cap2.i.i, align 2
  %mcs.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %48, i32 0, i32 5, i32 4
  %63 = ptrtoint ptr %mcs.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -1, ptr %mcs.i.i, align 1
  %arrayidx5.i.i = getelementptr %struct.ieee80211_supported_band, ptr %48, i32 0, i32 5, i32 4, i32 0, i32 4
  %64 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %arrayidx5.i.i, align 1
  %tx_params.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %48, i32 0, i32 5, i32 4, i32 2
  %65 = ptrtoint ptr %tx_params.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %tx_params.i.i, align 1
  %ampdu_factor.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %48, i32 0, i32 5, i32 2
  %66 = ptrtoint ptr %ampdu_factor.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 3, ptr %ampdu_factor.i.i, align 1
  %ampdu_density.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %48, i32 0, i32 5, i32 3
  %67 = ptrtoint ptr %ampdu_density.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 4, ptr %ampdu_density.i.i, align 2
  %chandef.i.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 5
  %68 = ptrtoint ptr %chandef.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i52.i, ptr %chandef.i.i, align 8
  %mac_work = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 9
  tail call void @__init_work(ptr noundef %mac_work, i32 noundef 0) #5
  %69 = ptrtoint ptr %mac_work to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -64, ptr %mac_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 9, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @mt7601u_register_device.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry21 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 9, i32 0, i32 1
  %70 = ptrtoint ptr %entry21 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %entry21, ptr %entry21, align 4
  %prev.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 9, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %entry21, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 9, i32 0, i32 2
  %72 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @mt7601u_mac_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 9, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.20, ptr noundef nonnull @mt7601u_register_device.__key.19) #5
  %stat_work = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 11
  tail call void @__init_work(ptr noundef %stat_work, i32 noundef 0) #5
  %73 = ptrtoint ptr %stat_work to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -64, ptr %stat_work, align 4
  %lockdep_map40 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 11, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map40, ptr noundef nonnull @.str.22, ptr noundef nonnull @mt7601u_register_device.__key.21, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry43 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 11, i32 0, i32 1
  %74 = ptrtoint ptr %entry43 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %entry43, ptr %entry43, align 4
  %prev.i117 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 11, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %prev.i117 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %entry43, ptr %prev.i117, align 4
  %func46 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 11, i32 0, i32 2
  %76 = ptrtoint ptr %func46 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @mt7601u_tx_stat, ptr %func46, align 4
  %timer51 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 11, i32 1
  tail call void @init_timer_key(ptr noundef %timer51, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.24, ptr noundef nonnull @mt7601u_register_device.__key.23) #5
  %call56 = tail call i32 @ieee80211_register_hw(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %do.body14.cleanup_crit_edge

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end59:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mt7601u_init_debugfs(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %do.body14.cleanup_crit_edge, %if.end22.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end59 ], [ -12, %entry.cleanup_crit_edge ], [ %call56, %do.body14.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end22.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_mac_work(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_tx_stat(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_init_debugfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_rr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_write_reg_pairs(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_wait_bbp_ready(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_burst_write_regs(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_rmc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !67, !69, !71, !73, !75, !77, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @mt7601u_init_hardware.beacon_offsets, !1, !"beacon_offsets", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt7601u/init.c", i32 319, i32 19}
!2 = !{ptr @mt7601u_alloc_device.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt7601u/init.c", i32 444, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mt7601u_alloc_device.__key.1, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/mediatek/mt7601u/init.c", i32 445, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mt7601u_alloc_device.__key.3, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt7601u/init.c", i32 446, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mt7601u_alloc_device.__key.5, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/mediatek/mt7601u/init.c", i32 447, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mt7601u_alloc_device.__key.7, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/mediatek/mt7601u/init.c", i32 448, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mt7601u_alloc_device.__key.9, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/mediatek/mt7601u/init.c", i32 449, i32 2}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mt7601u_alloc_device.__key.11, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/mediatek/mt7601u/init.c", i32 450, i32 2}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mt7601u_alloc_device.__key.13, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/mediatek/mt7601u/init.c", i32 451, i32 2}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mt7601u_alloc_device.__key.15, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/mediatek/mt7601u/init.c", i32 452, i32 2}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/mediatek/mt7601u/init.c", i32 456, i32 33}
!31 = !{ptr @mt7601u_register_device.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/mediatek/mt7601u/init.c", i32 621, i32 2}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mt7601u_register_device.__key.19, !32, !"__key", i1 false, i1 false}
!35 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @mt7601u_register_device.__key.21, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/mediatek/mt7601u/init.c", i32 622, i32 2}
!38 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mt7601u_register_device.__key.23, !37, !"__key", i1 false, i1 false}
!40 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/mediatek/mt7601u/init.c", i32 269, i32 3}
!43 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.28, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.29, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mt7601u_mac_stop_hw._entry, !42, !"_entry", i1 false, i1 false}
!48 = !{ptr @mt7601u_mac_stop_hw._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/mediatek/mt7601u/init.c", i32 279, i32 3}
!51 = !{ptr @mt7601u_mac_stop_hw._entry.30, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mt7601u_mac_stop_hw._entry_ptr.32, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.34, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/mediatek/mt7601u/init.c", i32 299, i32 3}
!55 = !{ptr @mt7601u_mac_stop_hw._entry.33, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mt7601u_mac_stop_hw._entry_ptr.35, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.37, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/mediatek/mt7601u/init.c", i32 302, i32 3}
!59 = !{ptr @mt7601u_mac_stop_hw._entry.36, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mt7601u_mac_stop_hw._entry_ptr.38, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.39, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/mediatek/mt7601u/init.c", i32 56, i32 3}
!63 = !{ptr @.str.40, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.41, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mt7601u_set_wlan_state._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @mt7601u_set_wlan_state._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @mac_common_vals, !68, !"mac_common_vals", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/mediatek/mt7601u/initvals.h", i32 107, i32 35}
!69 = !{ptr @mac_chip_vals, !70, !"mac_chip_vals", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/mediatek/mt7601u/initvals.h", i32 137, i32 35}
!71 = !{ptr @bbp_common_vals, !72, !"bbp_common_vals", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/mediatek/mt7601u/initvals.h", i32 10, i32 35}
!73 = !{ptr @bbp_chip_vals, !74, !"bbp_chip_vals", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/mediatek/mt7601u/initvals.h", i32 29, i32 35}
!75 = !{ptr @skb_queue_head_init.__key, !76, !"__key", i1 false, i1 false}
!76 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!77 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @mt76_channels_2ghz, !79, !"mt76_channels_2ghz", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/mediatek/mt7601u/init.c", i32 472, i32 39}
!80 = !{ptr @mt76_rates, !81, !"mt76_rates", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/mediatek/mt7601u/init.c", i32 502, i32 30}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"branch_weights", i32 1, i32 2000}
