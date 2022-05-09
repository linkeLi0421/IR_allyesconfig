; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt7615_init_debugfs\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7615_init_debugfs\09\09\09\09"
module asm "\09.long\09__crc_mt7615_init_debugfs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7615_init_debugfs:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7615_init_debugfs\22\09\09\09\09\09"
module asm "__kstrtabns_mt7615_init_debugfs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.mt7615_dev = type { %union.anon, ptr, %struct.tasklet_struct, %struct.mt7615_phy, i64, i16, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, %struct.list_head, %struct.spinlock, %struct.anon.155, i32, i8, i8, i8, i8, %struct.work_struct, %struct.list_head, i32, i32, i32, %struct.mt76_connac_pm, %struct.mt76_connac_coredump, [48 x i8] }
%union.anon = type { %struct.mt76_dev }
%struct.mt7615_phy = type { ptr, ptr, ptr, i8, i32, i64, i16, i8, i32, i32, i32, i8, i8, i16, i8, i8, i8, i32, i32, i32, %struct.mib_stats, %struct.sk_buff_head, %struct.delayed_work, %struct.work_struct, %struct.timer_list, %struct.wait_queue_head, i8, %struct.anon.146 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.146 = type { ptr, i16, [4 x i8], [4 x i8], [4 x i8] }
%struct.anon.155 = type { i8, i32, i16, i16 }
%struct.mt76_connac_pm = type { i8, i8, i8, %struct.spinlock, [4 x %struct.anon.156], %struct.work_struct, %struct.wait_queue_head, %struct.anon.157, %struct.mutex, %struct.delayed_work, i32, i32, %struct.anon.158 }
%struct.anon.156 = type { ptr, ptr }
%struct.anon.157 = type { %struct.spinlock, i32 }
%struct.anon.158 = type { i32, i32, i32, i32, i32 }
%struct.mt76_connac_coredump = type { %struct.sk_buff_head, %struct.delayed_work, i32 }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
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
%struct.mt76_queue_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@fops_regval = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_regval_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xmit-queues\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acq\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ampdu_stat\00", [21 x i8] zeroinitializer }, align 32
@mt7615_ampdu_stat_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt7615_ampdu_stat_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"scs\00", [28 x i8] zeroinitializer }, align 32
@fops_scs = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_scs_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dbdc\00", [27 x i8] zeroinitializer }, align 32
@fops_dbdc = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_dbdc_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fw_debug\00", [23 x i8] zeroinitializer }, align 32
@fops_fw_debug = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_fw_debug_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"runtime-pm\00", [21 x i8] zeroinitializer }, align 32
@fops_pm = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_pm_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"idle-timeout\00", [19 x i8] zeroinitializer }, align 32
@fops_pm_idle_timeout = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_pm_idle_timeout_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"runtime_pm_stats\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"radio\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dfs_hw_pattern\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pattern_len\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pulse_period\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pulse_width\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pulse_power\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"radar_trigger\00", [18 x i8] zeroinitializer }, align 32
@fops_radar_pattern = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_radar_pattern_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reset_test\00", [21 x i8] zeroinitializer }, align 32
@fops_reset_test = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_reset_test_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ext_mac_addr\00", [19 x i8] zeroinitializer }, align 32
@fops_ext_mac_addr = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @mt7615_ext_mac_addr_read, ptr @mt7615_ext_mac_addr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rf_wfidx\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rf_regidx\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rf_regval\00", [22 x i8] zeroinitializer }, align 32
@fops_rf_reg = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_rf_reg_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"chip_config\00", [20 x i8] zeroinitializer }, align 32
@fops_config = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_config_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sched-quota\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_mt7615_init_debugfs = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7615_init_debugfs = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7615_init_debugfs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7615_init_debugfs to i32), ptr @__kstrtab_mt7615_init_debugfs, ptr @__kstrtabns_mt7615_init_debugfs }, section "___ksymtab_gpl+mt7615_init_debugfs", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0x%08llx\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PDMA0\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCUQ\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MCUFWQ\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:\09queued=%d head=%d tail=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AC%d%d: queued=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0APhy %d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Length: %8d | \00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%3d -%3d | \00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\0ACount:  \00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%8d | \00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BA miss count: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PER: %ld.%1ld%%\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"awake time: %14u\0Adoze time: %15u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Radio %d sensitivity: ofdm=%d cck=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Radio %d false CCA: ofdm=%d cck=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%d=%pM\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pse_data_quota\09%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ple_data_quota\09%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pse_mcu_quota\09%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sched_deficit\09%d\0A\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.49 = private unnamed_addr constant [12 x i8] c"fops_regval\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 544, i32 46 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 549, i32 45 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 551, i32 22 }
@___asan_gen_.61 = private unnamed_addr constant [23 x i8] c"mt7615_ampdu_stat_fops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 321, i32 1 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 552, i32 22 }
@___asan_gen_.67 = private unnamed_addr constant [9 x i8] c"fops_scs\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 553, i32 22 }
@___asan_gen_.73 = private unnamed_addr constant [10 x i8] c"fops_dbdc\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 210, i32 1 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 554, i32 22 }
@___asan_gen_.79 = private unnamed_addr constant [14 x i8] c"fops_fw_debug\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 240, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 555, i32 22 }
@___asan_gen_.85 = private unnamed_addr constant [8 x i8] c"fops_pm\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 139, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 556, i32 22 }
@___asan_gen_.91 = private unnamed_addr constant [21 x i8] c"fops_pm_idle_timeout\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 181, i32 1 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 558, i32 45 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 560, i32 45 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 564, i32 22 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 567, i32 21 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 569, i32 22 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 571, i32 22 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 573, i32 22 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 575, i32 23 }
@___asan_gen_.118 = private unnamed_addr constant [19 x i8] c"fops_radar_pattern\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 48, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 579, i32 22 }
@___asan_gen_.124 = private unnamed_addr constant [16 x i8] c"fops_reset_test\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 265, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 581, i32 22 }
@___asan_gen_.130 = private unnamed_addr constant [18 x i8] c"fops_ext_mac_addr\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 513, i32 37 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 583, i32 21 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 584, i32 21 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 585, i32 29 }
@___asan_gen_.142 = private unnamed_addr constant [12 x i8] c"fops_rf_reg\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 431, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 588, i32 23 }
@___asan_gen_.148 = private unnamed_addr constant [12 x i8] c"fops_config\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 63, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 591, i32 46 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 29, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 393, i32 32 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 394, i32 34 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 395, i32 36 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 403, i32 7 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 377, i32 17 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 288, i32 19 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 290, i32 19 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 292, i32 20 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 294, i32 17 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 298, i32 20 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 299, i32 17 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 301, i32 19 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 302, i32 19 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 92, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 154, i32 16 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 332, i32 16 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 334, i32 16 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 454, i32 49 }
@___asan_gen_.212 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 156, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 527, i32 16 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 528, i32 16 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 529, i32 16 }
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.224 = private constant [55 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 530, i32 16 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__ksymtab_mt7615_init_debugfs, ptr @fops_regval, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mt7615_ampdu_stat_fops, ptr @.str.3, ptr @fops_scs, ptr @.str.4, ptr @fops_dbdc, ptr @.str.5, ptr @fops_fw_debug, ptr @.str.6, ptr @fops_pm, ptr @.str.7, ptr @fops_pm_idle_timeout, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @fops_radar_pattern, ptr @.str.16, ptr @fops_reset_test, ptr @.str.17, ptr @fops_ext_mac_addr, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @fops_rf_reg, ptr @.str.21, ptr @fops_config, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_regval to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7615_ampdu_stat_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_scs to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_dbdc to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_fw_debug to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_pm to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_pm_idle_timeout to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_radar_pattern to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_reset_test to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_ext_mac_addr to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_rf_reg to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_config to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7615_init_debugfs(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mt76_register_debugfs_fops(ptr noundef %dev, ptr noundef nonnull @fops_regval) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rev.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %0 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rev.i.i, align 4
  %2 = and i32 %1, -327680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1980825600, i32 %2)
  %3 = icmp eq i32 %2, 1980825600
  %dev3 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 8
  %mt7615_queues_read.mt76_queues_read = select i1 %3, ptr @mt7615_queues_read, ptr @mt76_queues_read
  tail call void @debugfs_create_devm_seqfile(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull %call, ptr noundef nonnull %mt7615_queues_read.mt76_queues_read) #9
  %dev6 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %6 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev6, align 8
  tail call void @debugfs_create_devm_seqfile(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull %call, ptr noundef nonnull @mt7615_queues_acq) #9
  %call7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef nonnull %call, ptr noundef %dev, ptr noundef nonnull @mt7615_ampdu_stat_fops) #9
  %call8 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %dev, ptr noundef nonnull @fops_scs) #9
  %call9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %dev, ptr noundef nonnull @fops_dbdc) #9
  %call10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %dev, ptr noundef nonnull @fops_fw_debug) #9
  %call11 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %dev, ptr noundef nonnull @fops_pm) #9
  %call12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %dev, ptr noundef nonnull @fops_pm_idle_timeout) #9
  %8 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev6, align 8
  tail call void @debugfs_create_devm_seqfile(ptr noundef %9, ptr noundef nonnull @.str.8, ptr noundef nonnull %call, ptr noundef nonnull @mt7615_pm_stats) #9
  %10 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev6, align 8
  tail call void @debugfs_create_devm_seqfile(ptr noundef %11, ptr noundef nonnull @.str.9, ptr noundef nonnull %call, ptr noundef nonnull @mt7615_radio_read) #9
  %12 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rev.i.i, align 4
  %14 = and i32 %13, -327680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1980825600, i32 %14)
  %15 = icmp eq i32 %14, 1980825600
  br i1 %15, label %if.then16, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %hw_pattern = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 17
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef nonnull %call, ptr noundef %hw_pattern) #9
  %radar_pattern = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 16
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.11, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %radar_pattern) #9
  %period = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 16, i32 1
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.12, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %period) #9
  %width = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 16, i32 2
  tail call void @debugfs_create_u16(ptr noundef nonnull @.str.13, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %width) #9
  %power = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 16, i32 3
  tail call void @debugfs_create_u16(ptr noundef nonnull @.str.14, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %power) #9
  %call20 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 128, ptr noundef nonnull %call, ptr noundef %dev, ptr noundef nonnull @fops_radar_pattern) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end.if.end21_crit_edge
  %call22 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 128, ptr noundef nonnull %call, ptr noundef %dev, ptr noundef nonnull @fops_reset_test) #9
  %call23 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %dev, ptr noundef nonnull @fops_ext_mac_addr) #9
  %debugfs_rf_wf = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 24
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.18, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %debugfs_rf_wf) #9
  %debugfs_rf_reg = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 25
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.19, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %debugfs_rf_reg) #9
  %call24 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.20, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %dev, ptr noundef nonnull @fops_rf_reg) #9
  %16 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rev.i.i, align 4
  %shr.i.mask.i = and i32 %17, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i)
  %cmp.i = icmp eq i32 %shr.i.mask.i, 1986199552
  br i1 %cmp.i, label %if.then26, label %if.end21.if.end28_crit_edge

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %dev, ptr noundef nonnull @fops_config) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end21.if.end28_crit_edge
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %18 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus, align 4
  %type = getelementptr inbounds %struct.mt76_bus_ops, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp = icmp eq i32 %21, 2
  br i1 %cmp, label %if.then29, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then29:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev6, align 8
  tail call void @debugfs_create_devm_seqfile(ptr noundef %23, ptr noundef nonnull @.str.22, ptr noundef nonnull %call, ptr noundef nonnull @mt7663s_sched_quota_read) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end28.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then29 ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt76_register_debugfs_fops(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_devm_seqfile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_queues_read(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.24, i32 noundef %11, i32 noundef %conv, i32 noundef %conv14) #9
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
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef %17, i32 noundef %conv.1, i32 noundef %conv14.1) #9
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
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef %23, i32 noundef %conv.2, i32 noundef %conv14.2) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_queues_read(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_queues_acq(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #9
  %rev.i.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 39
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %reg_map = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.080 = phi i32 [ 0, %entry ], [ %inc46, %cleanup.for.body_crit_edge ]
  %rem.urem = and i32 %i.080, 3
  %div.udiv82 = lshr i32 %i.080, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rem.urem)
  %cmp1 = icmp eq i32 %rem.urem, 3
  br i1 %cmp1, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rev.i.i, align 4
  %shr.i.mask.i = and i32 %5, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i)
  %cmp.i = icmp eq i32 %shr.i.mask.i, 1986199552
  br i1 %cmp.i, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_map, align 8
  %arrayidx = getelementptr i32, ptr %11, i32 7
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %mul = shl i32 %div.udiv82, 4
  %add = add i32 %mul, 768
  %shl = shl nuw nsw i32 %rem.urem, 2
  %add3 = or i32 %add, %shl
  %add4 = add i32 %add3, %13
  %call5 = tail call i32 %9(ptr noundef %3, i32 noundef %add4) #9
  %shl6 = shl i32 %div.udiv82, 8
  %shl17 = shl nuw nsw i32 %rem.urem, 5
  br label %for.body9

