; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43/debugfs.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.b43_debugfs_fops = type { ptr, ptr, %struct.file_operations, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.b43_wldev = type { ptr, ptr, %struct.completion, %struct.atomic_t, i8, i8, i8, i8, i8, i8, %struct.b43_phy, %union.anon.137, i8, %struct.b43_stats, i32, [6 x i32], i32, %struct.b43_noise_calculation, i32, %struct.delayed_work, i32, %struct.work_struct, i16, [58 x %struct.b43_key], %struct.b43_firmware, %struct.list_head, ptr, i32, [32 x i32], i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.b43_phy = type { ptr, %struct.anon.135, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i32, i8, i32, ptr, i32, %struct.atomic_t, i8, i8 }
%struct.anon.135 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.137 = type { %struct.b43_dma }
%struct.b43_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.b43_stats = type { i8 }
%struct.b43_noise_calculation = type { i8, i8, [8 x [4 x i8]] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43_key = type { ptr, i8 }
%struct.b43_firmware = type { %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, i16, i16, i32, i8, i8 }
%struct.b43_firmware_file = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.b43_dfsentry = type { ptr, ptr, %struct.b43_dfs_file, %struct.b43_dfs_file, %struct.b43_dfs_file, %struct.b43_dfs_file, %struct.b43_dfs_file, %struct.b43_dfs_file, %struct.b43_dfs_file, %struct.b43_dfs_file, %struct.b43_dfs_file, %struct.b43_dfs_file, %struct.b43_dfs_file, %struct.b43_dfs_file, %struct.b43_txstatus_log, i16, i16, i32, i32, i32, i32, [9 x i8] }
%struct.b43_dfs_file = type { ptr, i32 }
%struct.b43_txstatus_log = type { ptr, i32 }
%struct.b43_wl = type { ptr, ptr, %struct.mutex, %struct.spinlock, i8, ptr, [6 x i8], [6 x i8], i32, i8, i32, %struct.ieee80211_low_level_stats, %struct.hwrng, i8, [31 x i8], i8, i8, ptr, i8, i8, i8, %struct.work_struct, %struct.spinlock, [4 x %struct.b43_qos_params], %struct.work_struct, %struct.work_struct, [4 x %struct.sk_buff_head], [4 x i8], %struct.work_struct, %struct.b43_leds, [118 x i8], [2 x i8], [4 x i8], [4 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.b43_qos_params = type { %struct.ieee80211_tx_queue_params }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.b43_leds = type { %struct.b43_led, %struct.b43_led, %struct.b43_led, %struct.b43_led, i8, %struct.work_struct }
%struct.b43_led = type { ptr, %struct.led_classdev, i8, i8, [32 x i8], %struct.atomic_t, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.131, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.131 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.130, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.anon.130 = type { i64, i64, i8 }
%struct.b43_txstatus = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
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
%struct.b43_bus_dev = type { i32, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, i16, i16, i16, i16, i8, i8, ptr, i16, i8 }
%union.anon = type { ptr }
%struct.b43_phy_g = type { i8, i8, i8, i8, %struct.anon.136, [2 x i16], [2 x i16], ptr, i8, i32, i32, i8, %struct.b43_bbatt, %struct.b43_rfatt, i8, i32, i32, ptr, i16, i16, i16, i16, i16, i32, [26 x i32], [2 x i16], i32, [64 x i8], i16, i16, i16, i32 }
%struct.anon.136 = type { i8, i16, i16 }
%struct.b43_bbatt = type { i8 }
%struct.b43_rfatt = type { i8, i8 }
%struct.b43_txpower_lo_control = type { %struct.b43_rfatt_list, %struct.b43_bbatt_list, [32 x i16], %struct.list_head, i32, i32, i8, i8, i64 }
%struct.b43_rfatt_list = type { ptr, i8, i8, i8 }
%struct.b43_bbatt_list = type { ptr, i8, i8, i8 }

@b43_modparam_verbose = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/broadcom/b43/debugfs.c\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"debugfs: add device OOM\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"debugfs: add device txstatus OOM\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@rootdir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"shm16read\00", [22 x i8] zeroinitializer }, align 32
@fops_shm16read = internal global { %struct.b43_debugfs_fops, [52 x i8] } { %struct.b43_debugfs_fops { ptr @shm16read__read_file, ptr @shm16read__write_file, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @b43_debugfs_read, ptr @b43_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 8 }, [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"shm16write\00", [21 x i8] zeroinitializer }, align 32
@fops_shm16write = internal global { %struct.b43_debugfs_fops, [52 x i8] } { %struct.b43_debugfs_fops { ptr null, ptr @shm16write__write_file, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @b43_debugfs_read, ptr @b43_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 16 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"shm32read\00", [22 x i8] zeroinitializer }, align 32
@fops_shm32read = internal global { %struct.b43_debugfs_fops, [52 x i8] } { %struct.b43_debugfs_fops { ptr @shm32read__read_file, ptr @shm32read__write_file, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @b43_debugfs_read, ptr @b43_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 24 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"shm32write\00", [21 x i8] zeroinitializer }, align 32
@fops_shm32write = internal global { %struct.b43_debugfs_fops, [52 x i8] } { %struct.b43_debugfs_fops { ptr null, ptr @shm32write__write_file, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @b43_debugfs_read, ptr @b43_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 32 }, [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmio16read\00", [21 x i8] zeroinitializer }, align 32
@fops_mmio16read = internal global { %struct.b43_debugfs_fops, [52 x i8] } { %struct.b43_debugfs_fops { ptr @mmio16read__read_file, ptr @mmio16read__write_file, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @b43_debugfs_read, ptr @b43_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 40 }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmio16write\00", [20 x i8] zeroinitializer }, align 32
@fops_mmio16write = internal global { %struct.b43_debugfs_fops, [52 x i8] } { %struct.b43_debugfs_fops { ptr null, ptr @mmio16write__write_file, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @b43_debugfs_read, ptr @b43_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 48 }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmio32read\00", [21 x i8] zeroinitializer }, align 32
@fops_mmio32read = internal global { %struct.b43_debugfs_fops, [52 x i8] } { %struct.b43_debugfs_fops { ptr @mmio32read__read_file, ptr @mmio32read__write_file, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @b43_debugfs_read, ptr @b43_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 56 }, [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmio32write\00", [20 x i8] zeroinitializer }, align 32
@fops_mmio32write = internal global { %struct.b43_debugfs_fops, [52 x i8] } { %struct.b43_debugfs_fops { ptr null, ptr @mmio32write__write_file, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @b43_debugfs_read, ptr @b43_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 64 }, [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"txstat\00", [25 x i8] zeroinitializer }, align 32
@fops_txstat = internal global { %struct.b43_debugfs_fops, [52 x i8] } { %struct.b43_debugfs_fops { ptr @txstat_read_file, ptr null, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @b43_debugfs_read, ptr @b43_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 72 }, [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"restart\00", [24 x i8] zeroinitializer }, align 32
@fops_restart = internal global { %struct.b43_debugfs_fops, [52 x i8] } { %struct.b43_debugfs_fops { ptr null, ptr @restart_write_file, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @b43_debugfs_read, ptr @b43_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 88 }, [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"loctls\00", [25 x i8] zeroinitializer }, align 32
@fops_loctls = internal global { %struct.b43_debugfs_fops, [52 x i8] } { %struct.b43_debugfs_fops { ptr @loctls_read_file, ptr null, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @b43_debugfs_read, ptr @b43_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 96 }, [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"b43\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04X\0A\00", [24 x i8] zeroinitializer }, align 32
@shm16read__read_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013b43: fappend overflow\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"shm16read__read_file\00", [43 x i8] zeroinitializer }, align 32
@shm16read__read_file._entry_ptr = internal global ptr @shm16read__read_file._entry, section ".printk_index", align 4
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0x%X 0x%X\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0x%X 0x%X 0x%X 0x%X\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08X\0A\00", [24 x i8] zeroinitializer }, align 32
@shm32read__read_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.25, ptr @.str, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"shm32read__read_file\00", [43 x i8] zeroinitializer }, align 32
@shm32read__read_file._entry_ptr = internal global ptr @shm32read__read_file._entry, section ".printk_index", align 4
@mmio16read__read_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.26, ptr @.str, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mmio16read__read_file\00", [42 x i8] zeroinitializer }, align 32
@mmio16read__read_file._entry_ptr = internal global ptr @mmio16read__read_file._entry, section ".printk_index", align 4
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x%X\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%X 0x%X 0x%X\00", [17 x i8] zeroinitializer }, align 32
@mmio32read__read_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.29, ptr @.str, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mmio32read__read_file\00", [42 x i8] zeroinitializer }, align 32
@mmio32read__read_file._entry_ptr = internal global ptr @mmio32read__read_file._entry, section ".printk_index", align 4
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Nothing transmitted, yet\0A\00", [38 x i8] zeroinitializer }, align 32
@txstat_read_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.31, ptr @.str, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"txstat_read_file\00", [47 x i8] zeroinitializer }, align 32
@txstat_read_file._entry_ptr = internal global ptr @txstat_read_file._entry, section ".printk_index", align 4
@.str.32 = internal constant { [151 x i8], [41 x i8] } { [151 x i8] c"b43 TX status reports:\0A\0Aindex | cookie | seq | phy_stat | frame_count | rts_count | supp_reason | pm_indicated | intermediate | for_ampdu | acked\0A---\0A\00", [41 x i8] zeroinitializer }, align 32
@txstat_read_file._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.31, ptr @.str, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@txstat_read_file._entry_ptr.34 = internal global ptr @txstat_read_file._entry.33, section ".printk_index", align 4
@.str.35 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%03d | 0x%04X | 0x%04X | 0x%02X | 0x%X | 0x%X | %u | %u | %u | %u | %u\0A\00", [56 x i8] zeroinitializer }, align 32
@txstat_read_file._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.31, ptr @.str, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@txstat_read_file._entry_ptr.37 = internal global ptr @txstat_read_file._entry.36, section ".printk_index", align 4
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"manually restarted\00", [45 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Device is not a G-PHY\0A\00", [41 x i8] zeroinitializer }, align 32
@loctls_read_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.40, ptr @.str, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"loctls_read_file\00", [47 x i8] zeroinitializer }, align 32
@loctls_read_file._entry_ptr = internal global ptr @loctls_read_file._entry, section ".printk_index", align 4
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"-- Local Oscillator calibration data --\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@loctls_read_file._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.40, ptr @.str, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@loctls_read_file._entry_ptr.43 = internal global ptr @loctls_read_file._entry.42, section ".printk_index", align 4
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HW-power-control enabled: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@loctls_read_file._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.40, ptr @.str, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@loctls_read_file._entry_ptr.46 = internal global ptr @loctls_read_file._entry.45, section ".printk_index", align 4
@.str.47 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"TX Bias: 0x%02X,  TX Magn: 0x%02X  (expire in %lu sec)\0A\00", [40 x i8] zeroinitializer }, align 32
@loctls_read_file._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.40, ptr @.str, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@loctls_read_file._entry_ptr.49 = internal global ptr @loctls_read_file._entry.48, section ".printk_index", align 4
@.str.50 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Power Vector: 0x%08X%08X  (expires in %lu sec)\0A\00", [48 x i8] zeroinitializer }, align 32
@loctls_read_file._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.40, ptr @.str, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@loctls_read_file._entry_ptr.52 = internal global ptr @loctls_read_file._entry.51, section ".printk_index", align 4
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\0ACalibrated settings:\0A\00", [41 x i8] zeroinitializer }, align 32
@loctls_read_file._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.40, ptr @.str, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@loctls_read_file._entry_ptr.55 = internal global ptr @loctls_read_file._entry.54, section ".printk_index", align 4
@.str.56 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"BB(%d), RF(%d,%d)  ->  I=%d, Q=%d  (expires in %lu sec)%s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"  ACTIVE\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@loctls_read_file._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.40, ptr @.str, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@loctls_read_file._entry_ptr.60 = internal global ptr @loctls_read_file._entry.59, section ".printk_index", align 4
@.str.61 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\0AUsed RF attenuation values:  Value(WithPadmix flag)\0A\00", [42 x i8] zeroinitializer }, align 32
@loctls_read_file._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.40, ptr @.str, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@loctls_read_file._entry_ptr.63 = internal global ptr @loctls_read_file._entry.62, section ".printk_index", align 4
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%u(%d), \00", [23 x i8] zeroinitializer }, align 32
@loctls_read_file._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.40, ptr @.str, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@loctls_read_file._entry_ptr.66 = internal global ptr @loctls_read_file._entry.65, section ".printk_index", align 4
@.str.67 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@loctls_read_file._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.40, ptr @.str, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@loctls_read_file._entry_ptr.69 = internal global ptr @loctls_read_file._entry.68, section ".printk_index", align 4
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\0AUsed Baseband attenuation values:\0A\00", [60 x i8] zeroinitializer }, align 32
@loctls_read_file._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.40, ptr @.str, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@loctls_read_file._entry_ptr.72 = internal global ptr @loctls_read_file._entry.71, section ".printk_index", align 4
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%u, \00", [27 x i8] zeroinitializer }, align 32
@loctls_read_file._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.40, ptr @.str, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@loctls_read_file._entry_ptr.75 = internal global ptr @loctls_read_file._entry.74, section ".printk_index", align 4
@loctls_read_file._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.40, ptr @.str, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@loctls_read_file._entry_ptr.77 = internal global ptr @loctls_read_file._entry.76, section ".printk_index", align 4
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"debug_xmitpower\00", [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"debug_dmaoverflow\00", [46 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"debug_dmaverbose\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"debug_pwork_fast\00", [47 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"debug_pwork_stop\00", [47 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"debug_lo\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"debug_firmware\00", [17 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"debug_keys\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"debug_verbose_stats\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 675, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 678, i32 19 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 686, i32 19 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 694, i32 35 }
@___asan_gen_.99 = private unnamed_addr constant [8 x i8] c"rootdir\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 28, i32 23 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 712, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [15 x i8] c"fops_shm16read\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 619, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 713, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [16 x i8] c"fops_shm16write\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 620, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 714, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [15 x i8] c"fops_shm32read\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 621, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 715, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [16 x i8] c"fops_shm32write\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 622, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 716, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [16 x i8] c"fops_mmio16read\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 623, i32 1 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 717, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"fops_mmio16write\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 624, i32 1 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 718, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [16 x i8] c"fops_mmio32read\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 625, i32 1 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 719, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"fops_mmio32write\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 626, i32 1 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 720, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [12 x i8] c"fops_txstat\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 627, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 721, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [13 x i8] c"fops_restart\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 628, i32 1 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 722, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [12 x i8] c"fops_loctls\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 629, i32 1 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 765, i32 31 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 80, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 91, i32 20 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 230, i32 6 }
@___asan_gen_.190 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 214, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 156, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 116, i32 20 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 156, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 233, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 244, i32 20 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 264, i32 20 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 297, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 358, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 361, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 372, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 400, i32 31 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 436, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 441, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 442, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 444, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 448, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 454, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 460, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 470, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 472, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 476, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 477, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 479, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 482, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 656, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 657, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 658, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 659, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 660, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 661, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 662, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 663, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.358 = private constant [47 x i8] c"../drivers/net/wireless/broadcom/b43/debugfs.c\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 664, i32 2 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @loctls_read_file._entry, ptr @loctls_read_file._entry.42, ptr @loctls_read_file._entry.45, ptr @loctls_read_file._entry.48, ptr @loctls_read_file._entry.51, ptr @loctls_read_file._entry.54, ptr @loctls_read_file._entry.59, ptr @loctls_read_file._entry.62, ptr @loctls_read_file._entry.65, ptr @loctls_read_file._entry.68, ptr @loctls_read_file._entry.71, ptr @loctls_read_file._entry.74, ptr @loctls_read_file._entry.76, ptr @loctls_read_file._entry_ptr, ptr @loctls_read_file._entry_ptr.43, ptr @loctls_read_file._entry_ptr.46, ptr @loctls_read_file._entry_ptr.49, ptr @loctls_read_file._entry_ptr.52, ptr @loctls_read_file._entry_ptr.55, ptr @loctls_read_file._entry_ptr.60, ptr @loctls_read_file._entry_ptr.63, ptr @loctls_read_file._entry_ptr.66, ptr @loctls_read_file._entry_ptr.69, ptr @loctls_read_file._entry_ptr.72, ptr @loctls_read_file._entry_ptr.75, ptr @loctls_read_file._entry_ptr.77, ptr @mmio16read__read_file._entry, ptr @mmio16read__read_file._entry_ptr, ptr @mmio32read__read_file._entry, ptr @mmio32read__read_file._entry_ptr, ptr @shm16read__read_file._entry, ptr @shm16read__read_file._entry_ptr, ptr @shm32read__read_file._entry, ptr @shm32read__read_file._entry_ptr, ptr @txstat_read_file._entry, ptr @txstat_read_file._entry.33, ptr @txstat_read_file._entry.36, ptr @txstat_read_file._entry_ptr, ptr @txstat_read_file._entry_ptr.34, ptr @txstat_read_file._entry_ptr.37, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rootdir, ptr @.str.4, ptr @fops_shm16read, ptr @.str.5, ptr @fops_shm16write, ptr @.str.6, ptr @fops_shm32read, ptr @.str.7, ptr @fops_shm32write, ptr @.str.8, ptr @fops_mmio16read, ptr @.str.9, ptr @fops_mmio16write, ptr @.str.10, ptr @fops_mmio32read, ptr @.str.11, ptr @fops_mmio32write, ptr @.str.12, ptr @fops_txstat, ptr @.str.13, ptr @fops_restart, ptr @.str.14, ptr @fops_loctls, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rootdir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_shm16read to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_shm16write to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_shm32read to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_shm32write to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_mmio16read to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_mmio16write to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_mmio32read to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_mmio32write to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_txstat to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_restart to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_loctls to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shm16read__read_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shm32read__read_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmio16read__read_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmio32read__read_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txstat_read_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 151, i32 192, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txstat_read_file._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txstat_read_file._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loctls_read_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loctls_read_file._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loctls_read_file._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loctls_read_file._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loctls_read_file._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loctls_read_file._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loctls_read_file._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loctls_read_file._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loctls_read_file._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loctls_read_file._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loctls_read_file._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loctls_read_file._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loctls_read_file._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @b43_debug(ptr nocapture noundef readonly %dev, i32 noundef %feature) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dfsentry = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %dfsentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dfsentry, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.end:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.b43_dfsentry, ptr %1, i32 0, i32 21, i32 %feature
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.end.if.end_crit_edge, label %if.then, !prof !188

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @b43_modparam_verbose to i32))
  store i32 3, ptr @b43_modparam_verbose, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = phi i1 [ true, %if.then ], [ false, %land.end.if.end_crit_edge ], [ false, %entry.if.end_crit_edge ]
  ret i1 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_debugfs_add_device(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  %devdir = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %devdir) #10
  %tobool.not = icmp eq ptr %dev, null
  %0 = call ptr @memset(ptr %devdir, i32 255, i32 16)
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !189

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 675, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 144) #13
  %tobool21.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %3, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call7.i.i, align 8
  %txstatlog = getelementptr inbounds %struct.b43_dfsentry, ptr %call7.i.i, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1200) #13
  %6 = ptrtoint ptr %txstatlog to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i.i, ptr %txstatlog, align 8
  %tobool28.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool28.not, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %wl30 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %wl30 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wl30, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %8, ptr noundef nonnull @.str.2) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %end = getelementptr inbounds %struct.b43_dfsentry, ptr %call7.i.i, i32 0, i32 14, i32 1
  %9 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %end, align 4
  %dfsentry = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 26
  %10 = ptrtoint ptr %dfsentry to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %dfsentry, align 4
  %wl32 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %wl32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wl32, align 4
  %hw = getelementptr inbounds %struct.b43_wl, ptr %12, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 56
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end31.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %20, %if.end.i.i ], [ %18, %if.end31.wiphy_name.exit_crit_edge ]
  %call34 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %devdir, i32 noundef 16, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i.i)
  %21 = load ptr, ptr @rootdir, align 4
  %call36 = call ptr @debugfs_create_dir(ptr noundef nonnull %devdir, ptr noundef %21) #10
  %subdir = getelementptr inbounds %struct.b43_dfsentry, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %subdir to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call36, ptr %subdir, align 4
  %mmio16read_next = getelementptr inbounds %struct.b43_dfsentry, ptr %call7.i.i, i32 0, i32 15
  %23 = call ptr @memset(ptr %mmio16read_next, i32 255, i32 20)
  %call39 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 384, ptr noundef %call36, ptr noundef %dev, ptr noundef getelementptr inbounds (%struct.b43_debugfs_fops, ptr @fops_shm16read, i32 0, i32 2)) #10
  %24 = ptrtoint ptr %subdir to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %subdir, align 4
  %call44 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 128, ptr noundef %25, ptr noundef %dev, ptr noundef getelementptr inbounds (%struct.b43_debugfs_fops, ptr @fops_shm16write, i32 0, i32 2)) #10
  %26 = ptrtoint ptr %subdir to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %subdir, align 4
  %call49 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 384, ptr noundef %27, ptr noundef %dev, ptr noundef getelementptr inbounds (%struct.b43_debugfs_fops, ptr @fops_shm32read, i32 0, i32 2)) #10
  %28 = ptrtoint ptr %subdir to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %subdir, align 4
  %call54 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 128, ptr noundef %29, ptr noundef %dev, ptr noundef getelementptr inbounds (%struct.b43_debugfs_fops, ptr @fops_shm32write, i32 0, i32 2)) #10
  %30 = ptrtoint ptr %subdir to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %subdir, align 4
  %call59 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 384, ptr noundef %31, ptr noundef %dev, ptr noundef getelementptr inbounds (%struct.b43_debugfs_fops, ptr @fops_mmio16read, i32 0, i32 2)) #10
  %32 = ptrtoint ptr %subdir to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %subdir, align 4
  %call64 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 128, ptr noundef %33, ptr noundef %dev, ptr noundef getelementptr inbounds (%struct.b43_debugfs_fops, ptr @fops_mmio16write, i32 0, i32 2)) #10
  %34 = ptrtoint ptr %subdir to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %subdir, align 4
  %call69 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 384, ptr noundef %35, ptr noundef %dev, ptr noundef getelementptr inbounds (%struct.b43_debugfs_fops, ptr @fops_mmio32read, i32 0, i32 2)) #10
  %36 = ptrtoint ptr %subdir to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %subdir, align 4
  %call74 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 128, ptr noundef %37, ptr noundef %dev, ptr noundef getelementptr inbounds (%struct.b43_debugfs_fops, ptr @fops_mmio32write, i32 0, i32 2)) #10
  %38 = ptrtoint ptr %subdir to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %subdir, align 4
  %call79 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 256, ptr noundef %39, ptr noundef %dev, ptr noundef getelementptr inbounds (%struct.b43_debugfs_fops, ptr @fops_txstat, i32 0, i32 2)) #10
  %40 = ptrtoint ptr %subdir to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %subdir, align 4
  %call84 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 128, ptr noundef %41, ptr noundef %dev, ptr noundef getelementptr inbounds (%struct.b43_debugfs_fops, ptr @fops_restart, i32 0, i32 2)) #10
  %42 = ptrtoint ptr %subdir to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %subdir, align 4
  %call89 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 256, ptr noundef %43, ptr noundef %dev, ptr noundef getelementptr inbounds (%struct.b43_debugfs_fops, ptr @fops_loctls, i32 0, i32 2)) #10
  %44 = ptrtoint ptr %dfsentry to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dfsentry, align 4
  %dyn_debug.i = getelementptr inbounds %struct.b43_dfsentry, ptr %45, i32 0, i32 21
  %46 = ptrtoint ptr %dyn_debug.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %dyn_debug.i, align 4
  %subdir.i = getelementptr inbounds %struct.b43_dfsentry, ptr %45, i32 0, i32 1
  %47 = ptrtoint ptr %subdir.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %subdir.i, align 4
  call void @debugfs_create_bool(ptr noundef nonnull @.str.78, i16 noundef zeroext 384, ptr noundef %48, ptr noundef %dyn_debug.i) #10
  %arrayidx5.i = getelementptr %struct.b43_dfsentry, ptr %45, i32 0, i32 21, i32 1
  %49 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %arrayidx5.i, align 1
  %50 = ptrtoint ptr %subdir.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %subdir.i, align 4
  call void @debugfs_create_bool(ptr noundef nonnull @.str.79, i16 noundef zeroext 384, ptr noundef %51, ptr noundef %arrayidx5.i) #10
  %arrayidx13.i = getelementptr %struct.b43_dfsentry, ptr %45, i32 0, i32 21, i32 2
  %52 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %arrayidx13.i, align 2
  %53 = ptrtoint ptr %subdir.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %subdir.i, align 4
  call void @debugfs_create_bool(ptr noundef nonnull @.str.80, i16 noundef zeroext 384, ptr noundef %54, ptr noundef %arrayidx13.i) #10
  %arrayidx21.i = getelementptr %struct.b43_dfsentry, ptr %45, i32 0, i32 21, i32 3
  %55 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %arrayidx21.i, align 1
  %56 = ptrtoint ptr %subdir.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %subdir.i, align 4
  call void @debugfs_create_bool(ptr noundef nonnull @.str.81, i16 noundef zeroext 384, ptr noundef %57, ptr noundef %arrayidx21.i) #10
  %arrayidx29.i = getelementptr %struct.b43_dfsentry, ptr %45, i32 0, i32 21, i32 4
  %58 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %arrayidx29.i, align 4
  %59 = ptrtoint ptr %subdir.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %subdir.i, align 4
  call void @debugfs_create_bool(ptr noundef nonnull @.str.82, i16 noundef zeroext 384, ptr noundef %60, ptr noundef %arrayidx29.i) #10
  %arrayidx37.i = getelementptr %struct.b43_dfsentry, ptr %45, i32 0, i32 21, i32 5
  %61 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx37.i, align 1
  %62 = ptrtoint ptr %subdir.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %subdir.i, align 4
  call void @debugfs_create_bool(ptr noundef nonnull @.str.83, i16 noundef zeroext 384, ptr noundef %63, ptr noundef %arrayidx37.i) #10
  %arrayidx45.i = getelementptr %struct.b43_dfsentry, ptr %45, i32 0, i32 21, i32 6
  %64 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %arrayidx45.i, align 2
  %65 = ptrtoint ptr %subdir.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %subdir.i, align 4
  call void @debugfs_create_bool(ptr noundef nonnull @.str.84, i16 noundef zeroext 384, ptr noundef %66, ptr noundef %arrayidx45.i) #10
  %arrayidx53.i = getelementptr %struct.b43_dfsentry, ptr %45, i32 0, i32 21, i32 7
  %67 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %arrayidx53.i, align 1
  %68 = ptrtoint ptr %subdir.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %subdir.i, align 4
  call void @debugfs_create_bool(ptr noundef nonnull @.str.85, i16 noundef zeroext 384, ptr noundef %69, ptr noundef %arrayidx53.i) #10
  %arrayidx61.i = getelementptr %struct.b43_dfsentry, ptr %45, i32 0, i32 21, i32 8
  %70 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %arrayidx61.i, align 4
  %71 = ptrtoint ptr %subdir.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %subdir.i, align 4
  call void @debugfs_create_bool(ptr noundef nonnull @.str.86, i16 noundef zeroext 384, ptr noundef %72, ptr noundef %arrayidx61.i) #10
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.then29, %if.then22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %devdir) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_debugfs_remove_device(ptr noundef readonly %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dfsentry = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %dfsentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dfsentry, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %subdir = getelementptr inbounds %struct.b43_dfsentry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %subdir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdir, align 4
  tail call void @debugfs_remove(ptr noundef %3) #10
  %txstatlog = getelementptr inbounds %struct.b43_dfsentry, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %txstatlog to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %txstatlog, align 4
  tail call void @kfree(ptr noundef %5) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @b43_debugfs_log_txstat(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %status) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dfsentry = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %dfsentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dfsentry, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %txstatlog = getelementptr inbounds %struct.b43_dfsentry, ptr %1, i32 0, i32 14
  %end = getelementptr inbounds %struct.b43_dfsentry, ptr %1, i32 0, i32 14, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  %add = add i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %add)
  %cmp = icmp eq i32 %add, 100
  %spec.store.select = select i1 %cmp, i32 0, i32 %add
  %4 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.store.select, ptr %end, align 4
  %5 = ptrtoint ptr %txstatlog to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %txstatlog, align 4
  %arrayidx = getelementptr %struct.b43_txstatus, ptr %6, i32 %spec.store.select
  %7 = call ptr @memcpy(ptr %arrayidx, ptr %status, i32 12)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_debugfs_init() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.15, ptr noundef null) #10
  store ptr %call, ptr @rootdir, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_debugfs_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rootdir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shm16read__read_file(ptr noundef %dev, ptr noundef %buf, i32 noundef %bufsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dfsentry = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %dfsentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dfsentry, align 4
  %shm16read_routing_next = getelementptr inbounds %struct.b43_dfsentry, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %shm16read_routing_next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shm16read_routing_next, align 4
  %shm16read_addr_next = getelementptr inbounds %struct.b43_dfsentry, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %shm16read_addr_next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shm16read_addr_next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %5)
  %cmp2 = icmp ugt i32 %5, 65535
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %3 to i16
  %conv3 = trunc i32 %5 to i16
  %call = tail call zeroext i16 @b43_shm_read16(ptr noundef %dev, i16 noundef zeroext %conv, i16 noundef zeroext %conv3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufsize)
  %tobool.not = icmp eq i32 %bufsize, 0
  br i1 %tobool.not, label %do.end, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv6 = zext i16 %call to i32
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %bufsize, ptr noundef nonnull @.str.16, i32 noundef %conv6) #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -89, %entry.cleanup_crit_edge ], [ %call7, %if.then4 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shm16read__write_file(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %buf, i32 noundef %count) #7 align 64 {
entry:
  %routing = alloca i32, align 4
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %routing) #10
  %0 = ptrtoint ptr %routing to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %routing, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %addr, align 4, !annotation !190
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.19, ptr noundef nonnull %routing, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %routing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %routing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp1 = icmp ugt i32 %3, 4
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %5)
  %cmp4 = icmp ugt i32 %5, 65535
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp7 = icmp ne i32 %3, 1
  %rem = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp9.not = icmp eq i32 %rem, 0
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp9.not
  br i1 %or.cond, label %if.end12, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %dfsentry = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 26
  %6 = ptrtoint ptr %dfsentry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dfsentry, align 4
  %shm16read_routing_next = getelementptr inbounds %struct.b43_dfsentry, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %shm16read_routing_next to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %shm16read_routing_next, align 4
  %9 = load ptr, ptr %dfsentry, align 4
  %shm16read_addr_next = getelementptr inbounds %struct.b43_dfsentry, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %shm16read_addr_next to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %5, ptr %shm16read_addr_next, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ], [ -99, %if.end3.cleanup_crit_edge ], [ -99, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %routing) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43_debugfs_read(ptr noundef %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl, align 4
  %mutex = getelementptr inbounds %struct.b43_wl, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %__init_status = getelementptr inbounds %struct.b43_wldev, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #10
  %4 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp slt i32 %5, 1
  br i1 %cmp, label %if.end3.out_unlock_crit_edge, label %if.end6

if.end3.out_unlock_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end6:                                          ; preds = %if.end3
  %call7 = tail call ptr @debugfs_real_fops(ptr noundef %file) #10
  %add.ptr = getelementptr i8, ptr %call7, i32 -8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end6.out_unlock_crit_edge, label %if.end10

if.end6.out_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end10:                                         ; preds = %if.end6
  %dfsentry.i = getelementptr inbounds %struct.b43_wldev, ptr %1, i32 0, i32 26
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
  br i1 %tobool12.not, label %if.then13, label %if.end10.if.end24_crit_edge

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then13:                                        ; preds = %if.end10
  %call14 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 2) #10
  %14 = inttoptr i32 %call14 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.out_unlock_crit_edge, label %if.end17

