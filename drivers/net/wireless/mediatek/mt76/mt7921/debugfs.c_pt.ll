; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mt7921_dev = type { %union.anon, ptr, %struct.mt7921_phy, %struct.tasklet_struct, %struct.work_struct, i8, %struct.list_head, %struct.spinlock, i8, %struct.mt76_connac_pm, %struct.mt76_connac_coredump, ptr, [32 x i8] }
%union.anon = type { %struct.mt76_dev }
%struct.mt7921_phy = type { ptr, ptr, [6 x [13 x %struct.ieee80211_sband_iftype_data]], i32, i64, i16, i16, i8, i32, i32, %struct.mib_stats, i8, %struct.sk_buff_head, %struct.delayed_work }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.128 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.128 = type { ptr, i32 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.mt76_connac_pm = type { i8, i8, i8, %struct.spinlock, [4 x %struct.anon.146], %struct.work_struct, %struct.wait_queue_head, %struct.anon.147, %struct.mutex, %struct.delayed_work, i32, i32, %struct.anon.148 }
%struct.anon.146 = type { ptr, ptr }
%struct.anon.147 = type { %struct.spinlock, i32 }
%struct.anon.148 = type { i32, i32, i32, i32, i32 }
%struct.mt76_connac_coredump = type { %struct.sk_buff_head, %struct.delayed_work, i32 }
%struct.mt7921_txpwr = type { i8, [3 x i8], [3 x %struct.anon.150] }
%struct.anon.150 = type { i8, [4 x i8], [8 x i8], [8 x i8], [9 x i8], [12 x i8], [12 x i8], [12 x i8], [12 x i8], [12 x i8], [12 x i8], [12 x i8], [12 x i8], [12 x i8], [12 x i8], [12 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.94, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.95, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.96, ptr, %struct.address_space, %struct.list_head, %union.anon.99, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.94 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.95 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.96 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.99 = type { ptr }

@fops_regval = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_regval_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"queues\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acq\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"txpower_sku\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_stats\00", [23 x i8] zeroinitializer }, align 32
@mt7921_tx_stats_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt7921_tx_stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fw_debug\00", [23 x i8] zeroinitializer }, align 32
@fops_fw_debug = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_fw_debug_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"runtime-pm\00", [21 x i8] zeroinitializer }, align 32
@fops_pm = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_pm_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"idle-timeout\00", [19 x i8] zeroinitializer }, align 32
@fops_pm_idle_timeout = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_pm_idle_timeout_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chip_reset\00", [21 x i8] zeroinitializer }, align 32
@fops_reset = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_reset_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"runtime_pm_stats\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"deep-sleep\00", [21 x i8] zeroinitializer }, align 32
@fops_ds = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_ds_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sched-quota\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0x%08llx\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WFDMA0\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MCUWM\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MCUFWQ\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:\09queued=%d head=%d tail=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AC%d%d: queued=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Tx power table (channel %d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%-16s  %6s %6s %6s %6s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1m\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2m\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"5m\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"11m\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CCK (user)\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CCK (eeprom)\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CCK (tmac)\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%-16s  %6s %6s %6s %6s %6s %6s %6s %6s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"6m\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"9m\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"12m\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"18m\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"24m\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"36m\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"48m\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"54m\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OFDM (user)\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"OFDM (eeprom)\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OFDM (tmac)\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mcs0\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mcs1\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mcs2\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mcs3\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mcs4\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mcs5\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mcs6\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mcs7\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HT20 (user)\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HT20 (eeprom)\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HT20 (tmac)\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%-16s  %6s %6s %6s %6s %6s %6s %6s %6s %6s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mcs32\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HT40 (user)\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HT40 (eeprom)\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HT40 (tmac)\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%-16s  %6s %6s %6s %6s %6s %6s %6s %6s %6s %6s %6s %6s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mcs8\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mcs9\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mcs10\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mcs11\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VHT20 (user)\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VHT20 (eeprom)\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VHT20 (tmac)\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VHT40 (user)\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VHT40 (eeprom)\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VHT40 (tmac)\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VHT80 (user)\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VHT80 (eeprom)\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VHT80 (tmac)\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VHT160 (user)\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VHT160 (eeprom)\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VHT160 (tmac)\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HE26 (user)\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HE26 (eeprom)\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HE26 (tmac)\00", [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HE52 (user)\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HE52 (eeprom)\00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HE52 (tmac)\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HE106 (user)\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HE106 (eeprom)\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HE106 (tmac)\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HE242 (user)\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HE242 (eeprom)\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HE242 (tmac)\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HE484 (user)\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HE484 (eeprom)\00", [17 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HE484 (tmac)\00", [19 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HE996 (user)\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HE996 (eeprom)\00", [17 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HE996 (tmac)\00", [19 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HE996x2 (user)\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HE996x2 (eeprom)\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HE996x2 (tmac)\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%-16s:\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %6s\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N.A\00", [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %6d\00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Tx MSDU stat:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AMSDU pack count of %d MSDU in TXD: %8d \00", [55 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(%3d%%)\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\0APhy0\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Length: %8d | \00", [17 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%3d  %3d | \00", [20 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\0ACount:  \00", [22 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%8d | \00", [25 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BA miss count: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.108 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"awake time: %14u\0Adoze time: %15u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"low power wakes: %9d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pse_data_quota\09%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ple_data_quota\09%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pse_mcu_quota\09%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sched_deficit\09%d\0A\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.114 = private unnamed_addr constant [12 x i8] c"fops_regval\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 441, i32 45 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 443, i32 45 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 445, i32 45 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 447, i32 22 }
@___asan_gen_.129 = private unnamed_addr constant [21 x i8] c"mt7921_tx_stats_fops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 122, i32 1 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 448, i32 22 }
@___asan_gen_.135 = private unnamed_addr constant [14 x i8] c"fops_fw_debug\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 449, i32 22 }
@___asan_gen_.141 = private unnamed_addr constant [8 x i8] c"fops_pm\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 318, i32 1 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 450, i32 22 }
@___asan_gen_.147 = private unnamed_addr constant [21 x i8] c"fops_pm_idle_timeout\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 393, i32 1 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 452, i32 22 }
@___asan_gen_.153 = private unnamed_addr constant [11 x i8] c"fops_reset\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 417, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 453, i32 45 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 455, i32 22 }
@___asan_gen_.162 = private unnamed_addr constant [8 x i8] c"fops_ds\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 347, i32 1 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 457, i32 46 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 31, i32 1 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 164, i32 33 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 165, i32 35 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 166, i32 36 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 177, i32 7 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 148, i32 17 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 227, i32 16 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 228, i32 16 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 229, i32 6 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 229, i32 11 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 229, i32 17 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 229, i32 23 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 229, i32 29 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 230, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 232, i32 16 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 233, i32 11 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 233, i32 17 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 233, i32 23 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 233, i32 30 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 233, i32 37 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 233, i32 44 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 234, i32 6 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 234, i32 13 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 235, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 238, i32 11 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 238, i32 19 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 238, i32 27 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 238, i32 35 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 238, i32 43 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 238, i32 51 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 239, i32 6 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 239, i32 14 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 240, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 242, i32 16 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 244, i32 22 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 245, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 247, i32 16 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 249, i32 22 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 249, i32 30 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 249, i32 38 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 249, i32 47 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 250, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 251, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 252, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 253, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 254, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 255, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 256, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 257, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 258, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 259, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 260, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 191, i32 19 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 194, i32 21 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 194, i32 29 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 196, i32 21 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 197, i32 17 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 106, i32 17 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 108, i32 20 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 111, i32 21 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 80, i32 19 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 82, i32 19 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 84, i32 20 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 86, i32 17 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 88, i32 20 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 91, i32 19 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 58, i32 1 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 364, i32 16 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 368, i32 16 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 425, i32 16 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 426, i32 16 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 427, i32 16 }
@___asan_gen_.474 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.475 = private constant [55 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 428, i32 16 }
@llvm.compiler.used = appending global [121 x ptr] [ptr @fops_regval, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mt7921_tx_stats_fops, ptr @.str.4, ptr @fops_fw_debug, ptr @.str.5, ptr @fops_pm, ptr @.str.6, ptr @fops_pm_idle_timeout, ptr @.str.7, ptr @fops_reset, ptr @.str.8, ptr @.str.9, ptr @fops_ds, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_regval to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_tx_stats_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_fw_debug to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_pm to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_pm_idle_timeout to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_reset to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_ds to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7921_init_debugfs(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mt76_register_debugfs_fops(ptr noundef %dev, ptr noundef nonnull @fops_regval) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  tail call void @debugfs_create_devm_seqfile(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %call, ptr noundef nonnull @mt7921_queues_read) #4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  tail call void @debugfs_create_devm_seqfile(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull %call, ptr noundef nonnull @mt7921_queues_acq) #4
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  tail call void @debugfs_create_devm_seqfile(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef nonnull %call, ptr noundef nonnull @mt7921_txpwr) #4
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 256, ptr noundef nonnull %call, ptr noundef %dev, ptr noundef nonnull @mt7921_tx_stats_fops) #4
  %call5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %dev, ptr noundef nonnull @fops_fw_debug) #4
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %dev, ptr noundef nonnull @fops_pm) #4
  %call7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %dev, ptr noundef nonnull @fops_pm_idle_timeout) #4
  %call8 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %dev, ptr noundef nonnull @fops_reset) #4
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 8
  tail call void @debugfs_create_devm_seqfile(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull %call, ptr noundef nonnull @mt7921_pm_stats) #4
  %call10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %dev, ptr noundef nonnull @fops_ds) #4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %type = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp eq i32 %11, 2
  br i1 %cmp, label %if.then11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 8
  tail call void @debugfs_create_devm_seqfile(ptr noundef %13, ptr noundef nonnull @.str.10, ptr noundef nonnull %call, ptr noundef nonnull @mt7921s_sched_quota_read) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then11 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt76_register_debugfs_fops(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_devm_seqfile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_queues_read(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.mt76_phy, ptr %3, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 8
  %q_mcu = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %q_mcu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %q_mcu, align 16
  %arrayidx7 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 22, i32 2
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx7, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %queued = getelementptr inbounds %struct.mt76_queue, ptr %5, i32 0, i32 9
  %10 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %queued, align 4
  %head = getelementptr inbounds %struct.mt76_queue, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %head, align 2
  %conv = zext i16 %13 to i32
  %tail = getelementptr inbounds %struct.mt76_queue, ptr %5, i32 0, i32 7
  %14 = ptrtoint ptr %tail to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tail, align 4
  %conv14 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12, i32 noundef %11, i32 noundef %conv, i32 noundef %conv14) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %tobool.not.1 = icmp eq ptr %7, null
  br i1 %tobool.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  %queued.1 = getelementptr inbounds %struct.mt76_queue, ptr %7, i32 0, i32 9
  %16 = ptrtoint ptr %queued.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %queued.1, align 4
  %head.1 = getelementptr inbounds %struct.mt76_queue, ptr %7, i32 0, i32 6
  %18 = ptrtoint ptr %head.1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %head.1, align 2
  %conv.1 = zext i16 %19 to i32
  %tail.1 = getelementptr inbounds %struct.mt76_queue, ptr %7, i32 0, i32 7
  %20 = ptrtoint ptr %tail.1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tail.1, align 4
  %conv14.1 = zext i16 %21 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef %17, i32 noundef %conv.1, i32 noundef %conv14.1) #4
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end.1, %cleanup.cleanup.1_crit_edge
  %tobool.not.2 = icmp eq ptr %9, null
  br i1 %tobool.not.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.2

if.end.2:                                         ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #6
  %queued.2 = getelementptr inbounds %struct.mt76_queue, ptr %9, i32 0, i32 9
  %22 = ptrtoint ptr %queued.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %queued.2, align 4
  %head.2 = getelementptr inbounds %struct.mt76_queue, ptr %9, i32 0, i32 6
  %24 = ptrtoint ptr %head.2 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %head.2, align 2
  %conv.2 = zext i16 %25 to i32
  %tail.2 = getelementptr inbounds %struct.mt76_queue, ptr %9, i32 0, i32 7
  %26 = ptrtoint ptr %tail.2 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %tail.2, align 4
  %conv14.2 = zext i16 %27 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, i32 noundef %23, i32 noundef %conv.2, i32 noundef %conv14.2) #4
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end.2, %cleanup.1.cleanup.2_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_queues_acq(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %i.058 = phi i32 [ 0, %entry ], [ %inc31, %for.end.for.body_crit_edge ]
  %div.udiv60 = lshr i32 %i.058, 2
  %rem.urem = and i32 %i.058, 3
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %mul = shl i32 %div.udiv60, 4
  %shl = shl nuw nsw i32 %rem.urem, 2
  %add1 = add i32 %mul, -2113142016
  %add2 = or i32 %add1, %shl
  %call3 = tail call i32 %7(ptr noundef %3, i32 noundef %add2) #4
  %shl4 = shl i32 %div.udiv60, 8
  %shl10 = shl nuw nsw i32 %rem.urem, 5
  br label %for.body7

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.body
  %qlen.057 = phi i32 [ 0, %for.body ], [ %qlen.1, %for.inc.for.body7_crit_edge ]
  %j.056 = phi i32 [ 0, %for.body ], [ %inc, %for.inc.for.body7_crit_edge ]
  %shl8 = shl nuw i32 1, %j.056
  %and = and i32 %shl8, %call3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body7.for.inc_crit_edge

for.body7.for.inc_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr, align 4
  %add11 = add nuw nsw i32 %j.056, %shl10
  %or = or i32 %shl4, %add11
  %or12 = or i32 %or, -2147450880
  tail call void %11(ptr noundef %3, i32 noundef -2113142352, i32 noundef %or12) #4
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call27 = tail call i32 %15(ptr noundef %3, i32 noundef -2113142340) #4
  %and28 = and i32 %call27, 4095
  %add29 = add i32 %and28, %qlen.057
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body7.for.inc_crit_edge
  %qlen.1 = phi i32 [ %qlen.057, %for.body7.for.inc_crit_edge ], [ %add29, %if.end ]
  %inc = add nuw nsw i32 %j.056, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body7_crit_edge

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body7

for.end:                                          ; preds = %for.inc
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %div.udiv60, i32 noundef %rem.urem, i32 noundef %qlen.1) #4
  %inc31 = add nuw nsw i32 %i.058, 1
  %exitcond59.not = icmp eq i32 %inc31, 16
  br i1 %exitcond59.not, label %for.end32, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end32:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_txpwr(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %txpwr = alloca %struct.mt7921_txpwr, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 490, ptr nonnull %txpwr) #4
  %4 = call ptr @memset(ptr %txpwr, i32 255, i32 490)
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #4
  %call1 = call i32 @mt7921_get_txpwr_info(ptr noundef %3, ptr noundef nonnull %txpwr) #4
  call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #4
  call void @mutex_unlock(ptr noundef %mutex.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %txpwr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %txpwr, align 1
  %conv = zext i8 %6 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.17, i32 noundef %conv) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #4
  %cck = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.24) #4
  %7 = ptrtoint ptr %cck to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cck, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %8)
  %cmp1.i = icmp eq i8 %8, 127
  br i1 %cmp1.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = sext i8 %8 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i
  %arrayidx.i.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %10)
  %cmp1.i.1 = icmp eq i8 %10, 127
  br i1 %cmp1.i.1, label %if.then.i.1, label %if.else.i.1

if.else.i.1:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i.1 = sext i8 %10 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i.1) #4
  br label %for.inc.i.1

if.then.i.1:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then.i.1, %if.else.i.1
  %arrayidx.i.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %12)
  %cmp1.i.2 = icmp eq i8 %12, 127
  br i1 %cmp1.i.2, label %if.then.i.2, label %if.else.i.2

if.else.i.2:                                      ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i.2 = sext i8 %12 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i.2) #4
  br label %for.inc.i.2

if.then.i.2:                                      ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.then.i.2, %if.else.i.2
  %arrayidx.i.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %14)
  %cmp1.i.3 = icmp eq i8 %14, 127
  br i1 %cmp1.i.3, label %if.then.i.3, label %if.else.i.3

if.else.i.3:                                      ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i.3 = sext i8 %14 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i.3) #4
  br label %for.inc.i.3

if.then.i.3:                                      ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i.3

for.inc.i.3:                                      ; preds = %if.then.i.3, %if.else.i.3
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %cck6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.25) #4
  %15 = ptrtoint ptr %cck6 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cck6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %16)
  %cmp1.i227 = icmp eq i8 %16, 127
  br i1 %cmp1.i227, label %if.then.i229, label %if.else.i231

if.then.i229:                                     ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i234

if.else.i231:                                     ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i230 = sext i8 %16 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i230) #4
  br label %for.inc.i234

for.inc.i234:                                     ; preds = %if.else.i231, %if.then.i229
  %arrayidx.i226.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx.i226.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i226.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %18)
  %cmp1.i227.1 = icmp eq i8 %18, 127
  br i1 %cmp1.i227.1, label %if.then.i229.1, label %if.else.i231.1

if.else.i231.1:                                   ; preds = %for.inc.i234
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i230.1 = sext i8 %18 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i230.1) #4
  br label %for.inc.i234.1

if.then.i229.1:                                   ; preds = %for.inc.i234
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i234.1

for.inc.i234.1:                                   ; preds = %if.then.i229.1, %if.else.i231.1
  %arrayidx.i226.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 1, i32 2
  %19 = ptrtoint ptr %arrayidx.i226.2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i226.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %20)
  %cmp1.i227.2 = icmp eq i8 %20, 127
  br i1 %cmp1.i227.2, label %if.then.i229.2, label %if.else.i231.2

if.else.i231.2:                                   ; preds = %for.inc.i234.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i230.2 = sext i8 %20 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i230.2) #4
  br label %for.inc.i234.2

if.then.i229.2:                                   ; preds = %for.inc.i234.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i234.2

for.inc.i234.2:                                   ; preds = %if.then.i229.2, %if.else.i231.2
  %arrayidx.i226.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 1, i32 3
  %21 = ptrtoint ptr %arrayidx.i226.3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i226.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %22)
  %cmp1.i227.3 = icmp eq i8 %22, 127
  br i1 %cmp1.i227.3, label %if.then.i229.3, label %if.else.i231.3

if.else.i231.3:                                   ; preds = %for.inc.i234.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i230.3 = sext i8 %22 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i230.3) #4
  br label %for.inc.i234.3

if.then.i229.3:                                   ; preds = %for.inc.i234.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i234.3

for.inc.i234.3:                                   ; preds = %if.then.i229.3, %if.else.i231.3
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %cck10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.26) #4
  %23 = ptrtoint ptr %cck10 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cck10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %24)
  %cmp1.i238 = icmp eq i8 %24, 127
  br i1 %cmp1.i238, label %if.then.i240, label %if.else.i242

if.then.i240:                                     ; preds = %for.inc.i234.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i245

if.else.i242:                                     ; preds = %for.inc.i234.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i241 = sext i8 %24 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i241) #4
  br label %for.inc.i245

for.inc.i245:                                     ; preds = %if.else.i242, %if.then.i240
  %arrayidx.i237.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx.i237.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i237.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %26)
  %cmp1.i238.1 = icmp eq i8 %26, 127
  br i1 %cmp1.i238.1, label %if.then.i240.1, label %if.else.i242.1

if.else.i242.1:                                   ; preds = %for.inc.i245
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i241.1 = sext i8 %26 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i241.1) #4
  br label %for.inc.i245.1

if.then.i240.1:                                   ; preds = %for.inc.i245
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i245.1

for.inc.i245.1:                                   ; preds = %if.then.i240.1, %if.else.i242.1
  %arrayidx.i237.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 1, i32 2
  %27 = ptrtoint ptr %arrayidx.i237.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i237.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %28)
  %cmp1.i238.2 = icmp eq i8 %28, 127
  br i1 %cmp1.i238.2, label %if.then.i240.2, label %if.else.i242.2

if.else.i242.2:                                   ; preds = %for.inc.i245.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i241.2 = sext i8 %28 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i241.2) #4
  br label %for.inc.i245.2

if.then.i240.2:                                   ; preds = %for.inc.i245.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i245.2

for.inc.i245.2:                                   ; preds = %if.then.i240.2, %if.else.i242.2
  %arrayidx.i237.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 1, i32 3
  %29 = ptrtoint ptr %arrayidx.i237.3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i237.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %30)
  %cmp1.i238.3 = icmp eq i8 %30, 127
  br i1 %cmp1.i238.3, label %if.then.i240.3, label %if.else.i242.3

if.else.i242.3:                                   ; preds = %for.inc.i245.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i241.3 = sext i8 %30 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i241.3) #4
  br label %for.inc.i245.3

if.then.i240.3:                                   ; preds = %for.inc.i245.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i245.3

for.inc.i245.3:                                   ; preds = %if.then.i240.3, %if.else.i242.3
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #4
  %ofdm = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 2
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.36) #4
  %31 = ptrtoint ptr %ofdm to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ofdm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %32)
  %cmp1.i249 = icmp eq i8 %32, 127
  br i1 %cmp1.i249, label %if.then.i251, label %if.else.i253

if.then.i251:                                     ; preds = %for.inc.i245.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i256

if.else.i253:                                     ; preds = %for.inc.i245.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i252 = sext i8 %32 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i252) #4
  br label %for.inc.i256

for.inc.i256:                                     ; preds = %if.else.i253, %if.then.i251
  %arrayidx.i248.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %arrayidx.i248.1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i248.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %34)
  %cmp1.i249.1 = icmp eq i8 %34, 127
  br i1 %cmp1.i249.1, label %if.then.i251.1, label %if.else.i253.1

if.else.i253.1:                                   ; preds = %for.inc.i256
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i252.1 = sext i8 %34 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i252.1) #4
  br label %for.inc.i256.1

if.then.i251.1:                                   ; preds = %for.inc.i256
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i256.1

for.inc.i256.1:                                   ; preds = %if.then.i251.1, %if.else.i253.1
  %arrayidx.i248.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %arrayidx.i248.2 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i248.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %36)
  %cmp1.i249.2 = icmp eq i8 %36, 127
  br i1 %cmp1.i249.2, label %if.then.i251.2, label %if.else.i253.2

if.else.i253.2:                                   ; preds = %for.inc.i256.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i252.2 = sext i8 %36 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i252.2) #4
  br label %for.inc.i256.2

if.then.i251.2:                                   ; preds = %for.inc.i256.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i256.2

for.inc.i256.2:                                   ; preds = %if.then.i251.2, %if.else.i253.2
  %arrayidx.i248.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 2, i32 3
  %37 = ptrtoint ptr %arrayidx.i248.3 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i248.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %38)
  %cmp1.i249.3 = icmp eq i8 %38, 127
  br i1 %cmp1.i249.3, label %if.then.i251.3, label %if.else.i253.3

if.else.i253.3:                                   ; preds = %for.inc.i256.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i252.3 = sext i8 %38 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i252.3) #4
  br label %for.inc.i256.3

if.then.i251.3:                                   ; preds = %for.inc.i256.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i256.3

for.inc.i256.3:                                   ; preds = %if.then.i251.3, %if.else.i253.3
  %arrayidx.i248.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 2, i32 4
  %39 = ptrtoint ptr %arrayidx.i248.4 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i248.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %40)
  %cmp1.i249.4 = icmp eq i8 %40, 127
  br i1 %cmp1.i249.4, label %if.then.i251.4, label %if.else.i253.4

if.else.i253.4:                                   ; preds = %for.inc.i256.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i252.4 = sext i8 %40 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i252.4) #4
  br label %for.inc.i256.4

if.then.i251.4:                                   ; preds = %for.inc.i256.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i256.4

for.inc.i256.4:                                   ; preds = %if.then.i251.4, %if.else.i253.4
  %arrayidx.i248.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 2, i32 5
  %41 = ptrtoint ptr %arrayidx.i248.5 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i248.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %42)
  %cmp1.i249.5 = icmp eq i8 %42, 127
  br i1 %cmp1.i249.5, label %if.then.i251.5, label %if.else.i253.5

if.else.i253.5:                                   ; preds = %for.inc.i256.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i252.5 = sext i8 %42 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i252.5) #4
  br label %for.inc.i256.5

if.then.i251.5:                                   ; preds = %for.inc.i256.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i256.5

for.inc.i256.5:                                   ; preds = %if.then.i251.5, %if.else.i253.5
  %arrayidx.i248.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 2, i32 6
  %43 = ptrtoint ptr %arrayidx.i248.6 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i248.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %44)
  %cmp1.i249.6 = icmp eq i8 %44, 127
  br i1 %cmp1.i249.6, label %if.then.i251.6, label %if.else.i253.6

if.else.i253.6:                                   ; preds = %for.inc.i256.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i252.6 = sext i8 %44 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i252.6) #4
  br label %for.inc.i256.6

if.then.i251.6:                                   ; preds = %for.inc.i256.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i256.6

for.inc.i256.6:                                   ; preds = %if.then.i251.6, %if.else.i253.6
  %arrayidx.i248.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 2, i32 7
  %45 = ptrtoint ptr %arrayidx.i248.7 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i248.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %46)
  %cmp1.i249.7 = icmp eq i8 %46, 127
  br i1 %cmp1.i249.7, label %if.then.i251.7, label %if.else.i253.7

if.else.i253.7:                                   ; preds = %for.inc.i256.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i252.7 = sext i8 %46 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i252.7) #4
  br label %for.inc.i256.7

if.then.i251.7:                                   ; preds = %for.inc.i256.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i256.7

for.inc.i256.7:                                   ; preds = %if.then.i251.7, %if.else.i253.7
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %ofdm17 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 2
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.37) #4
  %47 = ptrtoint ptr %ofdm17 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ofdm17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %48)
  %cmp1.i260 = icmp eq i8 %48, 127
  br i1 %cmp1.i260, label %if.then.i262, label %if.else.i264

if.then.i262:                                     ; preds = %for.inc.i256.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i267

if.else.i264:                                     ; preds = %for.inc.i256.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i263 = sext i8 %48 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i263) #4
  br label %for.inc.i267

for.inc.i267:                                     ; preds = %if.else.i264, %if.then.i262
  %arrayidx.i259.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 2, i32 1
  %49 = ptrtoint ptr %arrayidx.i259.1 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i259.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %50)
  %cmp1.i260.1 = icmp eq i8 %50, 127
  br i1 %cmp1.i260.1, label %if.then.i262.1, label %if.else.i264.1

if.else.i264.1:                                   ; preds = %for.inc.i267
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i263.1 = sext i8 %50 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i263.1) #4
  br label %for.inc.i267.1

if.then.i262.1:                                   ; preds = %for.inc.i267
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i267.1

for.inc.i267.1:                                   ; preds = %if.then.i262.1, %if.else.i264.1
  %arrayidx.i259.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 2, i32 2
  %51 = ptrtoint ptr %arrayidx.i259.2 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i259.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %52)
  %cmp1.i260.2 = icmp eq i8 %52, 127
  br i1 %cmp1.i260.2, label %if.then.i262.2, label %if.else.i264.2

if.else.i264.2:                                   ; preds = %for.inc.i267.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i263.2 = sext i8 %52 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i263.2) #4
  br label %for.inc.i267.2

if.then.i262.2:                                   ; preds = %for.inc.i267.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i267.2

for.inc.i267.2:                                   ; preds = %if.then.i262.2, %if.else.i264.2
  %arrayidx.i259.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 2, i32 3
  %53 = ptrtoint ptr %arrayidx.i259.3 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i259.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %54)
  %cmp1.i260.3 = icmp eq i8 %54, 127
  br i1 %cmp1.i260.3, label %if.then.i262.3, label %if.else.i264.3

if.else.i264.3:                                   ; preds = %for.inc.i267.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i263.3 = sext i8 %54 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i263.3) #4
  br label %for.inc.i267.3

if.then.i262.3:                                   ; preds = %for.inc.i267.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i267.3

for.inc.i267.3:                                   ; preds = %if.then.i262.3, %if.else.i264.3
  %arrayidx.i259.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 2, i32 4
  %55 = ptrtoint ptr %arrayidx.i259.4 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i259.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %56)
  %cmp1.i260.4 = icmp eq i8 %56, 127
  br i1 %cmp1.i260.4, label %if.then.i262.4, label %if.else.i264.4

if.else.i264.4:                                   ; preds = %for.inc.i267.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i263.4 = sext i8 %56 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i263.4) #4
  br label %for.inc.i267.4

if.then.i262.4:                                   ; preds = %for.inc.i267.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i267.4

for.inc.i267.4:                                   ; preds = %if.then.i262.4, %if.else.i264.4
  %arrayidx.i259.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 2, i32 5
  %57 = ptrtoint ptr %arrayidx.i259.5 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i259.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %58)
  %cmp1.i260.5 = icmp eq i8 %58, 127
  br i1 %cmp1.i260.5, label %if.then.i262.5, label %if.else.i264.5

if.else.i264.5:                                   ; preds = %for.inc.i267.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i263.5 = sext i8 %58 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i263.5) #4
  br label %for.inc.i267.5

if.then.i262.5:                                   ; preds = %for.inc.i267.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i267.5

for.inc.i267.5:                                   ; preds = %if.then.i262.5, %if.else.i264.5
  %arrayidx.i259.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 2, i32 6
  %59 = ptrtoint ptr %arrayidx.i259.6 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i259.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %60)
  %cmp1.i260.6 = icmp eq i8 %60, 127
  br i1 %cmp1.i260.6, label %if.then.i262.6, label %if.else.i264.6

if.else.i264.6:                                   ; preds = %for.inc.i267.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i263.6 = sext i8 %60 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i263.6) #4
  br label %for.inc.i267.6

if.then.i262.6:                                   ; preds = %for.inc.i267.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i267.6

for.inc.i267.6:                                   ; preds = %if.then.i262.6, %if.else.i264.6
  %arrayidx.i259.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 2, i32 7
  %61 = ptrtoint ptr %arrayidx.i259.7 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i259.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %62)
  %cmp1.i260.7 = icmp eq i8 %62, 127
  br i1 %cmp1.i260.7, label %if.then.i262.7, label %if.else.i264.7

if.else.i264.7:                                   ; preds = %for.inc.i267.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i263.7 = sext i8 %62 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i263.7) #4
  br label %for.inc.i267.7

if.then.i262.7:                                   ; preds = %for.inc.i267.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i267.7

for.inc.i267.7:                                   ; preds = %if.then.i262.7, %if.else.i264.7
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %ofdm21 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 2
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.38) #4
  %63 = ptrtoint ptr %ofdm21 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ofdm21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %64)
  %cmp1.i271 = icmp eq i8 %64, 127
  br i1 %cmp1.i271, label %if.then.i273, label %if.else.i275

if.then.i273:                                     ; preds = %for.inc.i267.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i278

if.else.i275:                                     ; preds = %for.inc.i267.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i274 = sext i8 %64 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i274) #4
  br label %for.inc.i278

for.inc.i278:                                     ; preds = %if.else.i275, %if.then.i273
  %arrayidx.i270.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 2, i32 1
  %65 = ptrtoint ptr %arrayidx.i270.1 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i270.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %66)
  %cmp1.i271.1 = icmp eq i8 %66, 127
  br i1 %cmp1.i271.1, label %if.then.i273.1, label %if.else.i275.1

if.else.i275.1:                                   ; preds = %for.inc.i278
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i274.1 = sext i8 %66 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i274.1) #4
  br label %for.inc.i278.1

if.then.i273.1:                                   ; preds = %for.inc.i278
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i278.1

for.inc.i278.1:                                   ; preds = %if.then.i273.1, %if.else.i275.1
  %arrayidx.i270.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 2, i32 2
  %67 = ptrtoint ptr %arrayidx.i270.2 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.i270.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %68)
  %cmp1.i271.2 = icmp eq i8 %68, 127
  br i1 %cmp1.i271.2, label %if.then.i273.2, label %if.else.i275.2

if.else.i275.2:                                   ; preds = %for.inc.i278.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i274.2 = sext i8 %68 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i274.2) #4
  br label %for.inc.i278.2

if.then.i273.2:                                   ; preds = %for.inc.i278.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i278.2

for.inc.i278.2:                                   ; preds = %if.then.i273.2, %if.else.i275.2
  %arrayidx.i270.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 2, i32 3
  %69 = ptrtoint ptr %arrayidx.i270.3 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i270.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %70)
  %cmp1.i271.3 = icmp eq i8 %70, 127
  br i1 %cmp1.i271.3, label %if.then.i273.3, label %if.else.i275.3

if.else.i275.3:                                   ; preds = %for.inc.i278.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i274.3 = sext i8 %70 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i274.3) #4
  br label %for.inc.i278.3

if.then.i273.3:                                   ; preds = %for.inc.i278.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i278.3

for.inc.i278.3:                                   ; preds = %if.then.i273.3, %if.else.i275.3
  %arrayidx.i270.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 2, i32 4
  %71 = ptrtoint ptr %arrayidx.i270.4 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i270.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %72)
  %cmp1.i271.4 = icmp eq i8 %72, 127
  br i1 %cmp1.i271.4, label %if.then.i273.4, label %if.else.i275.4

if.else.i275.4:                                   ; preds = %for.inc.i278.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i274.4 = sext i8 %72 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i274.4) #4
  br label %for.inc.i278.4

if.then.i273.4:                                   ; preds = %for.inc.i278.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i278.4

for.inc.i278.4:                                   ; preds = %if.then.i273.4, %if.else.i275.4
  %arrayidx.i270.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 2, i32 5
  %73 = ptrtoint ptr %arrayidx.i270.5 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i270.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %74)
  %cmp1.i271.5 = icmp eq i8 %74, 127
  br i1 %cmp1.i271.5, label %if.then.i273.5, label %if.else.i275.5

if.else.i275.5:                                   ; preds = %for.inc.i278.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i274.5 = sext i8 %74 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i274.5) #4
  br label %for.inc.i278.5

if.then.i273.5:                                   ; preds = %for.inc.i278.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i278.5

for.inc.i278.5:                                   ; preds = %if.then.i273.5, %if.else.i275.5
  %arrayidx.i270.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 2, i32 6
  %75 = ptrtoint ptr %arrayidx.i270.6 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i270.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %76)
  %cmp1.i271.6 = icmp eq i8 %76, 127
  br i1 %cmp1.i271.6, label %if.then.i273.6, label %if.else.i275.6

if.else.i275.6:                                   ; preds = %for.inc.i278.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i274.6 = sext i8 %76 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i274.6) #4
  br label %for.inc.i278.6

if.then.i273.6:                                   ; preds = %for.inc.i278.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i278.6

for.inc.i278.6:                                   ; preds = %if.then.i273.6, %if.else.i275.6
  %arrayidx.i270.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 2, i32 7
  %77 = ptrtoint ptr %arrayidx.i270.7 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i270.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %78)
  %cmp1.i271.7 = icmp eq i8 %78, 127
  br i1 %cmp1.i271.7, label %if.then.i273.7, label %if.else.i275.7

if.else.i275.7:                                   ; preds = %for.inc.i278.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i274.7 = sext i8 %78 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i274.7) #4
  br label %for.inc.i278.7

if.then.i273.7:                                   ; preds = %for.inc.i278.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i278.7

for.inc.i278.7:                                   ; preds = %if.then.i273.7, %if.else.i275.7
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #4
  %ht20 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 3
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.47) #4
  %79 = ptrtoint ptr %ht20 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ht20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %80)
  %cmp1.i282 = icmp eq i8 %80, 127
  br i1 %cmp1.i282, label %if.then.i284, label %if.else.i286

if.then.i284:                                     ; preds = %for.inc.i278.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i289

if.else.i286:                                     ; preds = %for.inc.i278.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i285 = sext i8 %80 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i285) #4
  br label %for.inc.i289

for.inc.i289:                                     ; preds = %if.else.i286, %if.then.i284
  %arrayidx.i281.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 3, i32 1
  %81 = ptrtoint ptr %arrayidx.i281.1 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.i281.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %82)
  %cmp1.i282.1 = icmp eq i8 %82, 127
  br i1 %cmp1.i282.1, label %if.then.i284.1, label %if.else.i286.1

if.else.i286.1:                                   ; preds = %for.inc.i289
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i285.1 = sext i8 %82 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i285.1) #4
  br label %for.inc.i289.1

if.then.i284.1:                                   ; preds = %for.inc.i289
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i289.1

for.inc.i289.1:                                   ; preds = %if.then.i284.1, %if.else.i286.1
  %arrayidx.i281.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 3, i32 2
  %83 = ptrtoint ptr %arrayidx.i281.2 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.i281.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %84)
  %cmp1.i282.2 = icmp eq i8 %84, 127
  br i1 %cmp1.i282.2, label %if.then.i284.2, label %if.else.i286.2

if.else.i286.2:                                   ; preds = %for.inc.i289.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i285.2 = sext i8 %84 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i285.2) #4
  br label %for.inc.i289.2

if.then.i284.2:                                   ; preds = %for.inc.i289.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i289.2

for.inc.i289.2:                                   ; preds = %if.then.i284.2, %if.else.i286.2
  %arrayidx.i281.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 3, i32 3
  %85 = ptrtoint ptr %arrayidx.i281.3 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i281.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %86)
  %cmp1.i282.3 = icmp eq i8 %86, 127
  br i1 %cmp1.i282.3, label %if.then.i284.3, label %if.else.i286.3

if.else.i286.3:                                   ; preds = %for.inc.i289.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i285.3 = sext i8 %86 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i285.3) #4
  br label %for.inc.i289.3

if.then.i284.3:                                   ; preds = %for.inc.i289.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i289.3

for.inc.i289.3:                                   ; preds = %if.then.i284.3, %if.else.i286.3
  %arrayidx.i281.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 3, i32 4
  %87 = ptrtoint ptr %arrayidx.i281.4 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i281.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %88)
  %cmp1.i282.4 = icmp eq i8 %88, 127
  br i1 %cmp1.i282.4, label %if.then.i284.4, label %if.else.i286.4

if.else.i286.4:                                   ; preds = %for.inc.i289.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i285.4 = sext i8 %88 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i285.4) #4
  br label %for.inc.i289.4

if.then.i284.4:                                   ; preds = %for.inc.i289.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i289.4

for.inc.i289.4:                                   ; preds = %if.then.i284.4, %if.else.i286.4
  %arrayidx.i281.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 3, i32 5
  %89 = ptrtoint ptr %arrayidx.i281.5 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i281.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %90)
  %cmp1.i282.5 = icmp eq i8 %90, 127
  br i1 %cmp1.i282.5, label %if.then.i284.5, label %if.else.i286.5

if.else.i286.5:                                   ; preds = %for.inc.i289.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i285.5 = sext i8 %90 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i285.5) #4
  br label %for.inc.i289.5

if.then.i284.5:                                   ; preds = %for.inc.i289.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i289.5

for.inc.i289.5:                                   ; preds = %if.then.i284.5, %if.else.i286.5
  %arrayidx.i281.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 3, i32 6
  %91 = ptrtoint ptr %arrayidx.i281.6 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i281.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %92)
  %cmp1.i282.6 = icmp eq i8 %92, 127
  br i1 %cmp1.i282.6, label %if.then.i284.6, label %if.else.i286.6

if.else.i286.6:                                   ; preds = %for.inc.i289.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i285.6 = sext i8 %92 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i285.6) #4
  br label %for.inc.i289.6

if.then.i284.6:                                   ; preds = %for.inc.i289.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i289.6

for.inc.i289.6:                                   ; preds = %if.then.i284.6, %if.else.i286.6
  %arrayidx.i281.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 3, i32 7
  %93 = ptrtoint ptr %arrayidx.i281.7 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.i281.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %94)
  %cmp1.i282.7 = icmp eq i8 %94, 127
  br i1 %cmp1.i282.7, label %if.then.i284.7, label %if.else.i286.7

if.else.i286.7:                                   ; preds = %for.inc.i289.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i285.7 = sext i8 %94 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i285.7) #4
  br label %for.inc.i289.7

if.then.i284.7:                                   ; preds = %for.inc.i289.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i289.7

for.inc.i289.7:                                   ; preds = %if.then.i284.7, %if.else.i286.7
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %ht2028 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 3
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.48) #4
  %95 = ptrtoint ptr %ht2028 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %ht2028, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %96)
  %cmp1.i293 = icmp eq i8 %96, 127
  br i1 %cmp1.i293, label %if.then.i295, label %if.else.i297

if.then.i295:                                     ; preds = %for.inc.i289.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i300

if.else.i297:                                     ; preds = %for.inc.i289.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i296 = sext i8 %96 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i296) #4
  br label %for.inc.i300

for.inc.i300:                                     ; preds = %if.else.i297, %if.then.i295
  %arrayidx.i292.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 3, i32 1
  %97 = ptrtoint ptr %arrayidx.i292.1 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx.i292.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %98)
  %cmp1.i293.1 = icmp eq i8 %98, 127
  br i1 %cmp1.i293.1, label %if.then.i295.1, label %if.else.i297.1

if.else.i297.1:                                   ; preds = %for.inc.i300
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i296.1 = sext i8 %98 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i296.1) #4
  br label %for.inc.i300.1

if.then.i295.1:                                   ; preds = %for.inc.i300
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i300.1

for.inc.i300.1:                                   ; preds = %if.then.i295.1, %if.else.i297.1
  %arrayidx.i292.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 3, i32 2
  %99 = ptrtoint ptr %arrayidx.i292.2 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.i292.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %100)
  %cmp1.i293.2 = icmp eq i8 %100, 127
  br i1 %cmp1.i293.2, label %if.then.i295.2, label %if.else.i297.2

if.else.i297.2:                                   ; preds = %for.inc.i300.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i296.2 = sext i8 %100 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i296.2) #4
  br label %for.inc.i300.2

if.then.i295.2:                                   ; preds = %for.inc.i300.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i300.2

for.inc.i300.2:                                   ; preds = %if.then.i295.2, %if.else.i297.2
  %arrayidx.i292.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 3, i32 3
  %101 = ptrtoint ptr %arrayidx.i292.3 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i292.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %102)
  %cmp1.i293.3 = icmp eq i8 %102, 127
  br i1 %cmp1.i293.3, label %if.then.i295.3, label %if.else.i297.3

if.else.i297.3:                                   ; preds = %for.inc.i300.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i296.3 = sext i8 %102 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i296.3) #4
  br label %for.inc.i300.3

if.then.i295.3:                                   ; preds = %for.inc.i300.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i300.3

for.inc.i300.3:                                   ; preds = %if.then.i295.3, %if.else.i297.3
  %arrayidx.i292.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 3, i32 4
  %103 = ptrtoint ptr %arrayidx.i292.4 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.i292.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %104)
  %cmp1.i293.4 = icmp eq i8 %104, 127
  br i1 %cmp1.i293.4, label %if.then.i295.4, label %if.else.i297.4

if.else.i297.4:                                   ; preds = %for.inc.i300.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i296.4 = sext i8 %104 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i296.4) #4
  br label %for.inc.i300.4

if.then.i295.4:                                   ; preds = %for.inc.i300.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i300.4

for.inc.i300.4:                                   ; preds = %if.then.i295.4, %if.else.i297.4
  %arrayidx.i292.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 3, i32 5
  %105 = ptrtoint ptr %arrayidx.i292.5 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i292.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %106)
  %cmp1.i293.5 = icmp eq i8 %106, 127
  br i1 %cmp1.i293.5, label %if.then.i295.5, label %if.else.i297.5

if.else.i297.5:                                   ; preds = %for.inc.i300.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i296.5 = sext i8 %106 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i296.5) #4
  br label %for.inc.i300.5

if.then.i295.5:                                   ; preds = %for.inc.i300.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i300.5

for.inc.i300.5:                                   ; preds = %if.then.i295.5, %if.else.i297.5
  %arrayidx.i292.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 3, i32 6
  %107 = ptrtoint ptr %arrayidx.i292.6 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.i292.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %108)
  %cmp1.i293.6 = icmp eq i8 %108, 127
  br i1 %cmp1.i293.6, label %if.then.i295.6, label %if.else.i297.6

if.else.i297.6:                                   ; preds = %for.inc.i300.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i296.6 = sext i8 %108 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i296.6) #4
  br label %for.inc.i300.6

if.then.i295.6:                                   ; preds = %for.inc.i300.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i300.6

for.inc.i300.6:                                   ; preds = %if.then.i295.6, %if.else.i297.6
  %arrayidx.i292.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 3, i32 7
  %109 = ptrtoint ptr %arrayidx.i292.7 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.i292.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %110)
  %cmp1.i293.7 = icmp eq i8 %110, 127
  br i1 %cmp1.i293.7, label %if.then.i295.7, label %if.else.i297.7

if.else.i297.7:                                   ; preds = %for.inc.i300.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i296.7 = sext i8 %110 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i296.7) #4
  br label %for.inc.i300.7

if.then.i295.7:                                   ; preds = %for.inc.i300.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i300.7

for.inc.i300.7:                                   ; preds = %if.then.i295.7, %if.else.i297.7
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %ht2032 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 3
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.49) #4
  %111 = ptrtoint ptr %ht2032 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %ht2032, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %112)
  %cmp1.i304 = icmp eq i8 %112, 127
  br i1 %cmp1.i304, label %if.then.i306, label %if.else.i308

if.then.i306:                                     ; preds = %for.inc.i300.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i311

if.else.i308:                                     ; preds = %for.inc.i300.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i307 = sext i8 %112 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i307) #4
  br label %for.inc.i311

for.inc.i311:                                     ; preds = %if.else.i308, %if.then.i306
  %arrayidx.i303.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 3, i32 1
  %113 = ptrtoint ptr %arrayidx.i303.1 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.i303.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %114)
  %cmp1.i304.1 = icmp eq i8 %114, 127
  br i1 %cmp1.i304.1, label %if.then.i306.1, label %if.else.i308.1

if.else.i308.1:                                   ; preds = %for.inc.i311
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i307.1 = sext i8 %114 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i307.1) #4
  br label %for.inc.i311.1

if.then.i306.1:                                   ; preds = %for.inc.i311
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i311.1

for.inc.i311.1:                                   ; preds = %if.then.i306.1, %if.else.i308.1
  %arrayidx.i303.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 3, i32 2
  %115 = ptrtoint ptr %arrayidx.i303.2 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.i303.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %116)
  %cmp1.i304.2 = icmp eq i8 %116, 127
  br i1 %cmp1.i304.2, label %if.then.i306.2, label %if.else.i308.2

if.else.i308.2:                                   ; preds = %for.inc.i311.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i307.2 = sext i8 %116 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i307.2) #4
  br label %for.inc.i311.2

if.then.i306.2:                                   ; preds = %for.inc.i311.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i311.2

for.inc.i311.2:                                   ; preds = %if.then.i306.2, %if.else.i308.2
  %arrayidx.i303.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 3, i32 3
  %117 = ptrtoint ptr %arrayidx.i303.3 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx.i303.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %118)
  %cmp1.i304.3 = icmp eq i8 %118, 127
  br i1 %cmp1.i304.3, label %if.then.i306.3, label %if.else.i308.3

if.else.i308.3:                                   ; preds = %for.inc.i311.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i307.3 = sext i8 %118 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i307.3) #4
  br label %for.inc.i311.3

if.then.i306.3:                                   ; preds = %for.inc.i311.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i311.3

for.inc.i311.3:                                   ; preds = %if.then.i306.3, %if.else.i308.3
  %arrayidx.i303.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 3, i32 4
  %119 = ptrtoint ptr %arrayidx.i303.4 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.i303.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %120)
  %cmp1.i304.4 = icmp eq i8 %120, 127
  br i1 %cmp1.i304.4, label %if.then.i306.4, label %if.else.i308.4

if.else.i308.4:                                   ; preds = %for.inc.i311.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i307.4 = sext i8 %120 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i307.4) #4
  br label %for.inc.i311.4

if.then.i306.4:                                   ; preds = %for.inc.i311.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i311.4

for.inc.i311.4:                                   ; preds = %if.then.i306.4, %if.else.i308.4
  %arrayidx.i303.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 3, i32 5
  %121 = ptrtoint ptr %arrayidx.i303.5 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx.i303.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %122)
  %cmp1.i304.5 = icmp eq i8 %122, 127
  br i1 %cmp1.i304.5, label %if.then.i306.5, label %if.else.i308.5

if.else.i308.5:                                   ; preds = %for.inc.i311.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i307.5 = sext i8 %122 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i307.5) #4
  br label %for.inc.i311.5

if.then.i306.5:                                   ; preds = %for.inc.i311.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i311.5

for.inc.i311.5:                                   ; preds = %if.then.i306.5, %if.else.i308.5
  %arrayidx.i303.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 3, i32 6
  %123 = ptrtoint ptr %arrayidx.i303.6 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx.i303.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %124)
  %cmp1.i304.6 = icmp eq i8 %124, 127
  br i1 %cmp1.i304.6, label %if.then.i306.6, label %if.else.i308.6

if.else.i308.6:                                   ; preds = %for.inc.i311.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i307.6 = sext i8 %124 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i307.6) #4
  br label %for.inc.i311.6

if.then.i306.6:                                   ; preds = %for.inc.i311.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i311.6

for.inc.i311.6:                                   ; preds = %if.then.i306.6, %if.else.i308.6
  %arrayidx.i303.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 3, i32 7
  %125 = ptrtoint ptr %arrayidx.i303.7 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx.i303.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %126)
  %cmp1.i304.7 = icmp eq i8 %126, 127
  br i1 %cmp1.i304.7, label %if.then.i306.7, label %if.else.i308.7

if.else.i308.7:                                   ; preds = %for.inc.i311.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i307.7 = sext i8 %126 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i307.7) #4
  br label %for.inc.i311.7

if.then.i306.7:                                   ; preds = %for.inc.i311.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i311.7

for.inc.i311.7:                                   ; preds = %if.then.i306.7, %if.else.i308.7
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.51) #4
  %ht40 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.52) #4
  %127 = ptrtoint ptr %ht40 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %ht40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %128)
  %cmp1.i315 = icmp eq i8 %128, 127
  br i1 %cmp1.i315, label %if.then.i317, label %if.else.i319

if.then.i317:                                     ; preds = %for.inc.i311.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i322

if.else.i319:                                     ; preds = %for.inc.i311.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i318 = sext i8 %128 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i318) #4
  br label %for.inc.i322

for.inc.i322:                                     ; preds = %if.else.i319, %if.then.i317
  %arrayidx.i314.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 4, i32 1
  %129 = ptrtoint ptr %arrayidx.i314.1 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx.i314.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %130)
  %cmp1.i315.1 = icmp eq i8 %130, 127
  br i1 %cmp1.i315.1, label %if.then.i317.1, label %if.else.i319.1

if.else.i319.1:                                   ; preds = %for.inc.i322
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i318.1 = sext i8 %130 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i318.1) #4
  br label %for.inc.i322.1

if.then.i317.1:                                   ; preds = %for.inc.i322
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i322.1

for.inc.i322.1:                                   ; preds = %if.then.i317.1, %if.else.i319.1
  %arrayidx.i314.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 4, i32 2
  %131 = ptrtoint ptr %arrayidx.i314.2 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx.i314.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %132)
  %cmp1.i315.2 = icmp eq i8 %132, 127
  br i1 %cmp1.i315.2, label %if.then.i317.2, label %if.else.i319.2

if.else.i319.2:                                   ; preds = %for.inc.i322.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i318.2 = sext i8 %132 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i318.2) #4
  br label %for.inc.i322.2

if.then.i317.2:                                   ; preds = %for.inc.i322.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i322.2

for.inc.i322.2:                                   ; preds = %if.then.i317.2, %if.else.i319.2
  %arrayidx.i314.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 4, i32 3
  %133 = ptrtoint ptr %arrayidx.i314.3 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx.i314.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %134)
  %cmp1.i315.3 = icmp eq i8 %134, 127
  br i1 %cmp1.i315.3, label %if.then.i317.3, label %if.else.i319.3

if.else.i319.3:                                   ; preds = %for.inc.i322.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i318.3 = sext i8 %134 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i318.3) #4
  br label %for.inc.i322.3

if.then.i317.3:                                   ; preds = %for.inc.i322.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i322.3

for.inc.i322.3:                                   ; preds = %if.then.i317.3, %if.else.i319.3
  %arrayidx.i314.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 4, i32 4
  %135 = ptrtoint ptr %arrayidx.i314.4 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx.i314.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %136)
  %cmp1.i315.4 = icmp eq i8 %136, 127
  br i1 %cmp1.i315.4, label %if.then.i317.4, label %if.else.i319.4

if.else.i319.4:                                   ; preds = %for.inc.i322.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i318.4 = sext i8 %136 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i318.4) #4
  br label %for.inc.i322.4

if.then.i317.4:                                   ; preds = %for.inc.i322.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i322.4

for.inc.i322.4:                                   ; preds = %if.then.i317.4, %if.else.i319.4
  %arrayidx.i314.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 4, i32 5
  %137 = ptrtoint ptr %arrayidx.i314.5 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx.i314.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %138)
  %cmp1.i315.5 = icmp eq i8 %138, 127
  br i1 %cmp1.i315.5, label %if.then.i317.5, label %if.else.i319.5

if.else.i319.5:                                   ; preds = %for.inc.i322.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i318.5 = sext i8 %138 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i318.5) #4
  br label %for.inc.i322.5

if.then.i317.5:                                   ; preds = %for.inc.i322.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i322.5

for.inc.i322.5:                                   ; preds = %if.then.i317.5, %if.else.i319.5
  %arrayidx.i314.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 4, i32 6
  %139 = ptrtoint ptr %arrayidx.i314.6 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx.i314.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %140)
  %cmp1.i315.6 = icmp eq i8 %140, 127
  br i1 %cmp1.i315.6, label %if.then.i317.6, label %if.else.i319.6

if.else.i319.6:                                   ; preds = %for.inc.i322.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i318.6 = sext i8 %140 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i318.6) #4
  br label %for.inc.i322.6

if.then.i317.6:                                   ; preds = %for.inc.i322.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i322.6

for.inc.i322.6:                                   ; preds = %if.then.i317.6, %if.else.i319.6
  %arrayidx.i314.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 4, i32 7
  %141 = ptrtoint ptr %arrayidx.i314.7 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx.i314.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %142)
  %cmp1.i315.7 = icmp eq i8 %142, 127
  br i1 %cmp1.i315.7, label %if.then.i317.7, label %if.else.i319.7

if.else.i319.7:                                   ; preds = %for.inc.i322.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i318.7 = sext i8 %142 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i318.7) #4
  br label %for.inc.i322.7

if.then.i317.7:                                   ; preds = %for.inc.i322.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i322.7

for.inc.i322.7:                                   ; preds = %if.then.i317.7, %if.else.i319.7
  %arrayidx.i314.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 4, i32 8
  %143 = ptrtoint ptr %arrayidx.i314.8 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx.i314.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %144)
  %cmp1.i315.8 = icmp eq i8 %144, 127
  br i1 %cmp1.i315.8, label %if.then.i317.8, label %if.else.i319.8

if.else.i319.8:                                   ; preds = %for.inc.i322.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i318.8 = sext i8 %144 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i318.8) #4
  br label %for.inc.i322.8

if.then.i317.8:                                   ; preds = %for.inc.i322.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i322.8

for.inc.i322.8:                                   ; preds = %if.then.i317.8, %if.else.i319.8
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %ht4039 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.53) #4
  %145 = ptrtoint ptr %ht4039 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %ht4039, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %146)
  %cmp1.i326 = icmp eq i8 %146, 127
  br i1 %cmp1.i326, label %if.then.i328, label %if.else.i330

if.then.i328:                                     ; preds = %for.inc.i322.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i333

if.else.i330:                                     ; preds = %for.inc.i322.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i329 = sext i8 %146 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i329) #4
  br label %for.inc.i333

for.inc.i333:                                     ; preds = %if.else.i330, %if.then.i328
  %arrayidx.i325.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 4, i32 1
  %147 = ptrtoint ptr %arrayidx.i325.1 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx.i325.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %148)
  %cmp1.i326.1 = icmp eq i8 %148, 127
  br i1 %cmp1.i326.1, label %if.then.i328.1, label %if.else.i330.1

if.else.i330.1:                                   ; preds = %for.inc.i333
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i329.1 = sext i8 %148 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i329.1) #4
  br label %for.inc.i333.1

if.then.i328.1:                                   ; preds = %for.inc.i333
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i333.1

for.inc.i333.1:                                   ; preds = %if.then.i328.1, %if.else.i330.1
  %arrayidx.i325.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 4, i32 2
  %149 = ptrtoint ptr %arrayidx.i325.2 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx.i325.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %150)
  %cmp1.i326.2 = icmp eq i8 %150, 127
  br i1 %cmp1.i326.2, label %if.then.i328.2, label %if.else.i330.2

if.else.i330.2:                                   ; preds = %for.inc.i333.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i329.2 = sext i8 %150 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i329.2) #4
  br label %for.inc.i333.2

if.then.i328.2:                                   ; preds = %for.inc.i333.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i333.2

for.inc.i333.2:                                   ; preds = %if.then.i328.2, %if.else.i330.2
  %arrayidx.i325.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 4, i32 3
  %151 = ptrtoint ptr %arrayidx.i325.3 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx.i325.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %152)
  %cmp1.i326.3 = icmp eq i8 %152, 127
  br i1 %cmp1.i326.3, label %if.then.i328.3, label %if.else.i330.3

if.else.i330.3:                                   ; preds = %for.inc.i333.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i329.3 = sext i8 %152 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i329.3) #4
  br label %for.inc.i333.3

if.then.i328.3:                                   ; preds = %for.inc.i333.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i333.3

for.inc.i333.3:                                   ; preds = %if.then.i328.3, %if.else.i330.3
  %arrayidx.i325.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 4, i32 4
  %153 = ptrtoint ptr %arrayidx.i325.4 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx.i325.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %154)
  %cmp1.i326.4 = icmp eq i8 %154, 127
  br i1 %cmp1.i326.4, label %if.then.i328.4, label %if.else.i330.4

if.else.i330.4:                                   ; preds = %for.inc.i333.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i329.4 = sext i8 %154 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i329.4) #4
  br label %for.inc.i333.4

if.then.i328.4:                                   ; preds = %for.inc.i333.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i333.4

for.inc.i333.4:                                   ; preds = %if.then.i328.4, %if.else.i330.4
  %arrayidx.i325.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 4, i32 5
  %155 = ptrtoint ptr %arrayidx.i325.5 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx.i325.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %156)
  %cmp1.i326.5 = icmp eq i8 %156, 127
  br i1 %cmp1.i326.5, label %if.then.i328.5, label %if.else.i330.5

if.else.i330.5:                                   ; preds = %for.inc.i333.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i329.5 = sext i8 %156 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i329.5) #4
  br label %for.inc.i333.5

if.then.i328.5:                                   ; preds = %for.inc.i333.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i333.5

for.inc.i333.5:                                   ; preds = %if.then.i328.5, %if.else.i330.5
  %arrayidx.i325.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 4, i32 6
  %157 = ptrtoint ptr %arrayidx.i325.6 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx.i325.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %158)
  %cmp1.i326.6 = icmp eq i8 %158, 127
  br i1 %cmp1.i326.6, label %if.then.i328.6, label %if.else.i330.6

if.else.i330.6:                                   ; preds = %for.inc.i333.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i329.6 = sext i8 %158 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i329.6) #4
  br label %for.inc.i333.6

if.then.i328.6:                                   ; preds = %for.inc.i333.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i333.6

for.inc.i333.6:                                   ; preds = %if.then.i328.6, %if.else.i330.6
  %arrayidx.i325.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 4, i32 7
  %159 = ptrtoint ptr %arrayidx.i325.7 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx.i325.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %160)
  %cmp1.i326.7 = icmp eq i8 %160, 127
  br i1 %cmp1.i326.7, label %if.then.i328.7, label %if.else.i330.7

if.else.i330.7:                                   ; preds = %for.inc.i333.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i329.7 = sext i8 %160 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i329.7) #4
  br label %for.inc.i333.7

if.then.i328.7:                                   ; preds = %for.inc.i333.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i333.7

for.inc.i333.7:                                   ; preds = %if.then.i328.7, %if.else.i330.7
  %arrayidx.i325.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 4, i32 8
  %161 = ptrtoint ptr %arrayidx.i325.8 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx.i325.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %162)
  %cmp1.i326.8 = icmp eq i8 %162, 127
  br i1 %cmp1.i326.8, label %if.then.i328.8, label %if.else.i330.8

if.else.i330.8:                                   ; preds = %for.inc.i333.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i329.8 = sext i8 %162 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i329.8) #4
  br label %for.inc.i333.8

if.then.i328.8:                                   ; preds = %for.inc.i333.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i333.8

for.inc.i333.8:                                   ; preds = %if.then.i328.8, %if.else.i330.8
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %ht4043 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.54) #4
  %163 = ptrtoint ptr %ht4043 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %ht4043, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %164)
  %cmp1.i337 = icmp eq i8 %164, 127
  br i1 %cmp1.i337, label %if.then.i339, label %if.else.i341

if.then.i339:                                     ; preds = %for.inc.i333.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i344

if.else.i341:                                     ; preds = %for.inc.i333.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i340 = sext i8 %164 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i340) #4
  br label %for.inc.i344

for.inc.i344:                                     ; preds = %if.else.i341, %if.then.i339
  %arrayidx.i336.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 4, i32 1
  %165 = ptrtoint ptr %arrayidx.i336.1 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx.i336.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %166)
  %cmp1.i337.1 = icmp eq i8 %166, 127
  br i1 %cmp1.i337.1, label %if.then.i339.1, label %if.else.i341.1

if.else.i341.1:                                   ; preds = %for.inc.i344
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i340.1 = sext i8 %166 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i340.1) #4
  br label %for.inc.i344.1

if.then.i339.1:                                   ; preds = %for.inc.i344
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i344.1

for.inc.i344.1:                                   ; preds = %if.then.i339.1, %if.else.i341.1
  %arrayidx.i336.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 4, i32 2
  %167 = ptrtoint ptr %arrayidx.i336.2 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx.i336.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %168)
  %cmp1.i337.2 = icmp eq i8 %168, 127
  br i1 %cmp1.i337.2, label %if.then.i339.2, label %if.else.i341.2

if.else.i341.2:                                   ; preds = %for.inc.i344.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i340.2 = sext i8 %168 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i340.2) #4
  br label %for.inc.i344.2

if.then.i339.2:                                   ; preds = %for.inc.i344.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i344.2

for.inc.i344.2:                                   ; preds = %if.then.i339.2, %if.else.i341.2
  %arrayidx.i336.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 4, i32 3
  %169 = ptrtoint ptr %arrayidx.i336.3 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx.i336.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %170)
  %cmp1.i337.3 = icmp eq i8 %170, 127
  br i1 %cmp1.i337.3, label %if.then.i339.3, label %if.else.i341.3

if.else.i341.3:                                   ; preds = %for.inc.i344.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i340.3 = sext i8 %170 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i340.3) #4
  br label %for.inc.i344.3

if.then.i339.3:                                   ; preds = %for.inc.i344.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i344.3

for.inc.i344.3:                                   ; preds = %if.then.i339.3, %if.else.i341.3
  %arrayidx.i336.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 4, i32 4
  %171 = ptrtoint ptr %arrayidx.i336.4 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx.i336.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %172)
  %cmp1.i337.4 = icmp eq i8 %172, 127
  br i1 %cmp1.i337.4, label %if.then.i339.4, label %if.else.i341.4

if.else.i341.4:                                   ; preds = %for.inc.i344.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i340.4 = sext i8 %172 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i340.4) #4
  br label %for.inc.i344.4

if.then.i339.4:                                   ; preds = %for.inc.i344.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i344.4

for.inc.i344.4:                                   ; preds = %if.then.i339.4, %if.else.i341.4
  %arrayidx.i336.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 4, i32 5
  %173 = ptrtoint ptr %arrayidx.i336.5 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx.i336.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %174)
  %cmp1.i337.5 = icmp eq i8 %174, 127
  br i1 %cmp1.i337.5, label %if.then.i339.5, label %if.else.i341.5

if.else.i341.5:                                   ; preds = %for.inc.i344.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i340.5 = sext i8 %174 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i340.5) #4
  br label %for.inc.i344.5

if.then.i339.5:                                   ; preds = %for.inc.i344.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i344.5

for.inc.i344.5:                                   ; preds = %if.then.i339.5, %if.else.i341.5
  %arrayidx.i336.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 4, i32 6
  %175 = ptrtoint ptr %arrayidx.i336.6 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx.i336.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %176)
  %cmp1.i337.6 = icmp eq i8 %176, 127
  br i1 %cmp1.i337.6, label %if.then.i339.6, label %if.else.i341.6

if.else.i341.6:                                   ; preds = %for.inc.i344.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i340.6 = sext i8 %176 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i340.6) #4
  br label %for.inc.i344.6

if.then.i339.6:                                   ; preds = %for.inc.i344.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i344.6

for.inc.i344.6:                                   ; preds = %if.then.i339.6, %if.else.i341.6
  %arrayidx.i336.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 4, i32 7
  %177 = ptrtoint ptr %arrayidx.i336.7 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx.i336.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %178)
  %cmp1.i337.7 = icmp eq i8 %178, 127
  br i1 %cmp1.i337.7, label %if.then.i339.7, label %if.else.i341.7

if.else.i341.7:                                   ; preds = %for.inc.i344.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i340.7 = sext i8 %178 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i340.7) #4
  br label %for.inc.i344.7

if.then.i339.7:                                   ; preds = %for.inc.i344.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i344.7

for.inc.i344.7:                                   ; preds = %if.then.i339.7, %if.else.i341.7
  %arrayidx.i336.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 4, i32 8
  %179 = ptrtoint ptr %arrayidx.i336.8 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx.i336.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %180)
  %cmp1.i337.8 = icmp eq i8 %180, 127
  br i1 %cmp1.i337.8, label %if.then.i339.8, label %if.else.i341.8

if.else.i341.8:                                   ; preds = %for.inc.i344.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i340.8 = sext i8 %180 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i340.8) #4
  br label %for.inc.i344.8

if.then.i339.8:                                   ; preds = %for.inc.i344.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i344.8

for.inc.i344.8:                                   ; preds = %if.then.i339.8, %if.else.i341.8
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #4
  %vht20 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.60) #4
  %181 = ptrtoint ptr %vht20 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %vht20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %182)
  %cmp1.i348 = icmp eq i8 %182, 127
  br i1 %cmp1.i348, label %if.then.i350, label %if.else.i352

if.then.i350:                                     ; preds = %for.inc.i344.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i355

if.else.i352:                                     ; preds = %for.inc.i344.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i351 = sext i8 %182 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i351) #4
  br label %for.inc.i355

for.inc.i355:                                     ; preds = %if.else.i352, %if.then.i350
  %arrayidx.i347.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 5, i32 1
  %183 = ptrtoint ptr %arrayidx.i347.1 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx.i347.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %184)
  %cmp1.i348.1 = icmp eq i8 %184, 127
  br i1 %cmp1.i348.1, label %if.then.i350.1, label %if.else.i352.1

if.else.i352.1:                                   ; preds = %for.inc.i355
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i351.1 = sext i8 %184 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i351.1) #4
  br label %for.inc.i355.1

if.then.i350.1:                                   ; preds = %for.inc.i355
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i355.1

for.inc.i355.1:                                   ; preds = %if.then.i350.1, %if.else.i352.1
  %arrayidx.i347.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 5, i32 2
  %185 = ptrtoint ptr %arrayidx.i347.2 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx.i347.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %186)
  %cmp1.i348.2 = icmp eq i8 %186, 127
  br i1 %cmp1.i348.2, label %if.then.i350.2, label %if.else.i352.2

if.else.i352.2:                                   ; preds = %for.inc.i355.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i351.2 = sext i8 %186 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i351.2) #4
  br label %for.inc.i355.2

if.then.i350.2:                                   ; preds = %for.inc.i355.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i355.2

for.inc.i355.2:                                   ; preds = %if.then.i350.2, %if.else.i352.2
  %arrayidx.i347.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 5, i32 3
  %187 = ptrtoint ptr %arrayidx.i347.3 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx.i347.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %188)
  %cmp1.i348.3 = icmp eq i8 %188, 127
  br i1 %cmp1.i348.3, label %if.then.i350.3, label %if.else.i352.3

if.else.i352.3:                                   ; preds = %for.inc.i355.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i351.3 = sext i8 %188 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i351.3) #4
  br label %for.inc.i355.3

if.then.i350.3:                                   ; preds = %for.inc.i355.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i355.3

for.inc.i355.3:                                   ; preds = %if.then.i350.3, %if.else.i352.3
  %arrayidx.i347.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 5, i32 4
  %189 = ptrtoint ptr %arrayidx.i347.4 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx.i347.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %190)
  %cmp1.i348.4 = icmp eq i8 %190, 127
  br i1 %cmp1.i348.4, label %if.then.i350.4, label %if.else.i352.4

if.else.i352.4:                                   ; preds = %for.inc.i355.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i351.4 = sext i8 %190 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i351.4) #4
  br label %for.inc.i355.4

if.then.i350.4:                                   ; preds = %for.inc.i355.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i355.4

for.inc.i355.4:                                   ; preds = %if.then.i350.4, %if.else.i352.4
  %arrayidx.i347.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 5, i32 5
  %191 = ptrtoint ptr %arrayidx.i347.5 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx.i347.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %192)
  %cmp1.i348.5 = icmp eq i8 %192, 127
  br i1 %cmp1.i348.5, label %if.then.i350.5, label %if.else.i352.5

if.else.i352.5:                                   ; preds = %for.inc.i355.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i351.5 = sext i8 %192 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i351.5) #4
  br label %for.inc.i355.5

if.then.i350.5:                                   ; preds = %for.inc.i355.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i355.5

for.inc.i355.5:                                   ; preds = %if.then.i350.5, %if.else.i352.5
  %arrayidx.i347.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 5, i32 6
  %193 = ptrtoint ptr %arrayidx.i347.6 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx.i347.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %194)
  %cmp1.i348.6 = icmp eq i8 %194, 127
  br i1 %cmp1.i348.6, label %if.then.i350.6, label %if.else.i352.6

if.else.i352.6:                                   ; preds = %for.inc.i355.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i351.6 = sext i8 %194 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i351.6) #4
  br label %for.inc.i355.6

if.then.i350.6:                                   ; preds = %for.inc.i355.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i355.6

for.inc.i355.6:                                   ; preds = %if.then.i350.6, %if.else.i352.6
  %arrayidx.i347.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 5, i32 7
  %195 = ptrtoint ptr %arrayidx.i347.7 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx.i347.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %196)
  %cmp1.i348.7 = icmp eq i8 %196, 127
  br i1 %cmp1.i348.7, label %if.then.i350.7, label %if.else.i352.7

if.else.i352.7:                                   ; preds = %for.inc.i355.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i351.7 = sext i8 %196 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i351.7) #4
  br label %for.inc.i355.7

if.then.i350.7:                                   ; preds = %for.inc.i355.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i355.7

for.inc.i355.7:                                   ; preds = %if.then.i350.7, %if.else.i352.7
  %arrayidx.i347.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 5, i32 8
  %197 = ptrtoint ptr %arrayidx.i347.8 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx.i347.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %198)
  %cmp1.i348.8 = icmp eq i8 %198, 127
  br i1 %cmp1.i348.8, label %if.then.i350.8, label %if.else.i352.8

if.else.i352.8:                                   ; preds = %for.inc.i355.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i351.8 = sext i8 %198 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i351.8) #4
  br label %for.inc.i355.8

if.then.i350.8:                                   ; preds = %for.inc.i355.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i355.8

for.inc.i355.8:                                   ; preds = %if.then.i350.8, %if.else.i352.8
  %arrayidx.i347.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 5, i32 9
  %199 = ptrtoint ptr %arrayidx.i347.9 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx.i347.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %200)
  %cmp1.i348.9 = icmp eq i8 %200, 127
  br i1 %cmp1.i348.9, label %if.then.i350.9, label %if.else.i352.9

if.else.i352.9:                                   ; preds = %for.inc.i355.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i351.9 = sext i8 %200 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i351.9) #4
  br label %for.inc.i355.9

if.then.i350.9:                                   ; preds = %for.inc.i355.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i355.9

for.inc.i355.9:                                   ; preds = %if.then.i350.9, %if.else.i352.9
  %arrayidx.i347.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 5, i32 10
  %201 = ptrtoint ptr %arrayidx.i347.10 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx.i347.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %202)
  %cmp1.i348.10 = icmp eq i8 %202, 127
  br i1 %cmp1.i348.10, label %if.then.i350.10, label %if.else.i352.10

if.else.i352.10:                                  ; preds = %for.inc.i355.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i351.10 = sext i8 %202 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i351.10) #4
  br label %for.inc.i355.10

if.then.i350.10:                                  ; preds = %for.inc.i355.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i355.10

for.inc.i355.10:                                  ; preds = %if.then.i350.10, %if.else.i352.10
  %arrayidx.i347.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 5, i32 11
  %203 = ptrtoint ptr %arrayidx.i347.11 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx.i347.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %204)
  %cmp1.i348.11 = icmp eq i8 %204, 127
  br i1 %cmp1.i348.11, label %if.then.i350.11, label %if.else.i352.11

if.else.i352.11:                                  ; preds = %for.inc.i355.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i351.11 = sext i8 %204 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i351.11) #4
  br label %for.inc.i355.11

if.then.i350.11:                                  ; preds = %for.inc.i355.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i355.11

for.inc.i355.11:                                  ; preds = %if.then.i350.11, %if.else.i352.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %vht2050 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.61) #4
  %205 = ptrtoint ptr %vht2050 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %vht2050, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %206)
  %cmp1.i359 = icmp eq i8 %206, 127
  br i1 %cmp1.i359, label %if.then.i361, label %if.else.i363

if.then.i361:                                     ; preds = %for.inc.i355.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i366

if.else.i363:                                     ; preds = %for.inc.i355.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i362 = sext i8 %206 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i362) #4
  br label %for.inc.i366

for.inc.i366:                                     ; preds = %if.else.i363, %if.then.i361
  %arrayidx.i358.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 5, i32 1
  %207 = ptrtoint ptr %arrayidx.i358.1 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx.i358.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %208)
  %cmp1.i359.1 = icmp eq i8 %208, 127
  br i1 %cmp1.i359.1, label %if.then.i361.1, label %if.else.i363.1

if.else.i363.1:                                   ; preds = %for.inc.i366
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i362.1 = sext i8 %208 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i362.1) #4
  br label %for.inc.i366.1

if.then.i361.1:                                   ; preds = %for.inc.i366
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i366.1

for.inc.i366.1:                                   ; preds = %if.then.i361.1, %if.else.i363.1
  %arrayidx.i358.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 5, i32 2
  %209 = ptrtoint ptr %arrayidx.i358.2 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx.i358.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %210)
  %cmp1.i359.2 = icmp eq i8 %210, 127
  br i1 %cmp1.i359.2, label %if.then.i361.2, label %if.else.i363.2

if.else.i363.2:                                   ; preds = %for.inc.i366.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i362.2 = sext i8 %210 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i362.2) #4
  br label %for.inc.i366.2

if.then.i361.2:                                   ; preds = %for.inc.i366.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i366.2

for.inc.i366.2:                                   ; preds = %if.then.i361.2, %if.else.i363.2
  %arrayidx.i358.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 5, i32 3
  %211 = ptrtoint ptr %arrayidx.i358.3 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx.i358.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %212)
  %cmp1.i359.3 = icmp eq i8 %212, 127
  br i1 %cmp1.i359.3, label %if.then.i361.3, label %if.else.i363.3

if.else.i363.3:                                   ; preds = %for.inc.i366.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i362.3 = sext i8 %212 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i362.3) #4
  br label %for.inc.i366.3

if.then.i361.3:                                   ; preds = %for.inc.i366.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i366.3

for.inc.i366.3:                                   ; preds = %if.then.i361.3, %if.else.i363.3
  %arrayidx.i358.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 5, i32 4
  %213 = ptrtoint ptr %arrayidx.i358.4 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx.i358.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %214)
  %cmp1.i359.4 = icmp eq i8 %214, 127
  br i1 %cmp1.i359.4, label %if.then.i361.4, label %if.else.i363.4

if.else.i363.4:                                   ; preds = %for.inc.i366.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i362.4 = sext i8 %214 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i362.4) #4
  br label %for.inc.i366.4

if.then.i361.4:                                   ; preds = %for.inc.i366.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i366.4

for.inc.i366.4:                                   ; preds = %if.then.i361.4, %if.else.i363.4
  %arrayidx.i358.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 5, i32 5
  %215 = ptrtoint ptr %arrayidx.i358.5 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx.i358.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %216)
  %cmp1.i359.5 = icmp eq i8 %216, 127
  br i1 %cmp1.i359.5, label %if.then.i361.5, label %if.else.i363.5

if.else.i363.5:                                   ; preds = %for.inc.i366.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i362.5 = sext i8 %216 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i362.5) #4
  br label %for.inc.i366.5

if.then.i361.5:                                   ; preds = %for.inc.i366.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i366.5

for.inc.i366.5:                                   ; preds = %if.then.i361.5, %if.else.i363.5
  %arrayidx.i358.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 5, i32 6
  %217 = ptrtoint ptr %arrayidx.i358.6 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx.i358.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %218)
  %cmp1.i359.6 = icmp eq i8 %218, 127
  br i1 %cmp1.i359.6, label %if.then.i361.6, label %if.else.i363.6

if.else.i363.6:                                   ; preds = %for.inc.i366.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i362.6 = sext i8 %218 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i362.6) #4
  br label %for.inc.i366.6

if.then.i361.6:                                   ; preds = %for.inc.i366.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i366.6

for.inc.i366.6:                                   ; preds = %if.then.i361.6, %if.else.i363.6
  %arrayidx.i358.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 5, i32 7
  %219 = ptrtoint ptr %arrayidx.i358.7 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx.i358.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %220)
  %cmp1.i359.7 = icmp eq i8 %220, 127
  br i1 %cmp1.i359.7, label %if.then.i361.7, label %if.else.i363.7

if.else.i363.7:                                   ; preds = %for.inc.i366.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i362.7 = sext i8 %220 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i362.7) #4
  br label %for.inc.i366.7

if.then.i361.7:                                   ; preds = %for.inc.i366.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i366.7

for.inc.i366.7:                                   ; preds = %if.then.i361.7, %if.else.i363.7
  %arrayidx.i358.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 5, i32 8
  %221 = ptrtoint ptr %arrayidx.i358.8 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx.i358.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %222)
  %cmp1.i359.8 = icmp eq i8 %222, 127
  br i1 %cmp1.i359.8, label %if.then.i361.8, label %if.else.i363.8

if.else.i363.8:                                   ; preds = %for.inc.i366.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i362.8 = sext i8 %222 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i362.8) #4
  br label %for.inc.i366.8

if.then.i361.8:                                   ; preds = %for.inc.i366.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i366.8

for.inc.i366.8:                                   ; preds = %if.then.i361.8, %if.else.i363.8
  %arrayidx.i358.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 5, i32 9
  %223 = ptrtoint ptr %arrayidx.i358.9 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx.i358.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %224)
  %cmp1.i359.9 = icmp eq i8 %224, 127
  br i1 %cmp1.i359.9, label %if.then.i361.9, label %if.else.i363.9

if.else.i363.9:                                   ; preds = %for.inc.i366.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i362.9 = sext i8 %224 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i362.9) #4
  br label %for.inc.i366.9

if.then.i361.9:                                   ; preds = %for.inc.i366.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i366.9

for.inc.i366.9:                                   ; preds = %if.then.i361.9, %if.else.i363.9
  %arrayidx.i358.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 5, i32 10
  %225 = ptrtoint ptr %arrayidx.i358.10 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx.i358.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %226)
  %cmp1.i359.10 = icmp eq i8 %226, 127
  br i1 %cmp1.i359.10, label %if.then.i361.10, label %if.else.i363.10

if.else.i363.10:                                  ; preds = %for.inc.i366.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i362.10 = sext i8 %226 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i362.10) #4
  br label %for.inc.i366.10

if.then.i361.10:                                  ; preds = %for.inc.i366.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i366.10

for.inc.i366.10:                                  ; preds = %if.then.i361.10, %if.else.i363.10
  %arrayidx.i358.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 5, i32 11
  %227 = ptrtoint ptr %arrayidx.i358.11 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx.i358.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %228)
  %cmp1.i359.11 = icmp eq i8 %228, 127
  br i1 %cmp1.i359.11, label %if.then.i361.11, label %if.else.i363.11

if.else.i363.11:                                  ; preds = %for.inc.i366.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i362.11 = sext i8 %228 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i362.11) #4
  br label %for.inc.i366.11

if.then.i361.11:                                  ; preds = %for.inc.i366.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i366.11

for.inc.i366.11:                                  ; preds = %if.then.i361.11, %if.else.i363.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %vht2054 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.62) #4
  %229 = ptrtoint ptr %vht2054 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %vht2054, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %230)
  %cmp1.i370 = icmp eq i8 %230, 127
  br i1 %cmp1.i370, label %if.then.i372, label %if.else.i374

if.then.i372:                                     ; preds = %for.inc.i366.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i377

if.else.i374:                                     ; preds = %for.inc.i366.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i373 = sext i8 %230 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i373) #4
  br label %for.inc.i377

for.inc.i377:                                     ; preds = %if.else.i374, %if.then.i372
  %arrayidx.i369.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 5, i32 1
  %231 = ptrtoint ptr %arrayidx.i369.1 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx.i369.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %232)
  %cmp1.i370.1 = icmp eq i8 %232, 127
  br i1 %cmp1.i370.1, label %if.then.i372.1, label %if.else.i374.1

if.else.i374.1:                                   ; preds = %for.inc.i377
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i373.1 = sext i8 %232 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i373.1) #4
  br label %for.inc.i377.1

if.then.i372.1:                                   ; preds = %for.inc.i377
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i377.1

for.inc.i377.1:                                   ; preds = %if.then.i372.1, %if.else.i374.1
  %arrayidx.i369.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 5, i32 2
  %233 = ptrtoint ptr %arrayidx.i369.2 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx.i369.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %234)
  %cmp1.i370.2 = icmp eq i8 %234, 127
  br i1 %cmp1.i370.2, label %if.then.i372.2, label %if.else.i374.2

if.else.i374.2:                                   ; preds = %for.inc.i377.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i373.2 = sext i8 %234 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i373.2) #4
  br label %for.inc.i377.2

if.then.i372.2:                                   ; preds = %for.inc.i377.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i377.2

for.inc.i377.2:                                   ; preds = %if.then.i372.2, %if.else.i374.2
  %arrayidx.i369.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 5, i32 3
  %235 = ptrtoint ptr %arrayidx.i369.3 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx.i369.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %236)
  %cmp1.i370.3 = icmp eq i8 %236, 127
  br i1 %cmp1.i370.3, label %if.then.i372.3, label %if.else.i374.3

if.else.i374.3:                                   ; preds = %for.inc.i377.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i373.3 = sext i8 %236 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i373.3) #4
  br label %for.inc.i377.3

if.then.i372.3:                                   ; preds = %for.inc.i377.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i377.3

for.inc.i377.3:                                   ; preds = %if.then.i372.3, %if.else.i374.3
  %arrayidx.i369.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 5, i32 4
  %237 = ptrtoint ptr %arrayidx.i369.4 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %arrayidx.i369.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %238)
  %cmp1.i370.4 = icmp eq i8 %238, 127
  br i1 %cmp1.i370.4, label %if.then.i372.4, label %if.else.i374.4

if.else.i374.4:                                   ; preds = %for.inc.i377.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i373.4 = sext i8 %238 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i373.4) #4
  br label %for.inc.i377.4

if.then.i372.4:                                   ; preds = %for.inc.i377.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i377.4

for.inc.i377.4:                                   ; preds = %if.then.i372.4, %if.else.i374.4
  %arrayidx.i369.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 5, i32 5
  %239 = ptrtoint ptr %arrayidx.i369.5 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx.i369.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %240)
  %cmp1.i370.5 = icmp eq i8 %240, 127
  br i1 %cmp1.i370.5, label %if.then.i372.5, label %if.else.i374.5

if.else.i374.5:                                   ; preds = %for.inc.i377.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i373.5 = sext i8 %240 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i373.5) #4
  br label %for.inc.i377.5

if.then.i372.5:                                   ; preds = %for.inc.i377.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i377.5

for.inc.i377.5:                                   ; preds = %if.then.i372.5, %if.else.i374.5
  %arrayidx.i369.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 5, i32 6
  %241 = ptrtoint ptr %arrayidx.i369.6 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx.i369.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %242)
  %cmp1.i370.6 = icmp eq i8 %242, 127
  br i1 %cmp1.i370.6, label %if.then.i372.6, label %if.else.i374.6

if.else.i374.6:                                   ; preds = %for.inc.i377.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i373.6 = sext i8 %242 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i373.6) #4
  br label %for.inc.i377.6

if.then.i372.6:                                   ; preds = %for.inc.i377.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i377.6

for.inc.i377.6:                                   ; preds = %if.then.i372.6, %if.else.i374.6
  %arrayidx.i369.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 5, i32 7
  %243 = ptrtoint ptr %arrayidx.i369.7 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx.i369.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %244)
  %cmp1.i370.7 = icmp eq i8 %244, 127
  br i1 %cmp1.i370.7, label %if.then.i372.7, label %if.else.i374.7

if.else.i374.7:                                   ; preds = %for.inc.i377.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i373.7 = sext i8 %244 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i373.7) #4
  br label %for.inc.i377.7

if.then.i372.7:                                   ; preds = %for.inc.i377.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i377.7

for.inc.i377.7:                                   ; preds = %if.then.i372.7, %if.else.i374.7
  %arrayidx.i369.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 5, i32 8
  %245 = ptrtoint ptr %arrayidx.i369.8 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %arrayidx.i369.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %246)
  %cmp1.i370.8 = icmp eq i8 %246, 127
  br i1 %cmp1.i370.8, label %if.then.i372.8, label %if.else.i374.8

if.else.i374.8:                                   ; preds = %for.inc.i377.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i373.8 = sext i8 %246 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i373.8) #4
  br label %for.inc.i377.8

if.then.i372.8:                                   ; preds = %for.inc.i377.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i377.8

for.inc.i377.8:                                   ; preds = %if.then.i372.8, %if.else.i374.8
  %arrayidx.i369.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 5, i32 9
  %247 = ptrtoint ptr %arrayidx.i369.9 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %arrayidx.i369.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %248)
  %cmp1.i370.9 = icmp eq i8 %248, 127
  br i1 %cmp1.i370.9, label %if.then.i372.9, label %if.else.i374.9

if.else.i374.9:                                   ; preds = %for.inc.i377.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i373.9 = sext i8 %248 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i373.9) #4
  br label %for.inc.i377.9

if.then.i372.9:                                   ; preds = %for.inc.i377.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i377.9

for.inc.i377.9:                                   ; preds = %if.then.i372.9, %if.else.i374.9
  %arrayidx.i369.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 5, i32 10
  %249 = ptrtoint ptr %arrayidx.i369.10 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %arrayidx.i369.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %250)
  %cmp1.i370.10 = icmp eq i8 %250, 127
  br i1 %cmp1.i370.10, label %if.then.i372.10, label %if.else.i374.10

if.else.i374.10:                                  ; preds = %for.inc.i377.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i373.10 = sext i8 %250 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i373.10) #4
  br label %for.inc.i377.10

if.then.i372.10:                                  ; preds = %for.inc.i377.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i377.10

for.inc.i377.10:                                  ; preds = %if.then.i372.10, %if.else.i374.10
  %arrayidx.i369.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 5, i32 11
  %251 = ptrtoint ptr %arrayidx.i369.11 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %arrayidx.i369.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %252)
  %cmp1.i370.11 = icmp eq i8 %252, 127
  br i1 %cmp1.i370.11, label %if.then.i372.11, label %if.else.i374.11

if.else.i374.11:                                  ; preds = %for.inc.i377.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i373.11 = sext i8 %252 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i373.11) #4
  br label %for.inc.i377.11

if.then.i372.11:                                  ; preds = %for.inc.i377.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i377.11

for.inc.i377.11:                                  ; preds = %if.then.i372.11, %if.else.i374.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %vht40 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.63) #4
  %253 = ptrtoint ptr %vht40 to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %vht40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %254)
  %cmp1.i381 = icmp eq i8 %254, 127
  br i1 %cmp1.i381, label %if.then.i383, label %if.else.i385

if.then.i383:                                     ; preds = %for.inc.i377.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i388

if.else.i385:                                     ; preds = %for.inc.i377.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i384 = sext i8 %254 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i384) #4
  br label %for.inc.i388

for.inc.i388:                                     ; preds = %if.else.i385, %if.then.i383
  %arrayidx.i380.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 6, i32 1
  %255 = ptrtoint ptr %arrayidx.i380.1 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %arrayidx.i380.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %256)
  %cmp1.i381.1 = icmp eq i8 %256, 127
  br i1 %cmp1.i381.1, label %if.then.i383.1, label %if.else.i385.1

if.else.i385.1:                                   ; preds = %for.inc.i388
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i384.1 = sext i8 %256 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i384.1) #4
  br label %for.inc.i388.1

if.then.i383.1:                                   ; preds = %for.inc.i388
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i388.1

for.inc.i388.1:                                   ; preds = %if.then.i383.1, %if.else.i385.1
  %arrayidx.i380.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 6, i32 2
  %257 = ptrtoint ptr %arrayidx.i380.2 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %arrayidx.i380.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %258)
  %cmp1.i381.2 = icmp eq i8 %258, 127
  br i1 %cmp1.i381.2, label %if.then.i383.2, label %if.else.i385.2

if.else.i385.2:                                   ; preds = %for.inc.i388.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i384.2 = sext i8 %258 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i384.2) #4
  br label %for.inc.i388.2

if.then.i383.2:                                   ; preds = %for.inc.i388.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i388.2

for.inc.i388.2:                                   ; preds = %if.then.i383.2, %if.else.i385.2
  %arrayidx.i380.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 6, i32 3
  %259 = ptrtoint ptr %arrayidx.i380.3 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %arrayidx.i380.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %260)
  %cmp1.i381.3 = icmp eq i8 %260, 127
  br i1 %cmp1.i381.3, label %if.then.i383.3, label %if.else.i385.3

if.else.i385.3:                                   ; preds = %for.inc.i388.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i384.3 = sext i8 %260 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i384.3) #4
  br label %for.inc.i388.3

if.then.i383.3:                                   ; preds = %for.inc.i388.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i388.3

for.inc.i388.3:                                   ; preds = %if.then.i383.3, %if.else.i385.3
  %arrayidx.i380.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 6, i32 4
  %261 = ptrtoint ptr %arrayidx.i380.4 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %arrayidx.i380.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %262)
  %cmp1.i381.4 = icmp eq i8 %262, 127
  br i1 %cmp1.i381.4, label %if.then.i383.4, label %if.else.i385.4

if.else.i385.4:                                   ; preds = %for.inc.i388.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i384.4 = sext i8 %262 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i384.4) #4
  br label %for.inc.i388.4

if.then.i383.4:                                   ; preds = %for.inc.i388.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i388.4

for.inc.i388.4:                                   ; preds = %if.then.i383.4, %if.else.i385.4
  %arrayidx.i380.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 6, i32 5
  %263 = ptrtoint ptr %arrayidx.i380.5 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %arrayidx.i380.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %264)
  %cmp1.i381.5 = icmp eq i8 %264, 127
  br i1 %cmp1.i381.5, label %if.then.i383.5, label %if.else.i385.5

if.else.i385.5:                                   ; preds = %for.inc.i388.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i384.5 = sext i8 %264 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i384.5) #4
  br label %for.inc.i388.5

if.then.i383.5:                                   ; preds = %for.inc.i388.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i388.5

for.inc.i388.5:                                   ; preds = %if.then.i383.5, %if.else.i385.5
  %arrayidx.i380.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 6, i32 6
  %265 = ptrtoint ptr %arrayidx.i380.6 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %arrayidx.i380.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %266)
  %cmp1.i381.6 = icmp eq i8 %266, 127
  br i1 %cmp1.i381.6, label %if.then.i383.6, label %if.else.i385.6

if.else.i385.6:                                   ; preds = %for.inc.i388.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i384.6 = sext i8 %266 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i384.6) #4
  br label %for.inc.i388.6

if.then.i383.6:                                   ; preds = %for.inc.i388.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i388.6

for.inc.i388.6:                                   ; preds = %if.then.i383.6, %if.else.i385.6
  %arrayidx.i380.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 6, i32 7
  %267 = ptrtoint ptr %arrayidx.i380.7 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %arrayidx.i380.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %268)
  %cmp1.i381.7 = icmp eq i8 %268, 127
  br i1 %cmp1.i381.7, label %if.then.i383.7, label %if.else.i385.7

if.else.i385.7:                                   ; preds = %for.inc.i388.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i384.7 = sext i8 %268 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i384.7) #4
  br label %for.inc.i388.7

if.then.i383.7:                                   ; preds = %for.inc.i388.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i388.7

for.inc.i388.7:                                   ; preds = %if.then.i383.7, %if.else.i385.7
  %arrayidx.i380.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 6, i32 8
  %269 = ptrtoint ptr %arrayidx.i380.8 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %arrayidx.i380.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %270)
  %cmp1.i381.8 = icmp eq i8 %270, 127
  br i1 %cmp1.i381.8, label %if.then.i383.8, label %if.else.i385.8

if.else.i385.8:                                   ; preds = %for.inc.i388.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i384.8 = sext i8 %270 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i384.8) #4
  br label %for.inc.i388.8

if.then.i383.8:                                   ; preds = %for.inc.i388.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i388.8

for.inc.i388.8:                                   ; preds = %if.then.i383.8, %if.else.i385.8
  %arrayidx.i380.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 6, i32 9
  %271 = ptrtoint ptr %arrayidx.i380.9 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx.i380.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %272)
  %cmp1.i381.9 = icmp eq i8 %272, 127
  br i1 %cmp1.i381.9, label %if.then.i383.9, label %if.else.i385.9

if.else.i385.9:                                   ; preds = %for.inc.i388.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i384.9 = sext i8 %272 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i384.9) #4
  br label %for.inc.i388.9

if.then.i383.9:                                   ; preds = %for.inc.i388.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i388.9

for.inc.i388.9:                                   ; preds = %if.then.i383.9, %if.else.i385.9
  %arrayidx.i380.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 6, i32 10
  %273 = ptrtoint ptr %arrayidx.i380.10 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %arrayidx.i380.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %274)
  %cmp1.i381.10 = icmp eq i8 %274, 127
  br i1 %cmp1.i381.10, label %if.then.i383.10, label %if.else.i385.10

if.else.i385.10:                                  ; preds = %for.inc.i388.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i384.10 = sext i8 %274 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i384.10) #4
  br label %for.inc.i388.10

if.then.i383.10:                                  ; preds = %for.inc.i388.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i388.10

for.inc.i388.10:                                  ; preds = %if.then.i383.10, %if.else.i385.10
  %arrayidx.i380.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 6, i32 11
  %275 = ptrtoint ptr %arrayidx.i380.11 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %arrayidx.i380.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %276)
  %cmp1.i381.11 = icmp eq i8 %276, 127
  br i1 %cmp1.i381.11, label %if.then.i383.11, label %if.else.i385.11

if.else.i385.11:                                  ; preds = %for.inc.i388.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i384.11 = sext i8 %276 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i384.11) #4
  br label %for.inc.i388.11

if.then.i383.11:                                  ; preds = %for.inc.i388.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i388.11

for.inc.i388.11:                                  ; preds = %if.then.i383.11, %if.else.i385.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %vht4061 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.64) #4
  %277 = ptrtoint ptr %vht4061 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %vht4061, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %278)
  %cmp1.i392 = icmp eq i8 %278, 127
  br i1 %cmp1.i392, label %if.then.i394, label %if.else.i396

if.then.i394:                                     ; preds = %for.inc.i388.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i399

if.else.i396:                                     ; preds = %for.inc.i388.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i395 = sext i8 %278 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i395) #4
  br label %for.inc.i399

for.inc.i399:                                     ; preds = %if.else.i396, %if.then.i394
  %arrayidx.i391.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 6, i32 1
  %279 = ptrtoint ptr %arrayidx.i391.1 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %arrayidx.i391.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %280)
  %cmp1.i392.1 = icmp eq i8 %280, 127
  br i1 %cmp1.i392.1, label %if.then.i394.1, label %if.else.i396.1

if.else.i396.1:                                   ; preds = %for.inc.i399
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i395.1 = sext i8 %280 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i395.1) #4
  br label %for.inc.i399.1

if.then.i394.1:                                   ; preds = %for.inc.i399
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i399.1

for.inc.i399.1:                                   ; preds = %if.then.i394.1, %if.else.i396.1
  %arrayidx.i391.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 6, i32 2
  %281 = ptrtoint ptr %arrayidx.i391.2 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %arrayidx.i391.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %282)
  %cmp1.i392.2 = icmp eq i8 %282, 127
  br i1 %cmp1.i392.2, label %if.then.i394.2, label %if.else.i396.2

if.else.i396.2:                                   ; preds = %for.inc.i399.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i395.2 = sext i8 %282 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i395.2) #4
  br label %for.inc.i399.2

if.then.i394.2:                                   ; preds = %for.inc.i399.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i399.2

for.inc.i399.2:                                   ; preds = %if.then.i394.2, %if.else.i396.2
  %arrayidx.i391.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 6, i32 3
  %283 = ptrtoint ptr %arrayidx.i391.3 to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %arrayidx.i391.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %284)
  %cmp1.i392.3 = icmp eq i8 %284, 127
  br i1 %cmp1.i392.3, label %if.then.i394.3, label %if.else.i396.3

if.else.i396.3:                                   ; preds = %for.inc.i399.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i395.3 = sext i8 %284 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i395.3) #4
  br label %for.inc.i399.3

if.then.i394.3:                                   ; preds = %for.inc.i399.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i399.3

for.inc.i399.3:                                   ; preds = %if.then.i394.3, %if.else.i396.3
  %arrayidx.i391.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 6, i32 4
  %285 = ptrtoint ptr %arrayidx.i391.4 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %arrayidx.i391.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %286)
  %cmp1.i392.4 = icmp eq i8 %286, 127
  br i1 %cmp1.i392.4, label %if.then.i394.4, label %if.else.i396.4

if.else.i396.4:                                   ; preds = %for.inc.i399.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i395.4 = sext i8 %286 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i395.4) #4
  br label %for.inc.i399.4

if.then.i394.4:                                   ; preds = %for.inc.i399.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i399.4

for.inc.i399.4:                                   ; preds = %if.then.i394.4, %if.else.i396.4
  %arrayidx.i391.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 6, i32 5
  %287 = ptrtoint ptr %arrayidx.i391.5 to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %arrayidx.i391.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %288)
  %cmp1.i392.5 = icmp eq i8 %288, 127
  br i1 %cmp1.i392.5, label %if.then.i394.5, label %if.else.i396.5

if.else.i396.5:                                   ; preds = %for.inc.i399.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i395.5 = sext i8 %288 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i395.5) #4
  br label %for.inc.i399.5

if.then.i394.5:                                   ; preds = %for.inc.i399.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i399.5

for.inc.i399.5:                                   ; preds = %if.then.i394.5, %if.else.i396.5
  %arrayidx.i391.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 6, i32 6
  %289 = ptrtoint ptr %arrayidx.i391.6 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %arrayidx.i391.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %290)
  %cmp1.i392.6 = icmp eq i8 %290, 127
  br i1 %cmp1.i392.6, label %if.then.i394.6, label %if.else.i396.6

if.else.i396.6:                                   ; preds = %for.inc.i399.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i395.6 = sext i8 %290 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i395.6) #4
  br label %for.inc.i399.6

if.then.i394.6:                                   ; preds = %for.inc.i399.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i399.6

for.inc.i399.6:                                   ; preds = %if.then.i394.6, %if.else.i396.6
  %arrayidx.i391.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 6, i32 7
  %291 = ptrtoint ptr %arrayidx.i391.7 to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %arrayidx.i391.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %292)
  %cmp1.i392.7 = icmp eq i8 %292, 127
  br i1 %cmp1.i392.7, label %if.then.i394.7, label %if.else.i396.7

if.else.i396.7:                                   ; preds = %for.inc.i399.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i395.7 = sext i8 %292 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i395.7) #4
  br label %for.inc.i399.7

if.then.i394.7:                                   ; preds = %for.inc.i399.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i399.7

for.inc.i399.7:                                   ; preds = %if.then.i394.7, %if.else.i396.7
  %arrayidx.i391.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 6, i32 8
  %293 = ptrtoint ptr %arrayidx.i391.8 to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %arrayidx.i391.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %294)
  %cmp1.i392.8 = icmp eq i8 %294, 127
  br i1 %cmp1.i392.8, label %if.then.i394.8, label %if.else.i396.8

if.else.i396.8:                                   ; preds = %for.inc.i399.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i395.8 = sext i8 %294 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i395.8) #4
  br label %for.inc.i399.8

if.then.i394.8:                                   ; preds = %for.inc.i399.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i399.8

for.inc.i399.8:                                   ; preds = %if.then.i394.8, %if.else.i396.8
  %arrayidx.i391.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 6, i32 9
  %295 = ptrtoint ptr %arrayidx.i391.9 to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %arrayidx.i391.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %296)
  %cmp1.i392.9 = icmp eq i8 %296, 127
  br i1 %cmp1.i392.9, label %if.then.i394.9, label %if.else.i396.9

if.else.i396.9:                                   ; preds = %for.inc.i399.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i395.9 = sext i8 %296 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i395.9) #4
  br label %for.inc.i399.9

if.then.i394.9:                                   ; preds = %for.inc.i399.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i399.9

for.inc.i399.9:                                   ; preds = %if.then.i394.9, %if.else.i396.9
  %arrayidx.i391.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 6, i32 10
  %297 = ptrtoint ptr %arrayidx.i391.10 to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %arrayidx.i391.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %298)
  %cmp1.i392.10 = icmp eq i8 %298, 127
  br i1 %cmp1.i392.10, label %if.then.i394.10, label %if.else.i396.10

if.else.i396.10:                                  ; preds = %for.inc.i399.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i395.10 = sext i8 %298 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i395.10) #4
  br label %for.inc.i399.10

if.then.i394.10:                                  ; preds = %for.inc.i399.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i399.10

for.inc.i399.10:                                  ; preds = %if.then.i394.10, %if.else.i396.10
  %arrayidx.i391.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 6, i32 11
  %299 = ptrtoint ptr %arrayidx.i391.11 to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %arrayidx.i391.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %300)
  %cmp1.i392.11 = icmp eq i8 %300, 127
  br i1 %cmp1.i392.11, label %if.then.i394.11, label %if.else.i396.11

if.else.i396.11:                                  ; preds = %for.inc.i399.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i395.11 = sext i8 %300 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i395.11) #4
  br label %for.inc.i399.11

if.then.i394.11:                                  ; preds = %for.inc.i399.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i399.11

for.inc.i399.11:                                  ; preds = %if.then.i394.11, %if.else.i396.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %vht4065 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.65) #4
  %301 = ptrtoint ptr %vht4065 to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %vht4065, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %302)
  %cmp1.i403 = icmp eq i8 %302, 127
  br i1 %cmp1.i403, label %if.then.i405, label %if.else.i407

if.then.i405:                                     ; preds = %for.inc.i399.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i410

if.else.i407:                                     ; preds = %for.inc.i399.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i406 = sext i8 %302 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i406) #4
  br label %for.inc.i410

for.inc.i410:                                     ; preds = %if.else.i407, %if.then.i405
  %arrayidx.i402.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 6, i32 1
  %303 = ptrtoint ptr %arrayidx.i402.1 to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %arrayidx.i402.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %304)
  %cmp1.i403.1 = icmp eq i8 %304, 127
  br i1 %cmp1.i403.1, label %if.then.i405.1, label %if.else.i407.1

if.else.i407.1:                                   ; preds = %for.inc.i410
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i406.1 = sext i8 %304 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i406.1) #4
  br label %for.inc.i410.1

if.then.i405.1:                                   ; preds = %for.inc.i410
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i410.1

for.inc.i410.1:                                   ; preds = %if.then.i405.1, %if.else.i407.1
  %arrayidx.i402.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 6, i32 2
  %305 = ptrtoint ptr %arrayidx.i402.2 to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %arrayidx.i402.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %306)
  %cmp1.i403.2 = icmp eq i8 %306, 127
  br i1 %cmp1.i403.2, label %if.then.i405.2, label %if.else.i407.2

if.else.i407.2:                                   ; preds = %for.inc.i410.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i406.2 = sext i8 %306 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i406.2) #4
  br label %for.inc.i410.2

if.then.i405.2:                                   ; preds = %for.inc.i410.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i410.2

for.inc.i410.2:                                   ; preds = %if.then.i405.2, %if.else.i407.2
  %arrayidx.i402.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 6, i32 3
  %307 = ptrtoint ptr %arrayidx.i402.3 to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %arrayidx.i402.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %308)
  %cmp1.i403.3 = icmp eq i8 %308, 127
  br i1 %cmp1.i403.3, label %if.then.i405.3, label %if.else.i407.3

if.else.i407.3:                                   ; preds = %for.inc.i410.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i406.3 = sext i8 %308 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i406.3) #4
  br label %for.inc.i410.3

if.then.i405.3:                                   ; preds = %for.inc.i410.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i410.3

for.inc.i410.3:                                   ; preds = %if.then.i405.3, %if.else.i407.3
  %arrayidx.i402.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 6, i32 4
  %309 = ptrtoint ptr %arrayidx.i402.4 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %arrayidx.i402.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %310)
  %cmp1.i403.4 = icmp eq i8 %310, 127
  br i1 %cmp1.i403.4, label %if.then.i405.4, label %if.else.i407.4

if.else.i407.4:                                   ; preds = %for.inc.i410.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i406.4 = sext i8 %310 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i406.4) #4
  br label %for.inc.i410.4

if.then.i405.4:                                   ; preds = %for.inc.i410.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i410.4

for.inc.i410.4:                                   ; preds = %if.then.i405.4, %if.else.i407.4
  %arrayidx.i402.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 6, i32 5
  %311 = ptrtoint ptr %arrayidx.i402.5 to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %arrayidx.i402.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %312)
  %cmp1.i403.5 = icmp eq i8 %312, 127
  br i1 %cmp1.i403.5, label %if.then.i405.5, label %if.else.i407.5

if.else.i407.5:                                   ; preds = %for.inc.i410.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i406.5 = sext i8 %312 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i406.5) #4
  br label %for.inc.i410.5

if.then.i405.5:                                   ; preds = %for.inc.i410.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i410.5

for.inc.i410.5:                                   ; preds = %if.then.i405.5, %if.else.i407.5
  %arrayidx.i402.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 6, i32 6
  %313 = ptrtoint ptr %arrayidx.i402.6 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %arrayidx.i402.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %314)
  %cmp1.i403.6 = icmp eq i8 %314, 127
  br i1 %cmp1.i403.6, label %if.then.i405.6, label %if.else.i407.6

if.else.i407.6:                                   ; preds = %for.inc.i410.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i406.6 = sext i8 %314 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i406.6) #4
  br label %for.inc.i410.6

if.then.i405.6:                                   ; preds = %for.inc.i410.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i410.6

for.inc.i410.6:                                   ; preds = %if.then.i405.6, %if.else.i407.6
  %arrayidx.i402.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 6, i32 7
  %315 = ptrtoint ptr %arrayidx.i402.7 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %arrayidx.i402.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %316)
  %cmp1.i403.7 = icmp eq i8 %316, 127
  br i1 %cmp1.i403.7, label %if.then.i405.7, label %if.else.i407.7

if.else.i407.7:                                   ; preds = %for.inc.i410.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i406.7 = sext i8 %316 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i406.7) #4
  br label %for.inc.i410.7

if.then.i405.7:                                   ; preds = %for.inc.i410.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i410.7

for.inc.i410.7:                                   ; preds = %if.then.i405.7, %if.else.i407.7
  %arrayidx.i402.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 6, i32 8
  %317 = ptrtoint ptr %arrayidx.i402.8 to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %arrayidx.i402.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %318)
  %cmp1.i403.8 = icmp eq i8 %318, 127
  br i1 %cmp1.i403.8, label %if.then.i405.8, label %if.else.i407.8

if.else.i407.8:                                   ; preds = %for.inc.i410.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i406.8 = sext i8 %318 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i406.8) #4
  br label %for.inc.i410.8

if.then.i405.8:                                   ; preds = %for.inc.i410.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i410.8

for.inc.i410.8:                                   ; preds = %if.then.i405.8, %if.else.i407.8
  %arrayidx.i402.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 6, i32 9
  %319 = ptrtoint ptr %arrayidx.i402.9 to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %arrayidx.i402.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %320)
  %cmp1.i403.9 = icmp eq i8 %320, 127
  br i1 %cmp1.i403.9, label %if.then.i405.9, label %if.else.i407.9

if.else.i407.9:                                   ; preds = %for.inc.i410.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i406.9 = sext i8 %320 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i406.9) #4
  br label %for.inc.i410.9

if.then.i405.9:                                   ; preds = %for.inc.i410.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i410.9

for.inc.i410.9:                                   ; preds = %if.then.i405.9, %if.else.i407.9
  %arrayidx.i402.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 6, i32 10
  %321 = ptrtoint ptr %arrayidx.i402.10 to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %arrayidx.i402.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %322)
  %cmp1.i403.10 = icmp eq i8 %322, 127
  br i1 %cmp1.i403.10, label %if.then.i405.10, label %if.else.i407.10

if.else.i407.10:                                  ; preds = %for.inc.i410.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i406.10 = sext i8 %322 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i406.10) #4
  br label %for.inc.i410.10

if.then.i405.10:                                  ; preds = %for.inc.i410.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i410.10

for.inc.i410.10:                                  ; preds = %if.then.i405.10, %if.else.i407.10
  %arrayidx.i402.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 6, i32 11
  %323 = ptrtoint ptr %arrayidx.i402.11 to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %arrayidx.i402.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %324)
  %cmp1.i403.11 = icmp eq i8 %324, 127
  br i1 %cmp1.i403.11, label %if.then.i405.11, label %if.else.i407.11

if.else.i407.11:                                  ; preds = %for.inc.i410.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i406.11 = sext i8 %324 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i406.11) #4
  br label %for.inc.i410.11

if.then.i405.11:                                  ; preds = %for.inc.i410.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i410.11

for.inc.i410.11:                                  ; preds = %if.then.i405.11, %if.else.i407.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %vht80 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 7
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.66) #4
  %325 = ptrtoint ptr %vht80 to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %vht80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %326)
  %cmp1.i414 = icmp eq i8 %326, 127
  br i1 %cmp1.i414, label %if.then.i416, label %if.else.i418

if.then.i416:                                     ; preds = %for.inc.i410.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i421

if.else.i418:                                     ; preds = %for.inc.i410.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i417 = sext i8 %326 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i417) #4
  br label %for.inc.i421

for.inc.i421:                                     ; preds = %if.else.i418, %if.then.i416
  %arrayidx.i413.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 7, i32 1
  %327 = ptrtoint ptr %arrayidx.i413.1 to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %arrayidx.i413.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %328)
  %cmp1.i414.1 = icmp eq i8 %328, 127
  br i1 %cmp1.i414.1, label %if.then.i416.1, label %if.else.i418.1

if.else.i418.1:                                   ; preds = %for.inc.i421
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i417.1 = sext i8 %328 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i417.1) #4
  br label %for.inc.i421.1

if.then.i416.1:                                   ; preds = %for.inc.i421
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i421.1

for.inc.i421.1:                                   ; preds = %if.then.i416.1, %if.else.i418.1
  %arrayidx.i413.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 7, i32 2
  %329 = ptrtoint ptr %arrayidx.i413.2 to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %arrayidx.i413.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %330)
  %cmp1.i414.2 = icmp eq i8 %330, 127
  br i1 %cmp1.i414.2, label %if.then.i416.2, label %if.else.i418.2

if.else.i418.2:                                   ; preds = %for.inc.i421.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i417.2 = sext i8 %330 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i417.2) #4
  br label %for.inc.i421.2

if.then.i416.2:                                   ; preds = %for.inc.i421.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i421.2

for.inc.i421.2:                                   ; preds = %if.then.i416.2, %if.else.i418.2
  %arrayidx.i413.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 7, i32 3
  %331 = ptrtoint ptr %arrayidx.i413.3 to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %arrayidx.i413.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %332)
  %cmp1.i414.3 = icmp eq i8 %332, 127
  br i1 %cmp1.i414.3, label %if.then.i416.3, label %if.else.i418.3

if.else.i418.3:                                   ; preds = %for.inc.i421.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i417.3 = sext i8 %332 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i417.3) #4
  br label %for.inc.i421.3

if.then.i416.3:                                   ; preds = %for.inc.i421.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i421.3

for.inc.i421.3:                                   ; preds = %if.then.i416.3, %if.else.i418.3
  %arrayidx.i413.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 7, i32 4
  %333 = ptrtoint ptr %arrayidx.i413.4 to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %arrayidx.i413.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %334)
  %cmp1.i414.4 = icmp eq i8 %334, 127
  br i1 %cmp1.i414.4, label %if.then.i416.4, label %if.else.i418.4

if.else.i418.4:                                   ; preds = %for.inc.i421.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i417.4 = sext i8 %334 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i417.4) #4
  br label %for.inc.i421.4

if.then.i416.4:                                   ; preds = %for.inc.i421.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i421.4

for.inc.i421.4:                                   ; preds = %if.then.i416.4, %if.else.i418.4
  %arrayidx.i413.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 7, i32 5
  %335 = ptrtoint ptr %arrayidx.i413.5 to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %arrayidx.i413.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %336)
  %cmp1.i414.5 = icmp eq i8 %336, 127
  br i1 %cmp1.i414.5, label %if.then.i416.5, label %if.else.i418.5

if.else.i418.5:                                   ; preds = %for.inc.i421.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i417.5 = sext i8 %336 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i417.5) #4
  br label %for.inc.i421.5

if.then.i416.5:                                   ; preds = %for.inc.i421.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i421.5

for.inc.i421.5:                                   ; preds = %if.then.i416.5, %if.else.i418.5
  %arrayidx.i413.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 7, i32 6
  %337 = ptrtoint ptr %arrayidx.i413.6 to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %arrayidx.i413.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %338)
  %cmp1.i414.6 = icmp eq i8 %338, 127
  br i1 %cmp1.i414.6, label %if.then.i416.6, label %if.else.i418.6

if.else.i418.6:                                   ; preds = %for.inc.i421.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i417.6 = sext i8 %338 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i417.6) #4
  br label %for.inc.i421.6

if.then.i416.6:                                   ; preds = %for.inc.i421.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i421.6

for.inc.i421.6:                                   ; preds = %if.then.i416.6, %if.else.i418.6
  %arrayidx.i413.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 7, i32 7
  %339 = ptrtoint ptr %arrayidx.i413.7 to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %arrayidx.i413.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %340)
  %cmp1.i414.7 = icmp eq i8 %340, 127
  br i1 %cmp1.i414.7, label %if.then.i416.7, label %if.else.i418.7

if.else.i418.7:                                   ; preds = %for.inc.i421.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i417.7 = sext i8 %340 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i417.7) #4
  br label %for.inc.i421.7

if.then.i416.7:                                   ; preds = %for.inc.i421.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i421.7

for.inc.i421.7:                                   ; preds = %if.then.i416.7, %if.else.i418.7
  %arrayidx.i413.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 7, i32 8
  %341 = ptrtoint ptr %arrayidx.i413.8 to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %arrayidx.i413.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %342)
  %cmp1.i414.8 = icmp eq i8 %342, 127
  br i1 %cmp1.i414.8, label %if.then.i416.8, label %if.else.i418.8

if.else.i418.8:                                   ; preds = %for.inc.i421.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i417.8 = sext i8 %342 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i417.8) #4
  br label %for.inc.i421.8

if.then.i416.8:                                   ; preds = %for.inc.i421.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i421.8

for.inc.i421.8:                                   ; preds = %if.then.i416.8, %if.else.i418.8
  %arrayidx.i413.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 7, i32 9
  %343 = ptrtoint ptr %arrayidx.i413.9 to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %arrayidx.i413.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %344)
  %cmp1.i414.9 = icmp eq i8 %344, 127
  br i1 %cmp1.i414.9, label %if.then.i416.9, label %if.else.i418.9

if.else.i418.9:                                   ; preds = %for.inc.i421.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i417.9 = sext i8 %344 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i417.9) #4
  br label %for.inc.i421.9

if.then.i416.9:                                   ; preds = %for.inc.i421.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i421.9

for.inc.i421.9:                                   ; preds = %if.then.i416.9, %if.else.i418.9
  %arrayidx.i413.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 7, i32 10
  %345 = ptrtoint ptr %arrayidx.i413.10 to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %arrayidx.i413.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %346)
  %cmp1.i414.10 = icmp eq i8 %346, 127
  br i1 %cmp1.i414.10, label %if.then.i416.10, label %if.else.i418.10

if.else.i418.10:                                  ; preds = %for.inc.i421.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i417.10 = sext i8 %346 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i417.10) #4
  br label %for.inc.i421.10

if.then.i416.10:                                  ; preds = %for.inc.i421.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i421.10

for.inc.i421.10:                                  ; preds = %if.then.i416.10, %if.else.i418.10
  %arrayidx.i413.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 7, i32 11
  %347 = ptrtoint ptr %arrayidx.i413.11 to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %arrayidx.i413.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %348)
  %cmp1.i414.11 = icmp eq i8 %348, 127
  br i1 %cmp1.i414.11, label %if.then.i416.11, label %if.else.i418.11

if.else.i418.11:                                  ; preds = %for.inc.i421.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i417.11 = sext i8 %348 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i417.11) #4
  br label %for.inc.i421.11

if.then.i416.11:                                  ; preds = %for.inc.i421.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i421.11

for.inc.i421.11:                                  ; preds = %if.then.i416.11, %if.else.i418.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %vht8072 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 7
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.67) #4
  %349 = ptrtoint ptr %vht8072 to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %vht8072, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %350)
  %cmp1.i425 = icmp eq i8 %350, 127
  br i1 %cmp1.i425, label %if.then.i427, label %if.else.i429

if.then.i427:                                     ; preds = %for.inc.i421.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i432

if.else.i429:                                     ; preds = %for.inc.i421.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i428 = sext i8 %350 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i428) #4
  br label %for.inc.i432

for.inc.i432:                                     ; preds = %if.else.i429, %if.then.i427
  %arrayidx.i424.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 7, i32 1
  %351 = ptrtoint ptr %arrayidx.i424.1 to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %arrayidx.i424.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %352)
  %cmp1.i425.1 = icmp eq i8 %352, 127
  br i1 %cmp1.i425.1, label %if.then.i427.1, label %if.else.i429.1

if.else.i429.1:                                   ; preds = %for.inc.i432
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i428.1 = sext i8 %352 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i428.1) #4
  br label %for.inc.i432.1

if.then.i427.1:                                   ; preds = %for.inc.i432
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i432.1

for.inc.i432.1:                                   ; preds = %if.then.i427.1, %if.else.i429.1
  %arrayidx.i424.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 7, i32 2
  %353 = ptrtoint ptr %arrayidx.i424.2 to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %arrayidx.i424.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %354)
  %cmp1.i425.2 = icmp eq i8 %354, 127
  br i1 %cmp1.i425.2, label %if.then.i427.2, label %if.else.i429.2

if.else.i429.2:                                   ; preds = %for.inc.i432.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i428.2 = sext i8 %354 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i428.2) #4
  br label %for.inc.i432.2

if.then.i427.2:                                   ; preds = %for.inc.i432.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i432.2

for.inc.i432.2:                                   ; preds = %if.then.i427.2, %if.else.i429.2
  %arrayidx.i424.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 7, i32 3
  %355 = ptrtoint ptr %arrayidx.i424.3 to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %arrayidx.i424.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %356)
  %cmp1.i425.3 = icmp eq i8 %356, 127
  br i1 %cmp1.i425.3, label %if.then.i427.3, label %if.else.i429.3

if.else.i429.3:                                   ; preds = %for.inc.i432.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i428.3 = sext i8 %356 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i428.3) #4
  br label %for.inc.i432.3

if.then.i427.3:                                   ; preds = %for.inc.i432.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i432.3

for.inc.i432.3:                                   ; preds = %if.then.i427.3, %if.else.i429.3
  %arrayidx.i424.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 7, i32 4
  %357 = ptrtoint ptr %arrayidx.i424.4 to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %arrayidx.i424.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %358)
  %cmp1.i425.4 = icmp eq i8 %358, 127
  br i1 %cmp1.i425.4, label %if.then.i427.4, label %if.else.i429.4

if.else.i429.4:                                   ; preds = %for.inc.i432.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i428.4 = sext i8 %358 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i428.4) #4
  br label %for.inc.i432.4

if.then.i427.4:                                   ; preds = %for.inc.i432.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i432.4

for.inc.i432.4:                                   ; preds = %if.then.i427.4, %if.else.i429.4
  %arrayidx.i424.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 7, i32 5
  %359 = ptrtoint ptr %arrayidx.i424.5 to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %arrayidx.i424.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %360)
  %cmp1.i425.5 = icmp eq i8 %360, 127
  br i1 %cmp1.i425.5, label %if.then.i427.5, label %if.else.i429.5

if.else.i429.5:                                   ; preds = %for.inc.i432.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i428.5 = sext i8 %360 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i428.5) #4
  br label %for.inc.i432.5

if.then.i427.5:                                   ; preds = %for.inc.i432.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i432.5

for.inc.i432.5:                                   ; preds = %if.then.i427.5, %if.else.i429.5
  %arrayidx.i424.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 7, i32 6
  %361 = ptrtoint ptr %arrayidx.i424.6 to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %arrayidx.i424.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %362)
  %cmp1.i425.6 = icmp eq i8 %362, 127
  br i1 %cmp1.i425.6, label %if.then.i427.6, label %if.else.i429.6

if.else.i429.6:                                   ; preds = %for.inc.i432.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i428.6 = sext i8 %362 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i428.6) #4
  br label %for.inc.i432.6

if.then.i427.6:                                   ; preds = %for.inc.i432.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i432.6

for.inc.i432.6:                                   ; preds = %if.then.i427.6, %if.else.i429.6
  %arrayidx.i424.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 7, i32 7
  %363 = ptrtoint ptr %arrayidx.i424.7 to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %arrayidx.i424.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %364)
  %cmp1.i425.7 = icmp eq i8 %364, 127
  br i1 %cmp1.i425.7, label %if.then.i427.7, label %if.else.i429.7

if.else.i429.7:                                   ; preds = %for.inc.i432.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i428.7 = sext i8 %364 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i428.7) #4
  br label %for.inc.i432.7

if.then.i427.7:                                   ; preds = %for.inc.i432.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i432.7

for.inc.i432.7:                                   ; preds = %if.then.i427.7, %if.else.i429.7
  %arrayidx.i424.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 7, i32 8
  %365 = ptrtoint ptr %arrayidx.i424.8 to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %arrayidx.i424.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %366)
  %cmp1.i425.8 = icmp eq i8 %366, 127
  br i1 %cmp1.i425.8, label %if.then.i427.8, label %if.else.i429.8

if.else.i429.8:                                   ; preds = %for.inc.i432.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i428.8 = sext i8 %366 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i428.8) #4
  br label %for.inc.i432.8

if.then.i427.8:                                   ; preds = %for.inc.i432.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i432.8

for.inc.i432.8:                                   ; preds = %if.then.i427.8, %if.else.i429.8
  %arrayidx.i424.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 7, i32 9
  %367 = ptrtoint ptr %arrayidx.i424.9 to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %arrayidx.i424.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %368)
  %cmp1.i425.9 = icmp eq i8 %368, 127
  br i1 %cmp1.i425.9, label %if.then.i427.9, label %if.else.i429.9

if.else.i429.9:                                   ; preds = %for.inc.i432.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i428.9 = sext i8 %368 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i428.9) #4
  br label %for.inc.i432.9

if.then.i427.9:                                   ; preds = %for.inc.i432.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i432.9

for.inc.i432.9:                                   ; preds = %if.then.i427.9, %if.else.i429.9
  %arrayidx.i424.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 7, i32 10
  %369 = ptrtoint ptr %arrayidx.i424.10 to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %arrayidx.i424.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %370)
  %cmp1.i425.10 = icmp eq i8 %370, 127
  br i1 %cmp1.i425.10, label %if.then.i427.10, label %if.else.i429.10

if.else.i429.10:                                  ; preds = %for.inc.i432.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i428.10 = sext i8 %370 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i428.10) #4
  br label %for.inc.i432.10

if.then.i427.10:                                  ; preds = %for.inc.i432.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i432.10

for.inc.i432.10:                                  ; preds = %if.then.i427.10, %if.else.i429.10
  %arrayidx.i424.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 7, i32 11
  %371 = ptrtoint ptr %arrayidx.i424.11 to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %arrayidx.i424.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %372)
  %cmp1.i425.11 = icmp eq i8 %372, 127
  br i1 %cmp1.i425.11, label %if.then.i427.11, label %if.else.i429.11

if.else.i429.11:                                  ; preds = %for.inc.i432.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i428.11 = sext i8 %372 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i428.11) #4
  br label %for.inc.i432.11

if.then.i427.11:                                  ; preds = %for.inc.i432.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i432.11

for.inc.i432.11:                                  ; preds = %if.then.i427.11, %if.else.i429.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %vht8076 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 7
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.68) #4
  %373 = ptrtoint ptr %vht8076 to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %vht8076, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %374)
  %cmp1.i436 = icmp eq i8 %374, 127
  br i1 %cmp1.i436, label %if.then.i438, label %if.else.i440

if.then.i438:                                     ; preds = %for.inc.i432.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i443

if.else.i440:                                     ; preds = %for.inc.i432.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i439 = sext i8 %374 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i439) #4
  br label %for.inc.i443

for.inc.i443:                                     ; preds = %if.else.i440, %if.then.i438
  %arrayidx.i435.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 7, i32 1
  %375 = ptrtoint ptr %arrayidx.i435.1 to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %arrayidx.i435.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %376)
  %cmp1.i436.1 = icmp eq i8 %376, 127
  br i1 %cmp1.i436.1, label %if.then.i438.1, label %if.else.i440.1

if.else.i440.1:                                   ; preds = %for.inc.i443
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i439.1 = sext i8 %376 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i439.1) #4
  br label %for.inc.i443.1

if.then.i438.1:                                   ; preds = %for.inc.i443
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i443.1

for.inc.i443.1:                                   ; preds = %if.then.i438.1, %if.else.i440.1
  %arrayidx.i435.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 7, i32 2
  %377 = ptrtoint ptr %arrayidx.i435.2 to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %arrayidx.i435.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %378)
  %cmp1.i436.2 = icmp eq i8 %378, 127
  br i1 %cmp1.i436.2, label %if.then.i438.2, label %if.else.i440.2

if.else.i440.2:                                   ; preds = %for.inc.i443.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i439.2 = sext i8 %378 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i439.2) #4
  br label %for.inc.i443.2

if.then.i438.2:                                   ; preds = %for.inc.i443.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i443.2

for.inc.i443.2:                                   ; preds = %if.then.i438.2, %if.else.i440.2
  %arrayidx.i435.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 7, i32 3
  %379 = ptrtoint ptr %arrayidx.i435.3 to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %arrayidx.i435.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %380)
  %cmp1.i436.3 = icmp eq i8 %380, 127
  br i1 %cmp1.i436.3, label %if.then.i438.3, label %if.else.i440.3

if.else.i440.3:                                   ; preds = %for.inc.i443.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i439.3 = sext i8 %380 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i439.3) #4
  br label %for.inc.i443.3

if.then.i438.3:                                   ; preds = %for.inc.i443.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i443.3

for.inc.i443.3:                                   ; preds = %if.then.i438.3, %if.else.i440.3
  %arrayidx.i435.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 7, i32 4
  %381 = ptrtoint ptr %arrayidx.i435.4 to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %arrayidx.i435.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %382)
  %cmp1.i436.4 = icmp eq i8 %382, 127
  br i1 %cmp1.i436.4, label %if.then.i438.4, label %if.else.i440.4

if.else.i440.4:                                   ; preds = %for.inc.i443.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i439.4 = sext i8 %382 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i439.4) #4
  br label %for.inc.i443.4

if.then.i438.4:                                   ; preds = %for.inc.i443.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i443.4

for.inc.i443.4:                                   ; preds = %if.then.i438.4, %if.else.i440.4
  %arrayidx.i435.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 7, i32 5
  %383 = ptrtoint ptr %arrayidx.i435.5 to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %arrayidx.i435.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %384)
  %cmp1.i436.5 = icmp eq i8 %384, 127
  br i1 %cmp1.i436.5, label %if.then.i438.5, label %if.else.i440.5

if.else.i440.5:                                   ; preds = %for.inc.i443.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i439.5 = sext i8 %384 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i439.5) #4
  br label %for.inc.i443.5

if.then.i438.5:                                   ; preds = %for.inc.i443.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i443.5

for.inc.i443.5:                                   ; preds = %if.then.i438.5, %if.else.i440.5
  %arrayidx.i435.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 7, i32 6
  %385 = ptrtoint ptr %arrayidx.i435.6 to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %arrayidx.i435.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %386)
  %cmp1.i436.6 = icmp eq i8 %386, 127
  br i1 %cmp1.i436.6, label %if.then.i438.6, label %if.else.i440.6

if.else.i440.6:                                   ; preds = %for.inc.i443.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i439.6 = sext i8 %386 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i439.6) #4
  br label %for.inc.i443.6

if.then.i438.6:                                   ; preds = %for.inc.i443.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i443.6

for.inc.i443.6:                                   ; preds = %if.then.i438.6, %if.else.i440.6
  %arrayidx.i435.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 7, i32 7
  %387 = ptrtoint ptr %arrayidx.i435.7 to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %arrayidx.i435.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %388)
  %cmp1.i436.7 = icmp eq i8 %388, 127
  br i1 %cmp1.i436.7, label %if.then.i438.7, label %if.else.i440.7

if.else.i440.7:                                   ; preds = %for.inc.i443.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i439.7 = sext i8 %388 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i439.7) #4
  br label %for.inc.i443.7

if.then.i438.7:                                   ; preds = %for.inc.i443.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i443.7

for.inc.i443.7:                                   ; preds = %if.then.i438.7, %if.else.i440.7
  %arrayidx.i435.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 7, i32 8
  %389 = ptrtoint ptr %arrayidx.i435.8 to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %arrayidx.i435.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %390)
  %cmp1.i436.8 = icmp eq i8 %390, 127
  br i1 %cmp1.i436.8, label %if.then.i438.8, label %if.else.i440.8

if.else.i440.8:                                   ; preds = %for.inc.i443.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i439.8 = sext i8 %390 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i439.8) #4
  br label %for.inc.i443.8

if.then.i438.8:                                   ; preds = %for.inc.i443.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i443.8

for.inc.i443.8:                                   ; preds = %if.then.i438.8, %if.else.i440.8
  %arrayidx.i435.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 7, i32 9
  %391 = ptrtoint ptr %arrayidx.i435.9 to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %arrayidx.i435.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %392)
  %cmp1.i436.9 = icmp eq i8 %392, 127
  br i1 %cmp1.i436.9, label %if.then.i438.9, label %if.else.i440.9

if.else.i440.9:                                   ; preds = %for.inc.i443.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i439.9 = sext i8 %392 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i439.9) #4
  br label %for.inc.i443.9

if.then.i438.9:                                   ; preds = %for.inc.i443.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i443.9

for.inc.i443.9:                                   ; preds = %if.then.i438.9, %if.else.i440.9
  %arrayidx.i435.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 7, i32 10
  %393 = ptrtoint ptr %arrayidx.i435.10 to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %arrayidx.i435.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %394)
  %cmp1.i436.10 = icmp eq i8 %394, 127
  br i1 %cmp1.i436.10, label %if.then.i438.10, label %if.else.i440.10

if.else.i440.10:                                  ; preds = %for.inc.i443.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i439.10 = sext i8 %394 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i439.10) #4
  br label %for.inc.i443.10

if.then.i438.10:                                  ; preds = %for.inc.i443.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i443.10

for.inc.i443.10:                                  ; preds = %if.then.i438.10, %if.else.i440.10
  %arrayidx.i435.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 7, i32 11
  %395 = ptrtoint ptr %arrayidx.i435.11 to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %arrayidx.i435.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %396)
  %cmp1.i436.11 = icmp eq i8 %396, 127
  br i1 %cmp1.i436.11, label %if.then.i438.11, label %if.else.i440.11

if.else.i440.11:                                  ; preds = %for.inc.i443.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i439.11 = sext i8 %396 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i439.11) #4
  br label %for.inc.i443.11

if.then.i438.11:                                  ; preds = %for.inc.i443.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i443.11

for.inc.i443.11:                                  ; preds = %if.then.i438.11, %if.else.i440.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %vht160 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.69) #4
  %397 = ptrtoint ptr %vht160 to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %vht160, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %398)
  %cmp1.i447 = icmp eq i8 %398, 127
  br i1 %cmp1.i447, label %if.then.i449, label %if.else.i451

if.then.i449:                                     ; preds = %for.inc.i443.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i454

if.else.i451:                                     ; preds = %for.inc.i443.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i450 = sext i8 %398 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i450) #4
  br label %for.inc.i454

for.inc.i454:                                     ; preds = %if.else.i451, %if.then.i449
  %arrayidx.i446.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 8, i32 1
  %399 = ptrtoint ptr %arrayidx.i446.1 to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %arrayidx.i446.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %400)
  %cmp1.i447.1 = icmp eq i8 %400, 127
  br i1 %cmp1.i447.1, label %if.then.i449.1, label %if.else.i451.1

if.else.i451.1:                                   ; preds = %for.inc.i454
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i450.1 = sext i8 %400 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i450.1) #4
  br label %for.inc.i454.1

if.then.i449.1:                                   ; preds = %for.inc.i454
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i454.1

for.inc.i454.1:                                   ; preds = %if.then.i449.1, %if.else.i451.1
  %arrayidx.i446.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 8, i32 2
  %401 = ptrtoint ptr %arrayidx.i446.2 to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %arrayidx.i446.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %402)
  %cmp1.i447.2 = icmp eq i8 %402, 127
  br i1 %cmp1.i447.2, label %if.then.i449.2, label %if.else.i451.2

if.else.i451.2:                                   ; preds = %for.inc.i454.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i450.2 = sext i8 %402 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i450.2) #4
  br label %for.inc.i454.2

if.then.i449.2:                                   ; preds = %for.inc.i454.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i454.2

for.inc.i454.2:                                   ; preds = %if.then.i449.2, %if.else.i451.2
  %arrayidx.i446.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 8, i32 3
  %403 = ptrtoint ptr %arrayidx.i446.3 to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %arrayidx.i446.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %404)
  %cmp1.i447.3 = icmp eq i8 %404, 127
  br i1 %cmp1.i447.3, label %if.then.i449.3, label %if.else.i451.3

if.else.i451.3:                                   ; preds = %for.inc.i454.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i450.3 = sext i8 %404 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i450.3) #4
  br label %for.inc.i454.3

if.then.i449.3:                                   ; preds = %for.inc.i454.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i454.3

for.inc.i454.3:                                   ; preds = %if.then.i449.3, %if.else.i451.3
  %arrayidx.i446.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 8, i32 4
  %405 = ptrtoint ptr %arrayidx.i446.4 to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %arrayidx.i446.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %406)
  %cmp1.i447.4 = icmp eq i8 %406, 127
  br i1 %cmp1.i447.4, label %if.then.i449.4, label %if.else.i451.4

if.else.i451.4:                                   ; preds = %for.inc.i454.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i450.4 = sext i8 %406 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i450.4) #4
  br label %for.inc.i454.4

if.then.i449.4:                                   ; preds = %for.inc.i454.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i454.4

for.inc.i454.4:                                   ; preds = %if.then.i449.4, %if.else.i451.4
  %arrayidx.i446.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 8, i32 5
  %407 = ptrtoint ptr %arrayidx.i446.5 to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %arrayidx.i446.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %408)
  %cmp1.i447.5 = icmp eq i8 %408, 127
  br i1 %cmp1.i447.5, label %if.then.i449.5, label %if.else.i451.5

if.else.i451.5:                                   ; preds = %for.inc.i454.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i450.5 = sext i8 %408 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i450.5) #4
  br label %for.inc.i454.5

if.then.i449.5:                                   ; preds = %for.inc.i454.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i454.5

for.inc.i454.5:                                   ; preds = %if.then.i449.5, %if.else.i451.5
  %arrayidx.i446.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 8, i32 6
  %409 = ptrtoint ptr %arrayidx.i446.6 to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %arrayidx.i446.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %410)
  %cmp1.i447.6 = icmp eq i8 %410, 127
  br i1 %cmp1.i447.6, label %if.then.i449.6, label %if.else.i451.6

if.else.i451.6:                                   ; preds = %for.inc.i454.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i450.6 = sext i8 %410 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i450.6) #4
  br label %for.inc.i454.6

if.then.i449.6:                                   ; preds = %for.inc.i454.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i454.6

for.inc.i454.6:                                   ; preds = %if.then.i449.6, %if.else.i451.6
  %arrayidx.i446.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 8, i32 7
  %411 = ptrtoint ptr %arrayidx.i446.7 to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %arrayidx.i446.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %412)
  %cmp1.i447.7 = icmp eq i8 %412, 127
  br i1 %cmp1.i447.7, label %if.then.i449.7, label %if.else.i451.7

if.else.i451.7:                                   ; preds = %for.inc.i454.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i450.7 = sext i8 %412 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i450.7) #4
  br label %for.inc.i454.7

if.then.i449.7:                                   ; preds = %for.inc.i454.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i454.7

for.inc.i454.7:                                   ; preds = %if.then.i449.7, %if.else.i451.7
  %arrayidx.i446.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 8, i32 8
  %413 = ptrtoint ptr %arrayidx.i446.8 to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %arrayidx.i446.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %414)
  %cmp1.i447.8 = icmp eq i8 %414, 127
  br i1 %cmp1.i447.8, label %if.then.i449.8, label %if.else.i451.8

if.else.i451.8:                                   ; preds = %for.inc.i454.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i450.8 = sext i8 %414 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i450.8) #4
  br label %for.inc.i454.8

if.then.i449.8:                                   ; preds = %for.inc.i454.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i454.8

for.inc.i454.8:                                   ; preds = %if.then.i449.8, %if.else.i451.8
  %arrayidx.i446.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 8, i32 9
  %415 = ptrtoint ptr %arrayidx.i446.9 to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %arrayidx.i446.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %416)
  %cmp1.i447.9 = icmp eq i8 %416, 127
  br i1 %cmp1.i447.9, label %if.then.i449.9, label %if.else.i451.9

if.else.i451.9:                                   ; preds = %for.inc.i454.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i450.9 = sext i8 %416 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i450.9) #4
  br label %for.inc.i454.9

if.then.i449.9:                                   ; preds = %for.inc.i454.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i454.9

for.inc.i454.9:                                   ; preds = %if.then.i449.9, %if.else.i451.9
  %arrayidx.i446.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 8, i32 10
  %417 = ptrtoint ptr %arrayidx.i446.10 to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %arrayidx.i446.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %418)
  %cmp1.i447.10 = icmp eq i8 %418, 127
  br i1 %cmp1.i447.10, label %if.then.i449.10, label %if.else.i451.10

if.else.i451.10:                                  ; preds = %for.inc.i454.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i450.10 = sext i8 %418 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i450.10) #4
  br label %for.inc.i454.10

if.then.i449.10:                                  ; preds = %for.inc.i454.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i454.10

for.inc.i454.10:                                  ; preds = %if.then.i449.10, %if.else.i451.10
  %arrayidx.i446.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 8, i32 11
  %419 = ptrtoint ptr %arrayidx.i446.11 to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %arrayidx.i446.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %420)
  %cmp1.i447.11 = icmp eq i8 %420, 127
  br i1 %cmp1.i447.11, label %if.then.i449.11, label %if.else.i451.11

if.else.i451.11:                                  ; preds = %for.inc.i454.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i450.11 = sext i8 %420 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i450.11) #4
  br label %for.inc.i454.11

if.then.i449.11:                                  ; preds = %for.inc.i454.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i454.11

for.inc.i454.11:                                  ; preds = %if.then.i449.11, %if.else.i451.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %vht16083 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.70) #4
  %421 = ptrtoint ptr %vht16083 to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %vht16083, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %422)
  %cmp1.i458 = icmp eq i8 %422, 127
  br i1 %cmp1.i458, label %if.then.i460, label %if.else.i462

if.then.i460:                                     ; preds = %for.inc.i454.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i465

if.else.i462:                                     ; preds = %for.inc.i454.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i461 = sext i8 %422 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i461) #4
  br label %for.inc.i465

for.inc.i465:                                     ; preds = %if.else.i462, %if.then.i460
  %arrayidx.i457.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 8, i32 1
  %423 = ptrtoint ptr %arrayidx.i457.1 to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %arrayidx.i457.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %424)
  %cmp1.i458.1 = icmp eq i8 %424, 127
  br i1 %cmp1.i458.1, label %if.then.i460.1, label %if.else.i462.1

if.else.i462.1:                                   ; preds = %for.inc.i465
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i461.1 = sext i8 %424 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i461.1) #4
  br label %for.inc.i465.1

if.then.i460.1:                                   ; preds = %for.inc.i465
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i465.1

for.inc.i465.1:                                   ; preds = %if.then.i460.1, %if.else.i462.1
  %arrayidx.i457.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 8, i32 2
  %425 = ptrtoint ptr %arrayidx.i457.2 to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %arrayidx.i457.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %426)
  %cmp1.i458.2 = icmp eq i8 %426, 127
  br i1 %cmp1.i458.2, label %if.then.i460.2, label %if.else.i462.2

if.else.i462.2:                                   ; preds = %for.inc.i465.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i461.2 = sext i8 %426 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i461.2) #4
  br label %for.inc.i465.2

if.then.i460.2:                                   ; preds = %for.inc.i465.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i465.2

for.inc.i465.2:                                   ; preds = %if.then.i460.2, %if.else.i462.2
  %arrayidx.i457.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 8, i32 3
  %427 = ptrtoint ptr %arrayidx.i457.3 to i32
  call void @__asan_load1_noabort(i32 %427)
  %428 = load i8, ptr %arrayidx.i457.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %428)
  %cmp1.i458.3 = icmp eq i8 %428, 127
  br i1 %cmp1.i458.3, label %if.then.i460.3, label %if.else.i462.3

if.else.i462.3:                                   ; preds = %for.inc.i465.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i461.3 = sext i8 %428 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i461.3) #4
  br label %for.inc.i465.3

if.then.i460.3:                                   ; preds = %for.inc.i465.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i465.3

for.inc.i465.3:                                   ; preds = %if.then.i460.3, %if.else.i462.3
  %arrayidx.i457.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 8, i32 4
  %429 = ptrtoint ptr %arrayidx.i457.4 to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %arrayidx.i457.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %430)
  %cmp1.i458.4 = icmp eq i8 %430, 127
  br i1 %cmp1.i458.4, label %if.then.i460.4, label %if.else.i462.4

if.else.i462.4:                                   ; preds = %for.inc.i465.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i461.4 = sext i8 %430 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i461.4) #4
  br label %for.inc.i465.4

if.then.i460.4:                                   ; preds = %for.inc.i465.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i465.4

for.inc.i465.4:                                   ; preds = %if.then.i460.4, %if.else.i462.4
  %arrayidx.i457.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 8, i32 5
  %431 = ptrtoint ptr %arrayidx.i457.5 to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %arrayidx.i457.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %432)
  %cmp1.i458.5 = icmp eq i8 %432, 127
  br i1 %cmp1.i458.5, label %if.then.i460.5, label %if.else.i462.5

if.else.i462.5:                                   ; preds = %for.inc.i465.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i461.5 = sext i8 %432 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i461.5) #4
  br label %for.inc.i465.5

if.then.i460.5:                                   ; preds = %for.inc.i465.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i465.5

for.inc.i465.5:                                   ; preds = %if.then.i460.5, %if.else.i462.5
  %arrayidx.i457.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 8, i32 6
  %433 = ptrtoint ptr %arrayidx.i457.6 to i32
  call void @__asan_load1_noabort(i32 %433)
  %434 = load i8, ptr %arrayidx.i457.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %434)
  %cmp1.i458.6 = icmp eq i8 %434, 127
  br i1 %cmp1.i458.6, label %if.then.i460.6, label %if.else.i462.6

if.else.i462.6:                                   ; preds = %for.inc.i465.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i461.6 = sext i8 %434 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i461.6) #4
  br label %for.inc.i465.6

if.then.i460.6:                                   ; preds = %for.inc.i465.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i465.6

for.inc.i465.6:                                   ; preds = %if.then.i460.6, %if.else.i462.6
  %arrayidx.i457.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 8, i32 7
  %435 = ptrtoint ptr %arrayidx.i457.7 to i32
  call void @__asan_load1_noabort(i32 %435)
  %436 = load i8, ptr %arrayidx.i457.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %436)
  %cmp1.i458.7 = icmp eq i8 %436, 127
  br i1 %cmp1.i458.7, label %if.then.i460.7, label %if.else.i462.7

if.else.i462.7:                                   ; preds = %for.inc.i465.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i461.7 = sext i8 %436 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i461.7) #4
  br label %for.inc.i465.7

if.then.i460.7:                                   ; preds = %for.inc.i465.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i465.7

for.inc.i465.7:                                   ; preds = %if.then.i460.7, %if.else.i462.7
  %arrayidx.i457.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 8, i32 8
  %437 = ptrtoint ptr %arrayidx.i457.8 to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %arrayidx.i457.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %438)
  %cmp1.i458.8 = icmp eq i8 %438, 127
  br i1 %cmp1.i458.8, label %if.then.i460.8, label %if.else.i462.8

if.else.i462.8:                                   ; preds = %for.inc.i465.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i461.8 = sext i8 %438 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i461.8) #4
  br label %for.inc.i465.8

if.then.i460.8:                                   ; preds = %for.inc.i465.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i465.8

for.inc.i465.8:                                   ; preds = %if.then.i460.8, %if.else.i462.8
  %arrayidx.i457.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 8, i32 9
  %439 = ptrtoint ptr %arrayidx.i457.9 to i32
  call void @__asan_load1_noabort(i32 %439)
  %440 = load i8, ptr %arrayidx.i457.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %440)
  %cmp1.i458.9 = icmp eq i8 %440, 127
  br i1 %cmp1.i458.9, label %if.then.i460.9, label %if.else.i462.9

if.else.i462.9:                                   ; preds = %for.inc.i465.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i461.9 = sext i8 %440 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i461.9) #4
  br label %for.inc.i465.9

if.then.i460.9:                                   ; preds = %for.inc.i465.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i465.9

for.inc.i465.9:                                   ; preds = %if.then.i460.9, %if.else.i462.9
  %arrayidx.i457.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 8, i32 10
  %441 = ptrtoint ptr %arrayidx.i457.10 to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %arrayidx.i457.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %442)
  %cmp1.i458.10 = icmp eq i8 %442, 127
  br i1 %cmp1.i458.10, label %if.then.i460.10, label %if.else.i462.10

if.else.i462.10:                                  ; preds = %for.inc.i465.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i461.10 = sext i8 %442 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i461.10) #4
  br label %for.inc.i465.10

if.then.i460.10:                                  ; preds = %for.inc.i465.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i465.10

for.inc.i465.10:                                  ; preds = %if.then.i460.10, %if.else.i462.10
  %arrayidx.i457.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 8, i32 11
  %443 = ptrtoint ptr %arrayidx.i457.11 to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %arrayidx.i457.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %444)
  %cmp1.i458.11 = icmp eq i8 %444, 127
  br i1 %cmp1.i458.11, label %if.then.i460.11, label %if.else.i462.11

if.else.i462.11:                                  ; preds = %for.inc.i465.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i461.11 = sext i8 %444 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i461.11) #4
  br label %for.inc.i465.11

if.then.i460.11:                                  ; preds = %for.inc.i465.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i465.11

for.inc.i465.11:                                  ; preds = %if.then.i460.11, %if.else.i462.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %vht16087 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.71) #4
  %445 = ptrtoint ptr %vht16087 to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %vht16087, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %446)
  %cmp1.i469 = icmp eq i8 %446, 127
  br i1 %cmp1.i469, label %if.then.i471, label %if.else.i473

if.then.i471:                                     ; preds = %for.inc.i465.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i476

if.else.i473:                                     ; preds = %for.inc.i465.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i472 = sext i8 %446 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i472) #4
  br label %for.inc.i476

for.inc.i476:                                     ; preds = %if.else.i473, %if.then.i471
  %arrayidx.i468.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 8, i32 1
  %447 = ptrtoint ptr %arrayidx.i468.1 to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %arrayidx.i468.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %448)
  %cmp1.i469.1 = icmp eq i8 %448, 127
  br i1 %cmp1.i469.1, label %if.then.i471.1, label %if.else.i473.1

if.else.i473.1:                                   ; preds = %for.inc.i476
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i472.1 = sext i8 %448 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i472.1) #4
  br label %for.inc.i476.1

if.then.i471.1:                                   ; preds = %for.inc.i476
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i476.1

for.inc.i476.1:                                   ; preds = %if.then.i471.1, %if.else.i473.1
  %arrayidx.i468.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 8, i32 2
  %449 = ptrtoint ptr %arrayidx.i468.2 to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %arrayidx.i468.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %450)
  %cmp1.i469.2 = icmp eq i8 %450, 127
  br i1 %cmp1.i469.2, label %if.then.i471.2, label %if.else.i473.2

if.else.i473.2:                                   ; preds = %for.inc.i476.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i472.2 = sext i8 %450 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i472.2) #4
  br label %for.inc.i476.2

if.then.i471.2:                                   ; preds = %for.inc.i476.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i476.2

for.inc.i476.2:                                   ; preds = %if.then.i471.2, %if.else.i473.2
  %arrayidx.i468.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 8, i32 3
  %451 = ptrtoint ptr %arrayidx.i468.3 to i32
  call void @__asan_load1_noabort(i32 %451)
  %452 = load i8, ptr %arrayidx.i468.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %452)
  %cmp1.i469.3 = icmp eq i8 %452, 127
  br i1 %cmp1.i469.3, label %if.then.i471.3, label %if.else.i473.3

if.else.i473.3:                                   ; preds = %for.inc.i476.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i472.3 = sext i8 %452 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i472.3) #4
  br label %for.inc.i476.3

if.then.i471.3:                                   ; preds = %for.inc.i476.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i476.3

for.inc.i476.3:                                   ; preds = %if.then.i471.3, %if.else.i473.3
  %arrayidx.i468.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 8, i32 4
  %453 = ptrtoint ptr %arrayidx.i468.4 to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %arrayidx.i468.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %454)
  %cmp1.i469.4 = icmp eq i8 %454, 127
  br i1 %cmp1.i469.4, label %if.then.i471.4, label %if.else.i473.4

if.else.i473.4:                                   ; preds = %for.inc.i476.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i472.4 = sext i8 %454 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i472.4) #4
  br label %for.inc.i476.4

if.then.i471.4:                                   ; preds = %for.inc.i476.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i476.4

for.inc.i476.4:                                   ; preds = %if.then.i471.4, %if.else.i473.4
  %arrayidx.i468.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 8, i32 5
  %455 = ptrtoint ptr %arrayidx.i468.5 to i32
  call void @__asan_load1_noabort(i32 %455)
  %456 = load i8, ptr %arrayidx.i468.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %456)
  %cmp1.i469.5 = icmp eq i8 %456, 127
  br i1 %cmp1.i469.5, label %if.then.i471.5, label %if.else.i473.5

if.else.i473.5:                                   ; preds = %for.inc.i476.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i472.5 = sext i8 %456 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i472.5) #4
  br label %for.inc.i476.5

if.then.i471.5:                                   ; preds = %for.inc.i476.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i476.5

for.inc.i476.5:                                   ; preds = %if.then.i471.5, %if.else.i473.5
  %arrayidx.i468.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 8, i32 6
  %457 = ptrtoint ptr %arrayidx.i468.6 to i32
  call void @__asan_load1_noabort(i32 %457)
  %458 = load i8, ptr %arrayidx.i468.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %458)
  %cmp1.i469.6 = icmp eq i8 %458, 127
  br i1 %cmp1.i469.6, label %if.then.i471.6, label %if.else.i473.6

if.else.i473.6:                                   ; preds = %for.inc.i476.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i472.6 = sext i8 %458 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i472.6) #4
  br label %for.inc.i476.6

if.then.i471.6:                                   ; preds = %for.inc.i476.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i476.6

for.inc.i476.6:                                   ; preds = %if.then.i471.6, %if.else.i473.6
  %arrayidx.i468.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 8, i32 7
  %459 = ptrtoint ptr %arrayidx.i468.7 to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %arrayidx.i468.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %460)
  %cmp1.i469.7 = icmp eq i8 %460, 127
  br i1 %cmp1.i469.7, label %if.then.i471.7, label %if.else.i473.7

if.else.i473.7:                                   ; preds = %for.inc.i476.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i472.7 = sext i8 %460 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i472.7) #4
  br label %for.inc.i476.7

if.then.i471.7:                                   ; preds = %for.inc.i476.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i476.7

for.inc.i476.7:                                   ; preds = %if.then.i471.7, %if.else.i473.7
  %arrayidx.i468.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 8, i32 8
  %461 = ptrtoint ptr %arrayidx.i468.8 to i32
  call void @__asan_load1_noabort(i32 %461)
  %462 = load i8, ptr %arrayidx.i468.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %462)
  %cmp1.i469.8 = icmp eq i8 %462, 127
  br i1 %cmp1.i469.8, label %if.then.i471.8, label %if.else.i473.8

if.else.i473.8:                                   ; preds = %for.inc.i476.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i472.8 = sext i8 %462 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i472.8) #4
  br label %for.inc.i476.8

if.then.i471.8:                                   ; preds = %for.inc.i476.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i476.8

for.inc.i476.8:                                   ; preds = %if.then.i471.8, %if.else.i473.8
  %arrayidx.i468.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 8, i32 9
  %463 = ptrtoint ptr %arrayidx.i468.9 to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %arrayidx.i468.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %464)
  %cmp1.i469.9 = icmp eq i8 %464, 127
  br i1 %cmp1.i469.9, label %if.then.i471.9, label %if.else.i473.9

if.else.i473.9:                                   ; preds = %for.inc.i476.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i472.9 = sext i8 %464 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i472.9) #4
  br label %for.inc.i476.9

if.then.i471.9:                                   ; preds = %for.inc.i476.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i476.9

for.inc.i476.9:                                   ; preds = %if.then.i471.9, %if.else.i473.9
  %arrayidx.i468.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 8, i32 10
  %465 = ptrtoint ptr %arrayidx.i468.10 to i32
  call void @__asan_load1_noabort(i32 %465)
  %466 = load i8, ptr %arrayidx.i468.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %466)
  %cmp1.i469.10 = icmp eq i8 %466, 127
  br i1 %cmp1.i469.10, label %if.then.i471.10, label %if.else.i473.10

if.else.i473.10:                                  ; preds = %for.inc.i476.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i472.10 = sext i8 %466 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i472.10) #4
  br label %for.inc.i476.10

if.then.i471.10:                                  ; preds = %for.inc.i476.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i476.10

for.inc.i476.10:                                  ; preds = %if.then.i471.10, %if.else.i473.10
  %arrayidx.i468.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 8, i32 11
  %467 = ptrtoint ptr %arrayidx.i468.11 to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %arrayidx.i468.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %468)
  %cmp1.i469.11 = icmp eq i8 %468, 127
  br i1 %cmp1.i469.11, label %if.then.i471.11, label %if.else.i473.11

if.else.i473.11:                                  ; preds = %for.inc.i476.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i472.11 = sext i8 %468 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i472.11) #4
  br label %for.inc.i476.11

if.then.i471.11:                                  ; preds = %for.inc.i476.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i476.11

for.inc.i476.11:                                  ; preds = %if.then.i471.11, %if.else.i473.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %he26 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.72) #4
  %469 = ptrtoint ptr %he26 to i32
  call void @__asan_load1_noabort(i32 %469)
  %470 = load i8, ptr %he26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %470)
  %cmp1.i480 = icmp eq i8 %470, 127
  br i1 %cmp1.i480, label %if.then.i482, label %if.else.i484

if.then.i482:                                     ; preds = %for.inc.i476.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i487

if.else.i484:                                     ; preds = %for.inc.i476.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i483 = sext i8 %470 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i483) #4
  br label %for.inc.i487

for.inc.i487:                                     ; preds = %if.else.i484, %if.then.i482
  %arrayidx.i479.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 9, i32 1
  %471 = ptrtoint ptr %arrayidx.i479.1 to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %arrayidx.i479.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %472)
  %cmp1.i480.1 = icmp eq i8 %472, 127
  br i1 %cmp1.i480.1, label %if.then.i482.1, label %if.else.i484.1

if.else.i484.1:                                   ; preds = %for.inc.i487
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i483.1 = sext i8 %472 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i483.1) #4
  br label %for.inc.i487.1

if.then.i482.1:                                   ; preds = %for.inc.i487
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i487.1

for.inc.i487.1:                                   ; preds = %if.then.i482.1, %if.else.i484.1
  %arrayidx.i479.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 9, i32 2
  %473 = ptrtoint ptr %arrayidx.i479.2 to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %arrayidx.i479.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %474)
  %cmp1.i480.2 = icmp eq i8 %474, 127
  br i1 %cmp1.i480.2, label %if.then.i482.2, label %if.else.i484.2

if.else.i484.2:                                   ; preds = %for.inc.i487.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i483.2 = sext i8 %474 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i483.2) #4
  br label %for.inc.i487.2

if.then.i482.2:                                   ; preds = %for.inc.i487.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i487.2

for.inc.i487.2:                                   ; preds = %if.then.i482.2, %if.else.i484.2
  %arrayidx.i479.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 9, i32 3
  %475 = ptrtoint ptr %arrayidx.i479.3 to i32
  call void @__asan_load1_noabort(i32 %475)
  %476 = load i8, ptr %arrayidx.i479.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %476)
  %cmp1.i480.3 = icmp eq i8 %476, 127
  br i1 %cmp1.i480.3, label %if.then.i482.3, label %if.else.i484.3

if.else.i484.3:                                   ; preds = %for.inc.i487.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i483.3 = sext i8 %476 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i483.3) #4
  br label %for.inc.i487.3

if.then.i482.3:                                   ; preds = %for.inc.i487.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i487.3

for.inc.i487.3:                                   ; preds = %if.then.i482.3, %if.else.i484.3
  %arrayidx.i479.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 9, i32 4
  %477 = ptrtoint ptr %arrayidx.i479.4 to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %arrayidx.i479.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %478)
  %cmp1.i480.4 = icmp eq i8 %478, 127
  br i1 %cmp1.i480.4, label %if.then.i482.4, label %if.else.i484.4

if.else.i484.4:                                   ; preds = %for.inc.i487.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i483.4 = sext i8 %478 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i483.4) #4
  br label %for.inc.i487.4

if.then.i482.4:                                   ; preds = %for.inc.i487.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i487.4

for.inc.i487.4:                                   ; preds = %if.then.i482.4, %if.else.i484.4
  %arrayidx.i479.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 9, i32 5
  %479 = ptrtoint ptr %arrayidx.i479.5 to i32
  call void @__asan_load1_noabort(i32 %479)
  %480 = load i8, ptr %arrayidx.i479.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %480)
  %cmp1.i480.5 = icmp eq i8 %480, 127
  br i1 %cmp1.i480.5, label %if.then.i482.5, label %if.else.i484.5

if.else.i484.5:                                   ; preds = %for.inc.i487.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i483.5 = sext i8 %480 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i483.5) #4
  br label %for.inc.i487.5

if.then.i482.5:                                   ; preds = %for.inc.i487.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i487.5

for.inc.i487.5:                                   ; preds = %if.then.i482.5, %if.else.i484.5
  %arrayidx.i479.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 9, i32 6
  %481 = ptrtoint ptr %arrayidx.i479.6 to i32
  call void @__asan_load1_noabort(i32 %481)
  %482 = load i8, ptr %arrayidx.i479.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %482)
  %cmp1.i480.6 = icmp eq i8 %482, 127
  br i1 %cmp1.i480.6, label %if.then.i482.6, label %if.else.i484.6

if.else.i484.6:                                   ; preds = %for.inc.i487.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i483.6 = sext i8 %482 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i483.6) #4
  br label %for.inc.i487.6

if.then.i482.6:                                   ; preds = %for.inc.i487.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i487.6

for.inc.i487.6:                                   ; preds = %if.then.i482.6, %if.else.i484.6
  %arrayidx.i479.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 9, i32 7
  %483 = ptrtoint ptr %arrayidx.i479.7 to i32
  call void @__asan_load1_noabort(i32 %483)
  %484 = load i8, ptr %arrayidx.i479.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %484)
  %cmp1.i480.7 = icmp eq i8 %484, 127
  br i1 %cmp1.i480.7, label %if.then.i482.7, label %if.else.i484.7

if.else.i484.7:                                   ; preds = %for.inc.i487.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i483.7 = sext i8 %484 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i483.7) #4
  br label %for.inc.i487.7

if.then.i482.7:                                   ; preds = %for.inc.i487.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i487.7

for.inc.i487.7:                                   ; preds = %if.then.i482.7, %if.else.i484.7
  %arrayidx.i479.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 9, i32 8
  %485 = ptrtoint ptr %arrayidx.i479.8 to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %arrayidx.i479.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %486)
  %cmp1.i480.8 = icmp eq i8 %486, 127
  br i1 %cmp1.i480.8, label %if.then.i482.8, label %if.else.i484.8

if.else.i484.8:                                   ; preds = %for.inc.i487.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i483.8 = sext i8 %486 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i483.8) #4
  br label %for.inc.i487.8

if.then.i482.8:                                   ; preds = %for.inc.i487.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i487.8

for.inc.i487.8:                                   ; preds = %if.then.i482.8, %if.else.i484.8
  %arrayidx.i479.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 9, i32 9
  %487 = ptrtoint ptr %arrayidx.i479.9 to i32
  call void @__asan_load1_noabort(i32 %487)
  %488 = load i8, ptr %arrayidx.i479.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %488)
  %cmp1.i480.9 = icmp eq i8 %488, 127
  br i1 %cmp1.i480.9, label %if.then.i482.9, label %if.else.i484.9

if.else.i484.9:                                   ; preds = %for.inc.i487.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i483.9 = sext i8 %488 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i483.9) #4
  br label %for.inc.i487.9

if.then.i482.9:                                   ; preds = %for.inc.i487.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i487.9

for.inc.i487.9:                                   ; preds = %if.then.i482.9, %if.else.i484.9
  %arrayidx.i479.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 9, i32 10
  %489 = ptrtoint ptr %arrayidx.i479.10 to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %arrayidx.i479.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %490)
  %cmp1.i480.10 = icmp eq i8 %490, 127
  br i1 %cmp1.i480.10, label %if.then.i482.10, label %if.else.i484.10

if.else.i484.10:                                  ; preds = %for.inc.i487.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i483.10 = sext i8 %490 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i483.10) #4
  br label %for.inc.i487.10

if.then.i482.10:                                  ; preds = %for.inc.i487.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i487.10

for.inc.i487.10:                                  ; preds = %if.then.i482.10, %if.else.i484.10
  %arrayidx.i479.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 9, i32 11
  %491 = ptrtoint ptr %arrayidx.i479.11 to i32
  call void @__asan_load1_noabort(i32 %491)
  %492 = load i8, ptr %arrayidx.i479.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %492)
  %cmp1.i480.11 = icmp eq i8 %492, 127
  br i1 %cmp1.i480.11, label %if.then.i482.11, label %if.else.i484.11

if.else.i484.11:                                  ; preds = %for.inc.i487.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i483.11 = sext i8 %492 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i483.11) #4
  br label %for.inc.i487.11

if.then.i482.11:                                  ; preds = %for.inc.i487.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i487.11

for.inc.i487.11:                                  ; preds = %if.then.i482.11, %if.else.i484.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %he2694 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.73) #4
  %493 = ptrtoint ptr %he2694 to i32
  call void @__asan_load1_noabort(i32 %493)
  %494 = load i8, ptr %he2694, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %494)
  %cmp1.i491 = icmp eq i8 %494, 127
  br i1 %cmp1.i491, label %if.then.i493, label %if.else.i495

if.then.i493:                                     ; preds = %for.inc.i487.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i498

if.else.i495:                                     ; preds = %for.inc.i487.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i494 = sext i8 %494 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i494) #4
  br label %for.inc.i498

for.inc.i498:                                     ; preds = %if.else.i495, %if.then.i493
  %arrayidx.i490.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 9, i32 1
  %495 = ptrtoint ptr %arrayidx.i490.1 to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %arrayidx.i490.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %496)
  %cmp1.i491.1 = icmp eq i8 %496, 127
  br i1 %cmp1.i491.1, label %if.then.i493.1, label %if.else.i495.1

if.else.i495.1:                                   ; preds = %for.inc.i498
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i494.1 = sext i8 %496 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i494.1) #4
  br label %for.inc.i498.1

if.then.i493.1:                                   ; preds = %for.inc.i498
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i498.1

for.inc.i498.1:                                   ; preds = %if.then.i493.1, %if.else.i495.1
  %arrayidx.i490.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 9, i32 2
  %497 = ptrtoint ptr %arrayidx.i490.2 to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %arrayidx.i490.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %498)
  %cmp1.i491.2 = icmp eq i8 %498, 127
  br i1 %cmp1.i491.2, label %if.then.i493.2, label %if.else.i495.2

if.else.i495.2:                                   ; preds = %for.inc.i498.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i494.2 = sext i8 %498 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i494.2) #4
  br label %for.inc.i498.2

if.then.i493.2:                                   ; preds = %for.inc.i498.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i498.2

for.inc.i498.2:                                   ; preds = %if.then.i493.2, %if.else.i495.2
  %arrayidx.i490.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 9, i32 3
  %499 = ptrtoint ptr %arrayidx.i490.3 to i32
  call void @__asan_load1_noabort(i32 %499)
  %500 = load i8, ptr %arrayidx.i490.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %500)
  %cmp1.i491.3 = icmp eq i8 %500, 127
  br i1 %cmp1.i491.3, label %if.then.i493.3, label %if.else.i495.3

if.else.i495.3:                                   ; preds = %for.inc.i498.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i494.3 = sext i8 %500 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i494.3) #4
  br label %for.inc.i498.3

if.then.i493.3:                                   ; preds = %for.inc.i498.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i498.3

for.inc.i498.3:                                   ; preds = %if.then.i493.3, %if.else.i495.3
  %arrayidx.i490.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 9, i32 4
  %501 = ptrtoint ptr %arrayidx.i490.4 to i32
  call void @__asan_load1_noabort(i32 %501)
  %502 = load i8, ptr %arrayidx.i490.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %502)
  %cmp1.i491.4 = icmp eq i8 %502, 127
  br i1 %cmp1.i491.4, label %if.then.i493.4, label %if.else.i495.4

if.else.i495.4:                                   ; preds = %for.inc.i498.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i494.4 = sext i8 %502 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i494.4) #4
  br label %for.inc.i498.4

if.then.i493.4:                                   ; preds = %for.inc.i498.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i498.4

for.inc.i498.4:                                   ; preds = %if.then.i493.4, %if.else.i495.4
  %arrayidx.i490.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 9, i32 5
  %503 = ptrtoint ptr %arrayidx.i490.5 to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %arrayidx.i490.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %504)
  %cmp1.i491.5 = icmp eq i8 %504, 127
  br i1 %cmp1.i491.5, label %if.then.i493.5, label %if.else.i495.5

if.else.i495.5:                                   ; preds = %for.inc.i498.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i494.5 = sext i8 %504 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i494.5) #4
  br label %for.inc.i498.5

if.then.i493.5:                                   ; preds = %for.inc.i498.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i498.5

for.inc.i498.5:                                   ; preds = %if.then.i493.5, %if.else.i495.5
  %arrayidx.i490.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 9, i32 6
  %505 = ptrtoint ptr %arrayidx.i490.6 to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %arrayidx.i490.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %506)
  %cmp1.i491.6 = icmp eq i8 %506, 127
  br i1 %cmp1.i491.6, label %if.then.i493.6, label %if.else.i495.6

if.else.i495.6:                                   ; preds = %for.inc.i498.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i494.6 = sext i8 %506 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i494.6) #4
  br label %for.inc.i498.6

if.then.i493.6:                                   ; preds = %for.inc.i498.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i498.6

for.inc.i498.6:                                   ; preds = %if.then.i493.6, %if.else.i495.6
  %arrayidx.i490.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 9, i32 7
  %507 = ptrtoint ptr %arrayidx.i490.7 to i32
  call void @__asan_load1_noabort(i32 %507)
  %508 = load i8, ptr %arrayidx.i490.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %508)
  %cmp1.i491.7 = icmp eq i8 %508, 127
  br i1 %cmp1.i491.7, label %if.then.i493.7, label %if.else.i495.7

if.else.i495.7:                                   ; preds = %for.inc.i498.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i494.7 = sext i8 %508 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i494.7) #4
  br label %for.inc.i498.7

if.then.i493.7:                                   ; preds = %for.inc.i498.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i498.7

for.inc.i498.7:                                   ; preds = %if.then.i493.7, %if.else.i495.7
  %arrayidx.i490.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 9, i32 8
  %509 = ptrtoint ptr %arrayidx.i490.8 to i32
  call void @__asan_load1_noabort(i32 %509)
  %510 = load i8, ptr %arrayidx.i490.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %510)
  %cmp1.i491.8 = icmp eq i8 %510, 127
  br i1 %cmp1.i491.8, label %if.then.i493.8, label %if.else.i495.8

if.else.i495.8:                                   ; preds = %for.inc.i498.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i494.8 = sext i8 %510 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i494.8) #4
  br label %for.inc.i498.8

if.then.i493.8:                                   ; preds = %for.inc.i498.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i498.8

for.inc.i498.8:                                   ; preds = %if.then.i493.8, %if.else.i495.8
  %arrayidx.i490.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 9, i32 9
  %511 = ptrtoint ptr %arrayidx.i490.9 to i32
  call void @__asan_load1_noabort(i32 %511)
  %512 = load i8, ptr %arrayidx.i490.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %512)
  %cmp1.i491.9 = icmp eq i8 %512, 127
  br i1 %cmp1.i491.9, label %if.then.i493.9, label %if.else.i495.9

if.else.i495.9:                                   ; preds = %for.inc.i498.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i494.9 = sext i8 %512 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i494.9) #4
  br label %for.inc.i498.9

if.then.i493.9:                                   ; preds = %for.inc.i498.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i498.9

for.inc.i498.9:                                   ; preds = %if.then.i493.9, %if.else.i495.9
  %arrayidx.i490.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 9, i32 10
  %513 = ptrtoint ptr %arrayidx.i490.10 to i32
  call void @__asan_load1_noabort(i32 %513)
  %514 = load i8, ptr %arrayidx.i490.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %514)
  %cmp1.i491.10 = icmp eq i8 %514, 127
  br i1 %cmp1.i491.10, label %if.then.i493.10, label %if.else.i495.10

if.else.i495.10:                                  ; preds = %for.inc.i498.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i494.10 = sext i8 %514 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i494.10) #4
  br label %for.inc.i498.10

if.then.i493.10:                                  ; preds = %for.inc.i498.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i498.10

for.inc.i498.10:                                  ; preds = %if.then.i493.10, %if.else.i495.10
  %arrayidx.i490.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 9, i32 11
  %515 = ptrtoint ptr %arrayidx.i490.11 to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %arrayidx.i490.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %516)
  %cmp1.i491.11 = icmp eq i8 %516, 127
  br i1 %cmp1.i491.11, label %if.then.i493.11, label %if.else.i495.11

if.else.i495.11:                                  ; preds = %for.inc.i498.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i494.11 = sext i8 %516 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i494.11) #4
  br label %for.inc.i498.11

if.then.i493.11:                                  ; preds = %for.inc.i498.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i498.11

for.inc.i498.11:                                  ; preds = %if.then.i493.11, %if.else.i495.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %he2698 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.74) #4
  %517 = ptrtoint ptr %he2698 to i32
  call void @__asan_load1_noabort(i32 %517)
  %518 = load i8, ptr %he2698, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %518)
  %cmp1.i502 = icmp eq i8 %518, 127
  br i1 %cmp1.i502, label %if.then.i504, label %if.else.i506

if.then.i504:                                     ; preds = %for.inc.i498.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i509

if.else.i506:                                     ; preds = %for.inc.i498.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i505 = sext i8 %518 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i505) #4
  br label %for.inc.i509

for.inc.i509:                                     ; preds = %if.else.i506, %if.then.i504
  %arrayidx.i501.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 9, i32 1
  %519 = ptrtoint ptr %arrayidx.i501.1 to i32
  call void @__asan_load1_noabort(i32 %519)
  %520 = load i8, ptr %arrayidx.i501.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %520)
  %cmp1.i502.1 = icmp eq i8 %520, 127
  br i1 %cmp1.i502.1, label %if.then.i504.1, label %if.else.i506.1

if.else.i506.1:                                   ; preds = %for.inc.i509
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i505.1 = sext i8 %520 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i505.1) #4
  br label %for.inc.i509.1

if.then.i504.1:                                   ; preds = %for.inc.i509
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i509.1

for.inc.i509.1:                                   ; preds = %if.then.i504.1, %if.else.i506.1
  %arrayidx.i501.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 9, i32 2
  %521 = ptrtoint ptr %arrayidx.i501.2 to i32
  call void @__asan_load1_noabort(i32 %521)
  %522 = load i8, ptr %arrayidx.i501.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %522)
  %cmp1.i502.2 = icmp eq i8 %522, 127
  br i1 %cmp1.i502.2, label %if.then.i504.2, label %if.else.i506.2

if.else.i506.2:                                   ; preds = %for.inc.i509.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i505.2 = sext i8 %522 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i505.2) #4
  br label %for.inc.i509.2

if.then.i504.2:                                   ; preds = %for.inc.i509.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i509.2

for.inc.i509.2:                                   ; preds = %if.then.i504.2, %if.else.i506.2
  %arrayidx.i501.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 9, i32 3
  %523 = ptrtoint ptr %arrayidx.i501.3 to i32
  call void @__asan_load1_noabort(i32 %523)
  %524 = load i8, ptr %arrayidx.i501.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %524)
  %cmp1.i502.3 = icmp eq i8 %524, 127
  br i1 %cmp1.i502.3, label %if.then.i504.3, label %if.else.i506.3

if.else.i506.3:                                   ; preds = %for.inc.i509.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i505.3 = sext i8 %524 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i505.3) #4
  br label %for.inc.i509.3

if.then.i504.3:                                   ; preds = %for.inc.i509.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i509.3

for.inc.i509.3:                                   ; preds = %if.then.i504.3, %if.else.i506.3
  %arrayidx.i501.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 9, i32 4
  %525 = ptrtoint ptr %arrayidx.i501.4 to i32
  call void @__asan_load1_noabort(i32 %525)
  %526 = load i8, ptr %arrayidx.i501.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %526)
  %cmp1.i502.4 = icmp eq i8 %526, 127
  br i1 %cmp1.i502.4, label %if.then.i504.4, label %if.else.i506.4

if.else.i506.4:                                   ; preds = %for.inc.i509.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i505.4 = sext i8 %526 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i505.4) #4
  br label %for.inc.i509.4

if.then.i504.4:                                   ; preds = %for.inc.i509.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i509.4

for.inc.i509.4:                                   ; preds = %if.then.i504.4, %if.else.i506.4
  %arrayidx.i501.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 9, i32 5
  %527 = ptrtoint ptr %arrayidx.i501.5 to i32
  call void @__asan_load1_noabort(i32 %527)
  %528 = load i8, ptr %arrayidx.i501.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %528)
  %cmp1.i502.5 = icmp eq i8 %528, 127
  br i1 %cmp1.i502.5, label %if.then.i504.5, label %if.else.i506.5

if.else.i506.5:                                   ; preds = %for.inc.i509.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i505.5 = sext i8 %528 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i505.5) #4
  br label %for.inc.i509.5

if.then.i504.5:                                   ; preds = %for.inc.i509.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i509.5

for.inc.i509.5:                                   ; preds = %if.then.i504.5, %if.else.i506.5
  %arrayidx.i501.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 9, i32 6
  %529 = ptrtoint ptr %arrayidx.i501.6 to i32
  call void @__asan_load1_noabort(i32 %529)
  %530 = load i8, ptr %arrayidx.i501.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %530)
  %cmp1.i502.6 = icmp eq i8 %530, 127
  br i1 %cmp1.i502.6, label %if.then.i504.6, label %if.else.i506.6

if.else.i506.6:                                   ; preds = %for.inc.i509.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i505.6 = sext i8 %530 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i505.6) #4
  br label %for.inc.i509.6

if.then.i504.6:                                   ; preds = %for.inc.i509.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i509.6

for.inc.i509.6:                                   ; preds = %if.then.i504.6, %if.else.i506.6
  %arrayidx.i501.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 9, i32 7
  %531 = ptrtoint ptr %arrayidx.i501.7 to i32
  call void @__asan_load1_noabort(i32 %531)
  %532 = load i8, ptr %arrayidx.i501.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %532)
  %cmp1.i502.7 = icmp eq i8 %532, 127
  br i1 %cmp1.i502.7, label %if.then.i504.7, label %if.else.i506.7

if.else.i506.7:                                   ; preds = %for.inc.i509.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i505.7 = sext i8 %532 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i505.7) #4
  br label %for.inc.i509.7

if.then.i504.7:                                   ; preds = %for.inc.i509.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i509.7

for.inc.i509.7:                                   ; preds = %if.then.i504.7, %if.else.i506.7
  %arrayidx.i501.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 9, i32 8
  %533 = ptrtoint ptr %arrayidx.i501.8 to i32
  call void @__asan_load1_noabort(i32 %533)
  %534 = load i8, ptr %arrayidx.i501.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %534)
  %cmp1.i502.8 = icmp eq i8 %534, 127
  br i1 %cmp1.i502.8, label %if.then.i504.8, label %if.else.i506.8

if.else.i506.8:                                   ; preds = %for.inc.i509.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i505.8 = sext i8 %534 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i505.8) #4
  br label %for.inc.i509.8

if.then.i504.8:                                   ; preds = %for.inc.i509.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i509.8

for.inc.i509.8:                                   ; preds = %if.then.i504.8, %if.else.i506.8
  %arrayidx.i501.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 9, i32 9
  %535 = ptrtoint ptr %arrayidx.i501.9 to i32
  call void @__asan_load1_noabort(i32 %535)
  %536 = load i8, ptr %arrayidx.i501.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %536)
  %cmp1.i502.9 = icmp eq i8 %536, 127
  br i1 %cmp1.i502.9, label %if.then.i504.9, label %if.else.i506.9

if.else.i506.9:                                   ; preds = %for.inc.i509.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i505.9 = sext i8 %536 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i505.9) #4
  br label %for.inc.i509.9

if.then.i504.9:                                   ; preds = %for.inc.i509.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i509.9

for.inc.i509.9:                                   ; preds = %if.then.i504.9, %if.else.i506.9
  %arrayidx.i501.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 9, i32 10
  %537 = ptrtoint ptr %arrayidx.i501.10 to i32
  call void @__asan_load1_noabort(i32 %537)
  %538 = load i8, ptr %arrayidx.i501.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %538)
  %cmp1.i502.10 = icmp eq i8 %538, 127
  br i1 %cmp1.i502.10, label %if.then.i504.10, label %if.else.i506.10

if.else.i506.10:                                  ; preds = %for.inc.i509.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i505.10 = sext i8 %538 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i505.10) #4
  br label %for.inc.i509.10

if.then.i504.10:                                  ; preds = %for.inc.i509.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i509.10

for.inc.i509.10:                                  ; preds = %if.then.i504.10, %if.else.i506.10
  %arrayidx.i501.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 9, i32 11
  %539 = ptrtoint ptr %arrayidx.i501.11 to i32
  call void @__asan_load1_noabort(i32 %539)
  %540 = load i8, ptr %arrayidx.i501.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %540)
  %cmp1.i502.11 = icmp eq i8 %540, 127
  br i1 %cmp1.i502.11, label %if.then.i504.11, label %if.else.i506.11

if.else.i506.11:                                  ; preds = %for.inc.i509.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i505.11 = sext i8 %540 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i505.11) #4
  br label %for.inc.i509.11

if.then.i504.11:                                  ; preds = %for.inc.i509.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i509.11

for.inc.i509.11:                                  ; preds = %if.then.i504.11, %if.else.i506.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %he52 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 10
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.75) #4
  %541 = ptrtoint ptr %he52 to i32
  call void @__asan_load1_noabort(i32 %541)
  %542 = load i8, ptr %he52, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %542)
  %cmp1.i513 = icmp eq i8 %542, 127
  br i1 %cmp1.i513, label %if.then.i515, label %if.else.i517

if.then.i515:                                     ; preds = %for.inc.i509.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i520

if.else.i517:                                     ; preds = %for.inc.i509.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i516 = sext i8 %542 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i516) #4
  br label %for.inc.i520

for.inc.i520:                                     ; preds = %if.else.i517, %if.then.i515
  %arrayidx.i512.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 10, i32 1
  %543 = ptrtoint ptr %arrayidx.i512.1 to i32
  call void @__asan_load1_noabort(i32 %543)
  %544 = load i8, ptr %arrayidx.i512.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %544)
  %cmp1.i513.1 = icmp eq i8 %544, 127
  br i1 %cmp1.i513.1, label %if.then.i515.1, label %if.else.i517.1

if.else.i517.1:                                   ; preds = %for.inc.i520
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i516.1 = sext i8 %544 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i516.1) #4
  br label %for.inc.i520.1

if.then.i515.1:                                   ; preds = %for.inc.i520
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i520.1

for.inc.i520.1:                                   ; preds = %if.then.i515.1, %if.else.i517.1
  %arrayidx.i512.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 10, i32 2
  %545 = ptrtoint ptr %arrayidx.i512.2 to i32
  call void @__asan_load1_noabort(i32 %545)
  %546 = load i8, ptr %arrayidx.i512.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %546)
  %cmp1.i513.2 = icmp eq i8 %546, 127
  br i1 %cmp1.i513.2, label %if.then.i515.2, label %if.else.i517.2

if.else.i517.2:                                   ; preds = %for.inc.i520.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i516.2 = sext i8 %546 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i516.2) #4
  br label %for.inc.i520.2

if.then.i515.2:                                   ; preds = %for.inc.i520.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i520.2

for.inc.i520.2:                                   ; preds = %if.then.i515.2, %if.else.i517.2
  %arrayidx.i512.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 10, i32 3
  %547 = ptrtoint ptr %arrayidx.i512.3 to i32
  call void @__asan_load1_noabort(i32 %547)
  %548 = load i8, ptr %arrayidx.i512.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %548)
  %cmp1.i513.3 = icmp eq i8 %548, 127
  br i1 %cmp1.i513.3, label %if.then.i515.3, label %if.else.i517.3

if.else.i517.3:                                   ; preds = %for.inc.i520.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i516.3 = sext i8 %548 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i516.3) #4
  br label %for.inc.i520.3

if.then.i515.3:                                   ; preds = %for.inc.i520.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i520.3

for.inc.i520.3:                                   ; preds = %if.then.i515.3, %if.else.i517.3
  %arrayidx.i512.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 10, i32 4
  %549 = ptrtoint ptr %arrayidx.i512.4 to i32
  call void @__asan_load1_noabort(i32 %549)
  %550 = load i8, ptr %arrayidx.i512.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %550)
  %cmp1.i513.4 = icmp eq i8 %550, 127
  br i1 %cmp1.i513.4, label %if.then.i515.4, label %if.else.i517.4

if.else.i517.4:                                   ; preds = %for.inc.i520.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i516.4 = sext i8 %550 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i516.4) #4
  br label %for.inc.i520.4

if.then.i515.4:                                   ; preds = %for.inc.i520.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i520.4

for.inc.i520.4:                                   ; preds = %if.then.i515.4, %if.else.i517.4
  %arrayidx.i512.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 10, i32 5
  %551 = ptrtoint ptr %arrayidx.i512.5 to i32
  call void @__asan_load1_noabort(i32 %551)
  %552 = load i8, ptr %arrayidx.i512.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %552)
  %cmp1.i513.5 = icmp eq i8 %552, 127
  br i1 %cmp1.i513.5, label %if.then.i515.5, label %if.else.i517.5

if.else.i517.5:                                   ; preds = %for.inc.i520.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i516.5 = sext i8 %552 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i516.5) #4
  br label %for.inc.i520.5

if.then.i515.5:                                   ; preds = %for.inc.i520.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i520.5

for.inc.i520.5:                                   ; preds = %if.then.i515.5, %if.else.i517.5
  %arrayidx.i512.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 10, i32 6
  %553 = ptrtoint ptr %arrayidx.i512.6 to i32
  call void @__asan_load1_noabort(i32 %553)
  %554 = load i8, ptr %arrayidx.i512.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %554)
  %cmp1.i513.6 = icmp eq i8 %554, 127
  br i1 %cmp1.i513.6, label %if.then.i515.6, label %if.else.i517.6

if.else.i517.6:                                   ; preds = %for.inc.i520.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i516.6 = sext i8 %554 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i516.6) #4
  br label %for.inc.i520.6

if.then.i515.6:                                   ; preds = %for.inc.i520.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i520.6

for.inc.i520.6:                                   ; preds = %if.then.i515.6, %if.else.i517.6
  %arrayidx.i512.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 10, i32 7
  %555 = ptrtoint ptr %arrayidx.i512.7 to i32
  call void @__asan_load1_noabort(i32 %555)
  %556 = load i8, ptr %arrayidx.i512.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %556)
  %cmp1.i513.7 = icmp eq i8 %556, 127
  br i1 %cmp1.i513.7, label %if.then.i515.7, label %if.else.i517.7

if.else.i517.7:                                   ; preds = %for.inc.i520.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i516.7 = sext i8 %556 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i516.7) #4
  br label %for.inc.i520.7

if.then.i515.7:                                   ; preds = %for.inc.i520.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i520.7

for.inc.i520.7:                                   ; preds = %if.then.i515.7, %if.else.i517.7
  %arrayidx.i512.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 10, i32 8
  %557 = ptrtoint ptr %arrayidx.i512.8 to i32
  call void @__asan_load1_noabort(i32 %557)
  %558 = load i8, ptr %arrayidx.i512.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %558)
  %cmp1.i513.8 = icmp eq i8 %558, 127
  br i1 %cmp1.i513.8, label %if.then.i515.8, label %if.else.i517.8

if.else.i517.8:                                   ; preds = %for.inc.i520.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i516.8 = sext i8 %558 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i516.8) #4
  br label %for.inc.i520.8

if.then.i515.8:                                   ; preds = %for.inc.i520.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i520.8

for.inc.i520.8:                                   ; preds = %if.then.i515.8, %if.else.i517.8
  %arrayidx.i512.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 10, i32 9
  %559 = ptrtoint ptr %arrayidx.i512.9 to i32
  call void @__asan_load1_noabort(i32 %559)
  %560 = load i8, ptr %arrayidx.i512.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %560)
  %cmp1.i513.9 = icmp eq i8 %560, 127
  br i1 %cmp1.i513.9, label %if.then.i515.9, label %if.else.i517.9

if.else.i517.9:                                   ; preds = %for.inc.i520.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i516.9 = sext i8 %560 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i516.9) #4
  br label %for.inc.i520.9

if.then.i515.9:                                   ; preds = %for.inc.i520.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i520.9

for.inc.i520.9:                                   ; preds = %if.then.i515.9, %if.else.i517.9
  %arrayidx.i512.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 10, i32 10
  %561 = ptrtoint ptr %arrayidx.i512.10 to i32
  call void @__asan_load1_noabort(i32 %561)
  %562 = load i8, ptr %arrayidx.i512.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %562)
  %cmp1.i513.10 = icmp eq i8 %562, 127
  br i1 %cmp1.i513.10, label %if.then.i515.10, label %if.else.i517.10

if.else.i517.10:                                  ; preds = %for.inc.i520.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i516.10 = sext i8 %562 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i516.10) #4
  br label %for.inc.i520.10

if.then.i515.10:                                  ; preds = %for.inc.i520.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i520.10

for.inc.i520.10:                                  ; preds = %if.then.i515.10, %if.else.i517.10
  %arrayidx.i512.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 10, i32 11
  %563 = ptrtoint ptr %arrayidx.i512.11 to i32
  call void @__asan_load1_noabort(i32 %563)
  %564 = load i8, ptr %arrayidx.i512.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %564)
  %cmp1.i513.11 = icmp eq i8 %564, 127
  br i1 %cmp1.i513.11, label %if.then.i515.11, label %if.else.i517.11

if.else.i517.11:                                  ; preds = %for.inc.i520.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i516.11 = sext i8 %564 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i516.11) #4
  br label %for.inc.i520.11

if.then.i515.11:                                  ; preds = %for.inc.i520.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i520.11

for.inc.i520.11:                                  ; preds = %if.then.i515.11, %if.else.i517.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %he52105 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 10
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.76) #4
  %565 = ptrtoint ptr %he52105 to i32
  call void @__asan_load1_noabort(i32 %565)
  %566 = load i8, ptr %he52105, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %566)
  %cmp1.i524 = icmp eq i8 %566, 127
  br i1 %cmp1.i524, label %if.then.i526, label %if.else.i528

if.then.i526:                                     ; preds = %for.inc.i520.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i531

if.else.i528:                                     ; preds = %for.inc.i520.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i527 = sext i8 %566 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i527) #4
  br label %for.inc.i531

for.inc.i531:                                     ; preds = %if.else.i528, %if.then.i526
  %arrayidx.i523.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 10, i32 1
  %567 = ptrtoint ptr %arrayidx.i523.1 to i32
  call void @__asan_load1_noabort(i32 %567)
  %568 = load i8, ptr %arrayidx.i523.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %568)
  %cmp1.i524.1 = icmp eq i8 %568, 127
  br i1 %cmp1.i524.1, label %if.then.i526.1, label %if.else.i528.1

if.else.i528.1:                                   ; preds = %for.inc.i531
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i527.1 = sext i8 %568 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i527.1) #4
  br label %for.inc.i531.1

if.then.i526.1:                                   ; preds = %for.inc.i531
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i531.1

for.inc.i531.1:                                   ; preds = %if.then.i526.1, %if.else.i528.1
  %arrayidx.i523.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 10, i32 2
  %569 = ptrtoint ptr %arrayidx.i523.2 to i32
  call void @__asan_load1_noabort(i32 %569)
  %570 = load i8, ptr %arrayidx.i523.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %570)
  %cmp1.i524.2 = icmp eq i8 %570, 127
  br i1 %cmp1.i524.2, label %if.then.i526.2, label %if.else.i528.2

if.else.i528.2:                                   ; preds = %for.inc.i531.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i527.2 = sext i8 %570 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i527.2) #4
  br label %for.inc.i531.2

if.then.i526.2:                                   ; preds = %for.inc.i531.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i531.2

for.inc.i531.2:                                   ; preds = %if.then.i526.2, %if.else.i528.2
  %arrayidx.i523.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 10, i32 3
  %571 = ptrtoint ptr %arrayidx.i523.3 to i32
  call void @__asan_load1_noabort(i32 %571)
  %572 = load i8, ptr %arrayidx.i523.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %572)
  %cmp1.i524.3 = icmp eq i8 %572, 127
  br i1 %cmp1.i524.3, label %if.then.i526.3, label %if.else.i528.3

if.else.i528.3:                                   ; preds = %for.inc.i531.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i527.3 = sext i8 %572 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i527.3) #4
  br label %for.inc.i531.3

if.then.i526.3:                                   ; preds = %for.inc.i531.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i531.3

for.inc.i531.3:                                   ; preds = %if.then.i526.3, %if.else.i528.3
  %arrayidx.i523.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 10, i32 4
  %573 = ptrtoint ptr %arrayidx.i523.4 to i32
  call void @__asan_load1_noabort(i32 %573)
  %574 = load i8, ptr %arrayidx.i523.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %574)
  %cmp1.i524.4 = icmp eq i8 %574, 127
  br i1 %cmp1.i524.4, label %if.then.i526.4, label %if.else.i528.4

if.else.i528.4:                                   ; preds = %for.inc.i531.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i527.4 = sext i8 %574 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i527.4) #4
  br label %for.inc.i531.4

if.then.i526.4:                                   ; preds = %for.inc.i531.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i531.4

for.inc.i531.4:                                   ; preds = %if.then.i526.4, %if.else.i528.4
  %arrayidx.i523.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 10, i32 5
  %575 = ptrtoint ptr %arrayidx.i523.5 to i32
  call void @__asan_load1_noabort(i32 %575)
  %576 = load i8, ptr %arrayidx.i523.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %576)
  %cmp1.i524.5 = icmp eq i8 %576, 127
  br i1 %cmp1.i524.5, label %if.then.i526.5, label %if.else.i528.5

if.else.i528.5:                                   ; preds = %for.inc.i531.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i527.5 = sext i8 %576 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i527.5) #4
  br label %for.inc.i531.5

if.then.i526.5:                                   ; preds = %for.inc.i531.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i531.5

for.inc.i531.5:                                   ; preds = %if.then.i526.5, %if.else.i528.5
  %arrayidx.i523.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 10, i32 6
  %577 = ptrtoint ptr %arrayidx.i523.6 to i32
  call void @__asan_load1_noabort(i32 %577)
  %578 = load i8, ptr %arrayidx.i523.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %578)
  %cmp1.i524.6 = icmp eq i8 %578, 127
  br i1 %cmp1.i524.6, label %if.then.i526.6, label %if.else.i528.6

if.else.i528.6:                                   ; preds = %for.inc.i531.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i527.6 = sext i8 %578 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i527.6) #4
  br label %for.inc.i531.6

if.then.i526.6:                                   ; preds = %for.inc.i531.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i531.6

for.inc.i531.6:                                   ; preds = %if.then.i526.6, %if.else.i528.6
  %arrayidx.i523.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 10, i32 7
  %579 = ptrtoint ptr %arrayidx.i523.7 to i32
  call void @__asan_load1_noabort(i32 %579)
  %580 = load i8, ptr %arrayidx.i523.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %580)
  %cmp1.i524.7 = icmp eq i8 %580, 127
  br i1 %cmp1.i524.7, label %if.then.i526.7, label %if.else.i528.7

if.else.i528.7:                                   ; preds = %for.inc.i531.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i527.7 = sext i8 %580 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i527.7) #4
  br label %for.inc.i531.7

if.then.i526.7:                                   ; preds = %for.inc.i531.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i531.7

for.inc.i531.7:                                   ; preds = %if.then.i526.7, %if.else.i528.7
  %arrayidx.i523.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 10, i32 8
  %581 = ptrtoint ptr %arrayidx.i523.8 to i32
  call void @__asan_load1_noabort(i32 %581)
  %582 = load i8, ptr %arrayidx.i523.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %582)
  %cmp1.i524.8 = icmp eq i8 %582, 127
  br i1 %cmp1.i524.8, label %if.then.i526.8, label %if.else.i528.8

if.else.i528.8:                                   ; preds = %for.inc.i531.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i527.8 = sext i8 %582 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i527.8) #4
  br label %for.inc.i531.8

if.then.i526.8:                                   ; preds = %for.inc.i531.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i531.8

for.inc.i531.8:                                   ; preds = %if.then.i526.8, %if.else.i528.8
  %arrayidx.i523.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 10, i32 9
  %583 = ptrtoint ptr %arrayidx.i523.9 to i32
  call void @__asan_load1_noabort(i32 %583)
  %584 = load i8, ptr %arrayidx.i523.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %584)
  %cmp1.i524.9 = icmp eq i8 %584, 127
  br i1 %cmp1.i524.9, label %if.then.i526.9, label %if.else.i528.9

if.else.i528.9:                                   ; preds = %for.inc.i531.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i527.9 = sext i8 %584 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i527.9) #4
  br label %for.inc.i531.9

if.then.i526.9:                                   ; preds = %for.inc.i531.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i531.9

for.inc.i531.9:                                   ; preds = %if.then.i526.9, %if.else.i528.9
  %arrayidx.i523.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 10, i32 10
  %585 = ptrtoint ptr %arrayidx.i523.10 to i32
  call void @__asan_load1_noabort(i32 %585)
  %586 = load i8, ptr %arrayidx.i523.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %586)
  %cmp1.i524.10 = icmp eq i8 %586, 127
  br i1 %cmp1.i524.10, label %if.then.i526.10, label %if.else.i528.10

if.else.i528.10:                                  ; preds = %for.inc.i531.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i527.10 = sext i8 %586 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i527.10) #4
  br label %for.inc.i531.10

if.then.i526.10:                                  ; preds = %for.inc.i531.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i531.10

for.inc.i531.10:                                  ; preds = %if.then.i526.10, %if.else.i528.10
  %arrayidx.i523.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 10, i32 11
  %587 = ptrtoint ptr %arrayidx.i523.11 to i32
  call void @__asan_load1_noabort(i32 %587)
  %588 = load i8, ptr %arrayidx.i523.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %588)
  %cmp1.i524.11 = icmp eq i8 %588, 127
  br i1 %cmp1.i524.11, label %if.then.i526.11, label %if.else.i528.11

if.else.i528.11:                                  ; preds = %for.inc.i531.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i527.11 = sext i8 %588 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i527.11) #4
  br label %for.inc.i531.11

if.then.i526.11:                                  ; preds = %for.inc.i531.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i531.11

for.inc.i531.11:                                  ; preds = %if.then.i526.11, %if.else.i528.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %he52109 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 10
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.77) #4
  %589 = ptrtoint ptr %he52109 to i32
  call void @__asan_load1_noabort(i32 %589)
  %590 = load i8, ptr %he52109, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %590)
  %cmp1.i535 = icmp eq i8 %590, 127
  br i1 %cmp1.i535, label %if.then.i537, label %if.else.i539

if.then.i537:                                     ; preds = %for.inc.i531.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i542

if.else.i539:                                     ; preds = %for.inc.i531.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i538 = sext i8 %590 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i538) #4
  br label %for.inc.i542

for.inc.i542:                                     ; preds = %if.else.i539, %if.then.i537
  %arrayidx.i534.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 10, i32 1
  %591 = ptrtoint ptr %arrayidx.i534.1 to i32
  call void @__asan_load1_noabort(i32 %591)
  %592 = load i8, ptr %arrayidx.i534.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %592)
  %cmp1.i535.1 = icmp eq i8 %592, 127
  br i1 %cmp1.i535.1, label %if.then.i537.1, label %if.else.i539.1

if.else.i539.1:                                   ; preds = %for.inc.i542
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i538.1 = sext i8 %592 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i538.1) #4
  br label %for.inc.i542.1

if.then.i537.1:                                   ; preds = %for.inc.i542
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i542.1

for.inc.i542.1:                                   ; preds = %if.then.i537.1, %if.else.i539.1
  %arrayidx.i534.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 10, i32 2
  %593 = ptrtoint ptr %arrayidx.i534.2 to i32
  call void @__asan_load1_noabort(i32 %593)
  %594 = load i8, ptr %arrayidx.i534.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %594)
  %cmp1.i535.2 = icmp eq i8 %594, 127
  br i1 %cmp1.i535.2, label %if.then.i537.2, label %if.else.i539.2

if.else.i539.2:                                   ; preds = %for.inc.i542.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i538.2 = sext i8 %594 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i538.2) #4
  br label %for.inc.i542.2

if.then.i537.2:                                   ; preds = %for.inc.i542.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i542.2

for.inc.i542.2:                                   ; preds = %if.then.i537.2, %if.else.i539.2
  %arrayidx.i534.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 10, i32 3
  %595 = ptrtoint ptr %arrayidx.i534.3 to i32
  call void @__asan_load1_noabort(i32 %595)
  %596 = load i8, ptr %arrayidx.i534.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %596)
  %cmp1.i535.3 = icmp eq i8 %596, 127
  br i1 %cmp1.i535.3, label %if.then.i537.3, label %if.else.i539.3

if.else.i539.3:                                   ; preds = %for.inc.i542.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i538.3 = sext i8 %596 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i538.3) #4
  br label %for.inc.i542.3

if.then.i537.3:                                   ; preds = %for.inc.i542.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i542.3

for.inc.i542.3:                                   ; preds = %if.then.i537.3, %if.else.i539.3
  %arrayidx.i534.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 10, i32 4
  %597 = ptrtoint ptr %arrayidx.i534.4 to i32
  call void @__asan_load1_noabort(i32 %597)
  %598 = load i8, ptr %arrayidx.i534.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %598)
  %cmp1.i535.4 = icmp eq i8 %598, 127
  br i1 %cmp1.i535.4, label %if.then.i537.4, label %if.else.i539.4

if.else.i539.4:                                   ; preds = %for.inc.i542.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i538.4 = sext i8 %598 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i538.4) #4
  br label %for.inc.i542.4

if.then.i537.4:                                   ; preds = %for.inc.i542.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i542.4

for.inc.i542.4:                                   ; preds = %if.then.i537.4, %if.else.i539.4
  %arrayidx.i534.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 10, i32 5
  %599 = ptrtoint ptr %arrayidx.i534.5 to i32
  call void @__asan_load1_noabort(i32 %599)
  %600 = load i8, ptr %arrayidx.i534.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %600)
  %cmp1.i535.5 = icmp eq i8 %600, 127
  br i1 %cmp1.i535.5, label %if.then.i537.5, label %if.else.i539.5

if.else.i539.5:                                   ; preds = %for.inc.i542.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i538.5 = sext i8 %600 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i538.5) #4
  br label %for.inc.i542.5

if.then.i537.5:                                   ; preds = %for.inc.i542.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i542.5

for.inc.i542.5:                                   ; preds = %if.then.i537.5, %if.else.i539.5
  %arrayidx.i534.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 10, i32 6
  %601 = ptrtoint ptr %arrayidx.i534.6 to i32
  call void @__asan_load1_noabort(i32 %601)
  %602 = load i8, ptr %arrayidx.i534.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %602)
  %cmp1.i535.6 = icmp eq i8 %602, 127
  br i1 %cmp1.i535.6, label %if.then.i537.6, label %if.else.i539.6

if.else.i539.6:                                   ; preds = %for.inc.i542.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i538.6 = sext i8 %602 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i538.6) #4
  br label %for.inc.i542.6

if.then.i537.6:                                   ; preds = %for.inc.i542.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i542.6

for.inc.i542.6:                                   ; preds = %if.then.i537.6, %if.else.i539.6
  %arrayidx.i534.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 10, i32 7
  %603 = ptrtoint ptr %arrayidx.i534.7 to i32
  call void @__asan_load1_noabort(i32 %603)
  %604 = load i8, ptr %arrayidx.i534.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %604)
  %cmp1.i535.7 = icmp eq i8 %604, 127
  br i1 %cmp1.i535.7, label %if.then.i537.7, label %if.else.i539.7

if.else.i539.7:                                   ; preds = %for.inc.i542.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i538.7 = sext i8 %604 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i538.7) #4
  br label %for.inc.i542.7

if.then.i537.7:                                   ; preds = %for.inc.i542.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i542.7

for.inc.i542.7:                                   ; preds = %if.then.i537.7, %if.else.i539.7
  %arrayidx.i534.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 10, i32 8
  %605 = ptrtoint ptr %arrayidx.i534.8 to i32
  call void @__asan_load1_noabort(i32 %605)
  %606 = load i8, ptr %arrayidx.i534.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %606)
  %cmp1.i535.8 = icmp eq i8 %606, 127
  br i1 %cmp1.i535.8, label %if.then.i537.8, label %if.else.i539.8

if.else.i539.8:                                   ; preds = %for.inc.i542.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i538.8 = sext i8 %606 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i538.8) #4
  br label %for.inc.i542.8

if.then.i537.8:                                   ; preds = %for.inc.i542.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i542.8

for.inc.i542.8:                                   ; preds = %if.then.i537.8, %if.else.i539.8
  %arrayidx.i534.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 10, i32 9
  %607 = ptrtoint ptr %arrayidx.i534.9 to i32
  call void @__asan_load1_noabort(i32 %607)
  %608 = load i8, ptr %arrayidx.i534.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %608)
  %cmp1.i535.9 = icmp eq i8 %608, 127
  br i1 %cmp1.i535.9, label %if.then.i537.9, label %if.else.i539.9

if.else.i539.9:                                   ; preds = %for.inc.i542.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i538.9 = sext i8 %608 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i538.9) #4
  br label %for.inc.i542.9

if.then.i537.9:                                   ; preds = %for.inc.i542.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i542.9

for.inc.i542.9:                                   ; preds = %if.then.i537.9, %if.else.i539.9
  %arrayidx.i534.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 10, i32 10
  %609 = ptrtoint ptr %arrayidx.i534.10 to i32
  call void @__asan_load1_noabort(i32 %609)
  %610 = load i8, ptr %arrayidx.i534.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %610)
  %cmp1.i535.10 = icmp eq i8 %610, 127
  br i1 %cmp1.i535.10, label %if.then.i537.10, label %if.else.i539.10

if.else.i539.10:                                  ; preds = %for.inc.i542.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i538.10 = sext i8 %610 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i538.10) #4
  br label %for.inc.i542.10

if.then.i537.10:                                  ; preds = %for.inc.i542.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i542.10

for.inc.i542.10:                                  ; preds = %if.then.i537.10, %if.else.i539.10
  %arrayidx.i534.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 10, i32 11
  %611 = ptrtoint ptr %arrayidx.i534.11 to i32
  call void @__asan_load1_noabort(i32 %611)
  %612 = load i8, ptr %arrayidx.i534.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %612)
  %cmp1.i535.11 = icmp eq i8 %612, 127
  br i1 %cmp1.i535.11, label %if.then.i537.11, label %if.else.i539.11

if.else.i539.11:                                  ; preds = %for.inc.i542.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i538.11 = sext i8 %612 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i538.11) #4
  br label %for.inc.i542.11

if.then.i537.11:                                  ; preds = %for.inc.i542.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i542.11

for.inc.i542.11:                                  ; preds = %if.then.i537.11, %if.else.i539.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %he106 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.78) #4
  %613 = ptrtoint ptr %he106 to i32
  call void @__asan_load1_noabort(i32 %613)
  %614 = load i8, ptr %he106, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %614)
  %cmp1.i546 = icmp eq i8 %614, 127
  br i1 %cmp1.i546, label %if.then.i548, label %if.else.i550

if.then.i548:                                     ; preds = %for.inc.i542.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i553

if.else.i550:                                     ; preds = %for.inc.i542.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i549 = sext i8 %614 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i549) #4
  br label %for.inc.i553

for.inc.i553:                                     ; preds = %if.else.i550, %if.then.i548
  %arrayidx.i545.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 11, i32 1
  %615 = ptrtoint ptr %arrayidx.i545.1 to i32
  call void @__asan_load1_noabort(i32 %615)
  %616 = load i8, ptr %arrayidx.i545.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %616)
  %cmp1.i546.1 = icmp eq i8 %616, 127
  br i1 %cmp1.i546.1, label %if.then.i548.1, label %if.else.i550.1

if.else.i550.1:                                   ; preds = %for.inc.i553
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i549.1 = sext i8 %616 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i549.1) #4
  br label %for.inc.i553.1

if.then.i548.1:                                   ; preds = %for.inc.i553
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i553.1

for.inc.i553.1:                                   ; preds = %if.then.i548.1, %if.else.i550.1
  %arrayidx.i545.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 11, i32 2
  %617 = ptrtoint ptr %arrayidx.i545.2 to i32
  call void @__asan_load1_noabort(i32 %617)
  %618 = load i8, ptr %arrayidx.i545.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %618)
  %cmp1.i546.2 = icmp eq i8 %618, 127
  br i1 %cmp1.i546.2, label %if.then.i548.2, label %if.else.i550.2

if.else.i550.2:                                   ; preds = %for.inc.i553.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i549.2 = sext i8 %618 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i549.2) #4
  br label %for.inc.i553.2

if.then.i548.2:                                   ; preds = %for.inc.i553.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i553.2

for.inc.i553.2:                                   ; preds = %if.then.i548.2, %if.else.i550.2
  %arrayidx.i545.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 11, i32 3
  %619 = ptrtoint ptr %arrayidx.i545.3 to i32
  call void @__asan_load1_noabort(i32 %619)
  %620 = load i8, ptr %arrayidx.i545.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %620)
  %cmp1.i546.3 = icmp eq i8 %620, 127
  br i1 %cmp1.i546.3, label %if.then.i548.3, label %if.else.i550.3

if.else.i550.3:                                   ; preds = %for.inc.i553.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i549.3 = sext i8 %620 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i549.3) #4
  br label %for.inc.i553.3

if.then.i548.3:                                   ; preds = %for.inc.i553.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i553.3

for.inc.i553.3:                                   ; preds = %if.then.i548.3, %if.else.i550.3
  %arrayidx.i545.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 11, i32 4
  %621 = ptrtoint ptr %arrayidx.i545.4 to i32
  call void @__asan_load1_noabort(i32 %621)
  %622 = load i8, ptr %arrayidx.i545.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %622)
  %cmp1.i546.4 = icmp eq i8 %622, 127
  br i1 %cmp1.i546.4, label %if.then.i548.4, label %if.else.i550.4

if.else.i550.4:                                   ; preds = %for.inc.i553.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i549.4 = sext i8 %622 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i549.4) #4
  br label %for.inc.i553.4

if.then.i548.4:                                   ; preds = %for.inc.i553.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i553.4

for.inc.i553.4:                                   ; preds = %if.then.i548.4, %if.else.i550.4
  %arrayidx.i545.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 11, i32 5
  %623 = ptrtoint ptr %arrayidx.i545.5 to i32
  call void @__asan_load1_noabort(i32 %623)
  %624 = load i8, ptr %arrayidx.i545.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %624)
  %cmp1.i546.5 = icmp eq i8 %624, 127
  br i1 %cmp1.i546.5, label %if.then.i548.5, label %if.else.i550.5

if.else.i550.5:                                   ; preds = %for.inc.i553.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i549.5 = sext i8 %624 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i549.5) #4
  br label %for.inc.i553.5

if.then.i548.5:                                   ; preds = %for.inc.i553.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i553.5

for.inc.i553.5:                                   ; preds = %if.then.i548.5, %if.else.i550.5
  %arrayidx.i545.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 11, i32 6
  %625 = ptrtoint ptr %arrayidx.i545.6 to i32
  call void @__asan_load1_noabort(i32 %625)
  %626 = load i8, ptr %arrayidx.i545.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %626)
  %cmp1.i546.6 = icmp eq i8 %626, 127
  br i1 %cmp1.i546.6, label %if.then.i548.6, label %if.else.i550.6

if.else.i550.6:                                   ; preds = %for.inc.i553.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i549.6 = sext i8 %626 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i549.6) #4
  br label %for.inc.i553.6

if.then.i548.6:                                   ; preds = %for.inc.i553.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i553.6

for.inc.i553.6:                                   ; preds = %if.then.i548.6, %if.else.i550.6
  %arrayidx.i545.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 11, i32 7
  %627 = ptrtoint ptr %arrayidx.i545.7 to i32
  call void @__asan_load1_noabort(i32 %627)
  %628 = load i8, ptr %arrayidx.i545.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %628)
  %cmp1.i546.7 = icmp eq i8 %628, 127
  br i1 %cmp1.i546.7, label %if.then.i548.7, label %if.else.i550.7

if.else.i550.7:                                   ; preds = %for.inc.i553.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i549.7 = sext i8 %628 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i549.7) #4
  br label %for.inc.i553.7

if.then.i548.7:                                   ; preds = %for.inc.i553.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i553.7

for.inc.i553.7:                                   ; preds = %if.then.i548.7, %if.else.i550.7
  %arrayidx.i545.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 11, i32 8
  %629 = ptrtoint ptr %arrayidx.i545.8 to i32
  call void @__asan_load1_noabort(i32 %629)
  %630 = load i8, ptr %arrayidx.i545.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %630)
  %cmp1.i546.8 = icmp eq i8 %630, 127
  br i1 %cmp1.i546.8, label %if.then.i548.8, label %if.else.i550.8

if.else.i550.8:                                   ; preds = %for.inc.i553.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i549.8 = sext i8 %630 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i549.8) #4
  br label %for.inc.i553.8

if.then.i548.8:                                   ; preds = %for.inc.i553.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i553.8

for.inc.i553.8:                                   ; preds = %if.then.i548.8, %if.else.i550.8
  %arrayidx.i545.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 11, i32 9
  %631 = ptrtoint ptr %arrayidx.i545.9 to i32
  call void @__asan_load1_noabort(i32 %631)
  %632 = load i8, ptr %arrayidx.i545.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %632)
  %cmp1.i546.9 = icmp eq i8 %632, 127
  br i1 %cmp1.i546.9, label %if.then.i548.9, label %if.else.i550.9

if.else.i550.9:                                   ; preds = %for.inc.i553.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i549.9 = sext i8 %632 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i549.9) #4
  br label %for.inc.i553.9

if.then.i548.9:                                   ; preds = %for.inc.i553.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i553.9

for.inc.i553.9:                                   ; preds = %if.then.i548.9, %if.else.i550.9
  %arrayidx.i545.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 11, i32 10
  %633 = ptrtoint ptr %arrayidx.i545.10 to i32
  call void @__asan_load1_noabort(i32 %633)
  %634 = load i8, ptr %arrayidx.i545.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %634)
  %cmp1.i546.10 = icmp eq i8 %634, 127
  br i1 %cmp1.i546.10, label %if.then.i548.10, label %if.else.i550.10

if.else.i550.10:                                  ; preds = %for.inc.i553.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i549.10 = sext i8 %634 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i549.10) #4
  br label %for.inc.i553.10

if.then.i548.10:                                  ; preds = %for.inc.i553.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i553.10

for.inc.i553.10:                                  ; preds = %if.then.i548.10, %if.else.i550.10
  %arrayidx.i545.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 11, i32 11
  %635 = ptrtoint ptr %arrayidx.i545.11 to i32
  call void @__asan_load1_noabort(i32 %635)
  %636 = load i8, ptr %arrayidx.i545.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %636)
  %cmp1.i546.11 = icmp eq i8 %636, 127
  br i1 %cmp1.i546.11, label %if.then.i548.11, label %if.else.i550.11

if.else.i550.11:                                  ; preds = %for.inc.i553.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i549.11 = sext i8 %636 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i549.11) #4
  br label %for.inc.i553.11

if.then.i548.11:                                  ; preds = %for.inc.i553.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i553.11

for.inc.i553.11:                                  ; preds = %if.then.i548.11, %if.else.i550.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %he106116 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.79) #4
  %637 = ptrtoint ptr %he106116 to i32
  call void @__asan_load1_noabort(i32 %637)
  %638 = load i8, ptr %he106116, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %638)
  %cmp1.i557 = icmp eq i8 %638, 127
  br i1 %cmp1.i557, label %if.then.i559, label %if.else.i561

if.then.i559:                                     ; preds = %for.inc.i553.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i564

if.else.i561:                                     ; preds = %for.inc.i553.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i560 = sext i8 %638 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i560) #4
  br label %for.inc.i564

for.inc.i564:                                     ; preds = %if.else.i561, %if.then.i559
  %arrayidx.i556.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 11, i32 1
  %639 = ptrtoint ptr %arrayidx.i556.1 to i32
  call void @__asan_load1_noabort(i32 %639)
  %640 = load i8, ptr %arrayidx.i556.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %640)
  %cmp1.i557.1 = icmp eq i8 %640, 127
  br i1 %cmp1.i557.1, label %if.then.i559.1, label %if.else.i561.1

if.else.i561.1:                                   ; preds = %for.inc.i564
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i560.1 = sext i8 %640 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i560.1) #4
  br label %for.inc.i564.1

if.then.i559.1:                                   ; preds = %for.inc.i564
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i564.1

for.inc.i564.1:                                   ; preds = %if.then.i559.1, %if.else.i561.1
  %arrayidx.i556.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 11, i32 2
  %641 = ptrtoint ptr %arrayidx.i556.2 to i32
  call void @__asan_load1_noabort(i32 %641)
  %642 = load i8, ptr %arrayidx.i556.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %642)
  %cmp1.i557.2 = icmp eq i8 %642, 127
  br i1 %cmp1.i557.2, label %if.then.i559.2, label %if.else.i561.2

if.else.i561.2:                                   ; preds = %for.inc.i564.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i560.2 = sext i8 %642 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i560.2) #4
  br label %for.inc.i564.2

if.then.i559.2:                                   ; preds = %for.inc.i564.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i564.2

for.inc.i564.2:                                   ; preds = %if.then.i559.2, %if.else.i561.2
  %arrayidx.i556.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 11, i32 3
  %643 = ptrtoint ptr %arrayidx.i556.3 to i32
  call void @__asan_load1_noabort(i32 %643)
  %644 = load i8, ptr %arrayidx.i556.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %644)
  %cmp1.i557.3 = icmp eq i8 %644, 127
  br i1 %cmp1.i557.3, label %if.then.i559.3, label %if.else.i561.3

if.else.i561.3:                                   ; preds = %for.inc.i564.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i560.3 = sext i8 %644 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i560.3) #4
  br label %for.inc.i564.3

if.then.i559.3:                                   ; preds = %for.inc.i564.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i564.3

for.inc.i564.3:                                   ; preds = %if.then.i559.3, %if.else.i561.3
  %arrayidx.i556.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 11, i32 4
  %645 = ptrtoint ptr %arrayidx.i556.4 to i32
  call void @__asan_load1_noabort(i32 %645)
  %646 = load i8, ptr %arrayidx.i556.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %646)
  %cmp1.i557.4 = icmp eq i8 %646, 127
  br i1 %cmp1.i557.4, label %if.then.i559.4, label %if.else.i561.4

if.else.i561.4:                                   ; preds = %for.inc.i564.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i560.4 = sext i8 %646 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i560.4) #4
  br label %for.inc.i564.4

if.then.i559.4:                                   ; preds = %for.inc.i564.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i564.4

for.inc.i564.4:                                   ; preds = %if.then.i559.4, %if.else.i561.4
  %arrayidx.i556.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 11, i32 5
  %647 = ptrtoint ptr %arrayidx.i556.5 to i32
  call void @__asan_load1_noabort(i32 %647)
  %648 = load i8, ptr %arrayidx.i556.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %648)
  %cmp1.i557.5 = icmp eq i8 %648, 127
  br i1 %cmp1.i557.5, label %if.then.i559.5, label %if.else.i561.5

if.else.i561.5:                                   ; preds = %for.inc.i564.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i560.5 = sext i8 %648 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i560.5) #4
  br label %for.inc.i564.5

if.then.i559.5:                                   ; preds = %for.inc.i564.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i564.5

for.inc.i564.5:                                   ; preds = %if.then.i559.5, %if.else.i561.5
  %arrayidx.i556.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 11, i32 6
  %649 = ptrtoint ptr %arrayidx.i556.6 to i32
  call void @__asan_load1_noabort(i32 %649)
  %650 = load i8, ptr %arrayidx.i556.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %650)
  %cmp1.i557.6 = icmp eq i8 %650, 127
  br i1 %cmp1.i557.6, label %if.then.i559.6, label %if.else.i561.6

if.else.i561.6:                                   ; preds = %for.inc.i564.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i560.6 = sext i8 %650 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i560.6) #4
  br label %for.inc.i564.6

if.then.i559.6:                                   ; preds = %for.inc.i564.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i564.6

for.inc.i564.6:                                   ; preds = %if.then.i559.6, %if.else.i561.6
  %arrayidx.i556.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 11, i32 7
  %651 = ptrtoint ptr %arrayidx.i556.7 to i32
  call void @__asan_load1_noabort(i32 %651)
  %652 = load i8, ptr %arrayidx.i556.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %652)
  %cmp1.i557.7 = icmp eq i8 %652, 127
  br i1 %cmp1.i557.7, label %if.then.i559.7, label %if.else.i561.7

if.else.i561.7:                                   ; preds = %for.inc.i564.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i560.7 = sext i8 %652 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i560.7) #4
  br label %for.inc.i564.7

if.then.i559.7:                                   ; preds = %for.inc.i564.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i564.7

for.inc.i564.7:                                   ; preds = %if.then.i559.7, %if.else.i561.7
  %arrayidx.i556.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 11, i32 8
  %653 = ptrtoint ptr %arrayidx.i556.8 to i32
  call void @__asan_load1_noabort(i32 %653)
  %654 = load i8, ptr %arrayidx.i556.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %654)
  %cmp1.i557.8 = icmp eq i8 %654, 127
  br i1 %cmp1.i557.8, label %if.then.i559.8, label %if.else.i561.8

if.else.i561.8:                                   ; preds = %for.inc.i564.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i560.8 = sext i8 %654 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i560.8) #4
  br label %for.inc.i564.8

if.then.i559.8:                                   ; preds = %for.inc.i564.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i564.8

for.inc.i564.8:                                   ; preds = %if.then.i559.8, %if.else.i561.8
  %arrayidx.i556.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 11, i32 9
  %655 = ptrtoint ptr %arrayidx.i556.9 to i32
  call void @__asan_load1_noabort(i32 %655)
  %656 = load i8, ptr %arrayidx.i556.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %656)
  %cmp1.i557.9 = icmp eq i8 %656, 127
  br i1 %cmp1.i557.9, label %if.then.i559.9, label %if.else.i561.9

if.else.i561.9:                                   ; preds = %for.inc.i564.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i560.9 = sext i8 %656 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i560.9) #4
  br label %for.inc.i564.9

if.then.i559.9:                                   ; preds = %for.inc.i564.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i564.9

for.inc.i564.9:                                   ; preds = %if.then.i559.9, %if.else.i561.9
  %arrayidx.i556.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 11, i32 10
  %657 = ptrtoint ptr %arrayidx.i556.10 to i32
  call void @__asan_load1_noabort(i32 %657)
  %658 = load i8, ptr %arrayidx.i556.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %658)
  %cmp1.i557.10 = icmp eq i8 %658, 127
  br i1 %cmp1.i557.10, label %if.then.i559.10, label %if.else.i561.10

if.else.i561.10:                                  ; preds = %for.inc.i564.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i560.10 = sext i8 %658 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i560.10) #4
  br label %for.inc.i564.10

if.then.i559.10:                                  ; preds = %for.inc.i564.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i564.10

for.inc.i564.10:                                  ; preds = %if.then.i559.10, %if.else.i561.10
  %arrayidx.i556.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 11, i32 11
  %659 = ptrtoint ptr %arrayidx.i556.11 to i32
  call void @__asan_load1_noabort(i32 %659)
  %660 = load i8, ptr %arrayidx.i556.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %660)
  %cmp1.i557.11 = icmp eq i8 %660, 127
  br i1 %cmp1.i557.11, label %if.then.i559.11, label %if.else.i561.11

if.else.i561.11:                                  ; preds = %for.inc.i564.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i560.11 = sext i8 %660 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i560.11) #4
  br label %for.inc.i564.11

if.then.i559.11:                                  ; preds = %for.inc.i564.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i564.11

for.inc.i564.11:                                  ; preds = %if.then.i559.11, %if.else.i561.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %he106120 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.80) #4
  %661 = ptrtoint ptr %he106120 to i32
  call void @__asan_load1_noabort(i32 %661)
  %662 = load i8, ptr %he106120, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %662)
  %cmp1.i568 = icmp eq i8 %662, 127
  br i1 %cmp1.i568, label %if.then.i570, label %if.else.i572

if.then.i570:                                     ; preds = %for.inc.i564.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i575

if.else.i572:                                     ; preds = %for.inc.i564.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i571 = sext i8 %662 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i571) #4
  br label %for.inc.i575

for.inc.i575:                                     ; preds = %if.else.i572, %if.then.i570
  %arrayidx.i567.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 11, i32 1
  %663 = ptrtoint ptr %arrayidx.i567.1 to i32
  call void @__asan_load1_noabort(i32 %663)
  %664 = load i8, ptr %arrayidx.i567.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %664)
  %cmp1.i568.1 = icmp eq i8 %664, 127
  br i1 %cmp1.i568.1, label %if.then.i570.1, label %if.else.i572.1

if.else.i572.1:                                   ; preds = %for.inc.i575
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i571.1 = sext i8 %664 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i571.1) #4
  br label %for.inc.i575.1

if.then.i570.1:                                   ; preds = %for.inc.i575
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i575.1

for.inc.i575.1:                                   ; preds = %if.then.i570.1, %if.else.i572.1
  %arrayidx.i567.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 11, i32 2
  %665 = ptrtoint ptr %arrayidx.i567.2 to i32
  call void @__asan_load1_noabort(i32 %665)
  %666 = load i8, ptr %arrayidx.i567.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %666)
  %cmp1.i568.2 = icmp eq i8 %666, 127
  br i1 %cmp1.i568.2, label %if.then.i570.2, label %if.else.i572.2

if.else.i572.2:                                   ; preds = %for.inc.i575.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i571.2 = sext i8 %666 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i571.2) #4
  br label %for.inc.i575.2

if.then.i570.2:                                   ; preds = %for.inc.i575.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i575.2

for.inc.i575.2:                                   ; preds = %if.then.i570.2, %if.else.i572.2
  %arrayidx.i567.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 11, i32 3
  %667 = ptrtoint ptr %arrayidx.i567.3 to i32
  call void @__asan_load1_noabort(i32 %667)
  %668 = load i8, ptr %arrayidx.i567.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %668)
  %cmp1.i568.3 = icmp eq i8 %668, 127
  br i1 %cmp1.i568.3, label %if.then.i570.3, label %if.else.i572.3

if.else.i572.3:                                   ; preds = %for.inc.i575.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i571.3 = sext i8 %668 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i571.3) #4
  br label %for.inc.i575.3

if.then.i570.3:                                   ; preds = %for.inc.i575.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i575.3

for.inc.i575.3:                                   ; preds = %if.then.i570.3, %if.else.i572.3
  %arrayidx.i567.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 11, i32 4
  %669 = ptrtoint ptr %arrayidx.i567.4 to i32
  call void @__asan_load1_noabort(i32 %669)
  %670 = load i8, ptr %arrayidx.i567.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %670)
  %cmp1.i568.4 = icmp eq i8 %670, 127
  br i1 %cmp1.i568.4, label %if.then.i570.4, label %if.else.i572.4

if.else.i572.4:                                   ; preds = %for.inc.i575.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i571.4 = sext i8 %670 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i571.4) #4
  br label %for.inc.i575.4

if.then.i570.4:                                   ; preds = %for.inc.i575.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i575.4

for.inc.i575.4:                                   ; preds = %if.then.i570.4, %if.else.i572.4
  %arrayidx.i567.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 11, i32 5
  %671 = ptrtoint ptr %arrayidx.i567.5 to i32
  call void @__asan_load1_noabort(i32 %671)
  %672 = load i8, ptr %arrayidx.i567.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %672)
  %cmp1.i568.5 = icmp eq i8 %672, 127
  br i1 %cmp1.i568.5, label %if.then.i570.5, label %if.else.i572.5

if.else.i572.5:                                   ; preds = %for.inc.i575.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i571.5 = sext i8 %672 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i571.5) #4
  br label %for.inc.i575.5

if.then.i570.5:                                   ; preds = %for.inc.i575.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i575.5

for.inc.i575.5:                                   ; preds = %if.then.i570.5, %if.else.i572.5
  %arrayidx.i567.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 11, i32 6
  %673 = ptrtoint ptr %arrayidx.i567.6 to i32
  call void @__asan_load1_noabort(i32 %673)
  %674 = load i8, ptr %arrayidx.i567.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %674)
  %cmp1.i568.6 = icmp eq i8 %674, 127
  br i1 %cmp1.i568.6, label %if.then.i570.6, label %if.else.i572.6

if.else.i572.6:                                   ; preds = %for.inc.i575.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i571.6 = sext i8 %674 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i571.6) #4
  br label %for.inc.i575.6

if.then.i570.6:                                   ; preds = %for.inc.i575.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i575.6

for.inc.i575.6:                                   ; preds = %if.then.i570.6, %if.else.i572.6
  %arrayidx.i567.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 11, i32 7
  %675 = ptrtoint ptr %arrayidx.i567.7 to i32
  call void @__asan_load1_noabort(i32 %675)
  %676 = load i8, ptr %arrayidx.i567.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %676)
  %cmp1.i568.7 = icmp eq i8 %676, 127
  br i1 %cmp1.i568.7, label %if.then.i570.7, label %if.else.i572.7

if.else.i572.7:                                   ; preds = %for.inc.i575.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i571.7 = sext i8 %676 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i571.7) #4
  br label %for.inc.i575.7

if.then.i570.7:                                   ; preds = %for.inc.i575.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i575.7

for.inc.i575.7:                                   ; preds = %if.then.i570.7, %if.else.i572.7
  %arrayidx.i567.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 11, i32 8
  %677 = ptrtoint ptr %arrayidx.i567.8 to i32
  call void @__asan_load1_noabort(i32 %677)
  %678 = load i8, ptr %arrayidx.i567.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %678)
  %cmp1.i568.8 = icmp eq i8 %678, 127
  br i1 %cmp1.i568.8, label %if.then.i570.8, label %if.else.i572.8

if.else.i572.8:                                   ; preds = %for.inc.i575.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i571.8 = sext i8 %678 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i571.8) #4
  br label %for.inc.i575.8

if.then.i570.8:                                   ; preds = %for.inc.i575.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i575.8

for.inc.i575.8:                                   ; preds = %if.then.i570.8, %if.else.i572.8
  %arrayidx.i567.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 11, i32 9
  %679 = ptrtoint ptr %arrayidx.i567.9 to i32
  call void @__asan_load1_noabort(i32 %679)
  %680 = load i8, ptr %arrayidx.i567.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %680)
  %cmp1.i568.9 = icmp eq i8 %680, 127
  br i1 %cmp1.i568.9, label %if.then.i570.9, label %if.else.i572.9

if.else.i572.9:                                   ; preds = %for.inc.i575.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i571.9 = sext i8 %680 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i571.9) #4
  br label %for.inc.i575.9

if.then.i570.9:                                   ; preds = %for.inc.i575.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i575.9

for.inc.i575.9:                                   ; preds = %if.then.i570.9, %if.else.i572.9
  %arrayidx.i567.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 11, i32 10
  %681 = ptrtoint ptr %arrayidx.i567.10 to i32
  call void @__asan_load1_noabort(i32 %681)
  %682 = load i8, ptr %arrayidx.i567.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %682)
  %cmp1.i568.10 = icmp eq i8 %682, 127
  br i1 %cmp1.i568.10, label %if.then.i570.10, label %if.else.i572.10

if.else.i572.10:                                  ; preds = %for.inc.i575.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i571.10 = sext i8 %682 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i571.10) #4
  br label %for.inc.i575.10

if.then.i570.10:                                  ; preds = %for.inc.i575.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i575.10

for.inc.i575.10:                                  ; preds = %if.then.i570.10, %if.else.i572.10
  %arrayidx.i567.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 11, i32 11
  %683 = ptrtoint ptr %arrayidx.i567.11 to i32
  call void @__asan_load1_noabort(i32 %683)
  %684 = load i8, ptr %arrayidx.i567.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %684)
  %cmp1.i568.11 = icmp eq i8 %684, 127
  br i1 %cmp1.i568.11, label %if.then.i570.11, label %if.else.i572.11

if.else.i572.11:                                  ; preds = %for.inc.i575.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i571.11 = sext i8 %684 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i571.11) #4
  br label %for.inc.i575.11

if.then.i570.11:                                  ; preds = %for.inc.i575.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i575.11

for.inc.i575.11:                                  ; preds = %if.then.i570.11, %if.else.i572.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %he242 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 12
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.81) #4
  %685 = ptrtoint ptr %he242 to i32
  call void @__asan_load1_noabort(i32 %685)
  %686 = load i8, ptr %he242, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %686)
  %cmp1.i579 = icmp eq i8 %686, 127
  br i1 %cmp1.i579, label %if.then.i581, label %if.else.i583

if.then.i581:                                     ; preds = %for.inc.i575.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i586

if.else.i583:                                     ; preds = %for.inc.i575.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i582 = sext i8 %686 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i582) #4
  br label %for.inc.i586

for.inc.i586:                                     ; preds = %if.else.i583, %if.then.i581
  %arrayidx.i578.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 12, i32 1
  %687 = ptrtoint ptr %arrayidx.i578.1 to i32
  call void @__asan_load1_noabort(i32 %687)
  %688 = load i8, ptr %arrayidx.i578.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %688)
  %cmp1.i579.1 = icmp eq i8 %688, 127
  br i1 %cmp1.i579.1, label %if.then.i581.1, label %if.else.i583.1

if.else.i583.1:                                   ; preds = %for.inc.i586
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i582.1 = sext i8 %688 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i582.1) #4
  br label %for.inc.i586.1

if.then.i581.1:                                   ; preds = %for.inc.i586
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i586.1

for.inc.i586.1:                                   ; preds = %if.then.i581.1, %if.else.i583.1
  %arrayidx.i578.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 12, i32 2
  %689 = ptrtoint ptr %arrayidx.i578.2 to i32
  call void @__asan_load1_noabort(i32 %689)
  %690 = load i8, ptr %arrayidx.i578.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %690)
  %cmp1.i579.2 = icmp eq i8 %690, 127
  br i1 %cmp1.i579.2, label %if.then.i581.2, label %if.else.i583.2

if.else.i583.2:                                   ; preds = %for.inc.i586.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i582.2 = sext i8 %690 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i582.2) #4
  br label %for.inc.i586.2

if.then.i581.2:                                   ; preds = %for.inc.i586.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i586.2

for.inc.i586.2:                                   ; preds = %if.then.i581.2, %if.else.i583.2
  %arrayidx.i578.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 12, i32 3
  %691 = ptrtoint ptr %arrayidx.i578.3 to i32
  call void @__asan_load1_noabort(i32 %691)
  %692 = load i8, ptr %arrayidx.i578.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %692)
  %cmp1.i579.3 = icmp eq i8 %692, 127
  br i1 %cmp1.i579.3, label %if.then.i581.3, label %if.else.i583.3

if.else.i583.3:                                   ; preds = %for.inc.i586.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i582.3 = sext i8 %692 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i582.3) #4
  br label %for.inc.i586.3

if.then.i581.3:                                   ; preds = %for.inc.i586.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i586.3

for.inc.i586.3:                                   ; preds = %if.then.i581.3, %if.else.i583.3
  %arrayidx.i578.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 12, i32 4
  %693 = ptrtoint ptr %arrayidx.i578.4 to i32
  call void @__asan_load1_noabort(i32 %693)
  %694 = load i8, ptr %arrayidx.i578.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %694)
  %cmp1.i579.4 = icmp eq i8 %694, 127
  br i1 %cmp1.i579.4, label %if.then.i581.4, label %if.else.i583.4

if.else.i583.4:                                   ; preds = %for.inc.i586.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i582.4 = sext i8 %694 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i582.4) #4
  br label %for.inc.i586.4

if.then.i581.4:                                   ; preds = %for.inc.i586.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i586.4

for.inc.i586.4:                                   ; preds = %if.then.i581.4, %if.else.i583.4
  %arrayidx.i578.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 12, i32 5
  %695 = ptrtoint ptr %arrayidx.i578.5 to i32
  call void @__asan_load1_noabort(i32 %695)
  %696 = load i8, ptr %arrayidx.i578.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %696)
  %cmp1.i579.5 = icmp eq i8 %696, 127
  br i1 %cmp1.i579.5, label %if.then.i581.5, label %if.else.i583.5

if.else.i583.5:                                   ; preds = %for.inc.i586.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i582.5 = sext i8 %696 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i582.5) #4
  br label %for.inc.i586.5

if.then.i581.5:                                   ; preds = %for.inc.i586.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i586.5

for.inc.i586.5:                                   ; preds = %if.then.i581.5, %if.else.i583.5
  %arrayidx.i578.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 12, i32 6
  %697 = ptrtoint ptr %arrayidx.i578.6 to i32
  call void @__asan_load1_noabort(i32 %697)
  %698 = load i8, ptr %arrayidx.i578.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %698)
  %cmp1.i579.6 = icmp eq i8 %698, 127
  br i1 %cmp1.i579.6, label %if.then.i581.6, label %if.else.i583.6

if.else.i583.6:                                   ; preds = %for.inc.i586.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i582.6 = sext i8 %698 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i582.6) #4
  br label %for.inc.i586.6

if.then.i581.6:                                   ; preds = %for.inc.i586.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i586.6

for.inc.i586.6:                                   ; preds = %if.then.i581.6, %if.else.i583.6
  %arrayidx.i578.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 12, i32 7
  %699 = ptrtoint ptr %arrayidx.i578.7 to i32
  call void @__asan_load1_noabort(i32 %699)
  %700 = load i8, ptr %arrayidx.i578.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %700)
  %cmp1.i579.7 = icmp eq i8 %700, 127
  br i1 %cmp1.i579.7, label %if.then.i581.7, label %if.else.i583.7

if.else.i583.7:                                   ; preds = %for.inc.i586.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i582.7 = sext i8 %700 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i582.7) #4
  br label %for.inc.i586.7

if.then.i581.7:                                   ; preds = %for.inc.i586.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i586.7

for.inc.i586.7:                                   ; preds = %if.then.i581.7, %if.else.i583.7
  %arrayidx.i578.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 12, i32 8
  %701 = ptrtoint ptr %arrayidx.i578.8 to i32
  call void @__asan_load1_noabort(i32 %701)
  %702 = load i8, ptr %arrayidx.i578.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %702)
  %cmp1.i579.8 = icmp eq i8 %702, 127
  br i1 %cmp1.i579.8, label %if.then.i581.8, label %if.else.i583.8

if.else.i583.8:                                   ; preds = %for.inc.i586.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i582.8 = sext i8 %702 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i582.8) #4
  br label %for.inc.i586.8

if.then.i581.8:                                   ; preds = %for.inc.i586.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i586.8

for.inc.i586.8:                                   ; preds = %if.then.i581.8, %if.else.i583.8
  %arrayidx.i578.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 12, i32 9
  %703 = ptrtoint ptr %arrayidx.i578.9 to i32
  call void @__asan_load1_noabort(i32 %703)
  %704 = load i8, ptr %arrayidx.i578.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %704)
  %cmp1.i579.9 = icmp eq i8 %704, 127
  br i1 %cmp1.i579.9, label %if.then.i581.9, label %if.else.i583.9

if.else.i583.9:                                   ; preds = %for.inc.i586.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i582.9 = sext i8 %704 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i582.9) #4
  br label %for.inc.i586.9

if.then.i581.9:                                   ; preds = %for.inc.i586.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i586.9

for.inc.i586.9:                                   ; preds = %if.then.i581.9, %if.else.i583.9
  %arrayidx.i578.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 12, i32 10
  %705 = ptrtoint ptr %arrayidx.i578.10 to i32
  call void @__asan_load1_noabort(i32 %705)
  %706 = load i8, ptr %arrayidx.i578.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %706)
  %cmp1.i579.10 = icmp eq i8 %706, 127
  br i1 %cmp1.i579.10, label %if.then.i581.10, label %if.else.i583.10

if.else.i583.10:                                  ; preds = %for.inc.i586.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i582.10 = sext i8 %706 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i582.10) #4
  br label %for.inc.i586.10

if.then.i581.10:                                  ; preds = %for.inc.i586.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i586.10

for.inc.i586.10:                                  ; preds = %if.then.i581.10, %if.else.i583.10
  %arrayidx.i578.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 12, i32 11
  %707 = ptrtoint ptr %arrayidx.i578.11 to i32
  call void @__asan_load1_noabort(i32 %707)
  %708 = load i8, ptr %arrayidx.i578.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %708)
  %cmp1.i579.11 = icmp eq i8 %708, 127
  br i1 %cmp1.i579.11, label %if.then.i581.11, label %if.else.i583.11

if.else.i583.11:                                  ; preds = %for.inc.i586.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i582.11 = sext i8 %708 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i582.11) #4
  br label %for.inc.i586.11

if.then.i581.11:                                  ; preds = %for.inc.i586.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i586.11

for.inc.i586.11:                                  ; preds = %if.then.i581.11, %if.else.i583.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %he242127 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 12
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.82) #4
  %709 = ptrtoint ptr %he242127 to i32
  call void @__asan_load1_noabort(i32 %709)
  %710 = load i8, ptr %he242127, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %710)
  %cmp1.i590 = icmp eq i8 %710, 127
  br i1 %cmp1.i590, label %if.then.i592, label %if.else.i594

if.then.i592:                                     ; preds = %for.inc.i586.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i597

if.else.i594:                                     ; preds = %for.inc.i586.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i593 = sext i8 %710 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i593) #4
  br label %for.inc.i597

for.inc.i597:                                     ; preds = %if.else.i594, %if.then.i592
  %arrayidx.i589.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 12, i32 1
  %711 = ptrtoint ptr %arrayidx.i589.1 to i32
  call void @__asan_load1_noabort(i32 %711)
  %712 = load i8, ptr %arrayidx.i589.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %712)
  %cmp1.i590.1 = icmp eq i8 %712, 127
  br i1 %cmp1.i590.1, label %if.then.i592.1, label %if.else.i594.1

if.else.i594.1:                                   ; preds = %for.inc.i597
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i593.1 = sext i8 %712 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i593.1) #4
  br label %for.inc.i597.1

if.then.i592.1:                                   ; preds = %for.inc.i597
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i597.1

for.inc.i597.1:                                   ; preds = %if.then.i592.1, %if.else.i594.1
  %arrayidx.i589.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 12, i32 2
  %713 = ptrtoint ptr %arrayidx.i589.2 to i32
  call void @__asan_load1_noabort(i32 %713)
  %714 = load i8, ptr %arrayidx.i589.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %714)
  %cmp1.i590.2 = icmp eq i8 %714, 127
  br i1 %cmp1.i590.2, label %if.then.i592.2, label %if.else.i594.2

if.else.i594.2:                                   ; preds = %for.inc.i597.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i593.2 = sext i8 %714 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i593.2) #4
  br label %for.inc.i597.2

if.then.i592.2:                                   ; preds = %for.inc.i597.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i597.2

for.inc.i597.2:                                   ; preds = %if.then.i592.2, %if.else.i594.2
  %arrayidx.i589.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 12, i32 3
  %715 = ptrtoint ptr %arrayidx.i589.3 to i32
  call void @__asan_load1_noabort(i32 %715)
  %716 = load i8, ptr %arrayidx.i589.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %716)
  %cmp1.i590.3 = icmp eq i8 %716, 127
  br i1 %cmp1.i590.3, label %if.then.i592.3, label %if.else.i594.3

if.else.i594.3:                                   ; preds = %for.inc.i597.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i593.3 = sext i8 %716 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i593.3) #4
  br label %for.inc.i597.3

if.then.i592.3:                                   ; preds = %for.inc.i597.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i597.3

for.inc.i597.3:                                   ; preds = %if.then.i592.3, %if.else.i594.3
  %arrayidx.i589.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 12, i32 4
  %717 = ptrtoint ptr %arrayidx.i589.4 to i32
  call void @__asan_load1_noabort(i32 %717)
  %718 = load i8, ptr %arrayidx.i589.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %718)
  %cmp1.i590.4 = icmp eq i8 %718, 127
  br i1 %cmp1.i590.4, label %if.then.i592.4, label %if.else.i594.4

if.else.i594.4:                                   ; preds = %for.inc.i597.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i593.4 = sext i8 %718 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i593.4) #4
  br label %for.inc.i597.4

if.then.i592.4:                                   ; preds = %for.inc.i597.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i597.4

for.inc.i597.4:                                   ; preds = %if.then.i592.4, %if.else.i594.4
  %arrayidx.i589.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 12, i32 5
  %719 = ptrtoint ptr %arrayidx.i589.5 to i32
  call void @__asan_load1_noabort(i32 %719)
  %720 = load i8, ptr %arrayidx.i589.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %720)
  %cmp1.i590.5 = icmp eq i8 %720, 127
  br i1 %cmp1.i590.5, label %if.then.i592.5, label %if.else.i594.5

if.else.i594.5:                                   ; preds = %for.inc.i597.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i593.5 = sext i8 %720 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i593.5) #4
  br label %for.inc.i597.5

if.then.i592.5:                                   ; preds = %for.inc.i597.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i597.5

for.inc.i597.5:                                   ; preds = %if.then.i592.5, %if.else.i594.5
  %arrayidx.i589.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 12, i32 6
  %721 = ptrtoint ptr %arrayidx.i589.6 to i32
  call void @__asan_load1_noabort(i32 %721)
  %722 = load i8, ptr %arrayidx.i589.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %722)
  %cmp1.i590.6 = icmp eq i8 %722, 127
  br i1 %cmp1.i590.6, label %if.then.i592.6, label %if.else.i594.6

if.else.i594.6:                                   ; preds = %for.inc.i597.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i593.6 = sext i8 %722 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i593.6) #4
  br label %for.inc.i597.6

if.then.i592.6:                                   ; preds = %for.inc.i597.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i597.6

for.inc.i597.6:                                   ; preds = %if.then.i592.6, %if.else.i594.6
  %arrayidx.i589.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 12, i32 7
  %723 = ptrtoint ptr %arrayidx.i589.7 to i32
  call void @__asan_load1_noabort(i32 %723)
  %724 = load i8, ptr %arrayidx.i589.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %724)
  %cmp1.i590.7 = icmp eq i8 %724, 127
  br i1 %cmp1.i590.7, label %if.then.i592.7, label %if.else.i594.7

if.else.i594.7:                                   ; preds = %for.inc.i597.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i593.7 = sext i8 %724 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i593.7) #4
  br label %for.inc.i597.7

if.then.i592.7:                                   ; preds = %for.inc.i597.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i597.7

for.inc.i597.7:                                   ; preds = %if.then.i592.7, %if.else.i594.7
  %arrayidx.i589.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 12, i32 8
  %725 = ptrtoint ptr %arrayidx.i589.8 to i32
  call void @__asan_load1_noabort(i32 %725)
  %726 = load i8, ptr %arrayidx.i589.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %726)
  %cmp1.i590.8 = icmp eq i8 %726, 127
  br i1 %cmp1.i590.8, label %if.then.i592.8, label %if.else.i594.8

if.else.i594.8:                                   ; preds = %for.inc.i597.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i593.8 = sext i8 %726 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i593.8) #4
  br label %for.inc.i597.8

if.then.i592.8:                                   ; preds = %for.inc.i597.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i597.8

for.inc.i597.8:                                   ; preds = %if.then.i592.8, %if.else.i594.8
  %arrayidx.i589.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 12, i32 9
  %727 = ptrtoint ptr %arrayidx.i589.9 to i32
  call void @__asan_load1_noabort(i32 %727)
  %728 = load i8, ptr %arrayidx.i589.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %728)
  %cmp1.i590.9 = icmp eq i8 %728, 127
  br i1 %cmp1.i590.9, label %if.then.i592.9, label %if.else.i594.9

if.else.i594.9:                                   ; preds = %for.inc.i597.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i593.9 = sext i8 %728 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i593.9) #4
  br label %for.inc.i597.9

if.then.i592.9:                                   ; preds = %for.inc.i597.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i597.9

for.inc.i597.9:                                   ; preds = %if.then.i592.9, %if.else.i594.9
  %arrayidx.i589.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 12, i32 10
  %729 = ptrtoint ptr %arrayidx.i589.10 to i32
  call void @__asan_load1_noabort(i32 %729)
  %730 = load i8, ptr %arrayidx.i589.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %730)
  %cmp1.i590.10 = icmp eq i8 %730, 127
  br i1 %cmp1.i590.10, label %if.then.i592.10, label %if.else.i594.10

if.else.i594.10:                                  ; preds = %for.inc.i597.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i593.10 = sext i8 %730 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i593.10) #4
  br label %for.inc.i597.10

if.then.i592.10:                                  ; preds = %for.inc.i597.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i597.10

for.inc.i597.10:                                  ; preds = %if.then.i592.10, %if.else.i594.10
  %arrayidx.i589.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 12, i32 11
  %731 = ptrtoint ptr %arrayidx.i589.11 to i32
  call void @__asan_load1_noabort(i32 %731)
  %732 = load i8, ptr %arrayidx.i589.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %732)
  %cmp1.i590.11 = icmp eq i8 %732, 127
  br i1 %cmp1.i590.11, label %if.then.i592.11, label %if.else.i594.11

if.else.i594.11:                                  ; preds = %for.inc.i597.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i593.11 = sext i8 %732 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i593.11) #4
  br label %for.inc.i597.11

if.then.i592.11:                                  ; preds = %for.inc.i597.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i597.11

for.inc.i597.11:                                  ; preds = %if.then.i592.11, %if.else.i594.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %he242131 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 12
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.83) #4
  %733 = ptrtoint ptr %he242131 to i32
  call void @__asan_load1_noabort(i32 %733)
  %734 = load i8, ptr %he242131, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %734)
  %cmp1.i601 = icmp eq i8 %734, 127
  br i1 %cmp1.i601, label %if.then.i603, label %if.else.i605

if.then.i603:                                     ; preds = %for.inc.i597.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i608

if.else.i605:                                     ; preds = %for.inc.i597.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i604 = sext i8 %734 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i604) #4
  br label %for.inc.i608

for.inc.i608:                                     ; preds = %if.else.i605, %if.then.i603
  %arrayidx.i600.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 12, i32 1
  %735 = ptrtoint ptr %arrayidx.i600.1 to i32
  call void @__asan_load1_noabort(i32 %735)
  %736 = load i8, ptr %arrayidx.i600.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %736)
  %cmp1.i601.1 = icmp eq i8 %736, 127
  br i1 %cmp1.i601.1, label %if.then.i603.1, label %if.else.i605.1

if.else.i605.1:                                   ; preds = %for.inc.i608
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i604.1 = sext i8 %736 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i604.1) #4
  br label %for.inc.i608.1

if.then.i603.1:                                   ; preds = %for.inc.i608
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i608.1

for.inc.i608.1:                                   ; preds = %if.then.i603.1, %if.else.i605.1
  %arrayidx.i600.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 12, i32 2
  %737 = ptrtoint ptr %arrayidx.i600.2 to i32
  call void @__asan_load1_noabort(i32 %737)
  %738 = load i8, ptr %arrayidx.i600.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %738)
  %cmp1.i601.2 = icmp eq i8 %738, 127
  br i1 %cmp1.i601.2, label %if.then.i603.2, label %if.else.i605.2

if.else.i605.2:                                   ; preds = %for.inc.i608.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i604.2 = sext i8 %738 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i604.2) #4
  br label %for.inc.i608.2

if.then.i603.2:                                   ; preds = %for.inc.i608.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i608.2

for.inc.i608.2:                                   ; preds = %if.then.i603.2, %if.else.i605.2
  %arrayidx.i600.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 12, i32 3
  %739 = ptrtoint ptr %arrayidx.i600.3 to i32
  call void @__asan_load1_noabort(i32 %739)
  %740 = load i8, ptr %arrayidx.i600.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %740)
  %cmp1.i601.3 = icmp eq i8 %740, 127
  br i1 %cmp1.i601.3, label %if.then.i603.3, label %if.else.i605.3

if.else.i605.3:                                   ; preds = %for.inc.i608.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i604.3 = sext i8 %740 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i604.3) #4
  br label %for.inc.i608.3

if.then.i603.3:                                   ; preds = %for.inc.i608.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i608.3

for.inc.i608.3:                                   ; preds = %if.then.i603.3, %if.else.i605.3
  %arrayidx.i600.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 12, i32 4
  %741 = ptrtoint ptr %arrayidx.i600.4 to i32
  call void @__asan_load1_noabort(i32 %741)
  %742 = load i8, ptr %arrayidx.i600.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %742)
  %cmp1.i601.4 = icmp eq i8 %742, 127
  br i1 %cmp1.i601.4, label %if.then.i603.4, label %if.else.i605.4

if.else.i605.4:                                   ; preds = %for.inc.i608.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i604.4 = sext i8 %742 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i604.4) #4
  br label %for.inc.i608.4

if.then.i603.4:                                   ; preds = %for.inc.i608.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i608.4

for.inc.i608.4:                                   ; preds = %if.then.i603.4, %if.else.i605.4
  %arrayidx.i600.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 12, i32 5
  %743 = ptrtoint ptr %arrayidx.i600.5 to i32
  call void @__asan_load1_noabort(i32 %743)
  %744 = load i8, ptr %arrayidx.i600.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %744)
  %cmp1.i601.5 = icmp eq i8 %744, 127
  br i1 %cmp1.i601.5, label %if.then.i603.5, label %if.else.i605.5

if.else.i605.5:                                   ; preds = %for.inc.i608.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i604.5 = sext i8 %744 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i604.5) #4
  br label %for.inc.i608.5

if.then.i603.5:                                   ; preds = %for.inc.i608.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i608.5

for.inc.i608.5:                                   ; preds = %if.then.i603.5, %if.else.i605.5
  %arrayidx.i600.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 12, i32 6
  %745 = ptrtoint ptr %arrayidx.i600.6 to i32
  call void @__asan_load1_noabort(i32 %745)
  %746 = load i8, ptr %arrayidx.i600.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %746)
  %cmp1.i601.6 = icmp eq i8 %746, 127
  br i1 %cmp1.i601.6, label %if.then.i603.6, label %if.else.i605.6

if.else.i605.6:                                   ; preds = %for.inc.i608.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i604.6 = sext i8 %746 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i604.6) #4
  br label %for.inc.i608.6

if.then.i603.6:                                   ; preds = %for.inc.i608.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i608.6

for.inc.i608.6:                                   ; preds = %if.then.i603.6, %if.else.i605.6
  %arrayidx.i600.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 12, i32 7
  %747 = ptrtoint ptr %arrayidx.i600.7 to i32
  call void @__asan_load1_noabort(i32 %747)
  %748 = load i8, ptr %arrayidx.i600.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %748)
  %cmp1.i601.7 = icmp eq i8 %748, 127
  br i1 %cmp1.i601.7, label %if.then.i603.7, label %if.else.i605.7

if.else.i605.7:                                   ; preds = %for.inc.i608.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i604.7 = sext i8 %748 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i604.7) #4
  br label %for.inc.i608.7

if.then.i603.7:                                   ; preds = %for.inc.i608.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i608.7

for.inc.i608.7:                                   ; preds = %if.then.i603.7, %if.else.i605.7
  %arrayidx.i600.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 12, i32 8
  %749 = ptrtoint ptr %arrayidx.i600.8 to i32
  call void @__asan_load1_noabort(i32 %749)
  %750 = load i8, ptr %arrayidx.i600.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %750)
  %cmp1.i601.8 = icmp eq i8 %750, 127
  br i1 %cmp1.i601.8, label %if.then.i603.8, label %if.else.i605.8

if.else.i605.8:                                   ; preds = %for.inc.i608.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i604.8 = sext i8 %750 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i604.8) #4
  br label %for.inc.i608.8

if.then.i603.8:                                   ; preds = %for.inc.i608.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i608.8

for.inc.i608.8:                                   ; preds = %if.then.i603.8, %if.else.i605.8
  %arrayidx.i600.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 12, i32 9
  %751 = ptrtoint ptr %arrayidx.i600.9 to i32
  call void @__asan_load1_noabort(i32 %751)
  %752 = load i8, ptr %arrayidx.i600.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %752)
  %cmp1.i601.9 = icmp eq i8 %752, 127
  br i1 %cmp1.i601.9, label %if.then.i603.9, label %if.else.i605.9

if.else.i605.9:                                   ; preds = %for.inc.i608.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i604.9 = sext i8 %752 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i604.9) #4
  br label %for.inc.i608.9

if.then.i603.9:                                   ; preds = %for.inc.i608.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i608.9

for.inc.i608.9:                                   ; preds = %if.then.i603.9, %if.else.i605.9
  %arrayidx.i600.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 12, i32 10
  %753 = ptrtoint ptr %arrayidx.i600.10 to i32
  call void @__asan_load1_noabort(i32 %753)
  %754 = load i8, ptr %arrayidx.i600.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %754)
  %cmp1.i601.10 = icmp eq i8 %754, 127
  br i1 %cmp1.i601.10, label %if.then.i603.10, label %if.else.i605.10

if.else.i605.10:                                  ; preds = %for.inc.i608.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i604.10 = sext i8 %754 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i604.10) #4
  br label %for.inc.i608.10

if.then.i603.10:                                  ; preds = %for.inc.i608.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i608.10

for.inc.i608.10:                                  ; preds = %if.then.i603.10, %if.else.i605.10
  %arrayidx.i600.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 12, i32 11
  %755 = ptrtoint ptr %arrayidx.i600.11 to i32
  call void @__asan_load1_noabort(i32 %755)
  %756 = load i8, ptr %arrayidx.i600.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %756)
  %cmp1.i601.11 = icmp eq i8 %756, 127
  br i1 %cmp1.i601.11, label %if.then.i603.11, label %if.else.i605.11

if.else.i605.11:                                  ; preds = %for.inc.i608.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i604.11 = sext i8 %756 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i604.11) #4
  br label %for.inc.i608.11

if.then.i603.11:                                  ; preds = %for.inc.i608.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i608.11

for.inc.i608.11:                                  ; preds = %if.then.i603.11, %if.else.i605.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %he484 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.84) #4
  %757 = ptrtoint ptr %he484 to i32
  call void @__asan_load1_noabort(i32 %757)
  %758 = load i8, ptr %he484, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %758)
  %cmp1.i612 = icmp eq i8 %758, 127
  br i1 %cmp1.i612, label %if.then.i614, label %if.else.i616

if.then.i614:                                     ; preds = %for.inc.i608.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i619

if.else.i616:                                     ; preds = %for.inc.i608.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i615 = sext i8 %758 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i615) #4
  br label %for.inc.i619

for.inc.i619:                                     ; preds = %if.else.i616, %if.then.i614
  %arrayidx.i611.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 13, i32 1
  %759 = ptrtoint ptr %arrayidx.i611.1 to i32
  call void @__asan_load1_noabort(i32 %759)
  %760 = load i8, ptr %arrayidx.i611.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %760)
  %cmp1.i612.1 = icmp eq i8 %760, 127
  br i1 %cmp1.i612.1, label %if.then.i614.1, label %if.else.i616.1

if.else.i616.1:                                   ; preds = %for.inc.i619
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i615.1 = sext i8 %760 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i615.1) #4
  br label %for.inc.i619.1

if.then.i614.1:                                   ; preds = %for.inc.i619
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i619.1

for.inc.i619.1:                                   ; preds = %if.then.i614.1, %if.else.i616.1
  %arrayidx.i611.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 13, i32 2
  %761 = ptrtoint ptr %arrayidx.i611.2 to i32
  call void @__asan_load1_noabort(i32 %761)
  %762 = load i8, ptr %arrayidx.i611.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %762)
  %cmp1.i612.2 = icmp eq i8 %762, 127
  br i1 %cmp1.i612.2, label %if.then.i614.2, label %if.else.i616.2

if.else.i616.2:                                   ; preds = %for.inc.i619.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i615.2 = sext i8 %762 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i615.2) #4
  br label %for.inc.i619.2

if.then.i614.2:                                   ; preds = %for.inc.i619.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i619.2

for.inc.i619.2:                                   ; preds = %if.then.i614.2, %if.else.i616.2
  %arrayidx.i611.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 13, i32 3
  %763 = ptrtoint ptr %arrayidx.i611.3 to i32
  call void @__asan_load1_noabort(i32 %763)
  %764 = load i8, ptr %arrayidx.i611.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %764)
  %cmp1.i612.3 = icmp eq i8 %764, 127
  br i1 %cmp1.i612.3, label %if.then.i614.3, label %if.else.i616.3

if.else.i616.3:                                   ; preds = %for.inc.i619.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i615.3 = sext i8 %764 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i615.3) #4
  br label %for.inc.i619.3

if.then.i614.3:                                   ; preds = %for.inc.i619.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i619.3

for.inc.i619.3:                                   ; preds = %if.then.i614.3, %if.else.i616.3
  %arrayidx.i611.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 13, i32 4
  %765 = ptrtoint ptr %arrayidx.i611.4 to i32
  call void @__asan_load1_noabort(i32 %765)
  %766 = load i8, ptr %arrayidx.i611.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %766)
  %cmp1.i612.4 = icmp eq i8 %766, 127
  br i1 %cmp1.i612.4, label %if.then.i614.4, label %if.else.i616.4

if.else.i616.4:                                   ; preds = %for.inc.i619.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i615.4 = sext i8 %766 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i615.4) #4
  br label %for.inc.i619.4

if.then.i614.4:                                   ; preds = %for.inc.i619.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i619.4

for.inc.i619.4:                                   ; preds = %if.then.i614.4, %if.else.i616.4
  %arrayidx.i611.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 13, i32 5
  %767 = ptrtoint ptr %arrayidx.i611.5 to i32
  call void @__asan_load1_noabort(i32 %767)
  %768 = load i8, ptr %arrayidx.i611.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %768)
  %cmp1.i612.5 = icmp eq i8 %768, 127
  br i1 %cmp1.i612.5, label %if.then.i614.5, label %if.else.i616.5

if.else.i616.5:                                   ; preds = %for.inc.i619.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i615.5 = sext i8 %768 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i615.5) #4
  br label %for.inc.i619.5

if.then.i614.5:                                   ; preds = %for.inc.i619.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i619.5

for.inc.i619.5:                                   ; preds = %if.then.i614.5, %if.else.i616.5
  %arrayidx.i611.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 13, i32 6
  %769 = ptrtoint ptr %arrayidx.i611.6 to i32
  call void @__asan_load1_noabort(i32 %769)
  %770 = load i8, ptr %arrayidx.i611.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %770)
  %cmp1.i612.6 = icmp eq i8 %770, 127
  br i1 %cmp1.i612.6, label %if.then.i614.6, label %if.else.i616.6

if.else.i616.6:                                   ; preds = %for.inc.i619.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i615.6 = sext i8 %770 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i615.6) #4
  br label %for.inc.i619.6

if.then.i614.6:                                   ; preds = %for.inc.i619.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i619.6

for.inc.i619.6:                                   ; preds = %if.then.i614.6, %if.else.i616.6
  %arrayidx.i611.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 13, i32 7
  %771 = ptrtoint ptr %arrayidx.i611.7 to i32
  call void @__asan_load1_noabort(i32 %771)
  %772 = load i8, ptr %arrayidx.i611.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %772)
  %cmp1.i612.7 = icmp eq i8 %772, 127
  br i1 %cmp1.i612.7, label %if.then.i614.7, label %if.else.i616.7

if.else.i616.7:                                   ; preds = %for.inc.i619.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i615.7 = sext i8 %772 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i615.7) #4
  br label %for.inc.i619.7

if.then.i614.7:                                   ; preds = %for.inc.i619.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i619.7

for.inc.i619.7:                                   ; preds = %if.then.i614.7, %if.else.i616.7
  %arrayidx.i611.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 13, i32 8
  %773 = ptrtoint ptr %arrayidx.i611.8 to i32
  call void @__asan_load1_noabort(i32 %773)
  %774 = load i8, ptr %arrayidx.i611.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %774)
  %cmp1.i612.8 = icmp eq i8 %774, 127
  br i1 %cmp1.i612.8, label %if.then.i614.8, label %if.else.i616.8

if.else.i616.8:                                   ; preds = %for.inc.i619.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i615.8 = sext i8 %774 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i615.8) #4
  br label %for.inc.i619.8

if.then.i614.8:                                   ; preds = %for.inc.i619.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i619.8

for.inc.i619.8:                                   ; preds = %if.then.i614.8, %if.else.i616.8
  %arrayidx.i611.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 13, i32 9
  %775 = ptrtoint ptr %arrayidx.i611.9 to i32
  call void @__asan_load1_noabort(i32 %775)
  %776 = load i8, ptr %arrayidx.i611.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %776)
  %cmp1.i612.9 = icmp eq i8 %776, 127
  br i1 %cmp1.i612.9, label %if.then.i614.9, label %if.else.i616.9

if.else.i616.9:                                   ; preds = %for.inc.i619.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i615.9 = sext i8 %776 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i615.9) #4
  br label %for.inc.i619.9

if.then.i614.9:                                   ; preds = %for.inc.i619.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i619.9

for.inc.i619.9:                                   ; preds = %if.then.i614.9, %if.else.i616.9
  %arrayidx.i611.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 13, i32 10
  %777 = ptrtoint ptr %arrayidx.i611.10 to i32
  call void @__asan_load1_noabort(i32 %777)
  %778 = load i8, ptr %arrayidx.i611.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %778)
  %cmp1.i612.10 = icmp eq i8 %778, 127
  br i1 %cmp1.i612.10, label %if.then.i614.10, label %if.else.i616.10

if.else.i616.10:                                  ; preds = %for.inc.i619.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i615.10 = sext i8 %778 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i615.10) #4
  br label %for.inc.i619.10

if.then.i614.10:                                  ; preds = %for.inc.i619.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i619.10

for.inc.i619.10:                                  ; preds = %if.then.i614.10, %if.else.i616.10
  %arrayidx.i611.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 13, i32 11
  %779 = ptrtoint ptr %arrayidx.i611.11 to i32
  call void @__asan_load1_noabort(i32 %779)
  %780 = load i8, ptr %arrayidx.i611.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %780)
  %cmp1.i612.11 = icmp eq i8 %780, 127
  br i1 %cmp1.i612.11, label %if.then.i614.11, label %if.else.i616.11

if.else.i616.11:                                  ; preds = %for.inc.i619.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i615.11 = sext i8 %780 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i615.11) #4
  br label %for.inc.i619.11

if.then.i614.11:                                  ; preds = %for.inc.i619.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i619.11

for.inc.i619.11:                                  ; preds = %if.then.i614.11, %if.else.i616.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %he484138 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.85) #4
  %781 = ptrtoint ptr %he484138 to i32
  call void @__asan_load1_noabort(i32 %781)
  %782 = load i8, ptr %he484138, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %782)
  %cmp1.i623 = icmp eq i8 %782, 127
  br i1 %cmp1.i623, label %if.then.i625, label %if.else.i627

if.then.i625:                                     ; preds = %for.inc.i619.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i630

if.else.i627:                                     ; preds = %for.inc.i619.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i626 = sext i8 %782 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i626) #4
  br label %for.inc.i630

for.inc.i630:                                     ; preds = %if.else.i627, %if.then.i625
  %arrayidx.i622.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 13, i32 1
  %783 = ptrtoint ptr %arrayidx.i622.1 to i32
  call void @__asan_load1_noabort(i32 %783)
  %784 = load i8, ptr %arrayidx.i622.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %784)
  %cmp1.i623.1 = icmp eq i8 %784, 127
  br i1 %cmp1.i623.1, label %if.then.i625.1, label %if.else.i627.1

if.else.i627.1:                                   ; preds = %for.inc.i630
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i626.1 = sext i8 %784 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i626.1) #4
  br label %for.inc.i630.1

if.then.i625.1:                                   ; preds = %for.inc.i630
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i630.1

for.inc.i630.1:                                   ; preds = %if.then.i625.1, %if.else.i627.1
  %arrayidx.i622.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 13, i32 2
  %785 = ptrtoint ptr %arrayidx.i622.2 to i32
  call void @__asan_load1_noabort(i32 %785)
  %786 = load i8, ptr %arrayidx.i622.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %786)
  %cmp1.i623.2 = icmp eq i8 %786, 127
  br i1 %cmp1.i623.2, label %if.then.i625.2, label %if.else.i627.2

if.else.i627.2:                                   ; preds = %for.inc.i630.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i626.2 = sext i8 %786 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i626.2) #4
  br label %for.inc.i630.2

if.then.i625.2:                                   ; preds = %for.inc.i630.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i630.2

for.inc.i630.2:                                   ; preds = %if.then.i625.2, %if.else.i627.2
  %arrayidx.i622.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 13, i32 3
  %787 = ptrtoint ptr %arrayidx.i622.3 to i32
  call void @__asan_load1_noabort(i32 %787)
  %788 = load i8, ptr %arrayidx.i622.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %788)
  %cmp1.i623.3 = icmp eq i8 %788, 127
  br i1 %cmp1.i623.3, label %if.then.i625.3, label %if.else.i627.3

if.else.i627.3:                                   ; preds = %for.inc.i630.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i626.3 = sext i8 %788 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i626.3) #4
  br label %for.inc.i630.3

if.then.i625.3:                                   ; preds = %for.inc.i630.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i630.3

for.inc.i630.3:                                   ; preds = %if.then.i625.3, %if.else.i627.3
  %arrayidx.i622.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 13, i32 4
  %789 = ptrtoint ptr %arrayidx.i622.4 to i32
  call void @__asan_load1_noabort(i32 %789)
  %790 = load i8, ptr %arrayidx.i622.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %790)
  %cmp1.i623.4 = icmp eq i8 %790, 127
  br i1 %cmp1.i623.4, label %if.then.i625.4, label %if.else.i627.4

if.else.i627.4:                                   ; preds = %for.inc.i630.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i626.4 = sext i8 %790 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i626.4) #4
  br label %for.inc.i630.4

if.then.i625.4:                                   ; preds = %for.inc.i630.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i630.4

for.inc.i630.4:                                   ; preds = %if.then.i625.4, %if.else.i627.4
  %arrayidx.i622.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 13, i32 5
  %791 = ptrtoint ptr %arrayidx.i622.5 to i32
  call void @__asan_load1_noabort(i32 %791)
  %792 = load i8, ptr %arrayidx.i622.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %792)
  %cmp1.i623.5 = icmp eq i8 %792, 127
  br i1 %cmp1.i623.5, label %if.then.i625.5, label %if.else.i627.5

if.else.i627.5:                                   ; preds = %for.inc.i630.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i626.5 = sext i8 %792 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i626.5) #4
  br label %for.inc.i630.5

if.then.i625.5:                                   ; preds = %for.inc.i630.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i630.5

for.inc.i630.5:                                   ; preds = %if.then.i625.5, %if.else.i627.5
  %arrayidx.i622.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 13, i32 6
  %793 = ptrtoint ptr %arrayidx.i622.6 to i32
  call void @__asan_load1_noabort(i32 %793)
  %794 = load i8, ptr %arrayidx.i622.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %794)
  %cmp1.i623.6 = icmp eq i8 %794, 127
  br i1 %cmp1.i623.6, label %if.then.i625.6, label %if.else.i627.6

if.else.i627.6:                                   ; preds = %for.inc.i630.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i626.6 = sext i8 %794 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i626.6) #4
  br label %for.inc.i630.6

if.then.i625.6:                                   ; preds = %for.inc.i630.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i630.6

for.inc.i630.6:                                   ; preds = %if.then.i625.6, %if.else.i627.6
  %arrayidx.i622.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 13, i32 7
  %795 = ptrtoint ptr %arrayidx.i622.7 to i32
  call void @__asan_load1_noabort(i32 %795)
  %796 = load i8, ptr %arrayidx.i622.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %796)
  %cmp1.i623.7 = icmp eq i8 %796, 127
  br i1 %cmp1.i623.7, label %if.then.i625.7, label %if.else.i627.7

if.else.i627.7:                                   ; preds = %for.inc.i630.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i626.7 = sext i8 %796 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i626.7) #4
  br label %for.inc.i630.7

if.then.i625.7:                                   ; preds = %for.inc.i630.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i630.7

for.inc.i630.7:                                   ; preds = %if.then.i625.7, %if.else.i627.7
  %arrayidx.i622.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 13, i32 8
  %797 = ptrtoint ptr %arrayidx.i622.8 to i32
  call void @__asan_load1_noabort(i32 %797)
  %798 = load i8, ptr %arrayidx.i622.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %798)
  %cmp1.i623.8 = icmp eq i8 %798, 127
  br i1 %cmp1.i623.8, label %if.then.i625.8, label %if.else.i627.8

if.else.i627.8:                                   ; preds = %for.inc.i630.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i626.8 = sext i8 %798 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i626.8) #4
  br label %for.inc.i630.8

if.then.i625.8:                                   ; preds = %for.inc.i630.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i630.8

for.inc.i630.8:                                   ; preds = %if.then.i625.8, %if.else.i627.8
  %arrayidx.i622.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 13, i32 9
  %799 = ptrtoint ptr %arrayidx.i622.9 to i32
  call void @__asan_load1_noabort(i32 %799)
  %800 = load i8, ptr %arrayidx.i622.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %800)
  %cmp1.i623.9 = icmp eq i8 %800, 127
  br i1 %cmp1.i623.9, label %if.then.i625.9, label %if.else.i627.9

if.else.i627.9:                                   ; preds = %for.inc.i630.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i626.9 = sext i8 %800 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i626.9) #4
  br label %for.inc.i630.9

if.then.i625.9:                                   ; preds = %for.inc.i630.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i630.9

for.inc.i630.9:                                   ; preds = %if.then.i625.9, %if.else.i627.9
  %arrayidx.i622.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 13, i32 10
  %801 = ptrtoint ptr %arrayidx.i622.10 to i32
  call void @__asan_load1_noabort(i32 %801)
  %802 = load i8, ptr %arrayidx.i622.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %802)
  %cmp1.i623.10 = icmp eq i8 %802, 127
  br i1 %cmp1.i623.10, label %if.then.i625.10, label %if.else.i627.10

if.else.i627.10:                                  ; preds = %for.inc.i630.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i626.10 = sext i8 %802 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i626.10) #4
  br label %for.inc.i630.10

if.then.i625.10:                                  ; preds = %for.inc.i630.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i630.10

for.inc.i630.10:                                  ; preds = %if.then.i625.10, %if.else.i627.10
  %arrayidx.i622.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 13, i32 11
  %803 = ptrtoint ptr %arrayidx.i622.11 to i32
  call void @__asan_load1_noabort(i32 %803)
  %804 = load i8, ptr %arrayidx.i622.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %804)
  %cmp1.i623.11 = icmp eq i8 %804, 127
  br i1 %cmp1.i623.11, label %if.then.i625.11, label %if.else.i627.11

if.else.i627.11:                                  ; preds = %for.inc.i630.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i626.11 = sext i8 %804 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i626.11) #4
  br label %for.inc.i630.11

if.then.i625.11:                                  ; preds = %for.inc.i630.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i630.11

for.inc.i630.11:                                  ; preds = %if.then.i625.11, %if.else.i627.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %he484142 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.86) #4
  %805 = ptrtoint ptr %he484142 to i32
  call void @__asan_load1_noabort(i32 %805)
  %806 = load i8, ptr %he484142, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %806)
  %cmp1.i634 = icmp eq i8 %806, 127
  br i1 %cmp1.i634, label %if.then.i636, label %if.else.i638

if.then.i636:                                     ; preds = %for.inc.i630.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i641

if.else.i638:                                     ; preds = %for.inc.i630.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i637 = sext i8 %806 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i637) #4
  br label %for.inc.i641

for.inc.i641:                                     ; preds = %if.else.i638, %if.then.i636
  %arrayidx.i633.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 13, i32 1
  %807 = ptrtoint ptr %arrayidx.i633.1 to i32
  call void @__asan_load1_noabort(i32 %807)
  %808 = load i8, ptr %arrayidx.i633.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %808)
  %cmp1.i634.1 = icmp eq i8 %808, 127
  br i1 %cmp1.i634.1, label %if.then.i636.1, label %if.else.i638.1

if.else.i638.1:                                   ; preds = %for.inc.i641
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i637.1 = sext i8 %808 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i637.1) #4
  br label %for.inc.i641.1

if.then.i636.1:                                   ; preds = %for.inc.i641
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i641.1

for.inc.i641.1:                                   ; preds = %if.then.i636.1, %if.else.i638.1
  %arrayidx.i633.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 13, i32 2
  %809 = ptrtoint ptr %arrayidx.i633.2 to i32
  call void @__asan_load1_noabort(i32 %809)
  %810 = load i8, ptr %arrayidx.i633.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %810)
  %cmp1.i634.2 = icmp eq i8 %810, 127
  br i1 %cmp1.i634.2, label %if.then.i636.2, label %if.else.i638.2

if.else.i638.2:                                   ; preds = %for.inc.i641.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i637.2 = sext i8 %810 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i637.2) #4
  br label %for.inc.i641.2

if.then.i636.2:                                   ; preds = %for.inc.i641.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i641.2

for.inc.i641.2:                                   ; preds = %if.then.i636.2, %if.else.i638.2
  %arrayidx.i633.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 13, i32 3
  %811 = ptrtoint ptr %arrayidx.i633.3 to i32
  call void @__asan_load1_noabort(i32 %811)
  %812 = load i8, ptr %arrayidx.i633.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %812)
  %cmp1.i634.3 = icmp eq i8 %812, 127
  br i1 %cmp1.i634.3, label %if.then.i636.3, label %if.else.i638.3

if.else.i638.3:                                   ; preds = %for.inc.i641.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i637.3 = sext i8 %812 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i637.3) #4
  br label %for.inc.i641.3

if.then.i636.3:                                   ; preds = %for.inc.i641.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i641.3

for.inc.i641.3:                                   ; preds = %if.then.i636.3, %if.else.i638.3
  %arrayidx.i633.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 13, i32 4
  %813 = ptrtoint ptr %arrayidx.i633.4 to i32
  call void @__asan_load1_noabort(i32 %813)
  %814 = load i8, ptr %arrayidx.i633.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %814)
  %cmp1.i634.4 = icmp eq i8 %814, 127
  br i1 %cmp1.i634.4, label %if.then.i636.4, label %if.else.i638.4

if.else.i638.4:                                   ; preds = %for.inc.i641.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i637.4 = sext i8 %814 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i637.4) #4
  br label %for.inc.i641.4

if.then.i636.4:                                   ; preds = %for.inc.i641.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i641.4

for.inc.i641.4:                                   ; preds = %if.then.i636.4, %if.else.i638.4
  %arrayidx.i633.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 13, i32 5
  %815 = ptrtoint ptr %arrayidx.i633.5 to i32
  call void @__asan_load1_noabort(i32 %815)
  %816 = load i8, ptr %arrayidx.i633.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %816)
  %cmp1.i634.5 = icmp eq i8 %816, 127
  br i1 %cmp1.i634.5, label %if.then.i636.5, label %if.else.i638.5

if.else.i638.5:                                   ; preds = %for.inc.i641.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i637.5 = sext i8 %816 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i637.5) #4
  br label %for.inc.i641.5

if.then.i636.5:                                   ; preds = %for.inc.i641.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i641.5

for.inc.i641.5:                                   ; preds = %if.then.i636.5, %if.else.i638.5
  %arrayidx.i633.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 13, i32 6
  %817 = ptrtoint ptr %arrayidx.i633.6 to i32
  call void @__asan_load1_noabort(i32 %817)
  %818 = load i8, ptr %arrayidx.i633.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %818)
  %cmp1.i634.6 = icmp eq i8 %818, 127
  br i1 %cmp1.i634.6, label %if.then.i636.6, label %if.else.i638.6

if.else.i638.6:                                   ; preds = %for.inc.i641.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i637.6 = sext i8 %818 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i637.6) #4
  br label %for.inc.i641.6

if.then.i636.6:                                   ; preds = %for.inc.i641.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i641.6

for.inc.i641.6:                                   ; preds = %if.then.i636.6, %if.else.i638.6
  %arrayidx.i633.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 13, i32 7
  %819 = ptrtoint ptr %arrayidx.i633.7 to i32
  call void @__asan_load1_noabort(i32 %819)
  %820 = load i8, ptr %arrayidx.i633.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %820)
  %cmp1.i634.7 = icmp eq i8 %820, 127
  br i1 %cmp1.i634.7, label %if.then.i636.7, label %if.else.i638.7

if.else.i638.7:                                   ; preds = %for.inc.i641.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i637.7 = sext i8 %820 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i637.7) #4
  br label %for.inc.i641.7

if.then.i636.7:                                   ; preds = %for.inc.i641.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i641.7

for.inc.i641.7:                                   ; preds = %if.then.i636.7, %if.else.i638.7
  %arrayidx.i633.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 13, i32 8
  %821 = ptrtoint ptr %arrayidx.i633.8 to i32
  call void @__asan_load1_noabort(i32 %821)
  %822 = load i8, ptr %arrayidx.i633.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %822)
  %cmp1.i634.8 = icmp eq i8 %822, 127
  br i1 %cmp1.i634.8, label %if.then.i636.8, label %if.else.i638.8

if.else.i638.8:                                   ; preds = %for.inc.i641.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i637.8 = sext i8 %822 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i637.8) #4
  br label %for.inc.i641.8

if.then.i636.8:                                   ; preds = %for.inc.i641.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i641.8

for.inc.i641.8:                                   ; preds = %if.then.i636.8, %if.else.i638.8
  %arrayidx.i633.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 13, i32 9
  %823 = ptrtoint ptr %arrayidx.i633.9 to i32
  call void @__asan_load1_noabort(i32 %823)
  %824 = load i8, ptr %arrayidx.i633.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %824)
  %cmp1.i634.9 = icmp eq i8 %824, 127
  br i1 %cmp1.i634.9, label %if.then.i636.9, label %if.else.i638.9

if.else.i638.9:                                   ; preds = %for.inc.i641.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i637.9 = sext i8 %824 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i637.9) #4
  br label %for.inc.i641.9

if.then.i636.9:                                   ; preds = %for.inc.i641.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i641.9

for.inc.i641.9:                                   ; preds = %if.then.i636.9, %if.else.i638.9
  %arrayidx.i633.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 13, i32 10
  %825 = ptrtoint ptr %arrayidx.i633.10 to i32
  call void @__asan_load1_noabort(i32 %825)
  %826 = load i8, ptr %arrayidx.i633.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %826)
  %cmp1.i634.10 = icmp eq i8 %826, 127
  br i1 %cmp1.i634.10, label %if.then.i636.10, label %if.else.i638.10

if.else.i638.10:                                  ; preds = %for.inc.i641.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i637.10 = sext i8 %826 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i637.10) #4
  br label %for.inc.i641.10

if.then.i636.10:                                  ; preds = %for.inc.i641.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i641.10

for.inc.i641.10:                                  ; preds = %if.then.i636.10, %if.else.i638.10
  %arrayidx.i633.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 13, i32 11
  %827 = ptrtoint ptr %arrayidx.i633.11 to i32
  call void @__asan_load1_noabort(i32 %827)
  %828 = load i8, ptr %arrayidx.i633.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %828)
  %cmp1.i634.11 = icmp eq i8 %828, 127
  br i1 %cmp1.i634.11, label %if.then.i636.11, label %if.else.i638.11

if.else.i638.11:                                  ; preds = %for.inc.i641.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i637.11 = sext i8 %828 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i637.11) #4
  br label %for.inc.i641.11

if.then.i636.11:                                  ; preds = %for.inc.i641.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i641.11

for.inc.i641.11:                                  ; preds = %if.then.i636.11, %if.else.i638.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %he996 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.87) #4
  %829 = ptrtoint ptr %he996 to i32
  call void @__asan_load1_noabort(i32 %829)
  %830 = load i8, ptr %he996, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %830)
  %cmp1.i645 = icmp eq i8 %830, 127
  br i1 %cmp1.i645, label %if.then.i647, label %if.else.i649

if.then.i647:                                     ; preds = %for.inc.i641.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i652

if.else.i649:                                     ; preds = %for.inc.i641.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i648 = sext i8 %830 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i648) #4
  br label %for.inc.i652

for.inc.i652:                                     ; preds = %if.else.i649, %if.then.i647
  %arrayidx.i644.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 14, i32 1
  %831 = ptrtoint ptr %arrayidx.i644.1 to i32
  call void @__asan_load1_noabort(i32 %831)
  %832 = load i8, ptr %arrayidx.i644.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %832)
  %cmp1.i645.1 = icmp eq i8 %832, 127
  br i1 %cmp1.i645.1, label %if.then.i647.1, label %if.else.i649.1

if.else.i649.1:                                   ; preds = %for.inc.i652
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i648.1 = sext i8 %832 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i648.1) #4
  br label %for.inc.i652.1

if.then.i647.1:                                   ; preds = %for.inc.i652
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i652.1

for.inc.i652.1:                                   ; preds = %if.then.i647.1, %if.else.i649.1
  %arrayidx.i644.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 14, i32 2
  %833 = ptrtoint ptr %arrayidx.i644.2 to i32
  call void @__asan_load1_noabort(i32 %833)
  %834 = load i8, ptr %arrayidx.i644.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %834)
  %cmp1.i645.2 = icmp eq i8 %834, 127
  br i1 %cmp1.i645.2, label %if.then.i647.2, label %if.else.i649.2

if.else.i649.2:                                   ; preds = %for.inc.i652.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i648.2 = sext i8 %834 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i648.2) #4
  br label %for.inc.i652.2

if.then.i647.2:                                   ; preds = %for.inc.i652.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i652.2

for.inc.i652.2:                                   ; preds = %if.then.i647.2, %if.else.i649.2
  %arrayidx.i644.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 14, i32 3
  %835 = ptrtoint ptr %arrayidx.i644.3 to i32
  call void @__asan_load1_noabort(i32 %835)
  %836 = load i8, ptr %arrayidx.i644.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %836)
  %cmp1.i645.3 = icmp eq i8 %836, 127
  br i1 %cmp1.i645.3, label %if.then.i647.3, label %if.else.i649.3

if.else.i649.3:                                   ; preds = %for.inc.i652.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i648.3 = sext i8 %836 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i648.3) #4
  br label %for.inc.i652.3

if.then.i647.3:                                   ; preds = %for.inc.i652.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i652.3

for.inc.i652.3:                                   ; preds = %if.then.i647.3, %if.else.i649.3
  %arrayidx.i644.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 14, i32 4
  %837 = ptrtoint ptr %arrayidx.i644.4 to i32
  call void @__asan_load1_noabort(i32 %837)
  %838 = load i8, ptr %arrayidx.i644.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %838)
  %cmp1.i645.4 = icmp eq i8 %838, 127
  br i1 %cmp1.i645.4, label %if.then.i647.4, label %if.else.i649.4

if.else.i649.4:                                   ; preds = %for.inc.i652.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i648.4 = sext i8 %838 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i648.4) #4
  br label %for.inc.i652.4

if.then.i647.4:                                   ; preds = %for.inc.i652.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i652.4

for.inc.i652.4:                                   ; preds = %if.then.i647.4, %if.else.i649.4
  %arrayidx.i644.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 14, i32 5
  %839 = ptrtoint ptr %arrayidx.i644.5 to i32
  call void @__asan_load1_noabort(i32 %839)
  %840 = load i8, ptr %arrayidx.i644.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %840)
  %cmp1.i645.5 = icmp eq i8 %840, 127
  br i1 %cmp1.i645.5, label %if.then.i647.5, label %if.else.i649.5

if.else.i649.5:                                   ; preds = %for.inc.i652.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i648.5 = sext i8 %840 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i648.5) #4
  br label %for.inc.i652.5

if.then.i647.5:                                   ; preds = %for.inc.i652.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i652.5

for.inc.i652.5:                                   ; preds = %if.then.i647.5, %if.else.i649.5
  %arrayidx.i644.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 14, i32 6
  %841 = ptrtoint ptr %arrayidx.i644.6 to i32
  call void @__asan_load1_noabort(i32 %841)
  %842 = load i8, ptr %arrayidx.i644.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %842)
  %cmp1.i645.6 = icmp eq i8 %842, 127
  br i1 %cmp1.i645.6, label %if.then.i647.6, label %if.else.i649.6

if.else.i649.6:                                   ; preds = %for.inc.i652.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i648.6 = sext i8 %842 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i648.6) #4
  br label %for.inc.i652.6

if.then.i647.6:                                   ; preds = %for.inc.i652.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i652.6

for.inc.i652.6:                                   ; preds = %if.then.i647.6, %if.else.i649.6
  %arrayidx.i644.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 14, i32 7
  %843 = ptrtoint ptr %arrayidx.i644.7 to i32
  call void @__asan_load1_noabort(i32 %843)
  %844 = load i8, ptr %arrayidx.i644.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %844)
  %cmp1.i645.7 = icmp eq i8 %844, 127
  br i1 %cmp1.i645.7, label %if.then.i647.7, label %if.else.i649.7

if.else.i649.7:                                   ; preds = %for.inc.i652.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i648.7 = sext i8 %844 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i648.7) #4
  br label %for.inc.i652.7

if.then.i647.7:                                   ; preds = %for.inc.i652.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i652.7

for.inc.i652.7:                                   ; preds = %if.then.i647.7, %if.else.i649.7
  %arrayidx.i644.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 14, i32 8
  %845 = ptrtoint ptr %arrayidx.i644.8 to i32
  call void @__asan_load1_noabort(i32 %845)
  %846 = load i8, ptr %arrayidx.i644.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %846)
  %cmp1.i645.8 = icmp eq i8 %846, 127
  br i1 %cmp1.i645.8, label %if.then.i647.8, label %if.else.i649.8

if.else.i649.8:                                   ; preds = %for.inc.i652.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i648.8 = sext i8 %846 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i648.8) #4
  br label %for.inc.i652.8

if.then.i647.8:                                   ; preds = %for.inc.i652.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i652.8

for.inc.i652.8:                                   ; preds = %if.then.i647.8, %if.else.i649.8
  %arrayidx.i644.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 14, i32 9
  %847 = ptrtoint ptr %arrayidx.i644.9 to i32
  call void @__asan_load1_noabort(i32 %847)
  %848 = load i8, ptr %arrayidx.i644.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %848)
  %cmp1.i645.9 = icmp eq i8 %848, 127
  br i1 %cmp1.i645.9, label %if.then.i647.9, label %if.else.i649.9

if.else.i649.9:                                   ; preds = %for.inc.i652.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i648.9 = sext i8 %848 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i648.9) #4
  br label %for.inc.i652.9

if.then.i647.9:                                   ; preds = %for.inc.i652.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i652.9

for.inc.i652.9:                                   ; preds = %if.then.i647.9, %if.else.i649.9
  %arrayidx.i644.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 14, i32 10
  %849 = ptrtoint ptr %arrayidx.i644.10 to i32
  call void @__asan_load1_noabort(i32 %849)
  %850 = load i8, ptr %arrayidx.i644.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %850)
  %cmp1.i645.10 = icmp eq i8 %850, 127
  br i1 %cmp1.i645.10, label %if.then.i647.10, label %if.else.i649.10

if.else.i649.10:                                  ; preds = %for.inc.i652.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i648.10 = sext i8 %850 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i648.10) #4
  br label %for.inc.i652.10

if.then.i647.10:                                  ; preds = %for.inc.i652.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i652.10

for.inc.i652.10:                                  ; preds = %if.then.i647.10, %if.else.i649.10
  %arrayidx.i644.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 14, i32 11
  %851 = ptrtoint ptr %arrayidx.i644.11 to i32
  call void @__asan_load1_noabort(i32 %851)
  %852 = load i8, ptr %arrayidx.i644.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %852)
  %cmp1.i645.11 = icmp eq i8 %852, 127
  br i1 %cmp1.i645.11, label %if.then.i647.11, label %if.else.i649.11

if.else.i649.11:                                  ; preds = %for.inc.i652.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i648.11 = sext i8 %852 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i648.11) #4
  br label %for.inc.i652.11

if.then.i647.11:                                  ; preds = %for.inc.i652.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i652.11

for.inc.i652.11:                                  ; preds = %if.then.i647.11, %if.else.i649.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %he996149 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.88) #4
  %853 = ptrtoint ptr %he996149 to i32
  call void @__asan_load1_noabort(i32 %853)
  %854 = load i8, ptr %he996149, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %854)
  %cmp1.i656 = icmp eq i8 %854, 127
  br i1 %cmp1.i656, label %if.then.i658, label %if.else.i660

if.then.i658:                                     ; preds = %for.inc.i652.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i663

if.else.i660:                                     ; preds = %for.inc.i652.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i659 = sext i8 %854 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i659) #4
  br label %for.inc.i663

for.inc.i663:                                     ; preds = %if.else.i660, %if.then.i658
  %arrayidx.i655.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 14, i32 1
  %855 = ptrtoint ptr %arrayidx.i655.1 to i32
  call void @__asan_load1_noabort(i32 %855)
  %856 = load i8, ptr %arrayidx.i655.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %856)
  %cmp1.i656.1 = icmp eq i8 %856, 127
  br i1 %cmp1.i656.1, label %if.then.i658.1, label %if.else.i660.1

if.else.i660.1:                                   ; preds = %for.inc.i663
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i659.1 = sext i8 %856 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i659.1) #4
  br label %for.inc.i663.1

if.then.i658.1:                                   ; preds = %for.inc.i663
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i663.1

for.inc.i663.1:                                   ; preds = %if.then.i658.1, %if.else.i660.1
  %arrayidx.i655.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 14, i32 2
  %857 = ptrtoint ptr %arrayidx.i655.2 to i32
  call void @__asan_load1_noabort(i32 %857)
  %858 = load i8, ptr %arrayidx.i655.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %858)
  %cmp1.i656.2 = icmp eq i8 %858, 127
  br i1 %cmp1.i656.2, label %if.then.i658.2, label %if.else.i660.2

if.else.i660.2:                                   ; preds = %for.inc.i663.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i659.2 = sext i8 %858 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i659.2) #4
  br label %for.inc.i663.2

if.then.i658.2:                                   ; preds = %for.inc.i663.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i663.2

for.inc.i663.2:                                   ; preds = %if.then.i658.2, %if.else.i660.2
  %arrayidx.i655.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 14, i32 3
  %859 = ptrtoint ptr %arrayidx.i655.3 to i32
  call void @__asan_load1_noabort(i32 %859)
  %860 = load i8, ptr %arrayidx.i655.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %860)
  %cmp1.i656.3 = icmp eq i8 %860, 127
  br i1 %cmp1.i656.3, label %if.then.i658.3, label %if.else.i660.3

if.else.i660.3:                                   ; preds = %for.inc.i663.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i659.3 = sext i8 %860 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i659.3) #4
  br label %for.inc.i663.3

if.then.i658.3:                                   ; preds = %for.inc.i663.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i663.3

for.inc.i663.3:                                   ; preds = %if.then.i658.3, %if.else.i660.3
  %arrayidx.i655.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 14, i32 4
  %861 = ptrtoint ptr %arrayidx.i655.4 to i32
  call void @__asan_load1_noabort(i32 %861)
  %862 = load i8, ptr %arrayidx.i655.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %862)
  %cmp1.i656.4 = icmp eq i8 %862, 127
  br i1 %cmp1.i656.4, label %if.then.i658.4, label %if.else.i660.4

if.else.i660.4:                                   ; preds = %for.inc.i663.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i659.4 = sext i8 %862 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i659.4) #4
  br label %for.inc.i663.4

if.then.i658.4:                                   ; preds = %for.inc.i663.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i663.4

for.inc.i663.4:                                   ; preds = %if.then.i658.4, %if.else.i660.4
  %arrayidx.i655.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 14, i32 5
  %863 = ptrtoint ptr %arrayidx.i655.5 to i32
  call void @__asan_load1_noabort(i32 %863)
  %864 = load i8, ptr %arrayidx.i655.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %864)
  %cmp1.i656.5 = icmp eq i8 %864, 127
  br i1 %cmp1.i656.5, label %if.then.i658.5, label %if.else.i660.5

if.else.i660.5:                                   ; preds = %for.inc.i663.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i659.5 = sext i8 %864 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i659.5) #4
  br label %for.inc.i663.5

if.then.i658.5:                                   ; preds = %for.inc.i663.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i663.5

for.inc.i663.5:                                   ; preds = %if.then.i658.5, %if.else.i660.5
  %arrayidx.i655.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 14, i32 6
  %865 = ptrtoint ptr %arrayidx.i655.6 to i32
  call void @__asan_load1_noabort(i32 %865)
  %866 = load i8, ptr %arrayidx.i655.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %866)
  %cmp1.i656.6 = icmp eq i8 %866, 127
  br i1 %cmp1.i656.6, label %if.then.i658.6, label %if.else.i660.6

if.else.i660.6:                                   ; preds = %for.inc.i663.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i659.6 = sext i8 %866 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i659.6) #4
  br label %for.inc.i663.6

if.then.i658.6:                                   ; preds = %for.inc.i663.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i663.6

for.inc.i663.6:                                   ; preds = %if.then.i658.6, %if.else.i660.6
  %arrayidx.i655.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 14, i32 7
  %867 = ptrtoint ptr %arrayidx.i655.7 to i32
  call void @__asan_load1_noabort(i32 %867)
  %868 = load i8, ptr %arrayidx.i655.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %868)
  %cmp1.i656.7 = icmp eq i8 %868, 127
  br i1 %cmp1.i656.7, label %if.then.i658.7, label %if.else.i660.7

if.else.i660.7:                                   ; preds = %for.inc.i663.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i659.7 = sext i8 %868 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i659.7) #4
  br label %for.inc.i663.7

if.then.i658.7:                                   ; preds = %for.inc.i663.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i663.7

for.inc.i663.7:                                   ; preds = %if.then.i658.7, %if.else.i660.7
  %arrayidx.i655.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 14, i32 8
  %869 = ptrtoint ptr %arrayidx.i655.8 to i32
  call void @__asan_load1_noabort(i32 %869)
  %870 = load i8, ptr %arrayidx.i655.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %870)
  %cmp1.i656.8 = icmp eq i8 %870, 127
  br i1 %cmp1.i656.8, label %if.then.i658.8, label %if.else.i660.8

if.else.i660.8:                                   ; preds = %for.inc.i663.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i659.8 = sext i8 %870 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i659.8) #4
  br label %for.inc.i663.8

if.then.i658.8:                                   ; preds = %for.inc.i663.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i663.8

for.inc.i663.8:                                   ; preds = %if.then.i658.8, %if.else.i660.8
  %arrayidx.i655.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 14, i32 9
  %871 = ptrtoint ptr %arrayidx.i655.9 to i32
  call void @__asan_load1_noabort(i32 %871)
  %872 = load i8, ptr %arrayidx.i655.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %872)
  %cmp1.i656.9 = icmp eq i8 %872, 127
  br i1 %cmp1.i656.9, label %if.then.i658.9, label %if.else.i660.9

if.else.i660.9:                                   ; preds = %for.inc.i663.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i659.9 = sext i8 %872 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i659.9) #4
  br label %for.inc.i663.9

if.then.i658.9:                                   ; preds = %for.inc.i663.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i663.9

for.inc.i663.9:                                   ; preds = %if.then.i658.9, %if.else.i660.9
  %arrayidx.i655.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 14, i32 10
  %873 = ptrtoint ptr %arrayidx.i655.10 to i32
  call void @__asan_load1_noabort(i32 %873)
  %874 = load i8, ptr %arrayidx.i655.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %874)
  %cmp1.i656.10 = icmp eq i8 %874, 127
  br i1 %cmp1.i656.10, label %if.then.i658.10, label %if.else.i660.10

if.else.i660.10:                                  ; preds = %for.inc.i663.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i659.10 = sext i8 %874 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i659.10) #4
  br label %for.inc.i663.10

if.then.i658.10:                                  ; preds = %for.inc.i663.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i663.10

for.inc.i663.10:                                  ; preds = %if.then.i658.10, %if.else.i660.10
  %arrayidx.i655.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 14, i32 11
  %875 = ptrtoint ptr %arrayidx.i655.11 to i32
  call void @__asan_load1_noabort(i32 %875)
  %876 = load i8, ptr %arrayidx.i655.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %876)
  %cmp1.i656.11 = icmp eq i8 %876, 127
  br i1 %cmp1.i656.11, label %if.then.i658.11, label %if.else.i660.11

if.else.i660.11:                                  ; preds = %for.inc.i663.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i659.11 = sext i8 %876 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i659.11) #4
  br label %for.inc.i663.11

if.then.i658.11:                                  ; preds = %for.inc.i663.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i663.11

for.inc.i663.11:                                  ; preds = %if.then.i658.11, %if.else.i660.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %he996153 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.89) #4
  %877 = ptrtoint ptr %he996153 to i32
  call void @__asan_load1_noabort(i32 %877)
  %878 = load i8, ptr %he996153, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %878)
  %cmp1.i667 = icmp eq i8 %878, 127
  br i1 %cmp1.i667, label %if.then.i669, label %if.else.i671

if.then.i669:                                     ; preds = %for.inc.i663.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i674

if.else.i671:                                     ; preds = %for.inc.i663.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i670 = sext i8 %878 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i670) #4
  br label %for.inc.i674

for.inc.i674:                                     ; preds = %if.else.i671, %if.then.i669
  %arrayidx.i666.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 14, i32 1
  %879 = ptrtoint ptr %arrayidx.i666.1 to i32
  call void @__asan_load1_noabort(i32 %879)
  %880 = load i8, ptr %arrayidx.i666.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %880)
  %cmp1.i667.1 = icmp eq i8 %880, 127
  br i1 %cmp1.i667.1, label %if.then.i669.1, label %if.else.i671.1

if.else.i671.1:                                   ; preds = %for.inc.i674
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i670.1 = sext i8 %880 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i670.1) #4
  br label %for.inc.i674.1

if.then.i669.1:                                   ; preds = %for.inc.i674
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i674.1

for.inc.i674.1:                                   ; preds = %if.then.i669.1, %if.else.i671.1
  %arrayidx.i666.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 14, i32 2
  %881 = ptrtoint ptr %arrayidx.i666.2 to i32
  call void @__asan_load1_noabort(i32 %881)
  %882 = load i8, ptr %arrayidx.i666.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %882)
  %cmp1.i667.2 = icmp eq i8 %882, 127
  br i1 %cmp1.i667.2, label %if.then.i669.2, label %if.else.i671.2

if.else.i671.2:                                   ; preds = %for.inc.i674.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i670.2 = sext i8 %882 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i670.2) #4
  br label %for.inc.i674.2

if.then.i669.2:                                   ; preds = %for.inc.i674.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i674.2

for.inc.i674.2:                                   ; preds = %if.then.i669.2, %if.else.i671.2
  %arrayidx.i666.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 14, i32 3
  %883 = ptrtoint ptr %arrayidx.i666.3 to i32
  call void @__asan_load1_noabort(i32 %883)
  %884 = load i8, ptr %arrayidx.i666.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %884)
  %cmp1.i667.3 = icmp eq i8 %884, 127
  br i1 %cmp1.i667.3, label %if.then.i669.3, label %if.else.i671.3

if.else.i671.3:                                   ; preds = %for.inc.i674.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i670.3 = sext i8 %884 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i670.3) #4
  br label %for.inc.i674.3

if.then.i669.3:                                   ; preds = %for.inc.i674.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i674.3

for.inc.i674.3:                                   ; preds = %if.then.i669.3, %if.else.i671.3
  %arrayidx.i666.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 14, i32 4
  %885 = ptrtoint ptr %arrayidx.i666.4 to i32
  call void @__asan_load1_noabort(i32 %885)
  %886 = load i8, ptr %arrayidx.i666.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %886)
  %cmp1.i667.4 = icmp eq i8 %886, 127
  br i1 %cmp1.i667.4, label %if.then.i669.4, label %if.else.i671.4

if.else.i671.4:                                   ; preds = %for.inc.i674.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i670.4 = sext i8 %886 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i670.4) #4
  br label %for.inc.i674.4

if.then.i669.4:                                   ; preds = %for.inc.i674.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i674.4

for.inc.i674.4:                                   ; preds = %if.then.i669.4, %if.else.i671.4
  %arrayidx.i666.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 14, i32 5
  %887 = ptrtoint ptr %arrayidx.i666.5 to i32
  call void @__asan_load1_noabort(i32 %887)
  %888 = load i8, ptr %arrayidx.i666.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %888)
  %cmp1.i667.5 = icmp eq i8 %888, 127
  br i1 %cmp1.i667.5, label %if.then.i669.5, label %if.else.i671.5

if.else.i671.5:                                   ; preds = %for.inc.i674.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i670.5 = sext i8 %888 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i670.5) #4
  br label %for.inc.i674.5

if.then.i669.5:                                   ; preds = %for.inc.i674.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i674.5

for.inc.i674.5:                                   ; preds = %if.then.i669.5, %if.else.i671.5
  %arrayidx.i666.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 14, i32 6
  %889 = ptrtoint ptr %arrayidx.i666.6 to i32
  call void @__asan_load1_noabort(i32 %889)
  %890 = load i8, ptr %arrayidx.i666.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %890)
  %cmp1.i667.6 = icmp eq i8 %890, 127
  br i1 %cmp1.i667.6, label %if.then.i669.6, label %if.else.i671.6

if.else.i671.6:                                   ; preds = %for.inc.i674.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i670.6 = sext i8 %890 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i670.6) #4
  br label %for.inc.i674.6

if.then.i669.6:                                   ; preds = %for.inc.i674.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i674.6

for.inc.i674.6:                                   ; preds = %if.then.i669.6, %if.else.i671.6
  %arrayidx.i666.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 14, i32 7
  %891 = ptrtoint ptr %arrayidx.i666.7 to i32
  call void @__asan_load1_noabort(i32 %891)
  %892 = load i8, ptr %arrayidx.i666.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %892)
  %cmp1.i667.7 = icmp eq i8 %892, 127
  br i1 %cmp1.i667.7, label %if.then.i669.7, label %if.else.i671.7

if.else.i671.7:                                   ; preds = %for.inc.i674.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i670.7 = sext i8 %892 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i670.7) #4
  br label %for.inc.i674.7

if.then.i669.7:                                   ; preds = %for.inc.i674.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i674.7

for.inc.i674.7:                                   ; preds = %if.then.i669.7, %if.else.i671.7
  %arrayidx.i666.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 14, i32 8
  %893 = ptrtoint ptr %arrayidx.i666.8 to i32
  call void @__asan_load1_noabort(i32 %893)
  %894 = load i8, ptr %arrayidx.i666.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %894)
  %cmp1.i667.8 = icmp eq i8 %894, 127
  br i1 %cmp1.i667.8, label %if.then.i669.8, label %if.else.i671.8

if.else.i671.8:                                   ; preds = %for.inc.i674.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i670.8 = sext i8 %894 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i670.8) #4
  br label %for.inc.i674.8

if.then.i669.8:                                   ; preds = %for.inc.i674.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i674.8

for.inc.i674.8:                                   ; preds = %if.then.i669.8, %if.else.i671.8
  %arrayidx.i666.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 14, i32 9
  %895 = ptrtoint ptr %arrayidx.i666.9 to i32
  call void @__asan_load1_noabort(i32 %895)
  %896 = load i8, ptr %arrayidx.i666.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %896)
  %cmp1.i667.9 = icmp eq i8 %896, 127
  br i1 %cmp1.i667.9, label %if.then.i669.9, label %if.else.i671.9

if.else.i671.9:                                   ; preds = %for.inc.i674.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i670.9 = sext i8 %896 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i670.9) #4
  br label %for.inc.i674.9

if.then.i669.9:                                   ; preds = %for.inc.i674.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i674.9

for.inc.i674.9:                                   ; preds = %if.then.i669.9, %if.else.i671.9
  %arrayidx.i666.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 14, i32 10
  %897 = ptrtoint ptr %arrayidx.i666.10 to i32
  call void @__asan_load1_noabort(i32 %897)
  %898 = load i8, ptr %arrayidx.i666.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %898)
  %cmp1.i667.10 = icmp eq i8 %898, 127
  br i1 %cmp1.i667.10, label %if.then.i669.10, label %if.else.i671.10

if.else.i671.10:                                  ; preds = %for.inc.i674.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i670.10 = sext i8 %898 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i670.10) #4
  br label %for.inc.i674.10

if.then.i669.10:                                  ; preds = %for.inc.i674.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i674.10

for.inc.i674.10:                                  ; preds = %if.then.i669.10, %if.else.i671.10
  %arrayidx.i666.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 14, i32 11
  %899 = ptrtoint ptr %arrayidx.i666.11 to i32
  call void @__asan_load1_noabort(i32 %899)
  %900 = load i8, ptr %arrayidx.i666.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %900)
  %cmp1.i667.11 = icmp eq i8 %900, 127
  br i1 %cmp1.i667.11, label %if.then.i669.11, label %if.else.i671.11

if.else.i671.11:                                  ; preds = %for.inc.i674.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i670.11 = sext i8 %900 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i670.11) #4
  br label %for.inc.i674.11

if.then.i669.11:                                  ; preds = %for.inc.i674.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i674.11

for.inc.i674.11:                                  ; preds = %if.then.i669.11, %if.else.i671.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %he996x2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.90) #4
  %901 = ptrtoint ptr %he996x2 to i32
  call void @__asan_load1_noabort(i32 %901)
  %902 = load i8, ptr %he996x2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %902)
  %cmp1.i678 = icmp eq i8 %902, 127
  br i1 %cmp1.i678, label %if.then.i680, label %if.else.i682

if.then.i680:                                     ; preds = %for.inc.i674.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i685

if.else.i682:                                     ; preds = %for.inc.i674.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i681 = sext i8 %902 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i681) #4
  br label %for.inc.i685

for.inc.i685:                                     ; preds = %if.else.i682, %if.then.i680
  %arrayidx.i677.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 15, i32 1
  %903 = ptrtoint ptr %arrayidx.i677.1 to i32
  call void @__asan_load1_noabort(i32 %903)
  %904 = load i8, ptr %arrayidx.i677.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %904)
  %cmp1.i678.1 = icmp eq i8 %904, 127
  br i1 %cmp1.i678.1, label %if.then.i680.1, label %if.else.i682.1

if.else.i682.1:                                   ; preds = %for.inc.i685
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i681.1 = sext i8 %904 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i681.1) #4
  br label %for.inc.i685.1

if.then.i680.1:                                   ; preds = %for.inc.i685
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i685.1

for.inc.i685.1:                                   ; preds = %if.then.i680.1, %if.else.i682.1
  %arrayidx.i677.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 15, i32 2
  %905 = ptrtoint ptr %arrayidx.i677.2 to i32
  call void @__asan_load1_noabort(i32 %905)
  %906 = load i8, ptr %arrayidx.i677.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %906)
  %cmp1.i678.2 = icmp eq i8 %906, 127
  br i1 %cmp1.i678.2, label %if.then.i680.2, label %if.else.i682.2

if.else.i682.2:                                   ; preds = %for.inc.i685.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i681.2 = sext i8 %906 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i681.2) #4
  br label %for.inc.i685.2

if.then.i680.2:                                   ; preds = %for.inc.i685.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i685.2

for.inc.i685.2:                                   ; preds = %if.then.i680.2, %if.else.i682.2
  %arrayidx.i677.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 15, i32 3
  %907 = ptrtoint ptr %arrayidx.i677.3 to i32
  call void @__asan_load1_noabort(i32 %907)
  %908 = load i8, ptr %arrayidx.i677.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %908)
  %cmp1.i678.3 = icmp eq i8 %908, 127
  br i1 %cmp1.i678.3, label %if.then.i680.3, label %if.else.i682.3

if.else.i682.3:                                   ; preds = %for.inc.i685.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i681.3 = sext i8 %908 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i681.3) #4
  br label %for.inc.i685.3

if.then.i680.3:                                   ; preds = %for.inc.i685.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i685.3

for.inc.i685.3:                                   ; preds = %if.then.i680.3, %if.else.i682.3
  %arrayidx.i677.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 15, i32 4
  %909 = ptrtoint ptr %arrayidx.i677.4 to i32
  call void @__asan_load1_noabort(i32 %909)
  %910 = load i8, ptr %arrayidx.i677.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %910)
  %cmp1.i678.4 = icmp eq i8 %910, 127
  br i1 %cmp1.i678.4, label %if.then.i680.4, label %if.else.i682.4

if.else.i682.4:                                   ; preds = %for.inc.i685.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i681.4 = sext i8 %910 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i681.4) #4
  br label %for.inc.i685.4

if.then.i680.4:                                   ; preds = %for.inc.i685.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i685.4

for.inc.i685.4:                                   ; preds = %if.then.i680.4, %if.else.i682.4
  %arrayidx.i677.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 15, i32 5
  %911 = ptrtoint ptr %arrayidx.i677.5 to i32
  call void @__asan_load1_noabort(i32 %911)
  %912 = load i8, ptr %arrayidx.i677.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %912)
  %cmp1.i678.5 = icmp eq i8 %912, 127
  br i1 %cmp1.i678.5, label %if.then.i680.5, label %if.else.i682.5

if.else.i682.5:                                   ; preds = %for.inc.i685.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i681.5 = sext i8 %912 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i681.5) #4
  br label %for.inc.i685.5

if.then.i680.5:                                   ; preds = %for.inc.i685.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i685.5

for.inc.i685.5:                                   ; preds = %if.then.i680.5, %if.else.i682.5
  %arrayidx.i677.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 15, i32 6
  %913 = ptrtoint ptr %arrayidx.i677.6 to i32
  call void @__asan_load1_noabort(i32 %913)
  %914 = load i8, ptr %arrayidx.i677.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %914)
  %cmp1.i678.6 = icmp eq i8 %914, 127
  br i1 %cmp1.i678.6, label %if.then.i680.6, label %if.else.i682.6

if.else.i682.6:                                   ; preds = %for.inc.i685.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i681.6 = sext i8 %914 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i681.6) #4
  br label %for.inc.i685.6

if.then.i680.6:                                   ; preds = %for.inc.i685.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i685.6

for.inc.i685.6:                                   ; preds = %if.then.i680.6, %if.else.i682.6
  %arrayidx.i677.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 15, i32 7
  %915 = ptrtoint ptr %arrayidx.i677.7 to i32
  call void @__asan_load1_noabort(i32 %915)
  %916 = load i8, ptr %arrayidx.i677.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %916)
  %cmp1.i678.7 = icmp eq i8 %916, 127
  br i1 %cmp1.i678.7, label %if.then.i680.7, label %if.else.i682.7

if.else.i682.7:                                   ; preds = %for.inc.i685.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i681.7 = sext i8 %916 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i681.7) #4
  br label %for.inc.i685.7

if.then.i680.7:                                   ; preds = %for.inc.i685.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i685.7

for.inc.i685.7:                                   ; preds = %if.then.i680.7, %if.else.i682.7
  %arrayidx.i677.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 15, i32 8
  %917 = ptrtoint ptr %arrayidx.i677.8 to i32
  call void @__asan_load1_noabort(i32 %917)
  %918 = load i8, ptr %arrayidx.i677.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %918)
  %cmp1.i678.8 = icmp eq i8 %918, 127
  br i1 %cmp1.i678.8, label %if.then.i680.8, label %if.else.i682.8

if.else.i682.8:                                   ; preds = %for.inc.i685.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i681.8 = sext i8 %918 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i681.8) #4
  br label %for.inc.i685.8

if.then.i680.8:                                   ; preds = %for.inc.i685.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i685.8

for.inc.i685.8:                                   ; preds = %if.then.i680.8, %if.else.i682.8
  %arrayidx.i677.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 15, i32 9
  %919 = ptrtoint ptr %arrayidx.i677.9 to i32
  call void @__asan_load1_noabort(i32 %919)
  %920 = load i8, ptr %arrayidx.i677.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %920)
  %cmp1.i678.9 = icmp eq i8 %920, 127
  br i1 %cmp1.i678.9, label %if.then.i680.9, label %if.else.i682.9

if.else.i682.9:                                   ; preds = %for.inc.i685.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i681.9 = sext i8 %920 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i681.9) #4
  br label %for.inc.i685.9

if.then.i680.9:                                   ; preds = %for.inc.i685.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i685.9

for.inc.i685.9:                                   ; preds = %if.then.i680.9, %if.else.i682.9
  %arrayidx.i677.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 15, i32 10
  %921 = ptrtoint ptr %arrayidx.i677.10 to i32
  call void @__asan_load1_noabort(i32 %921)
  %922 = load i8, ptr %arrayidx.i677.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %922)
  %cmp1.i678.10 = icmp eq i8 %922, 127
  br i1 %cmp1.i678.10, label %if.then.i680.10, label %if.else.i682.10

if.else.i682.10:                                  ; preds = %for.inc.i685.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i681.10 = sext i8 %922 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i681.10) #4
  br label %for.inc.i685.10

if.then.i680.10:                                  ; preds = %for.inc.i685.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i685.10

for.inc.i685.10:                                  ; preds = %if.then.i680.10, %if.else.i682.10
  %arrayidx.i677.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 0, i32 15, i32 11
  %923 = ptrtoint ptr %arrayidx.i677.11 to i32
  call void @__asan_load1_noabort(i32 %923)
  %924 = load i8, ptr %arrayidx.i677.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %924)
  %cmp1.i678.11 = icmp eq i8 %924, 127
  br i1 %cmp1.i678.11, label %if.then.i680.11, label %if.else.i682.11

if.else.i682.11:                                  ; preds = %for.inc.i685.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i681.11 = sext i8 %924 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i681.11) #4
  br label %for.inc.i685.11

if.then.i680.11:                                  ; preds = %for.inc.i685.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i685.11

for.inc.i685.11:                                  ; preds = %if.then.i680.11, %if.else.i682.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %he996x2160 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.91) #4
  %925 = ptrtoint ptr %he996x2160 to i32
  call void @__asan_load1_noabort(i32 %925)
  %926 = load i8, ptr %he996x2160, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %926)
  %cmp1.i689 = icmp eq i8 %926, 127
  br i1 %cmp1.i689, label %if.then.i691, label %if.else.i693

if.then.i691:                                     ; preds = %for.inc.i685.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i696

if.else.i693:                                     ; preds = %for.inc.i685.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i692 = sext i8 %926 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i692) #4
  br label %for.inc.i696

for.inc.i696:                                     ; preds = %if.else.i693, %if.then.i691
  %arrayidx.i688.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 15, i32 1
  %927 = ptrtoint ptr %arrayidx.i688.1 to i32
  call void @__asan_load1_noabort(i32 %927)
  %928 = load i8, ptr %arrayidx.i688.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %928)
  %cmp1.i689.1 = icmp eq i8 %928, 127
  br i1 %cmp1.i689.1, label %if.then.i691.1, label %if.else.i693.1

if.else.i693.1:                                   ; preds = %for.inc.i696
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i692.1 = sext i8 %928 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i692.1) #4
  br label %for.inc.i696.1

if.then.i691.1:                                   ; preds = %for.inc.i696
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i696.1

for.inc.i696.1:                                   ; preds = %if.then.i691.1, %if.else.i693.1
  %arrayidx.i688.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 15, i32 2
  %929 = ptrtoint ptr %arrayidx.i688.2 to i32
  call void @__asan_load1_noabort(i32 %929)
  %930 = load i8, ptr %arrayidx.i688.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %930)
  %cmp1.i689.2 = icmp eq i8 %930, 127
  br i1 %cmp1.i689.2, label %if.then.i691.2, label %if.else.i693.2

if.else.i693.2:                                   ; preds = %for.inc.i696.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i692.2 = sext i8 %930 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i692.2) #4
  br label %for.inc.i696.2

if.then.i691.2:                                   ; preds = %for.inc.i696.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i696.2

for.inc.i696.2:                                   ; preds = %if.then.i691.2, %if.else.i693.2
  %arrayidx.i688.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 15, i32 3
  %931 = ptrtoint ptr %arrayidx.i688.3 to i32
  call void @__asan_load1_noabort(i32 %931)
  %932 = load i8, ptr %arrayidx.i688.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %932)
  %cmp1.i689.3 = icmp eq i8 %932, 127
  br i1 %cmp1.i689.3, label %if.then.i691.3, label %if.else.i693.3

if.else.i693.3:                                   ; preds = %for.inc.i696.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i692.3 = sext i8 %932 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i692.3) #4
  br label %for.inc.i696.3

if.then.i691.3:                                   ; preds = %for.inc.i696.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i696.3

for.inc.i696.3:                                   ; preds = %if.then.i691.3, %if.else.i693.3
  %arrayidx.i688.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 15, i32 4
  %933 = ptrtoint ptr %arrayidx.i688.4 to i32
  call void @__asan_load1_noabort(i32 %933)
  %934 = load i8, ptr %arrayidx.i688.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %934)
  %cmp1.i689.4 = icmp eq i8 %934, 127
  br i1 %cmp1.i689.4, label %if.then.i691.4, label %if.else.i693.4

if.else.i693.4:                                   ; preds = %for.inc.i696.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i692.4 = sext i8 %934 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i692.4) #4
  br label %for.inc.i696.4

if.then.i691.4:                                   ; preds = %for.inc.i696.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i696.4

for.inc.i696.4:                                   ; preds = %if.then.i691.4, %if.else.i693.4
  %arrayidx.i688.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 15, i32 5
  %935 = ptrtoint ptr %arrayidx.i688.5 to i32
  call void @__asan_load1_noabort(i32 %935)
  %936 = load i8, ptr %arrayidx.i688.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %936)
  %cmp1.i689.5 = icmp eq i8 %936, 127
  br i1 %cmp1.i689.5, label %if.then.i691.5, label %if.else.i693.5

if.else.i693.5:                                   ; preds = %for.inc.i696.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i692.5 = sext i8 %936 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i692.5) #4
  br label %for.inc.i696.5

if.then.i691.5:                                   ; preds = %for.inc.i696.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i696.5

for.inc.i696.5:                                   ; preds = %if.then.i691.5, %if.else.i693.5
  %arrayidx.i688.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 15, i32 6
  %937 = ptrtoint ptr %arrayidx.i688.6 to i32
  call void @__asan_load1_noabort(i32 %937)
  %938 = load i8, ptr %arrayidx.i688.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %938)
  %cmp1.i689.6 = icmp eq i8 %938, 127
  br i1 %cmp1.i689.6, label %if.then.i691.6, label %if.else.i693.6

if.else.i693.6:                                   ; preds = %for.inc.i696.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i692.6 = sext i8 %938 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i692.6) #4
  br label %for.inc.i696.6

if.then.i691.6:                                   ; preds = %for.inc.i696.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i696.6

for.inc.i696.6:                                   ; preds = %if.then.i691.6, %if.else.i693.6
  %arrayidx.i688.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 15, i32 7
  %939 = ptrtoint ptr %arrayidx.i688.7 to i32
  call void @__asan_load1_noabort(i32 %939)
  %940 = load i8, ptr %arrayidx.i688.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %940)
  %cmp1.i689.7 = icmp eq i8 %940, 127
  br i1 %cmp1.i689.7, label %if.then.i691.7, label %if.else.i693.7

if.else.i693.7:                                   ; preds = %for.inc.i696.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i692.7 = sext i8 %940 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i692.7) #4
  br label %for.inc.i696.7

if.then.i691.7:                                   ; preds = %for.inc.i696.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i696.7

for.inc.i696.7:                                   ; preds = %if.then.i691.7, %if.else.i693.7
  %arrayidx.i688.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 15, i32 8
  %941 = ptrtoint ptr %arrayidx.i688.8 to i32
  call void @__asan_load1_noabort(i32 %941)
  %942 = load i8, ptr %arrayidx.i688.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %942)
  %cmp1.i689.8 = icmp eq i8 %942, 127
  br i1 %cmp1.i689.8, label %if.then.i691.8, label %if.else.i693.8

if.else.i693.8:                                   ; preds = %for.inc.i696.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i692.8 = sext i8 %942 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i692.8) #4
  br label %for.inc.i696.8

if.then.i691.8:                                   ; preds = %for.inc.i696.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i696.8

for.inc.i696.8:                                   ; preds = %if.then.i691.8, %if.else.i693.8
  %arrayidx.i688.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 15, i32 9
  %943 = ptrtoint ptr %arrayidx.i688.9 to i32
  call void @__asan_load1_noabort(i32 %943)
  %944 = load i8, ptr %arrayidx.i688.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %944)
  %cmp1.i689.9 = icmp eq i8 %944, 127
  br i1 %cmp1.i689.9, label %if.then.i691.9, label %if.else.i693.9

if.else.i693.9:                                   ; preds = %for.inc.i696.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i692.9 = sext i8 %944 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i692.9) #4
  br label %for.inc.i696.9

if.then.i691.9:                                   ; preds = %for.inc.i696.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i696.9

for.inc.i696.9:                                   ; preds = %if.then.i691.9, %if.else.i693.9
  %arrayidx.i688.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 15, i32 10
  %945 = ptrtoint ptr %arrayidx.i688.10 to i32
  call void @__asan_load1_noabort(i32 %945)
  %946 = load i8, ptr %arrayidx.i688.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %946)
  %cmp1.i689.10 = icmp eq i8 %946, 127
  br i1 %cmp1.i689.10, label %if.then.i691.10, label %if.else.i693.10

if.else.i693.10:                                  ; preds = %for.inc.i696.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i692.10 = sext i8 %946 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i692.10) #4
  br label %for.inc.i696.10

if.then.i691.10:                                  ; preds = %for.inc.i696.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i696.10

for.inc.i696.10:                                  ; preds = %if.then.i691.10, %if.else.i693.10
  %arrayidx.i688.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 1, i32 15, i32 11
  %947 = ptrtoint ptr %arrayidx.i688.11 to i32
  call void @__asan_load1_noabort(i32 %947)
  %948 = load i8, ptr %arrayidx.i688.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %948)
  %cmp1.i689.11 = icmp eq i8 %948, 127
  br i1 %cmp1.i689.11, label %if.then.i691.11, label %if.else.i693.11

if.else.i693.11:                                  ; preds = %for.inc.i696.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i692.11 = sext i8 %948 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i692.11) #4
  br label %for.inc.i696.11

if.then.i691.11:                                  ; preds = %for.inc.i696.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i696.11

for.inc.i696.11:                                  ; preds = %if.then.i691.11, %if.else.i693.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  %he996x2164 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.92) #4
  %949 = ptrtoint ptr %he996x2164 to i32
  call void @__asan_load1_noabort(i32 %949)
  %950 = load i8, ptr %he996x2164, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %950)
  %cmp1.i700 = icmp eq i8 %950, 127
  br i1 %cmp1.i700, label %if.then.i702, label %if.else.i704

if.then.i702:                                     ; preds = %for.inc.i696.11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i707

if.else.i704:                                     ; preds = %for.inc.i696.11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i703 = sext i8 %950 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i703) #4
  br label %for.inc.i707

for.inc.i707:                                     ; preds = %if.else.i704, %if.then.i702
  %arrayidx.i699.1 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 15, i32 1
  %951 = ptrtoint ptr %arrayidx.i699.1 to i32
  call void @__asan_load1_noabort(i32 %951)
  %952 = load i8, ptr %arrayidx.i699.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %952)
  %cmp1.i700.1 = icmp eq i8 %952, 127
  br i1 %cmp1.i700.1, label %if.then.i702.1, label %if.else.i704.1

if.else.i704.1:                                   ; preds = %for.inc.i707
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i703.1 = sext i8 %952 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i703.1) #4
  br label %for.inc.i707.1

if.then.i702.1:                                   ; preds = %for.inc.i707
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i707.1

for.inc.i707.1:                                   ; preds = %if.then.i702.1, %if.else.i704.1
  %arrayidx.i699.2 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 15, i32 2
  %953 = ptrtoint ptr %arrayidx.i699.2 to i32
  call void @__asan_load1_noabort(i32 %953)
  %954 = load i8, ptr %arrayidx.i699.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %954)
  %cmp1.i700.2 = icmp eq i8 %954, 127
  br i1 %cmp1.i700.2, label %if.then.i702.2, label %if.else.i704.2

if.else.i704.2:                                   ; preds = %for.inc.i707.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i703.2 = sext i8 %954 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i703.2) #4
  br label %for.inc.i707.2

if.then.i702.2:                                   ; preds = %for.inc.i707.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i707.2

for.inc.i707.2:                                   ; preds = %if.then.i702.2, %if.else.i704.2
  %arrayidx.i699.3 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 15, i32 3
  %955 = ptrtoint ptr %arrayidx.i699.3 to i32
  call void @__asan_load1_noabort(i32 %955)
  %956 = load i8, ptr %arrayidx.i699.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %956)
  %cmp1.i700.3 = icmp eq i8 %956, 127
  br i1 %cmp1.i700.3, label %if.then.i702.3, label %if.else.i704.3

if.else.i704.3:                                   ; preds = %for.inc.i707.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i703.3 = sext i8 %956 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i703.3) #4
  br label %for.inc.i707.3

if.then.i702.3:                                   ; preds = %for.inc.i707.2
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i707.3

for.inc.i707.3:                                   ; preds = %if.then.i702.3, %if.else.i704.3
  %arrayidx.i699.4 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 15, i32 4
  %957 = ptrtoint ptr %arrayidx.i699.4 to i32
  call void @__asan_load1_noabort(i32 %957)
  %958 = load i8, ptr %arrayidx.i699.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %958)
  %cmp1.i700.4 = icmp eq i8 %958, 127
  br i1 %cmp1.i700.4, label %if.then.i702.4, label %if.else.i704.4

if.else.i704.4:                                   ; preds = %for.inc.i707.3
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i703.4 = sext i8 %958 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i703.4) #4
  br label %for.inc.i707.4

if.then.i702.4:                                   ; preds = %for.inc.i707.3
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i707.4

for.inc.i707.4:                                   ; preds = %if.then.i702.4, %if.else.i704.4
  %arrayidx.i699.5 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 15, i32 5
  %959 = ptrtoint ptr %arrayidx.i699.5 to i32
  call void @__asan_load1_noabort(i32 %959)
  %960 = load i8, ptr %arrayidx.i699.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %960)
  %cmp1.i700.5 = icmp eq i8 %960, 127
  br i1 %cmp1.i700.5, label %if.then.i702.5, label %if.else.i704.5

if.else.i704.5:                                   ; preds = %for.inc.i707.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i703.5 = sext i8 %960 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i703.5) #4
  br label %for.inc.i707.5

if.then.i702.5:                                   ; preds = %for.inc.i707.4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i707.5

for.inc.i707.5:                                   ; preds = %if.then.i702.5, %if.else.i704.5
  %arrayidx.i699.6 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 15, i32 6
  %961 = ptrtoint ptr %arrayidx.i699.6 to i32
  call void @__asan_load1_noabort(i32 %961)
  %962 = load i8, ptr %arrayidx.i699.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %962)
  %cmp1.i700.6 = icmp eq i8 %962, 127
  br i1 %cmp1.i700.6, label %if.then.i702.6, label %if.else.i704.6

if.else.i704.6:                                   ; preds = %for.inc.i707.5
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i703.6 = sext i8 %962 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i703.6) #4
  br label %for.inc.i707.6

if.then.i702.6:                                   ; preds = %for.inc.i707.5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i707.6

for.inc.i707.6:                                   ; preds = %if.then.i702.6, %if.else.i704.6
  %arrayidx.i699.7 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 15, i32 7
  %963 = ptrtoint ptr %arrayidx.i699.7 to i32
  call void @__asan_load1_noabort(i32 %963)
  %964 = load i8, ptr %arrayidx.i699.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %964)
  %cmp1.i700.7 = icmp eq i8 %964, 127
  br i1 %cmp1.i700.7, label %if.then.i702.7, label %if.else.i704.7

if.else.i704.7:                                   ; preds = %for.inc.i707.6
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i703.7 = sext i8 %964 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i703.7) #4
  br label %for.inc.i707.7

if.then.i702.7:                                   ; preds = %for.inc.i707.6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i707.7

for.inc.i707.7:                                   ; preds = %if.then.i702.7, %if.else.i704.7
  %arrayidx.i699.8 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 15, i32 8
  %965 = ptrtoint ptr %arrayidx.i699.8 to i32
  call void @__asan_load1_noabort(i32 %965)
  %966 = load i8, ptr %arrayidx.i699.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %966)
  %cmp1.i700.8 = icmp eq i8 %966, 127
  br i1 %cmp1.i700.8, label %if.then.i702.8, label %if.else.i704.8

if.else.i704.8:                                   ; preds = %for.inc.i707.7
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i703.8 = sext i8 %966 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i703.8) #4
  br label %for.inc.i707.8

if.then.i702.8:                                   ; preds = %for.inc.i707.7
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i707.8

for.inc.i707.8:                                   ; preds = %if.then.i702.8, %if.else.i704.8
  %arrayidx.i699.9 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 15, i32 9
  %967 = ptrtoint ptr %arrayidx.i699.9 to i32
  call void @__asan_load1_noabort(i32 %967)
  %968 = load i8, ptr %arrayidx.i699.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %968)
  %cmp1.i700.9 = icmp eq i8 %968, 127
  br i1 %cmp1.i700.9, label %if.then.i702.9, label %if.else.i704.9

if.else.i704.9:                                   ; preds = %for.inc.i707.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i703.9 = sext i8 %968 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i703.9) #4
  br label %for.inc.i707.9

if.then.i702.9:                                   ; preds = %for.inc.i707.8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i707.9

for.inc.i707.9:                                   ; preds = %if.then.i702.9, %if.else.i704.9
  %arrayidx.i699.10 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 15, i32 10
  %969 = ptrtoint ptr %arrayidx.i699.10 to i32
  call void @__asan_load1_noabort(i32 %969)
  %970 = load i8, ptr %arrayidx.i699.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %970)
  %cmp1.i700.10 = icmp eq i8 %970, 127
  br i1 %cmp1.i700.10, label %if.then.i702.10, label %if.else.i704.10

if.else.i704.10:                                  ; preds = %for.inc.i707.9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i703.10 = sext i8 %970 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i703.10) #4
  br label %for.inc.i707.10

if.then.i702.10:                                  ; preds = %for.inc.i707.9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i707.10

for.inc.i707.10:                                  ; preds = %if.then.i702.10, %if.else.i704.10
  %arrayidx.i699.11 = getelementptr inbounds %struct.mt7921_txpwr, ptr %txpwr, i32 0, i32 2, i32 2, i32 15, i32 11
  %971 = ptrtoint ptr %arrayidx.i699.11 to i32
  call void @__asan_load1_noabort(i32 %971)
  %972 = load i8, ptr %arrayidx.i699.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %972)
  %cmp1.i700.11 = icmp eq i8 %972, 127
  br i1 %cmp1.i700.11, label %if.then.i702.11, label %if.else.i704.11

if.else.i704.11:                                  ; preds = %for.inc.i707.10
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i703.11 = sext i8 %972 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %conv.i703.11) #4
  br label %for.inc.i707.11

if.then.i702.11:                                  ; preds = %for.inc.i707.10
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %for.inc.i707.11

for.inc.i707.11:                                  ; preds = %if.then.i702.11, %if.else.i704.11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.97) #4
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i707.11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.i707.11 ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 490, ptr nonnull %txpwr) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_pm_stats(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %awake_time2 = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9, i32 12, i32 1
  %4 = ptrtoint ptr %awake_time2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %awake_time2, align 4
  %doze_time4 = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9, i32 12, i32 3
  %6 = ptrtoint ptr %doze_time4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %doze_time4, align 4
  %state = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state, align 4
  %10 = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %stats = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stats, align 4
  %sub = add i32 %11, %5
  %add = sub i32 %sub, %13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %last_doze_event = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9, i32 12, i32 2
  %15 = ptrtoint ptr %last_doze_event to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_doze_event, align 4
  %sub8 = add i32 %14, %7
  %add9 = sub i32 %sub8, %16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %awake_time.0 = phi i32 [ %5, %if.else ], [ %add, %if.then ]
  %doze_time.0 = phi i32 [ %add9, %if.else ], [ %7, %if.then ]
  %call10 = tail call i32 @jiffies_to_msecs(i32 noundef %awake_time.0) #4
  %call11 = tail call i32 @jiffies_to_msecs(i32 noundef %doze_time.0) #4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.108, i32 noundef %call10, i32 noundef %call11) #4
  %lp_wake = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9, i32 12, i32 4
  %17 = ptrtoint ptr %lp_wake to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lp_wake, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.109, i32 noundef %18) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921s_sched_quota_read(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %sched = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 59, i32 0, i32 6
  %4 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sched, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.110, i32 noundef %5) #4
  %ple_data_quota = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 59, i32 0, i32 6, i32 4
  %6 = ptrtoint ptr %ple_data_quota to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ple_data_quota, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.111, i32 noundef %7) #4
  %pse_mcu_quota = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 59, i32 0, i32 8
  %8 = ptrtoint ptr %pse_mcu_quota to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pse_mcu_quota, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.112, i32 noundef %9) #4
  %deficit = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 59, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %deficit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %deficit, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.113, i32 noundef %11) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_regval_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @mt7921_reg_get, ptr noundef nonnull @mt7921_reg_set, ptr noundef nonnull @.str.11) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_reg_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %data, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %data, ptr noundef %pm) #4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %debugfs_reg = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 49
  %4 = ptrtoint ptr %debugfs_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debugfs_reg, align 8
  %call = tail call i32 %3(ptr noundef %data, i32 noundef %5) #4
  %conv = zext i32 %call to i64
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %val, align 8
  tail call void @mt76_connac_power_save_sched(ptr noundef %data, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_reg_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %data, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %data, ptr noundef %pm) #4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr, align 4
  %debugfs_reg = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 49
  %4 = ptrtoint ptr %debugfs_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debugfs_reg, align 8
  %conv = trunc i64 %val to i32
  tail call void %3(ptr noundef %data, i32 noundef %5, i32 noundef %conv) #4
  tail call void @mt76_connac_power_save_sched(ptr noundef %data, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_pm_wake(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_connac_power_save_sched(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_get_txpwr_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_tx_stats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mt7921_tx_stats_show, ptr noundef %1) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_tx_stats_show(ptr noundef %file, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %phy1 = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 2
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %1, ptr noundef %pm) #4
  %tobool.not.i = icmp eq ptr %phy1, null
  br i1 %tobool.not.i, label %entry.mt7921_ampdu_stat_read_phy.exit_crit_edge, label %if.end.i

entry.mt7921_ampdu_stat_read_phy.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7921_ampdu_stat_read_phy.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  tail call void @mt7921_mac_update_mib_stats(ptr noundef nonnull %phy1) #4
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i24 = tail call i32 %7(ptr noundef %3, i32 noundef -2112958288) #4
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call.1.i = tail call i32 %11(ptr noundef %3, i32 noundef -2112958284) #4
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call.2.i = tail call i32 %15(ptr noundef %3, i32 noundef -2112958280) #4
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call.3.i = tail call i32 %19(ptr noundef %3, i32 noundef -2112958276) #4
  %and.i = and i32 %call.i24, 255
  %add7.i = add nuw nsw i32 %and.i, 1
  %20 = lshr i32 %call.i24, 8
  %and.1.i = and i32 %20, 255
  %add7.1.i = add nuw nsw i32 %and.1.i, 1
  %21 = lshr i32 %call.i24, 16
  %and.2.i = and i32 %21, 255
  %add7.2.i = add nuw nsw i32 %and.2.i, 1
  %22 = lshr i32 %call.i24, 24
  %add7.3.i = add nuw nsw i32 %22, 1
  %and.4.i = and i32 %call.1.i, 255
  %add7.4.i = add nuw nsw i32 %and.4.i, 1
  %23 = lshr i32 %call.1.i, 8
  %and.5.i = and i32 %23, 255
  %add7.5.i = add nuw nsw i32 %and.5.i, 1
  %24 = lshr i32 %call.1.i, 16
  %and.6.i = and i32 %24, 255
  %add7.6.i = add nuw nsw i32 %and.6.i, 1
  %25 = lshr i32 %call.1.i, 24
  %add7.7.i = add nuw nsw i32 %25, 1
  %and.8.i = and i32 %call.2.i, 255
  %add7.8.i = add nuw nsw i32 %and.8.i, 1
  %26 = lshr i32 %call.2.i, 8
  %and.9.i = and i32 %26, 255
  %add7.9.i = add nuw nsw i32 %and.9.i, 1
  %27 = lshr i32 %call.2.i, 16
  %and.10.i = and i32 %27, 255
  %add7.10.i = add nuw nsw i32 %and.10.i, 1
  %28 = lshr i32 %call.2.i, 24
  %add7.11.i = add nuw nsw i32 %28, 1
  %and.12.i = and i32 %call.3.i, 255
  %add7.12.i = add nuw nsw i32 %and.12.i, 1
  %29 = lshr i32 %call.3.i, 8
  %and.13.i = and i32 %29, 255
  %add7.13.i = add nuw nsw i32 %and.13.i, 1
  %30 = lshr i32 %call.3.i, 16
  %and.14.i = and i32 %30, 255
  %add7.14.i = add nuw nsw i32 %and.14.i, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.101) #4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.102, i32 noundef %add7.i) #4
  %add17.i = add nuw nsw i32 %and.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.103, i32 noundef %add17.i, i32 noundef %add7.1.i) #4
  %add17.1.i = add nuw nsw i32 %and.1.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.103, i32 noundef %add17.1.i, i32 noundef %add7.2.i) #4
  %add17.2.i = add nuw nsw i32 %and.2.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.103, i32 noundef %add17.2.i, i32 noundef %add7.3.i) #4
  %add17.3.i = add nuw nsw i32 %22, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.103, i32 noundef %add17.3.i, i32 noundef %add7.4.i) #4
  %add17.4.i = add nuw nsw i32 %and.4.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.103, i32 noundef %add17.4.i, i32 noundef %add7.5.i) #4
  %add17.5.i = add nuw nsw i32 %and.5.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.103, i32 noundef %add17.5.i, i32 noundef %add7.6.i) #4
  %add17.6.i = add nuw nsw i32 %and.6.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.103, i32 noundef %add17.6.i, i32 noundef %add7.7.i) #4
  %add17.7.i = add nuw nsw i32 %25, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.103, i32 noundef %add17.7.i, i32 noundef %add7.8.i) #4
  %add17.8.i = add nuw nsw i32 %and.8.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.103, i32 noundef %add17.8.i, i32 noundef %add7.9.i) #4
  %add17.9.i = add nuw nsw i32 %and.9.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.103, i32 noundef %add17.9.i, i32 noundef %add7.10.i) #4
  %add17.10.i = add nuw nsw i32 %and.10.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.103, i32 noundef %add17.10.i, i32 noundef %add7.11.i) #4
  %add17.11.i = add nuw nsw i32 %28, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.103, i32 noundef %add17.11.i, i32 noundef %add7.12.i) #4
  %add17.12.i = add nuw nsw i32 %and.12.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.103, i32 noundef %add17.12.i, i32 noundef %add7.13.i) #4
  %add17.13.i = add nuw nsw i32 %and.13.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.103, i32 noundef %add17.13.i, i32 noundef %add7.14.i) #4
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.104) #4
  %arrayidx26.i = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 0
  %31 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx26.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.105, i32 noundef %32) #4
  %arrayidx26.1.i = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 1
  %33 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx26.1.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.105, i32 noundef %34) #4
  %arrayidx26.2.i = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 2
  %35 = ptrtoint ptr %arrayidx26.2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx26.2.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.105, i32 noundef %36) #4
  %arrayidx26.3.i = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 3
  %37 = ptrtoint ptr %arrayidx26.3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx26.3.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.105, i32 noundef %38) #4
  %arrayidx26.4.i = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 4
  %39 = ptrtoint ptr %arrayidx26.4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx26.4.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.105, i32 noundef %40) #4
  %arrayidx26.5.i = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 5
  %41 = ptrtoint ptr %arrayidx26.5.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx26.5.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.105, i32 noundef %42) #4
  %arrayidx26.6.i = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 6
  %43 = ptrtoint ptr %arrayidx26.6.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx26.6.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.105, i32 noundef %44) #4
  %arrayidx26.7.i = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 7
  %45 = ptrtoint ptr %arrayidx26.7.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx26.7.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.105, i32 noundef %46) #4
  %arrayidx26.8.i = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 8
  %47 = ptrtoint ptr %arrayidx26.8.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx26.8.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.105, i32 noundef %48) #4
  %arrayidx26.9.i = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 9
  %49 = ptrtoint ptr %arrayidx26.9.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx26.9.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.105, i32 noundef %50) #4
  %arrayidx26.10.i = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 10
  %51 = ptrtoint ptr %arrayidx26.10.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx26.10.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.105, i32 noundef %52) #4
  %arrayidx26.11.i = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 11
  %53 = ptrtoint ptr %arrayidx26.11.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx26.11.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.105, i32 noundef %54) #4
  %arrayidx26.12.i = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 12
  %55 = ptrtoint ptr %arrayidx26.12.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx26.12.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.105, i32 noundef %56) #4
  %arrayidx26.13.i = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 13
  %57 = ptrtoint ptr %arrayidx26.13.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx26.13.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.105, i32 noundef %58) #4
  %arrayidx26.14.i = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 40, i32 14
  %59 = ptrtoint ptr %arrayidx26.14.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx26.14.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.105, i32 noundef %60) #4
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.97) #4
  %ba_miss_cnt.i = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 2, i32 10, i32 4
  %61 = ptrtoint ptr %ba_miss_cnt.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ba_miss_cnt.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.106, i32 noundef %62) #4
  br label %mt7921_ampdu_stat_read_phy.exit

mt7921_ampdu_stat_read_phy.exit:                  ; preds = %if.end.i, %entry.mt7921_ampdu_stat_read_phy.exit_crit_edge
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.98) #4
  %tx_amsdu_cnt = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 2, i32 10, i32 21
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %mt7921_ampdu_stat_read_phy.exit
  %i.026 = phi i32 [ 0, %mt7921_ampdu_stat_read_phy.exit ], [ %add, %for.inc.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.026, 1
  %arrayidx = getelementptr %struct.mt7921_dev, ptr %1, i32 0, i32 2, i32 10, i32 20, i32 %i.026
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.99, i32 noundef %add, i32 noundef %64) #4
  %65 = ptrtoint ptr %tx_amsdu_cnt to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx_amsdu_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not = icmp eq i32 %66, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %68, 100
  %div = udiv i32 %mul, %66
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.100, i32 noundef %div) #4
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.97) #4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %exitcond.not = icmp eq i32 %add, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt76_connac_power_save_sched(ptr noundef %1, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_mac_update_mib_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_fw_debug_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @mt7921_fw_debug_get, ptr noundef nonnull @mt7921_fw_debug_set, ptr noundef nonnull @.str.107) #4
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt7921_fw_debug_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_debug = getelementptr inbounds %struct.mt7921_dev, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %fw_debug to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fw_debug, align 4
  %conv = zext i8 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_fw_debug_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %data, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %data, ptr noundef %pm) #4
  %conv = trunc i64 %val to i8
  %fw_debug = getelementptr inbounds %struct.mt7921_dev, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %fw_debug to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %fw_debug, align 4
  %call = tail call i32 @mt7921_mcu_fw_log_2_host(ptr noundef %data, i8 noundef zeroext %conv) #4
  tail call void @mt76_connac_power_save_sched(ptr noundef %data, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_fw_log_2_host(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_pm_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @mt7921_pm_get, ptr noundef nonnull @mt7921_pm_set, ptr noundef nonnull @.str.107) #4
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt7921_pm_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %pm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm, align 128, !range !219
  %2 = zext i8 %1 to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_pm_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pm1 = getelementptr inbounds %struct.mt7921_dev, ptr %data, i32 0, i32 9
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %0 = ptrtoint ptr %pm1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm1, align 4, !range !219
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %val)
  %cmp = icmp eq i64 %2, %val
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %stats = getelementptr inbounds %struct.mt7921_dev, ptr %data, i32 0, i32 9, i32 12
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %stats, align 4
  %5 = load volatile i32, ptr @jiffies, align 128
  %last_doze_event = getelementptr inbounds %struct.mt7921_dev, ptr %data, i32 0, i32 9, i32 12, i32 2
  %6 = ptrtoint ptr %last_doze_event to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %last_doze_event, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %7 = ptrtoint ptr %pm1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %pm1, align 4
  %call = tail call i32 @mt76_connac_pm_wake(ptr noundef %data, ptr noundef %pm1) #4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 128
  tail call void @ieee80211_iterate_interfaces(ptr noundef %9, i32 noundef 3, ptr noundef nonnull @mt7921_pm_interface_iter, ptr noundef %data) #4
  %ds_enable = getelementptr inbounds %struct.mt7921_dev, ptr %data, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %ds_enable to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ds_enable, align 1, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9 = icmp ne i8 %11, 0
  %call10 = tail call i32 @mt76_connac_mcu_set_deep_sleep(ptr noundef %data, i1 noundef zeroext %tobool9) #4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool11 = icmp ne i64 %val, 0
  %frombool = zext i1 %tobool11 to i8
  %12 = ptrtoint ptr %pm1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %pm1, align 4
  tail call void @mt76_connac_power_save_sched(ptr noundef %data, ptr noundef %pm1) #4
  br label %out

out:                                              ; preds = %if.end7, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_pm_interface_iter(ptr noundef %priv, ptr nocapture noundef readnone %mac, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %pm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm, align 128, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  %call = tail call i32 @mt7921_mcu_set_beacon_filter(ptr noundef %priv, ptr noundef %vif, i1 noundef zeroext %tobool) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_set_deep_sleep(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_interfaces(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_set_beacon_filter(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_pm_idle_timeout_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @mt7921_pm_idle_timeout_get, ptr noundef nonnull @mt7921_pm_idle_timeout_set, ptr noundef nonnull @.str.107) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_pm_idle_timeout_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_timeout = getelementptr inbounds %struct.mt7921_dev, ptr %data, i32 0, i32 9, i32 11
  %0 = ptrtoint ptr %idle_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idle_timeout, align 4
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %1) #4
  %conv = zext i32 %call to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_pm_idle_timeout_set(ptr nocapture noundef writeonly %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %val to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #4
  %idle_timeout = getelementptr inbounds %struct.mt7921_dev, ptr %data, i32 0, i32 9, i32 11
  %0 = ptrtoint ptr %idle_timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call2.i, ptr %idle_timeout, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_reset_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef null, ptr noundef nonnull @mt7921_chip_reset, ptr noundef nonnull @.str.107) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_chip_reset(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %val)
  %cond = icmp eq i64 %val, 1
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt7921_reset(ptr noundef %data) #4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %data, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %data, ptr noundef %pm) #4
  %call = tail call i32 @mt76_connac_mcu_chip_config(ptr noundef %data) #4
  tail call void @mt76_connac_power_save_sched(ptr noundef %data, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %ret.0 = phi i32 [ 0, %sw.bb ], [ %call, %sw.default ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_chip_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_ds_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @mt7921_deep_sleep_get, ptr noundef nonnull @mt7921_deep_sleep_set, ptr noundef nonnull @.str.107) #4
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt7921_deep_sleep_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ds_enable = getelementptr inbounds %struct.mt7921_dev, ptr %data, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %ds_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ds_enable, align 1, !range !219
  %2 = zext i8 %1 to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_deep_sleep_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pm1 = getelementptr inbounds %struct.mt7921_dev, ptr %data, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool = icmp ne i64 %val, 0
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %data, ptr noundef %pm1) #4
  %ds_enable = getelementptr inbounds %struct.mt7921_dev, ptr %data, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %ds_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ds_enable, align 1, !range !219
  %2 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %2)
  %cmp.not = icmp eq i8 %1, %2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @mt76_connac_mcu_set_deep_sleep(ptr noundef %data, i1 noundef zeroext %tobool) #4
  %3 = ptrtoint ptr %ds_enable to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %ds_enable, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mt76_connac_power_save_sched(ptr noundef %data, ptr noundef %pm1) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !95, !97, !99, !101, !102, !103, !105, !107, !109, !111, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208}
!llvm.module.flags = !{!210, !211, !212, !213, !214, !215, !216, !217}
!llvm.ident = !{!218}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 441, i32 45}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 443, i32 45}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 445, i32 45}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 447, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 448, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 449, i32 22}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 450, i32 22}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 452, i32 22}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 453, i32 45}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 455, i32 22}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 457, i32 46}
!22 = !{ptr @fops_regval, !23, !"fops_regval", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 31, i32 1}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 164, i32 33}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 165, i32 35}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 166, i32 36}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 177, i32 7}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 148, i32 17}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 227, i32 16}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 228, i32 16}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 229, i32 6}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 229, i32 11}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 229, i32 17}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 229, i32 23}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 229, i32 29}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 230, i32 2}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 232, i32 16}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 233, i32 11}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 233, i32 17}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 233, i32 23}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 233, i32 30}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 233, i32 37}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 233, i32 44}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 234, i32 6}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 234, i32 13}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 235, i32 2}
!73 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 238, i32 11}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 238, i32 19}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 238, i32 27}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 238, i32 35}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 238, i32 43}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 238, i32 51}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 239, i32 6}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 239, i32 14}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 240, i32 2}
!93 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 242, i32 16}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 244, i32 22}
!99 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 245, i32 2}
!101 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 247, i32 16}
!105 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 249, i32 22}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 249, i32 30}
!109 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 249, i32 38}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 249, i32 47}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 250, i32 2}
!115 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 251, i32 2}
!119 = !{ptr @.str.64, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.65, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.66, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 252, i32 2}
!123 = !{ptr @.str.67, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.68, !122, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.69, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 253, i32 2}
!127 = !{ptr @.str.70, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.71, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.72, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 254, i32 2}
!131 = !{ptr @.str.73, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.74, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.75, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 255, i32 2}
!135 = !{ptr @.str.76, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.77, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.78, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 256, i32 2}
!139 = !{ptr @.str.79, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.80, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.81, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 257, i32 2}
!143 = !{ptr @.str.82, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.83, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.84, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 258, i32 2}
!147 = !{ptr @.str.85, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.86, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.87, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 259, i32 2}
!151 = !{ptr @.str.88, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.89, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.90, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 260, i32 2}
!155 = !{ptr @.str.91, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.92, !154, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.93, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 191, i32 19}
!159 = !{ptr @.str.94, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 194, i32 21}
!161 = !{ptr @.str.95, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 194, i32 29}
!163 = !{ptr @.str.96, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 196, i32 21}
!165 = !{ptr @.str.97, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 197, i32 17}
!167 = !{ptr @mt7921_tx_stats_fops, !168, !"mt7921_tx_stats_fops", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 122, i32 1}
!169 = !{ptr @.str.98, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 106, i32 17}
!171 = !{ptr @.str.99, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 108, i32 20}
!173 = !{ptr @.str.100, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 111, i32 21}
!175 = !{ptr @.str.101, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 80, i32 19}
!177 = !{ptr @.str.102, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 82, i32 19}
!179 = !{ptr @.str.103, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 84, i32 20}
!181 = !{ptr @.str.104, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 86, i32 17}
!183 = !{ptr @.str.105, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 88, i32 20}
!185 = !{ptr @.str.106, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 91, i32 19}
!187 = !{ptr @fops_fw_debug, !188, !"fops_fw_debug", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 58, i32 1}
!189 = !{ptr @.str.107, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @fops_pm, !191, !"fops_pm", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 318, i32 1}
!192 = !{ptr @fops_pm_idle_timeout, !193, !"fops_pm_idle_timeout", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 393, i32 1}
!194 = !{ptr @fops_reset, !195, !"fops_reset", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 417, i32 1}
!196 = !{ptr @.str.108, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 364, i32 16}
!198 = !{ptr @.str.109, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 368, i32 16}
!200 = !{ptr @fops_ds, !201, !"fops_ds", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 347, i32 1}
!202 = !{ptr @.str.110, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 425, i32 16}
!204 = !{ptr @.str.111, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 426, i32 16}
!206 = !{ptr @.str.112, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 427, i32 16}
!208 = !{ptr @.str.113, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/debugfs.c", i32 428, i32 16}
!210 = !{i32 1, !"wchar_size", i32 2}
!211 = !{i32 1, !"min_enum_size", i32 4}
!212 = !{i32 8, !"branch-target-enforcement", i32 0}
!213 = !{i32 8, !"sign-return-address", i32 0}
!214 = !{i32 8, !"sign-return-address-all", i32 0}
!215 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!216 = !{i32 7, !"uwtable", i32 1}
!217 = !{i32 7, !"frame-pointer", i32 2}
!218 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!219 = !{i8 0, i8 2}