for.body9:                                        ; preds = %for.inc.for.body9_crit_edge, %if.end
  %qlen.079 = phi i32 [ 0, %if.end ], [ %qlen.1, %for.inc.for.body9_crit_edge ]
  %j.078 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body9_crit_edge ]
  %shl10 = shl nuw i32 1, %j.078
  %and = and i32 %shl10, %call5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end12, label %for.body9.for.inc_crit_edge

for.body9.for.inc_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end12:                                         ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wr, align 4
  %18 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_map, align 8
  %arrayidx15 = getelementptr i32, ptr %19, i32 7
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx15, align 4
  %add16 = add i32 %21, 432
  %add18 = add nuw nsw i32 %j.078, %shl17
  %or = or i32 %shl6, %add18
  %or19 = or i32 %or, -2147450880
  tail call void %17(ptr noundef %3, i32 noundef %add16, i32 noundef %or19) #9
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_map, align 8
  %arrayidx35 = getelementptr i32, ptr %27, i32 7
  %28 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx35, align 4
  %add36 = add i32 %29, 444
  %call37 = tail call i32 %25(ptr noundef %3, i32 noundef %add36) #9
  %and38 = and i32 %call37, 4095
  %add39 = add i32 %and38, %qlen.079
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %for.body9.for.inc_crit_edge
  %qlen.1 = phi i32 [ %qlen.079, %for.body9.for.inc_crit_edge ], [ %add39, %if.end12 ]
  %inc = add nuw nsw i32 %j.078, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body9_crit_edge

