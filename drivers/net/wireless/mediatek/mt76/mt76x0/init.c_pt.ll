; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x0/init.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x0/init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt76x0_chip_onoff\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x0_chip_onoff\09\09\09\09"
module asm "\09.long\09__crc_mt76x0_chip_onoff\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x0_chip_onoff:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x0_chip_onoff\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x0_chip_onoff:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x0_mac_stop\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x0_mac_stop\09\09\09\09"
module asm "\09.long\09__crc_mt76x0_mac_stop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x0_mac_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x0_mac_stop\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x0_mac_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x0_init_hardware\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x0_init_hardware\09\09\09\09"
module asm "\09.long\09__crc_mt76x0_init_hardware\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x0_init_hardware:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x0_init_hardware\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x0_init_hardware:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x0_register_device\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x0_register_device\09\09\09\09"
module asm "\09.long\09__crc_mt76x0_register_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x0_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x0_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x0_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.mt76_reg_pair = type { i32, i32 }
%struct.mt76x0_bbp_switch_item = type { i16, %struct.mt76_reg_pair }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.143, ptr, %union.anon.144, [20 x i8] }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.135], ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mt76_hw_cap = type { i8, i8, i8 }
%struct.mt76_sband = type { %struct.ieee80211_supported_band, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.134 }
%struct.anon.134 = type { [5 x i64], [5 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.135 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.136, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.136 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.62, i32, %struct.spinlock }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.106, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.106 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mt76_queue = type { ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i32, ptr, %struct.page_frag_cache }
%struct.page_frag_cache = type { ptr, i16, i16, i32, i8 }
%struct.mt76_worker = type { ptr, ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.141 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.143 = type { ptr, i32 }
%union.anon.144 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_mt76x0_chip_onoff = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x0_chip_onoff = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x0_chip_onoff = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x0_chip_onoff to i32), ptr @__kstrtab_mt76x0_chip_onoff, ptr @__kstrtabns_mt76x0_chip_onoff }, section "___ksymtab_gpl+mt76x0_chip_onoff", align 4
@mt76x0_mac_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 149, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Warning: MAC TX did not stop!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt76x0_mac_stop\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/mediatek/mt76/mt76x0/init.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt76x0_mac_stop._entry_ptr = internal global ptr @mt76x0_mac_stop._entry, section ".printk_index", align 4
@mt76x0_mac_stop._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 167, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Warning: MAC RX did not stop!\0A\00", [33 x i8] zeroinitializer }, align 32
@mt76x0_mac_stop._entry_ptr.7 = internal global ptr @mt76x0_mac_stop._entry.5, section ".printk_index", align 4
@__kstrtab_mt76x0_mac_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x0_mac_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x0_mac_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x0_mac_stop to i32), ptr @__kstrtab_mt76x0_mac_stop, ptr @__kstrtabns_mt76x0_mac_stop }, section "___ksymtab_gpl+mt76x0_mac_stop", align 4
@__kstrtab_mt76x0_init_hardware = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x0_init_hardware = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x0_init_hardware = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x0_init_hardware to i32), ptr @__kstrtab_mt76x0_init_hardware, ptr @__kstrtabns_mt76x0_init_hardware }, section "___ksymtab_gpl+mt76x0_init_hardware", align 4
@mt76x02_rates = external dso_local global [12 x %struct.ieee80211_rate], align 4
@__kstrtab_mt76x0_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x0_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x0_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x0_register_device to i32), ptr @__kstrtab_mt76x0_register_device, ptr @__kstrtabns_mt76x0_register_device }, section "___ksymtab_gpl+mt76x0_register_device", align 4
@mt76x0_set_wlan_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 41, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PLL and XTAL check failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt76x0_set_wlan_state\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mt76x0_set_wlan_state._entry_ptr = internal global ptr @mt76x0_set_wlan_state._entry, section ".printk_index", align 4
@common_mac_reg_table = internal constant { [31 x %struct.mt76_reg_pair], [40 x i8] } { [31 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 1052, i32 -118429472 }, %struct.mt76_reg_pair { i32 1056, i32 1870123208 }, %struct.mt76_reg_pair { i32 5128, i32 319 }, %struct.mt76_reg_pair { i32 5132, i32 32771 }, %struct.mt76_reg_pair { i32 4100, i32 0 }, %struct.mt76_reg_pair { i32 5120, i32 98199 }, %struct.mt76_reg_pair { i32 4356, i32 521 }, %struct.mt76_reg_pair { i32 4912, i32 0 }, %struct.mt76_reg_pair { i32 4916, i32 525830 }, %struct.mt76_reg_pair { i32 4944, i32 4128 }, %struct.mt76_reg_pair { i32 4936, i32 663696 }, %struct.mt76_reg_pair { i32 4120, i32 663551 }, %struct.mt76_reg_pair { i32 4140, i32 2130910790 }, %struct.mt76_reg_pair { i32 1032, i32 532619039 }, %struct.mt76_reg_pair { i32 1036, i32 65183 }, %struct.mt76_reg_pair { i32 4940, i32 1204821775 }, %struct.mt76_reg_pair { i32 5124, i32 19 }, %struct.mt76_reg_pair { i32 4964, i32 133431299 }, %struct.mt76_reg_pair { i32 4968, i32 133439492 }, %struct.mt76_reg_pair { i32 1028, i32 15990790 }, %struct.mt76_reg_pair { i32 520, i32 48 }, %struct.mt76_reg_pair { i32 4980, i32 24387588 }, %struct.mt76_reg_pair { i32 4984, i32 66330756 }, %struct.mt76_reg_pair { i32 4972, i32 24387588 }, %struct.mt76_reg_pair { i32 4976, i32 66330756 }, %struct.mt76_reg_pair { i32 4928, i32 22591 }, %struct.mt76_reg_pair { i32 4932, i32 16776992 }, %struct.mt76_reg_pair { i32 4992, i32 2359498 }, %struct.mt76_reg_pair { i32 5640, i32 2 }, %struct.mt76_reg_pair { i32 4352, i32 866390032 }, %struct.mt76_reg_pair { i32 4612, i32 0 }], [40 x i8] zeroinitializer }, align 32
@mt76x0_mac_reg_table = internal constant { [35 x %struct.mt76_reg_pair], [72 x i8] } { [35 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 292, i32 -1610350464 }, %struct.mt76_reg_pair { i32 1024, i32 527360 }, %struct.mt76_reg_pair { i32 1028, i32 2003975199 }, %struct.mt76_reg_pair { i32 2048, i32 1 }, %struct.mt76_reg_pair { i32 4144, i32 -1431725945 }, %struct.mt76_reg_pair { i32 4912, i32 1537 }, %struct.mt76_reg_pair { i32 4916, i32 262144 }, %struct.mt76_reg_pair { i32 4920, i32 0 }, %struct.mt76_reg_pair { i32 2628, i32 0 }, %struct.mt76_reg_pair { i32 608, i32 0 }, %struct.mt76_reg_pair { i32 592, i32 0 }, %struct.mt76_reg_pair { i32 4632, i32 5242965 }, %struct.mt76_reg_pair { i32 4640, i32 5242965 }, %struct.mt76_reg_pair { i32 5040, i32 791609356 }, %struct.mt76_reg_pair { i32 5056, i32 0 }, %struct.mt76_reg_pair { i32 4884, i32 976894522 }, %struct.mt76_reg_pair { i32 4888, i32 976894522 }, %struct.mt76_reg_pair { i32 4892, i32 976894522 }, %struct.mt76_reg_pair { i32 4896, i32 976894522 }, %struct.mt76_reg_pair { i32 4900, i32 976894522 }, %struct.mt76_reg_pair { i32 5076, i32 976894522 }, %struct.mt76_reg_pair { i32 5080, i32 58 }, %struct.mt76_reg_pair { i32 5084, i32 58 }, %struct.mt76_reg_pair { i32 5388, i32 2 }, %struct.mt76_reg_pair { i32 4664, i32 1507528 }, %struct.mt76_reg_pair { i32 108, i32 10897334 }, %struct.mt76_reg_pair { i32 112, i32 1795187812 }, %struct.mt76_reg_pair { i32 5132, i32 16387 }, %struct.mt76_reg_pair { i32 5136, i32 511 }, %struct.mt76_reg_pair { i32 5640, i32 0 }, %struct.mt76_reg_pair { i32 5388, i32 3 }, %struct.mt76_reg_pair { i32 5088, i32 -470540284 }, %struct.mt76_reg_pair { i32 5092, i32 -470540156 }, %struct.mt76_reg_pair { i32 5096, i32 -470540028 }, %struct.mt76_reg_pair { i32 4952, i32 -305419904 }], [72 x i8] zeroinitializer }, align 32
@mt76x0_bbp_init_tab = internal constant { [58 x %struct.mt76_reg_pair], [112 x i8] } { [58 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 8196, i32 2 }, %struct.mt76_reg_pair { i32 8208, i32 0 }, %struct.mt76_reg_pair { i32 8288, i32 0 }, %struct.mt76_reg_pair { i32 8320, i32 1073938442 }, %struct.mt76_reg_pair { i32 8360, i32 0 }, %struct.mt76_reg_pair { i32 8368, i32 0 }, %struct.mt76_reg_pair { i32 8492, i32 266240129 }, %struct.mt76_reg_pair { i32 8960, i32 136192 }, %struct.mt76_reg_pair { i32 8964, i32 3 }, %struct.mt76_reg_pair { i32 8968, i32 3826788 }, %struct.mt76_reg_pair { i32 9020, i32 -2002613064 }, %struct.mt76_reg_pair { i32 9048, i32 7713 }, %struct.mt76_reg_pair { i32 9052, i32 10028 }, %struct.mt76_reg_pair { i32 9056, i32 12090 }, %struct.mt76_reg_pair { i32 9060, i32 -2147483558 }, %struct.mt76_reg_pair { i32 9064, i32 8134661 }, %struct.mt76_reg_pair { i32 9092, i32 12856 }, %struct.mt76_reg_pair { i32 9096, i32 658444 }, %struct.mt76_reg_pair { i32 9108, i32 555820588 }, %struct.mt76_reg_pair { i32 9124, i32 943210053 }, %struct.mt76_reg_pair { i32 9188, i32 4112 }, %struct.mt76_reg_pair { i32 9196, i32 -1163784554 }, %struct.mt76_reg_pair { i32 9212, i32 1 }, %struct.mt76_reg_pair { i32 9216, i32 2622467 }, %struct.mt76_reg_pair { i32 9220, i32 0 }, %struct.mt76_reg_pair { i32 9476, i32 18 }, %struct.mt76_reg_pair { i32 9480, i32 17 }, %struct.mt76_reg_pair { i32 9484, i32 5 }, %struct.mt76_reg_pair { i32 9488, i32 0 }, %struct.mt76_reg_pair { i32 9492, i32 -109591316 }, %struct.mt76_reg_pair { i32 9500, i32 144 }, %struct.mt76_reg_pair { i32 9760, i32 0 }, %struct.mt76_reg_pair { i32 9984, i32 0 }, %struct.mt76_reg_pair { i32 10000, i32 4 }, %struct.mt76_reg_pair { i32 10008, i32 0 }, %struct.mt76_reg_pair { i32 10016, i32 20 }, %struct.mt76_reg_pair { i32 10020, i32 536870912 }, %struct.mt76_reg_pair { i32 10024, i32 0 }, %struct.mt76_reg_pair { i32 10032, i32 0 }, %struct.mt76_reg_pair { i32 10036, i32 0 }, %struct.mt76_reg_pair { i32 10040, i32 0 }, %struct.mt76_reg_pair { i32 10044, i32 0 }, %struct.mt76_reg_pair { i32 10048, i32 0 }, %struct.mt76_reg_pair { i32 10052, i32 0 }, %struct.mt76_reg_pair { i32 10244, i32 34816 }, %struct.mt76_reg_pair { i32 10252, i32 0 }, %struct.mt76_reg_pair { i32 10256, i32 0 }, %struct.mt76_reg_pair { i32 10548, i32 402 }, %struct.mt76_reg_pair { i32 10552, i32 394770 }, %struct.mt76_reg_pair { i32 10556, i32 -936240360 }, %struct.mt76_reg_pair { i32 10560, i32 30 }, %struct.mt76_reg_pair { i32 10564, i32 0 }, %struct.mt76_reg_pair { i32 10568, i32 -872371821 }, %struct.mt76_reg_pair { i32 10572, i32 -1177838407 }, %struct.mt76_reg_pair { i32 10576, i32 650117207 }, %struct.mt76_reg_pair { i32 10580, i32 1 }, %struct.mt76_reg_pair { i32 10592, i32 6 }, %struct.mt76_reg_pair { i32 10608, i32 63 }], [112 x i8] zeroinitializer }, align 32
@mt76x0_bbp_switch_tab = internal constant { [48 x %struct.mt76x0_bbp_switch_item], [128 x i8] } { [48 x %struct.mt76x0_bbp_switch_item] [%struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 8976, i32 535666761 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 8976, i32 535601236 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 8984, i32 69 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 8984, i32 10 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 8992, i32 372526832 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 8992, i32 304895218 } }, %struct.mt76x0_bbp_switch_item { i16 257, %struct.mt76_reg_pair { i32 9008, i32 84224121 } }, %struct.mt76x0_bbp_switch_item { i16 258, %struct.mt76_reg_pair { i32 9008, i32 84224249 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9008, i32 84224249 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 9012, i32 889520132 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9012, i32 741999622 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 9016, i32 823078460 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9016, i32 823077439 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 9064, i32 8134661 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9064, i32 8134661 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 9068, i32 225 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9068, i32 236 } }, %struct.mt76x0_bbp_switch_item { i16 257, %struct.mt76_reg_pair { i32 9072, i32 395270 } }, %struct.mt76x0_bbp_switch_item { i16 258, %struct.mt76_reg_pair { i32 9072, i32 329734 } }, %struct.mt76x0_bbp_switch_item { i16 514, %struct.mt76_reg_pair { i32 9072, i32 395265 } }, %struct.mt76x0_bbp_switch_item { i16 521, %struct.mt76_reg_pair { i32 9072, i32 395270 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 10608, i32 138 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 9084, i32 3619 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9084, i32 3603 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 9088, i32 12824 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9088, i32 6172 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 9092, i32 12864 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9092, i32 12824 } }, %struct.mt76x0_bbp_switch_item { i16 257, %struct.mt76_reg_pair { i32 9100, i32 286332438 } }, %struct.mt76x0_bbp_switch_item { i16 258, %struct.mt76_reg_pair { i32 9100, i32 286332182 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9100, i32 286331153 } }, %struct.mt76x0_bbp_switch_item { i16 257, %struct.mt76_reg_pair { i32 9116, i32 707407926 } }, %struct.mt76x0_bbp_switch_item { i16 258, %struct.mt76_reg_pair { i32 9116, i32 707406902 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9116, i32 707406378 } }, %struct.mt76x0_bbp_switch_item { i16 257, %struct.mt76_reg_pair { i32 9132, i32 656880696 } }, %struct.mt76x0_bbp_switch_item { i16 258, %struct.mt76_reg_pair { i32 9132, i32 656878904 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9132, i32 656874010 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 9164, i32 387390492 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9164, i32 -1 } }, %struct.mt76x0_bbp_switch_item { i16 257, %struct.mt76_reg_pair { i32 9172, i32 640035375 } }, %struct.mt76x0_bbp_switch_item { i16 258, %struct.mt76_reg_pair { i32 9172, i32 640037423 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9172, i32 -1 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 9180, i32 1077952576 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9180, i32 -1 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 9192, i32 4112 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9192, i32 0 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 10240, i32 1028653280 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 10240, i32 -1991245600 } }], [128 x i8] zeroinitializer }, align 32
@mt76x0_dcoc_tab = internal constant { [9 x %struct.mt76_reg_pair], [56 x i8] } { [9 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 11452, i32 4336 }, %struct.mt76_reg_pair { i32 11456, i32 32896 }, %struct.mt76_reg_pair { i32 11460, i32 3847 }, %struct.mt76_reg_pair { i32 11464, i32 64 }, %struct.mt76_reg_pair { i32 11468, i32 1028 }, %struct.mt76_reg_pair { i32 11472, i32 526339 }, %struct.mt76_reg_pair { i32 11476, i32 1796 }, %struct.mt76_reg_pair { i32 11480, i32 10280 }, %struct.mt76_reg_pair { i32 11484, i32 20560 }], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 149, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 167, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [52 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x0/init.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 41, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [21 x i8] c"common_mac_reg_table\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 14, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant [21 x i8] c"mt76x0_mac_reg_table\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 48, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"mt76x0_bbp_init_tab\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 86, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant [22 x i8] c"mt76x0_bbp_switch_tab\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [56 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x0/initvals.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 14, i32 44 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"mt76x0_dcoc_tab\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [61 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x0/initvals_init.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 147, i32 35 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_mt76x0_chip_onoff, ptr @__ksymtab_mt76x0_init_hardware, ptr @__ksymtab_mt76x0_mac_stop, ptr @__ksymtab_mt76x0_register_device, ptr @mt76x0_mac_stop._entry, ptr @mt76x0_mac_stop._entry.5, ptr @mt76x0_mac_stop._entry_ptr, ptr @mt76x0_mac_stop._entry_ptr.7, ptr @mt76x0_set_wlan_state._entry, ptr @mt76x0_set_wlan_state._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @common_mac_reg_table, ptr @mt76x0_mac_reg_table, ptr @mt76x0_bbp_init_tab, ptr @mt76x0_bbp_switch_tab, ptr @mt76x0_dcoc_tab], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_mac_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_mac_stop._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_set_wlan_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @common_mac_reg_table to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_mac_reg_table to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_bbp_init_tab to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_bbp_switch_tab to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_dcoc_tab to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x0_chip_onoff(ptr noundef %dev, i1 noundef zeroext %enable, i1 noundef zeroext %reset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 128) #5
  br i1 %reset, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then:                                          ; preds = %entry
  %or = and i32 %call, 16777183
  %and = or i32 %or, -16777216
  %and2 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.if.end8_crit_edge, label %if.then4

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %or5 = or i32 %or, -16777204
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr, align 4
  tail call void %7(ptr noundef %dev, i32 noundef 128, i32 noundef %or5) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 4294960) #5
  %and7 = and i32 %or5, -45
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %val.0 = phi i32 [ %and7, %if.then4 ], [ %and, %if.then.if.end8_crit_edge ], [ %call, %entry.if.end8_crit_edge ]
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus, align 4
  %wr10 = getelementptr inbounds %struct.mt76_bus_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %wr10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wr10, align 4
  tail call void %12(ptr noundef %dev, i32 noundef 128, i32 noundef %val.0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 4294960) #5
  %or.i = or i32 %val.0, 3
  %and.i = and i32 %val.0, -2
  %val.addr.0.i = select i1 %enable, i32 %or.i, i32 %and.i
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wr.i, align 4
  tail call void %17(ptr noundef %dev, i32 noundef 128, i32 noundef %val.addr.0.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 4294960) #5
  br i1 %enable, label %land.lhs.true.i, label %if.end8.mt76x0_set_wlan_state.exit_crit_edge

if.end8.mt76x0_set_wlan_state.exit_crit_edge:     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_set_wlan_state.exit

land.lhs.true.i:                                  ; preds = %if.end8
  %call.i = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 32, i32 noundef 12582912, i32 noundef 12582912, i32 noundef 2000) #5
  br i1 %call.i, label %land.lhs.true.i.mt76x0_set_wlan_state.exit_crit_edge, label %do.end.i