if.then13.out_unlock_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end17:                                         ; preds = %if.then13
  %15 = call ptr @memset(ptr %14, i32 0, i32 16384)
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %call19 = tail call i32 %17(ptr noundef nonnull %1, ptr noundef nonnull %14, i32 noundef 16384) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @free_pages(i32 noundef %call14, i32 noundef 2) #10
  br label %out_unlock

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %data_len = getelementptr inbounds %struct.b43_dfs_file, ptr %add.ptr.i, i32 0, i32 1
  %18 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call19, ptr %data_len, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %14, ptr %add.ptr.i, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %if.end10.if.end24_crit_edge
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %data_len26 = getelementptr inbounds %struct.b43_dfs_file, ptr %add.ptr.i, i32 0, i32 1
  %22 = ptrtoint ptr %data_len26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_len26, align 4
  %call27 = tail call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef %21, i32 noundef %23) #10
  %24 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %ppos, align 8
  %26 = ptrtoint ptr %data_len26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len26, align 4
  %conv = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %conv)
  %cmp29.not = icmp slt i64 %25, %conv
  br i1 %cmp29.not, label %if.end24.out_unlock_crit_edge, label %if.then31

if.end24.out_unlock_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 4
  %30 = ptrtoint ptr %29 to i32
  tail call void @free_pages(i32 noundef %30, i32 noundef 2) #10
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %add.ptr.i, align 4
  %32 = ptrtoint ptr %data_len26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %data_len26, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.then31, %if.end24.out_unlock_crit_edge, %if.then21, %if.then13.out_unlock_crit_edge, %if.end6.out_unlock_crit_edge, %if.end3.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call27, %if.then31 ], [ %call27, %if.end24.out_unlock_crit_edge ], [ %call19, %if.then21 ], [ -1, %if.end3.out_unlock_crit_edge ], [ -1, %if.end6.out_unlock_crit_edge ], [ -1, %if.then13.out_unlock_crit_edge ]
  %err.0 = phi i32 [ 0, %if.then31 ], [ 0, %if.end24.out_unlock_crit_edge ], [ %call19, %if.then21 ], [ -19, %if.end3.out_unlock_crit_edge ], [ -38, %if.end6.out_unlock_crit_edge ], [ -12, %if.then13.out_unlock_crit_edge ]
  %33 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wl, align 4
  %mutex37 = getelementptr inbounds %struct.b43_wl, ptr %34, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %mutex37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool38.not = icmp eq i32 %err.0, 0
  %spec.select = select i1 %tobool38.not, i32 %ret.0, i32 %err.0
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %spec.select, %out_unlock ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43_debugfs_write(ptr noundef %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %count)
  %cmp = icmp ugt i32 %count, 4096
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl, align 4
  %mutex = getelementptr inbounds %struct.b43_wl, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %__init_status = getelementptr inbounds %struct.b43_wldev, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #10
  %4 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp6 = icmp slt i32 %5, 1
  br i1 %cmp6, label %if.end5.out_unlock_crit_edge, label %if.end8