for.inc.for.body9_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body9

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.28, i32 noundef %rem.urem, i32 noundef %div.udiv82, i32 noundef %qlen.1) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.lhs.true.cleanup_crit_edge
  %inc46 = add nuw nsw i32 %i.080, 1
  %exitcond81.not = icmp eq i32 %inc46, 16
  br i1 %exitcond81.not, label %for.end47, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end47:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_pm_stats(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %awake_time2 = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27, i32 12, i32 1
  %4 = ptrtoint ptr %awake_time2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %awake_time2, align 4
  %doze_time4 = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27, i32 12, i32 3
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
  call void @__sanitizer_cov_trace_pc() #11
  %stats = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stats, align 4
  %sub = add i32 %11, %5
  %add = sub i32 %sub, %13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %last_doze_event = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 27, i32 12, i32 2
  %15 = ptrtoint ptr %last_doze_event to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_doze_event, align 4
  %sub8 = add i32 %14, %7
  %add9 = sub i32 %sub8, %16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %awake_time.0 = phi i32 [ %5, %if.else ], [ %add, %if.then ]
  %doze_time.0 = phi i32 [ %add9, %if.else ], [ %7, %if.then ]
  %call10 = tail call i32 @jiffies_to_msecs(i32 noundef %awake_time.0) #9
  %call11 = tail call i32 @jiffies_to_msecs(i32 noundef %doze_time.0) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.38, i32 noundef %call10, i32 noundef %call11) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_radio_read(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %phy = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %phy, null
  br i1 %tobool.not.i, label %entry.mt7615_radio_read_phy.exit_crit_edge, label %if.end.i

entry.mt7615_radio_read_phy.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7615_radio_read_phy.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ofdm_sensitivity.i = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 3, i32 11
  %4 = ptrtoint ptr %ofdm_sensitivity.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ofdm_sensitivity.i, align 8
  %conv3.i = sext i8 %5 to i32
  %cck_sensitivity.i = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %cck_sensitivity.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cck_sensitivity.i, align 1
  %conv4.i = sext i8 %7 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.39, i32 noundef 0, i32 noundef %conv3.i, i32 noundef %conv4.i) #9
  %false_cca_ofdm.i = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 3, i32 9
  %8 = ptrtoint ptr %false_cca_ofdm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %false_cca_ofdm.i, align 8
  %false_cca_cck.i = getelementptr inbounds %struct.mt7615_dev, ptr %3, i32 0, i32 3, i32 10
  %10 = ptrtoint ptr %false_cca_cck.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %false_cca_cck.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef %9, i32 noundef %11) #9
  br label %mt7615_radio_read_phy.exit