land.lhs.true.i.mt76x0_set_wlan_state.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_set_wlan_state.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev3.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %19 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev3.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.8) #8
  br label %mt76x0_set_wlan_state.exit

mt76x0_set_wlan_state.exit:                       ; preds = %do.end.i, %land.lhs.true.i.mt76x0_set_wlan_state.exit_crit_edge, %if.end8.mt76x0_set_wlan_state.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x0_mac_stop(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 4928, i32 noundef 1048576, i32 noundef 0) #5
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry
  %dec68 = phi i32 [ 199, %entry ], [ %dec, %while.body.land.rhs_crit_edge ]
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call2 = tail call i32 %7(ptr noundef %dev, i32 noundef 1080) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %land.rhs.while.body_crit_edge

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

lor.lhs.false:                                    ; preds = %land.rhs
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call6 = tail call i32 %11(ptr noundef %dev, i32 noundef 2608) #5
  %and7 = and i32 %call6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %lor.rhs, label %lor.lhs.false.while.body_crit_edge

lor.lhs.false.while.body_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

lor.rhs:                                          ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call11 = tail call i32 %15(ptr noundef %dev, i32 noundef 2612) #5
  %and12 = and i32 %call11, 16711935
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %lor.rhs.while.end_crit_edge, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

lor.rhs.while.end_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %lor.lhs.false.while.body_crit_edge, %land.rhs.while.body_crit_edge
  tail call void @msleep(i32 noundef 10) #5
  %dec = add nsw i32 %dec68, -1
  %tobool.not = icmp eq i32 %dec68, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %lor.rhs.while.end_crit_edge
  %call14 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 4608, i32 noundef 1, i32 noundef 0, i32 noundef 1000) #5
  br i1 %call14, label %while.end.if.end_crit_edge, label %do.end

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev15 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %16 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev15, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %while.end.if.end_crit_edge
  %18 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus, align 4
  %rmw17 = getelementptr inbounds %struct.mt76_bus_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %rmw17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmw17, align 4
  %call18 = tail call i32 %21(ptr noundef %dev, i32 noundef 4100, i32 noundef 12, i32 noundef 0) #5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %ok.070 = phi i32 [ 0, %if.end ], [ %ok.1, %for.inc.for.body_crit_edge ]
  %i.169 = phi i32 [ 0, %if.end ], [ %inc38, %for.inc.for.body_crit_edge ]
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call21 = tail call i32 %25(ptr noundef %dev, i32 noundef 1072) #5
  %and22 = and i32 %call21, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %land.lhs.true, label %for.body.if.end37_crit_edge