if.end5.out_unlock_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end8:                                          ; preds = %if.end5
  %call9 = tail call ptr @debugfs_real_fops(ptr noundef %file) #10
  %write = getelementptr i8, ptr %call9, i32 -4
  %6 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.end8.out_unlock_crit_edge, label %if.end12

if.end8.out_unlock_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @get_zeroed_page(i32 noundef 3264) #10
  %8 = inttoptr i32 %call13 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.out_unlock_crit_edge, label %if.then.i.i.i

if.end12.out_unlock_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then.i.i.i:                                    ; preds = %if.end12
  tail call void @__check_object_size(ptr noundef nonnull %8, i32 noundef %count, i1 noundef zeroext false) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #10
  %call.i.i47 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i47, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %userbuf, i32 %count, i32 -1226833920) #15, !srcloc !191
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !188

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %8, i32 noundef %count) #10
  %10 = tail call i32 @llvm.read_register.i32(metadata !177) #10
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !192
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %userbuf, i32 noundef %count) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end20, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !188

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i50 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %count, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %count, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %count, %res.0.i.i50
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i50)
  br label %out_freepage

if.end20:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write, align 4
  %call22 = tail call i32 %15(ptr noundef nonnull %1, ptr noundef nonnull %8, i32 noundef %count) #10
  br label %out_freepage