mt7615_radio_read_phy.exit:                       ; preds = %if.end.i, %entry.mt7615_radio_read_phy.exit_crit_edge
  %phy2.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy2.i, align 8
  %tobool.not.i5 = icmp eq ptr %13, null
  br i1 %tobool.not.i5, label %mt7615_radio_read_phy.exit.mt7615_radio_read_phy.exit20_crit_edge, label %mt7615_ext_phy.exit

mt7615_radio_read_phy.exit.mt7615_radio_read_phy.exit20_crit_edge: ; preds = %mt7615_radio_read_phy.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7615_radio_read_phy.exit20

mt7615_ext_phy.exit:                              ; preds = %mt7615_radio_read_phy.exit
  %priv.i = getelementptr inbounds %struct.mt76_phy, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i, align 8
  %tobool.not.i7 = icmp eq ptr %15, null
  br i1 %tobool.not.i7, label %mt7615_ext_phy.exit.mt7615_radio_read_phy.exit20_crit_edge, label %if.end.i19

mt7615_ext_phy.exit.mt7615_radio_read_phy.exit20_crit_edge: ; preds = %mt7615_ext_phy.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7615_radio_read_phy.exit20

if.end.i19:                                       ; preds = %mt7615_ext_phy.exit
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private, align 8
  %driver_data.i.i9 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i9, align 4
  %phy1.i10 = getelementptr inbounds %struct.mt7615_dev, ptr %19, i32 0, i32 3
  %cmp.i11 = icmp ne ptr %phy1.i10, %15
  %conv.i12 = zext i1 %cmp.i11 to i32
  %ofdm_sensitivity.i13 = getelementptr inbounds %struct.mt7615_phy, ptr %15, i32 0, i32 11
  %20 = ptrtoint ptr %ofdm_sensitivity.i13 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ofdm_sensitivity.i13, align 8
  %conv3.i14 = sext i8 %21 to i32
  %cck_sensitivity.i15 = getelementptr inbounds %struct.mt7615_phy, ptr %15, i32 0, i32 12
  %22 = ptrtoint ptr %cck_sensitivity.i15 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cck_sensitivity.i15, align 1
  %conv4.i16 = sext i8 %23 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.39, i32 noundef %conv.i12, i32 noundef %conv3.i14, i32 noundef %conv4.i16) #9
  %false_cca_ofdm.i17 = getelementptr inbounds %struct.mt7615_phy, ptr %15, i32 0, i32 9
  %24 = ptrtoint ptr %false_cca_ofdm.i17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %false_cca_ofdm.i17, align 8
  %false_cca_cck.i18 = getelementptr inbounds %struct.mt7615_phy, ptr %15, i32 0, i32 10
  %26 = ptrtoint ptr %false_cca_cck.i18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %false_cca_cck.i18, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.40, i32 noundef %conv.i12, i32 noundef %25, i32 noundef %27) #9
  br label %mt7615_radio_read_phy.exit20

