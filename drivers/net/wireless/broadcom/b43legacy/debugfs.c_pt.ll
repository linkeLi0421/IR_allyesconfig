; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43legacy/debugfs.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43legacy/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.b43legacy_debugfs_fops = type { ptr, ptr, %struct.file_operations, i32, i8 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.b43legacy_wldev = type { ptr, ptr, %struct.atomic_t, i32, i8, i8, i8, i8, i8, %struct.b43legacy_phy, %union.anon.131, %struct.b43legacy_stats, %struct.b43legacy_led, %struct.b43legacy_led, %struct.b43legacy_led, %struct.b43legacy_led, i32, [6 x i32], i32, %struct.b43legacy_noise_calculation, i32, %struct.tasklet_struct, %struct.delayed_work, i32, %struct.work_struct, i16, i8, [58 x %struct.b43legacy_key], %struct.b43legacy_firmware, ptr, %struct.completion, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.b43legacy_phy = type { i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, %struct.anon.128, [2 x i16], [2 x i16], ptr, ptr, i8, i32, i32, ptr, i16, i16, i16, i16, i16, i8, [2 x i16], %struct.anon.129, %struct.anon.130, i32, [26 x i32], [2 x i16], i32, [64 x i8], i8, i16, i16, %struct.atomic_t, i8, i8 }
%struct.anon.128 = type { i8, i16, i16 }
%struct.anon.129 = type { i16, i16, i16, i16 }
%struct.anon.130 = type { i16 }
%union.anon.131 = type { %struct.b43legacy_dma }
%struct.b43legacy_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.b43legacy_stats = type { i8, i32, i32 }
%struct.b43legacy_led = type { ptr, %struct.led_classdev, i8, i8, [32 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43legacy_noise_calculation = type { i8, i8, i8, [8 x [4 x i8]] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.132, i32 }
%union.anon.132 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43legacy_key = type { ptr, i8, i8 }
%struct.b43legacy_firmware = type { ptr, ptr, ptr, ptr, i16, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.b43legacy_dfsentry = type { ptr, ptr, %struct.b43legacy_dfs_file, %struct.b43legacy_dfs_file, %struct.b43legacy_dfs_file, %struct.b43legacy_dfs_file, %struct.b43legacy_dfs_file, %struct.b43legacy_dfs_file, %struct.b43legacy_dfs_file, %struct.b43legacy_txstatus_log, [5 x i8] }
%struct.b43legacy_dfs_file = type { ptr, i32 }
%struct.b43legacy_txstatus_log = type { ptr, i32, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.b43legacy_wl = type { ptr, ptr, %struct.spinlock, %struct.mutex, %struct.spinlock, %struct.work_struct, ptr, [6 x i8], [6 x i8], i32, i8, i32, %struct.ieee80211_low_level_stats, %struct.hwrng, i8, [31 x i8], %struct.list_head, i8, i8, i8, ptr, i8, i8, i8, %struct.work_struct, [4 x %struct.b43legacy_qos_params], %struct.work_struct, [4 x %struct.sk_buff_head], [4 x i8] }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.b43legacy_qos_params = type { %struct.ieee80211_tx_queue_params }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.124, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.124 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.123, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.anon.123 = type { i64, i64, i8 }
%struct.b43legacy_txstatus = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/wireless/broadcom/b43legacy/debugfs.c\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"debugfs: add device OOM\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"debugfs: add device txstatus OOM\0A\00", [62 x i8] zeroinitializer }, align 32
@b43legacy_debugfs_add_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&log->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@rootdir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tsf\00", [28 x i8] zeroinitializer }, align 32
@fops_tsf = internal global { %struct.b43legacy_debugfs_fops, [48 x i8] } { %struct.b43legacy_debugfs_fops { ptr @tsf_read_file, ptr @tsf_write_file, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @b43legacy_debugfs_read, ptr @b43legacy_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 8, i8 1 }, [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ucode_regs\00", [21 x i8] zeroinitializer }, align 32
@fops_ucode_regs = internal global { %struct.b43legacy_debugfs_fops, [48 x i8] } { %struct.b43legacy_debugfs_fops { ptr @ucode_regs_read_file, ptr null, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @b43legacy_debugfs_read, ptr @b43legacy_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 16, i8 1 }, [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"shm\00", [28 x i8] zeroinitializer }, align 32
@fops_shm = internal global { %struct.b43legacy_debugfs_fops, [48 x i8] } { %struct.b43legacy_debugfs_fops { ptr @shm_read_file, ptr null, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @b43legacy_debugfs_read, ptr @b43legacy_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 24, i8 1 }, [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"txstat\00", [25 x i8] zeroinitializer }, align 32
@fops_txstat = internal global { %struct.b43legacy_debugfs_fops, [48 x i8] } { %struct.b43legacy_debugfs_fops { ptr @txstat_read_file, ptr null, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @b43legacy_debugfs_read, ptr @b43legacy_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 32, i8 0 }, [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"restart\00", [24 x i8] zeroinitializer }, align 32
@fops_restart = internal global { %struct.b43legacy_debugfs_fops, [48 x i8] } { %struct.b43legacy_debugfs_fops { ptr null, ptr @restart_write_file, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @b43legacy_debugfs_read, ptr @b43legacy_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 48, i8 1 }, [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"b43legacy\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"0x%08x%08x\0A\00", [20 x i8] zeroinitializer }, align 32
@tsf_read_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013b43legacy: fappend overflow\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tsf_read_file\00", [18 x i8] zeroinitializer }, align 32
@tsf_read_file._entry_ptr = internal global ptr @tsf_read_file._entry, section ".printk_index", align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llu\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"r%d = 0x%04x\0A\00", [18 x i8] zeroinitializer }, align 32
@ucode_regs_read_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.19, ptr @.str, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ucode_regs_read_file\00", [43 x i8] zeroinitializer }, align 32
@ucode_regs_read_file._entry_ptr = internal global ptr @ucode_regs_read_file._entry, section ".printk_index", align 4
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Nothing transmitted, yet\0A\00", [38 x i8] zeroinitializer }, align 32
@txstat_read_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.21, ptr @.str, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"txstat_read_file\00", [47 x i8] zeroinitializer }, align 32
@txstat_read_file._entry_ptr = internal global ptr @txstat_read_file._entry, section ".printk_index", align 4
@.str.22 = internal constant { [157 x i8], [35 x i8] } { [157 x i8] c"b43legacy TX status reports:\0A\0Aindex | cookie | seq | phy_stat | frame_count | rts_count | supp_reason | pm_indicated | intermediate | for_ampdu | acked\0A---\0A\00", [35 x i8] zeroinitializer }, align 32
@txstat_read_file._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.21, ptr @.str, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@txstat_read_file._entry_ptr.24 = internal global ptr @txstat_read_file._entry.23, section ".printk_index", align 4
@.str.25 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%03d | 0x%04X | 0x%04X | 0x%02X | 0x%X | 0x%X | %u | %u | %u | %u | %u\0A\00", [56 x i8] zeroinitializer }, align 32
@txstat_read_file._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.21, ptr @.str, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@txstat_read_file._entry_ptr.27 = internal global ptr @txstat_read_file._entry.26, section ".printk_index", align 4
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"manually restarted\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"debug_xmitpower\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"debug_dmaoverflow\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"debug_dmaverbose\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"debug_pwork_fast\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"debug_pwork_stop\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 364, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 367, i32 25 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 375, i32 25 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 380, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 384, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [8 x i8] c"rootdir\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 29, i32 23 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 395, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [9 x i8] c"fops_tsf\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 327, i32 1 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 396, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"fops_ucode_regs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 328, i32 1 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 397, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [9 x i8] c"fops_shm\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 329, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 398, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [12 x i8] c"fops_txstat\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 330, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 399, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [13 x i8] c"fops_restart\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 331, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 445, i32 31 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 72, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 84, i32 18 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 230, i32 6 }
@___asan_gen_.107 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 214, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 156, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 98, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 135, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 138, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 149, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 178, i32 37 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 349, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 350, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 351, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 352, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [53 x i8] c"../drivers/net/wireless/broadcom/b43legacy/debugfs.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 353, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @tsf_read_file._entry, ptr @tsf_read_file._entry_ptr, ptr @txstat_read_file._entry, ptr @txstat_read_file._entry.23, ptr @txstat_read_file._entry.26, ptr @txstat_read_file._entry_ptr, ptr @txstat_read_file._entry_ptr.24, ptr @txstat_read_file._entry_ptr.27, ptr @ucode_regs_read_file._entry, ptr @ucode_regs_read_file._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @b43legacy_debugfs_add_device.__key, ptr @.str.3, ptr @.str.4, ptr @rootdir, ptr @.str.5, ptr @fops_tsf, ptr @.str.6, ptr @fops_ucode_regs, ptr @.str.7, ptr @fops_shm, ptr @.str.8, ptr @fops_txstat, ptr @.str.9, ptr @fops_restart, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_debugfs_add_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rootdir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_tsf to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_ucode_regs to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_shm to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_txstat to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_restart to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsf_read_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucode_regs_read_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txstat_read_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 157, i32 192, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txstat_read_file._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txstat_read_file._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @b43legacy_debug(ptr nocapture noundef readonly %dev, i32 noundef %feature) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dfsentry = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %dfsentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dfsentry, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.b43legacy_dfsentry, ptr %1, i32 0, i32 10, i32 %feature
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !90
  %tobool2 = zext i8 %3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %tobool2, %land.rhs ]
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_debugfs_add_device(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  %devdir = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %devdir) #9
  %tobool.not = icmp eq ptr %dev, null
  %0 = call ptr @memset(ptr %devdir, i32 255, i32 16)
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !91

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 364, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 124) #12
  %tobool21.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %3, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call7.i.i, align 8
  %txstatlog = getelementptr inbounds %struct.b43legacy_dfsentry, ptr %call7.i.i, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1200) #12
  %6 = ptrtoint ptr %txstatlog to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i.i, ptr %txstatlog, align 8
  %tobool28.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool28.not, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %wl30 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %wl30 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wl30, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %8, ptr noundef nonnull @.str.2) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %end = getelementptr inbounds %struct.b43legacy_dfsentry, ptr %call7.i.i, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %end, align 4
  %lock = getelementptr inbounds %struct.b43legacy_dfsentry, ptr %call7.i.i, i32 0, i32 9, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @b43legacy_debugfs_add_device.__key, i16 noundef signext 3) #9
  %dfsentry = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 32
  %10 = ptrtoint ptr %dfsentry to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %dfsentry, align 4
  %wl36 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %wl36 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wl36, align 4
  %hw = getelementptr inbounds %struct.b43legacy_wl, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 56, i32 3
  %17 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end31.wiphy_name.exit_crit_edge

if.end31.wiphy_name.exit_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 56
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end31.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %20, %if.end.i.i ], [ %18, %if.end31.wiphy_name.exit_crit_edge ]
  %call38 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %devdir, i32 noundef 16, ptr noundef nonnull @.str.4, ptr noundef %retval.0.i.i)
  %21 = load ptr, ptr @rootdir, align 4
  %call40 = call ptr @debugfs_create_dir(ptr noundef nonnull %devdir, ptr noundef %21) #9
  %subdir = getelementptr inbounds %struct.b43legacy_dfsentry, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %subdir to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call40, ptr %subdir, align 4
  %call43 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 384, ptr noundef %call40, ptr noundef %dev, ptr noundef getelementptr inbounds (%struct.b43legacy_debugfs_fops, ptr @fops_tsf, i32 0, i32 2)) #9
  %23 = ptrtoint ptr %subdir to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %subdir, align 4
  %call48 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 256, ptr noundef %24, ptr noundef %dev, ptr noundef getelementptr inbounds (%struct.b43legacy_debugfs_fops, ptr @fops_ucode_regs, i32 0, i32 2)) #9
  %25 = ptrtoint ptr %subdir to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %subdir, align 4
  %call53 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 256, ptr noundef %26, ptr noundef %dev, ptr noundef getelementptr inbounds (%struct.b43legacy_debugfs_fops, ptr @fops_shm, i32 0, i32 2)) #9
  %27 = ptrtoint ptr %subdir to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %subdir, align 4
  %call58 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 256, ptr noundef %28, ptr noundef %dev, ptr noundef getelementptr inbounds (%struct.b43legacy_debugfs_fops, ptr @fops_txstat, i32 0, i32 2)) #9
  %29 = ptrtoint ptr %subdir to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %subdir, align 4
  %call63 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 128, ptr noundef %30, ptr noundef %dev, ptr noundef getelementptr inbounds (%struct.b43legacy_debugfs_fops, ptr @fops_restart, i32 0, i32 2)) #9
  %31 = ptrtoint ptr %dfsentry to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dfsentry, align 4
  %dyn_debug.i = getelementptr inbounds %struct.b43legacy_dfsentry, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %dyn_debug.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %dyn_debug.i, align 4
  %subdir.i = getelementptr inbounds %struct.b43legacy_dfsentry, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %subdir.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %subdir.i, align 4
  call void @debugfs_create_bool(ptr noundef nonnull @.str.29, i16 noundef zeroext 384, ptr noundef %35, ptr noundef %dyn_debug.i) #9
  %arrayidx5.i = getelementptr %struct.b43legacy_dfsentry, ptr %32, i32 0, i32 10, i32 1
  %36 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx5.i, align 1
  %37 = ptrtoint ptr %subdir.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %subdir.i, align 4
  call void @debugfs_create_bool(ptr noundef nonnull @.str.30, i16 noundef zeroext 384, ptr noundef %38, ptr noundef %arrayidx5.i) #9
  %arrayidx13.i = getelementptr %struct.b43legacy_dfsentry, ptr %32, i32 0, i32 10, i32 2
  %39 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx13.i, align 2
  %40 = ptrtoint ptr %subdir.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %subdir.i, align 4
  call void @debugfs_create_bool(ptr noundef nonnull @.str.31, i16 noundef zeroext 384, ptr noundef %41, ptr noundef %arrayidx13.i) #9
  %arrayidx21.i = getelementptr %struct.b43legacy_dfsentry, ptr %32, i32 0, i32 10, i32 3
  %42 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx21.i, align 1
  %43 = ptrtoint ptr %subdir.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %subdir.i, align 4
  call void @debugfs_create_bool(ptr noundef nonnull @.str.32, i16 noundef zeroext 384, ptr noundef %44, ptr noundef %arrayidx21.i) #9
  %arrayidx29.i = getelementptr %struct.b43legacy_dfsentry, ptr %32, i32 0, i32 10, i32 4
  %45 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %arrayidx29.i, align 4
  %46 = ptrtoint ptr %subdir.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %subdir.i, align 4
  call void @debugfs_create_bool(ptr noundef nonnull @.str.33, i16 noundef zeroext 384, ptr noundef %47, ptr noundef %arrayidx29.i) #9
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.then29, %if.then22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %devdir) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacyerr(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_debugfs_remove_device(ptr noundef readonly %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dfsentry = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %dfsentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dfsentry, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %subdir = getelementptr inbounds %struct.b43legacy_dfsentry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %subdir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdir, align 4
  tail call void @debugfs_remove(ptr noundef %3) #9
  %txstatlog = getelementptr inbounds %struct.b43legacy_dfsentry, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %txstatlog to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %txstatlog, align 4
  tail call void @kfree(ptr noundef %5) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_debugfs_log_txstat(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %status) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dfsentry = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %dfsentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dfsentry, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %txstatlog = getelementptr inbounds %struct.b43legacy_dfsentry, ptr %1, i32 0, i32 9
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !92
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not = icmp eq i32 %and.i, 0
  br i1 %tobool10.not, label %do.end23, label %if.end.if.end29_crit_edge, !prof !91

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 432, i32 noundef 9, ptr noundef null) #9
  br label %if.end29

if.end29:                                         ; preds = %do.end23, %if.end.if.end29_crit_edge
  %lock = getelementptr inbounds %struct.b43legacy_dfsentry, ptr %1, i32 0, i32 9, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %end = getelementptr inbounds %struct.b43legacy_dfsentry, ptr %1, i32 0, i32 9, i32 1
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end, align 4
  %add = add i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %add)
  %cmp37 = icmp eq i32 %add, 100
  %spec.store.select = select i1 %cmp37, i32 0, i32 %add
  %5 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.store.select, ptr %end, align 4
  %6 = ptrtoint ptr %txstatlog to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %txstatlog, align 4
  %arrayidx = getelementptr %struct.b43legacy_txstatus, ptr %7, i32 %spec.store.select
  %8 = call ptr @memcpy(ptr %arrayidx, ptr %status, i32 12)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_debugfs_init() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.10, ptr noundef null) #9
  store ptr %call, ptr @rootdir, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_debugfs_exit() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rootdir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsf_read_file(ptr noundef %dev, ptr noundef %buf, i32 noundef %bufsize) #1 align 64 {