out_freepage:                                     ; preds = %if.end20, %if.then11.i.i
  %err.0 = phi i32 [ %call22, %if.end20 ], [ -14, %if.then11.i.i ]
  tail call void @free_pages(i32 noundef %call13, i32 noundef 0) #10
  br label %out_unlock

out_unlock:                                       ; preds = %out_freepage, %if.end12.out_unlock_crit_edge, %if.end8.out_unlock_crit_edge, %if.end5.out_unlock_crit_edge
  %err.1 = phi i32 [ %err.0, %out_freepage ], [ -19, %if.end5.out_unlock_crit_edge ], [ -38, %if.end8.out_unlock_crit_edge ], [ -12, %if.end12.out_unlock_crit_edge ]
  %16 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wl, align 4
  %mutex27 = getelementptr inbounds %struct.b43_wl, ptr %17, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %mutex27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool28.not = icmp eq i32 %err.1, 0
  %spec.select = select i1 %tobool28.not, i32 %count, i32 %err.1
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -7, %if.end.cleanup_crit_edge ], [ -19, %if.end2.cleanup_crit_edge ], [ %spec.select, %out_unlock ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @b43_shm_read16(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

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
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shm16write__write_file(ptr noundef %dev, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %routing = alloca i32, align 4
  %addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %set = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %routing) #10
  %0 = ptrtoint ptr %routing to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %routing, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %addr, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #10
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mask, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set) #10
  %3 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %set, align 4, !annotation !190
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.23, ptr noundef nonnull %routing, ptr noundef nonnull %addr, ptr noundef nonnull %mask, ptr noundef nonnull %set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp.not = icmp eq i32 %call, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %routing to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %routing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1 = icmp ugt i32 %5, 4
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %7)
  %cmp4 = icmp ugt i32 %7, 65535
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp7 = icmp ne i32 %5, 1
  %rem = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp9.not = icmp eq i32 %rem, 0
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp9.not
  br i1 %or.cond, label %if.end12, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %9)
  %cmp13 = icmp ugt i32 %9, 65535
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %lor.lhs.false

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end12
  %10 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %11)
  %cmp14 = icmp ugt i32 %11, 65535
  br i1 %cmp14, label %lor.lhs.false.cleanup_crit_edge, label %if.end16

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp17 = icmp eq i32 %9, 0
  br i1 %cmp17, label %if.end16.if.end21_crit_edge, label %if.else

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %5 to i16
  %conv19 = trunc i32 %7 to i16
  %call20 = call zeroext i16 @b43_shm_read16(ptr noundef %dev, i16 noundef zeroext %conv, i16 noundef zeroext %conv19) #10
  %phi.cast = zext i16 %call20 to i32
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end16.if.end21_crit_edge
  %val.0 = phi i32 [ %phi.cast, %if.else ], [ 0, %if.end16.if.end21_crit_edge ]
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 4
  %and = and i32 %13, %val.0
  %14 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %set, align 4
  %or = or i32 %and, %15
  %conv25 = trunc i32 %or to i16
  %16 = ptrtoint ptr %routing to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %routing, align 4
  %conv26 = trunc i32 %17 to i16
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr, align 4
  %conv27 = trunc i32 %19 to i16
  call void @b43_shm_write16(ptr noundef %dev, i16 noundef zeroext %conv26, i16 noundef zeroext %conv27, i16 noundef zeroext %conv25) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %lor.lhs.false.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -22, %entry.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ], [ -99, %if.end3.cleanup_crit_edge ], [ -99, %if.end6.cleanup_crit_edge ], [ -7, %lor.lhs.false.cleanup_crit_edge ], [ -7, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %routing) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_shm_write16(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shm32read__read_file(ptr noundef %dev, ptr noundef %buf, i32 noundef %bufsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dfsentry = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %dfsentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dfsentry, align 4
  %shm32read_routing_next = getelementptr inbounds %struct.b43_dfsentry, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %shm32read_routing_next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shm32read_routing_next, align 4
  %shm32read_addr_next = getelementptr inbounds %struct.b43_dfsentry, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %shm32read_addr_next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shm32read_addr_next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %5)
  %cmp2 = icmp ugt i32 %5, 65535
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %3 to i16
  %conv3 = trunc i32 %5 to i16
  %call = tail call i32 @b43_shm_read32(ptr noundef %dev, i16 noundef zeroext %conv, i16 noundef zeroext %conv3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufsize)
  %tobool.not = icmp eq i32 %bufsize, 0
  br i1 %tobool.not, label %do.end, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %bufsize, ptr noundef nonnull @.str.24, i32 noundef %call) #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -89, %entry.cleanup_crit_edge ], [ %call6, %if.then4 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shm32read__write_file(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %buf, i32 noundef %count) #7 align 64 {