mt7615_radio_read_phy.exit20:                     ; preds = %if.end.i19, %mt7615_ext_phy.exit.mt7615_radio_read_phy.exit20_crit_edge, %mt7615_radio_read_phy.exit.mt7615_radio_read_phy.exit20_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u8(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u16(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7663s_sched_quota_read(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.45, i32 noundef %5) #9
  %ple_data_quota = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 59, i32 0, i32 6, i32 4
  %6 = ptrtoint ptr %ple_data_quota to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ple_data_quota, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.46, i32 noundef %7) #9
  %pse_mcu_quota = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 59, i32 0, i32 8
  %8 = ptrtoint ptr %pse_mcu_quota to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pse_mcu_quota, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.47, i32 noundef %9) #9
  %deficit = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 59, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %deficit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %deficit, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.48, i32 noundef %11) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @mt7615_reg_get, ptr noundef nonnull @mt7615_reg_set, ptr noundef nonnull @.str.23) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_reg_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %data, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %data, ptr noundef %pm) #9
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
  %call = tail call i32 %3(ptr noundef %data, i32 noundef %5) #9
  %conv = zext i32 %call to i64
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %val, align 8
  tail call void @mt76_connac_power_save_sched(ptr noundef %data, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_reg_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %data, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %data, ptr noundef %pm) #9
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
  tail call void %3(ptr noundef %data, i32 noundef %5, i32 noundef %conv) #9
  tail call void @mt76_connac_power_save_sched(ptr noundef %data, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
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
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_ampdu_stat_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mt7615_ampdu_stat_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_ampdu_stat_show(ptr noundef %file, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %1, ptr noundef %pm) #9
  %phy = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 3
  tail call fastcc void @mt7615_ampdu_stat_read_phy(ptr noundef %phy, ptr noundef %file)
  %phy2.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy2.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.mt7615_ext_phy.exit_crit_edge, label %if.end.i

entry.mt7615_ext_phy.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7615_ext_phy.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv.i = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  br label %mt7615_ext_phy.exit

mt7615_ext_phy.exit:                              ; preds = %if.end.i, %entry.mt7615_ext_phy.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ null, %entry.mt7615_ext_phy.exit_crit_edge ]
  tail call fastcc void @mt7615_ampdu_stat_read_phy(ptr noundef %retval.0.i, ptr noundef %file)
  tail call void @mt76_connac_power_save_sched(ptr noundef %1, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7615_ampdu_stat_read_phy(ptr noundef readonly %phy, ptr noundef %file) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %phy, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %reg_map = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_map, align 8
  %rev.i.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 39
  %4 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rev.i.i, align 4
  %shr.i.mask.i = and i32 %5, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i)
  %cmp.i = icmp eq i32 %shr.i.mask.i, 1986199552
  %. = select i1 %cmp.i, i32 18, i32 10
  %arrayidx3 = getelementptr i32, ptr %3, i32 %.
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %.107 = select i1 %cmp.i, i32 1208, i32 96
  %add4 = add i32 %7, %.107
  %phy5 = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 3
  %cmp = icmp ne ptr %phy5, %phy
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call6 = tail call i32 %11(ptr noundef %1, i32 noundef %add4) #9
  %and = and i32 %call6, 63
  %add8 = add nuw nsw i32 %and, 1
  %12 = lshr i32 %call6, 8
  %and.1 = and i32 %12, 63
  %add8.1 = add nuw nsw i32 %and.1, 1
  %13 = lshr i32 %call6, 16
  %and.2 = and i32 %13, 63
  %add8.2 = add nuw nsw i32 %and.2, 1
  %14 = lshr i32 %call6, 24
  %and.3 = and i32 %14, 63
  %add8.3 = add nuw nsw i32 %and.3, 1
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %add12 = add i32 %add4, 4
  %call13 = tail call i32 %18(ptr noundef %1, i32 noundef %add12) #9
  %and19 = and i32 %call13, 63
  %add20 = add nuw nsw i32 %and19, 1
  %19 = lshr i32 %call13, 8
  %and19.1 = and i32 %19, 63
  %add20.1 = add nuw nsw i32 %and19.1, 1
  %20 = lshr i32 %call13, 16
  %and19.2 = and i32 %20, 63
  %add20.2 = add nuw nsw i32 %and19.2, 1
  %conv = zext i1 %cmp to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.29, i32 noundef %conv) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.30, i32 noundef %add8) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.31, i32 noundef %add8, i32 noundef %add8.1) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.31, i32 noundef %add8.1, i32 noundef %add8.2) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.31, i32 noundef %add8.2, i32 noundef %add8.3) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.31, i32 noundef %add8.3, i32 noundef %add20) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.31, i32 noundef %add20, i32 noundef %add20.1) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.31, i32 noundef %add20.1, i32 noundef %add20.2) #9
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.32) #9
  %cond40 = select i1 %cmp, i32 16, i32 0
  %arrayidx46 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 %cond40
  %21 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx46, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef %22) #9
  %add45.1 = or i32 %cond40, 1
  %arrayidx46.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 %add45.1
  %23 = ptrtoint ptr %arrayidx46.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx46.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef %24) #9
  %add45.2 = or i32 %cond40, 2
  %arrayidx46.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 %add45.2
  %25 = ptrtoint ptr %arrayidx46.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx46.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef %26) #9
  %add45.3 = or i32 %cond40, 3
  %arrayidx46.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 %add45.3
  %27 = ptrtoint ptr %arrayidx46.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx46.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef %28) #9
  %add45.4 = or i32 %cond40, 4
  %arrayidx46.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 %add45.4
  %29 = ptrtoint ptr %arrayidx46.4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx46.4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef %30) #9
  %add45.5 = or i32 %cond40, 5
  %arrayidx46.5 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 %add45.5
  %31 = ptrtoint ptr %arrayidx46.5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx46.5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef %32) #9
  %add45.6 = or i32 %cond40, 6
  %arrayidx46.6 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 40, i32 %add45.6
  %33 = ptrtoint ptr %arrayidx46.6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx46.6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef %34) #9
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.34) #9
  %ba_miss_cnt = getelementptr inbounds %struct.mt7615_phy, ptr %phy, i32 0, i32 20, i32 4
  %35 = ptrtoint ptr %ba_miss_cnt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ba_miss_cnt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.35, i32 noundef %36) #9
  %aggr_per = getelementptr inbounds %struct.mt7615_phy, ptr %phy, i32 0, i32 20, i32 5
  %37 = ptrtoint ptr %aggr_per to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %aggr_per, align 4
  %.frozen = freeze i32 %38
  %div = udiv i32 %.frozen, 10
  %39 = mul i32 %div, 10
  %rem.decomposed = sub i32 %.frozen, %39
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.36, i32 noundef %div, i32 noundef %rem.decomposed) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_scs_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @mt7615_scs_get, ptr noundef nonnull @mt7615_scs_set, ptr noundef nonnull @.str.37) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt7615_scs_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %scs_en = getelementptr inbounds %struct.mt7615_dev, ptr %data, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %scs_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %scs_en, align 2, !range !133
  %2 = zext i8 %1 to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_scs_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mt7615_wait_for_mcu_init(ptr noundef %data) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy = getelementptr inbounds %struct.mt7615_dev, ptr %data, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool = icmp ne i64 %val, 0
  tail call void @mt7615_mac_set_scs(ptr noundef %phy, i1 noundef zeroext %tobool) #9
  %phy2.i = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy2.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %mt7615_ext_phy.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mt7615_ext_phy.exit:                              ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %mt7615_ext_phy.exit.cleanup_crit_edge, label %if.then3

mt7615_ext_phy.exit.cleanup_crit_edge:            ; preds = %mt7615_ext_phy.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %mt7615_ext_phy.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mt7615_mac_set_scs(ptr noundef nonnull %3, i1 noundef zeroext %tobool) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %mt7615_ext_phy.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt7615_wait_for_mcu_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_mac_set_scs(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_dbdc_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @mt7615_dbdc_get, ptr noundef nonnull @mt7615_dbdc_set, ptr noundef nonnull @.str.37) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt7615_dbdc_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy2.i = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy2.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mt7615_ext_phy.exit_crit_edge, label %if.end.i

entry.mt7615_ext_phy.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7615_ext_phy.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %phi.cmp = icmp ne ptr %3, null
  br label %mt7615_ext_phy.exit