entry:
  %tsf = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tsf) #9
  %0 = ptrtoint ptr %tsf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %tsf, align 8, !annotation !93
  call void @b43legacy_tsf_read(ptr noundef %dev, ptr noundef nonnull %tsf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufsize)
  %tobool.not = icmp eq i32 %bufsize, 0
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %tsf to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %tsf, align 8
  %shr = lshr i64 %2, 32
  %conv = trunc i64 %shr to i32
  %conv3 = trunc i64 %2 to i32
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %bufsize, ptr noundef nonnull @.str.11, i32 noundef %conv, i32 noundef %conv3) #9
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %if.then
  %count.0 = phi i32 [ %call, %if.then ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tsf) #9
  ret i32 %count.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsf_write_file(ptr noundef %dev, ptr nocapture noundef readonly %buf, i32 noundef %count) #1 align 64 {
entry:
  %tsf = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tsf) #9
  %0 = ptrtoint ptr %tsf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %tsf, align 8, !annotation !93
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.14, ptr noundef nonnull %tsf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %tsf to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %tsf, align 8
  call void @b43legacy_tsf_write(ptr noundef %dev, i64 noundef %2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tsf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43legacy_debugfs_read(ptr noundef %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl, align 4
  %mutex = getelementptr inbounds %struct.b43legacy_wl, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %__init_status = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #9
  %4 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp slt i32 %5, 1
  br i1 %cmp, label %if.end3.out_unlock_crit_edge, label %if.end6

if.end3.out_unlock_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end6:                                          ; preds = %if.end3
  %call7 = tail call ptr @debugfs_real_fops(ptr noundef %file) #9
  %add.ptr = getelementptr i8, ptr %call7, i32 -8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end6.out_unlock_crit_edge, label %if.end10

if.end6.out_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end10:                                         ; preds = %if.end6
  %dfsentry.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 32
  %8 = ptrtoint ptr %dfsentry.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dfsentry.i, align 4
  %file_struct_offset.i = getelementptr i8, ptr %call7, i32 128
  %10 = ptrtoint ptr %file_struct_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %file_struct_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %11
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %if.then13, label %if.end10.if.end32_crit_edge

if.end10.if.end32_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then13:                                        ; preds = %if.end10
  %call14 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 2) #9
  %14 = inttoptr i32 %call14 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.out_unlock_crit_edge, label %if.end17

if.then13.out_unlock_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end17:                                         ; preds = %if.then13
  %15 = call ptr @memset(ptr %14, i32 0, i32 16384)
  %take_irqlock = getelementptr i8, ptr %call7, i32 132
  %16 = ptrtoint ptr %take_irqlock to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %take_irqlock, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool18.not = icmp eq i8 %17, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wl, align 4
  %irq_lock = getelementptr inbounds %struct.b43legacy_wl, ptr %19, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %irq_lock) #9
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  %call22 = tail call i32 %21(ptr noundef nonnull %1, ptr noundef nonnull %14, i32 noundef 16384) #9
  %22 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wl, align 4
  %irq_lock24 = getelementptr inbounds %struct.b43legacy_wl, ptr %23, i32 0, i32 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %irq_lock24) #9
  br label %if.end27

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  %call26 = tail call i32 %25(ptr noundef nonnull %1, ptr noundef nonnull %14, i32 noundef 16384) #9
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then19
  %ret.0 = phi i32 [ %call22, %if.then19 ], [ %call26, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0)
  %cmp28 = icmp slt i32 %ret.0, 1
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @free_pages(i32 noundef %call14, i32 noundef 2) #9
  br label %out_unlock