for.body.if.end37_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

land.lhs.true:                                    ; preds = %for.body
  %26 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call26 = tail call i32 %29(ptr noundef %dev, i32 noundef 2608) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

land.lhs.true28:                                  ; preds = %land.lhs.true
  %30 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %call31 = tail call i32 %33(ptr noundef %dev, i32 noundef 2612) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %land.lhs.true28.if.end37_crit_edge

land.lhs.true28.if.end37_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then33:                                        ; preds = %land.lhs.true28
  %inc = add i32 %ok.070, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %ok.070)
  %cmp34 = icmp sgt i32 %ok.070, 5
  br i1 %cmp34, label %if.then33.for.end_crit_edge, label %if.then33.for.inc_crit_edge

if.then33.for.inc_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then33.for.end_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end37:                                         ; preds = %land.lhs.true28.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge, %for.body.if.end37_crit_edge
  tail call void @msleep(i32 noundef 1) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end37, %if.then33.for.inc_crit_edge
  %ok.1 = phi i32 [ %ok.070, %if.end37 ], [ %inc, %if.then33.for.inc_crit_edge ]
  %inc38 = add nuw nsw i32 %i.169, 1
  %exitcond.not = icmp eq i32 %inc38, 200
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then33.for.end_crit_edge
  %call39 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 4608, i32 noundef 2, i32 noundef 0, i32 noundef 1000) #5
  br i1 %call39, label %for.end.if.end45_crit_edge, label %do.end43