mt7615_ext_phy.exit:                              ; preds = %if.end.i, %entry.mt7615_ext_phy.exit_crit_edge
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ false, %entry.mt7615_ext_phy.exit_crit_edge ]
  %4 = zext i1 %retval.0.i to i64
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_dbdc_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mt7615_wait_for_mcu_init(ptr noundef %data) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool.not = icmp eq i64 %val, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @mt7615_register_ext_phy(ptr noundef %data) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mt7615_unregister_ext_phy(ptr noundef %data) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then1, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_register_ext_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_unregister_ext_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_fw_debug_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @mt7615_fw_debug_get, ptr noundef nonnull @mt7615_fw_debug_set, ptr noundef nonnull @.str.37) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt7615_fw_debug_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_debug = getelementptr inbounds %struct.mt7615_dev, ptr %data, i32 0, i32 18
  %0 = ptrtoint ptr %fw_debug to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fw_debug, align 16, !range !133
  %2 = zext i8 %1 to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_fw_debug_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mt7615_wait_for_mcu_init(ptr noundef %data) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool = icmp ne i64 %val, 0
  %fw_debug = getelementptr inbounds %struct.mt7615_dev, ptr %data, i32 0, i32 18
  %frombool = zext i1 %tobool to i8
  %0 = ptrtoint ptr %fw_debug to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %fw_debug, align 16
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %data, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %data, ptr noundef %pm) #9
  %1 = ptrtoint ptr %fw_debug to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fw_debug, align 16, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  %conv = select i1 %tobool2.not, i8 0, i8 2
  %call3 = tail call i32 @mt7615_mcu_fw_log_2_host(ptr noundef %data, i8 noundef zeroext %conv) #9
  tail call void @mt76_connac_power_save_sched(ptr noundef %data, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_mcu_fw_log_2_host(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_pm_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @mt7615_pm_get, ptr noundef nonnull @mt7615_pm_set, ptr noundef nonnull @.str.37) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt7615_pm_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %data, i32 0, i32 27
  %0 = ptrtoint ptr %pm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm, align 4, !range !133
  %2 = zext i8 %1 to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_pm_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pm1 = getelementptr inbounds %struct.mt7615_dev, ptr %data, i32 0, i32 27
  %call = tail call zeroext i1 @mt7615_wait_for_mcu_init(ptr noundef %data) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_ver.i = getelementptr inbounds %struct.mt7615_dev, ptr %data, i32 0, i32 21
  %0 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fw_ver.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.i = icmp ugt i8 %1, 2
  br i1 %cmp.i, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 10
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %type = getelementptr inbounds %struct.mt76_bus_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %pm1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pm1, align 4, !range !133
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %val)
  %cmp5 = icmp eq i64 %8, %val
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %data, ptr noundef %pm1) #9
  %n_beacon_vif = getelementptr inbounds %struct.mt7615_dev, ptr %data, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %n_beacon_vif to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %n_beacon_vif, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not = icmp eq i8 %10, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end12:                                         ; preds = %if.end8
  %11 = ptrtoint ptr %pm1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pm1, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool14.not = icmp eq i8 %12, 0
  br i1 %tobool14.not, label %if.then15, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %stats = getelementptr inbounds %struct.mt7615_dev, ptr %data, i32 0, i32 27, i32 12
  %14 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %stats, align 4
  %15 = load volatile i32, ptr @jiffies, align 128
  %last_doze_event = getelementptr inbounds %struct.mt7615_dev, ptr %data, i32 0, i32 27, i32 12, i32 2
  %16 = ptrtoint ptr %last_doze_event to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %last_doze_event, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool18 = icmp ne i64 %val, 0
  %frombool = zext i1 %tobool18 to i8
  %17 = ptrtoint ptr %pm1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool, ptr %pm1, align 4
  br label %out