if.end30:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %data_len = getelementptr inbounds %struct.b43legacy_dfs_file, ptr %add.ptr.i, i32 0, i32 1
  %26 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %ret.0, ptr %data_len, align 4
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %14, ptr %add.ptr.i, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %if.end10.if.end32_crit_edge
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 4
  %data_len34 = getelementptr inbounds %struct.b43legacy_dfs_file, ptr %add.ptr.i, i32 0, i32 1
  %30 = ptrtoint ptr %data_len34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data_len34, align 4
  %call35 = tail call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef %29, i32 noundef %31) #9
  %32 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %ppos, align 8
  %34 = ptrtoint ptr %data_len34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_len34, align 4
  %conv = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %conv)
  %cmp37.not = icmp slt i64 %33, %conv
  br i1 %cmp37.not, label %if.end32.out_unlock_crit_edge, label %if.then39

if.end32.out_unlock_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then39:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 4
  %38 = ptrtoint ptr %37 to i32
  tail call void @free_pages(i32 noundef %38, i32 noundef 2) #9
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %add.ptr.i, align 4
  %40 = ptrtoint ptr %data_len34 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %data_len34, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.then39, %if.end32.out_unlock_crit_edge, %if.then29, %if.then13.out_unlock_crit_edge, %if.end6.out_unlock_crit_edge, %if.end3.out_unlock_crit_edge
  %ret.1 = phi i32 [ %call35, %if.then39 ], [ %call35, %if.end32.out_unlock_crit_edge ], [ %ret.0, %if.then29 ], [ -1, %if.end3.out_unlock_crit_edge ], [ -1, %if.end6.out_unlock_crit_edge ], [ -1, %if.then13.out_unlock_crit_edge ]
  %err.0 = phi i32 [ 0, %if.then39 ], [ 0, %if.end32.out_unlock_crit_edge ], [ %ret.0, %if.then29 ], [ -19, %if.end3.out_unlock_crit_edge ], [ -38, %if.end6.out_unlock_crit_edge ], [ -12, %if.then13.out_unlock_crit_edge ]
  %41 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wl, align 4
  %mutex45 = getelementptr inbounds %struct.b43legacy_wl, ptr %42, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool46.not = icmp eq i32 %err.0, 0
  %spec.select = select i1 %tobool46.not, i32 %ret.1, i32 %err.0
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %spec.select, %out_unlock ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43legacy_debugfs_write(ptr noundef %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %count)
  %cmp = icmp ugt i32 %count, 4096
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl, align 4
  %mutex = getelementptr inbounds %struct.b43legacy_wl, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %__init_status = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #9
  %4 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp6 = icmp slt i32 %5, 1
  br i1 %cmp6, label %if.end5.out_unlock_crit_edge, label %if.end8

