; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x0/phy.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x0/phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt76x0_phy_calibrate\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x0_phy_calibrate\09\09\09\09"
module asm "\09.long\09__crc_mt76x0_phy_calibrate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x0_phy_calibrate:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x0_phy_calibrate\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x0_phy_calibrate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mt76_reg_pair = type { i32, i32 }
%struct.mt76x0_freq_item = type { i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i32, i8 }
%struct.mt76x0_rf_switch_item = type { i32, i16, i8 }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mt76x02_dev = type { %union.anon, [8 x %struct.mac_address], %struct.mutex, i8, %struct.anon.146, %struct.spinlock, i32, i32, ptr, %struct.delayed_work, %struct.delayed_work, %struct.hrtimer, %struct.work_struct, ptr, i8, i8, i32, i8, i8, %struct.mt76x02_calibration, i32, i8, [2 x i8], i8, i8, i16, i8, %struct.mt76x02_dfs_pattern_detector, i32, i8, i8, i8, i8, i8, i8, i64, [16 x i8] }
%union.anon = type { %struct.mt76_dev }
%struct.mac_address = type { [6 x i8] }
%struct.anon.146 = type { %union.anon.147, [0 x %struct.mt76x02_tx_status] }
%union.anon.147 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.mt76x02_tx_status = type { i8, i8, i8, i8, i16 }
%struct.mt76x02_calibration = type { %struct.mt76x02_rx_freq_cal, [2 x i8], [2 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8 }
%struct.mt76x02_rx_freq_cal = type { [2 x i8], [2 x i8], i8, i32, i16, i8 }
%struct.mt76x02_dfs_pattern_detector = type { i8, i32, %struct.mt76x02_dfs_sw_detector_params, [2 x %struct.mt76x02_dfs_event_rb], %struct.list_head, %struct.list_head, %struct.mt76x02_dfs_seq_stats, i32, i32, [4 x %struct.mt76x02_dfs_engine_stats], %struct.tasklet_struct }
%struct.mt76x02_dfs_sw_detector_params = type { i32, i32, i32 }
%struct.mt76x02_dfs_event_rb = type { [256 x %struct.mt76x02_dfs_event], i32, i32 }
%struct.mt76x02_dfs_event = type { i32, i32, i16, i8 }
%struct.mt76x02_dfs_seq_stats = type { i32, i32 }
%struct.mt76x02_dfs_engine_stats = type { i32, i32, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@mt76x0_phy_wait_bbp_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 197, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error: BBP is not ready\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt76x0_phy_wait_bbp_ready\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/wireless/mediatek/mt76/mt76x0/phy.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt76x0_phy_wait_bbp_ready._entry_ptr = internal global ptr @mt76x0_phy_wait_bbp_ready._entry, section ".printk_index", align 4
@mt76x0_phy_wait_bbp_ready.__UNIQUE_ID_ddebug427 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt76x0_common\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BBP version %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_mt76x0_phy_calibrate = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x0_phy_calibrate = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x0_phy_calibrate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x0_phy_calibrate to i32), ptr @__kstrtab_mt76x0_phy_calibrate, ptr @__kstrtabns_mt76x0_phy_calibrate }, section "___ksymtab_gpl+mt76x0_phy_calibrate", align 4
@mt76x0_phy_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&dev->cal_work)->work)\00", [53 x i8] zeroinitializer }, align 32
@mt76x0_phy_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&dev->cal_work)->timer\00", [39 x i8] zeroinitializer }, align 32
@mt76x0_rf_rr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mt76x0_rf_csr_rr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mt76x0_rf_csr_rr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 97, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error: RF read %d:%d failed:%d!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt76x0_rf_csr_rr\00", [47 x i8] zeroinitializer }, align 32
@mt76x0_rf_csr_rr._entry_ptr = internal global ptr @mt76x0_rf_csr_rr._entry, section ".printk_index", align 4
@mt76x0_rf_wr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mt76x0_rf_csr_wr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mt76x0_rf_csr_wr.__already_done.13 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mt76x0_rf_csr_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 54, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error: RF write %d:%d failed:%d!!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt76x0_rf_csr_wr\00", [47 x i8] zeroinitializer }, align 32
@mt76x0_rf_csr_wr._entry_ptr = internal global ptr @mt76x0_rf_csr_wr._entry, section ".printk_index", align 4
@mt76x0_rf_2g_channel_0_tab = internal constant { [68 x %struct.mt76_reg_pair], [128 x i8] } { [68 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 327682, i32 12 }, %struct.mt76_reg_pair { i32 327683, i32 0 }, %struct.mt76_reg_pair { i32 327684, i32 0 }, %struct.mt76_reg_pair { i32 327685, i32 132 }, %struct.mt76_reg_pair { i32 327686, i32 2 }, %struct.mt76_reg_pair { i32 327687, i32 0 }, %struct.mt76_reg_pair { i32 327688, i32 0 }, %struct.mt76_reg_pair { i32 327689, i32 0 }, %struct.mt76_reg_pair { i32 327690, i32 81 }, %struct.mt76_reg_pair { i32 327691, i32 34 }, %struct.mt76_reg_pair { i32 327692, i32 34 }, %struct.mt76_reg_pair { i32 327693, i32 15 }, %struct.mt76_reg_pair { i32 327694, i32 71 }, %struct.mt76_reg_pair { i32 327695, i32 37 }, %struct.mt76_reg_pair { i32 327696, i32 199 }, %struct.mt76_reg_pair { i32 327697, i32 0 }, %struct.mt76_reg_pair { i32 327698, i32 0 }, %struct.mt76_reg_pair { i32 327699, i32 48 }, %struct.mt76_reg_pair { i32 327700, i32 51 }, %struct.mt76_reg_pair { i32 327701, i32 2 }, %struct.mt76_reg_pair { i32 327702, i32 50 }, %struct.mt76_reg_pair { i32 327703, i32 0 }, %struct.mt76_reg_pair { i32 327704, i32 37 }, %struct.mt76_reg_pair { i32 327706, i32 0 }, %struct.mt76_reg_pair { i32 327707, i32 18 }, %struct.mt76_reg_pair { i32 327708, i32 15 }, %struct.mt76_reg_pair { i32 327709, i32 0 }, %struct.mt76_reg_pair { i32 327710, i32 81 }, %struct.mt76_reg_pair { i32 327711, i32 53 }, %struct.mt76_reg_pair { i32 327712, i32 49 }, %struct.mt76_reg_pair { i32 327713, i32 49 }, %struct.mt76_reg_pair { i32 327714, i32 52 }, %struct.mt76_reg_pair { i32 327715, i32 3 }, %struct.mt76_reg_pair { i32 327716, i32 0 }, %struct.mt76_reg_pair { i32 327717, i32 221 }, %struct.mt76_reg_pair { i32 327718, i32 179 }, %struct.mt76_reg_pair { i32 327719, i32 51 }, %struct.mt76_reg_pair { i32 327720, i32 177 }, %struct.mt76_reg_pair { i32 327721, i32 113 }, %struct.mt76_reg_pair { i32 327722, i32 242 }, %struct.mt76_reg_pair { i32 327723, i32 71 }, %struct.mt76_reg_pair { i32 327724, i32 119 }, %struct.mt76_reg_pair { i32 327725, i32 14 }, %struct.mt76_reg_pair { i32 327726, i32 16 }, %struct.mt76_reg_pair { i32 327727, i32 0 }, %struct.mt76_reg_pair { i32 327728, i32 83 }, %struct.mt76_reg_pair { i32 327729, i32 3 }, %struct.mt76_reg_pair { i32 327730, i32 239 }, %struct.mt76_reg_pair { i32 327731, i32 199 }, %struct.mt76_reg_pair { i32 327732, i32 98 }, %struct.mt76_reg_pair { i32 327733, i32 98 }, %struct.mt76_reg_pair { i32 327734, i32 0 }, %struct.mt76_reg_pair { i32 327735, i32 0 }, %struct.mt76_reg_pair { i32 327736, i32 15 }, %struct.mt76_reg_pair { i32 327737, i32 15 }, %struct.mt76_reg_pair { i32 327738, i32 22 }, %struct.mt76_reg_pair { i32 327739, i32 22 }, %struct.mt76_reg_pair { i32 327740, i32 16 }, %struct.mt76_reg_pair { i32 327741, i32 16 }, %struct.mt76_reg_pair { i32 327742, i32 208 }, %struct.mt76_reg_pair { i32 327743, i32 108 }, %struct.mt76_reg_pair { i32 327744, i32 88 }, %struct.mt76_reg_pair { i32 327745, i32 88 }, %struct.mt76_reg_pair { i32 327746, i32 242 }, %struct.mt76_reg_pair { i32 327747, i32 232 }, %struct.mt76_reg_pair { i32 327748, i32 240 }, %struct.mt76_reg_pair { i32 327749, i32 240 }, %struct.mt76_reg_pair { i32 327807, i32 4 }], [128 x i8] zeroinitializer }, align 32
@mt76x0_rf_5g_channel_0_tab = internal constant { [38 x %struct.mt76_reg_pair], [80 x i8] } { [38 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 393218, i32 12 }, %struct.mt76_reg_pair { i32 393219, i32 0 }, %struct.mt76_reg_pair { i32 393220, i32 0 }, %struct.mt76_reg_pair { i32 393221, i32 132 }, %struct.mt76_reg_pair { i32 393222, i32 2 }, %struct.mt76_reg_pair { i32 393223, i32 0 }, %struct.mt76_reg_pair { i32 393224, i32 0 }, %struct.mt76_reg_pair { i32 393225, i32 0 }, %struct.mt76_reg_pair { i32 393226, i32 0 }, %struct.mt76_reg_pair { i32 393227, i32 1 }, %struct.mt76_reg_pair { i32 393229, i32 35 }, %struct.mt76_reg_pair { i32 393230, i32 0 }, %struct.mt76_reg_pair { i32 393231, i32 4 }, %struct.mt76_reg_pair { i32 393232, i32 34 }, %struct.mt76_reg_pair { i32 393234, i32 8 }, %struct.mt76_reg_pair { i32 393235, i32 0 }, %struct.mt76_reg_pair { i32 393236, i32 0 }, %struct.mt76_reg_pair { i32 393237, i32 0 }, %struct.mt76_reg_pair { i32 393238, i32 251 }, %struct.mt76_reg_pair { i32 393241, i32 118 }, %struct.mt76_reg_pair { i32 393242, i32 36 }, %struct.mt76_reg_pair { i32 393243, i32 4 }, %struct.mt76_reg_pair { i32 393244, i32 0 }, %struct.mt76_reg_pair { i32 393245, i32 0 }, %struct.mt76_reg_pair { i32 393253, i32 187 }, %struct.mt76_reg_pair { i32 393254, i32 179 }, %struct.mt76_reg_pair { i32 393256, i32 51 }, %struct.mt76_reg_pair { i32 393257, i32 51 }, %struct.mt76_reg_pair { i32 393259, i32 3 }, %struct.mt76_reg_pair { i32 393260, i32 179 }, %struct.mt76_reg_pair { i32 393262, i32 23 }, %struct.mt76_reg_pair { i32 393263, i32 14 }, %struct.mt76_reg_pair { i32 393264, i32 16 }, %struct.mt76_reg_pair { i32 393265, i32 7 }, %struct.mt76_reg_pair { i32 393278, i32 0 }, %struct.mt76_reg_pair { i32 393279, i32 0 }, %struct.mt76_reg_pair { i32 393280, i32 241 }, %struct.mt76_reg_pair { i32 393281, i32 15 }], [80 x i8] zeroinitializer }, align 32
@mt76x0_sdm_channel = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\B7\B9+-679:fgijsu~\7F\81\82\8B\8D\96\97\99\9A\A3\A5", [38 x i8] zeroinitializer }, align 32
@mt76x0_frequency_plan = internal constant { [125 x %struct.mt76x0_freq_item], [1132 x i8] } { [125 x %struct.mt76x0_freq_item] [%struct.mt76x0_freq_item { i8 1, i32 256, i8 2, i8 63, i8 40, i8 -35, i8 -30, i8 64, i8 2, i8 64, i8 2, i8 0, i8 0, i8 1, i16 40, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 2, i32 256, i8 2, i8 63, i8 60, i8 -35, i8 -28, i8 64, i8 7, i8 64, i8 2, i8 0, i8 0, i8 1, i16 161, i8 0, i8 48, i8 0, i32 0, i8 1 }, %struct.mt76x0_freq_item { i8 3, i32 256, i8 2, i8 63, i8 60, i8 -35, i8 -30, i8 64, i8 7, i8 64, i8 11, i8 0, i8 0, i8 1, i16 80, i8 0, i8 48, i8 0, i32 0, i8 0 }, %struct.mt76x0_freq_item { i8 4, i32 256, i8 2, i8 63, i8 40, i8 -35, i8 -44, i8 64, i8 2, i8 64, i8 9, i8 0, i8 0, i8 1, i16 80, i8 0, i8 48, i8 0, i32 0, i8 0 }, %struct.mt76x0_freq_item { i8 5, i32 256, i8 2, i8 63, i8 60, i8 -35, i8 -44, i8 64, i8 7, i8 64, i8 2, i8 0, i8 0, i8 1, i16 162, i8 0, i8 48, i8 0, i32 0, i8 1 }, %struct.mt76x0_freq_item { i8 6, i32 256, i8 2, i8 63, i8 60, i8 -35, i8 -44, i8 64, i8 7, i8 64, i8 7, i8 0, i8 0, i8 1, i16 162, i8 0, i8 48, i8 0, i32 0, i8 1 }, %struct.mt76x0_freq_item { i8 7, i32 256, i8 2, i8 63, i8 40, i8 -35, i8 -30, i8 64, i8 2, i8 64, i8 7, i8 0, i8 0, i8 1, i16 40, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 8, i32 256, i8 2, i8 63, i8 60, i8 -35, i8 -44, i8 64, i8 7, i8 64, i8 2, i8 0, i8 0, i8 1, i16 163, i8 0, i8 48, i8 0, i32 0, i8 1 }, %struct.mt76x0_freq_item { i8 9, i32 256, i8 2, i8 63, i8 60, i8 -35, i8 -14, i8 64, i8 7, i8 64, i8 13, i8 0, i8 0, i8 1, i16 40, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 10, i32 256, i8 2, i8 63, i8 40, i8 -35, i8 -44, i8 64, i8 2, i8 64, i8 9, i8 0, i8 0, i8 1, i16 81, i8 0, i8 48, i8 0, i32 0, i8 0 }, %struct.mt76x0_freq_item { i8 11, i32 256, i8 2, i8 63, i8 60, i8 -35, i8 -44, i8 64, i8 7, i8 64, i8 2, i8 0, i8 0, i8 1, i16 164, i8 0, i8 48, i8 0, i32 0, i8 1 }, %struct.mt76x0_freq_item { i8 12, i32 256, i8 2, i8 63, i8 60, i8 -35, i8 -44, i8 64, i8 7, i8 64, i8 7, i8 0, i8 0, i8 1, i16 164, i8 0, i8 48, i8 0, i32 0, i8 1 }, %struct.mt76x0_freq_item { i8 13, i32 256, i8 2, i8 63, i8 40, i8 -35, i8 -14, i8 64, i8 2, i8 64, i8 2, i8 0, i8 0, i8 1, i16 41, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 14, i32 256, i8 2, i8 63, i8 40, i8 -35, i8 -14, i8 64, i8 2, i8 64, i8 4, i8 0, i8 0, i8 1, i16 41, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -73, i32 8704, i8 2, i8 63, i8 112, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 23, i8 0, i8 0, i8 1, i16 40, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -72, i32 8704, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 0, i8 0, i8 0, i8 1, i16 41, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -71, i32 8704, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 1, i8 0, i8 0, i8 1, i16 41, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -69, i32 8704, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 3, i8 0, i8 0, i8 1, i16 41, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -68, i32 8704, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 2, i8 0, i8 0, i8 1, i16 41, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -67, i32 8704, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 5, i8 0, i8 0, i8 1, i16 41, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -64, i32 8704, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 4, i8 0, i8 0, i8 1, i16 41, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -60, i32 8704, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 6, i8 0, i8 0, i8 1, i16 41, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 36, i32 1536, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 2, i8 0, i8 0, i8 1, i16 43, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 37, i32 1536, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 5, i8 0, i8 0, i8 1, i16 43, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 38, i32 1536, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 3, i8 0, i8 0, i8 1, i16 43, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 39, i32 1536, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 7, i8 0, i8 0, i8 1, i16 43, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 40, i32 1536, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 4, i8 0, i8 0, i8 1, i16 43, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 41, i32 1536, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 9, i8 0, i8 0, i8 1, i16 43, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 42, i32 1536, i8 2, i8 63, i8 48, i8 -35, i8 -46, i8 64, i8 4, i8 64, i8 5, i8 0, i8 0, i8 1, i16 43, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 43, i32 1536, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 11, i8 0, i8 0, i8 1, i16 43, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 44, i32 1536, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 6, i8 0, i8 0, i8 1, i16 43, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 45, i32 1536, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 13, i8 0, i8 0, i8 1, i16 43, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 46, i32 1536, i8 2, i8 63, i8 48, i8 -35, i8 -46, i8 64, i8 4, i8 64, i8 7, i8 0, i8 0, i8 1, i16 43, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 47, i32 1536, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 15, i8 0, i8 0, i8 1, i16 43, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 48, i32 1536, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 8, i8 0, i8 0, i8 1, i16 43, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 49, i32 1536, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 17, i8 0, i8 0, i8 1, i16 43, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 50, i32 1536, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 9, i8 0, i8 0, i8 1, i16 43, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 51, i32 1536, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 19, i8 0, i8 0, i8 1, i16 43, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 52, i32 1536, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 10, i8 0, i8 0, i8 1, i16 43, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 53, i32 1536, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 21, i8 0, i8 0, i8 1, i16 43, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 54, i32 1536, i8 2, i8 63, i8 48, i8 -35, i8 -46, i8 64, i8 4, i8 64, i8 11, i8 0, i8 0, i8 1, i16 43, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 55, i32 1536, i8 2, i8 63, i8 112, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 23, i8 0, i8 0, i8 1, i16 43, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 56, i32 1536, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 0, i8 0, i8 0, i8 1, i16 44, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 57, i32 1536, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 1, i8 0, i8 0, i8 1, i16 44, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 58, i32 1536, i8 2, i8 63, i8 48, i8 -35, i8 -46, i8 64, i8 4, i8 64, i8 1, i8 0, i8 0, i8 1, i16 44, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 59, i32 1536, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 3, i8 0, i8 0, i8 1, i16 44, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 60, i32 1536, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 2, i8 0, i8 0, i8 1, i16 44, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 61, i32 1536, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 5, i8 0, i8 0, i8 1, i16 44, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 62, i32 1536, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 3, i8 0, i8 0, i8 1, i16 44, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 63, i32 1536, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 7, i8 0, i8 0, i8 1, i16 44, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 64, i32 1536, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 4, i8 0, i8 0, i8 1, i16 44, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 100, i32 2560, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 10, i8 0, i8 0, i8 1, i16 45, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 101, i32 2560, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 21, i8 0, i8 0, i8 1, i16 45, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 102, i32 2560, i8 2, i8 63, i8 48, i8 -35, i8 -46, i8 64, i8 4, i8 64, i8 11, i8 0, i8 0, i8 1, i16 45, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 103, i32 2560, i8 2, i8 63, i8 112, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 23, i8 0, i8 0, i8 1, i16 45, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 104, i32 2560, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 0, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 105, i32 2560, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 1, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 106, i32 2560, i8 2, i8 63, i8 48, i8 -35, i8 -46, i8 64, i8 4, i8 64, i8 1, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 107, i32 2560, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 3, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 108, i32 2560, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 2, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 109, i32 2560, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 5, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 110, i32 2560, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 3, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 111, i32 2560, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 7, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 112, i32 2560, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 4, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 113, i32 2560, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 9, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 114, i32 2560, i8 2, i8 63, i8 48, i8 -35, i8 -46, i8 64, i8 4, i8 64, i8 5, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 115, i32 2560, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 11, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 116, i32 2560, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 6, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 117, i32 2560, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 13, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 118, i32 2560, i8 2, i8 63, i8 48, i8 -35, i8 -46, i8 64, i8 4, i8 64, i8 7, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 119, i32 2560, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 15, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 120, i32 2560, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 8, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 121, i32 2560, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 17, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 122, i32 2560, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 9, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 123, i32 2560, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 19, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 124, i32 2560, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 10, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 125, i32 2560, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 21, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 126, i32 2560, i8 2, i8 63, i8 48, i8 -35, i8 -46, i8 64, i8 4, i8 64, i8 11, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 127, i32 2560, i8 2, i8 63, i8 112, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 23, i8 0, i8 0, i8 1, i16 46, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -128, i32 2560, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 0, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -127, i32 2560, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 1, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -126, i32 2560, i8 2, i8 63, i8 48, i8 -35, i8 -46, i8 64, i8 4, i8 64, i8 1, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -125, i32 2560, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 3, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -124, i32 2560, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 2, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -123, i32 2560, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 5, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -122, i32 2560, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 3, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -121, i32 2560, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 7, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -120, i32 2560, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 4, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -119, i32 4608, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 9, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -118, i32 4608, i8 2, i8 63, i8 48, i8 -35, i8 -46, i8 64, i8 4, i8 64, i8 5, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -117, i32 4608, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 11, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -116, i32 4608, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 6, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -115, i32 4608, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 13, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -114, i32 4608, i8 2, i8 63, i8 48, i8 -35, i8 -46, i8 64, i8 4, i8 64, i8 7, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -113, i32 4608, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 15, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -112, i32 4608, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 8, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -111, i32 4608, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 17, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -110, i32 4608, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 9, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -109, i32 4608, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 19, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -108, i32 4608, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 10, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -107, i32 4608, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 21, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -106, i32 4608, i8 2, i8 63, i8 48, i8 -35, i8 -46, i8 64, i8 4, i8 64, i8 11, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -105, i32 4608, i8 2, i8 63, i8 112, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 23, i8 0, i8 0, i8 1, i16 47, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -104, i32 4608, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 0, i8 0, i8 0, i8 1, i16 48, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -103, i32 4608, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 1, i8 0, i8 0, i8 1, i16 48, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -102, i32 4608, i8 2, i8 63, i8 48, i8 -35, i8 -46, i8 64, i8 4, i8 64, i8 1, i8 0, i8 0, i8 1, i16 48, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -101, i32 4608, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 3, i8 0, i8 0, i8 1, i16 48, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -100, i32 4608, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 2, i8 0, i8 0, i8 1, i16 48, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -99, i32 4608, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 5, i8 0, i8 0, i8 1, i16 48, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -98, i32 4608, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 3, i8 0, i8 0, i8 1, i16 48, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -97, i32 4608, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 7, i8 0, i8 0, i8 1, i16 48, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -96, i32 4608, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 4, i8 0, i8 0, i8 1, i16 48, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -95, i32 4608, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 9, i8 0, i8 0, i8 1, i16 48, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -94, i32 4608, i8 2, i8 63, i8 48, i8 -35, i8 -46, i8 64, i8 4, i8 64, i8 5, i8 0, i8 0, i8 1, i16 48, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -93, i32 4608, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 11, i8 0, i8 0, i8 1, i16 48, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -92, i32 4608, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 6, i8 0, i8 0, i8 1, i16 48, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -91, i32 4608, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 13, i8 0, i8 0, i8 1, i16 48, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -90, i32 4608, i8 2, i8 63, i8 48, i8 -35, i8 -46, i8 64, i8 4, i8 64, i8 7, i8 0, i8 0, i8 1, i16 48, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -89, i32 4608, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 15, i8 0, i8 0, i8 1, i16 48, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -88, i32 4608, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 8, i8 0, i8 0, i8 1, i16 48, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -87, i32 4608, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 17, i8 0, i8 0, i8 1, i16 48, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -86, i32 4608, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 9, i8 0, i8 0, i8 1, i16 48, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -85, i32 4608, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 19, i8 0, i8 0, i8 1, i16 48, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -84, i32 4608, i8 2, i8 63, i8 48, i8 -105, i8 -46, i8 64, i8 4, i8 64, i8 10, i8 0, i8 0, i8 1, i16 48, i8 0, i8 48, i8 0, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -83, i32 4608, i8 2, i8 63, i8 104, i8 -35, i8 -46, i8 64, i8 16, i8 64, i8 21, i8 0, i8 0, i8 1, i16 48, i8 0, i8 48, i8 0, i32 0, i8 3 }], [1132 x i8] zeroinitializer }, align 32
@mt76x0_sdm_frequency_plan = internal constant { [125 x %struct.mt76x0_freq_item], [1132 x i8] } { [125 x %struct.mt76x0_freq_item] [%struct.mt76x0_freq_item { i8 1, i32 256, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 40, i8 0, i8 0, i8 8, i32 52428, i8 3 }, %struct.mt76x0_freq_item { i8 2, i32 256, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 40, i8 0, i8 0, i8 8, i32 74274, i8 3 }, %struct.mt76x0_freq_item { i8 3, i32 256, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 40, i8 0, i8 0, i8 8, i32 96119, i8 3 }, %struct.mt76x0_freq_item { i8 4, i32 256, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 40, i8 0, i8 0, i8 8, i32 117964, i8 3 }, %struct.mt76x0_freq_item { i8 5, i32 256, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 40, i8 0, i8 0, i8 8, i32 139810, i8 3 }, %struct.mt76x0_freq_item { i8 6, i32 256, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 40, i8 0, i8 0, i8 8, i32 161655, i8 3 }, %struct.mt76x0_freq_item { i8 7, i32 256, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 40, i8 0, i8 0, i8 8, i32 183500, i8 3 }, %struct.mt76x0_freq_item { i8 8, i32 256, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 40, i8 0, i8 0, i8 8, i32 205346, i8 3 }, %struct.mt76x0_freq_item { i8 9, i32 256, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 40, i8 0, i8 0, i8 8, i32 227191, i8 3 }, %struct.mt76x0_freq_item { i8 10, i32 256, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 40, i8 0, i8 0, i8 8, i32 249036, i8 3 }, %struct.mt76x0_freq_item { i8 11, i32 256, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 41, i8 0, i8 0, i8 8, i32 8738, i8 3 }, %struct.mt76x0_freq_item { i8 12, i32 256, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 41, i8 0, i8 0, i8 8, i32 30583, i8 3 }, %struct.mt76x0_freq_item { i8 13, i32 256, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 41, i8 0, i8 0, i8 8, i32 52428, i8 3 }, %struct.mt76x0_freq_item { i8 14, i32 256, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 41, i8 0, i8 0, i8 8, i32 104857, i8 3 }, %struct.mt76x0_freq_item { i8 -73, i32 8704, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 40, i8 0, i8 0, i8 8, i32 251221, i8 3 }, %struct.mt76x0_freq_item { i8 -72, i32 8704, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 41, i8 0, i8 0, i8 8, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -71, i32 8704, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 41, i8 0, i8 0, i8 8, i32 10922, i8 3 }, %struct.mt76x0_freq_item { i8 -69, i32 8704, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 41, i8 0, i8 0, i8 8, i32 32768, i8 3 }, %struct.mt76x0_freq_item { i8 -68, i32 8704, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 41, i8 0, i8 0, i8 8, i32 43690, i8 3 }, %struct.mt76x0_freq_item { i8 -67, i32 8704, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 41, i8 0, i8 0, i8 8, i32 54613, i8 3 }, %struct.mt76x0_freq_item { i8 -64, i32 8704, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 41, i8 0, i8 0, i8 8, i32 87381, i8 3 }, %struct.mt76x0_freq_item { i8 -60, i32 8704, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 41, i8 0, i8 0, i8 8, i32 131072, i8 3 }, %struct.mt76x0_freq_item { i8 36, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 43, i8 0, i8 0, i8 8, i32 43690, i8 3 }, %struct.mt76x0_freq_item { i8 37, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 43, i8 0, i8 0, i8 8, i32 54613, i8 3 }, %struct.mt76x0_freq_item { i8 38, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 43, i8 0, i8 0, i8 8, i32 65536, i8 3 }, %struct.mt76x0_freq_item { i8 39, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 43, i8 0, i8 0, i8 8, i32 76458, i8 3 }, %struct.mt76x0_freq_item { i8 40, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 43, i8 0, i8 0, i8 8, i32 87381, i8 3 }, %struct.mt76x0_freq_item { i8 41, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 43, i8 0, i8 0, i8 8, i32 98304, i8 3 }, %struct.mt76x0_freq_item { i8 42, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 43, i8 0, i8 0, i8 8, i32 109226, i8 3 }, %struct.mt76x0_freq_item { i8 43, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 43, i8 0, i8 0, i8 8, i32 120149, i8 3 }, %struct.mt76x0_freq_item { i8 44, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 43, i8 0, i8 0, i8 8, i32 131072, i8 3 }, %struct.mt76x0_freq_item { i8 45, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 43, i8 0, i8 0, i8 8, i32 141994, i8 3 }, %struct.mt76x0_freq_item { i8 46, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 43, i8 0, i8 0, i8 8, i32 152917, i8 3 }, %struct.mt76x0_freq_item { i8 47, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 43, i8 0, i8 0, i8 8, i32 163840, i8 3 }, %struct.mt76x0_freq_item { i8 48, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 43, i8 0, i8 0, i8 8, i32 174762, i8 3 }, %struct.mt76x0_freq_item { i8 49, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 43, i8 0, i8 0, i8 8, i32 185685, i8 3 }, %struct.mt76x0_freq_item { i8 50, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 43, i8 0, i8 0, i8 8, i32 196608, i8 3 }, %struct.mt76x0_freq_item { i8 51, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 43, i8 0, i8 0, i8 8, i32 207530, i8 3 }, %struct.mt76x0_freq_item { i8 52, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 43, i8 0, i8 0, i8 8, i32 218453, i8 3 }, %struct.mt76x0_freq_item { i8 53, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 43, i8 0, i8 0, i8 8, i32 229376, i8 3 }, %struct.mt76x0_freq_item { i8 54, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 43, i8 0, i8 0, i8 8, i32 240298, i8 3 }, %struct.mt76x0_freq_item { i8 55, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 43, i8 0, i8 0, i8 8, i32 251221, i8 3 }, %struct.mt76x0_freq_item { i8 56, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 44, i8 0, i8 0, i8 8, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 57, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 44, i8 0, i8 0, i8 8, i32 10922, i8 3 }, %struct.mt76x0_freq_item { i8 58, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 44, i8 0, i8 0, i8 8, i32 21845, i8 3 }, %struct.mt76x0_freq_item { i8 59, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 44, i8 0, i8 0, i8 8, i32 32768, i8 3 }, %struct.mt76x0_freq_item { i8 60, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 44, i8 0, i8 0, i8 8, i32 43690, i8 3 }, %struct.mt76x0_freq_item { i8 61, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 44, i8 0, i8 0, i8 8, i32 54613, i8 3 }, %struct.mt76x0_freq_item { i8 62, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 44, i8 0, i8 0, i8 8, i32 65536, i8 3 }, %struct.mt76x0_freq_item { i8 63, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 44, i8 0, i8 0, i8 8, i32 76458, i8 3 }, %struct.mt76x0_freq_item { i8 64, i32 1536, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 44, i8 0, i8 0, i8 8, i32 87381, i8 3 }, %struct.mt76x0_freq_item { i8 100, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 45, i8 0, i8 0, i8 8, i32 218453, i8 3 }, %struct.mt76x0_freq_item { i8 101, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 45, i8 0, i8 0, i8 8, i32 229376, i8 3 }, %struct.mt76x0_freq_item { i8 102, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 45, i8 0, i8 0, i8 8, i32 240298, i8 3 }, %struct.mt76x0_freq_item { i8 103, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 45, i8 0, i8 0, i8 8, i32 251221, i8 3 }, %struct.mt76x0_freq_item { i8 104, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 105, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 10922, i8 3 }, %struct.mt76x0_freq_item { i8 106, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 21845, i8 3 }, %struct.mt76x0_freq_item { i8 107, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 32768, i8 3 }, %struct.mt76x0_freq_item { i8 108, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 43690, i8 3 }, %struct.mt76x0_freq_item { i8 109, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 54613, i8 3 }, %struct.mt76x0_freq_item { i8 110, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 65536, i8 3 }, %struct.mt76x0_freq_item { i8 111, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 76458, i8 3 }, %struct.mt76x0_freq_item { i8 112, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 87381, i8 3 }, %struct.mt76x0_freq_item { i8 113, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 98304, i8 3 }, %struct.mt76x0_freq_item { i8 114, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 109226, i8 3 }, %struct.mt76x0_freq_item { i8 115, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 120149, i8 3 }, %struct.mt76x0_freq_item { i8 116, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 131072, i8 3 }, %struct.mt76x0_freq_item { i8 117, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 141994, i8 3 }, %struct.mt76x0_freq_item { i8 118, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 152917, i8 3 }, %struct.mt76x0_freq_item { i8 119, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 163840, i8 3 }, %struct.mt76x0_freq_item { i8 120, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 174762, i8 3 }, %struct.mt76x0_freq_item { i8 121, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 185685, i8 3 }, %struct.mt76x0_freq_item { i8 122, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 196608, i8 3 }, %struct.mt76x0_freq_item { i8 123, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 207530, i8 3 }, %struct.mt76x0_freq_item { i8 124, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 218453, i8 3 }, %struct.mt76x0_freq_item { i8 125, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 229376, i8 3 }, %struct.mt76x0_freq_item { i8 126, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 240298, i8 3 }, %struct.mt76x0_freq_item { i8 127, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 46, i8 0, i8 0, i8 8, i32 251221, i8 3 }, %struct.mt76x0_freq_item { i8 -128, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -127, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 10922, i8 3 }, %struct.mt76x0_freq_item { i8 -126, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 21845, i8 3 }, %struct.mt76x0_freq_item { i8 -125, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 32768, i8 3 }, %struct.mt76x0_freq_item { i8 -124, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 43690, i8 3 }, %struct.mt76x0_freq_item { i8 -123, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 54613, i8 3 }, %struct.mt76x0_freq_item { i8 -122, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 65536, i8 3 }, %struct.mt76x0_freq_item { i8 -121, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 76458, i8 3 }, %struct.mt76x0_freq_item { i8 -120, i32 2560, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 87381, i8 3 }, %struct.mt76x0_freq_item { i8 -119, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 98304, i8 3 }, %struct.mt76x0_freq_item { i8 -118, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 109226, i8 3 }, %struct.mt76x0_freq_item { i8 -117, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 120149, i8 3 }, %struct.mt76x0_freq_item { i8 -116, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 131072, i8 3 }, %struct.mt76x0_freq_item { i8 -115, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 141994, i8 3 }, %struct.mt76x0_freq_item { i8 -114, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 152917, i8 3 }, %struct.mt76x0_freq_item { i8 -113, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 163840, i8 3 }, %struct.mt76x0_freq_item { i8 -112, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 174762, i8 3 }, %struct.mt76x0_freq_item { i8 -111, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 185685, i8 3 }, %struct.mt76x0_freq_item { i8 -110, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 196608, i8 3 }, %struct.mt76x0_freq_item { i8 -109, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 207530, i8 3 }, %struct.mt76x0_freq_item { i8 -108, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 218453, i8 3 }, %struct.mt76x0_freq_item { i8 -107, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 229376, i8 3 }, %struct.mt76x0_freq_item { i8 -106, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 240298, i8 3 }, %struct.mt76x0_freq_item { i8 -105, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 47, i8 0, i8 0, i8 8, i32 251221, i8 3 }, %struct.mt76x0_freq_item { i8 -104, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 48, i8 0, i8 0, i8 8, i32 0, i8 3 }, %struct.mt76x0_freq_item { i8 -103, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 48, i8 0, i8 0, i8 8, i32 10922, i8 3 }, %struct.mt76x0_freq_item { i8 -102, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 48, i8 0, i8 0, i8 8, i32 21845, i8 3 }, %struct.mt76x0_freq_item { i8 -101, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 48, i8 0, i8 0, i8 8, i32 32768, i8 3 }, %struct.mt76x0_freq_item { i8 -100, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 48, i8 0, i8 0, i8 8, i32 43690, i8 3 }, %struct.mt76x0_freq_item { i8 -99, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 48, i8 0, i8 0, i8 8, i32 54613, i8 3 }, %struct.mt76x0_freq_item { i8 -98, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 48, i8 0, i8 0, i8 8, i32 65536, i8 3 }, %struct.mt76x0_freq_item { i8 -97, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 48, i8 0, i8 0, i8 8, i32 76458, i8 3 }, %struct.mt76x0_freq_item { i8 -96, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 48, i8 0, i8 0, i8 8, i32 87381, i8 3 }, %struct.mt76x0_freq_item { i8 -95, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 48, i8 0, i8 0, i8 8, i32 98304, i8 3 }, %struct.mt76x0_freq_item { i8 -94, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 48, i8 0, i8 0, i8 8, i32 109226, i8 3 }, %struct.mt76x0_freq_item { i8 -93, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 48, i8 0, i8 0, i8 8, i32 120149, i8 3 }, %struct.mt76x0_freq_item { i8 -92, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 48, i8 0, i8 0, i8 8, i32 131072, i8 3 }, %struct.mt76x0_freq_item { i8 -91, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 48, i8 0, i8 0, i8 8, i32 141994, i8 3 }, %struct.mt76x0_freq_item { i8 -90, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 48, i8 0, i8 0, i8 8, i32 152917, i8 3 }, %struct.mt76x0_freq_item { i8 -89, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 48, i8 0, i8 0, i8 8, i32 163840, i8 3 }, %struct.mt76x0_freq_item { i8 -88, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 48, i8 0, i8 0, i8 8, i32 174762, i8 3 }, %struct.mt76x0_freq_item { i8 -87, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 48, i8 0, i8 0, i8 8, i32 185685, i8 3 }, %struct.mt76x0_freq_item { i8 -86, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 48, i8 0, i8 0, i8 8, i32 196608, i8 3 }, %struct.mt76x0_freq_item { i8 -85, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 48, i8 0, i8 0, i8 8, i32 207530, i8 3 }, %struct.mt76x0_freq_item { i8 -84, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 48, i8 0, i8 0, i8 8, i32 218453, i8 3 }, %struct.mt76x0_freq_item { i8 -83, i32 4608, i8 2, i8 63, i8 127, i8 -35, i8 -61, i8 64, i8 0, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 48, i8 0, i8 0, i8 8, i32 229376, i8 3 }], [1132 x i8] zeroinitializer }, align 32
@mt76x0_rf_bw_switch_tab = internal constant { [41 x %struct.mt76x0_rf_switch_item], [88 x i8] } { [41 x %struct.mt76x0_rf_switch_item] [%struct.mt76x0_rf_switch_item { i32 17, i16 257, i8 0 }, %struct.mt76x0_rf_switch_item { i32 17, i16 258, i8 0 }, %struct.mt76x0_rf_switch_item { i32 17, i16 513, i8 0 }, %struct.mt76x0_rf_switch_item { i32 17, i16 514, i8 0 }, %struct.mt76x0_rf_switch_item { i32 17, i16 520, i8 0 }, %struct.mt76x0_rf_switch_item { i32 458758, i16 257, i8 64 }, %struct.mt76x0_rf_switch_item { i32 458758, i16 258, i8 28 }, %struct.mt76x0_rf_switch_item { i32 458758, i16 513, i8 64 }, %struct.mt76x0_rf_switch_item { i32 458758, i16 514, i8 32 }, %struct.mt76x0_rf_switch_item { i32 458758, i16 520, i8 16 }, %struct.mt76x0_rf_switch_item { i32 458759, i16 257, i8 64 }, %struct.mt76x0_rf_switch_item { i32 458759, i16 258, i8 32 }, %struct.mt76x0_rf_switch_item { i32 458759, i16 513, i8 64 }, %struct.mt76x0_rf_switch_item { i32 458759, i16 514, i8 32 }, %struct.mt76x0_rf_switch_item { i32 458759, i16 520, i8 16 }, %struct.mt76x0_rf_switch_item { i32 458760, i16 257, i8 3 }, %struct.mt76x0_rf_switch_item { i32 458760, i16 258, i8 1 }, %struct.mt76x0_rf_switch_item { i32 458760, i16 513, i8 3 }, %struct.mt76x0_rf_switch_item { i32 458760, i16 514, i8 1 }, %struct.mt76x0_rf_switch_item { i32 458760, i16 520, i8 0 }, %struct.mt76x0_rf_switch_item { i32 458810, i16 257, i8 64 }, %struct.mt76x0_rf_switch_item { i32 458810, i16 258, i8 64 }, %struct.mt76x0_rf_switch_item { i32 458810, i16 513, i8 64 }, %struct.mt76x0_rf_switch_item { i32 458810, i16 514, i8 64 }, %struct.mt76x0_rf_switch_item { i32 458810, i16 520, i8 16 }, %struct.mt76x0_rf_switch_item { i32 458811, i16 257, i8 64 }, %struct.mt76x0_rf_switch_item { i32 458811, i16 258, i8 64 }, %struct.mt76x0_rf_switch_item { i32 458811, i16 513, i8 64 }, %struct.mt76x0_rf_switch_item { i32 458811, i16 514, i8 64 }, %struct.mt76x0_rf_switch_item { i32 458811, i16 520, i8 16 }, %struct.mt76x0_rf_switch_item { i32 458812, i16 257, i8 -86 }, %struct.mt76x0_rf_switch_item { i32 458812, i16 258, i8 -86 }, %struct.mt76x0_rf_switch_item { i32 458812, i16 513, i8 -86 }, %struct.mt76x0_rf_switch_item { i32 458812, i16 514, i8 -86 }, %struct.mt76x0_rf_switch_item { i32 458812, i16 520, i8 -86 }, %struct.mt76x0_rf_switch_item { i32 458828, i16 1, i8 64 }, %struct.mt76x0_rf_switch_item { i32 458828, i16 2, i8 64 }, %struct.mt76x0_rf_switch_item { i32 458828, i16 8, i8 16 }, %struct.mt76x0_rf_switch_item { i32 458829, i16 1, i8 64 }, %struct.mt76x0_rf_switch_item { i32 458829, i16 2, i8 64 }, %struct.mt76x0_rf_switch_item { i32 458829, i16 8, i8 16 }], [88 x i8] zeroinitializer }, align 32
@mt76x0_rf_band_switch_tab = internal constant { [43 x %struct.mt76x0_rf_switch_item], [72 x i8] } { [43 x %struct.mt76x0_rf_switch_item] [%struct.mt76x0_rf_switch_item { i32 16, i16 256, i8 32 }, %struct.mt76x0_rf_switch_item { i32 16, i16 512, i8 32 }, %struct.mt76x0_rf_switch_item { i32 18, i16 256, i8 0 }, %struct.mt76x0_rf_switch_item { i32 18, i16 512, i8 0 }, %struct.mt76x0_rf_switch_item { i32 39, i16 256, i8 54 }, %struct.mt76x0_rf_switch_item { i32 39, i16 1024, i8 52 }, %struct.mt76x0_rf_switch_item { i32 39, i16 2048, i8 51 }, %struct.mt76x0_rf_switch_item { i32 39, i16 4096, i8 49 }, %struct.mt76x0_rf_switch_item { i32 39, i16 8192, i8 54 }, %struct.mt76x0_rf_switch_item { i32 393228, i16 1024, i8 68 }, %struct.mt76x0_rf_switch_item { i32 393228, i16 2048, i8 68 }, %struct.mt76x0_rf_switch_item { i32 393228, i16 4096, i8 85 }, %struct.mt76x0_rf_switch_item { i32 393228, i16 8192, i8 68 }, %struct.mt76x0_rf_switch_item { i32 393233, i16 1024, i8 2 }, %struct.mt76x0_rf_switch_item { i32 393233, i16 2048, i8 0 }, %struct.mt76x0_rf_switch_item { i32 393233, i16 4096, i8 0 }, %struct.mt76x0_rf_switch_item { i32 393233, i16 8192, i8 5 }, %struct.mt76x0_rf_switch_item { i32 393240, i16 1024, i8 -95 }, %struct.mt76x0_rf_switch_item { i32 393240, i16 2048, i8 65 }, %struct.mt76x0_rf_switch_item { i32 393240, i16 4096, i8 33 }, %struct.mt76x0_rf_switch_item { i32 393240, i16 8192, i8 -31 }, %struct.mt76x0_rf_switch_item { i32 393255, i16 1024, i8 54 }, %struct.mt76x0_rf_switch_item { i32 393255, i16 2048, i8 52 }, %struct.mt76x0_rf_switch_item { i32 393255, i16 4096, i8 50 }, %struct.mt76x0_rf_switch_item { i32 393255, i16 8192, i8 55 }, %struct.mt76x0_rf_switch_item { i32 393258, i16 1024, i8 -5 }, %struct.mt76x0_rf_switch_item { i32 393258, i16 2048, i8 -13 }, %struct.mt76x0_rf_switch_item { i32 393258, i16 4096, i8 -21 }, %struct.mt76x0_rf_switch_item { i32 393258, i16 8192, i8 -21 }, %struct.mt76x0_rf_switch_item { i32 393343, i16 256, i8 -124 }, %struct.mt76x0_rf_switch_item { i32 393343, i16 512, i8 4 }, %struct.mt76x0_rf_switch_item { i32 458757, i16 256, i8 64 }, %struct.mt76x0_rf_switch_item { i32 458757, i16 512, i8 0 }, %struct.mt76x0_rf_switch_item { i32 458761, i16 256, i8 0 }, %struct.mt76x0_rf_switch_item { i32 458761, i16 512, i8 0 }, %struct.mt76x0_rf_switch_item { i32 458822, i16 256, i8 0 }, %struct.mt76x0_rf_switch_item { i32 458822, i16 512, i8 109 }, %struct.mt76x0_rf_switch_item { i32 458823, i16 256, i8 0 }, %struct.mt76x0_rf_switch_item { i32 458823, i16 512, i8 -80 }, %struct.mt76x0_rf_switch_item { i32 458830, i16 256, i8 0 }, %struct.mt76x0_rf_switch_item { i32 458830, i16 512, i8 85 }, %struct.mt76x0_rf_switch_item { i32 458831, i16 256, i8 0 }, %struct.mt76x0_rf_switch_item { i32 458831, i16 512, i8 85 }], [72 x i8] zeroinitializer }, align 32
@mt76x0_rf_ext_pa_tab = internal constant { [44 x %struct.mt76x0_rf_switch_item], [64 x i8] } { [44 x %struct.mt76x0_rf_switch_item] [%struct.mt76x0_rf_switch_item { i32 393261, i16 1024, i8 99 }, %struct.mt76x0_rf_switch_item { i32 393261, i16 2048, i8 67 }, %struct.mt76x0_rf_switch_item { i32 393261, i16 4096, i8 51 }, %struct.mt76x0_rf_switch_item { i32 393261, i16 8192, i8 115 }, %struct.mt76x0_rf_switch_item { i32 393266, i16 1024, i8 2 }, %struct.mt76x0_rf_switch_item { i32 393266, i16 2048, i8 2 }, %struct.mt76x0_rf_switch_item { i32 393266, i16 4096, i8 2 }, %struct.mt76x0_rf_switch_item { i32 393266, i16 8192, i8 2 }, %struct.mt76x0_rf_switch_item { i32 393267, i16 1024, i8 2 }, %struct.mt76x0_rf_switch_item { i32 393267, i16 2048, i8 2 }, %struct.mt76x0_rf_switch_item { i32 393267, i16 4096, i8 2 }, %struct.mt76x0_rf_switch_item { i32 393267, i16 8192, i8 2 }, %struct.mt76x0_rf_switch_item { i32 393268, i16 1024, i8 8 }, %struct.mt76x0_rf_switch_item { i32 393268, i16 2048, i8 8 }, %struct.mt76x0_rf_switch_item { i32 393268, i16 4096, i8 8 }, %struct.mt76x0_rf_switch_item { i32 393268, i16 8192, i8 8 }, %struct.mt76x0_rf_switch_item { i32 393269, i16 1024, i8 8 }, %struct.mt76x0_rf_switch_item { i32 393269, i16 2048, i8 8 }, %struct.mt76x0_rf_switch_item { i32 393269, i16 4096, i8 8 }, %struct.mt76x0_rf_switch_item { i32 393269, i16 8192, i8 8 }, %struct.mt76x0_rf_switch_item { i32 393270, i16 1024, i8 10 }, %struct.mt76x0_rf_switch_item { i32 393270, i16 2048, i8 10 }, %struct.mt76x0_rf_switch_item { i32 393270, i16 4096, i8 10 }, %struct.mt76x0_rf_switch_item { i32 393270, i16 8192, i8 10 }, %struct.mt76x0_rf_switch_item { i32 393271, i16 1024, i8 10 }, %struct.mt76x0_rf_switch_item { i32 393271, i16 2048, i8 10 }, %struct.mt76x0_rf_switch_item { i32 393271, i16 4096, i8 10 }, %struct.mt76x0_rf_switch_item { i32 393271, i16 8192, i8 10 }, %struct.mt76x0_rf_switch_item { i32 393272, i16 1024, i8 5 }, %struct.mt76x0_rf_switch_item { i32 393272, i16 2048, i8 5 }, %struct.mt76x0_rf_switch_item { i32 393272, i16 4096, i8 5 }, %struct.mt76x0_rf_switch_item { i32 393272, i16 8192, i8 5 }, %struct.mt76x0_rf_switch_item { i32 393273, i16 1024, i8 5 }, %struct.mt76x0_rf_switch_item { i32 393273, i16 2048, i8 5 }, %struct.mt76x0_rf_switch_item { i32 393273, i16 4096, i8 5 }, %struct.mt76x0_rf_switch_item { i32 393273, i16 8192, i8 5 }, %struct.mt76x0_rf_switch_item { i32 393274, i16 1024, i8 5 }, %struct.mt76x0_rf_switch_item { i32 393274, i16 2048, i8 3 }, %struct.mt76x0_rf_switch_item { i32 393274, i16 4096, i8 2 }, %struct.mt76x0_rf_switch_item { i32 393274, i16 8192, i8 7 }, %struct.mt76x0_rf_switch_item { i32 393275, i16 1024, i8 5 }, %struct.mt76x0_rf_switch_item { i32 393275, i16 2048, i8 3 }, %struct.mt76x0_rf_switch_item { i32 393275, i16 4096, i8 2 }, %struct.mt76x0_rf_switch_item { i32 393275, i16 8192, i8 7 }], [64 x i8] zeroinitializer }, align 32
@mt76x0_bbp_switch_tab = internal constant { [48 x %struct.mt76x0_bbp_switch_item], [128 x i8] } { [48 x %struct.mt76x0_bbp_switch_item] [%struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 8976, i32 535666761 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 8976, i32 535601236 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 8984, i32 69 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 8984, i32 10 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 8992, i32 372526832 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 8992, i32 304895218 } }, %struct.mt76x0_bbp_switch_item { i16 257, %struct.mt76_reg_pair { i32 9008, i32 84224121 } }, %struct.mt76x0_bbp_switch_item { i16 258, %struct.mt76_reg_pair { i32 9008, i32 84224249 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9008, i32 84224249 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 9012, i32 889520132 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9012, i32 741999622 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 9016, i32 823078460 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9016, i32 823077439 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 9064, i32 8134661 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9064, i32 8134661 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 9068, i32 225 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9068, i32 236 } }, %struct.mt76x0_bbp_switch_item { i16 257, %struct.mt76_reg_pair { i32 9072, i32 395270 } }, %struct.mt76x0_bbp_switch_item { i16 258, %struct.mt76_reg_pair { i32 9072, i32 329734 } }, %struct.mt76x0_bbp_switch_item { i16 514, %struct.mt76_reg_pair { i32 9072, i32 395265 } }, %struct.mt76x0_bbp_switch_item { i16 521, %struct.mt76_reg_pair { i32 9072, i32 395270 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 10608, i32 138 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 9084, i32 3619 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9084, i32 3603 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 9088, i32 12824 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9088, i32 6172 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 9092, i32 12864 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9092, i32 12824 } }, %struct.mt76x0_bbp_switch_item { i16 257, %struct.mt76_reg_pair { i32 9100, i32 286332438 } }, %struct.mt76x0_bbp_switch_item { i16 258, %struct.mt76_reg_pair { i32 9100, i32 286332182 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9100, i32 286331153 } }, %struct.mt76x0_bbp_switch_item { i16 257, %struct.mt76_reg_pair { i32 9116, i32 707407926 } }, %struct.mt76x0_bbp_switch_item { i16 258, %struct.mt76_reg_pair { i32 9116, i32 707406902 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9116, i32 707406378 } }, %struct.mt76x0_bbp_switch_item { i16 257, %struct.mt76_reg_pair { i32 9132, i32 656880696 } }, %struct.mt76x0_bbp_switch_item { i16 258, %struct.mt76_reg_pair { i32 9132, i32 656878904 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9132, i32 656874010 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 9164, i32 387390492 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9164, i32 -1 } }, %struct.mt76x0_bbp_switch_item { i16 257, %struct.mt76_reg_pair { i32 9172, i32 640035375 } }, %struct.mt76x0_bbp_switch_item { i16 258, %struct.mt76_reg_pair { i32 9172, i32 640037423 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9172, i32 -1 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 9180, i32 1077952576 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9180, i32 -1 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 9192, i32 4112 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 9192, i32 0 } }, %struct.mt76x0_bbp_switch_item { i16 259, %struct.mt76_reg_pair { i32 10240, i32 1028653280 } }, %struct.mt76x0_bbp_switch_item { i16 523, %struct.mt76_reg_pair { i32 10240, i32 -1991245600 } }], [128 x i8] zeroinitializer }, align 32
@mt76x0_rf_central_tab = internal constant { [44 x %struct.mt76_reg_pair], [64 x i8] } { [44 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 1, i32 1 }, %struct.mt76_reg_pair { i32 2, i32 17 }, %struct.mt76_reg_pair { i32 3, i32 115 }, %struct.mt76_reg_pair { i32 4, i32 48 }, %struct.mt76_reg_pair { i32 5, i32 0 }, %struct.mt76_reg_pair { i32 6, i32 65 }, %struct.mt76_reg_pair { i32 7, i32 0 }, %struct.mt76_reg_pair { i32 8, i32 0 }, %struct.mt76_reg_pair { i32 9, i32 0 }, %struct.mt76_reg_pair { i32 10, i32 12 }, %struct.mt76_reg_pair { i32 11, i32 0 }, %struct.mt76_reg_pair { i32 12, i32 0 }, %struct.mt76_reg_pair { i32 13, i32 0 }, %struct.mt76_reg_pair { i32 14, i32 0 }, %struct.mt76_reg_pair { i32 15, i32 0 }, %struct.mt76_reg_pair { i32 19, i32 32 }, %struct.mt76_reg_pair { i32 20, i32 34 }, %struct.mt76_reg_pair { i32 21, i32 18 }, %struct.mt76_reg_pair { i32 23, i32 0 }, %struct.mt76_reg_pair { i32 24, i32 51 }, %struct.mt76_reg_pair { i32 25, i32 0 }, %struct.mt76_reg_pair { i32 26, i32 0 }, %struct.mt76_reg_pair { i32 27, i32 0 }, %struct.mt76_reg_pair { i32 28, i32 0 }, %struct.mt76_reg_pair { i32 29, i32 0 }, %struct.mt76_reg_pair { i32 30, i32 0 }, %struct.mt76_reg_pair { i32 31, i32 0 }, %struct.mt76_reg_pair { i32 32, i32 0 }, %struct.mt76_reg_pair { i32 33, i32 0 }, %struct.mt76_reg_pair { i32 34, i32 0 }, %struct.mt76_reg_pair { i32 35, i32 0 }, %struct.mt76_reg_pair { i32 36, i32 0 }, %struct.mt76_reg_pair { i32 37, i32 0 }, %struct.mt76_reg_pair { i32 38, i32 47 }, %struct.mt76_reg_pair { i32 64, i32 0 }, %struct.mt76_reg_pair { i32 65, i32 128 }, %struct.mt76_reg_pair { i32 66, i32 1 }, %struct.mt76_reg_pair { i32 67, i32 4 }, %struct.mt76_reg_pair { i32 68, i32 0 }, %struct.mt76_reg_pair { i32 69, i32 8 }, %struct.mt76_reg_pair { i32 70, i32 8 }, %struct.mt76_reg_pair { i32 71, i32 64 }, %struct.mt76_reg_pair { i32 72, i32 208 }, %struct.mt76_reg_pair { i32 73, i32 147 }], [64 x i8] zeroinitializer }, align 32
@mt76x0_rf_vga_channel_0_tab = internal constant { [35 x %struct.mt76_reg_pair], [72 x i8] } { [35 x %struct.mt76_reg_pair] [%struct.mt76_reg_pair { i32 458752, i32 71 }, %struct.mt76_reg_pair { i32 458753, i32 0 }, %struct.mt76_reg_pair { i32 458754, i32 0 }, %struct.mt76_reg_pair { i32 458755, i32 0 }, %struct.mt76_reg_pair { i32 458756, i32 0 }, %struct.mt76_reg_pair { i32 458762, i32 19 }, %struct.mt76_reg_pair { i32 458763, i32 15 }, %struct.mt76_reg_pair { i32 458764, i32 19 }, %struct.mt76_reg_pair { i32 458765, i32 19 }, %struct.mt76_reg_pair { i32 458766, i32 19 }, %struct.mt76_reg_pair { i32 458767, i32 32 }, %struct.mt76_reg_pair { i32 458768, i32 34 }, %struct.mt76_reg_pair { i32 458769, i32 124 }, %struct.mt76_reg_pair { i32 458770, i32 0 }, %struct.mt76_reg_pair { i32 458771, i32 0 }, %struct.mt76_reg_pair { i32 458772, i32 0 }, %struct.mt76_reg_pair { i32 458773, i32 241 }, %struct.mt76_reg_pair { i32 458774, i32 17 }, %struct.mt76_reg_pair { i32 458775, i32 194 }, %struct.mt76_reg_pair { i32 458776, i32 65 }, %struct.mt76_reg_pair { i32 458777, i32 32 }, %struct.mt76_reg_pair { i32 458778, i32 64 }, %struct.mt76_reg_pair { i32 458779, i32 215 }, %struct.mt76_reg_pair { i32 458780, i32 162 }, %struct.mt76_reg_pair { i32 458781, i32 96 }, %struct.mt76_reg_pair { i32 458782, i32 73 }, %struct.mt76_reg_pair { i32 458783, i32 32 }, %struct.mt76_reg_pair { i32 458784, i32 68 }, %struct.mt76_reg_pair { i32 458785, i32 193 }, %struct.mt76_reg_pair { i32 458786, i32 96 }, %struct.mt76_reg_pair { i32 458787, i32 192 }, %struct.mt76_reg_pair { i32 458813, i32 1 }, %struct.mt76_reg_pair { i32 458824, i32 60 }, %struct.mt76_reg_pair { i32 458825, i32 52 }, %struct.mt76_reg_pair { i32 458826, i32 0 }], [72 x i8] zeroinitializer }, align 32
@switch.table.mt76x0_phy_calibration_work = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 6, i32 4, i32 2, i32 0, i32 7, i32 5, i32 3, i32 1], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.38 = internal global [28 x i64] [i64 26, i64 8, i64 43, i64 45, i64 54, i64 55, i64 57, i64 58, i64 102, i64 103, i64 105, i64 106, i64 115, i64 117, i64 126, i64 127, i64 129, i64 130, i64 139, i64 141, i64 150, i64 151, i64 153, i64 154, i64 163, i64 165, i64 183, i64 185]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 35, i64 38]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 3, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 21, i64 327682]
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 197, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 201, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 1207, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 96, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [51 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x0/phy.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 53, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [27 x i8] c"mt76x0_rf_2g_channel_0_tab\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 65, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant [27 x i8] c"mt76x0_rf_5g_channel_0_tab\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 142, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant [19 x i8] c"mt76x0_sdm_channel\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 576, i32 17 }
@___asan_gen_.107 = private unnamed_addr constant [22 x i8] c"mt76x0_frequency_plan\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 320, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant [26 x i8] c"mt76x0_sdm_frequency_plan\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 448, i32 38 }
@___asan_gen_.113 = private unnamed_addr constant [24 x i8] c"mt76x0_rf_bw_switch_tab\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 228, i32 43 }
@___asan_gen_.116 = private unnamed_addr constant [26 x i8] c"mt76x0_rf_band_switch_tab\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 273, i32 43 }
@___asan_gen_.119 = private unnamed_addr constant [21 x i8] c"mt76x0_rf_ext_pa_tab\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 586, i32 43 }
@___asan_gen_.122 = private unnamed_addr constant [22 x i8] c"mt76x0_bbp_switch_tab\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [56 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x0/initvals.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 14, i32 44 }
@___asan_gen_.125 = private unnamed_addr constant [22 x i8] c"mt76x0_rf_central_tab\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 11, i32 35 }
@___asan_gen_.128 = private unnamed_addr constant [28 x i8] c"mt76x0_rf_vga_channel_0_tab\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [60 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x0/initvals_phy.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 189, i32 35 }
@___asan_gen_.131 = private unnamed_addr constant [41 x i8] c"switch.table.mt76x0_phy_calibration_work\00", align 1
@llvm.compiler.used = appending global [34 x ptr] [ptr @__ksymtab_mt76x0_phy_calibrate, ptr @mt76x0_phy_wait_bbp_ready._entry, ptr @mt76x0_phy_wait_bbp_ready._entry_ptr, ptr @mt76x0_rf_csr_rr._entry, ptr @mt76x0_rf_csr_rr._entry_ptr, ptr @mt76x0_rf_csr_wr._entry, ptr @mt76x0_rf_csr_wr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mt76x0_phy_init.__key, ptr @.str.7, ptr @mt76x0_phy_init.__key.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @mt76x0_rf_2g_channel_0_tab, ptr @mt76x0_rf_5g_channel_0_tab, ptr @mt76x0_sdm_channel, ptr @mt76x0_frequency_plan, ptr @mt76x0_sdm_frequency_plan, ptr @mt76x0_rf_bw_switch_tab, ptr @mt76x0_rf_band_switch_tab, ptr @mt76x0_rf_ext_pa_tab, ptr @mt76x0_bbp_switch_tab, ptr @mt76x0_rf_central_tab, ptr @mt76x0_rf_vga_channel_0_tab, ptr @switch.table.mt76x0_phy_calibration_work], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_phy_wait_bbp_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_phy_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_phy_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_rf_csr_rr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_rf_csr_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_rf_2g_channel_0_tab to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_rf_5g_channel_0_tab to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_sdm_channel to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_frequency_plan to i32), i32 4500, i32 5632, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_sdm_frequency_plan to i32), i32 4500, i32 5632, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_rf_bw_switch_tab to i32), i32 328, i32 416, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_rf_band_switch_tab to i32), i32 344, i32 416, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_rf_ext_pa_tab to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_bbp_switch_tab to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_rf_central_tab to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_rf_vga_channel_0_tab to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt76x0_phy_calibration_work to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x0_phy_wait_bbp_ready(ptr noundef %dev) local_unnamed_addr #0 align 64 {
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
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 8192) #5
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.do.body10_crit_edge [
    i32 0, label %entry.do.cond_crit_edge
    i32 -1, label %entry.do.cond_crit_edge32
  ]

entry.do.cond_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

entry.do.cond_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.cond:                                          ; preds = %entry.do.cond_crit_edge, %entry.do.cond_crit_edge32
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call.1 = tail call i32 %8(ptr noundef %dev, i32 noundef 8192) #5
  %9 = zext i32 %call.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call.1, label %do.cond.do.body10_crit_edge [
    i32 0, label %do.cond.do.cond.1_crit_edge
    i32 -1, label %do.cond.do.cond.1_crit_edge33
  ]

do.cond.do.cond.1_crit_edge33:                    ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.1

do.cond.do.cond.1_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.1

do.cond.do.body10_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.cond.1:                                        ; preds = %do.cond.do.cond.1_crit_edge, %do.cond.do.cond.1_crit_edge33
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call.2 = tail call i32 %13(ptr noundef %dev, i32 noundef 8192) #5
  %14 = zext i32 %call.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %call.2, label %do.cond.1.do.body10_crit_edge [
    i32 0, label %do.cond.1.do.cond.2_crit_edge
    i32 -1, label %do.cond.1.do.cond.2_crit_edge34
  ]

do.cond.1.do.cond.2_crit_edge34:                  ; preds = %do.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.2

do.cond.1.do.cond.2_crit_edge:                    ; preds = %do.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.2

do.cond.1.do.body10_crit_edge:                    ; preds = %do.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.cond.2:                                        ; preds = %do.cond.1.do.cond.2_crit_edge, %do.cond.1.do.cond.2_crit_edge34
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call.3 = tail call i32 %18(ptr noundef %dev, i32 noundef 8192) #5
  %19 = zext i32 %call.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call.3, label %do.cond.2.do.body10_crit_edge [
    i32 0, label %do.cond.2.do.cond.3_crit_edge
    i32 -1, label %do.cond.2.do.cond.3_crit_edge35
  ]

do.cond.2.do.cond.3_crit_edge35:                  ; preds = %do.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.3

do.cond.2.do.cond.3_crit_edge:                    ; preds = %do.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.3

do.cond.2.do.body10_crit_edge:                    ; preds = %do.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.cond.3:                                        ; preds = %do.cond.2.do.cond.3_crit_edge, %do.cond.2.do.cond.3_crit_edge35
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call.4 = tail call i32 %23(ptr noundef %dev, i32 noundef 8192) #5
  %24 = zext i32 %call.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %call.4, label %do.cond.3.do.body10_crit_edge [
    i32 0, label %do.cond.3.do.cond.4_crit_edge
    i32 -1, label %do.cond.3.do.cond.4_crit_edge36
  ]

do.cond.3.do.cond.4_crit_edge36:                  ; preds = %do.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.4

do.cond.3.do.cond.4_crit_edge:                    ; preds = %do.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.4

do.cond.3.do.body10_crit_edge:                    ; preds = %do.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.cond.4:                                        ; preds = %do.cond.3.do.cond.4_crit_edge, %do.cond.3.do.cond.4_crit_edge36
  %25 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call.5 = tail call i32 %28(ptr noundef %dev, i32 noundef 8192) #5
  %29 = zext i32 %call.5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call.5, label %do.cond.4.do.body10_crit_edge [
    i32 0, label %do.cond.4.do.cond.5_crit_edge
    i32 -1, label %do.cond.4.do.cond.5_crit_edge37
  ]

do.cond.4.do.cond.5_crit_edge37:                  ; preds = %do.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.5

do.cond.4.do.cond.5_crit_edge:                    ; preds = %do.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.5

do.cond.4.do.body10_crit_edge:                    ; preds = %do.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.cond.5:                                        ; preds = %do.cond.4.do.cond.5_crit_edge, %do.cond.4.do.cond.5_crit_edge37
  %30 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %call.6 = tail call i32 %33(ptr noundef %dev, i32 noundef 8192) #5
  %34 = zext i32 %call.6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call.6, label %do.cond.5.do.body10_crit_edge [
    i32 0, label %do.cond.5.do.cond.6_crit_edge
    i32 -1, label %do.cond.5.do.cond.6_crit_edge38
  ]

do.cond.5.do.cond.6_crit_edge38:                  ; preds = %do.cond.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.6

do.cond.5.do.cond.6_crit_edge:                    ; preds = %do.cond.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.6

do.cond.5.do.body10_crit_edge:                    ; preds = %do.cond.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.cond.6:                                        ; preds = %do.cond.5.do.cond.6_crit_edge, %do.cond.5.do.cond.6_crit_edge38
  %35 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call.7 = tail call i32 %38(ptr noundef %dev, i32 noundef 8192) #5
  %39 = zext i32 %call.7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call.7, label %do.cond.6.do.body10_crit_edge [
    i32 0, label %do.cond.6.do.cond.7_crit_edge
    i32 -1, label %do.cond.6.do.cond.7_crit_edge39
  ]

do.cond.6.do.cond.7_crit_edge39:                  ; preds = %do.cond.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.7

do.cond.6.do.cond.7_crit_edge:                    ; preds = %do.cond.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.7

do.cond.6.do.body10_crit_edge:                    ; preds = %do.cond.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.cond.7:                                        ; preds = %do.cond.6.do.cond.7_crit_edge, %do.cond.6.do.cond.7_crit_edge39
  %40 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %call.8 = tail call i32 %43(ptr noundef %dev, i32 noundef 8192) #5
  %44 = zext i32 %call.8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call.8, label %do.cond.7.do.body10_crit_edge [
    i32 0, label %do.cond.7.do.cond.8_crit_edge
    i32 -1, label %do.cond.7.do.cond.8_crit_edge40
  ]

do.cond.7.do.cond.8_crit_edge40:                  ; preds = %do.cond.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.8

do.cond.7.do.cond.8_crit_edge:                    ; preds = %do.cond.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.8

do.cond.7.do.body10_crit_edge:                    ; preds = %do.cond.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.cond.8:                                        ; preds = %do.cond.7.do.cond.8_crit_edge, %do.cond.7.do.cond.8_crit_edge40
  %45 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %call.9 = tail call i32 %48(ptr noundef %dev, i32 noundef 8192) #5
  %49 = zext i32 %call.9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call.9, label %do.cond.8.do.body10_crit_edge [
    i32 0, label %do.cond.8.do.cond.9_crit_edge
    i32 -1, label %do.cond.8.do.cond.9_crit_edge41
  ]

do.cond.8.do.cond.9_crit_edge41:                  ; preds = %do.cond.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.9

do.cond.8.do.cond.9_crit_edge:                    ; preds = %do.cond.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.9

do.cond.8.do.body10_crit_edge:                    ; preds = %do.cond.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.cond.9:                                        ; preds = %do.cond.8.do.cond.9_crit_edge, %do.cond.8.do.cond.9_crit_edge41
  %50 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bus, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %call.10 = tail call i32 %53(ptr noundef %dev, i32 noundef 8192) #5
  %54 = zext i32 %call.10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %call.10, label %do.cond.9.do.body10_crit_edge [
    i32 0, label %do.cond.9.do.cond.10_crit_edge
    i32 -1, label %do.cond.9.do.cond.10_crit_edge42
  ]

do.cond.9.do.cond.10_crit_edge42:                 ; preds = %do.cond.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.10

do.cond.9.do.cond.10_crit_edge:                   ; preds = %do.cond.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.10

do.cond.9.do.body10_crit_edge:                    ; preds = %do.cond.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.cond.10:                                       ; preds = %do.cond.9.do.cond.10_crit_edge, %do.cond.9.do.cond.10_crit_edge42
  %55 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %call.11 = tail call i32 %58(ptr noundef %dev, i32 noundef 8192) #5
  %59 = zext i32 %call.11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call.11, label %do.cond.10.do.body10_crit_edge [
    i32 0, label %do.cond.10.do.cond.11_crit_edge
    i32 -1, label %do.cond.10.do.cond.11_crit_edge43
  ]

do.cond.10.do.cond.11_crit_edge43:                ; preds = %do.cond.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.11

do.cond.10.do.cond.11_crit_edge:                  ; preds = %do.cond.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.11

do.cond.10.do.body10_crit_edge:                   ; preds = %do.cond.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.cond.11:                                       ; preds = %do.cond.10.do.cond.11_crit_edge, %do.cond.10.do.cond.11_crit_edge43
  %60 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %call.12 = tail call i32 %63(ptr noundef %dev, i32 noundef 8192) #5
  %64 = zext i32 %call.12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %call.12, label %do.cond.11.do.body10_crit_edge [
    i32 0, label %do.cond.11.do.cond.12_crit_edge
    i32 -1, label %do.cond.11.do.cond.12_crit_edge44
  ]

do.cond.11.do.cond.12_crit_edge44:                ; preds = %do.cond.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.12

do.cond.11.do.cond.12_crit_edge:                  ; preds = %do.cond.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.12

do.cond.11.do.body10_crit_edge:                   ; preds = %do.cond.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.cond.12:                                       ; preds = %do.cond.11.do.cond.12_crit_edge, %do.cond.11.do.cond.12_crit_edge44
  %65 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bus, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %call.13 = tail call i32 %68(ptr noundef %dev, i32 noundef 8192) #5
  %69 = zext i32 %call.13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call.13, label %do.cond.12.do.body10_crit_edge [
    i32 0, label %do.cond.12.do.cond.13_crit_edge
    i32 -1, label %do.cond.12.do.cond.13_crit_edge45
  ]

do.cond.12.do.cond.13_crit_edge45:                ; preds = %do.cond.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.13

do.cond.12.do.cond.13_crit_edge:                  ; preds = %do.cond.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.13

do.cond.12.do.body10_crit_edge:                   ; preds = %do.cond.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.cond.13:                                       ; preds = %do.cond.12.do.cond.13_crit_edge, %do.cond.12.do.cond.13_crit_edge45
  %70 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bus, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %call.14 = tail call i32 %73(ptr noundef %dev, i32 noundef 8192) #5
  %74 = zext i32 %call.14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call.14, label %do.cond.13.do.body10_crit_edge [
    i32 0, label %do.cond.13.do.cond.14_crit_edge
    i32 -1, label %do.cond.13.do.cond.14_crit_edge46
  ]

do.cond.13.do.cond.14_crit_edge46:                ; preds = %do.cond.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.14

do.cond.13.do.cond.14_crit_edge:                  ; preds = %do.cond.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.14

do.cond.13.do.body10_crit_edge:                   ; preds = %do.cond.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.cond.14:                                       ; preds = %do.cond.13.do.cond.14_crit_edge, %do.cond.13.do.cond.14_crit_edge46
  %75 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bus, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %call.15 = tail call i32 %78(ptr noundef %dev, i32 noundef 8192) #5
  %79 = zext i32 %call.15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call.15, label %do.cond.14.do.body10_crit_edge [
    i32 0, label %do.cond.14.do.cond.15_crit_edge
    i32 -1, label %do.cond.14.do.cond.15_crit_edge47
  ]

do.cond.14.do.cond.15_crit_edge47:                ; preds = %do.cond.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.15

do.cond.14.do.cond.15_crit_edge:                  ; preds = %do.cond.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.15

do.cond.14.do.body10_crit_edge:                   ; preds = %do.cond.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.cond.15:                                       ; preds = %do.cond.14.do.cond.15_crit_edge, %do.cond.14.do.cond.15_crit_edge47
  %80 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bus, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %call.16 = tail call i32 %83(ptr noundef %dev, i32 noundef 8192) #5
  %84 = zext i32 %call.16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call.16, label %do.cond.15.do.body10_crit_edge [
    i32 0, label %do.cond.15.do.cond.16_crit_edge
    i32 -1, label %do.cond.15.do.cond.16_crit_edge48
  ]

do.cond.15.do.cond.16_crit_edge48:                ; preds = %do.cond.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.16

do.cond.15.do.cond.16_crit_edge:                  ; preds = %do.cond.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.16

do.cond.15.do.body10_crit_edge:                   ; preds = %do.cond.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.cond.16:                                       ; preds = %do.cond.15.do.cond.16_crit_edge, %do.cond.15.do.cond.16_crit_edge48
  %85 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bus, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %call.17 = tail call i32 %88(ptr noundef %dev, i32 noundef 8192) #5
  %89 = zext i32 %call.17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call.17, label %do.cond.16.do.body10_crit_edge [
    i32 0, label %do.cond.16.do.cond.17_crit_edge
    i32 -1, label %do.cond.16.do.cond.17_crit_edge49
  ]

do.cond.16.do.cond.17_crit_edge49:                ; preds = %do.cond.16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.17

do.cond.16.do.cond.17_crit_edge:                  ; preds = %do.cond.16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.17

do.cond.16.do.body10_crit_edge:                   ; preds = %do.cond.16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.cond.17:                                       ; preds = %do.cond.16.do.cond.17_crit_edge, %do.cond.16.do.cond.17_crit_edge49
  %90 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bus, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %call.18 = tail call i32 %93(ptr noundef %dev, i32 noundef 8192) #5
  %94 = zext i32 %call.18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call.18, label %do.cond.17.do.body10_crit_edge [
    i32 0, label %do.cond.17.do.cond.18_crit_edge
    i32 -1, label %do.cond.17.do.cond.18_crit_edge50
  ]

do.cond.17.do.cond.18_crit_edge50:                ; preds = %do.cond.17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.18

do.cond.17.do.cond.18_crit_edge:                  ; preds = %do.cond.17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.18

do.cond.17.do.body10_crit_edge:                   ; preds = %do.cond.17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.cond.18:                                       ; preds = %do.cond.17.do.cond.18_crit_edge, %do.cond.17.do.cond.18_crit_edge50
  %95 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bus, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %call.19 = tail call i32 %98(ptr noundef %dev, i32 noundef 8192) #5
  %99 = zext i32 %call.19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call.19, label %do.cond.18.do.body10_crit_edge [
    i32 0, label %do.cond.18.do.cond.19_crit_edge
    i32 -1, label %do.cond.18.do.cond.19_crit_edge51
  ]

do.cond.18.do.cond.19_crit_edge51:                ; preds = %do.cond.18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.19

do.cond.18.do.cond.19_crit_edge:                  ; preds = %do.cond.18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.19

do.cond.18.do.body10_crit_edge:                   ; preds = %do.cond.18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.cond.19:                                       ; preds = %do.cond.18.do.cond.19_crit_edge, %do.cond.18.do.cond.19_crit_edge51
  %dev8 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %100 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str) #8
  br label %cleanup

do.body10:                                        ; preds = %do.cond.18.do.body10_crit_edge, %do.cond.17.do.body10_crit_edge, %do.cond.16.do.body10_crit_edge, %do.cond.15.do.body10_crit_edge, %do.cond.14.do.body10_crit_edge, %do.cond.13.do.body10_crit_edge, %do.cond.12.do.body10_crit_edge, %do.cond.11.do.body10_crit_edge, %do.cond.10.do.body10_crit_edge, %do.cond.9.do.body10_crit_edge, %do.cond.8.do.body10_crit_edge, %do.cond.7.do.body10_crit_edge, %do.cond.6.do.body10_crit_edge, %do.cond.5.do.body10_crit_edge, %do.cond.4.do.body10_crit_edge, %do.cond.3.do.body10_crit_edge, %do.cond.2.do.body10_crit_edge, %do.cond.1.do.body10_crit_edge, %do.cond.do.body10_crit_edge, %entry.do.body10_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.do.body10_crit_edge ], [ %call.1, %do.cond.do.body10_crit_edge ], [ %call.2, %do.cond.1.do.body10_crit_edge ], [ %call.3, %do.cond.2.do.body10_crit_edge ], [ %call.4, %do.cond.3.do.body10_crit_edge ], [ %call.5, %do.cond.4.do.body10_crit_edge ], [ %call.6, %do.cond.5.do.body10_crit_edge ], [ %call.7, %do.cond.6.do.body10_crit_edge ], [ %call.8, %do.cond.7.do.body10_crit_edge ], [ %call.9, %do.cond.8.do.body10_crit_edge ], [ %call.10, %do.cond.9.do.body10_crit_edge ], [ %call.11, %do.cond.10.do.body10_crit_edge ], [ %call.12, %do.cond.11.do.body10_crit_edge ], [ %call.13, %do.cond.12.do.body10_crit_edge ], [ %call.14, %do.cond.13.do.body10_crit_edge ], [ %call.15, %do.cond.14.do.body10_crit_edge ], [ %call.16, %do.cond.15.do.body10_crit_edge ], [ %call.17, %do.cond.16.do.body10_crit_edge ], [ %call.18, %do.cond.17.do.body10_crit_edge ], [ %call.19, %do.cond.18.do.body10_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt76x0_phy_wait_bbp_ready.__UNIQUE_ID_ddebug427, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt76x0_phy_wait_bbp_ready, %if.then15)) #5
          to label %cleanup [label %if.then15], !srcloc !72

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %dev16 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %102 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev16, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt76x0_phy_wait_bbp_ready.__UNIQUE_ID_ddebug427, ptr noundef %103, ptr noundef nonnull @.str.6, i32 noundef %call.lcssa) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %do.body10, %do.cond.19
  %retval.0 = phi i32 [ -5, %do.cond.19 ], [ 0, %if.then15 ], [ 0, %do.body10 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x0_phy_set_txpower(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_power = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 46
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %info) #5
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %info, align 1, !annotation !73
  %chandef = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chandef, align 4
  tail call void @mt76x0_get_tx_power_per_rate(ptr noundef %dev, ptr noundef %2, ptr noundef %rate_power) #5
  %3 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chandef, align 4
  call void @mt76x0_get_power_info(ptr noundef %dev, ptr noundef %4, ptr noundef nonnull %info) #5
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %info, align 1
  %conv = sext i8 %6 to i32
  call void @mt76x02_add_rate_power_offset(ptr noundef %rate_power, i32 noundef %conv) #5
  %txpower_conf = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 20
  %7 = ptrtoint ptr %txpower_conf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %txpower_conf, align 64
  call void @mt76x02_limit_rate_power(ptr noundef %rate_power, i32 noundef %8) #5
  %call = call i32 @mt76x02_get_max_rate_power(ptr noundef %rate_power) #5
  %txpower_cur = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 14
  %9 = ptrtoint ptr %txpower_cur to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call, ptr %txpower_cur, align 4
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %info, align 1
  %conv3 = sext i8 %11 to i32
  %sub = sub nsw i32 0, %conv3
  call void @mt76x02_add_rate_power_offset(ptr noundef %rate_power, i32 noundef %sub) #5
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %info, align 1
  %target_power = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 21
  %14 = ptrtoint ptr %target_power to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %target_power, align 4
  %conv4 = sext i8 %13 to i32
  call void @mt76x02_phy_set_txpower(ptr noundef %dev, i32 noundef %conv4, i32 noundef %conv4) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %info) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x0_get_tx_power_per_rate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x0_get_power_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_add_rate_power_offset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_limit_rate_power(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_get_max_rate_power(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_phy_set_txpower(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x0_phy_calibrate(ptr noundef %dev, i1 noundef zeroext %power_on) #0 align 64 {
entry:
  %pair.i.i.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i.i.i = alloca %struct.mt76_reg_pair, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chandef = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chandef, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %cond = zext i1 %cmp to i32
  %rev.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %4 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rev.i.i, align 4
  %shr.i.mask.i = and i32 %5, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1982857216, i32 %shr.i.mask.i)
  %cmp.i = icmp eq i32 %shr.i.mask.i, 1982857216
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %power_on, label %if.then2, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 1, i32 noundef 0) #5
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %7 to i32
  %call4 = tail call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 12, i32 noundef %conv) #5
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %eeprom.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %8 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eeprom.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 54
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %add.ptr.i.i, align 1
  %12 = and i16 %11, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.i.not = icmp eq i16 %12, 0
  br i1 %tobool.i.not, label %if.then2.if.end10_crit_edge, label %if.then6

if.then2.if.end10_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then6:                                         ; preds = %if.then2
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %13 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wr, align 4
  tail call void %16(ptr noundef %dev, i32 noundef 4100, i32 noundef 8) #5
  %17 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chandef, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i76 = icmp eq i32 %20, 1
  br i1 %cmp.i76, label %if.then.i, label %if.then6.if.end.i_crit_edge

if.then6.if.end.i_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.then6
  %call.i.i.i = tail call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 67) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.if.end.i_crit_edge, label %if.end.i.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i.i.i:                                     ; preds = %if.then.i
  %21 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus, align 4
  %type.i.i.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i.i.i.i = icmp eq i32 %24, 1
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.else.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i.i.i) #5
  %25 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %pair.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 67, ptr %pair.i.i.i.i, align 4
  %conv.i.i.i.i = and i32 %call.i.i.i, 240
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv.i.i.i.i, ptr %25, align 4
  %state.i.i.i.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  %28 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i.i.i.i, align 4
  %30 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i.i.i, label %land.rhs.i.i.i.i, label %if.then.i.i.i.i.if.end31.i.i.i.i_crit_edge

if.then.i.i.i.i.if.end31.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  %.b50.i.i.i.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i.i.i, label %land.rhs.i.i.i.i.if.end31.i.i.i.i_crit_edge, label %if.then10.i.i.i.i, !prof !74

land.rhs.i.i.i.i.if.end31.i.i.i.i_crit_edge:      ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i.i.i

if.then10.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i.i.i

if.end31.i.i.i.i:                                 ; preds = %if.then10.i.i.i.i, %land.rhs.i.i.i.i.if.end31.i.i.i.i_crit_edge, %if.then.i.i.i.i.if.end31.i.i.i.i_crit_edge
  %31 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus, align 4
  %wr_rp.i.i.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %wr_rp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wr_rp.i.i.i.i, align 4
  %call40.i.i.i.i = call i32 %34(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i.i.i) #5
  br label %if.end.i

if.else.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %35 = trunc i32 %call.i.i.i to i8
  %36 = and i8 %35, -16
  %call41.i.i.i.i = tail call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 67, i8 noundef zeroext %36) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i.i.i.i, %if.end31.i.i.i.i, %if.then.i.if.end.i_crit_edge, %if.then6.if.end.i_crit_edge
  %37 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wr.i, align 4
  call void %40(ptr noundef %dev, i32 noundef 1292, i32 noundef 1610621495) #5
  %41 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus, align 4
  %wr3.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %wr3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wr3.i, align 4
  call void %44(ptr noundef %dev, i32 noundef 1284, i32 noundef -1) #5
  %45 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmw.i, align 4
  %call5.i = call i32 %48(ptr noundef %dev, i32 noundef 8208, i32 noundef 0, i32 noundef 1) #5
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #5
  %49 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bus, align 4
  %rmw7.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %rmw7.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmw7.i, align 4
  %call8.i = call i32 %52(ptr noundef %dev, i32 noundef 8208, i32 noundef 1, i32 noundef 0) #5
  %53 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp10.i = icmp eq i32 %54, 1
  %cond.i = select i1 %cmp10.i, i32 524373, i32 524368
  %55 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus, align 4
  %wr12.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %wr12.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wr12.i, align 4
  call void %58(ptr noundef %dev, i32 noundef 8328, i32 noundef %cond.i) #5
  %59 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus, align 4
  %wr14.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %wr14.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wr14.i, align 4
  call void %62(ptr noundef %dev, i32 noundef 10008, i32 noundef -2147483648) #5
  %call15.i = call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 8328, i32 noundef 16, i32 noundef 0, i32 noundef 200) #5
  %63 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %call17.i = call i32 %66(ptr noundef %dev, i32 noundef 8332) #5
  %conv.i = trunc i32 %call17.i to i8
  %tssi_dc.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 19, i32 17
  %67 = ptrtoint ptr %tssi_dc.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv.i, ptr %tssi_dc.i, align 4
  %68 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus, align 4
  %wr19.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %wr19.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wr19.i, align 4
  call void %71(ptr noundef %dev, i32 noundef 1284, i32 noundef 0) #5
  %72 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bus, align 4
  %wr21.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %wr21.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wr21.i, align 4
  call void %75(ptr noundef %dev, i32 noundef 10008, i32 noundef 0) #5
  %76 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bus, align 4
  %rmw23.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %rmw23.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rmw23.i, align 4
  %call24.i = call i32 %79(ptr noundef %dev, i32 noundef 8208, i32 noundef 0, i32 noundef 1) #5
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #5
  %80 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bus, align 4
  %rmw26.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %rmw26.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rmw26.i, align 4
  %call27.i = call i32 %83(ptr noundef %dev, i32 noundef 8208, i32 noundef 1, i32 noundef 0) #5
  %84 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp29.i = icmp eq i32 %85, 1
  br i1 %cmp29.i, label %if.then31.i, label %if.end.i.mt76x0_phy_tssi_dc_calibrate.exit_crit_edge

if.end.i.mt76x0_phy_tssi_dc_calibrate.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_phy_tssi_dc_calibrate.exit

if.then31.i:                                      ; preds = %if.end.i
  %call.i.i = call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 67) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then31.i.mt76x0_phy_tssi_dc_calibrate.exit_crit_edge, label %if.end.i.i

if.then31.i.mt76x0_phy_tssi_dc_calibrate.exit_crit_edge: ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_phy_tssi_dc_calibrate.exit

if.end.i.i:                                       ; preds = %if.then31.i
  %86 = trunc i32 %call.i.i to i8
  %87 = and i8 %86, -16
  %conv2.i.i = or i8 %87, 4
  %88 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bus, align 4
  %type.i.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %89, i32 0, i32 7
  %90 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp.i.i62.i = icmp eq i32 %91, 1
  br i1 %cmp.i.i62.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i.i) #5
  %92 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %pair.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 67, ptr %pair.i.i.i, align 4
  %conv.i.i.i = zext i8 %conv2.i.i to i32
  %94 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %conv.i.i.i, ptr %92, align 4
  %state.i.i.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  %95 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %state.i.i.i, align 4
  %97 = and i32 %96, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i.i.i = icmp eq i32 %97, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %if.then.i.i.i.if.end31.i.i.i_crit_edge

if.then.i.i.i.if.end31.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then.i.i.i
  %.b50.i.i.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i.i, label %land.rhs.i.i.i.if.end31.i.i.i_crit_edge, label %if.then10.i.i.i, !prof !74

land.rhs.i.i.i.if.end31.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i.i

if.then10.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i.i

if.end31.i.i.i:                                   ; preds = %if.then10.i.i.i, %land.rhs.i.i.i.if.end31.i.i.i_crit_edge, %if.then.i.i.i.if.end31.i.i.i_crit_edge
  %98 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bus, align 4
  %wr_rp.i.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %99, i32 0, i32 5
  %100 = ptrtoint ptr %wr_rp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %wr_rp.i.i.i, align 4
  %call40.i.i.i = call i32 %101(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i.i) #5
  br label %mt76x0_phy_tssi_dc_calibrate.exit

if.else.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 67, i8 noundef zeroext %conv2.i.i) #5
  br label %mt76x0_phy_tssi_dc_calibrate.exit

mt76x0_phy_tssi_dc_calibrate.exit:                ; preds = %if.else.i.i.i, %if.end31.i.i.i, %if.then31.i.mt76x0_phy_tssi_dc_calibrate.exit_crit_edge, %if.end.i.mt76x0_phy_tssi_dc_calibrate.exit_crit_edge
  %102 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bus, align 4
  %wr8 = getelementptr inbounds %struct.mt76_bus_ops, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %wr8 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %wr8, align 4
  call void %105(ptr noundef %dev, i32 noundef 4100, i32 noundef 12) #5
  br label %if.end10

if.end10:                                         ; preds = %mt76x0_phy_tssi_dc_calibrate.exit, %if.then2.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %bus11 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %106 = ptrtoint ptr %bus11 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bus11, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %call12 = call i32 %109(ptr noundef %dev, i32 noundef 5040) #5
  %110 = ptrtoint ptr %bus11 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bus11, align 4
  %wr14 = getelementptr inbounds %struct.mt76_bus_ops, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %wr14 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %wr14, align 4
  call void %113(ptr noundef %dev, i32 noundef 5040, i32 noundef 0) #5
  call void @usleep_range_state(i32 noundef 500, i32 noundef 700, i32 noundef 2) #5
  %114 = ptrtoint ptr %bus11 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bus11, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %call17 = call i32 %117(ptr noundef %dev, i32 noundef 8484) #5
  %118 = ptrtoint ptr %bus11 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bus11, align 4
  %wr19 = getelementptr inbounds %struct.mt76_bus_ops, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %wr19 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %wr19, align 4
  call void %121(ptr noundef %dev, i32 noundef 8484, i32 noundef -130) #5
  br i1 %cmp, label %if.then21, label %if.end10.if.end36_crit_edge

if.end10.if.end36_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then21:                                        ; preds = %if.end10
  %hw_value22 = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 3
  %122 = ptrtoint ptr %hw_value22 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %hw_value22, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %123)
  %cmp24 = icmp ult i16 %123, 100
  br i1 %cmp24, label %if.then21.if.end36_crit_edge, label %if.else

if.then21.if.end36_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.else:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 140, i16 %123)
  %cmp29 = icmp ult i16 %123, 140
  %. = select i1 %cmp29, i32 2049, i32 2305
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then21.if.end36_crit_edge, %if.end10.if.end36_crit_edge
  %val.0 = phi i32 [ 1793, %if.then21.if.end36_crit_edge ], [ %., %if.else ], [ 1536, %if.end10.if.end36_crit_edge ]
  %call37 = call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 255, i32 noundef %val.0) #5
  %call38 = call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 3, i32 noundef %cond) #5
  call void @usleep_range_state(i32 noundef 15000, i32 noundef 20000, i32 noundef 2) #5
  %124 = ptrtoint ptr %bus11 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %bus11, align 4
  %wr40 = getelementptr inbounds %struct.mt76_bus_ops, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %wr40 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %wr40, align 4
  call void %127(ptr noundef %dev, i32 noundef 8484, i32 noundef %call17) #5
  %128 = ptrtoint ptr %bus11 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bus11, align 4
  %wr42 = getelementptr inbounds %struct.mt76_bus_ops, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %wr42 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %wr42, align 4
  call void %131(ptr noundef %dev, i32 noundef 5040, i32 noundef %call12) #5
  %call43 = call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 2, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_mcu_calibrate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x0_phy_set_channel(ptr noundef %dev, ptr nocapture noundef readonly %chandef) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca i8, align 1
  %pair.i.i.i516 = alloca %struct.mt76_reg_pair, align 4
  %pair.i766.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i748.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i730.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i712.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i690.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i668.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i650.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i632.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i610.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i588.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i566.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i544.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i526.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i504.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i482.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i460.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i.i441.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i.i.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i418.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i396.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i374.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i355.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i337.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i319.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i301.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i490 = alloca %struct.mt76_reg_pair, align 4
  %pair.i89.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i72.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i45.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i = alloca %struct.mt76_reg_pair, align 4
  %ext_cca_chan = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ext_cca_chan) #5
  %0 = getelementptr inbounds [4 x i32], ptr %ext_cca_chan, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %ext_cca_chan, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %ext_cca_chan, i32 0, i32 3
  %3 = ptrtoint ptr %ext_cca_chan to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 484, ptr %ext_cca_chan, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 737, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1054, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2075, ptr %2, align 4
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %10 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %center_freq, align 4
  %center_freq1 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 2
  %14 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %center_freq1, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hw_value, align 2
  %conv.mask = and i16 %17, 255
  %conv335 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %conv.mask)
  %cmp = icmp ult i16 %conv.mask, 15
  %conv337 = select i1 %cmp, i16 256, i16 512
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %18 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %19, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb345
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp338 = icmp sge i32 %13, %15
  %. = zext i1 %cmp338 to i32
  %sub = select i1 %cmp338, i16 254, i16 2
  %add = add i16 %sub, %17
  %conv341 = trunc i16 %add to i8
  br label %sw.epilog

sw.bb345:                                         ; preds = %entry
  %sub346 = sub i32 %13, %15
  %add347 = add i32 %sub346, 30
  %div = sdiv i32 %add347, 20
  %21 = add i32 %sub346, -50
  call void @__sanitizer_cov_trace_const_cmp4(i32 -99, i32 %21)
  %22 = icmp ult i32 %21, -99
  br i1 %22, label %do.end363, label %sw.bb345.if.end369_crit_edge, !prof !75

sw.bb345.if.end369_crit_edge:                     ; preds = %sw.bb345
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end369

do.end363:                                        ; preds = %sw.bb345
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 958, i32 noundef 9, ptr noundef null) #5
  br label %if.end369

if.end369:                                        ; preds = %do.end363, %sw.bb345.if.end369_crit_edge
  %spec.select486 = phi i32 [ 0, %do.end363 ], [ %div, %sw.bb345.if.end369_crit_edge ]
  %mul380.neg = mul i32 %spec.select486, 252
  %sub381 = add nuw nsw i32 %conv335, 6
  %add383 = add i32 %sub381, %mul380.neg
  %conv384 = trunc i32 %add383 to i8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = trunc i16 %17 to i8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end369, %sw.bb
  %.sink = phi i16 [ 1, %sw.default ], [ 8, %if.end369 ], [ 2, %sw.bb ]
  %ch_group_index.2 = phi i32 [ 0, %sw.default ], [ %spec.select486, %if.end369 ], [ %., %sw.bb ]
  %channel.0 = phi i8 [ %conv, %sw.default ], [ %conv384, %if.end369 ], [ %conv341, %sw.bb ]
  %23 = or i16 %conv337, %.sink
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 4
  %type = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp391 = icmp eq i32 %27, 1
  %28 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %width, align 4
  br i1 %cmp391, label %if.then393, label %if.else395

if.then393:                                       ; preds = %sw.epilog
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %29, label %if.then393.sw.epilog.i_crit_edge [
    i32 6, label %if.then393.if.end406_crit_edge
    i32 5, label %if.then393.if.end406_crit_edge554
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb2.i
    i32 7, label %sw.bb3.i
    i32 4, label %if.then393.if.end406_crit_edge555
  ]

if.then393.if.end406_crit_edge555:                ; preds = %if.then393
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end406

if.then393.if.end406_crit_edge554:                ; preds = %if.then393
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end406

if.then393.if.end406_crit_edge:                   ; preds = %if.then393
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end406

if.then393.sw.epilog.i_crit_edge:                 ; preds = %if.then393
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then393
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.then393
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.then393
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then393.sw.epilog.i_crit_edge
  %bw.0.i = phi i32 [ 4, %sw.bb3.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %if.then393.sw.epilog.i_crit_edge ]
  %call.i = tail call i32 @mt76x02_mcu_function_select(ptr noundef %dev, i32 noundef 2, i32 noundef %bw.0.i) #5
  br label %if.end406

if.else395:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %31 = and i32 %29, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %switch = icmp eq i32 %31, 2
  %spec.select487 = select i1 %switch, i32 513, i32 1537
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 1
  %32 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wr, align 4
  tail call void %33(ptr noundef %dev, i32 noundef 4912, i32 noundef %spec.select487) #5
  br label %if.end406

if.end406:                                        ; preds = %if.else395, %sw.epilog.i, %if.then393.if.end406_crit_edge, %if.then393.if.end406_crit_edge554, %if.then393.if.end406_crit_edge555
  %34 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %width, align 4
  %conv408 = trunc i32 %ch_group_index.2 to i8
  tail call void @mt76x02_phy_set_bw(ptr noundef %dev, i32 noundef %35, i8 noundef zeroext %conv408) #5
  %36 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chandef, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %and = and i32 %ch_group_index.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool410 = icmp ne i32 %and, 0
  tail call void @mt76x02_phy_set_band(ptr noundef %dev, i32 noundef %39, i1 noundef zeroext %tobool410) #5
  %40 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmw, align 4
  %arrayidx = getelementptr [4 x i32], ptr %ext_cca_chan, i32 0, i32 %ch_group_index.2
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 4
  %call412 = tail call i32 %43(ptr noundef %dev, i32 noundef 5148, i32 noundef 4095, i32 noundef %45) #5
  %46 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chandef, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %49, label %if.end406.mt76x0_phy_set_band.exit_crit_edge [
    i32 0, label %do.body.i
    i32 1, label %do.body8.i
  ]

if.end406.mt76x0_phy_set_band.exit_crit_edge:     ; preds = %if.end406
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_phy_set_band.exit

do.body.i:                                        ; preds = %if.end406
  %51 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus, align 4
  %type.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i = icmp eq i32 %54, 0
  br i1 %cmp.i, label %do.body.i.while.body.i.i_crit_edge, label %if.else.i

do.body.i.while.body.i.i_crit_edge:               ; preds = %do.body.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %do.body.i.while.body.i.i_crit_edge
  %n.addr.05.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 68, %do.body.i.while.body.i.i_crit_edge ]
  %data.addr.04.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ @mt76x0_rf_2g_channel_0_tab, %do.body.i.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %n.addr.05.i.i, -1
  %55 = ptrtoint ptr %data.addr.04.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %data.addr.04.i.i, align 4
  %value.i.i = getelementptr inbounds %struct.mt76_reg_pair, ptr %data.addr.04.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %value.i.i, align 4
  %conv.i.i = trunc i32 %58 to i8
  %call.i.i = tail call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef %56, i8 noundef zeroext %conv.i.i) #5
  %incdec.ptr.i.i = getelementptr %struct.mt76_reg_pair, ptr %data.addr.04.i.i, i32 1
  %cmp.i.i = icmp ugt i32 %n.addr.05.i.i, 1
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.do.end.i_crit_edge

while.body.i.i.do.end.i_crit_edge:                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %wr_rp.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %52, i32 0, i32 5
  %59 = ptrtoint ptr %wr_rp.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wr_rp.i, align 4
  %call.i488 = tail call i32 %60(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull @mt76x0_rf_2g_channel_0_tab, i32 noundef 68) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.else.i, %while.body.i.i.do.end.i_crit_edge
  %61 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bus, align 4
  %type.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp.i44.i = icmp eq i32 %64, 1
  br i1 %cmp.i44.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %do.end.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i) #5
  %65 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %pair.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 327680, ptr %pair.i.i, align 4
  %67 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 69, ptr %65, align 4
  %68 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %state, align 4
  %70 = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.then.i.i.if.end31.i.i_crit_edge

if.then.i.i.if.end31.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i

land.rhs.i.i:                                     ; preds = %if.then.i.i
  %.b50.i.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i, label %land.rhs.i.i.if.end31.i.i_crit_edge, label %if.then10.i.i, !prof !74

land.rhs.i.i.if.end31.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i

if.then10.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then10.i.i, %land.rhs.i.i.if.end31.i.i_crit_edge, %if.then.i.i.if.end31.i.i_crit_edge
  %71 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bus, align 4
  %wr_rp.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %wr_rp.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %wr_rp.i.i, align 4
  %call40.i.i = call i32 %74(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i) #5
  br label %mt76x0_rf_wr.exit.i

if.else.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i = tail call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 327680, i8 noundef zeroext 69) #5
  br label %mt76x0_rf_wr.exit.i

mt76x0_rf_wr.exit.i:                              ; preds = %if.else.i.i, %if.end31.i.i
  %75 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bus, align 4
  %type.i47.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %76, i32 0, i32 7
  %77 = ptrtoint ptr %type.i47.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %type.i47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp.i48.i = icmp eq i32 %78, 1
  br i1 %cmp.i48.i, label %if.then.i51.i, label %if.else.i59.i

if.then.i51.i:                                    ; preds = %mt76x0_rf_wr.exit.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i45.i) #5
  %79 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i45.i, i32 0, i32 1
  %80 = ptrtoint ptr %pair.i45.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 393216, ptr %pair.i45.i, align 4
  %81 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 68, ptr %79, align 4
  %82 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %state, align 4
  %84 = and i32 %83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i50.i = icmp eq i32 %84, 0
  br i1 %tobool.not.i50.i, label %land.rhs.i53.i, label %if.then.i51.i.if.end31.i57.i_crit_edge

if.then.i51.i.if.end31.i57.i_crit_edge:           ; preds = %if.then.i51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i57.i

land.rhs.i53.i:                                   ; preds = %if.then.i51.i
  %.b50.i52.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i52.i, label %land.rhs.i53.i.if.end31.i57.i_crit_edge, label %if.then10.i54.i, !prof !74

land.rhs.i53.i.if.end31.i57.i_crit_edge:          ; preds = %land.rhs.i53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i57.i

if.then10.i54.i:                                  ; preds = %land.rhs.i53.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i57.i

if.end31.i57.i:                                   ; preds = %if.then10.i54.i, %land.rhs.i53.i.if.end31.i57.i_crit_edge, %if.then.i51.i.if.end31.i57.i_crit_edge
  %85 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bus, align 4
  %wr_rp.i55.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %wr_rp.i55.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %wr_rp.i55.i, align 4
  %call40.i56.i = call i32 %88(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i45.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i45.i) #5
  br label %sw.epilog.sink.split.i

if.else.i59.i:                                    ; preds = %mt76x0_rf_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i58.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 393216, i8 noundef zeroext 68) #5
  br label %sw.epilog.sink.split.i

do.body8.i:                                       ; preds = %if.end406
  %89 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bus, align 4
  %type10.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %90, i32 0, i32 7
  %91 = ptrtoint ptr %type10.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %type10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp11.i = icmp eq i32 %92, 0
  br i1 %cmp11.i, label %do.body8.i.while.body.i70.i_crit_edge, label %if.else13.i

do.body8.i.while.body.i70.i_crit_edge:            ; preds = %do.body8.i
  br label %while.body.i70.i

while.body.i70.i:                                 ; preds = %while.body.i70.i.while.body.i70.i_crit_edge, %do.body8.i.while.body.i70.i_crit_edge
  %n.addr.05.i62.i = phi i32 [ %dec.i64.i, %while.body.i70.i.while.body.i70.i_crit_edge ], [ 38, %do.body8.i.while.body.i70.i_crit_edge ]
  %data.addr.04.i63.i = phi ptr [ %incdec.ptr.i68.i, %while.body.i70.i.while.body.i70.i_crit_edge ], [ @mt76x0_rf_5g_channel_0_tab, %do.body8.i.while.body.i70.i_crit_edge ]
  %dec.i64.i = add nsw i32 %n.addr.05.i62.i, -1
  %93 = ptrtoint ptr %data.addr.04.i63.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %data.addr.04.i63.i, align 4
  %value.i65.i = getelementptr inbounds %struct.mt76_reg_pair, ptr %data.addr.04.i63.i, i32 0, i32 1
  %95 = ptrtoint ptr %value.i65.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %value.i65.i, align 4
  %conv.i66.i = trunc i32 %96 to i8
  %call.i67.i = tail call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef %94, i8 noundef zeroext %conv.i66.i) #5
  %incdec.ptr.i68.i = getelementptr %struct.mt76_reg_pair, ptr %data.addr.04.i63.i, i32 1
  %cmp.i69.i = icmp ugt i32 %n.addr.05.i62.i, 1
  br i1 %cmp.i69.i, label %while.body.i70.i.while.body.i70.i_crit_edge, label %while.body.i70.i.do.end18.i_crit_edge

while.body.i70.i.do.end18.i_crit_edge:            ; preds = %while.body.i70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end18.i

while.body.i70.i.while.body.i70.i_crit_edge:      ; preds = %while.body.i70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i70.i

if.else13.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  %wr_rp15.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %90, i32 0, i32 5
  %97 = ptrtoint ptr %wr_rp15.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %wr_rp15.i, align 4
  %call16.i = tail call i32 %98(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull @mt76x0_rf_5g_channel_0_tab, i32 noundef 38) #5
  br label %do.end18.i

do.end18.i:                                       ; preds = %if.else13.i, %while.body.i70.i.do.end18.i_crit_edge
  %99 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bus, align 4
  %type.i74.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %100, i32 0, i32 7
  %101 = ptrtoint ptr %type.i74.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %type.i74.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %102)
  %cmp.i75.i = icmp eq i32 %102, 1
  br i1 %cmp.i75.i, label %if.then.i78.i, label %if.else.i86.i

if.then.i78.i:                                    ; preds = %do.end18.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i72.i) #5
  %103 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i72.i, i32 0, i32 1
  %104 = ptrtoint ptr %pair.i72.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 327680, ptr %pair.i72.i, align 4
  %105 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 68, ptr %103, align 4
  %106 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %state, align 4
  %108 = and i32 %107, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.not.i77.i = icmp eq i32 %108, 0
  br i1 %tobool.not.i77.i, label %land.rhs.i80.i, label %if.then.i78.i.if.end31.i84.i_crit_edge

if.then.i78.i.if.end31.i84.i_crit_edge:           ; preds = %if.then.i78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i84.i

land.rhs.i80.i:                                   ; preds = %if.then.i78.i
  %.b50.i79.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i79.i, label %land.rhs.i80.i.if.end31.i84.i_crit_edge, label %if.then10.i81.i, !prof !74

land.rhs.i80.i.if.end31.i84.i_crit_edge:          ; preds = %land.rhs.i80.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i84.i

if.then10.i81.i:                                  ; preds = %land.rhs.i80.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i84.i

if.end31.i84.i:                                   ; preds = %if.then10.i81.i, %land.rhs.i80.i.if.end31.i84.i_crit_edge, %if.then.i78.i.if.end31.i84.i_crit_edge
  %109 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bus, align 4
  %wr_rp.i82.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %110, i32 0, i32 5
  %111 = ptrtoint ptr %wr_rp.i82.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %wr_rp.i82.i, align 4
  %call40.i83.i = call i32 %112(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i72.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i72.i) #5
  br label %mt76x0_rf_wr.exit88.i

if.else.i86.i:                                    ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i85.i = tail call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 327680, i8 noundef zeroext 68) #5
  br label %mt76x0_rf_wr.exit88.i

mt76x0_rf_wr.exit88.i:                            ; preds = %if.else.i86.i, %if.end31.i84.i
  %113 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bus, align 4
  %type.i91.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %114, i32 0, i32 7
  %115 = ptrtoint ptr %type.i91.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %type.i91.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %116)
  %cmp.i92.i = icmp eq i32 %116, 1
  br i1 %cmp.i92.i, label %if.then.i95.i, label %if.else.i103.i

if.then.i95.i:                                    ; preds = %mt76x0_rf_wr.exit88.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i89.i) #5
  %117 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i89.i, i32 0, i32 1
  %118 = ptrtoint ptr %pair.i89.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 393216, ptr %pair.i89.i, align 4
  %119 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 69, ptr %117, align 4
  %120 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %state, align 4
  %122 = and i32 %121, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.not.i94.i = icmp eq i32 %122, 0
  br i1 %tobool.not.i94.i, label %land.rhs.i97.i, label %if.then.i95.i.if.end31.i101.i_crit_edge

if.then.i95.i.if.end31.i101.i_crit_edge:          ; preds = %if.then.i95.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i101.i

land.rhs.i97.i:                                   ; preds = %if.then.i95.i
  %.b50.i96.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i96.i, label %land.rhs.i97.i.if.end31.i101.i_crit_edge, label %if.then10.i98.i, !prof !74

land.rhs.i97.i.if.end31.i101.i_crit_edge:         ; preds = %land.rhs.i97.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i101.i

if.then10.i98.i:                                  ; preds = %land.rhs.i97.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i101.i

if.end31.i101.i:                                  ; preds = %if.then10.i98.i, %land.rhs.i97.i.if.end31.i101.i_crit_edge, %if.then.i95.i.if.end31.i101.i_crit_edge
  %123 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %bus, align 4
  %wr_rp.i99.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %124, i32 0, i32 5
  %125 = ptrtoint ptr %wr_rp.i99.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %wr_rp.i99.i, align 4
  %call40.i100.i = call i32 %126(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i89.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i89.i) #5
  br label %sw.epilog.sink.split.i

if.else.i103.i:                                   ; preds = %mt76x0_rf_wr.exit88.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i102.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 393216, i8 noundef zeroext 69) #5
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.else.i103.i, %if.end31.i101.i, %if.else.i59.i, %if.end31.i57.i
  %.sink108.i = phi i32 [ 327687, %if.end31.i57.i ], [ 327687, %if.else.i59.i ], [ 5, %if.end31.i101.i ], [ 5, %if.else.i103.i ]
  %.sink.i = phi i32 [ 4063234, %if.end31.i57.i ], [ 4063234, %if.else.i59.i ], [ 16843010, %if.end31.i101.i ], [ 16843010, %if.else.i103.i ]
  %127 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bus, align 4
  %wr22.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %wr22.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %wr22.i, align 4
  call void %130(ptr noundef %dev, i32 noundef 5064, i32 noundef %.sink108.i) #5
  %131 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %bus, align 4
  %wr24.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %wr24.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %wr24.i, align 4
  call void %134(ptr noundef %dev, i32 noundef 5024, i32 noundef %.sink.i) #5
  br label %mt76x0_phy_set_band.exit

mt76x0_phy_set_band.exit:                         ; preds = %sw.epilog.sink.split.i, %if.end406.mt76x0_phy_set_band.exit_crit_edge
  %135 = zext i8 %channel.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %channel.0, label %for.cond.i.25 [
    i8 -73, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge
    i8 -71, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge556
    i8 43, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge557
    i8 45, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge558
    i8 54, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge559
    i8 55, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge560
    i8 57, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge561
    i8 58, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge562
    i8 102, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge563
    i8 103, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge564
    i8 105, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge565
    i8 106, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge566
    i8 115, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge567
    i8 117, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge568
    i8 126, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge569
    i8 127, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge570
    i8 -127, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge571
    i8 -126, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge572
    i8 -117, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge573
    i8 -115, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge574
    i8 -106, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge575
    i8 -105, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge576
    i8 -103, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge577
    i8 -102, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge578
    i8 -93, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge579
    i8 -91, label %mt76x0_phy_set_band.exit.for.end.i_crit_edge580
  ]

mt76x0_phy_set_band.exit.for.end.i_crit_edge580:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge579:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge578:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge577:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge576:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge575:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge574:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge573:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge572:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge571:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge570:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge569:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge568:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge567:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge566:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge565:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge564:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge563:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge562:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge561:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge560:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge559:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge558:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge557:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge556:  ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

mt76x0_phy_set_band.exit.for.end.i_crit_edge:     ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.i.25:                                    ; preds = %mt76x0_phy_set_band.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond.i.25, %mt76x0_phy_set_band.exit.for.end.i_crit_edge, %mt76x0_phy_set_band.exit.for.end.i_crit_edge556, %mt76x0_phy_set_band.exit.for.end.i_crit_edge557, %mt76x0_phy_set_band.exit.for.end.i_crit_edge558, %mt76x0_phy_set_band.exit.for.end.i_crit_edge559, %mt76x0_phy_set_band.exit.for.end.i_crit_edge560, %mt76x0_phy_set_band.exit.for.end.i_crit_edge561, %mt76x0_phy_set_band.exit.for.end.i_crit_edge562, %mt76x0_phy_set_band.exit.for.end.i_crit_edge563, %mt76x0_phy_set_band.exit.for.end.i_crit_edge564, %mt76x0_phy_set_band.exit.for.end.i_crit_edge565, %mt76x0_phy_set_band.exit.for.end.i_crit_edge566, %mt76x0_phy_set_band.exit.for.end.i_crit_edge567, %mt76x0_phy_set_band.exit.for.end.i_crit_edge568, %mt76x0_phy_set_band.exit.for.end.i_crit_edge569, %mt76x0_phy_set_band.exit.for.end.i_crit_edge570, %mt76x0_phy_set_band.exit.for.end.i_crit_edge571, %mt76x0_phy_set_band.exit.for.end.i_crit_edge572, %mt76x0_phy_set_band.exit.for.end.i_crit_edge573, %mt76x0_phy_set_band.exit.for.end.i_crit_edge574, %mt76x0_phy_set_band.exit.for.end.i_crit_edge575, %mt76x0_phy_set_band.exit.for.end.i_crit_edge576, %mt76x0_phy_set_band.exit.for.end.i_crit_edge577, %mt76x0_phy_set_band.exit.for.end.i_crit_edge578, %mt76x0_phy_set_band.exit.for.end.i_crit_edge579, %mt76x0_phy_set_band.exit.for.end.i_crit_edge580
  %cmp.lcssa.i = phi i1 [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge ], [ false, %for.cond.i.25 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge556 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge557 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge558 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge559 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge560 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge561 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge562 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge563 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge564 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge565 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge566 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge567 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge568 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge569 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge570 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge571 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge572 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge573 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge574 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge575 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge576 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge577 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge578 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge579 ], [ true, %mt76x0_phy_set_band.exit.for.end.i_crit_edge580 ]
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.inc74.i.for.body13.i_crit_edge, %for.end.i
  %i.1787.i = phi i32 [ 0, %for.end.i ], [ %inc75.i, %for.inc74.i.for.body13.i_crit_edge ]
  %arrayidx15.i = getelementptr [125 x %struct.mt76x0_freq_item], ptr @mt76x0_frequency_plan, i32 0, i32 %i.1787.i
  %136 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx15.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %137, i8 %channel.0)
  %cmp18.i = icmp eq i8 %137, %channel.0
  br i1 %cmp18.i, label %if.then20.i, label %for.inc74.i

if.then20.i:                                      ; preds = %for.body13.i
  %band22.i = getelementptr [125 x %struct.mt76x0_freq_item], ptr @mt76x0_frequency_plan, i32 0, i32 %i.1787.i, i32 1
  %138 = ptrtoint ptr %band22.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %band22.i, align 4
  %conv23.i = trunc i32 %139 to i16
  %arrayidx25.i = getelementptr [125 x %struct.mt76x0_freq_item], ptr @mt76x0_sdm_frequency_plan, i32 0, i32 %i.1787.i
  %freq_item.0.i = select i1 %cmp.lcssa.i, ptr %arrayidx25.i, ptr %arrayidx15.i
  %pllR37.i = getelementptr inbounds %struct.mt76x0_freq_item, ptr %freq_item.0.i, i32 0, i32 2
  %140 = ptrtoint ptr %pllR37.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %pllR37.i, align 4
  %142 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %bus, align 4
  %type.i.i492 = getelementptr inbounds %struct.mt76_bus_ops, ptr %143, i32 0, i32 7
  %144 = ptrtoint ptr %type.i.i492 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %type.i.i492, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %145)
  %cmp.i.i493 = icmp eq i32 %145, 1
  br i1 %cmp.i.i493, label %if.then.i.i497, label %if.else.i.i505

if.then.i.i497:                                   ; preds = %if.then20.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i490) #5
  %146 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i490, i32 0, i32 1
  %147 = ptrtoint ptr %pair.i.i490 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 37, ptr %pair.i.i490, align 4
  %conv.i.i494 = zext i8 %141 to i32
  %148 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %conv.i.i494, ptr %146, align 4
  %149 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %state, align 4
  %151 = and i32 %150, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool.not.i.i496 = icmp eq i32 %151, 0
  br i1 %tobool.not.i.i496, label %land.rhs.i.i499, label %if.then.i.i497.if.end31.i.i503_crit_edge

if.then.i.i497.if.end31.i.i503_crit_edge:         ; preds = %if.then.i.i497
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i503

land.rhs.i.i499:                                  ; preds = %if.then.i.i497
  %.b50.i.i498 = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i498, label %land.rhs.i.i499.if.end31.i.i503_crit_edge, label %if.then10.i.i500, !prof !74

land.rhs.i.i499.if.end31.i.i503_crit_edge:        ; preds = %land.rhs.i.i499
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i503

if.then10.i.i500:                                 ; preds = %land.rhs.i.i499
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i503

if.end31.i.i503:                                  ; preds = %if.then10.i.i500, %land.rhs.i.i499.if.end31.i.i503_crit_edge, %if.then.i.i497.if.end31.i.i503_crit_edge
  %152 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %bus, align 4
  %wr_rp.i.i501 = getelementptr inbounds %struct.mt76_bus_ops, ptr %153, i32 0, i32 5
  %154 = ptrtoint ptr %wr_rp.i.i501 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %wr_rp.i.i501, align 4
  %call40.i.i502 = call i32 %155(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i490, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i490) #5
  br label %mt76x0_rf_wr.exit.i506

if.else.i.i505:                                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i504 = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 37, i8 noundef zeroext %141) #5
  br label %mt76x0_rf_wr.exit.i506

mt76x0_rf_wr.exit.i506:                           ; preds = %if.else.i.i505, %if.end31.i.i503
  %pllR36.i = getelementptr inbounds %struct.mt76x0_freq_item, ptr %freq_item.0.i, i32 0, i32 3
  %156 = ptrtoint ptr %pllR36.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %pllR36.i, align 1
  %158 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %bus, align 4
  %type.i303.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %159, i32 0, i32 7
  %160 = ptrtoint ptr %type.i303.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %type.i303.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %161)
  %cmp.i304.i = icmp eq i32 %161, 1
  br i1 %cmp.i304.i, label %if.then.i308.i, label %if.else.i316.i

if.then.i308.i:                                   ; preds = %mt76x0_rf_wr.exit.i506
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i301.i) #5
  %162 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i301.i, i32 0, i32 1
  %163 = ptrtoint ptr %pair.i301.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 36, ptr %pair.i301.i, align 4
  %conv.i305.i = zext i8 %157 to i32
  %164 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %conv.i305.i, ptr %162, align 4
  %165 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile i32, ptr %state, align 4
  %167 = and i32 %166, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool.not.i307.i = icmp eq i32 %167, 0
  br i1 %tobool.not.i307.i, label %land.rhs.i310.i, label %if.then.i308.i.if.end31.i314.i_crit_edge

if.then.i308.i.if.end31.i314.i_crit_edge:         ; preds = %if.then.i308.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i314.i

land.rhs.i310.i:                                  ; preds = %if.then.i308.i
  %.b50.i309.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i309.i, label %land.rhs.i310.i.if.end31.i314.i_crit_edge, label %if.then10.i311.i, !prof !74

land.rhs.i310.i.if.end31.i314.i_crit_edge:        ; preds = %land.rhs.i310.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i314.i

if.then10.i311.i:                                 ; preds = %land.rhs.i310.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i314.i

if.end31.i314.i:                                  ; preds = %if.then10.i311.i, %land.rhs.i310.i.if.end31.i314.i_crit_edge, %if.then.i308.i.if.end31.i314.i_crit_edge
  %168 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %bus, align 4
  %wr_rp.i312.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %169, i32 0, i32 5
  %170 = ptrtoint ptr %wr_rp.i312.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %wr_rp.i312.i, align 4
  %call40.i313.i = call i32 %171(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i301.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i301.i) #5
  br label %mt76x0_rf_wr.exit318.i

if.else.i316.i:                                   ; preds = %mt76x0_rf_wr.exit.i506
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i315.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 36, i8 noundef zeroext %157) #5
  br label %mt76x0_rf_wr.exit318.i

mt76x0_rf_wr.exit318.i:                           ; preds = %if.else.i316.i, %if.end31.i314.i
  %pllR35.i = getelementptr inbounds %struct.mt76x0_freq_item, ptr %freq_item.0.i, i32 0, i32 4
  %172 = ptrtoint ptr %pllR35.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %pllR35.i, align 2
  %174 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %bus, align 4
  %type.i321.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %175, i32 0, i32 7
  %176 = ptrtoint ptr %type.i321.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %type.i321.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %177)
  %cmp.i322.i = icmp eq i32 %177, 1
  br i1 %cmp.i322.i, label %if.then.i326.i, label %if.else.i334.i

if.then.i326.i:                                   ; preds = %mt76x0_rf_wr.exit318.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i319.i) #5
  %178 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i319.i, i32 0, i32 1
  %179 = ptrtoint ptr %pair.i319.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 35, ptr %pair.i319.i, align 4
  %conv.i323.i = zext i8 %173 to i32
  %180 = ptrtoint ptr %178 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %conv.i323.i, ptr %178, align 4
  %181 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile i32, ptr %state, align 4
  %183 = and i32 %182, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool.not.i325.i = icmp eq i32 %183, 0
  br i1 %tobool.not.i325.i, label %land.rhs.i328.i, label %if.then.i326.i.if.end31.i332.i_crit_edge

if.then.i326.i.if.end31.i332.i_crit_edge:         ; preds = %if.then.i326.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i332.i

land.rhs.i328.i:                                  ; preds = %if.then.i326.i
  %.b50.i327.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i327.i, label %land.rhs.i328.i.if.end31.i332.i_crit_edge, label %if.then10.i329.i, !prof !74

land.rhs.i328.i.if.end31.i332.i_crit_edge:        ; preds = %land.rhs.i328.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i332.i

if.then10.i329.i:                                 ; preds = %land.rhs.i328.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i332.i

if.end31.i332.i:                                  ; preds = %if.then10.i329.i, %land.rhs.i328.i.if.end31.i332.i_crit_edge, %if.then.i326.i.if.end31.i332.i_crit_edge
  %184 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %bus, align 4
  %wr_rp.i330.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %185, i32 0, i32 5
  %186 = ptrtoint ptr %wr_rp.i330.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %wr_rp.i330.i, align 4
  %call40.i331.i = call i32 %187(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i319.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i319.i) #5
  br label %mt76x0_rf_wr.exit336.i

if.else.i334.i:                                   ; preds = %mt76x0_rf_wr.exit318.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i333.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 35, i8 noundef zeroext %173) #5
  br label %mt76x0_rf_wr.exit336.i

mt76x0_rf_wr.exit336.i:                           ; preds = %if.else.i334.i, %if.end31.i332.i
  %pllR34.i = getelementptr inbounds %struct.mt76x0_freq_item, ptr %freq_item.0.i, i32 0, i32 5
  %188 = ptrtoint ptr %pllR34.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %pllR34.i, align 1
  %190 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %bus, align 4
  %type.i339.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %191, i32 0, i32 7
  %192 = ptrtoint ptr %type.i339.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %type.i339.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %193)
  %cmp.i340.i = icmp eq i32 %193, 1
  br i1 %cmp.i340.i, label %if.then.i344.i, label %if.else.i352.i

if.then.i344.i:                                   ; preds = %mt76x0_rf_wr.exit336.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i337.i) #5
  %194 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i337.i, i32 0, i32 1
  %195 = ptrtoint ptr %pair.i337.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 34, ptr %pair.i337.i, align 4
  %conv.i341.i = zext i8 %189 to i32
  %196 = ptrtoint ptr %194 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %conv.i341.i, ptr %194, align 4
  %197 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %state, align 4
  %199 = and i32 %198, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool.not.i343.i = icmp eq i32 %199, 0
  br i1 %tobool.not.i343.i, label %land.rhs.i346.i, label %if.then.i344.i.if.end31.i350.i_crit_edge

if.then.i344.i.if.end31.i350.i_crit_edge:         ; preds = %if.then.i344.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i350.i

land.rhs.i346.i:                                  ; preds = %if.then.i344.i
  %.b50.i345.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i345.i, label %land.rhs.i346.i.if.end31.i350.i_crit_edge, label %if.then10.i347.i, !prof !74

land.rhs.i346.i.if.end31.i350.i_crit_edge:        ; preds = %land.rhs.i346.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i350.i

if.then10.i347.i:                                 ; preds = %land.rhs.i346.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i350.i

if.end31.i350.i:                                  ; preds = %if.then10.i347.i, %land.rhs.i346.i.if.end31.i350.i_crit_edge, %if.then.i344.i.if.end31.i350.i_crit_edge
  %200 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %bus, align 4
  %wr_rp.i348.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %201, i32 0, i32 5
  %202 = ptrtoint ptr %wr_rp.i348.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %wr_rp.i348.i, align 4
  %call40.i349.i = call i32 %203(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i337.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i337.i) #5
  br label %mt76x0_rf_wr.exit354.i

if.else.i352.i:                                   ; preds = %mt76x0_rf_wr.exit336.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i351.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 34, i8 noundef zeroext %189) #5
  br label %mt76x0_rf_wr.exit354.i

mt76x0_rf_wr.exit354.i:                           ; preds = %if.else.i352.i, %if.end31.i350.i
  %pllR33.i = getelementptr inbounds %struct.mt76x0_freq_item, ptr %freq_item.0.i, i32 0, i32 6
  %204 = ptrtoint ptr %pllR33.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %pllR33.i, align 4
  %206 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %bus, align 4
  %type.i357.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %207, i32 0, i32 7
  %208 = ptrtoint ptr %type.i357.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %type.i357.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %209)
  %cmp.i358.i = icmp eq i32 %209, 1
  br i1 %cmp.i358.i, label %if.then.i362.i, label %if.else.i370.i

if.then.i362.i:                                   ; preds = %mt76x0_rf_wr.exit354.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i355.i) #5
  %210 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i355.i, i32 0, i32 1
  %211 = ptrtoint ptr %pair.i355.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 33, ptr %pair.i355.i, align 4
  %conv.i359.i = zext i8 %205 to i32
  %212 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %conv.i359.i, ptr %210, align 4
  %213 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load volatile i32, ptr %state, align 4
  %215 = and i32 %214, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool.not.i361.i = icmp eq i32 %215, 0
  br i1 %tobool.not.i361.i, label %land.rhs.i364.i, label %if.then.i362.i.if.end31.i368.i_crit_edge

if.then.i362.i.if.end31.i368.i_crit_edge:         ; preds = %if.then.i362.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i368.i

land.rhs.i364.i:                                  ; preds = %if.then.i362.i
  %.b50.i363.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i363.i, label %land.rhs.i364.i.if.end31.i368.i_crit_edge, label %if.then10.i365.i, !prof !74

land.rhs.i364.i.if.end31.i368.i_crit_edge:        ; preds = %land.rhs.i364.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i368.i

if.then10.i365.i:                                 ; preds = %land.rhs.i364.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i368.i

if.end31.i368.i:                                  ; preds = %if.then10.i365.i, %land.rhs.i364.i.if.end31.i368.i_crit_edge, %if.then.i362.i.if.end31.i368.i_crit_edge
  %216 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %bus, align 4
  %wr_rp.i366.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %217, i32 0, i32 5
  %218 = ptrtoint ptr %wr_rp.i366.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %wr_rp.i366.i, align 4
  %call40.i367.i = call i32 %219(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i355.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i355.i) #5
  br label %mt76x0_rf_wr.exit372.i

if.else.i370.i:                                   ; preds = %mt76x0_rf_wr.exit354.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i369.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 33, i8 noundef zeroext %205) #5
  br label %mt76x0_rf_wr.exit372.i

mt76x0_rf_wr.exit372.i:                           ; preds = %if.else.i370.i, %if.end31.i368.i
  %pllR32_b7b5.i = getelementptr inbounds %struct.mt76x0_freq_item, ptr %freq_item.0.i, i32 0, i32 7
  %220 = ptrtoint ptr %pllR32_b7b5.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %pllR32_b7b5.i, align 1
  %call.i.i507 = call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i507)
  %cmp.i373.i = icmp slt i32 %call.i.i507, 0
  br i1 %cmp.i373.i, label %mt76x0_rf_wr.exit372.i.mt76x0_rf_rmw.exit.i_crit_edge, label %if.end.i.i

mt76x0_rf_wr.exit372.i.mt76x0_rf_rmw.exit.i_crit_edge: ; preds = %mt76x0_rf_wr.exit372.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_rf_rmw.exit.i

if.end.i.i:                                       ; preds = %mt76x0_rf_wr.exit372.i
  %222 = trunc i32 %call.i.i507 to i8
  %223 = and i8 %222, 31
  %conv2.i.i = or i8 %223, %221
  %224 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %bus, align 4
  %type.i.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %225, i32 0, i32 7
  %226 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %227)
  %cmp.i.i.i = icmp eq i32 %227, 1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i.i) #5
  %228 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i.i, i32 0, i32 1
  %229 = ptrtoint ptr %pair.i.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 32, ptr %pair.i.i.i, align 4
  %conv.i.i.i = zext i8 %conv2.i.i to i32
  %230 = ptrtoint ptr %228 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %conv.i.i.i, ptr %228, align 4
  %231 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load volatile i32, ptr %state, align 4
  %233 = and i32 %232, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool.not.i.i.i = icmp eq i32 %233, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %if.then.i.i.i.if.end31.i.i.i_crit_edge

if.then.i.i.i.if.end31.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then.i.i.i
  %.b50.i.i.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i.i, label %land.rhs.i.i.i.if.end31.i.i.i_crit_edge, label %if.then10.i.i.i, !prof !74

land.rhs.i.i.i.if.end31.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i.i

if.then10.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i.i

if.end31.i.i.i:                                   ; preds = %if.then10.i.i.i, %land.rhs.i.i.i.if.end31.i.i.i_crit_edge, %if.then.i.i.i.if.end31.i.i.i_crit_edge
  %234 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %bus, align 4
  %wr_rp.i.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %235, i32 0, i32 5
  %236 = ptrtoint ptr %wr_rp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %wr_rp.i.i.i, align 4
  %call40.i.i.i = call i32 %237(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i.i) #5
  br label %mt76x0_rf_rmw.exit.i

if.else.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 32, i8 noundef zeroext %conv2.i.i) #5
  br label %mt76x0_rf_rmw.exit.i

mt76x0_rf_rmw.exit.i:                             ; preds = %if.else.i.i.i, %if.end31.i.i.i, %mt76x0_rf_wr.exit372.i.mt76x0_rf_rmw.exit.i_crit_edge
  %pllR32_b4b0.i = getelementptr inbounds %struct.mt76x0_freq_item, ptr %freq_item.0.i, i32 0, i32 8
  %238 = ptrtoint ptr %pllR32_b4b0.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %pllR32_b4b0.i, align 2
  %call.i375.i = call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i375.i)
  %cmp.i376.i = icmp slt i32 %call.i375.i, 0
  br i1 %cmp.i376.i, label %mt76x0_rf_rmw.exit.i.mt76x0_rf_rmw.exit395.i_crit_edge, label %if.end.i382.i

mt76x0_rf_rmw.exit.i.mt76x0_rf_rmw.exit395.i_crit_edge: ; preds = %mt76x0_rf_rmw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_rf_rmw.exit395.i

if.end.i382.i:                                    ; preds = %mt76x0_rf_rmw.exit.i
  %240 = trunc i32 %call.i375.i to i8
  %241 = and i8 %240, -32
  %conv2.i378.i = or i8 %241, %239
  %242 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %bus, align 4
  %type.i.i380.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %243, i32 0, i32 7
  %244 = ptrtoint ptr %type.i.i380.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %type.i.i380.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %245)
  %cmp.i.i381.i = icmp eq i32 %245, 1
  br i1 %cmp.i.i381.i, label %if.then.i.i386.i, label %if.else.i.i394.i

if.then.i.i386.i:                                 ; preds = %if.end.i382.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i374.i) #5
  %246 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i374.i, i32 0, i32 1
  %247 = ptrtoint ptr %pair.i.i374.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 32, ptr %pair.i.i374.i, align 4
  %conv.i.i383.i = zext i8 %conv2.i378.i to i32
  %248 = ptrtoint ptr %246 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %conv.i.i383.i, ptr %246, align 4
  %249 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load volatile i32, ptr %state, align 4
  %251 = and i32 %250, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %tobool.not.i.i385.i = icmp eq i32 %251, 0
  br i1 %tobool.not.i.i385.i, label %land.rhs.i.i388.i, label %if.then.i.i386.i.if.end31.i.i392.i_crit_edge

if.then.i.i386.i.if.end31.i.i392.i_crit_edge:     ; preds = %if.then.i.i386.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i392.i

land.rhs.i.i388.i:                                ; preds = %if.then.i.i386.i
  %.b50.i.i387.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i387.i, label %land.rhs.i.i388.i.if.end31.i.i392.i_crit_edge, label %if.then10.i.i389.i, !prof !74

land.rhs.i.i388.i.if.end31.i.i392.i_crit_edge:    ; preds = %land.rhs.i.i388.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i392.i

if.then10.i.i389.i:                               ; preds = %land.rhs.i.i388.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i392.i

if.end31.i.i392.i:                                ; preds = %if.then10.i.i389.i, %land.rhs.i.i388.i.if.end31.i.i392.i_crit_edge, %if.then.i.i386.i.if.end31.i.i392.i_crit_edge
  %252 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %bus, align 4
  %wr_rp.i.i390.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %253, i32 0, i32 5
  %254 = ptrtoint ptr %wr_rp.i.i390.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %wr_rp.i.i390.i, align 4
  %call40.i.i391.i = call i32 %255(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i374.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i374.i) #5
  br label %mt76x0_rf_rmw.exit395.i

if.else.i.i394.i:                                 ; preds = %if.end.i382.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i393.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 32, i8 noundef zeroext %conv2.i378.i) #5
  br label %mt76x0_rf_rmw.exit395.i

mt76x0_rf_rmw.exit395.i:                          ; preds = %if.else.i.i394.i, %if.end31.i.i392.i, %mt76x0_rf_rmw.exit.i.mt76x0_rf_rmw.exit395.i_crit_edge
  %pllR31_b7b5.i = getelementptr inbounds %struct.mt76x0_freq_item, ptr %freq_item.0.i, i32 0, i32 9
  %256 = ptrtoint ptr %pllR31_b7b5.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %pllR31_b7b5.i, align 1
  %call.i397.i = call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i397.i)
  %cmp.i398.i = icmp slt i32 %call.i397.i, 0
  br i1 %cmp.i398.i, label %mt76x0_rf_rmw.exit395.i.mt76x0_rf_rmw.exit417.i_crit_edge, label %if.end.i404.i

mt76x0_rf_rmw.exit395.i.mt76x0_rf_rmw.exit417.i_crit_edge: ; preds = %mt76x0_rf_rmw.exit395.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_rf_rmw.exit417.i

if.end.i404.i:                                    ; preds = %mt76x0_rf_rmw.exit395.i
  %258 = trunc i32 %call.i397.i to i8
  %259 = and i8 %258, 31
  %conv2.i400.i = or i8 %259, %257
  %260 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %bus, align 4
  %type.i.i402.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %261, i32 0, i32 7
  %262 = ptrtoint ptr %type.i.i402.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %type.i.i402.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %263)
  %cmp.i.i403.i = icmp eq i32 %263, 1
  br i1 %cmp.i.i403.i, label %if.then.i.i408.i, label %if.else.i.i416.i

if.then.i.i408.i:                                 ; preds = %if.end.i404.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i396.i) #5
  %264 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i396.i, i32 0, i32 1
  %265 = ptrtoint ptr %pair.i.i396.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 31, ptr %pair.i.i396.i, align 4
  %conv.i.i405.i = zext i8 %conv2.i400.i to i32
  %266 = ptrtoint ptr %264 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %conv.i.i405.i, ptr %264, align 4
  %267 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load volatile i32, ptr %state, align 4
  %269 = and i32 %268, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %tobool.not.i.i407.i = icmp eq i32 %269, 0
  br i1 %tobool.not.i.i407.i, label %land.rhs.i.i410.i, label %if.then.i.i408.i.if.end31.i.i414.i_crit_edge

if.then.i.i408.i.if.end31.i.i414.i_crit_edge:     ; preds = %if.then.i.i408.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i414.i

land.rhs.i.i410.i:                                ; preds = %if.then.i.i408.i
  %.b50.i.i409.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i409.i, label %land.rhs.i.i410.i.if.end31.i.i414.i_crit_edge, label %if.then10.i.i411.i, !prof !74

land.rhs.i.i410.i.if.end31.i.i414.i_crit_edge:    ; preds = %land.rhs.i.i410.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i414.i

if.then10.i.i411.i:                               ; preds = %land.rhs.i.i410.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i414.i

if.end31.i.i414.i:                                ; preds = %if.then10.i.i411.i, %land.rhs.i.i410.i.if.end31.i.i414.i_crit_edge, %if.then.i.i408.i.if.end31.i.i414.i_crit_edge
  %270 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %bus, align 4
  %wr_rp.i.i412.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %271, i32 0, i32 5
  %272 = ptrtoint ptr %wr_rp.i.i412.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %wr_rp.i.i412.i, align 4
  %call40.i.i413.i = call i32 %273(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i396.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i396.i) #5
  br label %mt76x0_rf_rmw.exit417.i

if.else.i.i416.i:                                 ; preds = %if.end.i404.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i415.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 31, i8 noundef zeroext %conv2.i400.i) #5
  br label %mt76x0_rf_rmw.exit417.i

mt76x0_rf_rmw.exit417.i:                          ; preds = %if.else.i.i416.i, %if.end31.i.i414.i, %mt76x0_rf_rmw.exit395.i.mt76x0_rf_rmw.exit417.i_crit_edge
  %pllR31_b4b0.i = getelementptr inbounds %struct.mt76x0_freq_item, ptr %freq_item.0.i, i32 0, i32 10
  %274 = ptrtoint ptr %pllR31_b4b0.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %pllR31_b4b0.i, align 4
  %call.i419.i = call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i419.i)
  %cmp.i420.i = icmp slt i32 %call.i419.i, 0
  br i1 %cmp.i420.i, label %mt76x0_rf_rmw.exit417.i.mt76x0_rf_rmw.exit439.i_crit_edge, label %if.end.i426.i

mt76x0_rf_rmw.exit417.i.mt76x0_rf_rmw.exit439.i_crit_edge: ; preds = %mt76x0_rf_rmw.exit417.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_rf_rmw.exit439.i

if.end.i426.i:                                    ; preds = %mt76x0_rf_rmw.exit417.i
  %276 = trunc i32 %call.i419.i to i8
  %277 = and i8 %276, -32
  %conv2.i422.i = or i8 %277, %275
  %278 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %bus, align 4
  %type.i.i424.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %279, i32 0, i32 7
  %280 = ptrtoint ptr %type.i.i424.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %type.i.i424.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %281)
  %cmp.i.i425.i = icmp eq i32 %281, 1
  br i1 %cmp.i.i425.i, label %if.then.i.i430.i, label %if.else.i.i438.i

if.then.i.i430.i:                                 ; preds = %if.end.i426.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i418.i) #5
  %282 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i418.i, i32 0, i32 1
  %283 = ptrtoint ptr %pair.i.i418.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 31, ptr %pair.i.i418.i, align 4
  %conv.i.i427.i = zext i8 %conv2.i422.i to i32
  %284 = ptrtoint ptr %282 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %conv.i.i427.i, ptr %282, align 4
  %285 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load volatile i32, ptr %state, align 4
  %287 = and i32 %286, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %tobool.not.i.i429.i = icmp eq i32 %287, 0
  br i1 %tobool.not.i.i429.i, label %land.rhs.i.i432.i, label %if.then.i.i430.i.if.end31.i.i436.i_crit_edge

if.then.i.i430.i.if.end31.i.i436.i_crit_edge:     ; preds = %if.then.i.i430.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i436.i

land.rhs.i.i432.i:                                ; preds = %if.then.i.i430.i
  %.b50.i.i431.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i431.i, label %land.rhs.i.i432.i.if.end31.i.i436.i_crit_edge, label %if.then10.i.i433.i, !prof !74

land.rhs.i.i432.i.if.end31.i.i436.i_crit_edge:    ; preds = %land.rhs.i.i432.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i436.i

if.then10.i.i433.i:                               ; preds = %land.rhs.i.i432.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i436.i

if.end31.i.i436.i:                                ; preds = %if.then10.i.i433.i, %land.rhs.i.i432.i.if.end31.i.i436.i_crit_edge, %if.then.i.i430.i.if.end31.i.i436.i_crit_edge
  %288 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %bus, align 4
  %wr_rp.i.i434.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %289, i32 0, i32 5
  %290 = ptrtoint ptr %wr_rp.i.i434.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %wr_rp.i.i434.i, align 4
  %call40.i.i435.i = call i32 %291(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i418.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i418.i) #5
  br label %mt76x0_rf_rmw.exit439.i

if.else.i.i438.i:                                 ; preds = %if.end.i426.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i437.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 31, i8 noundef zeroext %conv2.i422.i) #5
  br label %mt76x0_rf_rmw.exit439.i

mt76x0_rf_rmw.exit439.i:                          ; preds = %if.else.i.i438.i, %if.end31.i.i436.i, %mt76x0_rf_rmw.exit417.i.mt76x0_rf_rmw.exit439.i_crit_edge
  br i1 %cmp.lcssa.i, label %if.then37.i, label %if.else40.i

if.then37.i:                                      ; preds = %mt76x0_rf_rmw.exit439.i
  %call.i.i.i = call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i440.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i440.i, label %if.then37.i.mt76x0_rf_clear.exit.i_crit_edge, label %if.end.i.i.i

if.then37.i.mt76x0_rf_clear.exit.i_crit_edge:     ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_rf_clear.exit.i

if.end.i.i.i:                                     ; preds = %if.then37.i
  %292 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %bus, align 4
  %type.i.i.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %293, i32 0, i32 7
  %294 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %295)
  %cmp.i.i.i.i = icmp eq i32 %295, 1
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.else.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i.i.i) #5
  %296 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i.i.i, i32 0, i32 1
  %297 = ptrtoint ptr %pair.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 30, ptr %pair.i.i.i.i, align 4
  %conv.i.i.i.i = and i32 %call.i.i.i, 127
  %298 = ptrtoint ptr %296 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %conv.i.i.i.i, ptr %296, align 4
  %299 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load volatile i32, ptr %state, align 4
  %301 = and i32 %300, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %tobool.not.i.i.i.i = icmp eq i32 %301, 0
  br i1 %tobool.not.i.i.i.i, label %land.rhs.i.i.i.i, label %if.then.i.i.i.i.if.end31.i.i.i.i_crit_edge

if.then.i.i.i.i.if.end31.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  %.b50.i.i.i.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i.i.i, label %land.rhs.i.i.i.i.if.end31.i.i.i.i_crit_edge, label %if.then10.i.i.i.i, !prof !74

land.rhs.i.i.i.i.if.end31.i.i.i.i_crit_edge:      ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i.i.i

if.then10.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i.i.i

if.end31.i.i.i.i:                                 ; preds = %if.then10.i.i.i.i, %land.rhs.i.i.i.i.if.end31.i.i.i.i_crit_edge, %if.then.i.i.i.i.if.end31.i.i.i.i_crit_edge
  %302 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %bus, align 4
  %wr_rp.i.i.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %303, i32 0, i32 5
  %304 = ptrtoint ptr %wr_rp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %wr_rp.i.i.i.i, align 4
  %call40.i.i.i.i = call i32 %305(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i.i.i) #5
  br label %mt76x0_rf_clear.exit.i

if.else.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %306 = trunc i32 %call.i.i.i to i8
  %307 = and i8 %306, 127
  %call41.i.i.i.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 30, i8 noundef zeroext %307) #5
  br label %mt76x0_rf_clear.exit.i

mt76x0_rf_clear.exit.i:                           ; preds = %if.else.i.i.i.i, %if.end31.i.i.i.i, %if.then37.i.mt76x0_rf_clear.exit.i_crit_edge
  %call.i.i442.i = call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i442.i)
  %cmp.i.i443.i = icmp slt i32 %call.i.i442.i, 0
  br i1 %cmp.i.i443.i, label %mt76x0_rf_clear.exit.i.if.end42.i_crit_edge, label %if.end.i.i447.i

mt76x0_rf_clear.exit.i.if.end42.i_crit_edge:      ; preds = %mt76x0_rf_clear.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

if.end.i.i447.i:                                  ; preds = %mt76x0_rf_clear.exit.i
  %308 = trunc i32 %call.i.i442.i to i8
  %conv2.i.i.i = or i8 %308, -128
  %309 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %bus, align 4
  %type.i.i.i445.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %310, i32 0, i32 7
  %311 = ptrtoint ptr %type.i.i.i445.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %type.i.i.i445.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %312)
  %cmp.i.i.i446.i = icmp eq i32 %312, 1
  br i1 %cmp.i.i.i446.i, label %if.then.i.i.i451.i, label %if.else.i.i.i459.i

if.then.i.i.i451.i:                               ; preds = %if.end.i.i447.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i.i441.i) #5
  %313 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i.i441.i, i32 0, i32 1
  %314 = ptrtoint ptr %pair.i.i.i441.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 30, ptr %pair.i.i.i441.i, align 4
  %conv.i.i.i448.i = zext i8 %conv2.i.i.i to i32
  %315 = ptrtoint ptr %313 to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %conv.i.i.i448.i, ptr %313, align 4
  %316 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load volatile i32, ptr %state, align 4
  %318 = and i32 %317, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %318)
  %tobool.not.i.i.i450.i = icmp eq i32 %318, 0
  br i1 %tobool.not.i.i.i450.i, label %land.rhs.i.i.i453.i, label %if.then.i.i.i451.i.if.end31.i.i.i457.i_crit_edge

if.then.i.i.i451.i.if.end31.i.i.i457.i_crit_edge: ; preds = %if.then.i.i.i451.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i.i457.i

land.rhs.i.i.i453.i:                              ; preds = %if.then.i.i.i451.i
  %.b50.i.i.i452.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i.i452.i, label %land.rhs.i.i.i453.i.if.end31.i.i.i457.i_crit_edge, label %if.then10.i.i.i454.i, !prof !74

land.rhs.i.i.i453.i.if.end31.i.i.i457.i_crit_edge: ; preds = %land.rhs.i.i.i453.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i.i457.i

if.then10.i.i.i454.i:                             ; preds = %land.rhs.i.i.i453.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i.i457.i

if.end31.i.i.i457.i:                              ; preds = %if.then10.i.i.i454.i, %land.rhs.i.i.i453.i.if.end31.i.i.i457.i_crit_edge, %if.then.i.i.i451.i.if.end31.i.i.i457.i_crit_edge
  %319 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %bus, align 4
  %wr_rp.i.i.i455.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %320, i32 0, i32 5
  %321 = ptrtoint ptr %wr_rp.i.i.i455.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %wr_rp.i.i.i455.i, align 4
  %call40.i.i.i456.i = call i32 %322(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i.i441.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i.i441.i) #5
  br label %if.end42.i

if.else.i.i.i459.i:                               ; preds = %if.end.i.i447.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i.i458.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 30, i8 noundef zeroext %conv2.i.i.i) #5
  br label %if.end42.i

if.else40.i:                                      ; preds = %mt76x0_rf_rmw.exit439.i
  %pllR30_b7.i = getelementptr inbounds %struct.mt76x0_freq_item, ptr %freq_item.0.i, i32 0, i32 11
  %323 = ptrtoint ptr %pllR30_b7.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %pllR30_b7.i, align 1
  %call.i461.i = call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i461.i)
  %cmp.i462.i = icmp slt i32 %call.i461.i, 0
  br i1 %cmp.i462.i, label %if.else40.i.if.end42.i_crit_edge, label %if.end.i468.i

if.else40.i.if.end42.i_crit_edge:                 ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

if.end.i468.i:                                    ; preds = %if.else40.i
  %325 = trunc i32 %call.i461.i to i8
  %326 = and i8 %325, 127
  %conv2.i464.i = or i8 %326, %324
  %327 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %bus, align 4
  %type.i.i466.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %328, i32 0, i32 7
  %329 = ptrtoint ptr %type.i.i466.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %type.i.i466.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %330)
  %cmp.i.i467.i = icmp eq i32 %330, 1
  br i1 %cmp.i.i467.i, label %if.then.i.i472.i, label %if.else.i.i480.i

if.then.i.i472.i:                                 ; preds = %if.end.i468.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i460.i) #5
  %331 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i460.i, i32 0, i32 1
  %332 = ptrtoint ptr %pair.i.i460.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 30, ptr %pair.i.i460.i, align 4
  %conv.i.i469.i = zext i8 %conv2.i464.i to i32
  %333 = ptrtoint ptr %331 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %conv.i.i469.i, ptr %331, align 4
  %334 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load volatile i32, ptr %state, align 4
  %336 = and i32 %335, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %336)
  %tobool.not.i.i471.i = icmp eq i32 %336, 0
  br i1 %tobool.not.i.i471.i, label %land.rhs.i.i474.i, label %if.then.i.i472.i.if.end31.i.i478.i_crit_edge

if.then.i.i472.i.if.end31.i.i478.i_crit_edge:     ; preds = %if.then.i.i472.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i478.i

land.rhs.i.i474.i:                                ; preds = %if.then.i.i472.i
  %.b50.i.i473.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i473.i, label %land.rhs.i.i474.i.if.end31.i.i478.i_crit_edge, label %if.then10.i.i475.i, !prof !74

land.rhs.i.i474.i.if.end31.i.i478.i_crit_edge:    ; preds = %land.rhs.i.i474.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i478.i

if.then10.i.i475.i:                               ; preds = %land.rhs.i.i474.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i478.i

if.end31.i.i478.i:                                ; preds = %if.then10.i.i475.i, %land.rhs.i.i474.i.if.end31.i.i478.i_crit_edge, %if.then.i.i472.i.if.end31.i.i478.i_crit_edge
  %337 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %bus, align 4
  %wr_rp.i.i476.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %338, i32 0, i32 5
  %339 = ptrtoint ptr %wr_rp.i.i476.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %wr_rp.i.i476.i, align 4
  %call40.i.i477.i = call i32 %340(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i460.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i460.i) #5
  br label %if.end42.i

if.else.i.i480.i:                                 ; preds = %if.end.i468.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i479.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 30, i8 noundef zeroext %conv2.i464.i) #5
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else.i.i480.i, %if.end31.i.i478.i, %if.else40.i.if.end42.i_crit_edge, %if.else.i.i.i459.i, %if.end31.i.i.i457.i, %mt76x0_rf_clear.exit.i.if.end42.i_crit_edge
  %pllR30_b6b2.i = getelementptr inbounds %struct.mt76x0_freq_item, ptr %freq_item.0.i, i32 0, i32 12
  %341 = ptrtoint ptr %pllR30_b6b2.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %pllR30_b6b2.i, align 2
  %call.i483.i = call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i483.i)
  %cmp.i484.i = icmp slt i32 %call.i483.i, 0
  br i1 %cmp.i484.i, label %if.end42.i.mt76x0_rf_rmw.exit503.i_crit_edge, label %if.end.i490.i

if.end42.i.mt76x0_rf_rmw.exit503.i_crit_edge:     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_rf_rmw.exit503.i

if.end.i490.i:                                    ; preds = %if.end42.i
  %343 = trunc i32 %call.i483.i to i8
  %344 = and i8 %343, -125
  %conv2.i486.i = or i8 %344, %342
  %345 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %bus, align 4
  %type.i.i488.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %346, i32 0, i32 7
  %347 = ptrtoint ptr %type.i.i488.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %type.i.i488.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %348)
  %cmp.i.i489.i = icmp eq i32 %348, 1
  br i1 %cmp.i.i489.i, label %if.then.i.i494.i, label %if.else.i.i502.i

if.then.i.i494.i:                                 ; preds = %if.end.i490.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i482.i) #5
  %349 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i482.i, i32 0, i32 1
  %350 = ptrtoint ptr %pair.i.i482.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 30, ptr %pair.i.i482.i, align 4
  %conv.i.i491.i = zext i8 %conv2.i486.i to i32
  %351 = ptrtoint ptr %349 to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %conv.i.i491.i, ptr %349, align 4
  %352 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load volatile i32, ptr %state, align 4
  %354 = and i32 %353, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %354)
  %tobool.not.i.i493.i = icmp eq i32 %354, 0
  br i1 %tobool.not.i.i493.i, label %land.rhs.i.i496.i, label %if.then.i.i494.i.if.end31.i.i500.i_crit_edge

if.then.i.i494.i.if.end31.i.i500.i_crit_edge:     ; preds = %if.then.i.i494.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i500.i

land.rhs.i.i496.i:                                ; preds = %if.then.i.i494.i
  %.b50.i.i495.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i495.i, label %land.rhs.i.i496.i.if.end31.i.i500.i_crit_edge, label %if.then10.i.i497.i, !prof !74

land.rhs.i.i496.i.if.end31.i.i500.i_crit_edge:    ; preds = %land.rhs.i.i496.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i500.i

if.then10.i.i497.i:                               ; preds = %land.rhs.i.i496.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i500.i

if.end31.i.i500.i:                                ; preds = %if.then10.i.i497.i, %land.rhs.i.i496.i.if.end31.i.i500.i_crit_edge, %if.then.i.i494.i.if.end31.i.i500.i_crit_edge
  %355 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %bus, align 4
  %wr_rp.i.i498.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %356, i32 0, i32 5
  %357 = ptrtoint ptr %wr_rp.i.i498.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %wr_rp.i.i498.i, align 4
  %call40.i.i499.i = call i32 %358(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i482.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i482.i) #5
  br label %mt76x0_rf_rmw.exit503.i

if.else.i.i502.i:                                 ; preds = %if.end.i490.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i501.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 30, i8 noundef zeroext %conv2.i486.i) #5
  br label %mt76x0_rf_rmw.exit503.i

mt76x0_rf_rmw.exit503.i:                          ; preds = %if.else.i.i502.i, %if.end31.i.i500.i, %if.end42.i.mt76x0_rf_rmw.exit503.i_crit_edge
  %pllR30_b1.i = getelementptr inbounds %struct.mt76x0_freq_item, ptr %freq_item.0.i, i32 0, i32 13
  %359 = ptrtoint ptr %pllR30_b1.i to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %pllR30_b1.i, align 1
  %call.i505.i = call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i505.i)
  %cmp.i506.i = icmp slt i32 %call.i505.i, 0
  br i1 %cmp.i506.i, label %mt76x0_rf_rmw.exit503.i.mt76x0_rf_rmw.exit525.i_crit_edge, label %if.end.i512.i

mt76x0_rf_rmw.exit503.i.mt76x0_rf_rmw.exit525.i_crit_edge: ; preds = %mt76x0_rf_rmw.exit503.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_rf_rmw.exit525.i

if.end.i512.i:                                    ; preds = %mt76x0_rf_rmw.exit503.i
  %shl.i = shl i8 %360, 1
  %361 = trunc i32 %call.i505.i to i8
  %362 = and i8 %361, -3
  %conv2.i508.i = or i8 %362, %shl.i
  %363 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %bus, align 4
  %type.i.i510.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %364, i32 0, i32 7
  %365 = ptrtoint ptr %type.i.i510.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %type.i.i510.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %366)
  %cmp.i.i511.i = icmp eq i32 %366, 1
  br i1 %cmp.i.i511.i, label %if.then.i.i516.i, label %if.else.i.i524.i

if.then.i.i516.i:                                 ; preds = %if.end.i512.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i504.i) #5
  %367 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i504.i, i32 0, i32 1
  %368 = ptrtoint ptr %pair.i.i504.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 30, ptr %pair.i.i504.i, align 4
  %conv.i.i513.i = zext i8 %conv2.i508.i to i32
  %369 = ptrtoint ptr %367 to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %conv.i.i513.i, ptr %367, align 4
  %370 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load volatile i32, ptr %state, align 4
  %372 = and i32 %371, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %372)
  %tobool.not.i.i515.i = icmp eq i32 %372, 0
  br i1 %tobool.not.i.i515.i, label %land.rhs.i.i518.i, label %if.then.i.i516.i.if.end31.i.i522.i_crit_edge

if.then.i.i516.i.if.end31.i.i522.i_crit_edge:     ; preds = %if.then.i.i516.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i522.i

land.rhs.i.i518.i:                                ; preds = %if.then.i.i516.i
  %.b50.i.i517.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i517.i, label %land.rhs.i.i518.i.if.end31.i.i522.i_crit_edge, label %if.then10.i.i519.i, !prof !74

land.rhs.i.i518.i.if.end31.i.i522.i_crit_edge:    ; preds = %land.rhs.i.i518.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i522.i

if.then10.i.i519.i:                               ; preds = %land.rhs.i.i518.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i522.i

if.end31.i.i522.i:                                ; preds = %if.then10.i.i519.i, %land.rhs.i.i518.i.if.end31.i.i522.i_crit_edge, %if.then.i.i516.i.if.end31.i.i522.i_crit_edge
  %373 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %bus, align 4
  %wr_rp.i.i520.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %374, i32 0, i32 5
  %375 = ptrtoint ptr %wr_rp.i.i520.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %wr_rp.i.i520.i, align 4
  %call40.i.i521.i = call i32 %376(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i504.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i504.i) #5
  br label %mt76x0_rf_rmw.exit525.i

if.else.i.i524.i:                                 ; preds = %if.end.i512.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i523.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 30, i8 noundef zeroext %conv2.i508.i) #5
  br label %mt76x0_rf_rmw.exit525.i

mt76x0_rf_rmw.exit525.i:                          ; preds = %if.else.i.i524.i, %if.end31.i.i522.i, %mt76x0_rf_rmw.exit503.i.mt76x0_rf_rmw.exit525.i_crit_edge
  %pll_n.i = getelementptr inbounds %struct.mt76x0_freq_item, ptr %freq_item.0.i, i32 0, i32 14
  %377 = ptrtoint ptr %pll_n.i to i32
  call void @__asan_load2_noabort(i32 %377)
  %378 = load i16, ptr %pll_n.i, align 4
  %379 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %bus, align 4
  %type.i528.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %380, i32 0, i32 7
  %381 = ptrtoint ptr %type.i528.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %type.i528.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %382)
  %cmp.i529.i = icmp eq i32 %382, 1
  br i1 %cmp.i529.i, label %if.then.i533.i, label %if.else.i541.i

if.then.i533.i:                                   ; preds = %mt76x0_rf_rmw.exit525.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i526.i) #5
  %383 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i526.i, i32 0, i32 1
  %384 = ptrtoint ptr %pair.i526.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 29, ptr %pair.i526.i, align 4
  %conv49.mask.i = and i16 %378, 255
  %conv.i530.i = zext i16 %conv49.mask.i to i32
  %385 = ptrtoint ptr %383 to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 %conv.i530.i, ptr %383, align 4
  %386 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load volatile i32, ptr %state, align 4
  %388 = and i32 %387, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %388)
  %tobool.not.i532.i = icmp eq i32 %388, 0
  br i1 %tobool.not.i532.i, label %land.rhs.i535.i, label %if.then.i533.i.if.end31.i539.i_crit_edge

if.then.i533.i.if.end31.i539.i_crit_edge:         ; preds = %if.then.i533.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i539.i

land.rhs.i535.i:                                  ; preds = %if.then.i533.i
  %.b50.i534.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i534.i, label %land.rhs.i535.i.if.end31.i539.i_crit_edge, label %if.then10.i536.i, !prof !74

land.rhs.i535.i.if.end31.i539.i_crit_edge:        ; preds = %land.rhs.i535.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i539.i

if.then10.i536.i:                                 ; preds = %land.rhs.i535.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i539.i

if.end31.i539.i:                                  ; preds = %if.then10.i536.i, %land.rhs.i535.i.if.end31.i539.i_crit_edge, %if.then.i533.i.if.end31.i539.i_crit_edge
  %389 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %bus, align 4
  %wr_rp.i537.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %390, i32 0, i32 5
  %391 = ptrtoint ptr %wr_rp.i537.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %wr_rp.i537.i, align 4
  %call40.i538.i = call i32 %392(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i526.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i526.i) #5
  br label %mt76x0_rf_wr.exit543.i

if.else.i541.i:                                   ; preds = %mt76x0_rf_rmw.exit525.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv49.i = trunc i16 %378 to i8
  %call41.i540.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 29, i8 noundef zeroext %conv49.i) #5
  br label %mt76x0_rf_wr.exit543.i

mt76x0_rf_wr.exit543.i:                           ; preds = %if.else.i541.i, %if.end31.i539.i
  %call.i545.i = call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i545.i)
  %cmp.i546.i = icmp slt i32 %call.i545.i, 0
  br i1 %cmp.i546.i, label %mt76x0_rf_wr.exit543.i.mt76x0_rf_rmw.exit565.i_crit_edge, label %if.end.i552.i

mt76x0_rf_wr.exit543.i.mt76x0_rf_rmw.exit565.i_crit_edge: ; preds = %mt76x0_rf_wr.exit543.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_rf_rmw.exit565.i

if.end.i552.i:                                    ; preds = %mt76x0_rf_wr.exit543.i
  %393 = lshr i16 %378, 8
  %394 = trunc i16 %393 to i8
  %conv54.i = and i8 %394, 1
  %395 = trunc i32 %call.i545.i to i8
  %396 = and i8 %395, -2
  %conv2.i548.i = or i8 %396, %conv54.i
  %397 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %bus, align 4
  %type.i.i550.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %398, i32 0, i32 7
  %399 = ptrtoint ptr %type.i.i550.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %type.i.i550.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %400)
  %cmp.i.i551.i = icmp eq i32 %400, 1
  br i1 %cmp.i.i551.i, label %if.then.i.i556.i, label %if.else.i.i564.i

if.then.i.i556.i:                                 ; preds = %if.end.i552.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i544.i) #5
  %401 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i544.i, i32 0, i32 1
  %402 = ptrtoint ptr %pair.i.i544.i to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 30, ptr %pair.i.i544.i, align 4
  %conv.i.i553.i = zext i8 %conv2.i548.i to i32
  %403 = ptrtoint ptr %401 to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 %conv.i.i553.i, ptr %401, align 4
  %404 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load volatile i32, ptr %state, align 4
  %406 = and i32 %405, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %406)
  %tobool.not.i.i555.i = icmp eq i32 %406, 0
  br i1 %tobool.not.i.i555.i, label %land.rhs.i.i558.i, label %if.then.i.i556.i.if.end31.i.i562.i_crit_edge

if.then.i.i556.i.if.end31.i.i562.i_crit_edge:     ; preds = %if.then.i.i556.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i562.i

land.rhs.i.i558.i:                                ; preds = %if.then.i.i556.i
  %.b50.i.i557.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i557.i, label %land.rhs.i.i558.i.if.end31.i.i562.i_crit_edge, label %if.then10.i.i559.i, !prof !74

land.rhs.i.i558.i.if.end31.i.i562.i_crit_edge:    ; preds = %land.rhs.i.i558.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i562.i

if.then10.i.i559.i:                               ; preds = %land.rhs.i.i558.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i562.i

if.end31.i.i562.i:                                ; preds = %if.then10.i.i559.i, %land.rhs.i.i558.i.if.end31.i.i562.i_crit_edge, %if.then.i.i556.i.if.end31.i.i562.i_crit_edge
  %407 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %bus, align 4
  %wr_rp.i.i560.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %408, i32 0, i32 5
  %409 = ptrtoint ptr %wr_rp.i.i560.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %wr_rp.i.i560.i, align 4
  %call40.i.i561.i = call i32 %410(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i544.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i544.i) #5
  br label %mt76x0_rf_rmw.exit565.i

if.else.i.i564.i:                                 ; preds = %if.end.i552.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i563.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 30, i8 noundef zeroext %conv2.i548.i) #5
  br label %mt76x0_rf_rmw.exit565.i

mt76x0_rf_rmw.exit565.i:                          ; preds = %if.else.i.i564.i, %if.end31.i.i562.i, %mt76x0_rf_wr.exit543.i.mt76x0_rf_rmw.exit565.i_crit_edge
  %pllR28_b7b6.i = getelementptr inbounds %struct.mt76x0_freq_item, ptr %freq_item.0.i, i32 0, i32 15
  %411 = ptrtoint ptr %pllR28_b7b6.i to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %pllR28_b7b6.i, align 2
  %call.i567.i = call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i567.i)
  %cmp.i568.i = icmp slt i32 %call.i567.i, 0
  br i1 %cmp.i568.i, label %mt76x0_rf_rmw.exit565.i.mt76x0_rf_rmw.exit587.i_crit_edge, label %if.end.i574.i

mt76x0_rf_rmw.exit565.i.mt76x0_rf_rmw.exit587.i_crit_edge: ; preds = %mt76x0_rf_rmw.exit565.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_rf_rmw.exit587.i

if.end.i574.i:                                    ; preds = %mt76x0_rf_rmw.exit565.i
  %413 = trunc i32 %call.i567.i to i8
  %414 = and i8 %413, 63
  %conv2.i570.i = or i8 %414, %412
  %415 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %bus, align 4
  %type.i.i572.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %416, i32 0, i32 7
  %417 = ptrtoint ptr %type.i.i572.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %type.i.i572.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %418)
  %cmp.i.i573.i = icmp eq i32 %418, 1
  br i1 %cmp.i.i573.i, label %if.then.i.i578.i, label %if.else.i.i586.i

if.then.i.i578.i:                                 ; preds = %if.end.i574.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i566.i) #5
  %419 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i566.i, i32 0, i32 1
  %420 = ptrtoint ptr %pair.i.i566.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 28, ptr %pair.i.i566.i, align 4
  %conv.i.i575.i = zext i8 %conv2.i570.i to i32
  %421 = ptrtoint ptr %419 to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 %conv.i.i575.i, ptr %419, align 4
  %422 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load volatile i32, ptr %state, align 4
  %424 = and i32 %423, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %424)
  %tobool.not.i.i577.i = icmp eq i32 %424, 0
  br i1 %tobool.not.i.i577.i, label %land.rhs.i.i580.i, label %if.then.i.i578.i.if.end31.i.i584.i_crit_edge

if.then.i.i578.i.if.end31.i.i584.i_crit_edge:     ; preds = %if.then.i.i578.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i584.i

land.rhs.i.i580.i:                                ; preds = %if.then.i.i578.i
  %.b50.i.i579.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i579.i, label %land.rhs.i.i580.i.if.end31.i.i584.i_crit_edge, label %if.then10.i.i581.i, !prof !74

land.rhs.i.i580.i.if.end31.i.i584.i_crit_edge:    ; preds = %land.rhs.i.i580.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i584.i

if.then10.i.i581.i:                               ; preds = %land.rhs.i.i580.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i584.i

if.end31.i.i584.i:                                ; preds = %if.then10.i.i581.i, %land.rhs.i.i580.i.if.end31.i.i584.i_crit_edge, %if.then.i.i578.i.if.end31.i.i584.i_crit_edge
  %425 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %bus, align 4
  %wr_rp.i.i582.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %426, i32 0, i32 5
  %427 = ptrtoint ptr %wr_rp.i.i582.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %wr_rp.i.i582.i, align 4
  %call40.i.i583.i = call i32 %428(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i566.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i566.i) #5
  br label %mt76x0_rf_rmw.exit587.i

if.else.i.i586.i:                                 ; preds = %if.end.i574.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i585.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 28, i8 noundef zeroext %conv2.i570.i) #5
  br label %mt76x0_rf_rmw.exit587.i

mt76x0_rf_rmw.exit587.i:                          ; preds = %if.else.i.i586.i, %if.end31.i.i584.i, %mt76x0_rf_rmw.exit565.i.mt76x0_rf_rmw.exit587.i_crit_edge
  %pllR28_b5b4.i = getelementptr inbounds %struct.mt76x0_freq_item, ptr %freq_item.0.i, i32 0, i32 16
  %429 = ptrtoint ptr %pllR28_b5b4.i to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %pllR28_b5b4.i, align 1
  %call.i589.i = call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i589.i)
  %cmp.i590.i = icmp slt i32 %call.i589.i, 0
  br i1 %cmp.i590.i, label %mt76x0_rf_rmw.exit587.i.mt76x0_rf_rmw.exit609.i_crit_edge, label %if.end.i596.i

mt76x0_rf_rmw.exit587.i.mt76x0_rf_rmw.exit609.i_crit_edge: ; preds = %mt76x0_rf_rmw.exit587.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_rf_rmw.exit609.i

if.end.i596.i:                                    ; preds = %mt76x0_rf_rmw.exit587.i
  %431 = trunc i32 %call.i589.i to i8
  %432 = and i8 %431, -49
  %conv2.i592.i = or i8 %432, %430
  %433 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %bus, align 4
  %type.i.i594.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %434, i32 0, i32 7
  %435 = ptrtoint ptr %type.i.i594.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %type.i.i594.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %436)
  %cmp.i.i595.i = icmp eq i32 %436, 1
  br i1 %cmp.i.i595.i, label %if.then.i.i600.i, label %if.else.i.i608.i

if.then.i.i600.i:                                 ; preds = %if.end.i596.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i588.i) #5
  %437 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i588.i, i32 0, i32 1
  %438 = ptrtoint ptr %pair.i.i588.i to i32
  call void @__asan_store4_noabort(i32 %438)
  store i32 28, ptr %pair.i.i588.i, align 4
  %conv.i.i597.i = zext i8 %conv2.i592.i to i32
  %439 = ptrtoint ptr %437 to i32
  call void @__asan_store4_noabort(i32 %439)
  store i32 %conv.i.i597.i, ptr %437, align 4
  %440 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load volatile i32, ptr %state, align 4
  %442 = and i32 %441, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %442)
  %tobool.not.i.i599.i = icmp eq i32 %442, 0
  br i1 %tobool.not.i.i599.i, label %land.rhs.i.i602.i, label %if.then.i.i600.i.if.end31.i.i606.i_crit_edge

if.then.i.i600.i.if.end31.i.i606.i_crit_edge:     ; preds = %if.then.i.i600.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i606.i

land.rhs.i.i602.i:                                ; preds = %if.then.i.i600.i
  %.b50.i.i601.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i601.i, label %land.rhs.i.i602.i.if.end31.i.i606.i_crit_edge, label %if.then10.i.i603.i, !prof !74

land.rhs.i.i602.i.if.end31.i.i606.i_crit_edge:    ; preds = %land.rhs.i.i602.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i606.i

if.then10.i.i603.i:                               ; preds = %land.rhs.i.i602.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i606.i

if.end31.i.i606.i:                                ; preds = %if.then10.i.i603.i, %land.rhs.i.i602.i.if.end31.i.i606.i_crit_edge, %if.then.i.i600.i.if.end31.i.i606.i_crit_edge
  %443 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %bus, align 4
  %wr_rp.i.i604.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %444, i32 0, i32 5
  %445 = ptrtoint ptr %wr_rp.i.i604.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %wr_rp.i.i604.i, align 4
  %call40.i.i605.i = call i32 %446(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i588.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i588.i) #5
  br label %mt76x0_rf_rmw.exit609.i

if.else.i.i608.i:                                 ; preds = %if.end.i596.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i607.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 28, i8 noundef zeroext %conv2.i592.i) #5
  br label %mt76x0_rf_rmw.exit609.i

mt76x0_rf_rmw.exit609.i:                          ; preds = %if.else.i.i608.i, %if.end31.i.i606.i, %mt76x0_rf_rmw.exit587.i.mt76x0_rf_rmw.exit609.i_crit_edge
  %pllR28_b3b2.i = getelementptr inbounds %struct.mt76x0_freq_item, ptr %freq_item.0.i, i32 0, i32 17
  %447 = ptrtoint ptr %pllR28_b3b2.i to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %pllR28_b3b2.i, align 4
  %call.i611.i = call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i611.i)
  %cmp.i612.i = icmp slt i32 %call.i611.i, 0
  br i1 %cmp.i612.i, label %mt76x0_rf_rmw.exit609.i.mt76x0_rf_rmw.exit631.i_crit_edge, label %if.end.i618.i

mt76x0_rf_rmw.exit609.i.mt76x0_rf_rmw.exit631.i_crit_edge: ; preds = %mt76x0_rf_rmw.exit609.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_rf_rmw.exit631.i

if.end.i618.i:                                    ; preds = %mt76x0_rf_rmw.exit609.i
  %449 = trunc i32 %call.i611.i to i8
  %450 = and i8 %449, -13
  %conv2.i614.i = or i8 %450, %448
  %451 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %bus, align 4
  %type.i.i616.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %452, i32 0, i32 7
  %453 = ptrtoint ptr %type.i.i616.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %type.i.i616.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %454)
  %cmp.i.i617.i = icmp eq i32 %454, 1
  br i1 %cmp.i.i617.i, label %if.then.i.i622.i, label %if.else.i.i630.i

if.then.i.i622.i:                                 ; preds = %if.end.i618.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i610.i) #5
  %455 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i610.i, i32 0, i32 1
  %456 = ptrtoint ptr %pair.i.i610.i to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 28, ptr %pair.i.i610.i, align 4
  %conv.i.i619.i = zext i8 %conv2.i614.i to i32
  %457 = ptrtoint ptr %455 to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 %conv.i.i619.i, ptr %455, align 4
  %458 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load volatile i32, ptr %state, align 4
  %460 = and i32 %459, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %460)
  %tobool.not.i.i621.i = icmp eq i32 %460, 0
  br i1 %tobool.not.i.i621.i, label %land.rhs.i.i624.i, label %if.then.i.i622.i.if.end31.i.i628.i_crit_edge

if.then.i.i622.i.if.end31.i.i628.i_crit_edge:     ; preds = %if.then.i.i622.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i628.i

land.rhs.i.i624.i:                                ; preds = %if.then.i.i622.i
  %.b50.i.i623.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i623.i, label %land.rhs.i.i624.i.if.end31.i.i628.i_crit_edge, label %if.then10.i.i625.i, !prof !74

land.rhs.i.i624.i.if.end31.i.i628.i_crit_edge:    ; preds = %land.rhs.i.i624.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i628.i

if.then10.i.i625.i:                               ; preds = %land.rhs.i.i624.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i628.i

if.end31.i.i628.i:                                ; preds = %if.then10.i.i625.i, %land.rhs.i.i624.i.if.end31.i.i628.i_crit_edge, %if.then.i.i622.i.if.end31.i.i628.i_crit_edge
  %461 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %bus, align 4
  %wr_rp.i.i626.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %462, i32 0, i32 5
  %463 = ptrtoint ptr %wr_rp.i.i626.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %wr_rp.i.i626.i, align 4
  %call40.i.i627.i = call i32 %464(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i610.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i610.i) #5
  br label %mt76x0_rf_rmw.exit631.i

if.else.i.i630.i:                                 ; preds = %if.end.i618.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i629.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 28, i8 noundef zeroext %conv2.i614.i) #5
  br label %mt76x0_rf_rmw.exit631.i

mt76x0_rf_rmw.exit631.i:                          ; preds = %if.else.i.i630.i, %if.end31.i.i628.i, %mt76x0_rf_rmw.exit609.i.mt76x0_rf_rmw.exit631.i_crit_edge
  %pll_sdm_k.i = getelementptr inbounds %struct.mt76x0_freq_item, ptr %freq_item.0.i, i32 0, i32 18
  %465 = ptrtoint ptr %pll_sdm_k.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %pll_sdm_k.i, align 4
  %467 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %bus, align 4
  %type.i634.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %468, i32 0, i32 7
  %469 = ptrtoint ptr %type.i634.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %type.i634.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %470)
  %cmp.i635.i = icmp eq i32 %470, 1
  br i1 %cmp.i635.i, label %if.then.i639.i, label %if.else.i647.i

if.then.i639.i:                                   ; preds = %mt76x0_rf_rmw.exit631.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i632.i) #5
  %471 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i632.i, i32 0, i32 1
  %472 = ptrtoint ptr %pair.i632.i to i32
  call void @__asan_store4_noabort(i32 %472)
  store i32 26, ptr %pair.i632.i, align 4
  %conv.i636.i = and i32 %466, 255
  %473 = ptrtoint ptr %471 to i32
  call void @__asan_store4_noabort(i32 %473)
  store i32 %conv.i636.i, ptr %471, align 4
  %474 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load volatile i32, ptr %state, align 4
  %476 = and i32 %475, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %476)
  %tobool.not.i638.i = icmp eq i32 %476, 0
  br i1 %tobool.not.i638.i, label %land.rhs.i641.i, label %if.then.i639.i.if.end31.i645.i_crit_edge

if.then.i639.i.if.end31.i645.i_crit_edge:         ; preds = %if.then.i639.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i645.i

land.rhs.i641.i:                                  ; preds = %if.then.i639.i
  %.b50.i640.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i640.i, label %land.rhs.i641.i.if.end31.i645.i_crit_edge, label %if.then10.i642.i, !prof !74

land.rhs.i641.i.if.end31.i645.i_crit_edge:        ; preds = %land.rhs.i641.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i645.i

if.then10.i642.i:                                 ; preds = %land.rhs.i641.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i645.i

if.end31.i645.i:                                  ; preds = %if.then10.i642.i, %land.rhs.i641.i.if.end31.i645.i_crit_edge, %if.then.i639.i.if.end31.i645.i_crit_edge
  %477 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %bus, align 4
  %wr_rp.i643.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %478, i32 0, i32 5
  %479 = ptrtoint ptr %wr_rp.i643.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %wr_rp.i643.i, align 4
  %call40.i644.i = call i32 %480(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i632.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i632.i) #5
  br label %mt76x0_rf_wr.exit649.i

if.else.i647.i:                                   ; preds = %mt76x0_rf_rmw.exit631.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv60.i = trunc i32 %466 to i8
  %call41.i646.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 26, i8 noundef zeroext %conv60.i) #5
  br label %mt76x0_rf_wr.exit649.i

mt76x0_rf_wr.exit649.i:                           ; preds = %if.else.i647.i, %if.end31.i645.i
  %shr63.i = lshr i32 %466, 8
  %481 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %bus, align 4
  %type.i652.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %482, i32 0, i32 7
  %483 = ptrtoint ptr %type.i652.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %type.i652.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %484)
  %cmp.i653.i = icmp eq i32 %484, 1
  br i1 %cmp.i653.i, label %if.then.i657.i, label %if.else.i665.i

if.then.i657.i:                                   ; preds = %mt76x0_rf_wr.exit649.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i650.i) #5
  %485 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i650.i, i32 0, i32 1
  %486 = ptrtoint ptr %pair.i650.i to i32
  call void @__asan_store4_noabort(i32 %486)
  store i32 27, ptr %pair.i650.i, align 4
  %conv.i654.i = and i32 %shr63.i, 255
  %487 = ptrtoint ptr %485 to i32
  call void @__asan_store4_noabort(i32 %487)
  store i32 %conv.i654.i, ptr %485, align 4
  %488 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load volatile i32, ptr %state, align 4
  %490 = and i32 %489, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %490)
  %tobool.not.i656.i = icmp eq i32 %490, 0
  br i1 %tobool.not.i656.i, label %land.rhs.i659.i, label %if.then.i657.i.if.end31.i663.i_crit_edge

if.then.i657.i.if.end31.i663.i_crit_edge:         ; preds = %if.then.i657.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i663.i

land.rhs.i659.i:                                  ; preds = %if.then.i657.i
  %.b50.i658.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i658.i, label %land.rhs.i659.i.if.end31.i663.i_crit_edge, label %if.then10.i660.i, !prof !74

land.rhs.i659.i.if.end31.i663.i_crit_edge:        ; preds = %land.rhs.i659.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i663.i

if.then10.i660.i:                                 ; preds = %land.rhs.i659.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i663.i

if.end31.i663.i:                                  ; preds = %if.then10.i660.i, %land.rhs.i659.i.if.end31.i663.i_crit_edge, %if.then.i657.i.if.end31.i663.i_crit_edge
  %491 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %bus, align 4
  %wr_rp.i661.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %492, i32 0, i32 5
  %493 = ptrtoint ptr %wr_rp.i661.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %wr_rp.i661.i, align 4
  %call40.i662.i = call i32 %494(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i650.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i650.i) #5
  br label %mt76x0_rf_wr.exit667.i

if.else.i665.i:                                   ; preds = %mt76x0_rf_wr.exit649.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv65.i = trunc i32 %shr63.i to i8
  %call41.i664.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 27, i8 noundef zeroext %conv65.i) #5
  br label %mt76x0_rf_wr.exit667.i

mt76x0_rf_wr.exit667.i:                           ; preds = %if.else.i665.i, %if.end31.i663.i
  %call.i669.i = call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i669.i)
  %cmp.i670.i = icmp slt i32 %call.i669.i, 0
  br i1 %cmp.i670.i, label %mt76x0_rf_wr.exit667.i.mt76x0_rf_rmw.exit689.i_crit_edge, label %if.end.i676.i

mt76x0_rf_wr.exit667.i.mt76x0_rf_rmw.exit689.i_crit_edge: ; preds = %mt76x0_rf_wr.exit667.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_rf_rmw.exit689.i

if.end.i676.i:                                    ; preds = %mt76x0_rf_wr.exit667.i
  %shr68.i = lshr i32 %466, 16
  %495 = trunc i32 %shr68.i to i8
  %conv70.i = and i8 %495, 3
  %496 = trunc i32 %call.i669.i to i8
  %497 = and i8 %496, -4
  %conv2.i672.i = or i8 %497, %conv70.i
  %498 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %bus, align 4
  %type.i.i674.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %499, i32 0, i32 7
  %500 = ptrtoint ptr %type.i.i674.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %type.i.i674.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %501)
  %cmp.i.i675.i = icmp eq i32 %501, 1
  br i1 %cmp.i.i675.i, label %if.then.i.i680.i, label %if.else.i.i688.i

if.then.i.i680.i:                                 ; preds = %if.end.i676.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i668.i) #5
  %502 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i668.i, i32 0, i32 1
  %503 = ptrtoint ptr %pair.i.i668.i to i32
  call void @__asan_store4_noabort(i32 %503)
  store i32 28, ptr %pair.i.i668.i, align 4
  %conv.i.i677.i = zext i8 %conv2.i672.i to i32
  %504 = ptrtoint ptr %502 to i32
  call void @__asan_store4_noabort(i32 %504)
  store i32 %conv.i.i677.i, ptr %502, align 4
  %505 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load volatile i32, ptr %state, align 4
  %507 = and i32 %506, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %507)
  %tobool.not.i.i679.i = icmp eq i32 %507, 0
  br i1 %tobool.not.i.i679.i, label %land.rhs.i.i682.i, label %if.then.i.i680.i.if.end31.i.i686.i_crit_edge

if.then.i.i680.i.if.end31.i.i686.i_crit_edge:     ; preds = %if.then.i.i680.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i686.i

land.rhs.i.i682.i:                                ; preds = %if.then.i.i680.i
  %.b50.i.i681.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i681.i, label %land.rhs.i.i682.i.if.end31.i.i686.i_crit_edge, label %if.then10.i.i683.i, !prof !74

land.rhs.i.i682.i.if.end31.i.i686.i_crit_edge:    ; preds = %land.rhs.i.i682.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i686.i

if.then10.i.i683.i:                               ; preds = %land.rhs.i.i682.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i686.i

if.end31.i.i686.i:                                ; preds = %if.then10.i.i683.i, %land.rhs.i.i682.i.if.end31.i.i686.i_crit_edge, %if.then.i.i680.i.if.end31.i.i686.i_crit_edge
  %508 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %bus, align 4
  %wr_rp.i.i684.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %509, i32 0, i32 5
  %510 = ptrtoint ptr %wr_rp.i.i684.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %wr_rp.i.i684.i, align 4
  %call40.i.i685.i = call i32 %511(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i668.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i668.i) #5
  br label %mt76x0_rf_rmw.exit689.i

if.else.i.i688.i:                                 ; preds = %if.end.i676.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i687.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 28, i8 noundef zeroext %conv2.i672.i) #5
  br label %mt76x0_rf_rmw.exit689.i

mt76x0_rf_rmw.exit689.i:                          ; preds = %if.else.i.i688.i, %if.end31.i.i686.i, %mt76x0_rf_wr.exit667.i.mt76x0_rf_rmw.exit689.i_crit_edge
  %pllR24_b1b0.i = getelementptr inbounds %struct.mt76x0_freq_item, ptr %freq_item.0.i, i32 0, i32 19
  %512 = ptrtoint ptr %pllR24_b1b0.i to i32
  call void @__asan_load1_noabort(i32 %512)
  %513 = load i8, ptr %pllR24_b1b0.i, align 4
  %call.i691.i = call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i691.i)
  %cmp.i692.i = icmp slt i32 %call.i691.i, 0
  br i1 %cmp.i692.i, label %mt76x0_rf_rmw.exit689.i.for.end76.i_crit_edge, label %if.end.i698.i

mt76x0_rf_rmw.exit689.i.for.end76.i_crit_edge:    ; preds = %mt76x0_rf_rmw.exit689.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end76.i

if.end.i698.i:                                    ; preds = %mt76x0_rf_rmw.exit689.i
  %514 = trunc i32 %call.i691.i to i8
  %515 = and i8 %514, -4
  %conv2.i694.i = or i8 %515, %513
  %516 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %bus, align 4
  %type.i.i696.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %517, i32 0, i32 7
  %518 = ptrtoint ptr %type.i.i696.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %type.i.i696.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %519)
  %cmp.i.i697.i = icmp eq i32 %519, 1
  br i1 %cmp.i.i697.i, label %if.then.i.i702.i, label %if.else.i.i710.i

if.then.i.i702.i:                                 ; preds = %if.end.i698.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i690.i) #5
  %520 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i690.i, i32 0, i32 1
  %521 = ptrtoint ptr %pair.i.i690.i to i32
  call void @__asan_store4_noabort(i32 %521)
  store i32 24, ptr %pair.i.i690.i, align 4
  %conv.i.i699.i = zext i8 %conv2.i694.i to i32
  %522 = ptrtoint ptr %520 to i32
  call void @__asan_store4_noabort(i32 %522)
  store i32 %conv.i.i699.i, ptr %520, align 4
  %523 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load volatile i32, ptr %state, align 4
  %525 = and i32 %524, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %525)
  %tobool.not.i.i701.i = icmp eq i32 %525, 0
  br i1 %tobool.not.i.i701.i, label %land.rhs.i.i704.i, label %if.then.i.i702.i.if.end31.i.i708.i_crit_edge

if.then.i.i702.i.if.end31.i.i708.i_crit_edge:     ; preds = %if.then.i.i702.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i708.i

land.rhs.i.i704.i:                                ; preds = %if.then.i.i702.i
  %.b50.i.i703.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i703.i, label %land.rhs.i.i704.i.if.end31.i.i708.i_crit_edge, label %if.then10.i.i705.i, !prof !74

land.rhs.i.i704.i.if.end31.i.i708.i_crit_edge:    ; preds = %land.rhs.i.i704.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i708.i

if.then10.i.i705.i:                               ; preds = %land.rhs.i.i704.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i708.i

if.end31.i.i708.i:                                ; preds = %if.then10.i.i705.i, %land.rhs.i.i704.i.if.end31.i.i708.i_crit_edge, %if.then.i.i702.i.if.end31.i.i708.i_crit_edge
  %526 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %bus, align 4
  %wr_rp.i.i706.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %527, i32 0, i32 5
  %528 = ptrtoint ptr %wr_rp.i.i706.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %wr_rp.i.i706.i, align 4
  %call40.i.i707.i = call i32 %529(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i690.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i690.i) #5
  br label %for.end76.i

if.else.i.i710.i:                                 ; preds = %if.end.i698.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i709.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 24, i8 noundef zeroext %conv2.i694.i) #5
  br label %for.end76.i

for.inc74.i:                                      ; preds = %for.body13.i
  %inc75.i = add nuw nsw i32 %i.1787.i, 1
  %exitcond796.not.i = icmp eq i32 %inc75.i, 125
  br i1 %exitcond796.not.i, label %for.inc74.i.for.end76.i_crit_edge, label %for.inc74.i.for.body13.i_crit_edge

for.inc74.i.for.body13.i_crit_edge:               ; preds = %for.inc74.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body13.i

for.inc74.i.for.end76.i_crit_edge:                ; preds = %for.inc74.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end76.i

for.end76.i:                                      ; preds = %for.inc74.i.for.end76.i_crit_edge, %if.else.i.i710.i, %if.end31.i.i708.i, %mt76x0_rf_rmw.exit689.i.for.end76.i_crit_edge
  %rf_band.0.i = phi i16 [ %conv23.i, %mt76x0_rf_rmw.exit689.i.for.end76.i_crit_edge ], [ %conv23.i, %if.end31.i.i708.i ], [ %conv23.i, %if.else.i.i710.i ], [ %conv337, %for.inc74.i.for.end76.i_crit_edge ]
  %530 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i730.i, i32 0, i32 1
  %531 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i712.i, i32 0, i32 1
  br label %for.body80.i

for.cond115.preheader.i:                          ; preds = %for.inc112.i
  %532 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i748.i, i32 0, i32 1
  br label %for.body118.i

for.body80.i:                                     ; preds = %for.inc112.i.for.body80.i_crit_edge, %for.end76.i
  %i.2788.i = phi i32 [ 0, %for.end76.i ], [ %inc113.i, %for.inc112.i.for.body80.i_crit_edge ]
  %arrayidx82.i = getelementptr [41 x %struct.mt76x0_rf_switch_item], ptr @mt76x0_rf_bw_switch_tab, i32 0, i32 %i.2788.i
  %bw_band.i = getelementptr [41 x %struct.mt76x0_rf_switch_item], ptr @mt76x0_rf_bw_switch_tab, i32 0, i32 %i.2788.i, i32 1
  %533 = ptrtoint ptr %bw_band.i to i32
  call void @__asan_load2_noabort(i32 %533)
  %534 = load i16, ptr %bw_band.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %.sink, i16 %534)
  %cmp84.i = icmp eq i16 %.sink, %534
  br i1 %cmp84.i, label %if.then86.i, label %if.else90.i

if.then86.i:                                      ; preds = %for.body80.i
  %535 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %arrayidx82.i, align 4
  %value.i = getelementptr [41 x %struct.mt76x0_rf_switch_item], ptr @mt76x0_rf_bw_switch_tab, i32 0, i32 %i.2788.i, i32 2
  %537 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %537)
  %538 = load i8, ptr %value.i, align 2
  %539 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %bus, align 4
  %type.i714.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %540, i32 0, i32 7
  %541 = ptrtoint ptr %type.i714.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %type.i714.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %542)
  %cmp.i715.i = icmp eq i32 %542, 1
  br i1 %cmp.i715.i, label %if.then.i719.i, label %if.else.i727.i

if.then.i719.i:                                   ; preds = %if.then86.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i712.i) #5
  %543 = ptrtoint ptr %pair.i712.i to i32
  call void @__asan_store4_noabort(i32 %543)
  store i32 %536, ptr %pair.i712.i, align 4
  %conv.i716.i = zext i8 %538 to i32
  %544 = ptrtoint ptr %531 to i32
  call void @__asan_store4_noabort(i32 %544)
  store i32 %conv.i716.i, ptr %531, align 4
  %545 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load volatile i32, ptr %state, align 4
  %547 = and i32 %546, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %547)
  %tobool.not.i718.i = icmp eq i32 %547, 0
  br i1 %tobool.not.i718.i, label %land.rhs.i721.i, label %if.then.i719.i.if.end31.i725.i_crit_edge

if.then.i719.i.if.end31.i725.i_crit_edge:         ; preds = %if.then.i719.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i725.i

land.rhs.i721.i:                                  ; preds = %if.then.i719.i
  %.b50.i720.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i720.i, label %land.rhs.i721.i.if.end31.i725.i_crit_edge, label %if.then10.i722.i, !prof !74

land.rhs.i721.i.if.end31.i725.i_crit_edge:        ; preds = %land.rhs.i721.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i725.i

if.then10.i722.i:                                 ; preds = %land.rhs.i721.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i725.i

if.end31.i725.i:                                  ; preds = %if.then10.i722.i, %land.rhs.i721.i.if.end31.i725.i_crit_edge, %if.then.i719.i.if.end31.i725.i_crit_edge
  %548 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %bus, align 4
  %wr_rp.i723.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %549, i32 0, i32 5
  %550 = ptrtoint ptr %wr_rp.i723.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %wr_rp.i723.i, align 4
  %call40.i724.i = call i32 %551(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i712.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i712.i) #5
  br label %for.inc112.i

if.else.i727.i:                                   ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i726.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef %536, i8 noundef zeroext %538) #5
  br label %for.inc112.i

if.else90.i:                                      ; preds = %for.body80.i
  %552 = and i16 %534, 255
  call void @__sanitizer_cov_trace_cmp2(i16 %552, i16 %.sink)
  %cmp96.i = icmp ne i16 %552, %.sink
  %and102300.i = and i16 %534, %rf_band.0.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and102300.i)
  %tobool103.not.i = icmp eq i16 %and102300.i, 0
  %or.cond.i = select i1 %cmp96.i, i1 true, i1 %tobool103.not.i
  br i1 %or.cond.i, label %if.else90.i.for.inc112.i_crit_edge, label %if.then104.i

if.else90.i.for.inc112.i_crit_edge:               ; preds = %if.else90.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc112.i

if.then104.i:                                     ; preds = %if.else90.i
  %553 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load i32, ptr %arrayidx82.i, align 4
  %value108.i = getelementptr [41 x %struct.mt76x0_rf_switch_item], ptr @mt76x0_rf_bw_switch_tab, i32 0, i32 %i.2788.i, i32 2
  %555 = ptrtoint ptr %value108.i to i32
  call void @__asan_load1_noabort(i32 %555)
  %556 = load i8, ptr %value108.i, align 2
  %557 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %bus, align 4
  %type.i732.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %558, i32 0, i32 7
  %559 = ptrtoint ptr %type.i732.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %type.i732.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %560)
  %cmp.i733.i = icmp eq i32 %560, 1
  br i1 %cmp.i733.i, label %if.then.i737.i, label %if.else.i745.i

if.then.i737.i:                                   ; preds = %if.then104.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i730.i) #5
  %561 = ptrtoint ptr %pair.i730.i to i32
  call void @__asan_store4_noabort(i32 %561)
  store i32 %554, ptr %pair.i730.i, align 4
  %conv.i734.i = zext i8 %556 to i32
  %562 = ptrtoint ptr %530 to i32
  call void @__asan_store4_noabort(i32 %562)
  store i32 %conv.i734.i, ptr %530, align 4
  %563 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load volatile i32, ptr %state, align 4
  %565 = and i32 %564, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %565)
  %tobool.not.i736.i = icmp eq i32 %565, 0
  br i1 %tobool.not.i736.i, label %land.rhs.i739.i, label %if.then.i737.i.if.end31.i743.i_crit_edge

if.then.i737.i.if.end31.i743.i_crit_edge:         ; preds = %if.then.i737.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i743.i

land.rhs.i739.i:                                  ; preds = %if.then.i737.i
  %.b50.i738.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i738.i, label %land.rhs.i739.i.if.end31.i743.i_crit_edge, label %if.then10.i740.i, !prof !74

land.rhs.i739.i.if.end31.i743.i_crit_edge:        ; preds = %land.rhs.i739.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i743.i

if.then10.i740.i:                                 ; preds = %land.rhs.i739.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i743.i

if.end31.i743.i:                                  ; preds = %if.then10.i740.i, %land.rhs.i739.i.if.end31.i743.i_crit_edge, %if.then.i737.i.if.end31.i743.i_crit_edge
  %566 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %bus, align 4
  %wr_rp.i741.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %567, i32 0, i32 5
  %568 = ptrtoint ptr %wr_rp.i741.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %wr_rp.i741.i, align 4
  %call40.i742.i = call i32 %569(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i730.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i730.i) #5
  br label %for.inc112.i

if.else.i745.i:                                   ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i744.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef %554, i8 noundef zeroext %556) #5
  br label %for.inc112.i

for.inc112.i:                                     ; preds = %if.else.i745.i, %if.end31.i743.i, %if.else90.i.for.inc112.i_crit_edge, %if.else.i727.i, %if.end31.i725.i
  %inc113.i = add nuw nsw i32 %i.2788.i, 1
  %exitcond797.not.i = icmp eq i32 %inc113.i, 41
  br i1 %exitcond797.not.i, label %for.cond115.preheader.i, label %for.inc112.i.for.body80.i_crit_edge

for.inc112.i.for.body80.i_crit_edge:              ; preds = %for.inc112.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body80.i

for.body118.i:                                    ; preds = %for.inc132.i.for.body118.i_crit_edge, %for.cond115.preheader.i
  %i.3790.i = phi i32 [ 0, %for.cond115.preheader.i ], [ %inc133.i, %for.inc132.i.for.body118.i_crit_edge ]
  %bw_band120.i = getelementptr [43 x %struct.mt76x0_rf_switch_item], ptr @mt76x0_rf_band_switch_tab, i32 0, i32 %i.3790.i, i32 1
  %570 = ptrtoint ptr %bw_band120.i to i32
  call void @__asan_load2_noabort(i32 %570)
  %571 = load i16, ptr %bw_band120.i, align 4
  %and123299.i = and i16 %571, %rf_band.0.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and123299.i)
  %tobool124.not.i = icmp eq i16 %and123299.i, 0
  br i1 %tobool124.not.i, label %for.body118.i.for.inc132.i_crit_edge, label %if.then125.i

for.body118.i.for.inc132.i_crit_edge:             ; preds = %for.body118.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc132.i

if.then125.i:                                     ; preds = %for.body118.i
  %arrayidx119.i = getelementptr [43 x %struct.mt76x0_rf_switch_item], ptr @mt76x0_rf_band_switch_tab, i32 0, i32 %i.3790.i
  %572 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %arrayidx119.i, align 4
  %value129.i = getelementptr [43 x %struct.mt76x0_rf_switch_item], ptr @mt76x0_rf_band_switch_tab, i32 0, i32 %i.3790.i, i32 2
  %574 = ptrtoint ptr %value129.i to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %value129.i, align 2
  %576 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %bus, align 4
  %type.i750.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %577, i32 0, i32 7
  %578 = ptrtoint ptr %type.i750.i to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load i32, ptr %type.i750.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %579)
  %cmp.i751.i = icmp eq i32 %579, 1
  br i1 %cmp.i751.i, label %if.then.i755.i, label %if.else.i763.i

if.then.i755.i:                                   ; preds = %if.then125.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i748.i) #5
  %580 = ptrtoint ptr %pair.i748.i to i32
  call void @__asan_store4_noabort(i32 %580)
  store i32 %573, ptr %pair.i748.i, align 4
  %conv.i752.i = zext i8 %575 to i32
  %581 = ptrtoint ptr %532 to i32
  call void @__asan_store4_noabort(i32 %581)
  store i32 %conv.i752.i, ptr %532, align 4
  %582 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load volatile i32, ptr %state, align 4
  %584 = and i32 %583, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %584)
  %tobool.not.i754.i = icmp eq i32 %584, 0
  br i1 %tobool.not.i754.i, label %land.rhs.i757.i, label %if.then.i755.i.if.end31.i761.i_crit_edge

if.then.i755.i.if.end31.i761.i_crit_edge:         ; preds = %if.then.i755.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i761.i

land.rhs.i757.i:                                  ; preds = %if.then.i755.i
  %.b50.i756.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i756.i, label %land.rhs.i757.i.if.end31.i761.i_crit_edge, label %if.then10.i758.i, !prof !74

land.rhs.i757.i.if.end31.i761.i_crit_edge:        ; preds = %land.rhs.i757.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i761.i

if.then10.i758.i:                                 ; preds = %land.rhs.i757.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i761.i

if.end31.i761.i:                                  ; preds = %if.then10.i758.i, %land.rhs.i757.i.if.end31.i761.i_crit_edge, %if.then.i755.i.if.end31.i761.i_crit_edge
  %585 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %bus, align 4
  %wr_rp.i759.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %586, i32 0, i32 5
  %587 = ptrtoint ptr %wr_rp.i759.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %wr_rp.i759.i, align 4
  %call40.i760.i = call i32 %588(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i748.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i748.i) #5
  br label %for.inc132.i

if.else.i763.i:                                   ; preds = %if.then125.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i762.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef %573, i8 noundef zeroext %575) #5
  br label %for.inc132.i

for.inc132.i:                                     ; preds = %if.else.i763.i, %if.end31.i761.i, %for.body118.i.for.inc132.i_crit_edge
  %inc133.i = add nuw nsw i32 %i.3790.i, 1
  %exitcond798.not.i = icmp eq i32 %inc133.i, 43
  br i1 %exitcond798.not.i, label %for.end134.i, label %for.inc132.i.for.body118.i_crit_edge

for.inc132.i.for.body118.i_crit_edge:             ; preds = %for.inc132.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body118.i

for.end134.i:                                     ; preds = %for.inc132.i
  %589 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %bus, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %590, i32 0, i32 2
  %591 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %rmw.i, align 4
  %call135.i = call i32 %592(ptr noundef %dev, i32 noundef 1304, i32 noundef 12, i32 noundef 0) #5
  %conv136.i = zext i16 %rf_band.0.i to i32
  %and137.i = and i32 %conv136.i, 256
  %and137.lobit.i = lshr exact i32 %and137.i, 8
  %593 = xor i32 %and137.lobit.i, 1
  %call139.i = call zeroext i1 @mt76x02_ext_pa_enabled(ptr noundef %dev, i32 noundef %593) #5
  br i1 %call139.i, label %if.then140.i, label %for.end134.i.mt76x0_phy_set_chan_rf_params.exit_crit_edge

for.end134.i.mt76x0_phy_set_chan_rf_params.exit_crit_edge: ; preds = %for.end134.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_phy_set_chan_rf_params.exit

if.then140.i:                                     ; preds = %for.end134.i
  %and142.i = and i32 %conv136.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142.i)
  %tobool143.not.i = icmp eq i32 %and142.i, 0
  %594 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %bus, align 4
  %rmw150.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %595, i32 0, i32 2
  %596 = ptrtoint ptr %rmw150.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %rmw150.i, align 4
  %..i = select i1 %tobool143.not.i, i32 8, i32 4
  %call151.i = call i32 %597(ptr noundef %dev, i32 noundef 1304, i32 noundef 0, i32 noundef %..i) #5
  %598 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i766.i, i32 0, i32 1
  br label %for.body156.i

for.body156.i:                                    ; preds = %for.inc170.i.for.body156.i_crit_edge, %if.then140.i
  %i.4792.i = phi i32 [ 0, %if.then140.i ], [ %inc171.i, %for.inc170.i.for.body156.i_crit_edge ]
  %bw_band158.i = getelementptr [44 x %struct.mt76x0_rf_switch_item], ptr @mt76x0_rf_ext_pa_tab, i32 0, i32 %i.4792.i, i32 1
  %599 = ptrtoint ptr %bw_band158.i to i32
  call void @__asan_load2_noabort(i32 %599)
  %600 = load i16, ptr %bw_band158.i, align 4
  %and161298.i = and i16 %600, %rf_band.0.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and161298.i)
  %tobool162.not.i = icmp eq i16 %and161298.i, 0
  br i1 %tobool162.not.i, label %for.body156.i.for.inc170.i_crit_edge, label %if.then163.i

for.body156.i.for.inc170.i_crit_edge:             ; preds = %for.body156.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc170.i

if.then163.i:                                     ; preds = %for.body156.i
  %arrayidx157.i = getelementptr [44 x %struct.mt76x0_rf_switch_item], ptr @mt76x0_rf_ext_pa_tab, i32 0, i32 %i.4792.i
  %601 = ptrtoint ptr %arrayidx157.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %arrayidx157.i, align 4
  %value167.i = getelementptr [44 x %struct.mt76x0_rf_switch_item], ptr @mt76x0_rf_ext_pa_tab, i32 0, i32 %i.4792.i, i32 2
  %603 = ptrtoint ptr %value167.i to i32
  call void @__asan_load1_noabort(i32 %603)
  %604 = load i8, ptr %value167.i, align 2
  %605 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %bus, align 4
  %type.i768.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %606, i32 0, i32 7
  %607 = ptrtoint ptr %type.i768.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load i32, ptr %type.i768.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %608)
  %cmp.i769.i = icmp eq i32 %608, 1
  br i1 %cmp.i769.i, label %if.then.i773.i, label %if.else.i781.i

if.then.i773.i:                                   ; preds = %if.then163.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i766.i) #5
  %609 = ptrtoint ptr %pair.i766.i to i32
  call void @__asan_store4_noabort(i32 %609)
  store i32 %602, ptr %pair.i766.i, align 4
  %conv.i770.i = zext i8 %604 to i32
  %610 = ptrtoint ptr %598 to i32
  call void @__asan_store4_noabort(i32 %610)
  store i32 %conv.i770.i, ptr %598, align 4
  %611 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load volatile i32, ptr %state, align 4
  %613 = and i32 %612, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %613)
  %tobool.not.i772.i = icmp eq i32 %613, 0
  br i1 %tobool.not.i772.i, label %land.rhs.i775.i, label %if.then.i773.i.if.end31.i779.i_crit_edge

if.then.i773.i.if.end31.i779.i_crit_edge:         ; preds = %if.then.i773.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i779.i

land.rhs.i775.i:                                  ; preds = %if.then.i773.i
  %.b50.i774.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i774.i, label %land.rhs.i775.i.if.end31.i779.i_crit_edge, label %if.then10.i776.i, !prof !74

land.rhs.i775.i.if.end31.i779.i_crit_edge:        ; preds = %land.rhs.i775.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i779.i

if.then10.i776.i:                                 ; preds = %land.rhs.i775.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i779.i

if.end31.i779.i:                                  ; preds = %if.then10.i776.i, %land.rhs.i775.i.if.end31.i779.i_crit_edge, %if.then.i773.i.if.end31.i779.i_crit_edge
  %614 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %bus, align 4
  %wr_rp.i777.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %615, i32 0, i32 5
  %616 = ptrtoint ptr %wr_rp.i777.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %wr_rp.i777.i, align 4
  %call40.i778.i = call i32 %617(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i766.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i766.i) #5
  br label %for.inc170.i

if.else.i781.i:                                   ; preds = %if.then163.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i780.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef %602, i8 noundef zeroext %604) #5
  br label %for.inc170.i

for.inc170.i:                                     ; preds = %if.else.i781.i, %if.end31.i779.i, %for.body156.i.for.inc170.i_crit_edge
  %inc171.i = add nuw nsw i32 %i.4792.i, 1
  %exitcond799.not.i = icmp eq i32 %inc171.i, 44
  br i1 %exitcond799.not.i, label %for.inc170.i.mt76x0_phy_set_chan_rf_params.exit_crit_edge, label %for.inc170.i.for.body156.i_crit_edge

for.inc170.i.for.body156.i_crit_edge:             ; preds = %for.inc170.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body156.i

for.inc170.i.mt76x0_phy_set_chan_rf_params.exit_crit_edge: ; preds = %for.inc170.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_phy_set_chan_rf_params.exit

mt76x0_phy_set_chan_rf_params.exit:               ; preds = %for.inc170.i.mt76x0_phy_set_chan_rf_params.exit_crit_edge, %for.end134.i.mt76x0_phy_set_chan_rf_params.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137.i)
  %tobool138.not.i = icmp eq i32 %and137.i, 0
  %618 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %bus, align 4
  %wr186.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %619, i32 0, i32 1
  %620 = ptrtoint ptr %wr186.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %wr186.i, align 4
  %.808.i = select i1 %tobool138.not.i, i32 1751808000, i32 1668314112
  %.809.i = select i1 %tobool138.not.i, i32 -1996226305, i32 -1989934849
  call void %621(ptr noundef %dev, i32 noundef 5032, i32 noundef %.808.i) #5
  %622 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %bus, align 4
  %624 = ptrtoint ptr %623 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %623, align 4
  %call189.i = call i32 %625(ptr noundef %dev, i32 noundef 5044) #5
  %and190.i = and i32 %call189.i, %.809.i
  %626 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %bus, align 4
  %wr192.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %627, i32 0, i32 1
  %628 = ptrtoint ptr %wr192.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %wr192.i, align 4
  call void %629(ptr noundef %dev, i32 noundef 5044, i32 noundef %and190.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %channel.0)
  %cmp416 = icmp eq i8 %channel.0, 14
  %630 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %bus, align 4
  %rmw420 = getelementptr inbounds %struct.mt76_bus_ops, ptr %631, i32 0, i32 2
  %632 = ptrtoint ptr %rmw420 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %rmw420, align 4
  br i1 %cmp416, label %if.then418, label %if.else422

if.then418:                                       ; preds = %mt76x0_phy_set_chan_rf_params.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call421 = call i32 %633(ptr noundef %dev, i32 noundef 8196, i32 noundef 0, i32 noundef 32) #5
  br label %if.end426

if.else422:                                       ; preds = %mt76x0_phy_set_chan_rf_params.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call425 = call i32 %633(ptr noundef %dev, i32 noundef 8196, i32 noundef 32, i32 noundef 0) #5
  br label %if.end426

if.end426:                                        ; preds = %if.else422, %if.then418
  call void @mt76x0_read_rx_gain(ptr noundef %dev) #5
  %lna_gain.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 19, i32 0, i32 2
  br label %for.body.i509

for.body.i509:                                    ; preds = %cleanup.i.for.body.i509_crit_edge, %if.end426
  %i.075.i = phi i32 [ 0, %if.end426 ], [ %inc.i513, %cleanup.i.for.body.i509_crit_edge ]
  %arrayidx.i508 = getelementptr [48 x %struct.mt76x0_bbp_switch_item], ptr @mt76x0_bbp_switch_tab, i32 0, i32 %i.075.i
  %634 = ptrtoint ptr %arrayidx.i508 to i32
  call void @__asan_load2_noabort(i32 %634)
  %635 = load i16, ptr %arrayidx.i508, align 4
  %and73.i = and i16 %635, %23
  call void @__sanitizer_cov_trace_cmp2(i16 %and73.i, i16 %23)
  %cmp3.not.i = icmp eq i16 %and73.i, %23
  br i1 %cmp3.not.i, label %if.end.i, label %for.body.i509.cleanup.i_crit_edge

for.body.i509.cleanup.i_crit_edge:                ; preds = %for.body.i509
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i509
  %reg_pair.i = getelementptr [48 x %struct.mt76x0_bbp_switch_item], ptr @mt76x0_bbp_switch_tab, i32 0, i32 %i.075.i, i32 1
  %636 = ptrtoint ptr %reg_pair.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load i32, ptr %reg_pair.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8992, i32 %637)
  %cmp5.i = icmp eq i32 %637, 8992
  br i1 %cmp5.i, label %do.end44.i, label %if.else.i512

do.end44.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %638 = ptrtoint ptr %lna_gain.i to i32
  call void @__asan_load1_noabort(i32 %638)
  %639 = load i8, ptr %lna_gain.i, align 4
  %conv2274.i = zext i8 %639 to i32
  %value.i510 = getelementptr [48 x %struct.mt76x0_bbp_switch_item], ptr @mt76x0_bbp_switch_tab, i32 0, i32 %i.075.i, i32 1, i32 1
  %640 = ptrtoint ptr %value.i510 to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load i32, ptr %value.i510, align 4
  %and25.i = and i32 %641, -32513
  %sub.i549 = mul nuw nsw i32 %conv2274.i, 32256
  %.mask = and i32 %641, 32512
  %conv46.i = add nuw nsw i32 %.mask, %sub.i549
  %and47.i = and i32 %conv46.i, 32512
  %or.i = or i32 %and47.i, %and25.i
  %642 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %bus, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %643, i32 0, i32 1
  %644 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %wr.i, align 4
  call void %645(ptr noundef %dev, i32 noundef 8992, i32 noundef %or.i) #5
  br label %cleanup.i

if.else.i512:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %646 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %bus, align 4
  %wr50.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %647, i32 0, i32 1
  %648 = ptrtoint ptr %wr50.i to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %wr50.i, align 4
  %value52.i = getelementptr [48 x %struct.mt76x0_bbp_switch_item], ptr @mt76x0_bbp_switch_tab, i32 0, i32 %i.075.i, i32 1, i32 1
  %650 = ptrtoint ptr %value52.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load i32, ptr %value52.i, align 4
  call void %649(ptr noundef %dev, i32 noundef %637, i32 noundef %651) #5
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i512, %do.end44.i, %for.body.i509.cleanup.i_crit_edge
  %inc.i513 = add nuw nsw i32 %i.075.i, 1
  %exitcond.not.i514 = icmp eq i32 %inc.i513, 48
  br i1 %exitcond.not.i514, label %mt76x0_phy_set_chan_bbp_params.exit, label %cleanup.i.for.body.i509_crit_edge

cleanup.i.for.body.i509_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i509

mt76x0_phy_set_chan_bbp_params.exit:              ; preds = %cleanup.i
  %call.i.i517 = call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i517)
  %cmp.i.i518 = icmp slt i32 %call.i.i517, 0
  br i1 %cmp.i.i518, label %mt76x0_phy_set_chan_bbp_params.exit.mt76x0_rf_set.exit_crit_edge, label %if.end.i.i522

mt76x0_phy_set_chan_bbp_params.exit.mt76x0_rf_set.exit_crit_edge: ; preds = %mt76x0_phy_set_chan_bbp_params.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_rf_set.exit

if.end.i.i522:                                    ; preds = %mt76x0_phy_set_chan_bbp_params.exit
  %652 = trunc i32 %call.i.i517 to i8
  %conv2.i.i519 = or i8 %652, -128
  %653 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %bus, align 4
  %type.i.i.i520 = getelementptr inbounds %struct.mt76_bus_ops, ptr %654, i32 0, i32 7
  %655 = ptrtoint ptr %type.i.i.i520 to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load i32, ptr %type.i.i.i520, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %656)
  %cmp.i.i.i521 = icmp eq i32 %656, 1
  br i1 %cmp.i.i.i521, label %if.then.i.i.i526, label %if.else.i.i.i534

if.then.i.i.i526:                                 ; preds = %if.end.i.i522
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i.i516) #5
  %657 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i.i516, i32 0, i32 1
  %658 = ptrtoint ptr %pair.i.i.i516 to i32
  call void @__asan_store4_noabort(i32 %658)
  store i32 4, ptr %pair.i.i.i516, align 4
  %conv.i.i.i523 = zext i8 %conv2.i.i519 to i32
  %659 = ptrtoint ptr %657 to i32
  call void @__asan_store4_noabort(i32 %659)
  store i32 %conv.i.i.i523, ptr %657, align 4
  %660 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load volatile i32, ptr %state, align 4
  %662 = and i32 %661, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %662)
  %tobool.not.i.i.i525 = icmp eq i32 %662, 0
  br i1 %tobool.not.i.i.i525, label %land.rhs.i.i.i528, label %if.then.i.i.i526.if.end31.i.i.i532_crit_edge

if.then.i.i.i526.if.end31.i.i.i532_crit_edge:     ; preds = %if.then.i.i.i526
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i.i532

land.rhs.i.i.i528:                                ; preds = %if.then.i.i.i526
  %.b50.i.i.i527 = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i.i527, label %land.rhs.i.i.i528.if.end31.i.i.i532_crit_edge, label %if.then10.i.i.i529, !prof !74

land.rhs.i.i.i528.if.end31.i.i.i532_crit_edge:    ; preds = %land.rhs.i.i.i528
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i.i532

if.then10.i.i.i529:                               ; preds = %land.rhs.i.i.i528
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i.i532

if.end31.i.i.i532:                                ; preds = %if.then10.i.i.i529, %land.rhs.i.i.i528.if.end31.i.i.i532_crit_edge, %if.then.i.i.i526.if.end31.i.i.i532_crit_edge
  %663 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %bus, align 4
  %wr_rp.i.i.i530 = getelementptr inbounds %struct.mt76_bus_ops, ptr %664, i32 0, i32 5
  %665 = ptrtoint ptr %wr_rp.i.i.i530 to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %wr_rp.i.i.i530, align 4
  %call40.i.i.i531 = call i32 %666(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i.i516, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i.i516) #5
  br label %mt76x0_rf_set.exit

if.else.i.i.i534:                                 ; preds = %if.end.i.i522
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i.i533 = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 4, i8 noundef zeroext %conv2.i.i519) #5
  br label %mt76x0_rf_set.exit

mt76x0_rf_set.exit:                               ; preds = %if.else.i.i.i534, %if.end31.i.i.i532, %mt76x0_phy_set_chan_bbp_params.exit.mt76x0_rf_set.exit_crit_edge
  br i1 %tobool.not, label %if.end430, label %mt76x0_rf_set.exit.cleanup_crit_edge

mt76x0_rf_set.exit.cleanup_crit_edge:             ; preds = %mt76x0_rf_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end430:                                        ; preds = %mt76x0_rf_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @mt76x02_init_agc_gain(ptr noundef %dev) #5
  call void @mt76x0_phy_calibrate(ptr noundef %dev, i1 noundef zeroext false)
  %rate_power.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 46
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %info.i) #5
  %667 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %667)
  store i8 -1, ptr %info.i, align 1, !annotation !73
  %chandef.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5
  %668 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %chandef.i, align 4
  call void @mt76x0_get_tx_power_per_rate(ptr noundef %dev, ptr noundef %669, ptr noundef %rate_power.i) #5
  %670 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %chandef.i, align 4
  call void @mt76x0_get_power_info(ptr noundef %dev, ptr noundef %671, ptr noundef nonnull %info.i) #5
  %672 = ptrtoint ptr %info.i to i32
  call void @__asan_load1_noabort(i32 %672)
  %673 = load i8, ptr %info.i, align 1
  %conv.i = sext i8 %673 to i32
  call void @mt76x02_add_rate_power_offset(ptr noundef %rate_power.i, i32 noundef %conv.i) #5
  %txpower_conf.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 20
  %674 = ptrtoint ptr %txpower_conf.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load i32, ptr %txpower_conf.i, align 64
  call void @mt76x02_limit_rate_power(ptr noundef %rate_power.i, i32 noundef %675) #5
  %call.i536 = call i32 @mt76x02_get_max_rate_power(ptr noundef %rate_power.i) #5
  %txpower_cur.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 14
  %676 = ptrtoint ptr %txpower_cur.i to i32
  call void @__asan_store4_noabort(i32 %676)
  store i32 %call.i536, ptr %txpower_cur.i, align 4
  %677 = ptrtoint ptr %info.i to i32
  call void @__asan_load1_noabort(i32 %677)
  %678 = load i8, ptr %info.i, align 1
  %conv3.i = sext i8 %678 to i32
  %sub.i537 = sub nsw i32 0, %conv3.i
  call void @mt76x02_add_rate_power_offset(ptr noundef %rate_power.i, i32 noundef %sub.i537) #5
  %679 = ptrtoint ptr %info.i to i32
  call void @__asan_load1_noabort(i32 %679)
  %680 = load i8, ptr %info.i, align 1
  %target_power.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 21
  %681 = ptrtoint ptr %target_power.i to i32
  call void @__asan_store1_noabort(i32 %681)
  store i8 %680, ptr %target_power.i, align 4
  %conv4.i = sext i8 %680 to i32
  call void @mt76x02_phy_set_txpower(ptr noundef %dev, i32 noundef %conv4.i, i32 noundef %conv4.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %info.i) #5
  %hw = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 2
  %682 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %hw, align 4
  %cal_work = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9
  call void @ieee80211_queue_delayed_work(ptr noundef %683, ptr noundef %cal_work, i32 noundef 100) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end430, %mt76x0_rf_set.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ext_cca_chan) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_phy_set_bw(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_phy_set_band(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x0_read_rx_gain(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_init_agc_gain(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x0_phy_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %pair.i.i.i200.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i.i179.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i.i160.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i.i.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i142.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i124.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i106.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i = alloca %struct.mt76_reg_pair, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cal_work = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9
  tail call void @__init_work(ptr noundef %cal_work, i32 noundef 0) #5
  %0 = ptrtoint ptr %cal_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %cal_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @mt76x0_phy_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry8 = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9, i32 0, i32 1
  %1 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mt76x0_phy_calibration_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.9, ptr noundef nonnull @mt76x0_phy_init.__key.8) #5
  %eeprom.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %4 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eeprom.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 34
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %add.ptr.i.i, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #5
  %add.ptr.i94.i = getelementptr i8, ptr %5, i32 36
  %9 = ptrtoint ptr %add.ptr.i94.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %add.ptr.i94.i, align 1
  %add.ptr.i97.i = getelementptr i8, ptr %5, i32 66
  %11 = ptrtoint ptr %add.ptr.i97.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %add.ptr.i97.i, align 1
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %13 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call5.i = tail call i32 %16(ptr noundef %dev, i32 noundef 128) #5
  %17 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call8.i = tail call i32 %20(ptr noundef %dev, i32 noundef 76) #5
  %conv10.i = and i16 %8, -20481
  %and11.i = and i32 %call5.i, -97
  %and12.i = and i32 %call8.i, -61
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %8)
  %tobool.not.i = icmp sgt i16 %8, -1
  br i1 %tobool.not.i, label %if.else31.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %21 = and i16 %12, 6144
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %21)
  %22 = icmp eq i16 %21, 4096
  %or.i = or i16 %conv10.i, 4096
  %or25.i = or i32 %and12.i, 16
  %ee_ant.0.i = select i1 %22, i16 %or.i, i16 %conv10.i
  %coex3.0.i = select i1 %22, i32 %and12.i, i32 %or25.i
  %or26.i = or i32 %coex3.0.i, 8
  %cap.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 9
  %23 = ptrtoint ptr %cap.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cap.i, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool27.not.i = icmp eq i8 %24, 0
  %or29.i = or i32 %and11.i, 64
  %spec.select92.i = select i1 %tobool27.not.i, i32 %and11.i, i32 %or29.i
  br label %mt76x0_phy_ant_select.exit

if.else31.i:                                      ; preds = %entry
  %has_5ghz.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %has_5ghz.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %has_5ghz.i, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool33.not.i = icmp eq i8 %26, 0
  br i1 %tobool33.not.i, label %if.else36.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #7
  %or35.i = or i32 %and12.i, 24
  br label %mt76x0_phy_ant_select.exit

if.else36.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #7
  %or37.i = or i32 %and11.i, 64
  %or38.i = or i32 %and12.i, 2
  br label %mt76x0_phy_ant_select.exit

mt76x0_phy_ant_select.exit:                       ; preds = %if.else36.i, %if.then34.i, %if.then.i
  %ee_ant.1.i = phi i16 [ %conv10.i, %if.then34.i ], [ %conv10.i, %if.else36.i ], [ %ee_ant.0.i, %if.then.i ]
  %wlan.0.i = phi i32 [ %and11.i, %if.then34.i ], [ %or37.i, %if.else36.i ], [ %spec.select92.i, %if.then.i ]
  %coex3.1.i = phi i32 [ %or35.i, %if.then34.i ], [ %or38.i, %if.else36.i ], [ %or26.i, %if.then.i ]
  %27 = tail call i16 @llvm.bswap.i16(i16 %10) #5
  %conv.i95.i = zext i16 %27 to i32
  %rev.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %28 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rev.i.i.i, align 4
  %shr.i.mask.i.i = and i32 %29, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1982857216, i32 %shr.i.mask.i.i)
  %cmp.i.i = icmp eq i32 %shr.i.mask.i.i, 1982857216
  %30 = or i16 %ee_ant.1.i, 18432
  %spec.select.i = select i1 %cmp.i.i, i16 %30, i16 %ee_ant.1.i
  %31 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wr.i, align 4
  tail call void %34(ptr noundef %dev, i32 noundef 128, i32 noundef %wlan.0.i) #5
  %35 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus.i, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmw.i, align 4
  %conv49.i = zext i16 %spec.select.i to i32
  %call50.i = tail call i32 %38(ptr noundef %dev, i32 noundef 32, i32 noundef 65535, i32 noundef %conv49.i) #5
  %39 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus.i, align 4
  %rmw52.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %rmw52.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmw52.i, align 4
  %call54.i = tail call i32 %42(ptr noundef %dev, i32 noundef 260, i32 noundef 65535, i32 noundef %conv.i95.i) #5
  %43 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i, align 4
  %rmw56.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %rmw56.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmw56.i, align 4
  %call57.i = tail call i32 %46(ptr noundef %dev, i32 noundef 64, i32 noundef 4, i32 noundef 0) #5
  %47 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus.i, align 4
  %wr59.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %wr59.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wr59.i, align 4
  tail call void %50(ptr noundef %dev, i32 noundef 76, i32 noundef %coex3.1.i) #5
  tail call fastcc void @mt76x0_rf_patch_reg_array(ptr noundef %dev, ptr noundef nonnull @mt76x0_rf_central_tab, i32 noundef 44) #5
  tail call fastcc void @mt76x0_rf_patch_reg_array(ptr noundef %dev, ptr noundef nonnull @mt76x0_rf_2g_channel_0_tab, i32 noundef 68) #5
  %51 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus.i, align 4
  %type.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i = icmp eq i32 %54, 0
  br i1 %cmp.i, label %mt76x0_phy_ant_select.exit.while.body.i.i_crit_edge, label %if.else.i

mt76x0_phy_ant_select.exit.while.body.i.i_crit_edge: ; preds = %mt76x0_phy_ant_select.exit
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %mt76x0_phy_ant_select.exit.while.body.i.i_crit_edge
  %n.addr.05.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 38, %mt76x0_phy_ant_select.exit.while.body.i.i_crit_edge ]
  %data.addr.04.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ @mt76x0_rf_5g_channel_0_tab, %mt76x0_phy_ant_select.exit.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %n.addr.05.i.i, -1
  %55 = ptrtoint ptr %data.addr.04.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %data.addr.04.i.i, align 4
  %value.i.i = getelementptr inbounds %struct.mt76_reg_pair, ptr %data.addr.04.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %value.i.i, align 4
  %conv.i.i = trunc i32 %58 to i8
  %call.i.i = tail call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef %56, i8 noundef zeroext %conv.i.i) #5
  %incdec.ptr.i.i = getelementptr %struct.mt76_reg_pair, ptr %data.addr.04.i.i, i32 1
  %cmp.i.i25 = icmp ugt i32 %n.addr.05.i.i, 1
  br i1 %cmp.i.i25, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.do.body2.i_crit_edge

while.body.i.i.do.body2.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

if.else.i:                                        ; preds = %mt76x0_phy_ant_select.exit
  call void @__sanitizer_cov_trace_pc() #7
  %wr_rp.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %52, i32 0, i32 5
  %59 = ptrtoint ptr %wr_rp.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wr_rp.i, align 4
  %call.i = tail call i32 %60(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull @mt76x0_rf_5g_channel_0_tab, i32 noundef 38) #5
  br label %do.body2.i

do.body2.i:                                       ; preds = %if.else.i, %while.body.i.i.do.body2.i_crit_edge
  %61 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bus.i, align 4
  %type4.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %type4.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %type4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp5.i = icmp eq i32 %64, 0
  br i1 %cmp5.i, label %do.body2.i.while.body.i102.i_crit_edge, label %if.else7.i

do.body2.i.while.body.i102.i_crit_edge:           ; preds = %do.body2.i
  br label %while.body.i102.i

while.body.i102.i:                                ; preds = %while.body.i102.i.while.body.i102.i_crit_edge, %do.body2.i.while.body.i102.i_crit_edge
  %n.addr.05.i94.i = phi i32 [ %dec.i96.i, %while.body.i102.i.while.body.i102.i_crit_edge ], [ 35, %do.body2.i.while.body.i102.i_crit_edge ]
  %data.addr.04.i95.i = phi ptr [ %incdec.ptr.i100.i, %while.body.i102.i.while.body.i102.i_crit_edge ], [ @mt76x0_rf_vga_channel_0_tab, %do.body2.i.while.body.i102.i_crit_edge ]
  %dec.i96.i = add nsw i32 %n.addr.05.i94.i, -1
  %65 = ptrtoint ptr %data.addr.04.i95.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %data.addr.04.i95.i, align 4
  %value.i97.i = getelementptr inbounds %struct.mt76_reg_pair, ptr %data.addr.04.i95.i, i32 0, i32 1
  %67 = ptrtoint ptr %value.i97.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %value.i97.i, align 4
  %conv.i98.i = trunc i32 %68 to i8
  %call.i99.i = tail call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef %66, i8 noundef zeroext %conv.i98.i) #5
  %incdec.ptr.i100.i = getelementptr %struct.mt76_reg_pair, ptr %data.addr.04.i95.i, i32 1
  %cmp.i101.i = icmp ugt i32 %n.addr.05.i94.i, 1
  br i1 %cmp.i101.i, label %while.body.i102.i.while.body.i102.i_crit_edge, label %while.body.i102.i.do.end13.i_crit_edge

while.body.i102.i.do.end13.i_crit_edge:           ; preds = %while.body.i102.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end13.i

while.body.i102.i.while.body.i102.i_crit_edge:    ; preds = %while.body.i102.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i102.i

if.else7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #7
  %wr_rp9.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %62, i32 0, i32 5
  %69 = ptrtoint ptr %wr_rp9.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wr_rp9.i, align 4
  %call10.i = tail call i32 %70(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull @mt76x0_rf_vga_channel_0_tab, i32 noundef 35) #5
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.else7.i, %while.body.i102.i.do.end13.i_crit_edge
  %71 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i, i32 0, i32 1
  %state.i.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  %72 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i106.i, i32 0, i32 1
  br label %for.body.i

for.cond30.preheader.i:                           ; preds = %if.end29.i
  %73 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i124.i, i32 0, i32 1
  br label %for.body33.i

for.body.i:                                       ; preds = %if.end29.i.for.body.i_crit_edge, %do.end13.i
  %i.0221.i = phi i32 [ 0, %do.end13.i ], [ %inc.i, %if.end29.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [41 x %struct.mt76x0_rf_switch_item], ptr @mt76x0_rf_bw_switch_tab, i32 0, i32 %i.0221.i
  %74 = zext i32 %i.0221.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %i.0221.i, label %if.else19.i [
    i32 38, label %for.body.i.if.then17.i_crit_edge
    i32 35, label %for.body.i.if.then17.i_crit_edge27
  ]

for.body.i.if.then17.i_crit_edge27:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17.i

for.body.i.if.then17.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17.i

if.then17.i:                                      ; preds = %for.body.i.if.then17.i_crit_edge, %for.body.i.if.then17.i_crit_edge27
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i, align 4
  %value.i = getelementptr [41 x %struct.mt76x0_rf_switch_item], ptr @mt76x0_rf_bw_switch_tab, i32 0, i32 %i.0221.i, i32 2
  %77 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %value.i, align 2
  %79 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bus.i, align 4
  %type.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %80, i32 0, i32 7
  %81 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp.i104.i = icmp eq i32 %82, 1
  br i1 %cmp.i104.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then17.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i) #5
  %83 = ptrtoint ptr %pair.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %76, ptr %pair.i.i, align 4
  %conv.i105.i = zext i8 %78 to i32
  %84 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv.i105.i, ptr %71, align 4
  %85 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %state.i.i, align 4
  %87 = and i32 %86, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i.i = icmp eq i32 %87, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.then.i.i.if.end31.i.i_crit_edge

if.then.i.i.if.end31.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i

land.rhs.i.i:                                     ; preds = %if.then.i.i
  %.b50.i.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i, label %land.rhs.i.i.if.end31.i.i_crit_edge, label %if.then10.i.i, !prof !74

land.rhs.i.i.if.end31.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i

if.then10.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then10.i.i, %land.rhs.i.i.if.end31.i.i_crit_edge, %if.then.i.i.if.end31.i.i_crit_edge
  %88 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bus.i, align 4
  %wr_rp.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %wr_rp.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wr_rp.i.i, align 4
  %call40.i.i = call i32 %91(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i) #5
  br label %if.end29.i

if.else.i.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef %76, i8 noundef zeroext %78) #5
  br label %if.end29.i

if.else19.i:                                      ; preds = %for.body.i
  %bw_band.i = getelementptr [41 x %struct.mt76x0_rf_switch_item], ptr @mt76x0_rf_bw_switch_tab, i32 0, i32 %i.0221.i, i32 1
  %92 = ptrtoint ptr %bw_band.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %bw_band.i, align 4
  %94 = and i16 %93, 257
  call void @__sanitizer_cov_trace_const_cmp2(i16 257, i16 %94)
  %cmp22.i = icmp eq i16 %94, 257
  br i1 %cmp22.i, label %if.then24.i, label %if.else19.i.if.end29.i_crit_edge

if.else19.i.if.end29.i_crit_edge:                 ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.then24.i:                                      ; preds = %if.else19.i
  %95 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i, align 4
  %value26.i = getelementptr [41 x %struct.mt76x0_rf_switch_item], ptr @mt76x0_rf_bw_switch_tab, i32 0, i32 %i.0221.i, i32 2
  %97 = ptrtoint ptr %value26.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %value26.i, align 2
  %99 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bus.i, align 4
  %type.i108.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %100, i32 0, i32 7
  %101 = ptrtoint ptr %type.i108.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %type.i108.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %102)
  %cmp.i109.i = icmp eq i32 %102, 1
  br i1 %cmp.i109.i, label %if.then.i113.i, label %if.else.i121.i

if.then.i113.i:                                   ; preds = %if.then24.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i106.i) #5
  %103 = ptrtoint ptr %pair.i106.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %96, ptr %pair.i106.i, align 4
  %conv.i110.i = zext i8 %98 to i32
  %104 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv.i110.i, ptr %72, align 4
  %105 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %state.i.i, align 4
  %107 = and i32 %106, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not.i112.i = icmp eq i32 %107, 0
  br i1 %tobool.not.i112.i, label %land.rhs.i115.i, label %if.then.i113.i.if.end31.i119.i_crit_edge

if.then.i113.i.if.end31.i119.i_crit_edge:         ; preds = %if.then.i113.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i119.i

land.rhs.i115.i:                                  ; preds = %if.then.i113.i
  %.b50.i114.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i114.i, label %land.rhs.i115.i.if.end31.i119.i_crit_edge, label %if.then10.i116.i, !prof !74

land.rhs.i115.i.if.end31.i119.i_crit_edge:        ; preds = %land.rhs.i115.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i119.i

if.then10.i116.i:                                 ; preds = %land.rhs.i115.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i119.i

if.end31.i119.i:                                  ; preds = %if.then10.i116.i, %land.rhs.i115.i.if.end31.i119.i_crit_edge, %if.then.i113.i.if.end31.i119.i_crit_edge
  %108 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bus.i, align 4
  %wr_rp.i117.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %109, i32 0, i32 5
  %110 = ptrtoint ptr %wr_rp.i117.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wr_rp.i117.i, align 4
  %call40.i118.i = call i32 %111(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i106.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i106.i) #5
  br label %if.end29.i

if.else.i121.i:                                   ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i120.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef %96, i8 noundef zeroext %98) #5
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else.i121.i, %if.end31.i119.i, %if.else19.i.if.end29.i_crit_edge, %if.else.i.i, %if.end31.i.i
  %inc.i = add nuw nsw i32 %i.0221.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 41
  br i1 %exitcond.not.i, label %for.cond30.preheader.i, label %if.end29.i.for.body.i_crit_edge

if.end29.i.for.body.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body33.i:                                     ; preds = %for.inc45.i.for.body33.i_crit_edge, %for.cond30.preheader.i
  %i.1223.i = phi i32 [ 0, %for.cond30.preheader.i ], [ %inc46.i, %for.inc45.i.for.body33.i_crit_edge ]
  %bw_band35.i = getelementptr [43 x %struct.mt76x0_rf_switch_item], ptr @mt76x0_rf_band_switch_tab, i32 0, i32 %i.1223.i, i32 1
  %112 = ptrtoint ptr %bw_band35.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %bw_band35.i, align 4
  %114 = and i16 %113, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool.not.i26 = icmp eq i16 %114, 0
  br i1 %tobool.not.i26, label %for.body33.i.for.inc45.i_crit_edge, label %if.then38.i

for.body33.i.for.inc45.i_crit_edge:               ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc45.i

if.then38.i:                                      ; preds = %for.body33.i
  %arrayidx34.i = getelementptr [43 x %struct.mt76x0_rf_switch_item], ptr @mt76x0_rf_band_switch_tab, i32 0, i32 %i.1223.i
  %115 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx34.i, align 4
  %value42.i = getelementptr [43 x %struct.mt76x0_rf_switch_item], ptr @mt76x0_rf_band_switch_tab, i32 0, i32 %i.1223.i, i32 2
  %117 = ptrtoint ptr %value42.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %value42.i, align 2
  %119 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bus.i, align 4
  %type.i126.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %120, i32 0, i32 7
  %121 = ptrtoint ptr %type.i126.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %type.i126.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %122)
  %cmp.i127.i = icmp eq i32 %122, 1
  br i1 %cmp.i127.i, label %if.then.i131.i, label %if.else.i139.i

if.then.i131.i:                                   ; preds = %if.then38.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i124.i) #5
  %123 = ptrtoint ptr %pair.i124.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %116, ptr %pair.i124.i, align 4
  %conv.i128.i = zext i8 %118 to i32
  %124 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %conv.i128.i, ptr %73, align 4
  %125 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %state.i.i, align 4
  %127 = and i32 %126, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool.not.i130.i = icmp eq i32 %127, 0
  br i1 %tobool.not.i130.i, label %land.rhs.i133.i, label %if.then.i131.i.if.end31.i137.i_crit_edge

if.then.i131.i.if.end31.i137.i_crit_edge:         ; preds = %if.then.i131.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i137.i

land.rhs.i133.i:                                  ; preds = %if.then.i131.i
  %.b50.i132.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i132.i, label %land.rhs.i133.i.if.end31.i137.i_crit_edge, label %if.then10.i134.i, !prof !74

land.rhs.i133.i.if.end31.i137.i_crit_edge:        ; preds = %land.rhs.i133.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i137.i

if.then10.i134.i:                                 ; preds = %land.rhs.i133.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i137.i

if.end31.i137.i:                                  ; preds = %if.then10.i134.i, %land.rhs.i133.i.if.end31.i137.i_crit_edge, %if.then.i131.i.if.end31.i137.i_crit_edge
  %128 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bus.i, align 4
  %wr_rp.i135.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %129, i32 0, i32 5
  %130 = ptrtoint ptr %wr_rp.i135.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %wr_rp.i135.i, align 4
  %call40.i136.i = call i32 %131(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i124.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i124.i) #5
  br label %for.inc45.i

if.else.i139.i:                                   ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i138.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef %116, i8 noundef zeroext %118) #5
  br label %for.inc45.i

for.inc45.i:                                      ; preds = %if.else.i139.i, %if.end31.i137.i, %for.body33.i.for.inc45.i_crit_edge
  %inc46.i = add nuw nsw i32 %i.1223.i, 1
  %exitcond225.not.i = icmp eq i32 %inc46.i, 43
  br i1 %exitcond225.not.i, label %for.end47.i, label %for.inc45.i.for.body33.i_crit_edge

for.inc45.i.for.body33.i_crit_edge:               ; preds = %for.inc45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body33.i

for.end47.i:                                      ; preds = %for.inc45.i
  %freq_offset.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 19, i32 0, i32 5
  %132 = ptrtoint ptr %freq_offset.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %freq_offset.i, align 2
  %134 = call i8 @llvm.umin.i8(i8 %133, i8 -65) #5
  %135 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %bus.i, align 4
  %type.i144.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %136, i32 0, i32 7
  %137 = ptrtoint ptr %type.i144.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %type.i144.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %138)
  %cmp.i145.i = icmp eq i32 %138, 1
  br i1 %cmp.i145.i, label %if.then.i149.i, label %if.else.i157.i

if.then.i149.i:                                   ; preds = %for.end47.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i142.i) #5
  %139 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i142.i, i32 0, i32 1
  %140 = ptrtoint ptr %pair.i142.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 22, ptr %pair.i142.i, align 4
  %conv.i146.i = zext i8 %134 to i32
  %141 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %conv.i146.i, ptr %139, align 4
  %142 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %state.i.i, align 4
  %144 = and i32 %143, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool.not.i148.i = icmp eq i32 %144, 0
  br i1 %tobool.not.i148.i, label %land.rhs.i151.i, label %if.then.i149.i.if.end31.i155.i_crit_edge

if.then.i149.i.if.end31.i155.i_crit_edge:         ; preds = %if.then.i149.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i155.i

land.rhs.i151.i:                                  ; preds = %if.then.i149.i
  %.b50.i150.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i150.i, label %land.rhs.i151.i.if.end31.i155.i_crit_edge, label %if.then10.i152.i, !prof !74

land.rhs.i151.i.if.end31.i155.i_crit_edge:        ; preds = %land.rhs.i151.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i155.i

if.then10.i152.i:                                 ; preds = %land.rhs.i151.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i155.i

if.end31.i155.i:                                  ; preds = %if.then10.i152.i, %land.rhs.i151.i.if.end31.i155.i_crit_edge, %if.then.i149.i.if.end31.i155.i_crit_edge
  %145 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %bus.i, align 4
  %wr_rp.i153.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %146, i32 0, i32 5
  %147 = ptrtoint ptr %wr_rp.i153.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %wr_rp.i153.i, align 4
  %call40.i154.i = call i32 %148(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i142.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i142.i) #5
  br label %mt76x0_rf_wr.exit159.i

if.else.i157.i:                                   ; preds = %for.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i156.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 22, i8 noundef zeroext %134) #5
  br label %mt76x0_rf_wr.exit159.i

mt76x0_rf_wr.exit159.i:                           ; preds = %if.else.i157.i, %if.end31.i155.i
  %call56.i = call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 22) #5
  %call.i.i.i = call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 73) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %mt76x0_rf_wr.exit159.i.mt76x0_rf_set.exit.i_crit_edge, label %if.end.i.i.i

mt76x0_rf_wr.exit159.i.mt76x0_rf_set.exit.i_crit_edge: ; preds = %mt76x0_rf_wr.exit159.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_rf_set.exit.i

if.end.i.i.i:                                     ; preds = %mt76x0_rf_wr.exit159.i
  %149 = trunc i32 %call.i.i.i to i8
  %conv2.i.i.i = or i8 %149, -128
  %150 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %bus.i, align 4
  %type.i.i.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %151, i32 0, i32 7
  %152 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %153)
  %cmp.i.i.i.i = icmp eq i32 %153, 1
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.else.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i.i.i) #5
  %154 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i.i.i, i32 0, i32 1
  %155 = ptrtoint ptr %pair.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 73, ptr %pair.i.i.i.i, align 4
  %conv.i.i.i.i = zext i8 %conv2.i.i.i to i32
  %156 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %conv.i.i.i.i, ptr %154, align 4
  %157 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %state.i.i, align 4
  %159 = and i32 %158, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool.not.i.i.i.i = icmp eq i32 %159, 0
  br i1 %tobool.not.i.i.i.i, label %land.rhs.i.i.i.i, label %if.then.i.i.i.i.if.end31.i.i.i.i_crit_edge

if.then.i.i.i.i.if.end31.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  %.b50.i.i.i.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i.i.i, label %land.rhs.i.i.i.i.if.end31.i.i.i.i_crit_edge, label %if.then10.i.i.i.i, !prof !74

land.rhs.i.i.i.i.if.end31.i.i.i.i_crit_edge:      ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i.i.i

if.then10.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i.i.i

if.end31.i.i.i.i:                                 ; preds = %if.then10.i.i.i.i, %land.rhs.i.i.i.i.if.end31.i.i.i.i_crit_edge, %if.then.i.i.i.i.if.end31.i.i.i.i_crit_edge
  %160 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %bus.i, align 4
  %wr_rp.i.i.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %161, i32 0, i32 5
  %162 = ptrtoint ptr %wr_rp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %wr_rp.i.i.i.i, align 4
  %call40.i.i.i.i = call i32 %163(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i.i.i) #5
  br label %mt76x0_rf_set.exit.i

if.else.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i.i.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 73, i8 noundef zeroext %conv2.i.i.i) #5
  br label %mt76x0_rf_set.exit.i

mt76x0_rf_set.exit.i:                             ; preds = %if.else.i.i.i.i, %if.end31.i.i.i.i, %mt76x0_rf_wr.exit159.i.mt76x0_rf_set.exit.i_crit_edge
  %call.i.i161.i = call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 73) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i161.i)
  %cmp.i.i162.i = icmp slt i32 %call.i.i161.i, 0
  br i1 %cmp.i.i162.i, label %mt76x0_rf_set.exit.i.mt76x0_rf_clear.exit.i_crit_edge, label %if.end.i.i166.i

mt76x0_rf_set.exit.i.mt76x0_rf_clear.exit.i_crit_edge: ; preds = %mt76x0_rf_set.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_rf_clear.exit.i

if.end.i.i166.i:                                  ; preds = %mt76x0_rf_set.exit.i
  %164 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %bus.i, align 4
  %type.i.i.i164.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %165, i32 0, i32 7
  %166 = ptrtoint ptr %type.i.i.i164.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %type.i.i.i164.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %167)
  %cmp.i.i.i165.i = icmp eq i32 %167, 1
  br i1 %cmp.i.i.i165.i, label %if.then.i.i.i170.i, label %if.else.i.i.i178.i

if.then.i.i.i170.i:                               ; preds = %if.end.i.i166.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i.i160.i) #5
  %168 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i.i160.i, i32 0, i32 1
  %169 = ptrtoint ptr %pair.i.i.i160.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 73, ptr %pair.i.i.i160.i, align 4
  %conv.i.i.i167.i = and i32 %call.i.i161.i, 127
  %170 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %conv.i.i.i167.i, ptr %168, align 4
  %171 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %state.i.i, align 4
  %173 = and i32 %172, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool.not.i.i.i169.i = icmp eq i32 %173, 0
  br i1 %tobool.not.i.i.i169.i, label %land.rhs.i.i.i172.i, label %if.then.i.i.i170.i.if.end31.i.i.i176.i_crit_edge

if.then.i.i.i170.i.if.end31.i.i.i176.i_crit_edge: ; preds = %if.then.i.i.i170.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i.i176.i

land.rhs.i.i.i172.i:                              ; preds = %if.then.i.i.i170.i
  %.b50.i.i.i171.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i.i171.i, label %land.rhs.i.i.i172.i.if.end31.i.i.i176.i_crit_edge, label %if.then10.i.i.i173.i, !prof !74

land.rhs.i.i.i172.i.if.end31.i.i.i176.i_crit_edge: ; preds = %land.rhs.i.i.i172.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i.i176.i

if.then10.i.i.i173.i:                             ; preds = %land.rhs.i.i.i172.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i.i176.i

if.end31.i.i.i176.i:                              ; preds = %if.then10.i.i.i173.i, %land.rhs.i.i.i172.i.if.end31.i.i.i176.i_crit_edge, %if.then.i.i.i170.i.if.end31.i.i.i176.i_crit_edge
  %174 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %bus.i, align 4
  %wr_rp.i.i.i174.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %175, i32 0, i32 5
  %176 = ptrtoint ptr %wr_rp.i.i.i174.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %wr_rp.i.i.i174.i, align 4
  %call40.i.i.i175.i = call i32 %177(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i.i160.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i.i160.i) #5
  br label %mt76x0_rf_clear.exit.i

if.else.i.i.i178.i:                               ; preds = %if.end.i.i166.i
  call void @__sanitizer_cov_trace_pc() #7
  %178 = trunc i32 %call.i.i161.i to i8
  %179 = and i8 %178, 127
  %call41.i.i.i177.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 73, i8 noundef zeroext %179) #5
  br label %mt76x0_rf_clear.exit.i

mt76x0_rf_clear.exit.i:                           ; preds = %if.else.i.i.i178.i, %if.end31.i.i.i176.i, %mt76x0_rf_set.exit.i.mt76x0_rf_clear.exit.i_crit_edge
  %call.i.i180.i = call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 73) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i180.i)
  %cmp.i.i181.i = icmp slt i32 %call.i.i180.i, 0
  br i1 %cmp.i.i181.i, label %mt76x0_rf_clear.exit.i.mt76x0_rf_set.exit199.i_crit_edge, label %if.end.i.i186.i

mt76x0_rf_clear.exit.i.mt76x0_rf_set.exit199.i_crit_edge: ; preds = %mt76x0_rf_clear.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_rf_set.exit199.i

if.end.i.i186.i:                                  ; preds = %mt76x0_rf_clear.exit.i
  %180 = trunc i32 %call.i.i180.i to i8
  %conv2.i.i182.i = or i8 %180, -128
  %181 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %bus.i, align 4
  %type.i.i.i184.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %182, i32 0, i32 7
  %183 = ptrtoint ptr %type.i.i.i184.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %type.i.i.i184.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %184)
  %cmp.i.i.i185.i = icmp eq i32 %184, 1
  br i1 %cmp.i.i.i185.i, label %if.then.i.i.i190.i, label %if.else.i.i.i198.i

if.then.i.i.i190.i:                               ; preds = %if.end.i.i186.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i.i179.i) #5
  %185 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i.i179.i, i32 0, i32 1
  %186 = ptrtoint ptr %pair.i.i.i179.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 73, ptr %pair.i.i.i179.i, align 4
  %conv.i.i.i187.i = zext i8 %conv2.i.i182.i to i32
  %187 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %conv.i.i.i187.i, ptr %185, align 4
  %188 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load volatile i32, ptr %state.i.i, align 4
  %190 = and i32 %189, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool.not.i.i.i189.i = icmp eq i32 %190, 0
  br i1 %tobool.not.i.i.i189.i, label %land.rhs.i.i.i192.i, label %if.then.i.i.i190.i.if.end31.i.i.i196.i_crit_edge

if.then.i.i.i190.i.if.end31.i.i.i196.i_crit_edge: ; preds = %if.then.i.i.i190.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i.i196.i

land.rhs.i.i.i192.i:                              ; preds = %if.then.i.i.i190.i
  %.b50.i.i.i191.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i.i191.i, label %land.rhs.i.i.i192.i.if.end31.i.i.i196.i_crit_edge, label %if.then10.i.i.i193.i, !prof !74

land.rhs.i.i.i192.i.if.end31.i.i.i196.i_crit_edge: ; preds = %land.rhs.i.i.i192.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i.i196.i

if.then10.i.i.i193.i:                             ; preds = %land.rhs.i.i.i192.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i.i196.i

if.end31.i.i.i196.i:                              ; preds = %if.then10.i.i.i193.i, %land.rhs.i.i.i192.i.if.end31.i.i.i196.i_crit_edge, %if.then.i.i.i190.i.if.end31.i.i.i196.i_crit_edge
  %191 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %bus.i, align 4
  %wr_rp.i.i.i194.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %192, i32 0, i32 5
  %193 = ptrtoint ptr %wr_rp.i.i.i194.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %wr_rp.i.i.i194.i, align 4
  %call40.i.i.i195.i = call i32 %194(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i.i179.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i.i179.i) #5
  br label %mt76x0_rf_set.exit199.i

if.else.i.i.i198.i:                               ; preds = %if.end.i.i186.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i.i197.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 73, i8 noundef zeroext %conv2.i.i182.i) #5
  br label %mt76x0_rf_set.exit199.i

mt76x0_rf_set.exit199.i:                          ; preds = %if.else.i.i.i198.i, %if.end31.i.i.i196.i, %mt76x0_rf_clear.exit.i.mt76x0_rf_set.exit199.i_crit_edge
  %call.i.i201.i = call fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i201.i)
  %cmp.i.i202.i = icmp slt i32 %call.i.i201.i, 0
  br i1 %cmp.i.i202.i, label %mt76x0_rf_set.exit199.i.mt76x0_phy_rf_init.exit_crit_edge, label %if.end.i.i207.i

mt76x0_rf_set.exit199.i.mt76x0_phy_rf_init.exit_crit_edge: ; preds = %mt76x0_rf_set.exit199.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_phy_rf_init.exit

if.end.i.i207.i:                                  ; preds = %mt76x0_rf_set.exit199.i
  %195 = trunc i32 %call.i.i201.i to i8
  %conv2.i.i203.i = or i8 %195, -128
  %196 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %bus.i, align 4
  %type.i.i.i205.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %197, i32 0, i32 7
  %198 = ptrtoint ptr %type.i.i.i205.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %type.i.i.i205.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %199)
  %cmp.i.i.i206.i = icmp eq i32 %199, 1
  br i1 %cmp.i.i.i206.i, label %if.then.i.i.i211.i, label %if.else.i.i.i219.i

if.then.i.i.i211.i:                               ; preds = %if.end.i.i207.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i.i200.i) #5
  %200 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i.i200.i, i32 0, i32 1
  %201 = ptrtoint ptr %pair.i.i.i200.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 4, ptr %pair.i.i.i200.i, align 4
  %conv.i.i.i208.i = zext i8 %conv2.i.i203.i to i32
  %202 = ptrtoint ptr %200 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %conv.i.i.i208.i, ptr %200, align 4
  %203 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load volatile i32, ptr %state.i.i, align 4
  %205 = and i32 %204, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool.not.i.i.i210.i = icmp eq i32 %205, 0
  br i1 %tobool.not.i.i.i210.i, label %land.rhs.i.i.i213.i, label %if.then.i.i.i211.i.if.end31.i.i.i217.i_crit_edge

if.then.i.i.i211.i.if.end31.i.i.i217.i_crit_edge: ; preds = %if.then.i.i.i211.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i.i217.i

land.rhs.i.i.i213.i:                              ; preds = %if.then.i.i.i211.i
  %.b50.i.i.i212.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i.i212.i, label %land.rhs.i.i.i213.i.if.end31.i.i.i217.i_crit_edge, label %if.then10.i.i.i214.i, !prof !74

land.rhs.i.i.i213.i.if.end31.i.i.i217.i_crit_edge: ; preds = %land.rhs.i.i.i213.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i.i217.i

if.then10.i.i.i214.i:                             ; preds = %land.rhs.i.i.i213.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i.i217.i

if.end31.i.i.i217.i:                              ; preds = %if.then10.i.i.i214.i, %land.rhs.i.i.i213.i.if.end31.i.i.i217.i_crit_edge, %if.then.i.i.i211.i.if.end31.i.i.i217.i_crit_edge
  %206 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %bus.i, align 4
  %wr_rp.i.i.i215.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %207, i32 0, i32 5
  %208 = ptrtoint ptr %wr_rp.i.i.i215.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %wr_rp.i.i.i215.i, align 4
  %call40.i.i.i216.i = call i32 %209(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i.i200.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i.i200.i) #5
  br label %mt76x0_phy_rf_init.exit

if.else.i.i.i219.i:                               ; preds = %if.end.i.i207.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i.i218.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef 4, i8 noundef zeroext %conv2.i.i203.i) #5
  br label %mt76x0_phy_rf_init.exit

mt76x0_phy_rf_init.exit:                          ; preds = %if.else.i.i.i219.i, %if.end31.i.i.i217.i, %mt76x0_rf_set.exit199.i.mt76x0_phy_rf_init.exit_crit_edge
  call void @mt76x02_phy_set_rxpath(ptr noundef %dev) #5
  call void @mt76x02_phy_set_txdac(ptr noundef %dev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt76x0_phy_calibration_work(ptr noundef %work) #0 align 64 {
entry:
  %pair.i153.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i135.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i118.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i101.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i84.i = alloca %struct.mt76_reg_pair, align 4
  %pair.i.i = alloca %struct.mt76_reg_pair, align 4
  %bound.i.i = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -11228
  %call.i = tail call i32 @mt76_get_min_avg_rssi(ptr noundef %add.ptr, i1 noundef zeroext false) #5
  %conv.i = trunc i32 %call.i to i8
  %avg_rssi_all.i = getelementptr i8, ptr %work, i32 334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool.not.i = icmp eq i8 %conv.i, 0
  %spec.select.i = select i1 %tobool.not.i, i8 -75, i8 %conv.i
  %0 = ptrtoint ptr %avg_rssi_all.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %spec.select.i, ptr %avg_rssi_all.i, align 2
  %conv7.i = sext i8 %spec.select.i to i32
  %width.i.i = getelementptr i8, ptr %work, i32 -11180
  %1 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch.selectcmp.i.i = icmp eq i32 %2, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 -65, i32 -68
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %switch.selectcmp2.i.i = icmp eq i32 %2, 3
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 -62, i32 %switch.select.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.select3.i.i, i32 %conv7.i)
  %cmp.i = icmp slt i32 %switch.select3.i.i, %conv7.i
  %conv9.i = zext i1 %cmp.i to i32
  %switch.select.i76.i = select i1 %switch.selectcmp.i.i, i32 -79, i32 -82
  %switch.select3.i78.i = select i1 %switch.selectcmp2.i.i, i32 -76, i32 %switch.select.i76.i
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.select3.i78.i, i32 %conv7.i)
  %cmp14.i = icmp slt i32 %switch.select3.i78.i, %conv7.i
  %conv15.i = zext i1 %cmp14.i to i32
  %add.i = add nuw nsw i32 %conv9.i, %conv15.i
  %low_gain17.i = getelementptr i8, ptr %work, i32 337
  %3 = ptrtoint ptr %low_gain17.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %low_gain17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp19.i = icmp slt i8 %4, 0
  %5 = and i8 %4, 2
  %and.i = zext i8 %5 to i32
  %and24.i = and i32 %add.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %and24.i, i32 %and.i)
  %tobool25.i = icmp ne i32 %and24.i, %and.i
  %6 = select i1 %cmp19.i, i1 true, i1 %tobool25.i
  %conv26.i = trunc i32 %add.i to i8
  %7 = ptrtoint ptr %low_gain17.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv26.i, ptr %low_gain17.i, align 1
  br i1 %6, label %if.end34.i, label %if.then30.i

if.then30.i:                                      ; preds = %entry
  %call31.i = tail call zeroext i1 @mt76x02_phy_adjust_vga_gain(ptr noundef %add.ptr) #5
  br i1 %call31.i, label %do.end16.i.i, label %if.then30.i.mt76x0_phy_update_channel_gain.exit_crit_edge

if.then30.i.mt76x0_phy_update_channel_gain.exit_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_phy_update_channel_gain.exit

do.end16.i.i:                                     ; preds = %if.then30.i
  %agc_gain_cur.i.i = getelementptr i8, ptr %work, i32 330
  %8 = ptrtoint ptr %agc_gain_cur.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %agc_gain_cur.i.i, align 2
  %agc_gain_adjust.i.i = getelementptr i8, ptr %work, i32 335
  %10 = ptrtoint ptr %agc_gain_adjust.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %agc_gain_adjust.i.i, align 1
  %sub.i.i = sub i8 %9, %11
  %bus.i.i = getelementptr i8, ptr %work, i32 -10256
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 4
  %rmw.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmw.i.i, align 4
  %conv17.i.i = zext i8 %sub.i.i to i32
  %shl.i.i = shl nuw nsw i32 %conv17.i.i, 8
  %and18.i.i = and i32 %shl.i.i, 32512
  %call.i.i = tail call i32 %15(ptr noundef %add.ptr, i32 noundef 8992, i32 noundef 32512, i32 noundef %and18.i.i) #5
  %chandef.i.i = getelementptr i8, ptr %work, i32 -11184
  %16 = ptrtoint ptr %chandef.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chandef.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i.i, align 4
  %and19.i.i = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool20.not.i.i, label %do.end16.i.i.mt76x0_phy_update_channel_gain.exit_crit_edge, label %land.lhs.true.i.i

do.end16.i.i.mt76x0_phy_update_channel_gain.exit_crit_edge: ; preds = %do.end16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_phy_update_channel_gain.exit

land.lhs.true.i.i:                                ; preds = %do.end16.i.i
  %rev.i.i.i.i = getelementptr i8, ptr %work, i32 -1136
  %20 = ptrtoint ptr %rev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rev.i.i.i.i, align 4
  %shr.i.mask.i.i.i = and i32 %21, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1982857216, i32 %shr.i.mask.i.i.i)
  %cmp.i.i.i = icmp eq i32 %shr.i.mask.i.i.i, 1982857216
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.mt76x0_phy_update_channel_gain.exit_crit_edge, label %if.then22.i.i

land.lhs.true.i.i.mt76x0_phy_update_channel_gain.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_phy_update_channel_gain.exit

if.then22.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mt76x02_phy_dfs_adjust_agc(ptr noundef %add.ptr) #5
  br label %mt76x0_phy_update_channel_gain.exit

if.end34.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.i)
  %cmp35.i = icmp eq i32 %add.i, 2
  %conv37.i = select i1 %cmp35.i, i8 0, i8 10
  %agc_gain_adjust.i = getelementptr i8, ptr %work, i32 335
  %22 = ptrtoint ptr %agc_gain_adjust.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv37.i, ptr %agc_gain_adjust.i, align 1
  %agc_gain_init.i = getelementptr i8, ptr %work, i32 328
  %23 = ptrtoint ptr %agc_gain_init.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %agc_gain_init.i, align 4
  %conv45.neg.i = select i1 %cmp35.i, i8 -10, i8 0
  %sub.i = add i8 %24, %conv45.neg.i
  %agc_gain_cur.i = getelementptr i8, ptr %work, i32 330
  %25 = ptrtoint ptr %agc_gain_cur.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %sub.i, ptr %agc_gain_cur.i, align 2
  %sub.i81.i = sub i8 %sub.i, %conv37.i
  %bus.i86.i = getelementptr i8, ptr %work, i32 -10256
  %26 = ptrtoint ptr %bus.i86.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus.i86.i, align 4
  %rmw.i87.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %rmw.i87.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmw.i87.i, align 4
  %conv17.i88.i = zext i8 %sub.i81.i to i32
  %shl.i89.i = shl nuw nsw i32 %conv17.i88.i, 8
  %and18.i90.i = and i32 %shl.i89.i, 32512
  %call.i91.i = tail call i32 %29(ptr noundef %add.ptr, i32 noundef 8992, i32 noundef 32512, i32 noundef %and18.i90.i) #5
  %chandef.i92.i = getelementptr i8, ptr %work, i32 -11184
  %30 = ptrtoint ptr %chandef.i92.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chandef.i92.i, align 4
  %flags.i93.i = getelementptr inbounds %struct.ieee80211_channel, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %flags.i93.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i93.i, align 4
  %and19.i94.i = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i94.i)
  %tobool20.not.i95.i = icmp eq i32 %and19.i94.i, 0
  br i1 %tobool20.not.i95.i, label %if.end34.i.mt76x0_phy_set_gain_val.exit102.i_crit_edge, label %land.lhs.true.i100.i

if.end34.i.mt76x0_phy_set_gain_val.exit102.i_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_phy_set_gain_val.exit102.i

land.lhs.true.i100.i:                             ; preds = %if.end34.i
  %rev.i.i.i97.i = getelementptr i8, ptr %work, i32 -1136
  %34 = ptrtoint ptr %rev.i.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rev.i.i.i97.i, align 4
  %shr.i.mask.i.i98.i = and i32 %35, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1982857216, i32 %shr.i.mask.i.i98.i)
  %cmp.i.i99.i = icmp eq i32 %shr.i.mask.i.i98.i, 1982857216
  br i1 %cmp.i.i99.i, label %land.lhs.true.i100.i.mt76x0_phy_set_gain_val.exit102.i_crit_edge, label %if.then22.i101.i

land.lhs.true.i100.i.mt76x0_phy_set_gain_val.exit102.i_crit_edge: ; preds = %land.lhs.true.i100.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_phy_set_gain_val.exit102.i

if.then22.i101.i:                                 ; preds = %land.lhs.true.i100.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mt76x02_phy_dfs_adjust_agc(ptr noundef %add.ptr) #5
  br label %mt76x0_phy_set_gain_val.exit102.i

mt76x0_phy_set_gain_val.exit102.i:                ; preds = %if.then22.i101.i, %land.lhs.true.i100.i.mt76x0_phy_set_gain_val.exit102.i_crit_edge, %if.end34.i.mt76x0_phy_set_gain_val.exit102.i_crit_edge
  %36 = ptrtoint ptr %bus.i86.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i86.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %call49.i = tail call i32 %39(ptr noundef %add.ptr, i32 noundef 5892) #5
  br label %mt76x0_phy_update_channel_gain.exit

mt76x0_phy_update_channel_gain.exit:              ; preds = %mt76x0_phy_set_gain_val.exit102.i, %if.then22.i.i, %land.lhs.true.i.i.mt76x0_phy_update_channel_gain.exit_crit_edge, %do.end16.i.i.mt76x0_phy_update_channel_gain.exit_crit_edge, %if.then30.i.mt76x0_phy_update_channel_gain.exit_crit_edge
  %eeprom.i.i = getelementptr i8, ptr %work, i32 -972
  %40 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %eeprom.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 54
  %42 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %add.ptr.i.i, align 1
  %44 = and i16 %43, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool.i.not = icmp eq i16 %44, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %mt76x0_phy_update_channel_gain.exit
  %chandef.i.i6 = getelementptr i8, ptr %work, i32 -11184
  %45 = ptrtoint ptr %chandef.i.i6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chandef.i.i6, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp.i.i = icmp eq i32 %48, 1
  %cond.i.i = select i1 %cmp.i.i, i32 524373, i32 524368
  %bus.i.i7 = getelementptr i8, ptr %work, i32 -10256
  %49 = ptrtoint ptr %bus.i.i7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bus.i.i7, align 4
  %wr.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wr.i.i, align 4
  tail call void %52(ptr noundef %add.ptr, i32 noundef 8328, i32 noundef %cond.i.i) #5
  %call.i.i8 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %add.ptr, i32 noundef 8328, i32 noundef 16, i32 noundef 0, i32 noundef 200) #5
  %53 = ptrtoint ptr %bus.i.i7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus.i.i7, align 4
  br i1 %call.i.i8, label %if.end.i.i, label %mt76x0_phy_tssi_adc_calibrate.exit.thread.i

mt76x0_phy_tssi_adc_calibrate.exit.thread.i:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %rmw.i.i9 = getelementptr inbounds %struct.mt76_bus_ops, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %rmw.i.i9 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rmw.i.i9, align 4
  %call3.i.i = tail call i32 %56(ptr noundef %add.ptr, i32 noundef 8328, i32 noundef 16, i32 noundef 0) #5
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %54, align 4
  %call5.i.i = tail call i32 %58(ptr noundef %add.ptr, i32 noundef 8332) #5
  %59 = trunc i32 %call5.i.i to i16
  %conv.i.i = and i16 %59, 255
  %60 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp7.i.i = icmp eq i32 %61, 1
  %narrow.i.i = add nuw nsw i16 %conv.i.i, 128
  %spec.select.i10 = select i1 %cmp7.i.i, i16 %narrow.i.i, i16 %conv.i.i
  %62 = ptrtoint ptr %bus.i.i7 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bus.i.i7, align 4
  %wr14.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %wr14.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wr14.i.i, align 4
  tail call void %65(ptr noundef %add.ptr, i32 noundef 8328, i32 noundef 524353) #5
  %66 = ptrtoint ptr %bus.i.i7 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bus.i.i7, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %call17.i.i = tail call i32 %69(ptr noundef %add.ptr, i32 noundef 8332) #5
  %70 = ptrtoint ptr %bus.i.i7 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bus.i.i7, align 4
  %wr21.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %wr21.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %wr21.i.i, align 4
  tail call void %73(ptr noundef %add.ptr, i32 noundef 8328, i32 noundef 524354) #5
  %74 = ptrtoint ptr %bus.i.i7 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bus.i.i7, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %call24.i.i = tail call i32 %77(ptr noundef %add.ptr, i32 noundef 8332) #5
  %conv26.i.i = trunc i32 %call24.i.i to i8
  %78 = ptrtoint ptr %bus.i.i7 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bus.i.i7, align 4
  %wr29.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %wr29.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wr29.i.i, align 4
  tail call void %81(ptr noundef %add.ptr, i32 noundef 8328, i32 noundef 524355) #5
  %82 = ptrtoint ptr %bus.i.i7 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bus.i.i7, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %call32.i.i = tail call i32 %85(ptr noundef %add.ptr, i32 noundef 8332) #5
  %86 = ptrtoint ptr %bus.i.i7 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bus.i.i7, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %call.i42.i = tail call i32 %89(ptr noundef %add.ptr, i32 noundef 5040) #5
  %90 = trunc i32 %call.i42.i to i8
  %conv.i43.i = and i8 %90, 63
  %trunc.i = trunc i32 %call17.i.i to i3
  %91 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.40)
  switch i3 %trunc.i, label %sw.default56.i.i [
    i3 0, label %if.end.i44.i
    i3 1, label %sw.bb12.i.i
    i3 -4, label %sw.bb38.i.i
  ]

if.end.i44.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %92 = lshr i32 %call17.i.i, 5
  %93 = and i32 %92, 3
  %rate_power.i.i = getelementptr i8, ptr %work, i32 -956
  %arrayidx8.i.i = getelementptr [4 x i8], ptr %rate_power.i.i, i32 0, i32 %93
  %94 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx8.i.i, align 1
  %96 = ptrtoint ptr %bus.i.i7 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bus.i.i7, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %call.i.i.i = tail call i32 %99(ptr noundef %add.ptr, i32 noundef 4636) #5
  %mul.i.i.i = shl nuw nsw i32 %93, 1
  %shl.i.i.i = shl nuw nsw i32 3, %mul.i.i.i
  %and.i.i.i = and i32 %call.i.i.i, %shl.i.i.i
  %shr.i.i.i = lshr i32 %and.i.i.i, %mul.i.i.i
  br label %if.end7.i

sw.bb12.i.i:                                      ; preds = %if.end.i.i
  %100 = lshr i32 %call17.i.i, 4
  %conv18.i.i = and i32 %100, 15
  %switch.tableidx = add nsw i32 %conv18.i.i, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %101 = icmp ult i32 %switch.tableidx, 8
  br i1 %101, label %switch.lookup, label %sw.bb12.i.i.if.end_crit_edge

sw.bb12.i.i.if.end_crit_edge:                     ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

switch.lookup:                                    ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.mt76x0_phy_calibration_work, i32 0, i32 %switch.tableidx
  %102 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %102)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx30.i.i = getelementptr %struct.mt76_dev, ptr %add.ptr, i32 0, i32 46, i32 0, i32 0, i32 1, i32 %switch.load
  %103 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx30.i.i, align 1
  %105 = ptrtoint ptr %bus.i.i7 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %bus.i.i7, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %call.i109.i.i = tail call i32 %108(ptr noundef %add.ptr, i32 noundef 4636) #5
  %conv36.i.i = shl nuw nsw i32 %switch.load, 1
  %mul.i111.i.i = add nuw nsw i32 %conv36.i.i, 8
  %shl.i112.i.i = shl nuw nsw i32 768, %conv36.i.i
  %and.i113.i.i = and i32 %call.i109.i.i, %shl.i112.i.i
  %shr.i114.i.i = lshr i32 %and.i113.i.i, %mul.i111.i.i
  br label %if.end7.i

sw.bb38.i.i:                                      ; preds = %if.end.i.i
  %109 = and i8 %conv26.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %109)
  %cmp44.i.i = icmp ugt i8 %109, 9
  br i1 %cmp44.i.i, label %sw.bb38.i.i.if.end_crit_edge, label %if.end47.i.i

sw.bb38.i.i.if.end_crit_edge:                     ; preds = %sw.bb38.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end47.i.i:                                     ; preds = %sw.bb38.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv43.i.i = zext i8 %109 to i32
  %arrayidx51.i.i = getelementptr %struct.mt76_dev, ptr %add.ptr, i32 0, i32 46, i32 0, i32 0, i32 4, i32 %conv43.i.i
  %110 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx51.i.i, align 1
  %112 = ptrtoint ptr %bus.i.i7 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bus.i.i7, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %call.i117.i.i = tail call i32 %115(ptr noundef %add.ptr, i32 noundef 4640) #5
  %mul.i119.i.i = shl nuw nsw i32 %conv43.i.i, 1
  %shl.i120.i.i = shl nuw nsw i32 3, %mul.i119.i.i
  %and.i121.i.i = and i32 %call.i117.i.i, %shl.i120.i.i
  %shr.i122.i.i = lshr i32 %and.i121.i.i, %mul.i119.i.i
  br label %if.end7.i

sw.default56.i.i:                                 ; preds = %if.end.i.i
  %116 = and i8 %conv26.i.i, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %116)
  %cmp62.i.i = icmp ugt i8 %116, 9
  br i1 %cmp62.i.i, label %sw.default56.i.i.if.end_crit_edge, label %if.end65.i.i

sw.default56.i.i.if.end_crit_edge:                ; preds = %sw.default56.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end65.i.i:                                     ; preds = %sw.default56.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv61.i.i = zext i8 %116 to i32
  %arrayidx69.i.i = getelementptr %struct.mt76_dev, ptr %add.ptr, i32 0, i32 46, i32 0, i32 0, i32 3, i32 %conv61.i.i
  %117 = ptrtoint ptr %arrayidx69.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx69.i.i, align 1
  %119 = ptrtoint ptr %bus.i.i7 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bus.i.i7, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %call.i125.i.i = tail call i32 %122(ptr noundef %add.ptr, i32 noundef 4640) #5
  %mul.i127.i.i = shl nuw nsw i32 %conv61.i.i, 1
  %shl.i128.i.i = shl nuw nsw i32 3, %mul.i127.i.i
  %and.i129.i.i = and i32 %call.i125.i.i, %shl.i128.i.i
  %shr.i130.i.i = lshr i32 %and.i129.i.i, %mul.i127.i.i
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end65.i.i, %if.end47.i.i, %switch.lookup, %if.end.i44.i
  %.pn.i = phi i8 [ %118, %if.end65.i.i ], [ %111, %if.end47.i.i ], [ %104, %switch.lookup ], [ %95, %if.end.i44.i ]
  %shr.i.sink.i.i = phi i32 [ %shr.i130.i.i, %if.end65.i.i ], [ %shr.i122.i.i, %if.end47.i.i ], [ %shr.i114.i.i, %switch.lookup ], [ %shr.i.i.i, %if.end.i44.i ]
  %target_power.0.i = add i8 %.pn.i, %conv.i43.i
  %123 = ptrtoint ptr %chandef.i.i6 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %chandef.i.i6, align 4
  %conv.i46.i = sext i8 %target_power.0.i to i32
  %shl.i.i11 = shl nsw i32 %conv.i46.i, 12
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %126)
  %cmp.i47.i = icmp eq i32 %126, 1
  br i1 %cmp.i47.i, label %if.then.i49.i, label %if.else.i.i

if.then.i49.i:                                    ; preds = %if.end7.i
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %bound.i.i) #5
  %127 = getelementptr inbounds [7 x i8], ptr %bound.i.i, i32 0, i32 1
  %128 = getelementptr inbounds [7 x i8], ptr %bound.i.i, i32 0, i32 2
  %129 = getelementptr inbounds [7 x i8], ptr %bound.i.i, i32 0, i32 3
  %130 = getelementptr inbounds [7 x i8], ptr %bound.i.i, i32 0, i32 4
  %131 = getelementptr inbounds [7 x i8], ptr %bound.i.i, i32 0, i32 5
  %132 = getelementptr inbounds [7 x i8], ptr %bound.i.i, i32 0, i32 6
  %133 = call ptr @memset(ptr %bound.i.i, i32 255, i32 7)
  %call.i48.i = call i32 @mt76x02_eeprom_copy(ptr noundef %add.ptr, i32 noundef 212, ptr noundef nonnull %bound.i.i, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i)
  %cmp3.i.i = icmp slt i32 %call.i48.i, 0
  br i1 %cmp3.i.i, label %cleanup.thread.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.then.i49.i
  %hw_value.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %124, i32 0, i32 3
  %134 = ptrtoint ptr %hw_value.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %hw_value.i.i, align 2
  %136 = ptrtoint ptr %bound.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %bound.i.i, align 1
  %138 = zext i8 %137 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %135, i16 %138)
  %cmp10.not.i.i = icmp ule i16 %135, %138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool.not.i.i12 = icmp eq i8 %137, 0
  %or.cond.i.i13 = or i1 %tobool.not.i.i12, %cmp10.not.i.i
  br i1 %or.cond.i.i13, label %for.cond.preheader.i.i.cleanup.i.i_crit_edge, label %for.inc.i.i

for.cond.preheader.i.i.cleanup.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i.i

cleanup.thread.i.i:                               ; preds = %if.then.i49.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %bound.i.i) #5
  br label %do.end25.i

for.inc.i.i:                                      ; preds = %for.cond.preheader.i.i
  %139 = ptrtoint ptr %127 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %127, align 1
  %141 = zext i8 %140 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %135, i16 %141)
  %cmp10.not.1.i.i = icmp ule i16 %135, %141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.1.i.i = icmp eq i8 %140, 0
  %or.cond.1.i.i = or i1 %tobool.not.1.i.i, %cmp10.not.1.i.i
  br i1 %or.cond.1.i.i, label %for.inc.i.i.cleanup.i.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.cleanup.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %142 = ptrtoint ptr %128 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %128, align 1
  %144 = zext i8 %143 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %135, i16 %144)
  %cmp10.not.2.i.i = icmp ule i16 %135, %144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool.not.2.i.i = icmp eq i8 %143, 0
  %or.cond.2.i.i = or i1 %tobool.not.2.i.i, %cmp10.not.2.i.i
  br i1 %or.cond.2.i.i, label %for.inc.1.i.i.cleanup.i.i_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.cleanup.i.i_crit_edge:              ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %145 = ptrtoint ptr %129 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %129, align 1
  %147 = zext i8 %146 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %135, i16 %147)
  %cmp10.not.3.i.i = icmp ule i16 %135, %147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool.not.3.i.i = icmp eq i8 %146, 0
  %or.cond.3.i.i = or i1 %tobool.not.3.i.i, %cmp10.not.3.i.i
  br i1 %or.cond.3.i.i, label %for.inc.2.i.i.cleanup.i.i_crit_edge, label %for.inc.3.i.i

for.inc.2.i.i.cleanup.i.i_crit_edge:              ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %148 = ptrtoint ptr %130 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %130, align 1
  %150 = zext i8 %149 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %135, i16 %150)
  %cmp10.not.4.i.i = icmp ule i16 %135, %150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool.not.4.i.i = icmp eq i8 %149, 0
  %or.cond.4.i.i = or i1 %tobool.not.4.i.i, %cmp10.not.4.i.i
  br i1 %or.cond.4.i.i, label %for.inc.3.i.i.cleanup.i.i_crit_edge, label %for.inc.4.i.i

for.inc.3.i.i.cleanup.i.i_crit_edge:              ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %151 = ptrtoint ptr %131 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %131, align 1
  %153 = zext i8 %152 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %135, i16 %153)
  %cmp10.not.5.i.i = icmp ule i16 %135, %153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool.not.5.i.i = icmp eq i8 %152, 0
  %or.cond.5.i.i = or i1 %tobool.not.5.i.i, %cmp10.not.5.i.i
  br i1 %or.cond.5.i.i, label %for.inc.4.i.i.cleanup.i.i_crit_edge, label %for.inc.5.i.i

for.inc.4.i.i.cleanup.i.i_crit_edge:              ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %154 = ptrtoint ptr %132 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %132, align 1
  %156 = zext i8 %155 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %135, i16 %156)
  %cmp10.not.6.i.i = icmp ule i16 %135, %156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.6.i.i = icmp eq i8 %155, 0
  %or.cond.6.i.i = or i1 %tobool.not.6.i.i, %cmp10.not.6.i.i
  %spec.select342.i.i = select i1 %or.cond.6.i.i, i32 252, i32 254
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %for.inc.5.i.i, %for.inc.4.i.i.cleanup.i.i_crit_edge, %for.inc.3.i.i.cleanup.i.i_crit_edge, %for.inc.2.i.i.cleanup.i.i_crit_edge, %for.inc.1.i.i.cleanup.i.i_crit_edge, %for.inc.i.i.cleanup.i.i_crit_edge, %for.cond.preheader.i.i.cleanup.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 240, %for.cond.preheader.i.i.cleanup.i.i_crit_edge ], [ 242, %for.inc.i.i.cleanup.i.i_crit_edge ], [ 244, %for.inc.1.i.i.cleanup.i.i_crit_edge ], [ 246, %for.inc.2.i.i.cleanup.i.i_crit_edge ], [ 248, %for.inc.3.i.i.cleanup.i.i_crit_edge ], [ 250, %for.inc.4.i.i.cleanup.i.i_crit_edge ], [ %spec.select342.i.i, %for.inc.5.i.i ]
  %157 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %eeprom.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %158, i32 %i.0.lcssa.i.i
  %159 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %159, i32 2)
  %160 = load i16, ptr %add.ptr.i.i.i, align 1
  %161 = call i16 @llvm.bswap.i16(i16 %160) #5
  %conv.i.i.i = zext i16 %161 to i32
  %conv17.i.i14 = lshr i32 %conv.i.i.i, 8
  %162 = and i32 %conv.i.i.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %162)
  %163 = icmp ne i32 %162, 16384
  %164 = and i32 %conv.i.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool23.not.i.i = icmp eq i32 %164, 0
  %or.cond305.i.i = and i1 %163, %tobool23.not.i.i
  %masksel334.i.i = select i1 %or.cond305.i.i, i32 0, i32 -256
  %tssi_offset.0.i.i = or i32 %masksel334.i.i, %conv17.i.i14
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %bound.i.i) #5
  br label %if.end37.i.i

if.else.i.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %165 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %eeprom.i.i, align 16
  %add.ptr.i318.i.i = getelementptr i8, ptr %166, i32 110
  %167 = ptrtoint ptr %add.ptr.i318.i.i to i32
  call void @__asan_loadN_noabort(i32 %167, i32 2)
  %168 = load i16, ptr %add.ptr.i318.i.i, align 1
  %169 = tail call i16 @llvm.bswap.i16(i16 %168) #5
  %conv.i319.i.i = zext i16 %169 to i32
  %conv30.i.i = lshr i32 %conv.i319.i.i, 8
  %170 = and i32 %conv.i319.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool33.not.i.i = icmp eq i32 %170, 0
  %sub35.i.i = or i32 %conv30.i.i, -256
  %spec.select.i.i = select i1 %tobool33.not.i.i, i32 %conv30.i.i, i32 %sub35.i.i
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.else.i.i, %cleanup.i.i
  %tssi_offset.2.i.i = phi i32 [ %tssi_offset.0.i.i, %cleanup.i.i ], [ %spec.select.i.i, %if.else.i.i ]
  %val.1.i.i = phi i32 [ %conv.i.i.i, %cleanup.i.i ], [ %conv.i319.i.i, %if.else.i.i ]
  %and39.i.i = and i32 %val.1.i.i, 255
  %sext.i = shl i32 %shr.i.sink.i.i, 24
  %conv40.i.i = ashr exact i32 %sext.i, 24
  %171 = zext i32 %conv40.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %conv40.i.i, label %sw.default.i.i [
    i32 1, label %sw.bb.i.i
    i32 0, label %if.end37.i.i.sw.epilog.i50.i_crit_edge
  ]

if.end37.i.i.sw.epilog.i50.i_crit_edge:           ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i50.i

sw.bb.i.i:                                        ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %172 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp42.i.i = icmp eq i32 %173, 0
  %add45.i.i = add nsw i32 %shl.i.i11, 29491
  %spec.select306.i.i = select i1 %cmp42.i.i, i32 %add45.i.i, i32 %shl.i.i11
  br label %sw.epilog.i50.i

sw.default.i.i:                                   ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add47.i.i = add nsw i32 %shl.i.i11, 4424
  br label %sw.epilog.i50.i

sw.epilog.i50.i:                                  ; preds = %sw.default.i.i, %sw.bb.i.i, %if.end37.i.i.sw.epilog.i50.i_crit_edge
  %tssi_target.0.i.i = phi i32 [ %add47.i.i, %sw.default.i.i ], [ %shl.i.i11, %if.end37.i.i.sw.epilog.i50.i_crit_edge ], [ %spec.select306.i.i, %sw.bb.i.i ]
  %174 = and i32 %call17.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool48.not.i.i = icmp eq i32 %174, 0
  br i1 %tobool48.not.i.i, label %if.then49.i.i, label %sw.epilog.i50.i.if.end68.i.i_crit_edge

sw.epilog.i50.i.if.end68.i.i_crit_edge:           ; preds = %sw.epilog.i50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68.i.i

if.then49.i.i:                                    ; preds = %sw.epilog.i50.i
  %175 = ptrtoint ptr %bus.i.i7 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %bus.i.i7, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 4
  %call50.i.i = call i32 %178(ptr noundef %add.ptr, i32 noundef 8196) #5
  %rev.i.i.i.i15 = getelementptr i8, ptr %work, i32 -1136
  %179 = ptrtoint ptr %rev.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %rev.i.i.i.i15, align 4
  %shr.i.mask.i.i.i16 = and i32 %180, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1982857216, i32 %shr.i.mask.i.i.i16)
  %cmp.i322.i.i = icmp eq i32 %shr.i.mask.i.i.i16, 1982857216
  br i1 %cmp.i322.i.i, label %land.lhs.true53.i.i, label %if.then49.i.i.if.else61.i.i_crit_edge

if.then49.i.i.if.else61.i.i_crit_edge:            ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else61.i.i

land.lhs.true53.i.i:                              ; preds = %if.then49.i.i
  %181 = ptrtoint ptr %bus.i.i7 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %bus.i.i7, align 4
  %type.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %182, i32 0, i32 7
  %183 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp55.i.i = icmp eq i32 %184, 0
  br i1 %cmp55.i.i, label %if.then57.i.i, label %land.lhs.true53.i.i.if.else61.i.i_crit_edge

land.lhs.true53.i.i.if.else61.i.i_crit_edge:      ; preds = %land.lhs.true53.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else61.i.i

if.then57.i.i:                                    ; preds = %land.lhs.true53.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %and58.i.i = and i32 %call50.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i.i)
  %tobool59.not.i.i = icmp eq i32 %and58.i.i, 0
  %cond.i52.i = select i1 %tobool59.not.i.i, i32 12288, i32 18841
  %add60.i.i = add nsw i32 %cond.i52.i, %tssi_target.0.i.i
  br label %if.end68.i.i

if.else61.i.i:                                    ; preds = %land.lhs.true53.i.i.if.else61.i.i_crit_edge, %if.then49.i.i.if.else61.i.i_crit_edge
  %and62.i.i = and i32 %call50.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i.i)
  %tobool63.not.i.i = icmp eq i32 %and62.i.i, 0
  %add65.i.i = add nsw i32 %tssi_target.0.i.i, 6554
  %spec.select307.i.i = select i1 %tobool63.not.i.i, i32 %tssi_target.0.i.i, i32 %add65.i.i
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %if.else61.i.i, %if.then57.i.i, %sw.epilog.i50.i.if.end68.i.i_crit_edge
  %tssi_target.1.i.i = phi i32 [ %tssi_target.0.i.i, %sw.epilog.i50.i.if.end68.i.i_crit_edge ], [ %add60.i.i, %if.then57.i.i ], [ %spec.select307.i.i, %if.else61.i.i ]
  %185 = ptrtoint ptr %bus.i.i7 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %bus.i.i7, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %186, align 4
  %call71.i.i = call i32 %188(ptr noundef %add.ptr, i32 noundef 10000) #5
  %and72.i.i = and i32 %call71.i.i, 3
  %189 = zext i32 %and72.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %and72.i.i, label %if.end68.i.i.sw.epilog80.i.i_crit_edge [
    i32 1, label %sw.bb73.i.i
    i32 2, label %sw.bb75.i.i
    i32 3, label %sw.bb77.i.i
  ]

if.end68.i.i.sw.epilog80.i.i_crit_edge:           ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog80.i.i

sw.bb73.i.i:                                      ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub74.i.i = add nsw i32 %tssi_target.1.i.i, -49152
  br label %sw.epilog80.i.i

sw.bb75.i.i:                                      ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub76.i.i = add nsw i32 %tssi_target.1.i.i, -98304
  br label %sw.epilog80.i.i

sw.bb77.i.i:                                      ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add78.i.i = add nsw i32 %tssi_target.1.i.i, 49152
  br label %sw.epilog80.i.i

sw.epilog80.i.i:                                  ; preds = %sw.bb77.i.i, %sw.bb75.i.i, %sw.bb73.i.i, %if.end68.i.i.sw.epilog80.i.i_crit_edge
  %tssi_target.2.i.i = phi i32 [ %tssi_target.1.i.i, %if.end68.i.i.sw.epilog80.i.i_crit_edge ], [ %add78.i.i, %sw.bb77.i.i ], [ %sub76.i.i, %sw.bb75.i.i ], [ %sub74.i.i, %sw.bb73.i.i ]
  %tssi_dc.i.i = getelementptr i8, ptr %work, i32 352
  %190 = ptrtoint ptr %tssi_dc.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %tssi_dc.i.i, align 4
  %conv82.i.i = sext i8 %191 to i16
  %sub83.i.i = sub nsw i16 %spec.select.i10, %conv82.i.i
  %conv.i323.i.i = zext i16 %sub83.i.i to i32
  %shl.i.i53.i = shl nuw nsw i32 %conv.i323.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %sub83.i.i)
  %cmp.i324.i.i = icmp ult i16 %sub83.i.i, 2048
  br i1 %cmp.i324.i.i, label %while.body.2.i.i.i, label %sw.epilog80.i.i.while.cond6.i.i.i.preheader_crit_edge

sw.epilog80.i.i.while.cond6.i.i.i.preheader_crit_edge: ; preds = %sw.epilog80.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond6.i.i.i.preheader

while.body.2.i.i.i:                               ; preds = %sw.epilog80.i.i
  %shl2.2.i.i.i = shl nuw nsw i32 %conv.i323.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %sub83.i.i)
  %cmp.3.i.i.i = icmp ult i16 %sub83.i.i, 256
  br i1 %cmp.3.i.i.i, label %while.body.3.i.i.i, label %while.body.2.i.i.i.while.cond6.i.i.i.preheader_crit_edge

while.body.2.i.i.i.while.cond6.i.i.i.preheader_crit_edge: ; preds = %while.body.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond6.i.i.i.preheader

while.body.3.i.i.i:                               ; preds = %while.body.2.i.i.i
  %shl2.3.i.i.i = shl nuw nsw i32 %conv.i323.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %sub83.i.i)
  %cmp.4.i.i.i = icmp ult i16 %sub83.i.i, 128
  br i1 %cmp.4.i.i.i, label %while.body.4.i.i.i, label %while.body.3.i.i.i.while.cond6.i.i.i.preheader_crit_edge

while.body.3.i.i.i.while.cond6.i.i.i.preheader_crit_edge: ; preds = %while.body.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond6.i.i.i.preheader

while.body.4.i.i.i:                               ; preds = %while.body.3.i.i.i
  %shl2.4.i.i.i = shl nuw nsw i32 %conv.i323.i.i, 9
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %sub83.i.i)
  %cmp.5.i.i.i = icmp ult i16 %sub83.i.i, 64
  br i1 %cmp.5.i.i.i, label %while.body.5.i.i.i, label %while.body.4.i.i.i.while.cond6.i.i.i.preheader_crit_edge

while.body.4.i.i.i.while.cond6.i.i.i.preheader_crit_edge: ; preds = %while.body.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond6.i.i.i.preheader

while.body.5.i.i.i:                               ; preds = %while.body.4.i.i.i
  %shl2.5.i.i.i = shl nuw nsw i32 %conv.i323.i.i, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %sub83.i.i)
  %cmp.6.i.i.i = icmp ult i16 %sub83.i.i, 32
  br i1 %cmp.6.i.i.i, label %while.body.6.i.i.i, label %while.body.5.i.i.i.while.cond6.i.i.i.preheader_crit_edge

while.body.5.i.i.i.while.cond6.i.i.i.preheader_crit_edge: ; preds = %while.body.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond6.i.i.i.preheader

while.body.6.i.i.i:                               ; preds = %while.body.5.i.i.i
  %shl2.6.i.i.i = shl nuw nsw i32 %conv.i323.i.i, 11
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %sub83.i.i)
  %cmp.7.i.i.i = icmp ult i16 %sub83.i.i, 16
  br i1 %cmp.7.i.i.i, label %while.body.7.i.i.i, label %while.body.6.i.i.i.while.cond6.i.i.i.preheader_crit_edge

while.body.6.i.i.i.while.cond6.i.i.i.preheader_crit_edge: ; preds = %while.body.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond6.i.i.i.preheader

while.body.7.i.i.i:                               ; preds = %while.body.6.i.i.i
  %shl2.7.i.i.i = shl nuw nsw i32 %conv.i323.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %sub83.i.i)
  %cmp.8.i.i.i = icmp ult i16 %sub83.i.i, 8
  br i1 %cmp.8.i.i.i, label %while.body.8.i.i.i, label %while.body.7.i.i.i.while.cond6.i.i.i.preheader_crit_edge

while.body.7.i.i.i.while.cond6.i.i.i.preheader_crit_edge: ; preds = %while.body.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond6.i.i.i.preheader

while.body.8.i.i.i:                               ; preds = %while.body.7.i.i.i
  %shl2.8.i.i.i = shl nuw nsw i32 %conv.i323.i.i, 13
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %sub83.i.i)
  %cmp.9.i.i.i = icmp ult i16 %sub83.i.i, 4
  br i1 %cmp.9.i.i.i, label %while.body.9.i.i.i, label %while.body.8.i.i.i.while.cond6.i.i.i.preheader_crit_edge

while.body.8.i.i.i.while.cond6.i.i.i.preheader_crit_edge: ; preds = %while.body.8.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond6.i.i.i.preheader

while.body.9.i.i.i:                               ; preds = %while.body.8.i.i.i
  %shl2.9.i.i.i = shl nuw nsw i32 %conv.i323.i.i, 14
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %sub83.i.i)
  %cmp.10.i.i.i = icmp ult i16 %sub83.i.i, 2
  br i1 %cmp.10.i.i.i, label %while.body.10.i.i.i, label %while.body.9.i.i.i.while.cond6.i.i.i.preheader_crit_edge

while.body.9.i.i.i.while.cond6.i.i.i.preheader_crit_edge: ; preds = %while.body.9.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond6.i.i.i.preheader

while.body.10.i.i.i:                              ; preds = %while.body.9.i.i.i
  %shl2.10.i.i.i = shl nuw nsw i32 %conv.i323.i.i, 15
  call void @__sanitizer_cov_trace_cmp2(i16 %spec.select.i10, i16 %conv82.i.i)
  %cmp.11.i.i.i = icmp eq i16 %spec.select.i10, %conv82.i.i
  br i1 %cmp.11.i.i.i, label %while.body.10.i.i.i.mt76x0_phy_lin2db.exit.i.i_crit_edge, label %while.body.10.i.i.i.while.cond6.i.i.i.preheader_crit_edge

while.body.10.i.i.i.while.cond6.i.i.i.preheader_crit_edge: ; preds = %while.body.10.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond6.i.i.i.preheader

while.body.10.i.i.i.mt76x0_phy_lin2db.exit.i.i_crit_edge: ; preds = %while.body.10.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_phy_lin2db.exit.i.i

while.cond6.i.i.i.preheader:                      ; preds = %while.body.10.i.i.i.while.cond6.i.i.i.preheader_crit_edge, %while.body.9.i.i.i.while.cond6.i.i.i.preheader_crit_edge, %while.body.8.i.i.i.while.cond6.i.i.i.preheader_crit_edge, %while.body.7.i.i.i.while.cond6.i.i.i.preheader_crit_edge, %while.body.6.i.i.i.while.cond6.i.i.i.preheader_crit_edge, %while.body.5.i.i.i.while.cond6.i.i.i.preheader_crit_edge, %while.body.4.i.i.i.while.cond6.i.i.i.preheader_crit_edge, %while.body.3.i.i.i.while.cond6.i.i.i.preheader_crit_edge, %while.body.2.i.i.i.while.cond6.i.i.i.preheader_crit_edge, %sw.epilog80.i.i.while.cond6.i.i.i.preheader_crit_edge
  %mantissa.1.i.i.i.ph = phi i32 [ %shl2.10.i.i.i, %while.body.10.i.i.i.while.cond6.i.i.i.preheader_crit_edge ], [ %shl2.9.i.i.i, %while.body.9.i.i.i.while.cond6.i.i.i.preheader_crit_edge ], [ %shl2.8.i.i.i, %while.body.8.i.i.i.while.cond6.i.i.i.preheader_crit_edge ], [ %shl2.7.i.i.i, %while.body.7.i.i.i.while.cond6.i.i.i.preheader_crit_edge ], [ %shl2.6.i.i.i, %while.body.6.i.i.i.while.cond6.i.i.i.preheader_crit_edge ], [ %shl2.5.i.i.i, %while.body.5.i.i.i.while.cond6.i.i.i.preheader_crit_edge ], [ %shl2.4.i.i.i, %while.body.4.i.i.i.while.cond6.i.i.i.preheader_crit_edge ], [ %shl2.3.i.i.i, %while.body.3.i.i.i.while.cond6.i.i.i.preheader_crit_edge ], [ %shl2.2.i.i.i, %while.body.2.i.i.i.while.cond6.i.i.i.preheader_crit_edge ], [ %shl.i.i53.i, %sw.epilog80.i.i.while.cond6.i.i.i.preheader_crit_edge ]
  %exp.1.i.i.i.ph = phi i16 [ -15, %while.body.10.i.i.i.while.cond6.i.i.i.preheader_crit_edge ], [ -14, %while.body.9.i.i.i.while.cond6.i.i.i.preheader_crit_edge ], [ -13, %while.body.8.i.i.i.while.cond6.i.i.i.preheader_crit_edge ], [ -12, %while.body.7.i.i.i.while.cond6.i.i.i.preheader_crit_edge ], [ -11, %while.body.6.i.i.i.while.cond6.i.i.i.preheader_crit_edge ], [ -10, %while.body.5.i.i.i.while.cond6.i.i.i.preheader_crit_edge ], [ -9, %while.body.4.i.i.i.while.cond6.i.i.i.preheader_crit_edge ], [ -8, %while.body.3.i.i.i.while.cond6.i.i.i.preheader_crit_edge ], [ -7, %while.body.2.i.i.i.while.cond6.i.i.i.preheader_crit_edge ], [ -4, %sw.epilog80.i.i.while.cond6.i.i.i.preheader_crit_edge ]
  br label %while.cond6.i.i.i

while.cond6.i.i.i:                                ; preds = %while.body9.i.i.i.while.cond6.i.i.i_crit_edge, %while.cond6.i.i.i.preheader
  %mantissa.1.i.i.i = phi i32 [ %shr.i.i54.i, %while.body9.i.i.i.while.cond6.i.i.i_crit_edge ], [ %mantissa.1.i.i.i.ph, %while.cond6.i.i.i.preheader ]
  %exp.1.i.i.i = phi i16 [ %inc.i.i.i, %while.body9.i.i.i.while.cond6.i.i.i_crit_edge ], [ %exp.1.i.i.i.ph, %while.cond6.i.i.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %mantissa.1.i.i.i)
  %cmp7.i.i.i = icmp ugt i32 %mantissa.1.i.i.i, 65535
  br i1 %cmp7.i.i.i, label %while.body9.i.i.i, label %while.end15.i.i.i

while.body9.i.i.i:                                ; preds = %while.cond6.i.i.i
  %shr.i.i54.i = lshr i32 %mantissa.1.i.i.i, 1
  %inc.i.i.i = add nsw i16 %exp.1.i.i.i, 1
  %cmp11.i.i.i = icmp sgt i16 %exp.1.i.i.i, 19
  br i1 %cmp11.i.i.i, label %while.body9.i.i.i.mt76x0_phy_lin2db.exit.i.i_crit_edge, label %while.body9.i.i.i.while.cond6.i.i.i_crit_edge

while.body9.i.i.i.while.cond6.i.i.i_crit_edge:    ; preds = %while.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond6.i.i.i

while.body9.i.i.i.mt76x0_phy_lin2db.exit.i.i_crit_edge: ; preds = %while.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x0_phy_lin2db.exit.i.i

while.end15.i.i.i:                                ; preds = %while.cond6.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 47105, i32 %mantissa.1.i.i.i)
  %cmp16.i.i.i = icmp ult i32 %mantissa.1.i.i.i, 47105
  %shr19.i.i.i = lshr i32 %mantissa.1.i.i.i, 3
  br i1 %cmp16.i.i.i, label %if.then18.i.i.i, label %if.else.i.i.i

if.then18.i.i.i:                                  ; preds = %while.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr20.i.i.i = lshr i32 %mantissa.1.i.i.i, 4
  %add.i.i.i = add nsw i32 %mantissa.1.i.i.i, -38400
  %add21.i.i.i = add nsw i32 %add.i.i.i, %shr19.i.i.i
  %sub.i.i.i = add nsw i32 %add21.i.i.i, %shr20.i.i.i
  br label %cond.end.i.i.i

if.else.i.i.i:                                    ; preds = %while.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr24.i.i.i = lshr i32 %mantissa.1.i.i.i, 6
  %.neg = add nsw i32 %mantissa.1.i.i.i, -23040
  %192 = add nuw nsw i32 %shr19.i.i.i, %shr24.i.i.i
  %sub26.i.i.i = sub nuw nsw i32 %.neg, %192
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %if.else.i.i.i, %if.then18.i.i.i
  %data.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then18.i.i.i ], [ %sub26.i.i.i, %if.else.i.i.i ]
  %conv30.i.i.i = sext i16 %exp.1.i.i.i to i32
  %add31.i.i.i = shl nsw i32 %conv30.i.i.i, 15
  %shl32.i.i.i = add nsw i32 %add31.i.i.i, 491520
  %add33.i.i.i = add i32 %shl32.i.i.i, %data.0.i.i.i
  %add36.i.i.i = mul i32 %add33.i.i.i, 6
  %193 = lshr i32 %add33.i.i.i, 6
  %add38.i.i.i = add i32 %add36.i.i.i, %193
  %shr39.i.i.i = ashr i32 %add33.i.i.i, 7
  %add40.i.i.i = add i32 %add38.i.i.i, %shr39.i.i.i
  %194 = shl i32 %add40.i.i.i, 6
  %phi.cast.i.i = ashr i32 %194, 16
  br label %mt76x0_phy_lin2db.exit.i.i

mt76x0_phy_lin2db.exit.i.i:                       ; preds = %cond.end.i.i.i, %while.body9.i.i.i.mt76x0_phy_lin2db.exit.i.i_crit_edge, %while.body.10.i.i.i.mt76x0_phy_lin2db.exit.i.i_crit_edge
  %retval.0.i325.i.i = phi i32 [ %phi.cast.i.i, %cond.end.i.i.i ], [ -10000, %while.body.10.i.i.i.mt76x0_phy_lin2db.exit.i.i_crit_edge ], [ -10000, %while.body9.i.i.i.mt76x0_phy_lin2db.exit.i.i_crit_edge ]
  %195 = mul nsw i32 %and39.i.i, %retval.0.i325.i.i
  %196 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %197)
  %cmp89.i.i = icmp eq i32 %197, 1
  br i1 %cmp89.i.i, label %if.then91.i.i, label %if.else104.i.i

if.then91.i.i:                                    ; preds = %mt76x0_phy_lin2db.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub92.neg.i.i = mul nsw i32 %tssi_offset.2.i.i, -1024
  %shl93.neg.i.i = add nsw i32 %sub92.neg.i.i, 51200
  %add94.neg.i.i = add i32 %shl93.neg.i.i, %tssi_target.2.i.i
  %sub95.i.i = sub i32 %add94.neg.i.i, %195
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %spec.select.i10)
  %cmp97.i.i = icmp ugt i16 %spec.select.i10, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub95.i.i)
  %cmp100.i.i = icmp sgt i32 %sub95.i.i, 0
  %or.cond308.i.i = select i1 %cmp97.i.i, i1 %cmp100.i.i, i1 false
  %spec.select316.i.i = select i1 %or.cond308.i.i, i32 0, i32 %sub95.i.i
  br label %if.end127.i.i

if.else104.i.i:                                   ; preds = %mt76x0_phy_lin2db.exit.i.i
  %shl105.neg.i.i = mul nsw i32 %tssi_offset.2.i.i, -512
  %add106.neg.i.i = add i32 %tssi_target.2.i.i, %shl105.neg.i.i
  %sub107.i.i = sub i32 %add106.neg.i.i, %195
  call void @__sanitizer_cov_trace_const_cmp2(i16 126, i16 %spec.select.i10)
  %cmp109.i.i = icmp ugt i16 %spec.select.i10, 126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub107.i.i)
  %cmp112.i.i = icmp sgt i32 %sub107.i.i, 0
  %or.cond309.i.i = select i1 %cmp109.i.i, i1 %cmp112.i.i, i1 false
  br i1 %or.cond309.i.i, label %if.else104.i.i.if.then125.i.i_crit_edge, label %lor.lhs.false114.i.i

if.else104.i.i.if.then125.i.i_crit_edge:          ; preds = %if.else104.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then125.i.i

lor.lhs.false114.i.i:                             ; preds = %if.else104.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %spec.select.i10, i16 %conv82.i.i)
  %cmp120.not.i.i = icmp sle i16 %spec.select.i10, %conv82.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub107.i.i)
  %cmp123.i.i = icmp slt i32 %sub107.i.i, 0
  %or.cond310.i.i = select i1 %cmp120.not.i.i, i1 %cmp123.i.i, i1 false
  br i1 %or.cond310.i.i, label %lor.lhs.false114.i.i.if.then125.i.i_crit_edge, label %lor.lhs.false114.i.i.if.end127.i.i_crit_edge

lor.lhs.false114.i.i.if.end127.i.i_crit_edge:     ; preds = %lor.lhs.false114.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end127.i.i

lor.lhs.false114.i.i.if.then125.i.i_crit_edge:    ; preds = %lor.lhs.false114.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then125.i.i

if.then125.i.i:                                   ; preds = %lor.lhs.false114.i.i.if.then125.i.i_crit_edge, %if.else104.i.i.if.then125.i.i_crit_edge
  br label %if.end127.i.i

if.end127.i.i:                                    ; preds = %if.then125.i.i, %lor.lhs.false114.i.i.if.end127.i.i_crit_edge, %if.then91.i.i
  %tssi_target.3.i.i = phi i32 [ 0, %if.then125.i.i ], [ %sub107.i.i, %lor.lhs.false114.i.i.if.end127.i.i_crit_edge ], [ %spec.select316.i.i, %if.then91.i.i ]
  %tssi_target129.i.i = getelementptr i8, ptr %work, i32 348
  %198 = ptrtoint ptr %tssi_target129.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %tssi_target129.i.i, align 4
  %xor.i.i = xor i32 %199, %tssi_target.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i.i)
  %cmp130.i.i = icmp slt i32 %xor.i.i, 0
  %200 = add i32 %199, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %200)
  %201 = icmp ult i32 %200, 8191
  %202 = and i1 %201, %cmp130.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %tssi_target.3.i.i)
  %cmp143.i.i = icmp sgt i32 %tssi_target.3.i.i, -4096
  %or.cond313.i.i = select i1 %202, i1 %cmp143.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %tssi_target.3.i.i)
  %cmp146.i.i = icmp slt i32 %tssi_target.3.i.i, 4096
  %or.cond314.i.i = select i1 %or.cond313.i.i, i1 %cmp146.i.i, i1 false
  br i1 %or.cond314.i.i, label %if.then148.i.i, label %if.end127.i.i.if.end174.i.i_crit_edge

if.end127.i.i.if.end174.i.i_crit_edge:            ; preds = %if.end127.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end174.i.i

if.then148.i.i:                                   ; preds = %if.end127.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tssi_target.3.i.i)
  %cmp149.i.i = icmp slt i32 %tssi_target.3.i.i, 0
  %add154.i.i = add nsw i32 %199, %tssi_target.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add154.i.i)
  %cmp155.i.i = icmp sgt i32 %add154.i.i, 0
  %or.cond315.i.i = select i1 %cmp149.i.i, i1 %cmp155.i.i, i1 false
  br i1 %or.cond315.i.i, label %if.then148.i.i.if.end174.thread.i.i_crit_edge, label %lor.lhs.false157.i.i

if.then148.i.i.if.end174.thread.i.i_crit_edge:    ; preds = %if.then148.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end174.thread.i.i

lor.lhs.false157.i.i:                             ; preds = %if.then148.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tssi_target.3.i.i)
  %cmp158.i.i = icmp sgt i32 %tssi_target.3.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add154.i.i)
  %cmp164.i.i = icmp slt i32 %add154.i.i, 1
  %or.cond332.i.i = select i1 %cmp158.i.i, i1 %cmp164.i.i, i1 false
  br i1 %or.cond332.i.i, label %lor.lhs.false157.i.i.if.end174.thread.i.i_crit_edge, label %lor.lhs.false157.i.i.if.end174.i.i_crit_edge

lor.lhs.false157.i.i.if.end174.i.i_crit_edge:     ; preds = %lor.lhs.false157.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end174.i.i

lor.lhs.false157.i.i.if.end174.thread.i.i_crit_edge: ; preds = %lor.lhs.false157.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end174.thread.i.i

if.end174.i.i:                                    ; preds = %lor.lhs.false157.i.i.if.end174.i.i_crit_edge, %if.end127.i.i.if.end174.i.i_crit_edge
  %203 = ptrtoint ptr %tssi_target129.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %tssi_target.3.i.i, ptr %tssi_target129.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tssi_target.3.i.i)
  %cmp175.i.i = icmp sgt i32 %tssi_target.3.i.i, 0
  %spec.select333.v.i.i = select i1 %cmp175.i.i, i32 2048, i32 -2048
  %spec.select333.i.i = add i32 %spec.select333.v.i.i, %tssi_target.3.i.i
  %phi.bo.i.i = ashr i32 %spec.select333.i.i, 12
  br label %if.end174.thread.i.i

if.end174.thread.i.i:                             ; preds = %if.end174.i.i, %lor.lhs.false157.i.i.if.end174.thread.i.i_crit_edge, %if.then148.i.i.if.end174.thread.i.i_crit_edge
  %204 = phi i32 [ -1, %if.then148.i.i.if.end174.thread.i.i_crit_edge ], [ -1, %lor.lhs.false157.i.i.if.end174.thread.i.i_crit_edge ], [ %phi.bo.i.i, %if.end174.i.i ]
  %205 = ptrtoint ptr %bus.i.i7 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %bus.i.i7, align 4
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %206, align 4
  %call197.i.i = call i32 %208(ptr noundef %add.ptr, i32 noundef 5044) #5
  %and198.i.i = and i32 %call197.i.i, 63
  %and200.i.i = and i32 %call197.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200.i.i)
  %tobool201.not.i.i = icmp eq i32 %and200.i.i, 0
  %masksel.i.i = select i1 %tobool201.not.i.i, i32 0, i32 -64
  %ret.0.i.i = add nsw i32 %and198.i.i, %204
  %add205.i.i = add nsw i32 %ret.0.i.i, %masksel.i.i
  %209 = call i32 @llvm.smin.i32(i32 %add205.i.i, i32 31) #5
  %210 = call i32 @llvm.smax.i32(i32 %209, i32 -32) #5
  br label %do.end25.i

do.end25.i:                                       ; preds = %if.end174.thread.i.i, %cleanup.thread.i.i
  %retval.1.i55.i = phi i32 [ %210, %if.end174.thread.i.i ], [ %call.i48.i, %cleanup.thread.i.i ]
  %211 = ptrtoint ptr %bus.i.i7 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %bus.i.i7, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %212, i32 0, i32 2
  %213 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %rmw.i, align 4
  %and27.i = and i32 %retval.1.i55.i, 63
  %call28.i = call i32 %214(ptr noundef %add.ptr, i32 noundef 5044, i32 noundef 63, i32 noundef %and27.i) #5
  br label %if.end

if.else:                                          ; preds = %mt76x0_phy_update_channel_gain.exit
  %call.i19 = tail call fastcc i32 @mt76x0_rf_rr(ptr noundef %add.ptr, i32 noundef 458825) #5
  %call1.i = tail call fastcc i32 @mt76x0_rf_rr(ptr noundef %add.ptr, i32 noundef 66) #5
  %call3.i = tail call fastcc i32 @mt76x0_rf_rr(ptr noundef %add.ptr, i32 noundef 67) #5
  %bus.i.i20 = getelementptr i8, ptr %work, i32 -10256
  %215 = ptrtoint ptr %bus.i.i20 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %bus.i.i20, align 4
  %type.i.i21 = getelementptr inbounds %struct.mt76_bus_ops, ptr %216, i32 0, i32 7
  %217 = ptrtoint ptr %type.i.i21 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %type.i.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %218)
  %cmp.i.i22 = icmp eq i32 %218, 1
  br i1 %cmp.i.i22, label %if.then.i.i24, label %if.else.i.i25

if.then.i.i24:                                    ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i.i) #5
  %219 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i.i, i32 0, i32 1
  %220 = ptrtoint ptr %pair.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 458825, ptr %pair.i.i, align 4
  %221 = ptrtoint ptr %219 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 2, ptr %219, align 4
  %state.i.i = getelementptr i8, ptr %work, i32 -11216
  %222 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load volatile i32, ptr %state.i.i, align 4
  %224 = and i32 %223, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool.not.i.i23 = icmp eq i32 %224, 0
  br i1 %tobool.not.i.i23, label %land.rhs.i.i, label %if.then.i.i24.if.end31.i.i_crit_edge

if.then.i.i24.if.end31.i.i_crit_edge:             ; preds = %if.then.i.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i

land.rhs.i.i:                                     ; preds = %if.then.i.i24
  %.b50.i.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i.i, label %land.rhs.i.i.if.end31.i.i_crit_edge, label %if.then10.i.i, !prof !74

land.rhs.i.i.if.end31.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i.i

if.then10.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then10.i.i, %land.rhs.i.i.if.end31.i.i_crit_edge, %if.then.i.i24.if.end31.i.i_crit_edge
  %225 = ptrtoint ptr %bus.i.i20 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %bus.i.i20, align 4
  %wr_rp.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %226, i32 0, i32 5
  %227 = ptrtoint ptr %wr_rp.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %wr_rp.i.i, align 4
  %call40.i.i = call i32 %228(ptr noundef %add.ptr, i32 noundef -2147483648, ptr noundef nonnull %pair.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i.i) #5
  br label %mt76x0_rf_wr.exit.i

if.else.i.i25:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i = tail call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %add.ptr, i32 noundef 458825, i8 noundef zeroext 2) #5
  br label %mt76x0_rf_wr.exit.i

mt76x0_rf_wr.exit.i:                              ; preds = %if.else.i.i25, %if.end31.i.i
  %229 = ptrtoint ptr %bus.i.i20 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %bus.i.i20, align 4
  %type.i86.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %230, i32 0, i32 7
  %231 = ptrtoint ptr %type.i86.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %type.i86.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %232)
  %cmp.i87.i = icmp eq i32 %232, 1
  br i1 %cmp.i87.i, label %if.then.i90.i, label %if.else.i98.i

if.then.i90.i:                                    ; preds = %mt76x0_rf_wr.exit.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i84.i) #5
  %233 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i84.i, i32 0, i32 1
  %234 = ptrtoint ptr %pair.i84.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 66, ptr %pair.i84.i, align 4
  %235 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 35, ptr %233, align 4
  %state.i88.i = getelementptr i8, ptr %work, i32 -11216
  %236 = ptrtoint ptr %state.i88.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load volatile i32, ptr %state.i88.i, align 4
  %238 = and i32 %237, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool.not.i89.i = icmp eq i32 %238, 0
  br i1 %tobool.not.i89.i, label %land.rhs.i92.i, label %if.then.i90.i.if.end31.i96.i_crit_edge

if.then.i90.i.if.end31.i96.i_crit_edge:           ; preds = %if.then.i90.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i96.i

land.rhs.i92.i:                                   ; preds = %if.then.i90.i
  %.b50.i91.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i91.i, label %land.rhs.i92.i.if.end31.i96.i_crit_edge, label %if.then10.i93.i, !prof !74

land.rhs.i92.i.if.end31.i96.i_crit_edge:          ; preds = %land.rhs.i92.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i96.i

if.then10.i93.i:                                  ; preds = %land.rhs.i92.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i96.i

if.end31.i96.i:                                   ; preds = %if.then10.i93.i, %land.rhs.i92.i.if.end31.i96.i_crit_edge, %if.then.i90.i.if.end31.i96.i_crit_edge
  %239 = ptrtoint ptr %bus.i.i20 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %bus.i.i20, align 4
  %wr_rp.i94.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %240, i32 0, i32 5
  %241 = ptrtoint ptr %wr_rp.i94.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %wr_rp.i94.i, align 4
  %call40.i95.i = call i32 %242(ptr noundef %add.ptr, i32 noundef -2147483648, ptr noundef nonnull %pair.i84.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i84.i) #5
  br label %mt76x0_rf_wr.exit100.i

if.else.i98.i:                                    ; preds = %mt76x0_rf_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i97.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %add.ptr, i32 noundef 66, i8 noundef zeroext 35) #5
  br label %mt76x0_rf_wr.exit100.i

mt76x0_rf_wr.exit100.i:                           ; preds = %if.else.i98.i, %if.end31.i96.i
  %243 = ptrtoint ptr %bus.i.i20 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %bus.i.i20, align 4
  %type.i103.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %244, i32 0, i32 7
  %245 = ptrtoint ptr %type.i103.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %type.i103.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %246)
  %cmp.i104.i = icmp eq i32 %246, 1
  br i1 %cmp.i104.i, label %if.then.i107.i, label %if.else.i115.i

if.then.i107.i:                                   ; preds = %mt76x0_rf_wr.exit100.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i101.i) #5
  %247 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i101.i, i32 0, i32 1
  %248 = ptrtoint ptr %pair.i101.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 67, ptr %pair.i101.i, align 4
  %249 = ptrtoint ptr %247 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 1, ptr %247, align 4
  %state.i105.i = getelementptr i8, ptr %work, i32 -11216
  %250 = ptrtoint ptr %state.i105.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load volatile i32, ptr %state.i105.i, align 4
  %252 = and i32 %251, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool.not.i106.i = icmp eq i32 %252, 0
  br i1 %tobool.not.i106.i, label %land.rhs.i109.i, label %if.then.i107.i.if.end31.i113.i_crit_edge

if.then.i107.i.if.end31.i113.i_crit_edge:         ; preds = %if.then.i107.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i113.i

land.rhs.i109.i:                                  ; preds = %if.then.i107.i
  %.b50.i108.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i108.i, label %land.rhs.i109.i.if.end31.i113.i_crit_edge, label %if.then10.i110.i, !prof !74

land.rhs.i109.i.if.end31.i113.i_crit_edge:        ; preds = %land.rhs.i109.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i113.i

if.then10.i110.i:                                 ; preds = %land.rhs.i109.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i113.i

if.end31.i113.i:                                  ; preds = %if.then10.i110.i, %land.rhs.i109.i.if.end31.i113.i_crit_edge, %if.then.i107.i.if.end31.i113.i_crit_edge
  %253 = ptrtoint ptr %bus.i.i20 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %bus.i.i20, align 4
  %wr_rp.i111.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %254, i32 0, i32 5
  %255 = ptrtoint ptr %wr_rp.i111.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %wr_rp.i111.i, align 4
  %call40.i112.i = call i32 %256(ptr noundef %add.ptr, i32 noundef -2147483648, ptr noundef nonnull %pair.i101.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i101.i) #5
  br label %mt76x0_rf_wr.exit117.i

if.else.i115.i:                                   ; preds = %mt76x0_rf_wr.exit100.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i114.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %add.ptr, i32 noundef 67, i8 noundef zeroext 1) #5
  br label %mt76x0_rf_wr.exit117.i

mt76x0_rf_wr.exit117.i:                           ; preds = %if.else.i115.i, %if.end31.i113.i
  %257 = ptrtoint ptr %bus.i.i20 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %bus.i.i20, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %258, i32 0, i32 1
  %259 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %wr.i, align 4
  call void %260(ptr noundef %add.ptr, i32 noundef 8328, i32 noundef 524373) #5
  %call8.i = call zeroext i1 @__mt76_poll_msec(ptr noundef %add.ptr, i32 noundef 8328, i32 noundef 16, i32 noundef 0, i32 noundef 200) #5
  %261 = ptrtoint ptr %bus.i.i20 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %bus.i.i20, align 4
  br i1 %call8.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %mt76x0_rf_wr.exit117.i
  call void @__sanitizer_cov_trace_pc() #7
  %rmw.i26 = getelementptr inbounds %struct.mt76_bus_ops, ptr %262, i32 0, i32 2
  %263 = ptrtoint ptr %rmw.i26 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %rmw.i26, align 4
  %call10.i = call i32 %264(ptr noundef %add.ptr, i32 noundef 8328, i32 noundef 16, i32 noundef 0) #5
  br label %done.i

if.end.i:                                         ; preds = %mt76x0_rf_wr.exit117.i
  %265 = ptrtoint ptr %262 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %262, align 4
  %call12.i = call i32 %266(ptr noundef %add.ptr, i32 noundef 8332) #5
  %sext.i27 = shl i32 %call12.i, 24
  %conv14.i = ashr exact i32 %sext.i27, 24
  %temp_offset.i = getelementptr i8, ptr %work, i32 324
  %267 = ptrtoint ptr %temp_offset.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %temp_offset.i, align 4
  %conv15.i28 = sext i16 %268 to i32
  %sub.i29 = sub nsw i32 %conv14.i, %conv15.i28
  %mul.i = mul nsw i32 %sub.i29, 35
  %div.i = sdiv i32 %mul.i, 10
  %269 = trunc i32 %div.i to i8
  %conv16.i = add i8 %269, 25
  %conv17.i = sext i8 %conv16.i to i32
  %temp_vco.i = getelementptr i8, ptr %work, i32 338
  %270 = ptrtoint ptr %temp_vco.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %temp_vco.i, align 2
  %conv19.i = sext i8 %271 to i32
  %sub20.i = sub nsw i32 %conv17.i, %conv19.i
  %272 = call i32 @llvm.abs.i32(i32 %sub20.i, i1 true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %272)
  %cmp23.i = icmp ugt i32 %272, 20
  br i1 %cmp23.i, label %if.then25.i, label %if.end.i.if.end30.i_crit_edge

if.end.i.if.end30.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.i

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %chandef.i = getelementptr i8, ptr %work, i32 -11184
  %273 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %chandef.i, align 4
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %274, i32 0, i32 3
  %275 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %hw_value.i, align 2
  %conv26.i30 = zext i16 %276 to i32
  %call27.i = call i32 @mt76x02_mcu_calibrate(ptr noundef %add.ptr, i32 noundef 12, i32 noundef %conv26.i30) #5
  %277 = ptrtoint ptr %temp_vco.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %conv16.i, ptr %temp_vco.i, align 2
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then25.i, %if.end.i.if.end30.i_crit_edge
  %temp.i = getelementptr i8, ptr %work, i32 339
  %278 = ptrtoint ptr %temp.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %temp.i, align 1
  %conv34.i = sext i8 %279 to i32
  %sub35.i = sub nsw i32 %conv17.i, %conv34.i
  %280 = call i32 @llvm.abs.i32(i32 %sub35.i, i1 true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %280)
  %cmp44.i = icmp ugt i32 %280, 30
  br i1 %cmp44.i, label %if.then46.i, label %if.end30.i.done.i_crit_edge

if.end30.i.done.i_crit_edge:                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %done.i

if.then46.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @mt76x0_phy_calibrate(ptr noundef %add.ptr, i1 noundef zeroext false) #5
  %281 = ptrtoint ptr %temp.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 %conv16.i, ptr %temp.i, align 1
  br label %done.i

done.i:                                           ; preds = %if.then46.i, %if.end30.i.done.i_crit_edge, %if.then.i
  %conv4.i = trunc i32 %call3.i to i8
  %conv2.i = trunc i32 %call1.i to i8
  %282 = ptrtoint ptr %bus.i.i20 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %bus.i.i20, align 4
  %type.i120.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %283, i32 0, i32 7
  %284 = ptrtoint ptr %type.i120.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %type.i120.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %285)
  %cmp.i121.i = icmp eq i32 %285, 1
  br i1 %cmp.i121.i, label %if.then.i124.i, label %if.else.i132.i

if.then.i124.i:                                   ; preds = %done.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i118.i) #5
  %286 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i118.i, i32 0, i32 1
  %287 = ptrtoint ptr %pair.i118.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 458825, ptr %pair.i118.i, align 4
  %conv.i.i31 = and i32 %call.i19, 255
  %288 = ptrtoint ptr %286 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %conv.i.i31, ptr %286, align 4
  %state.i122.i = getelementptr i8, ptr %work, i32 -11216
  %289 = ptrtoint ptr %state.i122.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load volatile i32, ptr %state.i122.i, align 4
  %291 = and i32 %290, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %tobool.not.i123.i = icmp eq i32 %291, 0
  br i1 %tobool.not.i123.i, label %land.rhs.i126.i, label %if.then.i124.i.if.end31.i130.i_crit_edge

if.then.i124.i.if.end31.i130.i_crit_edge:         ; preds = %if.then.i124.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i130.i

land.rhs.i126.i:                                  ; preds = %if.then.i124.i
  %.b50.i125.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i125.i, label %land.rhs.i126.i.if.end31.i130.i_crit_edge, label %if.then10.i127.i, !prof !74

land.rhs.i126.i.if.end31.i130.i_crit_edge:        ; preds = %land.rhs.i126.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i130.i

if.then10.i127.i:                                 ; preds = %land.rhs.i126.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i130.i

if.end31.i130.i:                                  ; preds = %if.then10.i127.i, %land.rhs.i126.i.if.end31.i130.i_crit_edge, %if.then.i124.i.if.end31.i130.i_crit_edge
  %292 = ptrtoint ptr %bus.i.i20 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %bus.i.i20, align 4
  %wr_rp.i128.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %293, i32 0, i32 5
  %294 = ptrtoint ptr %wr_rp.i128.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %wr_rp.i128.i, align 4
  %call40.i129.i = call i32 %295(ptr noundef %add.ptr, i32 noundef -2147483648, ptr noundef nonnull %pair.i118.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i118.i) #5
  br label %mt76x0_rf_wr.exit134.i

if.else.i132.i:                                   ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i32 = trunc i32 %call.i19 to i8
  %call41.i131.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %add.ptr, i32 noundef 458825, i8 noundef zeroext %conv.i32) #5
  br label %mt76x0_rf_wr.exit134.i

mt76x0_rf_wr.exit134.i:                           ; preds = %if.else.i132.i, %if.end31.i130.i
  %296 = ptrtoint ptr %bus.i.i20 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %bus.i.i20, align 4
  %type.i137.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %297, i32 0, i32 7
  %298 = ptrtoint ptr %type.i137.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %type.i137.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %299)
  %cmp.i138.i = icmp eq i32 %299, 1
  br i1 %cmp.i138.i, label %if.then.i142.i, label %if.else.i150.i

if.then.i142.i:                                   ; preds = %mt76x0_rf_wr.exit134.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i135.i) #5
  %300 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i135.i, i32 0, i32 1
  %301 = ptrtoint ptr %pair.i135.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 66, ptr %pair.i135.i, align 4
  %conv.i139.i = and i32 %call1.i, 255
  %302 = ptrtoint ptr %300 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %conv.i139.i, ptr %300, align 4
  %state.i140.i = getelementptr i8, ptr %work, i32 -11216
  %303 = ptrtoint ptr %state.i140.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load volatile i32, ptr %state.i140.i, align 4
  %305 = and i32 %304, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %305)
  %tobool.not.i141.i = icmp eq i32 %305, 0
  br i1 %tobool.not.i141.i, label %land.rhs.i144.i, label %if.then.i142.i.if.end31.i148.i_crit_edge

if.then.i142.i.if.end31.i148.i_crit_edge:         ; preds = %if.then.i142.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i148.i

land.rhs.i144.i:                                  ; preds = %if.then.i142.i
  %.b50.i143.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i143.i, label %land.rhs.i144.i.if.end31.i148.i_crit_edge, label %if.then10.i145.i, !prof !74

land.rhs.i144.i.if.end31.i148.i_crit_edge:        ; preds = %land.rhs.i144.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i148.i

if.then10.i145.i:                                 ; preds = %land.rhs.i144.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i148.i

if.end31.i148.i:                                  ; preds = %if.then10.i145.i, %land.rhs.i144.i.if.end31.i148.i_crit_edge, %if.then.i142.i.if.end31.i148.i_crit_edge
  %306 = ptrtoint ptr %bus.i.i20 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %bus.i.i20, align 4
  %wr_rp.i146.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %307, i32 0, i32 5
  %308 = ptrtoint ptr %wr_rp.i146.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %wr_rp.i146.i, align 4
  %call40.i147.i = call i32 %309(ptr noundef %add.ptr, i32 noundef -2147483648, ptr noundef nonnull %pair.i135.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i135.i) #5
  br label %mt76x0_rf_wr.exit152.i

if.else.i150.i:                                   ; preds = %mt76x0_rf_wr.exit134.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i149.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %add.ptr, i32 noundef 66, i8 noundef zeroext %conv2.i) #5
  br label %mt76x0_rf_wr.exit152.i

mt76x0_rf_wr.exit152.i:                           ; preds = %if.else.i150.i, %if.end31.i148.i
  %310 = ptrtoint ptr %bus.i.i20 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %bus.i.i20, align 4
  %type.i155.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %311, i32 0, i32 7
  %312 = ptrtoint ptr %type.i155.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %type.i155.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %313)
  %cmp.i156.i = icmp eq i32 %313, 1
  br i1 %cmp.i156.i, label %if.then.i160.i, label %if.else.i168.i

if.then.i160.i:                                   ; preds = %mt76x0_rf_wr.exit152.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i153.i) #5
  %314 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i153.i, i32 0, i32 1
  %315 = ptrtoint ptr %pair.i153.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 67, ptr %pair.i153.i, align 4
  %conv.i157.i = and i32 %call3.i, 255
  %316 = ptrtoint ptr %314 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %conv.i157.i, ptr %314, align 4
  %state.i158.i = getelementptr i8, ptr %work, i32 -11216
  %317 = ptrtoint ptr %state.i158.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load volatile i32, ptr %state.i158.i, align 4
  %319 = and i32 %318, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %319)
  %tobool.not.i159.i = icmp eq i32 %319, 0
  br i1 %tobool.not.i159.i, label %land.rhs.i162.i, label %if.then.i160.i.if.end31.i166.i_crit_edge

if.then.i160.i.if.end31.i166.i_crit_edge:         ; preds = %if.then.i160.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i166.i

land.rhs.i162.i:                                  ; preds = %if.then.i160.i
  %.b50.i161.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i161.i, label %land.rhs.i162.i.if.end31.i166.i_crit_edge, label %if.then10.i163.i, !prof !74

land.rhs.i162.i.if.end31.i166.i_crit_edge:        ; preds = %land.rhs.i162.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i166.i

if.then10.i163.i:                                 ; preds = %land.rhs.i162.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i166.i

if.end31.i166.i:                                  ; preds = %if.then10.i163.i, %land.rhs.i162.i.if.end31.i166.i_crit_edge, %if.then.i160.i.if.end31.i166.i_crit_edge
  %320 = ptrtoint ptr %bus.i.i20 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %bus.i.i20, align 4
  %wr_rp.i164.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %321, i32 0, i32 5
  %322 = ptrtoint ptr %wr_rp.i164.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %wr_rp.i164.i, align 4
  %call40.i165.i = call i32 %323(ptr noundef %add.ptr, i32 noundef -2147483648, ptr noundef nonnull %pair.i153.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i153.i) #5
  br label %if.end

if.else.i168.i:                                   ; preds = %mt76x0_rf_wr.exit152.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i167.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %add.ptr, i32 noundef 67, i8 noundef zeroext %conv4.i) #5
  br label %if.end

if.end:                                           ; preds = %if.else.i168.i, %if.end31.i166.i, %do.end25.i, %sw.default56.i.i.if.end_crit_edge, %sw.bb38.i.i.if.end_crit_edge, %sw.bb12.i.i.if.end_crit_edge, %mt76x0_phy_tssi_adc_calibrate.exit.thread.i
  %hw = getelementptr i8, ptr %work, i32 -10496
  %324 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %hw, align 4
  call void @ieee80211_queue_delayed_work(ptr noundef %325, ptr noundef %work, i32 noundef 400) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_phy_set_rxpath(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_phy_set_txdac(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll_msec(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt76x0_rf_rr(ptr noundef %dev, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  %pair = alloca %struct.mt76_reg_pair, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %type = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair) #5
  %4 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair, i32 0, i32 1
  %5 = ptrtoint ptr %pair to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %offset, ptr %pair, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %4, align 4
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %land.rhs, label %if.then.if.end42_crit_edge

if.then.if.end42_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

land.rhs:                                         ; preds = %if.then
  %.b52 = load i1, ptr @mt76x0_rf_rr.__already_done, align 1
  br i1 %.b52, label %land.rhs.if.end42_crit_edge, label %if.then9, !prof !74

land.rhs.if.end42_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then9:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_rr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 130, i32 noundef 9, ptr noundef null) #5
  br label %if.end42

if.else:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.if.end42.thread_crit_edge

if.else.if.end42.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.thread

if.end.i:                                         ; preds = %if.else
  %shr.i53 = lshr i32 %offset, 16
  %conv2.i = and i32 %offset, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %conv2.i)
  %cmp.i = icmp ugt i32 %conv2.i, 127
  br i1 %cmp.i, label %land.rhs.i, label %lor.lhs.false.critedge.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b265.i = load i1, ptr @mt76x0_rf_csr_rr.__already_done, align 1
  br i1 %.b265.i, label %land.rhs.i.if.end42.thread_crit_edge, label %if.then12.i, !prof !74

land.rhs.i.if.end42.thread_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.thread

if.then12.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_csr_rr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 71, i32 noundef 9, ptr noundef null) #5
  br label %if.end42.thread

lor.lhs.false.critedge.i:                         ; preds = %if.end.i
  %conv44.i = and i32 %shr.i53, 255
  %phy_mutex.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex.i, i32 noundef 0) #5
  %call103.i = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 1280, i32 noundef -2147483648, i32 noundef 0, i32 noundef 100) #5
  br i1 %call103.i, label %if.end105.i, label %lor.lhs.false.critedge.i.do.end229.i_crit_edge

lor.lhs.false.critedge.i.do.end229.i_crit_edge:   ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end229.i

if.end105.i:                                      ; preds = %lor.lhs.false.critedge.i
  %13 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wr.i, align 4
  %shl.i = shl nuw nsw i32 %shr.i53, 15
  %and128.i = and i32 %shl.i, 229376
  %shl153.i = shl nuw nsw i32 %conv2.i, 8
  %and154.i = and i32 %shl153.i, 32512
  %or.i = or i32 %and128.i, %and154.i
  %or155.i = or i32 %or.i, -2147483648
  tail call void %16(ptr noundef %dev, i32 noundef 1280, i32 noundef %or155.i) #5
  %call156.i = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 1280, i32 noundef -2147483648, i32 noundef 0, i32 noundef 100) #5
  br i1 %call156.i, label %if.end158.i, label %if.end105.i.do.end229.i_crit_edge

if.end105.i.do.end229.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end229.i

if.end158.i:                                      ; preds = %if.end105.i
  %17 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call160.i = tail call i32 %20(ptr noundef %dev, i32 noundef 1280) #5
  %and177.i = lshr i32 %call160.i, 8
  %shr178.i = and i32 %and177.i, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %shr178.i, i32 %conv2.i)
  %cmp180.i = icmp eq i32 %shr178.i, %conv2.i
  %and198.i = lshr i32 %call160.i, 15
  %shr199.i = and i32 %and198.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr199.i, i32 %conv44.i)
  %cmp201.i = icmp eq i32 %shr199.i, %conv44.i
  %or.cond269.i = select i1 %cmp180.i, i1 %cmp201.i, i1 false
  br i1 %or.cond269.i, label %if.end42.thread58, label %if.end158.i.do.end229.i_crit_edge

if.end158.i.do.end229.i_crit_edge:                ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end229.i

if.end42.thread58:                                ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #7
  %and220.i = and i32 %call160.i, 255
  tail call void @mutex_unlock(ptr noundef %phy_mutex.i) #5
  br label %29

do.end229.i:                                      ; preds = %if.end158.i.do.end229.i_crit_edge, %if.end105.i.do.end229.i_crit_edge, %lor.lhs.false.critedge.i.do.end229.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %phy_mutex.i) #5
  %dev230.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %21 = ptrtoint ptr %dev230.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev230.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.11, i32 noundef %conv44.i, i32 noundef %conv2.i, i32 noundef -110) #8
  br label %if.end42.thread

if.end42:                                         ; preds = %if.then9, %land.rhs.if.end42_crit_edge, %if.then.if.end42_crit_edge
  %23 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus, align 4
  %rd_rp = getelementptr inbounds %struct.mt76_bus_ops, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %rd_rp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rd_rp, align 4
  %call39 = call i32 %26(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair, i32 noundef 1) #5
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp43 = icmp slt i32 %call39, 0
  br i1 %cmp43, label %if.end42.if.end42.thread_crit_edge, label %if.end42._crit_edge

if.end42._crit_edge:                              ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %29

if.end42.if.end42.thread_crit_edge:               ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.thread

if.end42.thread:                                  ; preds = %if.end42.if.end42.thread_crit_edge, %do.end229.i, %if.then12.i, %land.rhs.i.if.end42.thread_crit_edge, %if.else.if.end42.thread_crit_edge
  %ret.057 = phi i32 [ %call39, %if.end42.if.end42.thread_crit_edge ], [ -110, %do.end229.i ], [ -22, %if.then12.i ], [ -22, %land.rhs.i.if.end42.thread_crit_edge ], [ -19, %if.else.if.end42.thread_crit_edge ]
  br label %29

29:                                               ; preds = %if.end42.thread, %if.end42._crit_edge, %if.end42.thread58
  %30 = phi i32 [ %ret.057, %if.end42.thread ], [ %28, %if.end42._crit_edge ], [ %and220.i, %if.end42.thread58 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef %offset, i8 noundef zeroext %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i32 %offset, 16
  %conv2 = and i32 %offset, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %conv2)
  %cmp = icmp ugt i32 %conv2, 127
  br i1 %cmp, label %land.rhs, label %lor.lhs.false.critedge

land.rhs:                                         ; preds = %if.end
  %.b222 = load i1, ptr @mt76x0_rf_csr_wr.__already_done, align 1
  br i1 %.b222, label %land.rhs.cleanup_crit_edge, label %if.then12, !prof !74

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_csr_wr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 32, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

lor.lhs.false.critedge:                           ; preds = %if.end
  %conv44 = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv44)
  %cmp45 = icmp ugt i32 %conv44, 8
  br i1 %cmp45, label %land.rhs54, label %if.end102

land.rhs54:                                       ; preds = %lor.lhs.false.critedge
  %.b220221 = load i1, ptr @mt76x0_rf_csr_wr.__already_done.13, align 1
  br i1 %.b220221, label %land.rhs54.cleanup_crit_edge, label %if.then65, !prof !74

land.rhs54.cleanup_crit_edge:                     ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then65:                                        ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_csr_wr.__already_done.13, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 32, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end102:                                        ; preds = %lor.lhs.false.critedge
  %phy_mutex = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex, i32 noundef 0) #5
  %call103 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 1280, i32 noundef -2147483648, i32 noundef 0, i32 noundef 100) #5
  br i1 %call103, label %if.end105, label %do.end190

if.end105:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wr, align 4
  %shl153 = shl nuw nsw i32 %shr, 15
  %and154 = and i32 %shl153, 229376
  %conv127 = zext i8 %value to i32
  %shl179 = shl nuw nsw i32 %conv2, 8
  %and180 = and i32 %shl179, 32512
  %or = or i32 %and154, %conv127
  %or181 = or i32 %or, %and180
  %or183 = or i32 %or181, -1073741824
  tail call void %6(ptr noundef %dev, i32 noundef 1280, i32 noundef %or183) #5
  tail call void @mutex_unlock(ptr noundef %phy_mutex) #5
  br label %cleanup

do.end190:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %phy_mutex) #5
  %dev191 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %7 = ptrtoint ptr %dev191 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev191, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.14, i32 noundef %conv44, i32 noundef %conv2, i32 noundef -110) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end190, %if.end105, %if.then65, %land.rhs54.cleanup_crit_edge, %if.then12, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -22, %land.rhs54.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ], [ -22, %if.then65 ], [ -22, %if.then12 ], [ -110, %do.end190 ], [ 0, %if.end105 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_mcu_function_select(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt76x02_ext_pa_enabled(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_min_avg_rssi(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt76x02_phy_adjust_vga_gain(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_phy_dfs_adjust_agc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_eeprom_copy(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt76x0_rf_patch_reg_array(ptr noundef %dev, ptr nocapture noundef readonly %rp, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %pair.i = alloca %struct.mt76_reg_pair, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp57 = icmp sgt i32 %len, 0
  br i1 %cmp57, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rev.i.i38 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %bus.i41 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = getelementptr inbounds %struct.mt76_reg_pair, ptr %pair.i, i32 0, i32 1
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %mt76x0_rf_wr.exit.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %mt76x0_rf_wr.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mt76_reg_pair, ptr %rp, i32 %i.058
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %value = getelementptr %struct.mt76_reg_pair, ptr %rp, i32 %i.058, i32 1
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %conv = trunc i32 %4 to i8
  %5 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %2, label %for.body.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 21, label %sw.bb8
    i32 327682, label %sw.bb13
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %6 = ptrtoint ptr %bus.i41 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i41, align 4
  %type = getelementptr inbounds %struct.mt76_bus_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %rev.i.i38 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rev.i.i38, align 4
  %shr.i.mask.i = and i32 %11, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1982857216, i32 %shr.i.mask.i)
  %cmp.i = icmp eq i32 %shr.i.mask.i, 1982857216
  %. = select i1 %cmp.i, i8 112, i8 99
  br label %sw.epilog

sw.bb8:                                           ; preds = %for.body
  %12 = ptrtoint ptr %bus.i41 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i41, align 4
  %type.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i35 = icmp eq i32 %15, 0
  br i1 %cmp.i35, label %is_mt7610e.exit, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

is_mt7610e.exit:                                  ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %rev.i.i38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rev.i.i38, align 4
  %shr.i.mask.i37 = and i32 %17, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1980760064, i32 %shr.i.mask.i37)
  %cmp1.i = icmp eq i32 %shr.i.mask.i37, 1980760064
  %spec.select = select i1 %cmp1.i, i8 16, i8 18
  br label %sw.epilog

sw.bb13:                                          ; preds = %for.body
  %18 = ptrtoint ptr %rev.i.i38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rev.i.i38, align 4
  %shr.i.mask.i39 = and i32 %19, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1982857216, i32 %shr.i.mask.i39)
  %cmp.i40 = icmp eq i32 %shr.i.mask.i39, 1982857216
  br i1 %cmp.i40, label %sw.bb13.sw.epilog_crit_edge, label %if.else16

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.else16:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %bus.i41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i41, align 4
  %type.i42 = getelementptr inbounds %struct.mt76_bus_ops, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %type.i42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i43 = icmp eq i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1980760064, i32 %shr.i.mask.i39)
  %cmp1.i46 = icmp eq i32 %shr.i.mask.i39, 1980760064
  %or.cond = select i1 %cmp.i43, i1 %cmp1.i46, i1 false
  %spec.select56 = select i1 %or.cond, i8 0, i8 12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else16, %sw.bb13.sw.epilog_crit_edge, %is_mt7610e.exit, %sw.bb8.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %val.0 = phi i8 [ %conv, %for.body.sw.epilog_crit_edge ], [ %., %if.then ], [ 115, %sw.bb.sw.epilog_crit_edge ], [ 29, %sw.bb13.sw.epilog_crit_edge ], [ 18, %sw.bb8.sw.epilog_crit_edge ], [ %spec.select, %is_mt7610e.exit ], [ %spec.select56, %if.else16 ]
  %24 = ptrtoint ptr %bus.i41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i41, align 4
  %type.i51 = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %type.i51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i52 = icmp eq i32 %27, 1
  br i1 %cmp.i52, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair.i) #5
  %28 = ptrtoint ptr %pair.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %2, ptr %pair.i, align 4
  %conv.i = zext i8 %val.0 to i32
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv.i, ptr %0, align 4
  %30 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %state.i, align 4
  %32 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.then.i.if.end31.i_crit_edge

if.then.i.if.end31.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b50.i = load i1, ptr @mt76x0_rf_wr.__already_done, align 1
  br i1 %.b50.i, label %land.rhs.i.if.end31.i_crit_edge, label %if.then10.i, !prof !74

land.rhs.i.if.end31.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i

if.then10.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt76x0_rf_wr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then10.i, %land.rhs.i.if.end31.i_crit_edge, %if.then.i.if.end31.i_crit_edge
  %33 = ptrtoint ptr %bus.i41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus.i41, align 4
  %wr_rp.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %wr_rp.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wr_rp.i, align 4
  %call40.i = call i32 %36(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull %pair.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair.i) #5
  br label %mt76x0_rf_wr.exit

if.else.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i = call fastcc i32 @mt76x0_rf_csr_wr(ptr noundef %dev, i32 noundef %2, i8 noundef zeroext %val.0) #5
  br label %mt76x0_rf_wr.exit

mt76x0_rf_wr.exit:                                ; preds = %if.else.i, %if.end31.i
  %inc = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %mt76x0_rf_wr.exit.for.end_crit_edge, label %mt76x0_rf_wr.exit.for.body_crit_edge

mt76x0_rf_wr.exit.for.body_crit_edge:             ; preds = %mt76x0_rf_wr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

mt76x0_rf_wr.exit.for.end_crit_edge:              ; preds = %mt76x0_rf_wr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %mt76x0_rf_wr.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !19, !21, !23, !25, !27, !28, !29, !30, !32, !34, !36, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/phy.c", i32 197, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt76x0_phy_wait_bbp_ready._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt76x0_phy_wait_bbp_ready._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/phy.c", i32 201, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mt76x0_phy_wait_bbp_ready.__UNIQUE_ID_ddebug427, !9, !"__UNIQUE_ID_ddebug427", i1 false, i1 false}
!12 = !{ptr @__ksymtab_mt76x0_phy_calibrate, !13, !"__ksymtab_mt76x0_phy_calibrate", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/phy.c", i32 909, i32 1}
!14 = !{ptr @mt76x0_phy_init.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/phy.c", i32 1207, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mt76x0_phy_init.__key.8, !15, !"__key", i1 false, i1 false}
!18 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/phy.c", i32 129, i32 3}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/phy.c", i32 71, i32 6}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/phy.c", i32 71, i32 33}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/phy.c", i32 96, i32 3}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mt76x0_rf_csr_rr._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @mt76x0_rf_csr_rr._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/phy.c", i32 111, i32 3}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/phy.c", i32 32, i32 6}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/phy.c", i32 32, i32 33}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/phy.c", i32 53, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mt76x0_rf_csr_wr._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @mt76x0_rf_csr_wr._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @mt76x0_rf_2g_channel_0_tab, !42, !"mt76x0_rf_2g_channel_0_tab", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/initvals_phy.h", i32 65, i32 35}
!43 = !{ptr @mt76x0_rf_5g_channel_0_tab, !44, !"mt76x0_rf_5g_channel_0_tab", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/initvals_phy.h", i32 142, i32 35}
!45 = !{ptr @mt76x0_sdm_channel, !46, !"mt76x0_sdm_channel", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/initvals_phy.h", i32 576, i32 17}
!47 = !{ptr @mt76x0_frequency_plan, !48, !"mt76x0_frequency_plan", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/initvals_phy.h", i32 320, i32 38}
!49 = !{ptr @mt76x0_sdm_frequency_plan, !50, !"mt76x0_sdm_frequency_plan", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/initvals_phy.h", i32 448, i32 38}
!51 = !{ptr @mt76x0_rf_bw_switch_tab, !52, !"mt76x0_rf_bw_switch_tab", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/initvals_phy.h", i32 228, i32 43}
!53 = !{ptr @mt76x0_rf_band_switch_tab, !54, !"mt76x0_rf_band_switch_tab", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/initvals_phy.h", i32 273, i32 43}
!55 = !{ptr @mt76x0_rf_ext_pa_tab, !56, !"mt76x0_rf_ext_pa_tab", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/initvals_phy.h", i32 586, i32 43}
!57 = !{ptr @mt76x0_bbp_switch_tab, !58, !"mt76x0_bbp_switch_tab", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/initvals.h", i32 14, i32 44}
!59 = !{ptr @mt76x0_rf_central_tab, !60, !"mt76x0_rf_central_tab", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/initvals_phy.h", i32 11, i32 35}
!61 = !{ptr @mt76x0_rf_vga_channel_0_tab, !62, !"mt76x0_rf_vga_channel_0_tab", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/initvals_phy.h", i32 189, i32 35}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 2148719744, i64 2148719749, i64 2148719762, i64 2148719806, i64 2148719840, i64 2148719861}
!73 = !{!"auto-init"}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{!"branch_weights", i32 1, i32 2000}
!76 = !{i8 0, i8 2}