out:                                              ; preds = %if.end17, %if.end8.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end17 ], [ -16, %if.end8.out_crit_edge ]
  tail call void @mt76_connac_power_save_sched(ptr noundef %data, ptr noundef %pm1) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %entry.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_pm_idle_timeout_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @mt7615_pm_idle_timeout_get, ptr noundef nonnull @mt7615_pm_idle_timeout_set, ptr noundef nonnull @.str.37) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_pm_idle_timeout_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_timeout = getelementptr inbounds %struct.mt7615_dev, ptr %data, i32 0, i32 27, i32 11
  %0 = ptrtoint ptr %idle_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idle_timeout, align 4
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %1) #9
  %conv = zext i32 %call to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_pm_idle_timeout_set(ptr nocapture noundef writeonly %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %val to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #9
  %idle_timeout = getelementptr inbounds %struct.mt7615_dev, ptr %data, i32 0, i32 27, i32 11
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
define internal i32 @fops_radar_pattern_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef null, ptr noundef nonnull @mt7615_radar_pattern_set, ptr noundef nonnull @.str.37) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_radar_pattern_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mt7615_wait_for_mcu_init(ptr noundef %data) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %data, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %data, ptr noundef %pm) #9
  %call1 = tail call i32 @mt7615_mcu_rdd_send_pattern(ptr noundef %data) #9
  tail call void @mt76_connac_power_save_sched(ptr noundef %data, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_mcu_rdd_send_pattern(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_reset_test_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef null, ptr noundef nonnull @mt7615_reset_test_set, ptr noundef nonnull @.str.37) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_reset_test_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mt7615_wait_for_mcu_init(ptr noundef %data) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @__alloc_skb(i32 noundef 1, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #9
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %data, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i17 = tail call i32 @mt76_connac_pm_wake(ptr noundef %data, ptr noundef %pm) #9
  %queue_ops = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 24
  %0 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue_ops, align 4
  %tx_queue_skb_raw = getelementptr inbounds %struct.mt76_queue_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tx_queue_skb_raw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_queue_skb_raw, align 4
  %q_tx = getelementptr inbounds %struct.mt76_phy, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %q_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q_tx, align 16
  %call5 = tail call i32 %3(ptr noundef %data, ptr noundef %5, ptr noundef nonnull %call.i, i32 noundef 0) #9
  tail call void @mt76_connac_power_save_sched(ptr noundef %data, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_ext_mac_addr_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [705 x i8], align 1
  %addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 705, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 255, i32 705)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #9
  %3 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %muar_mask = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 26
  %reg_map = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 9
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %4 = call ptr @memset(ptr %addr, i32 255, i32 6)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.060 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %ofs.059 = phi i32 [ 0, %entry ], [ %ofs.1, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %muar_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %muar_mask, align 16
  %shl = shl nuw i32 1, %i.060
  %and = and i32 %6, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.end17

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end17:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_map, align 8
  %arrayidx = getelementptr i32, ptr %8, i32 12
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, 608
  %11 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wr, align 4
  %shl19 = shl i32 %i.060, 25
  %or = or i32 %shl19, 65536
  call void %14(ptr noundef %1, i32 noundef %add, i32 noundef %or) #9
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_map, align 8
  %arrayidx23 = getelementptr i32, ptr %20, i32 12
  %21 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx23, align 4
  %add24 = add i32 %22, 604
  %call = call i32 %18(ptr noundef %1, i32 noundef %add24) #9
  %23 = call i32 @llvm.bswap.i32(i32 %call) #9
  %24 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %addr, align 4
  %25 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_map, align 8
  %arrayidx28 = getelementptr i32, ptr %30, i32 12
  %31 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx28, align 4
  %add29 = add i32 %32, 608
  %call30 = call i32 %28(ptr noundef %1, i32 noundef %add29) #9
  %conv = trunc i32 %call30 to i16
  %33 = call i16 @llvm.bswap.i16(i16 %conv) #9
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %3, align 4
  %add.ptr34 = getelementptr i8, ptr %buf, i32 %ofs.059
  %sub = sub i32 705, %ofs.059
  %call36 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr34, i32 noundef %sub, ptr noundef nonnull @.str.41, i32 noundef %i.060, ptr noundef nonnull %addr)
  %add37 = add i32 %call36, %ofs.059
  br label %for.inc

for.inc:                                          ; preds = %do.end17, %for.body.for.inc_crit_edge
  %ofs.1 = phi i32 [ %add37, %do.end17 ], [ %ofs.059, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %call39 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %ofs.1) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #9
  call void @llvm.lifetime.end.p0(i64 705, ptr nonnull %buf) #9
  ret i32 %call39
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_ext_mac_addr_write(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %idx = alloca i32, align 4
  %addr = alloca [6 x i8], align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #9
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %idx, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #9
  %3 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %4 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #9
  %5 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count)
  %cmp = icmp ugt i32 %count, 32
  %6 = call ptr @memset(ptr %buf, i32 255, i32 32)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.then.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %entry
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %count, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.44, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %userbuf, i32 %count, i32 -1226833920) #12, !srcloc !134
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !135

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %count) #9
  %8 = call i32 @llvm.read_register.i32(metadata !123) #9
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !136
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %userbuf, i32 noundef %count) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #9, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.then11.i.i, !prof !135

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %5, align 1
  %call4 = call ptr @strchr(ptr noundef nonnull %buf, i32 noundef 61)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end2
  %13 = ptrtoint ptr %call4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %call4, align 1
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %idx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then6
  %incdec.ptr = getelementptr i8, ptr %call4, i32 1
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %15)
  %cmp10 = icmp ugt i32 %15, 31
  br i1 %cmp10, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end14_crit_edge

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %idx, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %lor.lhs.false.if.end14_crit_edge
  %p.0 = phi ptr [ %incdec.ptr, %lor.lhs.false.if.end14_crit_edge ], [ %buf, %if.else ]
  %call16 = call zeroext i1 @mac_pton(ptr noundef %p.0, ptr noundef nonnull %addr) #9
  br i1 %call16, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr, align 4
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not.i = icmp eq i32 %19, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end18.if.else22_crit_edge

if.end18.if.else22_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else22

is_valid_ether_addr.exit:                         ; preds = %if.end18
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %3, align 4
  %conv.i.i = zext i16 %21 to i32
  %or.i.i = or i32 %18, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i152.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i152.not, label %is_valid_ether_addr.exit.if.else22_crit_edge, label %if.then21

is_valid_ether_addr.exit.if.else22_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else22

if.then21:                                        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx, align 4
  %shl = shl nuw i32 1, %23
  %muar_mask = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 26
  %24 = ptrtoint ptr %muar_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %muar_mask, align 16
  %or = or i32 %25, %shl
  store i32 %or, ptr %muar_mask, align 16
  br label %if.end26

if.else22:                                        ; preds = %is_valid_ether_addr.exit.if.else22_crit_edge, %if.end18.if.else22_crit_edge
  %26 = call ptr @memset(ptr %addr, i32 0, i32 6)
  %27 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idx, align 4
  %shl24 = shl nuw i32 1, %28
  %neg = xor i32 %shl24, -1
  %muar_mask25 = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 26
  %29 = ptrtoint ptr %muar_mask25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %muar_mask25, align 16
  %and = and i32 %30, %neg
  store i32 %and, ptr %muar_mask25, align 16
  br label %if.end26