if.end5.out_unlock_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end8:                                          ; preds = %if.end5
  %call9 = tail call ptr @debugfs_real_fops(ptr noundef %file) #9
  %write = getelementptr i8, ptr %call9, i32 -4
  %6 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.end8.out_unlock_crit_edge, label %if.end12

if.end8.out_unlock_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @get_zeroed_page(i32 noundef 3264) #9
  %8 = inttoptr i32 %call13 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.out_unlock_crit_edge, label %if.then.i.i.i

if.end12.out_unlock_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then.i.i.i:                                    ; preds = %if.end12
  tail call void @__check_object_size(ptr noundef nonnull %8, i32 noundef %count, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #9
  %call.i.i62 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i62, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %userbuf, i32 %count, i32 -1226833920) #14, !srcloc !94
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !95

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %8, i32 noundef %count) #9
  %10 = tail call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !96
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %userbuf, i32 noundef %count) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end20, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !95

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i65 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %count, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %count, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %count, %res.0.i.i65
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i65)
  br label %out_freepage

if.end20:                                         ; preds = %if.end.i.i
  %take_irqlock = getelementptr i8, ptr %call9, i32 132
  %14 = ptrtoint ptr %take_irqlock to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %take_irqlock, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool21.not = icmp eq i8 %15, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wl, align 4
  %irq_lock = getelementptr inbounds %struct.b43legacy_wl, ptr %17, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %irq_lock) #9
  %18 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write, align 4
  %call25 = tail call i32 %19(ptr noundef nonnull %1, ptr noundef nonnull %8, i32 noundef %count) #9
  %20 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wl, align 4
  %irq_lock27 = getelementptr inbounds %struct.b43legacy_wl, ptr %21, i32 0, i32 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %irq_lock27) #9
  br label %out_freepage

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write, align 4
  %call29 = tail call i32 %23(ptr noundef nonnull %1, ptr noundef nonnull %8, i32 noundef %count) #9
  br label %out_freepage