entry:
  %routing = alloca i32, align 4
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %routing) #10
  %0 = ptrtoint ptr %routing to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %routing, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %addr, align 4, !annotation !190
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.19, ptr noundef nonnull %routing, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %routing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %routing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp1 = icmp ugt i32 %3, 4
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %5)
  %cmp4 = icmp ugt i32 %5, 65535
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp7 = icmp ne i32 %3, 1
  %rem = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp9.not = icmp eq i32 %rem, 0
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp9.not
  br i1 %or.cond, label %if.end12, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %dfsentry = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 26
  %6 = ptrtoint ptr %dfsentry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dfsentry, align 4
  %shm32read_routing_next = getelementptr inbounds %struct.b43_dfsentry, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %shm32read_routing_next to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %shm32read_routing_next, align 4
  %9 = load ptr, ptr %dfsentry, align 4
  %shm32read_addr_next = getelementptr inbounds %struct.b43_dfsentry, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %shm32read_addr_next to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %5, ptr %shm32read_addr_next, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ], [ -99, %if.end3.cleanup_crit_edge ], [ -99, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %routing) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43_shm_read32(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shm32write__write_file(ptr noundef %dev, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %routing = alloca i32, align 4
  %addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %set = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %routing) #10
  %0 = ptrtoint ptr %routing to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %routing, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %addr, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #10
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mask, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set) #10
  %3 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %set, align 4, !annotation !190
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.23, ptr noundef nonnull %routing, ptr noundef nonnull %addr, ptr noundef nonnull %mask, ptr noundef nonnull %set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp.not = icmp eq i32 %call, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %routing to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %routing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1 = icmp ugt i32 %5, 4
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %7)
  %cmp4 = icmp ugt i32 %7, 65535
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp7 = icmp ne i32 %5, 1
  %rem = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp9.not = icmp eq i32 %rem, 0
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp9.not
  br i1 %or.cond, label %if.end12, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp17 = icmp eq i32 %9, 0
  br i1 %cmp17, label %if.end12.if.end21_crit_edge, label %if.else

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %5 to i16
  %conv19 = trunc i32 %7 to i16
  %call20 = call i32 @b43_shm_read32(ptr noundef %dev, i16 noundef zeroext %conv, i16 noundef zeroext %conv19) #10
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end12.if.end21_crit_edge
  %val.0 = phi i32 [ %call20, %if.else ], [ 0, %if.end12.if.end21_crit_edge ]
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 4
  %and = and i32 %11, %val.0
  %12 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %set, align 4
  %or = or i32 %and, %13
  %14 = ptrtoint ptr %routing to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %routing, align 4
  %conv22 = trunc i32 %15 to i16
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr, align 4
  %conv23 = trunc i32 %17 to i16
  call void @b43_shm_write32(ptr noundef %dev, i16 noundef zeroext %conv22, i16 noundef zeroext %conv23, i32 noundef %or) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -22, %entry.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ], [ -99, %if.end3.cleanup_crit_edge ], [ -99, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %routing) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_shm_write32(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmio16read__read_file(ptr nocapture noundef readonly %dev, ptr noundef %buf, i32 noundef %bufsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dfsentry = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %dfsentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dfsentry, align 4
  %mmio16read_next = getelementptr inbounds %struct.b43_dfsentry, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %mmio16read_next to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mmio16read_next, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3839, i16 %3)
  %cmp = icmp ugt i16 %3, 3839
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %read16.i = getelementptr inbounds %struct.b43_bus_dev, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read16.i, align 4
  %call.i = tail call zeroext i16 %7(ptr noundef %5, i16 noundef zeroext %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufsize)
  %tobool.not = icmp eq i32 %bufsize, 0
  br i1 %tobool.not, label %do.end, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv5 = zext i16 %call.i to i32
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %bufsize, ptr noundef nonnull @.str.16, i32 noundef %conv5) #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -89, %entry.cleanup_crit_edge ], [ %call6, %if.then3 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmio16read__write_file(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %buf, i32 noundef %count) #7 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr, align 4, !annotation !190
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.27, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3839, i32 %2)
  %cmp1 = icmp ugt i32 %2, 3839
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %rem = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp4.not = icmp eq i32 %rem, 0
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %2 to i16
  %dfsentry = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 26
  %3 = ptrtoint ptr %dfsentry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dfsentry, align 4
  %mmio16read_next = getelementptr inbounds %struct.b43_dfsentry, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %mmio16read_next to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %mmio16read_next, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmio16write__write_file(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %set = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #10
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mask, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set) #10
  %2 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %set, align 4, !annotation !190
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.28, ptr noundef nonnull %addr, ptr noundef nonnull %mask, ptr noundef nonnull %set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp.not = icmp eq i32 %call, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3839, i32 %4)
  %cmp1 = icmp ugt i32 %4, 3839
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %6)
  %cmp4 = icmp ugt i32 %6, 65535
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %lor.lhs.false

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end3
  %7 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %8)
  %cmp5 = icmp ugt i32 %8, 65535
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %rem = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp8.not = icmp eq i32 %rem, 0
  br i1 %cmp8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp11 = icmp eq i32 %6, 0
  br i1 %cmp11, label %if.end10.if.end14_crit_edge, label %if.else

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %4 to i16
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %read16.i = getelementptr inbounds %struct.b43_bus_dev, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read16.i, align 4
  %call.i = call zeroext i16 %12(ptr noundef %10, i16 noundef zeroext %conv) #10
  %phi.cast = zext i16 %call.i to i32
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end10.if.end14_crit_edge
  %val.0 = phi i32 [ %phi.cast, %if.else ], [ 0, %if.end10.if.end14_crit_edge ]
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask, align 4
  %and = and i32 %14, %val.0
  %15 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %set, align 4
  %or = or i32 %and, %16
  %conv18 = trunc i32 %or to i16
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr, align 4
  %conv19 = trunc i32 %18 to i16
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %write16.i = getelementptr inbounds %struct.b43_bus_dev, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write16.i, align 4
  call void %22(ptr noundef %20, i16 noundef zeroext %conv19, i16 noundef zeroext %conv18) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ], [ -7, %lor.lhs.false.cleanup_crit_edge ], [ -7, %if.end3.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmio32read__read_file(ptr nocapture noundef readonly %dev, ptr noundef %buf, i32 noundef %bufsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dfsentry = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %dfsentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dfsentry, align 4
  %mmio32read_next = getelementptr inbounds %struct.b43_dfsentry, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %mmio32read_next to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mmio32read_next, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3839, i16 %3)
  %cmp = icmp ugt i16 %3, 3839
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %read32.i = getelementptr inbounds %struct.b43_bus_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %7(ptr noundef %5, i16 noundef zeroext %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufsize)
  %tobool.not = icmp eq i32 %bufsize, 0
  br i1 %tobool.not, label %do.end, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %bufsize, ptr noundef nonnull @.str.24, i32 noundef %call.i) #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -89, %entry.cleanup_crit_edge ], [ %call5, %if.then3 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmio32read__write_file(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %buf, i32 noundef %count) #7 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr, align 4, !annotation !190
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.27, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3839, i32 %2)
  %cmp1 = icmp ugt i32 %2, 3839
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %rem = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp4.not = icmp eq i32 %rem, 0
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %2 to i16
  %dfsentry = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 26
  %3 = ptrtoint ptr %dfsentry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dfsentry, align 4
  %mmio32read_next = getelementptr inbounds %struct.b43_dfsentry, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %mmio32read_next to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %mmio32read_next, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmio32write__write_file(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %set = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #10
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mask, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set) #10
  %2 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %set, align 4, !annotation !190
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.28, ptr noundef nonnull %addr, ptr noundef nonnull %mask, ptr noundef nonnull %set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp.not = icmp eq i32 %call, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3839, i32 %4)
  %cmp1 = icmp ugt i32 %4, 3839
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %rem = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp8.not = icmp eq i32 %rem, 0
  br i1 %cmp8.not, label %if.end10, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp11 = icmp eq i32 %6, 0
  br i1 %cmp11, label %if.end10.if.end14_crit_edge, label %if.else

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %4 to i16
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %read32.i = getelementptr inbounds %struct.b43_bus_dev, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read32.i, align 4
  %call.i = call i32 %10(ptr noundef %8, i16 noundef zeroext %conv) #10
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end10.if.end14_crit_edge
  %val.0 = phi i32 [ %call.i, %if.else ], [ 0, %if.end10.if.end14_crit_edge ]
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask, align 4
  %and = and i32 %12, %val.0
  %13 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %set, align 4
  %or = or i32 %and, %14
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr, align 4
  %conv15 = trunc i32 %16 to i16
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %write32.i = getelementptr inbounds %struct.b43_bus_dev, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32.i, align 4
  call void %20(ptr noundef %18, i16 noundef zeroext %conv15, i32 noundef %or) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @txstat_read_file(ptr nocapture noundef readonly %dev, ptr noundef %buf, i32 noundef %bufsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dfsentry = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %dfsentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dfsentry, align 4
  %txstatlog = getelementptr inbounds %struct.b43_dfsentry, ptr %1, i32 0, i32 14
  %end = getelementptr inbounds %struct.b43_dfsentry, ptr %1, i32 0, i32 14, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufsize)
  %tobool.not = icmp eq i32 %bufsize, 0
  br i1 %cmp, label %do.body, label %do.body8

do.body:                                          ; preds = %entry
  br i1 %tobool.not, label %do.end, label %if.then1

if.then1:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %bufsize, ptr noundef nonnull @.str.30) #10
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %out

do.body8:                                         ; preds = %entry
  br i1 %tobool.not, label %do.end19, label %if.then11

if.then11:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %bufsize, ptr noundef nonnull @.str.32) #10
  br label %do.end24

do.end19:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %do.end24

do.end24:                                         ; preds = %do.end19, %if.then11
  %count.0 = phi i32 [ %call14, %if.then11 ], [ 0, %do.end19 ]
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end60.while.cond_crit_edge, %do.end24
  %idx.0 = phi i32 [ 0, %do.end24 ], [ %idx.1, %if.end60.while.cond_crit_edge ]
  %i.0.in = phi i32 [ %5, %do.end24 ], [ %spec.store.select, %if.end60.while.cond_crit_edge ]
  %count.1 = phi i32 [ %count.0, %do.end24 ], [ %count.3, %if.end60.while.cond_crit_edge ]
  %i.0 = add i32 %i.0.in, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0)
  %cmp27 = icmp eq i32 %i.0, 100
  %spec.store.select = select i1 %cmp27, i32 0, i32 %i.0
  %6 = ptrtoint ptr %txstatlog to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %txstatlog, align 4
  %arrayidx = getelementptr %struct.b43_txstatus, ptr %7, i32 %spec.store.select
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool31.not = icmp eq i16 %9, 0
  br i1 %tobool31.not, label %while.cond.if.end60_crit_edge, label %do.body33

while.cond.if.end60_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

do.body33:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1, i32 %bufsize)
  %tobool35.not = icmp eq i32 %count.1, %bufsize
  br i1 %tobool35.not, label %do.end54, label %if.then36

if.then36:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  %sub34 = sub i32 %bufsize, %count.1
  %add.ptr37 = getelementptr i8, ptr %buf, i32 %count.1
  %conv = zext i16 %9 to i32
  %seq = getelementptr %struct.b43_txstatus, ptr %7, i32 %spec.store.select, i32 1
  %10 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %seq, align 2
  %conv40 = zext i16 %11 to i32
  %phy_stat = getelementptr %struct.b43_txstatus, ptr %7, i32 %spec.store.select, i32 2
  %12 = ptrtoint ptr %phy_stat to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %phy_stat, align 2
  %conv41 = zext i8 %13 to i32
  %frame_count = getelementptr %struct.b43_txstatus, ptr %7, i32 %spec.store.select, i32 3
  %14 = ptrtoint ptr %frame_count to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %frame_count, align 1
  %conv42 = zext i8 %15 to i32
  %rts_count = getelementptr %struct.b43_txstatus, ptr %7, i32 %spec.store.select, i32 4
  %16 = ptrtoint ptr %rts_count to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rts_count, align 2
  %conv43 = zext i8 %17 to i32
  %supp_reason = getelementptr %struct.b43_txstatus, ptr %7, i32 %spec.store.select, i32 5
  %18 = ptrtoint ptr %supp_reason to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %supp_reason, align 1
  %conv44 = zext i8 %19 to i32
  %pm_indicated = getelementptr %struct.b43_txstatus, ptr %7, i32 %spec.store.select, i32 6
  %20 = ptrtoint ptr %pm_indicated to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pm_indicated, align 2
  %conv45 = zext i8 %21 to i32
  %intermediate = getelementptr %struct.b43_txstatus, ptr %7, i32 %spec.store.select, i32 7
  %22 = ptrtoint ptr %intermediate to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %intermediate, align 1
  %conv46 = zext i8 %23 to i32
  %for_ampdu = getelementptr %struct.b43_txstatus, ptr %7, i32 %spec.store.select, i32 8
  %24 = ptrtoint ptr %for_ampdu to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %for_ampdu, align 2
  %conv47 = zext i8 %25 to i32
  %acked = getelementptr %struct.b43_txstatus, ptr %7, i32 %spec.store.select, i32 9
  %26 = ptrtoint ptr %acked to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %acked, align 1
  %conv48 = zext i8 %27 to i32
  %call49 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37, i32 noundef %sub34, ptr noundef nonnull @.str.35, i32 noundef %idx.0, i32 noundef %conv, i32 noundef %conv40, i32 noundef %conv41, i32 noundef %conv42, i32 noundef %conv43, i32 noundef %conv44, i32 noundef %conv45, i32 noundef %conv46, i32 noundef %conv47, i32 noundef %conv48) #10
  %add50 = add i32 %call49, %count.1
  br label %do.end59