if.end26:                                         ; preds = %if.else22, %if.then21
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %31 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmw, align 4
  %reg_map = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 9
  %35 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_map, align 8
  %arrayidx27 = getelementptr i32, ptr %36, i32 12
  %37 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx27, align 4
  %add = add i32 %38, 36
  %call40 = call i32 %34(ptr noundef %1, i32 noundef %add, i32 noundef -1073741824, i32 noundef 1073741824) #9
  %39 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wr, align 4
  %43 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_map, align 8
  %arrayidx43 = getelementptr i32, ptr %44, i32 12
  %45 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx43, align 4
  %add44 = add i32 %46, 604
  %47 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addr, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48) #9
  call void %42(ptr noundef %1, i32 noundef %add44, i32 noundef %49) #9
  %50 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %idx, align 4
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %3, align 4
  %54 = call i16 @llvm.bswap.i16(i16 %53) #9
  %conv = zext i16 %54 to i32
  %55 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_map, align 8
  %arrayidx50 = getelementptr i32, ptr %56, i32 12
  %57 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx50, align 4
  %add51 = add i32 %58, 608
  %59 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus, align 4
  %wr48 = getelementptr inbounds %struct.mt76_bus_ops, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %wr48 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wr48, align 4
  %mul75 = shl i32 %51, 25
  %and77 = and i32 %mul75, 1040187392
  %or78 = or i32 %and77, %conv
  %or80 = or i32 %or78, 196608
  call void %62(ptr noundef %1, i32 noundef %add51, i32 noundef %or80) #9
  %63 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus, align 4
  %rmw82 = getelementptr inbounds %struct.mt76_bus_ops, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %rmw82 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmw82, align 4
  %67 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_map, align 8
  %arrayidx84 = getelementptr i32, ptr %68, i32 12
  %69 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx84, align 4
  %add85 = add i32 %70, 36
  %muar_mask93 = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 26
  %71 = ptrtoint ptr %muar_mask93 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %muar_mask93, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool118.not = icmp eq i32 %72, 0
  %shl123 = select i1 %tobool118.not, i32 0, i32 1073741824
  %call125 = call i32 %66(ptr noundef %1, i32 noundef %add85, i32 noundef -1073741824, i32 noundef %shl123) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end14.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end26 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then6.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mac_pton(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_rf_reg_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @mt7615_rf_reg_get, ptr noundef nonnull @mt7615_rf_reg_set, ptr noundef nonnull @.str.23) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_rf_reg_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_rf_wf = getelementptr inbounds %struct.mt7615_dev, ptr %data, i32 0, i32 24
  %0 = ptrtoint ptr %debugfs_rf_wf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debugfs_rf_wf, align 8
  %debugfs_rf_reg = getelementptr inbounds %struct.mt7615_dev, ptr %data, i32 0, i32 25
  %2 = ptrtoint ptr %debugfs_rf_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debugfs_rf_reg, align 4
  %call = tail call i32 @mt7615_rf_rr(ptr noundef %data, i32 noundef %1, i32 noundef %3) #9
  %conv = zext i32 %call to i64
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_rf_reg_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_rf_wf = getelementptr inbounds %struct.mt7615_dev, ptr %data, i32 0, i32 24
  %0 = ptrtoint ptr %debugfs_rf_wf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debugfs_rf_wf, align 8
  %debugfs_rf_reg = getelementptr inbounds %struct.mt7615_dev, ptr %data, i32 0, i32 25
  %2 = ptrtoint ptr %debugfs_rf_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debugfs_rf_reg, align 4
  %conv = trunc i64 %val to i32
  %call = tail call i32 @mt7615_rf_wr(ptr noundef %data, i32 noundef %1, i32 noundef %3, i32 noundef %conv) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_rf_rr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_rf_wr(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_config_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef null, ptr noundef nonnull @mt7615_config, ptr noundef nonnull @.str.37) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_config(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %data, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %data, ptr noundef %pm) #9
  %call = tail call i32 @mt76_connac_mcu_chip_config(ptr noundef %data) #9
  tail call void @mt76_connac_power_save_sched(ptr noundef %data, ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_chip_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !107, !109, !111, !113, !115, !117, !119, !121}
!llvm.named.register.sp = !{!123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 544, i32 46}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 549, i32 45}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 551, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 552, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 553, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 554, i32 22}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 555, i32 22}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 556, i32 22}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 558, i32 45}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 560, i32 45}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 564, i32 22}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 567, i32 21}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 569, i32 22}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 571, i32 22}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 573, i32 22}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 575, i32 23}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 579, i32 22}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 581, i32 22}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 583, i32 21}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 584, i32 21}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 585, i32 29}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 588, i32 23}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 591, i32 46}
!46 = !{ptr @__ksymtab_mt7615_init_debugfs, !47, !"__ksymtab_mt7615_init_debugfs", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 596, i32 1}
!48 = !{ptr @fops_regval, !49, !"fops_regval", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 29, i32 1}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 393, i32 32}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 394, i32 34}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 395, i32 36}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 403, i32 7}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 377, i32 17}
!61 = !{ptr @mt7615_ampdu_stat_fops, !62, !"mt7615_ampdu_stat_fops", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 321, i32 1}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 288, i32 19}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 290, i32 19}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 292, i32 20}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 294, i32 17}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 298, i32 20}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 299, i32 17}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 301, i32 19}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 302, i32 19}
!79 = !{ptr @fops_scs, !80, !"fops_scs", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 92, i32 1}
!81 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @fops_dbdc, !83, !"fops_dbdc", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 210, i32 1}
!84 = !{ptr @fops_fw_debug, !85, !"fops_fw_debug", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 240, i32 1}
!86 = !{ptr @fops_pm, !87, !"fops_pm", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 139, i32 1}
!88 = !{ptr @fops_pm_idle_timeout, !89, !"fops_pm_idle_timeout", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 181, i32 1}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 154, i32 16}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 332, i32 16}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 334, i32 16}
!96 = !{ptr @fops_radar_pattern, !97, !"fops_radar_pattern", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 48, i32 1}
!98 = !{ptr @fops_reset_test, !99, !"fops_reset_test", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 265, i32 1}
!100 = !{ptr @fops_ext_mac_addr, !101, !"fops_ext_mac_addr", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 513, i32 37}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 454, i32 49}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!106 = distinct !{null, !105, !"<string literal>", i1 false, i1 false}
!107 = distinct !{null, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!111 = !{ptr @fops_rf_reg, !112, !"fops_rf_reg", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 431, i32 1}
!113 = !{ptr @fops_config, !114, !"fops_config", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 63, i32 1}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 527, i32 16}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 528, i32 16}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 529, i32 16}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c", i32 530, i32 16}
!123 = !{!"sp"}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i8 0, i8 2}
!134 = !{i64 2153305478, i64 2153305503}
!135 = !{!"branch_weights", i32 2000, i32 1}
!136 = !{i64 5801033}
!137 = !{i64 5801230}
!138 = !{i64 2153286463}