out_freepage:                                     ; preds = %if.else, %if.then22, %if.then11.i.i
  %err.0 = phi i32 [ %call25, %if.then22 ], [ %call29, %if.else ], [ -14, %if.then11.i.i ]
  tail call void @free_pages(i32 noundef %call13, i32 noundef 0) #9
  br label %out_unlock

out_unlock:                                       ; preds = %out_freepage, %if.end12.out_unlock_crit_edge, %if.end8.out_unlock_crit_edge, %if.end5.out_unlock_crit_edge
  %err.1 = phi i32 [ %err.0, %out_freepage ], [ -19, %if.end5.out_unlock_crit_edge ], [ -38, %if.end8.out_unlock_crit_edge ], [ -12, %if.end12.out_unlock_crit_edge ]
  %24 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wl, align 4
  %mutex35 = getelementptr inbounds %struct.b43legacy_wl, ptr %25, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex35) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool36.not = icmp eq i32 %err.1, 0
  %spec.select = select i1 %tobool36.not, i32 %count, i32 %err.1
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -7, %if.end.cleanup_crit_edge ], [ -19, %if.end2.cleanup_crit_edge ], [ %spec.select, %out_unlock ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_tsf_read(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_tsf_write(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_real_fops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucode_regs_read_file(ptr noundef %dev, ptr noundef %buf, i32 noundef %bufsize) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry
  %count.018 = phi i32 [ 0, %entry ], [ %count.1, %for.inc.do.body_crit_edge ]
  %i.016 = phi i32 [ 0, %entry ], [ %inc, %for.inc.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.018, i32 %bufsize)
  %tobool.not = icmp eq i32 %count.018, %bufsize
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %bufsize, %count.018
  %add.ptr = getelementptr i8, ptr %buf, i32 %count.018
  %conv = trunc i32 %i.016 to i16
  %call = tail call zeroext i16 @b43legacy_shm_read16(ptr noundef %dev, i16 noundef zeroext 2, i16 noundef zeroext %conv) #9
  %conv2 = zext i16 %call to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.18, i32 noundef %i.016, i32 noundef %conv2) #9
  %add = add i32 %call3, %count.018
  br label %for.inc

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.then
  %count.1 = phi i32 [ %add, %if.then ], [ %bufsize, %do.end ]
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 %count.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @b43legacy_shm_read16(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shm_read_file(ptr noundef %dev, ptr nocapture noundef writeonly %buf, i32 noundef %bufsize) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bufsize)
  %cmp17 = icmp ult i32 %bufsize, 2
  br i1 %cmp17, label %entry.for.end_crit_edge, label %if.end.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.preheader:                                 ; preds = %entry
  %0 = add i32 %bufsize, -2
  %1 = lshr i32 %0, 1
  %umin = call i32 @llvm.umin.i32(i32 %1, i32 4095)
  br label %if.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %if.end.preheader
  %i.010 = phi i32 [ %inc, %if.end.if.end_crit_edge ], [ 0, %if.end.preheader ]
  %count.09 = phi i32 [ %add, %if.end.if.end_crit_edge ], [ 0, %if.end.preheader ]
  %i.0.tr = trunc i32 %i.010 to i16
  %conv = shl i16 %i.0.tr, 1
  %call = tail call zeroext i16 @b43legacy_shm_read16(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext %conv) #9
  %2 = tail call i16 @llvm.bswap.i16(i16 %call)
  %arrayidx = getelementptr i16, ptr %buf, i32 %i.010
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %arrayidx, align 2
  %add = add nuw nsw i32 %count.09, 2
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond = icmp eq i32 %i.010, %umin
  br i1 %exitcond, label %if.end.for.end_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %if.end.for.end_crit_edge ]
  ret i32 %count.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @txstat_read_file(ptr nocapture noundef readonly %dev, ptr noundef %buf, i32 noundef %bufsize) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dfsentry = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %dfsentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dfsentry, align 4
  %txstatlog = getelementptr inbounds %struct.b43legacy_dfsentry, ptr %1, i32 0, i32 9
  %lock = getelementptr inbounds %struct.b43legacy_dfsentry, ptr %1, i32 0, i32 9, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %end = getelementptr inbounds %struct.b43legacy_dfsentry, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5 = icmp slt i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufsize)
  %tobool.not = icmp eq i32 %bufsize, 0
  br i1 %cmp5, label %do.body7, label %do.body19