for.end.if.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

do.end43:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev44 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %34 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev44, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.6) #8
  br label %if.end45

if.end45:                                         ; preds = %do.end43, %for.end.if.end45_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x0_init_hardware(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 520, i32 noundef 10, i32 noundef 0, i32 noundef 1000) #5
  br i1 %call.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %if.end
  %i.06.i = phi i32 [ 0, %if.end ], [ %inc.i, %sw.epilog.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %3 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call1.i = tail call i32 %6(ptr noundef %dev, i32 noundef 4096) #5
  %7 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i, label %if.end3 [
    i32 0, label %if.end.i.sw.epilog.i_crit_edge
    i32 -1, label %if.end.i.sw.epilog.i_crit_edge86
  ]

if.end.i.sw.epilog.i_crit_edge86:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end.i.sw.epilog.i_crit_edge, %if.end.i.sw.epilog.i_crit_edge86
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #5
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 500
  br i1 %exitcond.not.i, label %sw.epilog.i.cleanup_crit_edge, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end.i
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr.i, align 4
  tail call void %11(ptr noundef %dev, i32 noundef 4100, i32 noundef 3) #5
  tail call void @msleep(i32 noundef 200) #5
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmw.i, align 4
  %call.i63 = tail call i32 %15(ptr noundef %dev, i32 noundef 4100, i32 noundef 3, i32 noundef 0) #5
  %call4 = tail call i32 @mt76x02_mcu_function_select(ptr noundef %dev, i32 noundef 1, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 4
  %wr_rp.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %wr_rp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr_rp.i, align 4
  %call.i65 = tail call i32 %19(ptr noundef %dev, i32 noundef 4259840, ptr noundef nonnull @common_mac_reg_table, i32 noundef 31) #5
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 4
  %wr_rp2.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %wr_rp2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wr_rp2.i, align 4
  %call3.i = tail call i32 %23(ptr noundef %dev, i32 noundef 4259840, ptr noundef nonnull @mt76x0_mac_reg_table, i32 noundef 35) #5
  %24 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i, align 4
  %rmw.i66 = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %rmw.i66 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmw.i66, align 4
  %call5.i = tail call i32 %27(ptr noundef %dev, i32 noundef 4100, i32 noundef 3, i32 noundef 0) #5
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 4
  %rmw7.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %rmw7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmw7.i, align 4
  %call8.i = tail call i32 %31(ptr noundef %dev, i32 noundef 5148, i32 noundef 0, i32 noundef 61440) #5
  %32 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i, align 4
  %rmw10.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %rmw10.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmw10.i, align 4
  %call11.i = tail call i32 %35(ptr noundef %dev, i32 noundef 2060, i32 noundef 16, i32 noundef 0) #5
  %36 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i, align 4
  %rmw13.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %rmw13.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmw13.i, align 4
  %call14.i = tail call i32 %39(ptr noundef %dev, i32 noundef 560, i32 noundef 1023, i32 noundef 513) #5
  %call.i67 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 4608, i32 noundef 3, i32 noundef 0, i32 noundef 100) #5
  br i1 %call.i67, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call.i68 = tail call i32 @mt76x0_phy_wait_bbp_ready(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool.not.i69 = icmp eq i32 %call.i68, 0
  br i1 %tobool.not.i69, label %if.end.i73, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i73:                                       ; preds = %if.end9
  %40 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i, align 4
  %wr_rp.i71 = getelementptr inbounds %struct.mt76_bus_ops, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %wr_rp.i71 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wr_rp.i71, align 4
  %call1.i72 = tail call i32 %43(ptr noundef %dev, i32 noundef 4259840, ptr noundef nonnull @mt76x0_bbp_init_tab, i32 noundef 58) #5
  br label %for.body.i74

for.body.i74:                                     ; preds = %if.end6.i.for.body.i74_crit_edge, %if.end.i73
  %i.022.i = phi i32 [ 0, %if.end.i73 ], [ %inc.i76, %if.end6.i.for.body.i74_crit_edge ]
  %arrayidx.i = getelementptr [48 x %struct.mt76x0_bbp_switch_item], ptr @mt76x0_bbp_switch_tab, i32 0, i32 %i.022.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.i, align 4
  %46 = and i16 %45, 257
  call void @__sanitizer_cov_trace_const_cmp2(i16 257, i16 %46)
  %cmp2.i = icmp eq i16 %46, 257
  br i1 %cmp2.i, label %if.then4.i, label %for.body.i74.if.end6.i_crit_edge

for.body.i74.if.end6.i_crit_edge:                 ; preds = %for.body.i74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then4.i:                                       ; preds = %for.body.i74
  call void @__sanitizer_cov_trace_pc() #7
  %reg_pair.i = getelementptr [48 x %struct.mt76x0_bbp_switch_item], ptr @mt76x0_bbp_switch_tab, i32 0, i32 %i.022.i, i32 1
  %47 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus.i, align 4
  %wr.i75 = getelementptr inbounds %struct.mt76_bus_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %wr.i75 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wr.i75, align 4
  %51 = ptrtoint ptr %reg_pair.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %reg_pair.i, align 4
  %value.i = getelementptr [48 x %struct.mt76x0_bbp_switch_item], ptr @mt76x0_bbp_switch_tab, i32 0, i32 %i.022.i, i32 1, i32 1
  %53 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %value.i, align 4
  tail call void %50(ptr noundef %dev, i32 noundef %52, i32 noundef %54) #5
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %for.body.i74.if.end6.i_crit_edge
  %inc.i76 = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i77 = icmp eq i32 %inc.i76, 48
  br i1 %exitcond.not.i77, label %if.end13, label %if.end6.i.for.body.i74_crit_edge

if.end6.i.for.body.i74_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i74

if.end13:                                         ; preds = %if.end6.i
  %55 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus.i, align 4
  %wr_rp8.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %wr_rp8.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wr_rp8.i, align 4
  %call9.i = tail call i32 %58(ptr noundef %dev, i32 noundef 4259840, ptr noundef nonnull @mt76x0_dcoc_tab, i32 noundef 9) #5
  %59 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %call14 = tail call i32 %62(ptr noundef %dev, i32 noundef 5120) #5
  %rxfilter = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 55
  %63 = ptrtoint ptr %rxfilter to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call14, ptr %rxfilter, align 16
  br label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond15.preheader.for.cond15.preheader_crit_edge, %if.end13
  %i.083 = phi i32 [ 0, %if.end13 ], [ %inc21, %for.cond15.preheader.for.cond15.preheader_crit_edge ]
  %conv = trunc i32 %i.083 to i8
  %call19 = tail call i32 @mt76x02_mac_shared_key_setup(ptr noundef %dev, i8 noundef zeroext %conv, i8 noundef zeroext 0, ptr noundef null) #5
  %call19.1 = tail call i32 @mt76x02_mac_shared_key_setup(ptr noundef %dev, i8 noundef zeroext %conv, i8 noundef zeroext 1, ptr noundef null) #5
  %call19.2 = tail call i32 @mt76x02_mac_shared_key_setup(ptr noundef %dev, i8 noundef zeroext %conv, i8 noundef zeroext 2, ptr noundef null) #5
  %call19.3 = tail call i32 @mt76x02_mac_shared_key_setup(ptr noundef %dev, i8 noundef zeroext %conv, i8 noundef zeroext 3, ptr noundef null) #5
  %inc21 = add nuw nsw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc21, 16
  br i1 %exitcond.not, label %for.cond15.preheader.for.body26_crit_edge, label %for.cond15.preheader.for.cond15.preheader_crit_edge

for.cond15.preheader.for.cond15.preheader_crit_edge: ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond15.preheader

for.cond15.preheader.for.body26_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body26

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.cond15.preheader.for.body26_crit_edge
  %i.184 = phi i32 [ %inc29, %for.body26.for.body26_crit_edge ], [ 0, %for.cond15.preheader.for.body26_crit_edge ]
  %conv27 = trunc i32 %i.184 to i8
  tail call void @mt76x02_mac_wcid_setup(ptr noundef %dev, i8 noundef zeroext %conv27, i8 noundef zeroext 0, ptr noundef null) #5
  %inc29 = add nuw nsw i32 %i.184, 1
  %exitcond85.not = icmp eq i32 %inc29, 256
  br i1 %exitcond85.not, label %for.end30, label %for.body26.for.body26_crit_edge

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body26

for.end30:                                        ; preds = %for.body26
  %call31 = tail call i32 @mt76x0_eeprom_init(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %for.end30.cleanup_crit_edge

for.end30.cleanup_crit_edge:                      ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mt76x0_phy_init(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %for.end30.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ -5, %entry.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ -5, %if.end6.cleanup_crit_edge ], [ %call31, %for.end30.cleanup_crit_edge ], [ %call.i68, %if.end9.cleanup_crit_edge ], [ -110, %for.body.i.cleanup_crit_edge ], [ -110, %sw.epilog.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_mcu_function_select(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_mac_shared_key_setup(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_mac_wcid_setup(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x0_eeprom_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x0_phy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x0_register_device(ptr noundef %dev) #0 align 64 {
entry:
  %t.i28 = alloca %struct.mt76_rate_power, align 1
  %tp.i29 = alloca i8, align 1
  %t.i = alloca %struct.mt76_rate_power, align 1
  %tp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt76x02_init_device(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mt76x02_config_mac_addr_list(ptr noundef %dev) #5
  %call1 = tail call i32 @mt76_register_device(ptr noundef %dev, i1 noundef zeroext true, ptr noundef nonnull @mt76x02_rates, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cap = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 9
  %has_5ghz = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %has_5ghz to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_5ghz, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool5.not = icmp eq i8 %1, 0
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %if.then6

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  %sband_5g = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 11
  %cap8 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 11, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %cap8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cap8, align 4
  %and = and i32 %3, -17
  store i32 %and, ptr %cap8, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %t.i) #5
  %4 = call ptr @memset(ptr %t.i, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tp.i) #5
  %5 = ptrtoint ptr %tp.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %tp.i, align 1, !annotation !46
  %n_channels.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 11, i32 0, i32 3
  %6 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp15.i = icmp sgt i32 %7, 0
  br i1 %cmp15.i, label %if.then6.for.body.i_crit_edge, label %if.then6.mt76x0_init_txpower.exit_crit_edge

if.then6.mt76x0_init_txpower.exit_crit_edge:      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_init_txpower.exit

if.then6.for.body.i_crit_edge:                    ; preds = %if.then6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then6.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then6.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %sband_5g to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sband_5g, align 4
  %arrayidx.i = getelementptr %struct.ieee80211_channel, ptr %9, i32 %i.016.i
  call void @mt76x0_get_tx_power_per_rate(ptr noundef %dev, ptr noundef %arrayidx.i, ptr noundef nonnull %t.i) #5
  call void @mt76x0_get_power_info(ptr noundef %dev, ptr noundef %arrayidx.i, ptr noundef nonnull %tp.i) #5
  %call.i = call i32 @mt76x02_get_max_rate_power(ptr noundef nonnull %t.i) #5
  %10 = ptrtoint ptr %tp.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tp.i, align 1
  %conv.i = sext i8 %11 to i32
  %add.i = add i32 %call.i, %conv.i
  %div.i = sdiv i32 %add.i, 2
  %orig_mpwr.i = getelementptr %struct.ieee80211_channel, ptr %9, i32 %i.016.i, i32 11
  %12 = ptrtoint ptr %orig_mpwr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div.i, ptr %orig_mpwr.i, align 4
  %max_reg_power.i = getelementptr %struct.ieee80211_channel, ptr %9, i32 %i.016.i, i32 7
  %13 = ptrtoint ptr %max_reg_power.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_reg_power.i, align 4
  %15 = call i32 @llvm.smin.i32(i32 %14, i32 %div.i) #5
  %max_power.i = getelementptr %struct.ieee80211_channel, ptr %9, i32 %i.016.i, i32 6
  %16 = ptrtoint ptr %max_power.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %max_power.i, align 4
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %17 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_channels.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %18
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mt76x0_init_txpower.exit_crit_edge

for.body.i.mt76x0_init_txpower.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_init_txpower.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

mt76x0_init_txpower.exit:                         ; preds = %for.body.i.mt76x0_init_txpower.exit_crit_edge, %if.then6.mt76x0_init_txpower.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tp.i) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %t.i) #5
  br label %if.end9

if.end9:                                          ; preds = %mt76x0_init_txpower.exit, %if.end4.if.end9_crit_edge
  %19 = ptrtoint ptr %cap to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cap, align 8, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool11.not = icmp eq i8 %20, 0
  br i1 %tobool11.not, label %if.end9.if.end14_crit_edge, label %if.then12

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  %sband_2g = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %t.i28) #5
  %21 = call ptr @memset(ptr %t.i28, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tp.i29) #5
  %22 = ptrtoint ptr %tp.i29 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %tp.i29, align 1, !annotation !46
  %n_channels.i30 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 10, i32 0, i32 3
  %23 = ptrtoint ptr %n_channels.i30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_channels.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp15.i31 = icmp sgt i32 %24, 0
  br i1 %cmp15.i31, label %if.then12.for.body.i43_crit_edge, label %if.then12.mt76x0_init_txpower.exit44_crit_edge

if.then12.mt76x0_init_txpower.exit44_crit_edge:   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_init_txpower.exit44

if.then12.for.body.i43_crit_edge:                 ; preds = %if.then12
  br label %for.body.i43

for.body.i43:                                     ; preds = %for.body.i43.for.body.i43_crit_edge, %if.then12.for.body.i43_crit_edge
  %i.016.i32 = phi i32 [ %inc.i41, %for.body.i43.for.body.i43_crit_edge ], [ 0, %if.then12.for.body.i43_crit_edge ]
  %25 = ptrtoint ptr %sband_2g to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sband_2g, align 4
  %arrayidx.i33 = getelementptr %struct.ieee80211_channel, ptr %26, i32 %i.016.i32
  call void @mt76x0_get_tx_power_per_rate(ptr noundef %dev, ptr noundef %arrayidx.i33, ptr noundef nonnull %t.i28) #5
  call void @mt76x0_get_power_info(ptr noundef %dev, ptr noundef %arrayidx.i33, ptr noundef nonnull %tp.i29) #5
  %call.i34 = call i32 @mt76x02_get_max_rate_power(ptr noundef nonnull %t.i28) #5
  %27 = ptrtoint ptr %tp.i29 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tp.i29, align 1
  %conv.i35 = sext i8 %28 to i32
  %add.i36 = add i32 %call.i34, %conv.i35
  %div.i37 = sdiv i32 %add.i36, 2
  %orig_mpwr.i38 = getelementptr %struct.ieee80211_channel, ptr %26, i32 %i.016.i32, i32 11
  %29 = ptrtoint ptr %orig_mpwr.i38 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div.i37, ptr %orig_mpwr.i38, align 4
  %max_reg_power.i39 = getelementptr %struct.ieee80211_channel, ptr %26, i32 %i.016.i32, i32 7
  %30 = ptrtoint ptr %max_reg_power.i39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_reg_power.i39, align 4
  %32 = call i32 @llvm.smin.i32(i32 %31, i32 %div.i37) #5
  %max_power.i40 = getelementptr %struct.ieee80211_channel, ptr %26, i32 %i.016.i32, i32 6
  %33 = ptrtoint ptr %max_power.i40 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %max_power.i40, align 4
  %inc.i41 = add nuw nsw i32 %i.016.i32, 1
  %34 = ptrtoint ptr %n_channels.i30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n_channels.i30, align 4
  %cmp.i42 = icmp slt i32 %inc.i41, %35
  br i1 %cmp.i42, label %for.body.i43.for.body.i43_crit_edge, label %for.body.i43.mt76x0_init_txpower.exit44_crit_edge

for.body.i43.mt76x0_init_txpower.exit44_crit_edge: ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_init_txpower.exit44

for.body.i43.for.body.i43_crit_edge:              ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i43

mt76x0_init_txpower.exit44:                       ; preds = %for.body.i43.mt76x0_init_txpower.exit44_crit_edge, %if.then12.mt76x0_init_txpower.exit44_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tp.i29) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %t.i28) #5
  br label %if.end14

if.end14:                                         ; preds = %mt76x0_init_txpower.exit44, %if.end9.if.end14_crit_edge
  call void @mt76x02_init_debugfs(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_init_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_config_mac_addr_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_register_device(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_init_debugfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll_msec(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x0_phy_wait_bbp_ready(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x0_get_tx_power_per_rate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x0_get_power_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_get_max_rate_power(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__ksymtab_mt76x0_chip_onoff, !1, !"__ksymtab_mt76x0_chip_onoff", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/init.c", i32 70, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/init.c", i32 149, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mt76x0_mac_stop._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @mt76x0_mac_stop._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/init.c", i32 167, i32 3}
!12 = !{ptr @mt76x0_mac_stop._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @mt76x0_mac_stop._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_mt76x0_mac_stop, !15, !"__ksymtab_mt76x0_mac_stop", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/init.c", i32 169, i32 1}
!16 = !{ptr @__ksymtab_mt76x0_init_hardware, !17, !"__ksymtab_mt76x0_init_hardware", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/init.c", i32 213, i32 1}
!18 = !{ptr @__ksymtab_mt76x0_register_device, !19, !"__ksymtab_mt76x0_register_device", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/init.c", i32 266, i32 1}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/init.c", i32 41, i32 3}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mt76x0_set_wlan_state._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @mt76x0_set_wlan_state._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @common_mac_reg_table, !27, !"common_mac_reg_table", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/initvals_init.h", i32 14, i32 35}
!28 = !{ptr @mt76x0_mac_reg_table, !29, !"mt76x0_mac_reg_table", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/initvals_init.h", i32 48, i32 35}
!30 = !{ptr @mt76x0_bbp_init_tab, !31, !"mt76x0_bbp_init_tab", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/initvals_init.h", i32 86, i32 35}
!32 = !{ptr @mt76x0_bbp_switch_tab, !33, !"mt76x0_bbp_switch_tab", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/initvals.h", i32 14, i32 44}
!34 = !{ptr @mt76x0_dcoc_tab, !35, !"mt76x0_dcoc_tab", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/initvals_init.h", i32 147, i32 35}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i8 0, i8 2}
!46 = !{!"auto-init"}