do.end54:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %do.end59

do.end59:                                         ; preds = %do.end54, %if.then36
  %count.2 = phi i32 [ %add50, %if.then36 ], [ %bufsize, %do.end54 ]
  %inc = add i32 %idx.0, 1
  br label %if.end60

if.end60:                                         ; preds = %do.end59, %while.cond.if.end60_crit_edge
  %idx.1 = phi i32 [ %inc, %do.end59 ], [ %idx.0, %while.cond.if.end60_crit_edge ]
  %count.3 = phi i32 [ %count.2, %do.end59 ], [ %count.1, %while.cond.if.end60_crit_edge ]
  %28 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end, align 4
  %cmp62 = icmp eq i32 %spec.store.select, %29
  br i1 %cmp62, label %if.end60.out_crit_edge, label %if.end60.while.cond_crit_edge

if.end60.while.cond_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.end60.out_crit_edge:                           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %if.end60.out_crit_edge, %do.end, %if.then1
  %count.4 = phi i32 [ %call, %if.then1 ], [ 0, %do.end ], [ %count.3, %if.end60.out_crit_edge ]
  ret i32 %count.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @restart_write_file(ptr noundef %dev, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not = icmp eq i32 %count, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %1)
  %cmp1 = icmp eq i8 %1, 49
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @b43_controller_restart(ptr noundef %dev, ptr noundef nonnull @.str.38) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %err.0 = phi i32 [ 0, %if.then ], [ -22, %land.lhs.true.if.end_crit_edge ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_controller_restart(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loctls_read_file(ptr nocapture noundef readonly %dev, ptr noundef %buf, i32 noundef %bufsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %type = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 7
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp.not = icmp eq i8 %2, 2
  br i1 %cmp.not, label %if.end9, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufsize)
  %tobool.not = icmp eq i32 %bufsize, 0
  br i1 %tobool.not, label %do.end, label %if.then3

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %bufsize, ptr noundef nonnull @.str.39) #10
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %out

if.end9:                                          ; preds = %entry
  %3 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %lo_control = getelementptr inbounds %struct.b43_phy_g, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %lo_control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lo_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufsize)
  %tobool12.not = icmp eq i32 %bufsize, 0
  br i1 %tobool12.not, label %do.end21, label %if.then13

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %bufsize, ptr noundef nonnull @.str.41) #10
  br label %do.body27

do.end21:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %do.body27

do.body27:                                        ; preds = %do.end21, %if.then13
  %count.1 = phi i32 [ %call16, %if.then13 ], [ 0, %do.end21 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1, i32 %bufsize)
  %tobool29.not = icmp eq i32 %count.1, %bufsize
  br i1 %tobool29.not, label %do.body47.thread, label %do.body47

do.body47.thread:                                 ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %do.body67.thread

do.body47:                                        ; preds = %do.body27
  %sub28 = sub i32 %bufsize, %count.1
  %add.ptr31 = getelementptr i8, ptr %buf, i32 %count.1
  %hardware_power_control = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 15
  %8 = ptrtoint ptr %hardware_power_control to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hardware_power_control, align 4, !range !187
  %10 = zext i8 %9 to i32
  %call36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr31, i32 noundef %sub28, ptr noundef nonnull @.str.44, i32 noundef %10) #10
  %add37 = add i32 %call36, %count.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %bufsize)
  %tobool49.not = icmp eq i32 %add37, %bufsize
  br i1 %tobool49.not, label %do.body47.do.body67.thread_crit_edge, label %if.then50

do.body47.do.body67.thread_crit_edge:             ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body67.thread

if.then50:                                        ; preds = %do.body47
  %sub48 = sub i32 %bufsize, %add37
  %add.ptr51 = getelementptr i8, ptr %buf, i32 %add37
  %tx_bias = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %7, i32 0, i32 6
  %11 = ptrtoint ptr %tx_bias to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tx_bias, align 8
  %conv53 = zext i8 %12 to i32
  %tx_magn = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %7, i32 0, i32 7
  %13 = ptrtoint ptr %tx_magn to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tx_magn, align 1
  %conv54 = zext i8 %14 to i32
  %txctl_measured_time = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %7, i32 0, i32 5
  %15 = ptrtoint ptr %txctl_measured_time to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %txctl_measured_time, align 4
  %add.i = add i32 %16, 17600
  %sub.i = sub i32 %add.i, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then50.do.body67_crit_edge, label %if.end.i

if.then50.do.body67_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body67

if.end.i:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %0)
  %cmp1.i = icmp ult i32 %add.i, %0
  %sub3.i = add i32 %16, -1073724222
  %sub4.i = add i32 %0, -1073741822
  %now.addr.0.i = select i1 %cmp1.i, i32 %sub4.i, i32 %0
  %expire.addr.0.i = select i1 %cmp1.i, i32 %sub3.i, i32 %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %expire.addr.0.i, i32 %now.addr.0.i)
  %cmp6.i = icmp ult i32 %expire.addr.0.i, %now.addr.0.i
  br i1 %cmp6.i, label %do.end.i, label %if.end.i.if.end20.i_crit_edge, !prof !189

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 420, i32 noundef 9, ptr noundef null) #10
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end.i, %if.end.i.if.end20.i_crit_edge
  %sub27.i = sub i32 %expire.addr.0.i, %now.addr.0.i
  %div.i = udiv i32 %sub27.i, 100
  br label %do.body67

do.body67.thread:                                 ; preds = %do.body47.do.body67.thread_crit_edge, %do.body47.thread
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %do.body89.thread

do.body67:                                        ; preds = %if.end20.i, %if.then50.do.body67_crit_edge
  %retval.0.i = phi i32 [ %div.i, %if.end20.i ], [ 0, %if.then50.do.body67_crit_edge ]
  %call56 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr51, i32 noundef %sub48, ptr noundef nonnull @.str.47, i32 noundef %conv53, i32 noundef %conv54, i32 noundef %retval.0.i) #10
  %add57 = add i32 %call56, %add37
  call void @__sanitizer_cov_trace_cmp4(i32 %add57, i32 %bufsize)
  %tobool69.not = icmp eq i32 %add57, %bufsize
  br i1 %tobool69.not, label %do.body67.do.body89.thread_crit_edge, label %if.then70

do.body67.do.body89.thread_crit_edge:             ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body89.thread

if.then70:                                        ; preds = %do.body67
  %sub68 = sub i32 %bufsize, %add57
  %add.ptr71 = getelementptr i8, ptr %buf, i32 %add57
  %power_vector = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %7, i32 0, i32 8
  %17 = ptrtoint ptr %power_vector to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %power_vector, align 8
  %shr = lshr i64 %18, 32
  %conv73 = trunc i64 %shr to i32
  %conv76 = trunc i64 %18 to i32
  %pwr_vec_read_time = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %7, i32 0, i32 4
  %19 = ptrtoint ptr %pwr_vec_read_time to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pwr_vec_read_time, align 8
  %add.i414 = add i32 %20, 2800
  %sub.i415 = sub i32 %add.i414, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i415)
  %cmp.i416 = icmp slt i32 %sub.i415, 0
  br i1 %cmp.i416, label %if.then70.do.body89_crit_edge, label %if.end.i423

if.then70.do.body89_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body89

if.end.i423:                                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i414, i32 %0)
  %cmp1.i417 = icmp ult i32 %add.i414, %0
  %sub3.i418 = add i32 %20, -1073739022
  %sub4.i419 = add i32 %0, -1073741822
  %now.addr.0.i420 = select i1 %cmp1.i417, i32 %sub4.i419, i32 %0
  %expire.addr.0.i421 = select i1 %cmp1.i417, i32 %sub3.i418, i32 %add.i414
  call void @__sanitizer_cov_trace_cmp4(i32 %expire.addr.0.i421, i32 %now.addr.0.i420)
  %cmp6.i422 = icmp ult i32 %expire.addr.0.i421, %now.addr.0.i420
  br i1 %cmp6.i422, label %do.end.i424, label %if.end.i423.if.end20.i427_crit_edge, !prof !189

if.end.i423.if.end20.i427_crit_edge:              ; preds = %if.end.i423
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i427

do.end.i424:                                      ; preds = %if.end.i423
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 420, i32 noundef 9, ptr noundef null) #10
  br label %if.end20.i427

if.end20.i427:                                    ; preds = %do.end.i424, %if.end.i423.if.end20.i427_crit_edge
  %sub27.i425 = sub i32 %expire.addr.0.i421, %now.addr.0.i420
  %div.i426 = udiv i32 %sub27.i425, 100
  br label %do.body89

do.body89.thread:                                 ; preds = %do.body67.do.body89.thread_crit_edge, %do.body67.thread
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %do.end100

do.body89:                                        ; preds = %if.end20.i427, %if.then70.do.body89_crit_edge
  %retval.0.i428 = phi i32 [ %div.i426, %if.end20.i427 ], [ 0, %if.then70.do.body89_crit_edge ]
  %call78 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr71, i32 noundef %sub68, ptr noundef nonnull @.str.50, i32 noundef %conv73, i32 noundef %conv76, i32 noundef %retval.0.i428) #10
  %add79 = add i32 %call78, %add57
  call void @__sanitizer_cov_trace_cmp4(i32 %add79, i32 %bufsize)
  %tobool91.not = icmp eq i32 %add79, %bufsize
  br i1 %tobool91.not, label %do.body89.do.end100_crit_edge, label %if.then92

do.body89.do.end100_crit_edge:                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end100

if.then92:                                        ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #12
  %sub90 = sub i32 %bufsize, %add79
  %add.ptr93 = getelementptr i8, ptr %buf, i32 %add79
  %call95 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr93, i32 noundef %sub90, ptr noundef nonnull @.str.53) #10
  %add96 = add i32 %call95, %add79
  br label %do.end105