do.body7:                                         ; preds = %entry
  br i1 %tobool.not, label %do.end13, label %if.then8

if.then8:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %bufsize, ptr noundef nonnull @.str.20) #9
  br label %out_unlock

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  br label %out_unlock

do.body19:                                        ; preds = %entry
  br i1 %tobool.not, label %do.end30, label %if.then22

if.then22:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %bufsize, ptr noundef nonnull @.str.22) #9
  br label %do.end35

do.end30:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  br label %do.end35

do.end35:                                         ; preds = %do.end30, %if.then22
  %count.0 = phi i32 [ %call25, %if.then22 ], [ 0, %do.end30 ]
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end73.while.cond_crit_edge, %do.end35
  %idx.0 = phi i32 [ 0, %do.end35 ], [ %idx.1, %if.end73.while.cond_crit_edge ]
  %i.0.in = phi i32 [ %5, %do.end35 ], [ %spec.store.select, %if.end73.while.cond_crit_edge ]
  %count.1 = phi i32 [ %count.0, %do.end35 ], [ %count.3, %if.end73.while.cond_crit_edge ]
  %i.0 = add i32 %i.0.in, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0)
  %cmp38 = icmp eq i32 %i.0, 100
  %spec.store.select = select i1 %cmp38, i32 0, i32 %i.0
  %6 = ptrtoint ptr %txstatlog to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %txstatlog, align 4
  %arrayidx = getelementptr %struct.b43legacy_txstatus, ptr %7, i32 %spec.store.select
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool43.not = icmp eq i16 %9, 0
  br i1 %tobool43.not, label %while.cond.if.end73_crit_edge, label %do.body45

while.cond.if.end73_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

do.body45:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1, i32 %bufsize)
  %tobool47.not = icmp eq i32 %count.1, %bufsize
  br i1 %tobool47.not, label %do.end67, label %if.then48

if.then48:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  %sub46 = sub i32 %bufsize, %count.1
  %add.ptr49 = getelementptr i8, ptr %buf, i32 %count.1
  %conv52 = zext i16 %9 to i32
  %seq = getelementptr %struct.b43legacy_txstatus, ptr %7, i32 %spec.store.select, i32 1
  %10 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %seq, align 2
  %conv53 = zext i16 %11 to i32
  %phy_stat = getelementptr %struct.b43legacy_txstatus, ptr %7, i32 %spec.store.select, i32 2
  %12 = ptrtoint ptr %phy_stat to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %phy_stat, align 2
  %conv54 = zext i8 %13 to i32
  %frame_count = getelementptr %struct.b43legacy_txstatus, ptr %7, i32 %spec.store.select, i32 3
  %14 = ptrtoint ptr %frame_count to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %frame_count, align 1
  %conv55 = zext i8 %15 to i32
  %rts_count = getelementptr %struct.b43legacy_txstatus, ptr %7, i32 %spec.store.select, i32 4
  %16 = ptrtoint ptr %rts_count to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rts_count, align 2
  %conv56 = zext i8 %17 to i32
  %supp_reason = getelementptr %struct.b43legacy_txstatus, ptr %7, i32 %spec.store.select, i32 5
  %18 = ptrtoint ptr %supp_reason to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %supp_reason, align 1
  %conv57 = zext i8 %19 to i32
  %pm_indicated = getelementptr %struct.b43legacy_txstatus, ptr %7, i32 %spec.store.select, i32 6
  %20 = ptrtoint ptr %pm_indicated to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pm_indicated, align 2
  %conv58 = zext i8 %21 to i32
  %intermediate = getelementptr %struct.b43legacy_txstatus, ptr %7, i32 %spec.store.select, i32 7
  %22 = ptrtoint ptr %intermediate to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %intermediate, align 1
  %conv59 = zext i8 %23 to i32
  %for_ampdu = getelementptr %struct.b43legacy_txstatus, ptr %7, i32 %spec.store.select, i32 8
  %24 = ptrtoint ptr %for_ampdu to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %for_ampdu, align 2
  %conv60 = zext i8 %25 to i32
  %acked = getelementptr %struct.b43legacy_txstatus, ptr %7, i32 %spec.store.select, i32 9
  %26 = ptrtoint ptr %acked to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %acked, align 1
  %conv61 = zext i8 %27 to i32
  %call62 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr49, i32 noundef %sub46, ptr noundef nonnull @.str.25, i32 noundef %idx.0, i32 noundef %conv52, i32 noundef %conv53, i32 noundef %conv54, i32 noundef %conv55, i32 noundef %conv56, i32 noundef %conv57, i32 noundef %conv58, i32 noundef %conv59, i32 noundef %conv60, i32 noundef %conv61) #9
  %add63 = add i32 %call62, %count.1
  br label %do.end72