do.end100:                                        ; preds = %do.body89.do.end100_crit_edge, %do.body89.thread
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %do.end105

do.end105:                                        ; preds = %do.end100, %if.then92
  %count.5 = phi i32 [ %add96, %if.then92 ], [ %bufsize, %do.end100 ]
  %calib_list = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %7, i32 0, i32 3
  %21 = ptrtoint ptr %calib_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn448 = load ptr, ptr %calib_list, align 4
  %cmp109.not449 = icmp eq ptr %.pn448, %calib_list
  br i1 %cmp109.not449, label %do.end105.do.body156_crit_edge, label %for.body.lr.ph

do.end105.do.body156_crit_edge:                   ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body156

for.body.lr.ph:                                   ; preds = %do.end105
  %sub4.i437 = add i32 %0, -1073741822
  br label %for.body

for.body:                                         ; preds = %do.end150.for.body_crit_edge, %for.body.lr.ph
  %.pn451 = phi ptr [ %.pn448, %for.body.lr.ph ], [ %.pn, %do.end150.for.body_crit_edge ]
  %count.6450 = phi i32 [ %count.5, %for.body.lr.ph ], [ %count.7, %do.end150.for.body_crit_edge ]
  %cal.0 = getelementptr i8, ptr %.pn451, i32 -12
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %bbatt112 = getelementptr inbounds %struct.b43_phy_g, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %cal.0 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cal.0, align 1
  %26 = ptrtoint ptr %bbatt112 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bbatt112, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp.i430 = icmp eq i8 %25, %27
  br i1 %cmp.i430, label %land.rhs, label %for.body.land.end_crit_edge

for.body.land.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %for.body
  %rfatt = getelementptr i8, ptr %.pn451, i32 -11
  %rfatt116 = getelementptr inbounds %struct.b43_phy_g, ptr %23, i32 0, i32 13
  %28 = ptrtoint ptr %rfatt to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rfatt, align 1
  %30 = ptrtoint ptr %rfatt116 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rfatt116, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp.i431 = icmp eq i8 %29, %31
  br i1 %cmp.i431, label %land.rhs.i, label %land.rhs.land.end_crit_edge

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs.i:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %with_padmix.i = getelementptr i8, ptr %.pn451, i32 -10
  %32 = ptrtoint ptr %with_padmix.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %with_padmix.i, align 1, !range !187
  %with_padmix5.i = getelementptr inbounds %struct.b43_phy_g, ptr %23, i32 0, i32 13, i32 1
  %34 = ptrtoint ptr %with_padmix5.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %with_padmix5.i, align 1, !range !187
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp8.i = icmp eq i8 %33, %35
  br label %land.end

land.end:                                         ; preds = %land.rhs.i, %land.rhs.land.end_crit_edge, %for.body.land.end_crit_edge
  %36 = phi i1 [ false, %for.body.land.end_crit_edge ], [ false, %land.rhs.land.end_crit_edge ], [ %cmp8.i, %land.rhs.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.6450, i32 %bufsize)
  %tobool121.not = icmp eq i32 %count.6450, %bufsize
  br i1 %tobool121.not, label %do.end145, label %if.then122

if.then122:                                       ; preds = %land.end
  %sub120 = sub i32 %bufsize, %count.6450
  %add.ptr123 = getelementptr i8, ptr %buf, i32 %count.6450
  %conv126 = zext i8 %25 to i32
  %rfatt127 = getelementptr i8, ptr %.pn451, i32 -11
  %37 = ptrtoint ptr %rfatt127 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rfatt127, align 1
  %conv129 = zext i8 %38 to i32
  %with_padmix = getelementptr i8, ptr %.pn451, i32 -10
  %39 = ptrtoint ptr %with_padmix to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %with_padmix, align 1, !range !187
  %41 = zext i8 %40 to i32
  %ctl = getelementptr i8, ptr %.pn451, i32 -9
  %42 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ctl, align 1
  %conv134 = sext i8 %43 to i32
  %q = getelementptr i8, ptr %.pn451, i32 -8
  %44 = ptrtoint ptr %q to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %q, align 1
  %conv136 = sext i8 %45 to i32
  %calib_time = getelementptr i8, ptr %.pn451, i32 -4
  %46 = ptrtoint ptr %calib_time to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %calib_time, align 4
  %add.i432 = add i32 %47, 2800
  %sub.i433 = sub i32 %add.i432, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i433)
  %cmp.i434 = icmp slt i32 %sub.i433, 0
  br i1 %cmp.i434, label %if.then122.calc_expire_secs.exit447_crit_edge, label %if.end.i441

if.then122.calc_expire_secs.exit447_crit_edge:    ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_expire_secs.exit447

if.end.i441:                                      ; preds = %if.then122
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i432, i32 %0)
  %cmp1.i435 = icmp ult i32 %add.i432, %0
  %sub3.i436 = add i32 %47, -1073739022
  %now.addr.0.i438 = select i1 %cmp1.i435, i32 %sub4.i437, i32 %0
  %expire.addr.0.i439 = select i1 %cmp1.i435, i32 %sub3.i436, i32 %add.i432
  call void @__sanitizer_cov_trace_cmp4(i32 %expire.addr.0.i439, i32 %now.addr.0.i438)
  %cmp6.i440 = icmp ult i32 %expire.addr.0.i439, %now.addr.0.i438
  br i1 %cmp6.i440, label %do.end.i442, label %if.end.i441.if.end20.i445_crit_edge, !prof !189

if.end.i441.if.end20.i445_crit_edge:              ; preds = %if.end.i441
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i445

do.end.i442:                                      ; preds = %if.end.i441
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 420, i32 noundef 9, ptr noundef null) #10
  br label %if.end20.i445

if.end20.i445:                                    ; preds = %do.end.i442, %if.end.i441.if.end20.i445_crit_edge
  %sub27.i443 = sub i32 %expire.addr.0.i439, %now.addr.0.i438
  %div.i444 = udiv i32 %sub27.i443, 100
  br label %calc_expire_secs.exit447

calc_expire_secs.exit447:                         ; preds = %if.end20.i445, %if.then122.calc_expire_secs.exit447_crit_edge
  %retval.0.i446 = phi i32 [ %div.i444, %if.end20.i445 ], [ 0, %if.then122.calc_expire_secs.exit447_crit_edge ]
  %cond = select i1 %36, ptr @.str.57, ptr @.str.58
  %call140 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr123, i32 noundef %sub120, ptr noundef nonnull @.str.56, i32 noundef %conv126, i32 noundef %conv129, i32 noundef %41, i32 noundef %conv134, i32 noundef %conv136, i32 noundef %retval.0.i446, ptr noundef nonnull %cond) #10
  %add141 = add i32 %call140, %count.6450
  br label %do.end150

do.end145:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %do.end150

do.end150:                                        ; preds = %do.end145, %calc_expire_secs.exit447
  %count.7 = phi i32 [ %add141, %calc_expire_secs.exit447 ], [ %bufsize, %do.end145 ]
  %48 = ptrtoint ptr %.pn451 to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn = load ptr, ptr %.pn451, align 4
  %cmp109.not = icmp eq ptr %.pn, %calib_list
  br i1 %cmp109.not, label %do.end150.do.body156_crit_edge, label %do.end150.for.body_crit_edge

do.end150.for.body_crit_edge:                     ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end150.do.body156_crit_edge:                   ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body156

do.body156:                                       ; preds = %do.end150.do.body156_crit_edge, %do.end105.do.body156_crit_edge
  %count.6.lcssa = phi i32 [ %count.5, %do.end105.do.body156_crit_edge ], [ %count.7, %do.end150.do.body156_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.6.lcssa, i32 %bufsize)
  %tobool158.not = icmp eq i32 %count.6.lcssa, %bufsize
  br i1 %tobool158.not, label %do.end167, label %if.then159

if.then159:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #12
  %sub157 = sub i32 %bufsize, %count.6.lcssa
  %add.ptr160 = getelementptr i8, ptr %buf, i32 %count.6.lcssa
  %call162 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr160, i32 noundef %sub157, ptr noundef nonnull @.str.61) #10
  %add163 = add i32 %call162, %count.6.lcssa
  br label %do.end172

do.end167:                                        ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #12
  %call169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %do.end172

do.end172:                                        ; preds = %do.end167, %if.then159
  %count.8 = phi i32 [ %add163, %if.then159 ], [ %bufsize, %do.end167 ]
  %len = getelementptr inbounds %struct.b43_rfatt_list, ptr %7, i32 0, i32 1
  %49 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp175453.not = icmp eq i8 %50, 0
  br i1 %cmp175453.not, label %do.end172.do.body207_crit_edge, label %do.end172.do.body178_crit_edge

do.end172.do.body178_crit_edge:                   ; preds = %do.end172
  br label %do.body178

do.end172.do.body207_crit_edge:                   ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body207

do.body178:                                       ; preds = %for.inc205.do.body178_crit_edge, %do.end172.do.body178_crit_edge
  %count.9456 = phi i32 [ %count.10, %for.inc205.do.body178_crit_edge ], [ %count.8, %do.end172.do.body178_crit_edge ]
  %i.0454 = phi i32 [ %inc, %for.inc205.do.body178_crit_edge ], [ 0, %do.end172.do.body178_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.9456, i32 %bufsize)
  %tobool180.not = icmp eq i32 %count.9456, %bufsize
  br i1 %tobool180.not, label %do.end199, label %if.then181

if.then181:                                       ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #12
  %sub179 = sub i32 %bufsize, %count.9456
  %add.ptr182 = getelementptr i8, ptr %buf, i32 %count.9456
  %51 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %7, align 8
  %arrayidx = getelementptr %struct.b43_rfatt, ptr %52, i32 %i.0454
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx, align 1
  %conv187 = zext i8 %54 to i32
  %with_padmix191 = getelementptr %struct.b43_rfatt, ptr %52, i32 %i.0454, i32 1
  %55 = ptrtoint ptr %with_padmix191 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %with_padmix191, align 1, !range !187
  %57 = zext i8 %56 to i32
  %call194 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr182, i32 noundef %sub179, ptr noundef nonnull @.str.64, i32 noundef %conv187, i32 noundef %57) #10
  %add195 = add i32 %call194, %count.9456
  br label %for.inc205

do.end199:                                        ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #12
  %call201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %for.inc205

for.inc205:                                       ; preds = %do.end199, %if.then181
  %count.10 = phi i32 [ %add195, %if.then181 ], [ %bufsize, %do.end199 ]
  %inc = add nuw nsw i32 %i.0454, 1
  %58 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %len, align 4
  %conv174 = zext i8 %59 to i32
  %cmp175 = icmp ult i32 %inc, %conv174
  br i1 %cmp175, label %for.inc205.do.body178_crit_edge, label %for.inc205.do.body207_crit_edge

for.inc205.do.body207_crit_edge:                  ; preds = %for.inc205
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body207