do.end67:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  br label %do.end72

do.end72:                                         ; preds = %do.end67, %if.then48
  %count.2 = phi i32 [ %add63, %if.then48 ], [ %bufsize, %do.end67 ]
  %inc = add i32 %idx.0, 1
  br label %if.end73

if.end73:                                         ; preds = %do.end72, %while.cond.if.end73_crit_edge
  %idx.1 = phi i32 [ %inc, %do.end72 ], [ %idx.0, %while.cond.if.end73_crit_edge ]
  %count.3 = phi i32 [ %count.2, %do.end72 ], [ %count.1, %while.cond.if.end73_crit_edge ]
  %28 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end, align 4
  %cmp75 = icmp eq i32 %spec.store.select, %29
  br i1 %cmp75, label %if.end73.out_unlock_crit_edge, label %if.end73.while.cond_crit_edge

if.end73.while.cond_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.end73.out_unlock_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

out_unlock:                                       ; preds = %if.end73.out_unlock_crit_edge, %do.end13, %if.then8
  %count.4 = phi i32 [ %call10, %if.then8 ], [ 0, %do.end13 ], [ %count.3, %if.end73.out_unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  ret i32 %count.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @restart_write_file(ptr noundef %dev, ptr nocapture noundef readonly %buf, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not = icmp eq i32 %count, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %1)
  %cmp1 = icmp eq i8 %1, 49
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @b43legacy_controller_restart(ptr noundef %dev, ptr noundef nonnull @.str.28) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %err.0 = phi i32 [ 0, %if.then ], [ -22, %land.lhs.true.if.end_crit_edge ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_controller_restart(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !35, !37, !38, !40, !42, !44, !46, !47, !48, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !72, !74, !76, !78}
!llvm.named.register.sp = !{!80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 364, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 367, i32 25}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 375, i32 25}
!6 = !{ptr @b43legacy_debugfs_add_device.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 380, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 384, i32 35}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 395, i32 2}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 396, i32 2}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 397, i32 2}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 398, i32 2}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 399, i32 2}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 445, i32 31}
!23 = !{ptr @rootdir, !24, !"rootdir", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 29, i32 23}
!25 = !{ptr @fops_tsf, !26, !"fops_tsf", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 327, i32 1}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 72, i32 2}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @tsf_read_file._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @tsf_read_file._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 84, i32 18}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!42 = !{ptr @fops_ucode_regs, !43, !"fops_ucode_regs", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 328, i32 1}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 98, i32 3}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ucode_regs_read_file._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @ucode_regs_read_file._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @fops_shm, !50, !"fops_shm", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 329, i32 1}
!51 = !{ptr @fops_txstat, !52, !"fops_txstat", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 330, i32 1}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 135, i32 3}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @txstat_read_file._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @txstat_read_file._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 138, i32 2}
!60 = !{ptr @txstat_read_file._entry.23, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @txstat_read_file._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 149, i32 4}
!64 = !{ptr @txstat_read_file._entry.26, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @txstat_read_file._entry_ptr.27, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @fops_restart, !67, !"fops_restart", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 331, i32 1}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 178, i32 37}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 349, i32 2}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 350, i32 2}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 351, i32 2}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 352, i32 2}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/broadcom/b43legacy/debugfs.c", i32 353, i32 2}
!80 = !{!"sp"}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i8 0, i8 2}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{i64 1068140}
!93 = !{!"auto-init"}
!94 = !{i64 2152173207, i64 2152173232}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{i64 4668762}
!97 = !{i64 4668959}
!98 = !{i64 2152154192}