for.inc205.do.body178_crit_edge:                  ; preds = %for.inc205
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body178

do.body207:                                       ; preds = %for.inc205.do.body207_crit_edge, %do.end172.do.body207_crit_edge
  %count.9.lcssa = phi i32 [ %count.8, %do.end172.do.body207_crit_edge ], [ %count.10, %for.inc205.do.body207_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.9.lcssa, i32 %bufsize)
  %tobool209.not = icmp eq i32 %count.9.lcssa, %bufsize
  br i1 %tobool209.not, label %do.body224.thread, label %do.body224

do.body224.thread:                                ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #12
  %call220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %do.end235

do.body224:                                       ; preds = %do.body207
  %sub208 = sub i32 %bufsize, %count.9.lcssa
  %add.ptr211 = getelementptr i8, ptr %buf, i32 %count.9.lcssa
  %call213 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr211, i32 noundef %sub208, ptr noundef nonnull @.str.67) #10
  %add214 = add i32 %call213, %count.9.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %add214, i32 %bufsize)
  %tobool226.not = icmp eq i32 %add214, %bufsize
  br i1 %tobool226.not, label %do.body224.do.end235_crit_edge, label %if.then227

do.body224.do.end235_crit_edge:                   ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end235

if.then227:                                       ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #12
  %sub225 = sub i32 %bufsize, %add214
  %add.ptr228 = getelementptr i8, ptr %buf, i32 %add214
  %call230 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr228, i32 noundef %sub225, ptr noundef nonnull @.str.70) #10
  %add231 = add i32 %call230, %add214
  br label %do.end240

do.end235:                                        ; preds = %do.body224.do.end235_crit_edge, %do.body224.thread
  %call237 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %do.end240

do.end240:                                        ; preds = %do.end235, %if.then227
  %count.12 = phi i32 [ %add231, %if.then227 ], [ %bufsize, %do.end235 ]
  %bbatt_list = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %7, i32 0, i32 1
  %len242 = getelementptr inbounds %struct.b43_txpower_lo_control, ptr %7, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %len242 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %len242, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp244459.not = icmp eq i8 %61, 0
  br i1 %cmp244459.not, label %do.end240.do.body272_crit_edge, label %do.end240.do.body247_crit_edge

do.end240.do.body247_crit_edge:                   ; preds = %do.end240
  br label %do.body247

do.end240.do.body272_crit_edge:                   ; preds = %do.end240
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body272

do.body247:                                       ; preds = %for.inc269.do.body247_crit_edge, %do.end240.do.body247_crit_edge
  %count.13462 = phi i32 [ %count.14, %for.inc269.do.body247_crit_edge ], [ %count.12, %do.end240.do.body247_crit_edge ]
  %i.1460 = phi i32 [ %inc270, %for.inc269.do.body247_crit_edge ], [ 0, %do.end240.do.body247_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.13462, i32 %bufsize)
  %tobool249.not = icmp eq i32 %count.13462, %bufsize
  br i1 %tobool249.not, label %do.end263, label %if.then250

if.then250:                                       ; preds = %do.body247
  call void @__sanitizer_cov_trace_pc() #12
  %sub248 = sub i32 %bufsize, %count.13462
  %add.ptr251 = getelementptr i8, ptr %buf, i32 %count.13462
  %62 = ptrtoint ptr %bbatt_list to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bbatt_list, align 8
  %arrayidx255 = getelementptr %struct.b43_bbatt, ptr %63, i32 %i.1460
  %64 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx255, align 1
  %conv257 = zext i8 %65 to i32
  %call258 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr251, i32 noundef %sub248, ptr noundef nonnull @.str.73, i32 noundef %conv257) #10
  %add259 = add i32 %call258, %count.13462
  br label %for.inc269

do.end263:                                        ; preds = %do.body247
  call void @__sanitizer_cov_trace_pc() #12
  %call265 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %for.inc269

for.inc269:                                       ; preds = %do.end263, %if.then250
  %count.14 = phi i32 [ %add259, %if.then250 ], [ %bufsize, %do.end263 ]
  %inc270 = add nuw nsw i32 %i.1460, 1
  %66 = ptrtoint ptr %len242 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %len242, align 4
  %conv243 = zext i8 %67 to i32
  %cmp244 = icmp ult i32 %inc270, %conv243
  br i1 %cmp244, label %for.inc269.do.body247_crit_edge, label %for.inc269.do.body272_crit_edge

for.inc269.do.body272_crit_edge:                  ; preds = %for.inc269
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body272

for.inc269.do.body247_crit_edge:                  ; preds = %for.inc269
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body247

do.body272:                                       ; preds = %for.inc269.do.body272_crit_edge, %do.end240.do.body272_crit_edge
  %count.13.lcssa = phi i32 [ %count.12, %do.end240.do.body272_crit_edge ], [ %count.14, %for.inc269.do.body272_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.13.lcssa, i32 %bufsize)
  %tobool274.not = icmp eq i32 %count.13.lcssa, %bufsize
  br i1 %tobool274.not, label %do.end283, label %if.then275

if.then275:                                       ; preds = %do.body272
  call void @__sanitizer_cov_trace_pc() #12
  %sub273 = sub i32 %bufsize, %count.13.lcssa
  %add.ptr276 = getelementptr i8, ptr %buf, i32 %count.13.lcssa
  %call278 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr276, i32 noundef %sub273, ptr noundef nonnull @.str.67) #10
  %add279 = add i32 %call278, %count.13.lcssa
  br label %out

do.end283:                                        ; preds = %do.body272
  call void @__sanitizer_cov_trace_pc() #12
  %call285 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %out

out:                                              ; preds = %do.end283, %if.then275, %do.end, %if.then3
  %count.15.err.0 = phi i32 [ -19, %if.then3 ], [ -19, %do.end ], [ %add279, %if.then275 ], [ %bufsize, %do.end283 ]
  ret i32 %count.15.err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !42, !44, !46, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62, !64, !66, !68, !69, !70, !72, !74, !76, !78, !80, !81, !82, !84, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !103, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !161, !163, !165, !167, !169, !171, !173, !175}
!llvm.named.register.sp = !{!177}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 675, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 678, i32 19}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 686, i32 19}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 694, i32 35}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 712, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 713, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 714, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 715, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 716, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 717, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 718, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 719, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 720, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 721, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 722, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 765, i32 31}
!32 = !{ptr @rootdir, !33, !"rootdir", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 28, i32 23}
!34 = !{ptr @fops_shm16read, !35, !"fops_shm16read", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 619, i32 1}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 80, i32 2}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @shm16read__read_file._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @shm16read__read_file._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 91, i32 20}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!51 = !{ptr @fops_shm16write, !52, !"fops_shm16write", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 620, i32 1}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 116, i32 20}
!55 = !{ptr @fops_shm32read, !56, !"fops_shm32read", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 621, i32 1}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 156, i32 2}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @shm32read__read_file._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @shm32read__read_file._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @fops_shm32write, !63, !"fops_shm32write", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 622, i32 1}
!64 = !{ptr @fops_mmio16read, !65, !"fops_mmio16read", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 623, i32 1}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 233, i32 2}
!68 = !{ptr @mmio16read__read_file._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @mmio16read__read_file._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 244, i32 20}
!72 = !{ptr @fops_mmio16write, !73, !"fops_mmio16write", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 624, i32 1}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 264, i32 20}
!76 = !{ptr @fops_mmio32read, !77, !"fops_mmio32read", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 625, i32 1}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 297, i32 2}
!80 = !{ptr @mmio32read__read_file._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @mmio32read__read_file._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @fops_mmio32write, !83, !"fops_mmio32write", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 626, i32 1}
!84 = !{ptr @fops_txstat, !85, !"fops_txstat", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 627, i32 1}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 358, i32 3}
!88 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @txstat_read_file._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @txstat_read_file._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 361, i32 2}
!93 = !{ptr @txstat_read_file._entry.33, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @txstat_read_file._entry_ptr.34, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 372, i32 4}
!97 = !{ptr @txstat_read_file._entry.36, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @txstat_read_file._entry_ptr.37, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @fops_restart, !100, !"fops_restart", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 628, i32 1}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 400, i32 31}
!103 = !{ptr @fops_loctls, !104, !"fops_loctls", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 629, i32 1}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 436, i32 3}
!107 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @loctls_read_file._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @loctls_read_file._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.41, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 441, i32 2}
!112 = !{ptr @loctls_read_file._entry.42, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @loctls_read_file._entry_ptr.43, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 442, i32 2}
!116 = !{ptr @loctls_read_file._entry.45, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @loctls_read_file._entry_ptr.46, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 444, i32 2}
!120 = !{ptr @loctls_read_file._entry.48, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @loctls_read_file._entry_ptr.49, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 448, i32 2}
!124 = !{ptr @loctls_read_file._entry.51, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @loctls_read_file._entry_ptr.52, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 454, i32 2}
!128 = !{ptr @loctls_read_file._entry.54, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @loctls_read_file._entry_ptr.55, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 460, i32 3}
!132 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @loctls_read_file._entry.59, !131, !"_entry", i1 false, i1 false}
!135 = !{ptr @loctls_read_file._entry_ptr.60, !131, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 470, i32 2}
!138 = !{ptr @loctls_read_file._entry.62, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @loctls_read_file._entry_ptr.63, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 472, i32 3}
!142 = !{ptr @loctls_read_file._entry.65, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @loctls_read_file._entry_ptr.66, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 476, i32 2}
!146 = !{ptr @loctls_read_file._entry.68, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @loctls_read_file._entry_ptr.69, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 477, i32 2}
!150 = !{ptr @loctls_read_file._entry.71, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @loctls_read_file._entry_ptr.72, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 479, i32 3}
!154 = !{ptr @loctls_read_file._entry.74, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @loctls_read_file._entry_ptr.75, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @loctls_read_file._entry.76, !157, !"_entry", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 482, i32 2}
!158 = !{ptr @loctls_read_file._entry_ptr.77, !157, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 656, i32 2}
!161 = !{ptr @.str.79, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 657, i32 2}
!163 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 658, i32 2}
!165 = !{ptr @.str.81, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 659, i32 2}
!167 = !{ptr @.str.82, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 660, i32 2}
!169 = !{ptr @.str.83, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 661, i32 2}
!171 = !{ptr @.str.84, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 662, i32 2}
!173 = !{ptr @.str.85, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 663, i32 2}
!175 = !{ptr @.str.86, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/broadcom/b43/debugfs.c", i32 664, i32 2}
!177 = !{!"sp"}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!187 = !{i8 0, i8 2}
!188 = !{!"branch_weights", i32 2000, i32 1}
!189 = !{!"branch_weights", i32 1, i32 2000}
!190 = !{!"auto-init"}
!191 = !{i64 2152180360, i64 2152180385}
!192 = !{i64 4675915}
!193 = !{i64 4676112}
!194 = !{i64 2152161345}
