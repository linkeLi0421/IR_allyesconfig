; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/libertas/debugfs.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/libertas/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lbs_debugfs_files = type { ptr, i16, %struct.file_operations }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.debug_data = type { [32 x i8], i32, i32 }
%struct.lbs_private = type { ptr, i32, %struct.work_struct, i32, [32 x [6 x i8]], ptr, i8, ptr, [6 x i8], [3 x i8], i8, ptr, %struct.lbs_mesh_stats, i16, i8, ptr, ptr, [6 x ptr], ptr, [6 x ptr], ptr, [6 x ptr], i32, i32, i32, i16, i32, i8, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.timer_list, i32, i32, %struct.wait_queue_head, ptr, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, [6 x i8], i8, i8, i16, ptr, ptr, %struct.list_head, %struct.list_head, %struct.timer_list, i32, i8, [2 x [2312 x i8]], [2 x i32], %struct.kfifo, ptr, %struct.wait_queue_head, ptr, i8, i8, [4 x [13 x i8]], [4 x i8], i32, i8, i8, i8, i32, [2312 x i8], i8, ptr, %struct.timer_list, %struct.mutex, %struct.spinlock, i16, i8, i8, i8, i16, i16, i16, %struct.delayed_work, i32, %struct.wait_queue_head, i8, i32, %struct.wait_queue_head, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lbs_mesh_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kfifo = type { %union.anon.128, [0 x i8] }
%union.anon.128 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.sleep_params = type { i16, i16, i16, i8, i8, i16 }
%struct.cmd_header = type { i16, i16, i16, i16 }
%struct.cmd_ds_802_11_subscribe_event = type { %struct.cmd_header, i16, i16, [128 x i8] }
%struct.mrvl_ie_header = type { i16, i16 }
%struct.mrvl_ie_thresholds = type { %struct.mrvl_ie_header, i8, i8 }

@lbs_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lbs_wireless\00", [19 x i8] zeroinitializer }, align 32
@debugfs_files = internal constant { [3 x %struct.lbs_debugfs_files], [104 x i8] } { [3 x %struct.lbs_debugfs_files] [%struct.lbs_debugfs_files { ptr @.str.3, i16 292, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @lbs_dev_info, ptr @write_file_dummy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, %struct.lbs_debugfs_files { ptr @.str.4, i16 420, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @lbs_sleepparams_read, ptr @lbs_sleepparams_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, %struct.lbs_debugfs_files { ptr @.str.5, i16 420, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @lbs_host_sleep_read, ptr @lbs_host_sleep_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }], [104 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"subscribed_events\00", [46 x i8] zeroinitializer }, align 32
@debugfs_events_files = internal constant { [6 x %struct.lbs_debugfs_files], [208 x i8] } { [6 x %struct.lbs_debugfs_files] [%struct.lbs_debugfs_files { ptr @.str.16, i16 420, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @lbs_lowrssi_read, ptr @lbs_lowrssi_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, %struct.lbs_debugfs_files { ptr @.str.17, i16 420, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @lbs_lowsnr_read, ptr @lbs_lowsnr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, %struct.lbs_debugfs_files { ptr @.str.18, i16 420, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @lbs_failcount_read, ptr @lbs_failcount_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, %struct.lbs_debugfs_files { ptr @.str.19, i16 420, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @lbs_bcnmiss_read, ptr @lbs_bcnmiss_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, %struct.lbs_debugfs_files { ptr @.str.20, i16 420, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @lbs_highrssi_read, ptr @lbs_highrssi_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, %struct.lbs_debugfs_files { ptr @.str.21, i16 420, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @lbs_highsnr_read, ptr @lbs_highsnr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }], [208 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"registers\00", [22 x i8] zeroinitializer }, align 32
@debugfs_regs_files = internal constant { [6 x %struct.lbs_debugfs_files], [208 x i8] } { [6 x %struct.lbs_debugfs_files] [%struct.lbs_debugfs_files { ptr @.str.24, i16 420, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @lbs_rdmac_read, ptr @lbs_rdmac_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, %struct.lbs_debugfs_files { ptr @.str.25, i16 384, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @lbs_wrmac_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, %struct.lbs_debugfs_files { ptr @.str.26, i16 420, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @lbs_rdbbp_read, ptr @lbs_rdbbp_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, %struct.lbs_debugfs_files { ptr @.str.27, i16 384, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @lbs_wrbbp_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, %struct.lbs_debugfs_files { ptr @.str.28, i16 420, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @lbs_rdrf_read, ptr @lbs_rdrf_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, %struct.lbs_debugfs_files { ptr @.str.29, i16 384, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @lbs_wrrf_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }], [208 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sleepparams\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hostsleep\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"state = %s\0A\00", [20 x i8] zeroinitializer }, align 32
@szStates = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.8, ptr @.str.9], [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"region_code = %02x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Connected\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Disconnected\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%d %d %d %d %d %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%d %d %d %d %d %d\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wake parameters not configured\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid option\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"low_rssi\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"low_snr\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"failure_count\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"beacon_missed\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"high_rssi\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"high_snr\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d %d %d\0A\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d %d %d\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rdmac\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wrmac\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rdbbp\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wrbbp\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rdrf\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wrrf\00", [27 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MAC[0x%x] = 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%x %x\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BBP[0x%x] = 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RF[0x%x] = 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@items = internal global { [2 x %struct.debug_data], [48 x i8] } { [2 x %struct.debug_data] [%struct.debug_data { [32 x i8] c"psmode\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 412 }, %struct.debug_data { [32 x i8] c"psstate\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 416 }], [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@lbs_debug_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @lbs_debugfs_read, ptr @lbs_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s=%d\0A\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.40 = private unnamed_addr constant [8 x i8] c"lbs_dir\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 15, i32 23 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 695, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"debugfs_files\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 660, i32 39 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 721, i32 40 }
@___asan_gen_.52 = private unnamed_addr constant [21 x i8] c"debugfs_events_files\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 668, i32 39 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 732, i32 38 }
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c"debugfs_regs_files\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 683, i32 39 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 661, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 662, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 664, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 44, i32 36 }
@___asan_gen_.73 = private unnamed_addr constant [9 x i8] c"szStates\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 16, i32 14 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 46, i32 36 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 17, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 18, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 108, i32 28 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 69, i32 20 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 173, i32 28 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 133, i32 20 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 144, i32 9 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 150, i32 25 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 669, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 671, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 673, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 675, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 677, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 679, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 254, i32 29 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 286, i32 20 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 684, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 685, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 686, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 687, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 688, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 689, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 449, i32 28 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 487, i32 20 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 519, i32 28 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 591, i32 28 }
@___asan_gen_.157 = private unnamed_addr constant [6 x i8] c"items\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 789, i32 26 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 927, i32 44 }
@___asan_gen_.163 = private unnamed_addr constant [15 x i8] c"lbs_debug_fops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 902, i32 37 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private constant [51 x i8] c"../drivers/net/wireless/marvell/libertas/debugfs.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 834, i32 27 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @lbs_dir, ptr @.str, ptr @debugfs_files, ptr @.str.1, ptr @debugfs_events_files, ptr @.str.2, ptr @debugfs_regs_files, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @szStates, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @items, ptr @.str.34, ptr @lbs_debug_fops, ptr @.str.35], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_files to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_events_files to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_regs_files to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @szStates to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @items to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_debug_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbs_debugfs_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @lbs_dir, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #9
  store ptr %call, ptr @lbs_dir, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbs_debugfs_remove() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @lbs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbs_debugfs_init_one(ptr noundef %priv, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @lbs_dir, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %entry
  %call = tail call ptr @debugfs_create_dir(ptr noundef %dev, ptr noundef nonnull %0) #9
  %debugfs_dir = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 15
  %1 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %debugfs_dir, align 4
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %call, ptr noundef %priv, ptr noundef getelementptr inbounds ([3 x %struct.lbs_debugfs_files], ptr @debugfs_files, i32 0, i32 0, i32 2)) #9
  %arrayidx4 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 17, i32 0
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %arrayidx4, align 4
  %3 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %debugfs_dir, align 4
  %call3.1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 420, ptr noundef %4, ptr noundef %priv, ptr noundef getelementptr inbounds ([3 x %struct.lbs_debugfs_files], ptr @debugfs_files, i32 0, i32 1, i32 2)) #9
  %arrayidx4.1 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 17, i32 1
  %5 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3.1, ptr %arrayidx4.1, align 4
  %6 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_dir, align 4
  %call3.2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 420, ptr noundef %7, ptr noundef %priv, ptr noundef getelementptr inbounds ([3 x %struct.lbs_debugfs_files], ptr @debugfs_files, i32 0, i32 2, i32 2)) #9
  %arrayidx4.2 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 17, i32 2
  %8 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call3.2, ptr %arrayidx4.2, align 4
  %9 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %debugfs_dir, align 4
  %call6 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef %10) #9
  %events_dir = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 18
  %11 = ptrtoint ptr %events_dir to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call6, ptr %events_dir, align 4
  %call15 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 420, ptr noundef %call6, ptr noundef %priv, ptr noundef getelementptr inbounds ([6 x %struct.lbs_debugfs_files], ptr @debugfs_events_files, i32 0, i32 0, i32 2)) #9
  %arrayidx16 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 19, i32 0
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call15, ptr %arrayidx16, align 4
  %13 = ptrtoint ptr %events_dir to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %events_dir, align 4
  %call15.1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 420, ptr noundef %14, ptr noundef %priv, ptr noundef getelementptr inbounds ([6 x %struct.lbs_debugfs_files], ptr @debugfs_events_files, i32 0, i32 1, i32 2)) #9
  %arrayidx16.1 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 19, i32 1
  %15 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call15.1, ptr %arrayidx16.1, align 4
  %16 = ptrtoint ptr %events_dir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %events_dir, align 4
  %call15.2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 420, ptr noundef %17, ptr noundef %priv, ptr noundef getelementptr inbounds ([6 x %struct.lbs_debugfs_files], ptr @debugfs_events_files, i32 0, i32 2, i32 2)) #9
  %arrayidx16.2 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 19, i32 2
  %18 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call15.2, ptr %arrayidx16.2, align 4
  %19 = ptrtoint ptr %events_dir to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %events_dir, align 4
  %call15.3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 420, ptr noundef %20, ptr noundef %priv, ptr noundef getelementptr inbounds ([6 x %struct.lbs_debugfs_files], ptr @debugfs_events_files, i32 0, i32 3, i32 2)) #9
  %arrayidx16.3 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 19, i32 3
  %21 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call15.3, ptr %arrayidx16.3, align 4
  %22 = ptrtoint ptr %events_dir to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %events_dir, align 4
  %call15.4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 420, ptr noundef %23, ptr noundef %priv, ptr noundef getelementptr inbounds ([6 x %struct.lbs_debugfs_files], ptr @debugfs_events_files, i32 0, i32 4, i32 2)) #9
  %arrayidx16.4 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 19, i32 4
  %24 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call15.4, ptr %arrayidx16.4, align 4
  %25 = ptrtoint ptr %events_dir to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %events_dir, align 4
  %call15.5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext 420, ptr noundef %26, ptr noundef %priv, ptr noundef getelementptr inbounds ([6 x %struct.lbs_debugfs_files], ptr @debugfs_events_files, i32 0, i32 5, i32 2)) #9
  %arrayidx16.5 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 19, i32 5
  %27 = ptrtoint ptr %arrayidx16.5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call15.5, ptr %arrayidx16.5, align 4
  %28 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %debugfs_dir, align 4
  %call21 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.2, ptr noundef %29) #9
  %regs_dir = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 20
  %30 = ptrtoint ptr %regs_dir to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call21, ptr %regs_dir, align 4
  %call30 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 420, ptr noundef %call21, ptr noundef %priv, ptr noundef getelementptr inbounds ([6 x %struct.lbs_debugfs_files], ptr @debugfs_regs_files, i32 0, i32 0, i32 2)) #9
  %arrayidx31 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 21, i32 0
  %31 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call30, ptr %arrayidx31, align 4
  %32 = ptrtoint ptr %regs_dir to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs_dir, align 4
  %call30.1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.25, i16 noundef zeroext 384, ptr noundef %33, ptr noundef %priv, ptr noundef getelementptr inbounds ([6 x %struct.lbs_debugfs_files], ptr @debugfs_regs_files, i32 0, i32 1, i32 2)) #9
  %arrayidx31.1 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 21, i32 1
  %34 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call30.1, ptr %arrayidx31.1, align 4
  %35 = ptrtoint ptr %regs_dir to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs_dir, align 4
  %call30.2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext 420, ptr noundef %36, ptr noundef %priv, ptr noundef getelementptr inbounds ([6 x %struct.lbs_debugfs_files], ptr @debugfs_regs_files, i32 0, i32 2, i32 2)) #9
  %arrayidx31.2 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 21, i32 2
  %37 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call30.2, ptr %arrayidx31.2, align 4
  %38 = ptrtoint ptr %regs_dir to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs_dir, align 4
  %call30.3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext 384, ptr noundef %39, ptr noundef %priv, ptr noundef getelementptr inbounds ([6 x %struct.lbs_debugfs_files], ptr @debugfs_regs_files, i32 0, i32 3, i32 2)) #9
  %arrayidx31.3 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 21, i32 3
  %40 = ptrtoint ptr %arrayidx31.3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call30.3, ptr %arrayidx31.3, align 4
  %41 = ptrtoint ptr %regs_dir to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs_dir, align 4
  %call30.4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.28, i16 noundef zeroext 420, ptr noundef %42, ptr noundef %priv, ptr noundef getelementptr inbounds ([6 x %struct.lbs_debugfs_files], ptr @debugfs_regs_files, i32 0, i32 4, i32 2)) #9
  %arrayidx31.4 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 21, i32 4
  %43 = ptrtoint ptr %arrayidx31.4 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call30.4, ptr %arrayidx31.4, align 4
  %44 = ptrtoint ptr %regs_dir to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs_dir, align 4
  %call30.5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.29, i16 noundef zeroext 384, ptr noundef %45, ptr noundef %priv, ptr noundef getelementptr inbounds ([6 x %struct.lbs_debugfs_files], ptr @debugfs_regs_files, i32 0, i32 5, i32 2)) #9
  %arrayidx31.5 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 21, i32 5
  %46 = ptrtoint ptr %arrayidx31.5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call30.5, ptr %arrayidx31.5, align 4
  %47 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %debugfs_dir, align 4
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %if.end.exit_crit_edge, label %for.cond.preheader.i

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

for.cond.preheader.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %priv to i32
  %50 = load i32, ptr getelementptr inbounds ([2 x %struct.debug_data], ptr @items, i32 0, i32 0, i32 2), align 4
  %add.i = add i32 %50, %49
  store i32 %add.i, ptr getelementptr inbounds ([2 x %struct.debug_data], ptr @items, i32 0, i32 0, i32 2), align 4
  %51 = load i32, ptr getelementptr inbounds ([2 x %struct.debug_data], ptr @items, i32 0, i32 1, i32 2), align 4
  %add.1.i = add i32 %51, %49
  store i32 %add.1.i, ptr getelementptr inbounds ([2 x %struct.debug_data], ptr @items, i32 0, i32 1, i32 2), align 4
  %call.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.34, i16 noundef zeroext 420, ptr noundef nonnull %48, ptr noundef nonnull @items, ptr noundef nonnull @lbs_debug_fops) #9
  %debugfs_debug.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 16
  %52 = ptrtoint ptr %debugfs_debug.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %debugfs_debug.i, align 4
  br label %exit

exit:                                             ; preds = %for.cond.preheader.i, %if.end.exit_crit_edge, %entry.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbs_debugfs_remove_one(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 21, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @debugfs_remove(ptr noundef %1) #9
  %arrayidx.1 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 21, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  tail call void @debugfs_remove(ptr noundef %3) #9
  %arrayidx.2 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 21, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  tail call void @debugfs_remove(ptr noundef %5) #9
  %arrayidx.3 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 21, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  tail call void @debugfs_remove(ptr noundef %7) #9
  %arrayidx.4 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 21, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 4
  tail call void @debugfs_remove(ptr noundef %9) #9
  %arrayidx.5 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 21, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5, align 4
  tail call void @debugfs_remove(ptr noundef %11) #9
  %regs_dir = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 20
  %12 = ptrtoint ptr %regs_dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %13) #9
  %arrayidx4 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 19, i32 0
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx4, align 4
  tail call void @debugfs_remove(ptr noundef %15) #9
  %arrayidx4.1 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 19, i32 1
  %16 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx4.1, align 4
  tail call void @debugfs_remove(ptr noundef %17) #9
  %arrayidx4.2 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 19, i32 2
  %18 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx4.2, align 4
  tail call void @debugfs_remove(ptr noundef %19) #9
  %arrayidx4.3 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 19, i32 3
  %20 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx4.3, align 4
  tail call void @debugfs_remove(ptr noundef %21) #9
  %arrayidx4.4 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 19, i32 4
  %22 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx4.4, align 4
  tail call void @debugfs_remove(ptr noundef %23) #9
  %arrayidx4.5 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 19, i32 5
  %24 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx4.5, align 4
  tail call void @debugfs_remove(ptr noundef %25) #9
  %events_dir = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 18
  %26 = ptrtoint ptr %events_dir to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %events_dir, align 4
  tail call void @debugfs_remove(ptr noundef %27) #9
  %debugfs_debug = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 16
  %28 = ptrtoint ptr %debugfs_debug to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %debugfs_debug, align 4
  tail call void @debugfs_remove(ptr noundef %29) #9
  %arrayidx11 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 17, i32 0
  %30 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx11, align 4
  tail call void @debugfs_remove(ptr noundef %31) #9
  %arrayidx11.1 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 17, i32 1
  %32 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx11.1, align 4
  tail call void @debugfs_remove(ptr noundef %33) #9
  %arrayidx11.2 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 17, i32 2
  %34 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx11.2, align 4
  tail call void @debugfs_remove(ptr noundef %35) #9
  %debugfs_dir = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 15
  %36 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %37) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_dev_info(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = inttoptr i32 %call to ptr
  %connect_status = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %connect_status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %connect_status, align 4
  %arrayidx = getelementptr [2 x ptr], ptr @szStates, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef %6)
  %add.ptr2 = getelementptr i8, ptr %2, i32 %call1
  %sub3 = sub i32 4096, %call1
  %regioncode = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 55
  %7 = ptrtoint ptr %regioncode to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %regioncode, align 4
  %conv = zext i16 %8 to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.7, i32 noundef %conv)
  %add5 = add i32 %call4, %call1
  %call6 = tail call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %2, i32 noundef %add5) #9
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @write_file_dummy(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_sleepparams_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %sp = alloca %struct.sleep_params, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %sp) #9
  %2 = getelementptr inbounds %struct.sleep_params, ptr %sp, i32 0, i32 1
  %3 = getelementptr inbounds %struct.sleep_params, ptr %sp, i32 0, i32 2
  %4 = getelementptr inbounds %struct.sleep_params, ptr %sp, i32 0, i32 3
  %5 = getelementptr inbounds %struct.sleep_params, ptr %sp, i32 0, i32 4
  %6 = getelementptr inbounds %struct.sleep_params, ptr %sp, i32 0, i32 5
  %7 = call ptr @memset(ptr %sp, i32 255, i32 10)
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #9
  %8 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @lbs_cmd_802_11_sleep_params(ptr noundef %1, i16 noundef zeroext 0, ptr noundef nonnull %sp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %sp to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sp, align 2
  %conv = zext i16 %10 to i32
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %2, align 2
  %conv5 = zext i16 %12 to i32
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %3, align 2
  %conv6 = zext i16 %14 to i32
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %4, align 2
  %conv7 = zext i8 %16 to i32
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %5, align 1
  %conv8 = zext i8 %18 to i32
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %6, align 2
  %conv9 = zext i16 %20 to i32
  %call10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %8, i32 noundef 4096, ptr noundef nonnull @.str.10, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9)
  %call11 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %8, i32 noundef %call10) #9
  br label %out_unlock

out_unlock:                                       ; preds = %if.end4, %if.end.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.out_unlock_crit_edge ], [ %call11, %if.end4 ]
  call void @free_pages(i32 noundef %call, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_unlock ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %sp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_sleepparams_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %sp = alloca %struct.sleep_params, align 2
  %p1 = alloca i32, align 4
  %p2 = alloca i32, align 4
  %p3 = alloca i32, align 4
  %p4 = alloca i32, align 4
  %p5 = alloca i32, align 4
  %p6 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %sp) #9
  %2 = getelementptr inbounds %struct.sleep_params, ptr %sp, i32 0, i32 1
  %3 = getelementptr inbounds %struct.sleep_params, ptr %sp, i32 0, i32 2
  %4 = getelementptr inbounds %struct.sleep_params, ptr %sp, i32 0, i32 3
  %5 = getelementptr inbounds %struct.sleep_params, ptr %sp, i32 0, i32 4
  %6 = getelementptr inbounds %struct.sleep_params, ptr %sp, i32 0, i32 5
  %7 = call ptr @memset(ptr %sp, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p1) #9
  %8 = ptrtoint ptr %p1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %p1, align 4, !annotation !97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p2) #9
  %9 = ptrtoint ptr %p2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %p2, align 4, !annotation !97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p3) #9
  %10 = ptrtoint ptr %p3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %p3, align 4, !annotation !97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p4) #9
  %11 = ptrtoint ptr %p4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %p4, align 4, !annotation !97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p5) #9
  %12 = ptrtoint ptr %p5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %p5, align 4, !annotation !97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p6) #9
  %13 = ptrtoint ptr %p6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %p6, align 4, !annotation !97
  %14 = tail call i32 @llvm.umin.i32(i32 %count, i32 4095)
  %call = tail call ptr @memdup_user_nul(ptr noundef %user_buf, i32 noundef %14) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call, ptr noundef nonnull @.str.11, ptr noundef nonnull %p1, ptr noundef nonnull %p2, ptr noundef nonnull %p3, ptr noundef nonnull %p4, ptr noundef nonnull %p5, ptr noundef nonnull %p6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 6
  br i1 %cmp4.not, label %if.end6, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end6:                                          ; preds = %if.end
  %16 = ptrtoint ptr %p1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p1, align 4
  %conv = trunc i32 %17 to i16
  %18 = ptrtoint ptr %sp to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %sp, align 2
  %19 = ptrtoint ptr %p2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %p2, align 4
  %conv7 = trunc i32 %20 to i16
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv7, ptr %2, align 2
  %22 = ptrtoint ptr %p3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %p3, align 4
  %conv8 = trunc i32 %23 to i16
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv8, ptr %3, align 2
  %25 = ptrtoint ptr %p4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %p4, align 4
  %conv9 = trunc i32 %26 to i8
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv9, ptr %4, align 2
  %28 = ptrtoint ptr %p5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %p5, align 4
  %conv10 = trunc i32 %29 to i8
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv10, ptr %5, align 1
  %31 = ptrtoint ptr %p6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %p6, align 4
  %conv11 = trunc i32 %32 to i16
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv11, ptr %6, align 2
  %call12 = call i32 @lbs_cmd_802_11_sleep_params(ptr noundef %1, i16 noundef zeroext 1, ptr noundef nonnull %sp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end6.out_unlock_crit_edge, label %if.else

if.end6.out_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp14 = icmp sgt i32 %call12, 0
  %spec.store.select = select i1 %cmp14, i32 -22, i32 %call12
  br label %out_unlock

out_unlock:                                       ; preds = %if.else, %if.end6.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %ret.0 = phi i32 [ %spec.store.select, %if.else ], [ -22, %if.end.out_unlock_crit_edge ], [ %count, %if.end6.out_unlock_crit_edge ]
  call void @kfree(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ %ret.0, %out_unlock ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p1) #9
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %sp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_host_sleep_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = inttoptr i32 %call to ptr
  %is_host_sleep_activated = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 37
  %3 = ptrtoint ptr %is_host_sleep_activated to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %is_host_sleep_activated, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 4096, ptr noundef nonnull @.str.12, i32 noundef %4)
  %call2 = tail call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %2, i32 noundef %call1) #9
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_host_sleep_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %host_sleep = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host_sleep) #9
  %2 = ptrtoint ptr %host_sleep to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %host_sleep, align 4, !annotation !97
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 4095)
  %call = tail call ptr @memdup_user_nul(ptr noundef %user_buf, i32 noundef %3) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call, ptr noundef nonnull @.str.13, ptr noundef nonnull %host_sleep)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end6, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %host_sleep to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %host_sleep, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end19.thread [
    i32 0, label %if.end6.if.end19_crit_edge
    i32 1, label %if.then11
  ]

if.end6.if.end19_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then11:                                        ; preds = %if.end6
  %wol_criteria = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 77
  %8 = ptrtoint ptr %wol_criteria to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wol_criteria, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp12 = icmp eq i32 %9, -1
  br i1 %cmp12, label %if.then13, label %if.then11.if.end19_crit_edge

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %11, ptr noundef nonnull @.str.14) #12
  br label %out_unlock

if.end19.thread:                                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.15) #12
  br label %out_unlock

if.end19:                                         ; preds = %if.then11.if.end19_crit_edge, %if.end6.if.end19_crit_edge
  %call15 = call i32 @lbs_set_host_sleep(ptr noundef %1, i32 noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  %spec.select = select i1 %tobool.not, i32 %count, i32 %call15
  br label %out_unlock

out_unlock:                                       ; preds = %if.end19, %if.end19.thread, %if.then13, %if.end.out_unlock_crit_edge
  %ret.1 = phi i32 [ -22, %if.then13 ], [ -22, %if.end.out_unlock_crit_edge ], [ -22, %if.end19.thread ], [ %spec.select, %if.end19 ]
  call void @kfree(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %ret.1, %out_unlock ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host_sleep) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_cmd_802_11_sleep_params(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_set_host_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_lowrssi_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lbs_threshold_read(i16 noundef zeroext 260, i16 noundef zeroext 1, ptr noundef %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_lowrssi_write(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lbs_threshold_write(i16 noundef zeroext 260, i16 noundef zeroext 1, ptr noundef %file, ptr noundef %userbuf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_lowsnr_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lbs_threshold_read(i16 noundef zeroext 261, i16 noundef zeroext 2, ptr noundef %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_lowsnr_write(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lbs_threshold_write(i16 noundef zeroext 261, i16 noundef zeroext 2, ptr noundef %file, ptr noundef %userbuf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_failcount_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lbs_threshold_read(i16 noundef zeroext 262, i16 noundef zeroext 4, ptr noundef %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_failcount_write(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lbs_threshold_write(i16 noundef zeroext 262, i16 noundef zeroext 4, ptr noundef %file, ptr noundef %userbuf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_bcnmiss_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lbs_threshold_read(i16 noundef zeroext 263, i16 noundef zeroext 8, ptr noundef %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_bcnmiss_write(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lbs_threshold_write(i16 noundef zeroext 263, i16 noundef zeroext 8, ptr noundef %file, ptr noundef %userbuf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_highrssi_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lbs_threshold_read(i16 noundef zeroext 278, i16 noundef zeroext 16, ptr noundef %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_highrssi_write(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lbs_threshold_write(i16 noundef zeroext 278, i16 noundef zeroext 16, ptr noundef %file, ptr noundef %userbuf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_highsnr_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lbs_threshold_read(i16 noundef zeroext 279, i16 noundef zeroext 32, ptr noundef %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_highsnr_write(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lbs_threshold_write(i16 noundef zeroext 279, i16 noundef zeroext 32, ptr noundef %file, ptr noundef %userbuf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lbs_threshold_read(i16 noundef zeroext %tlv_type, i16 noundef zeroext %event_mask, ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #9
  %2 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 140) #13
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.out_page_crit_edge, label %if.end4

if.end.out_page_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_page

if.end4:                                          ; preds = %if.end
  %size = getelementptr inbounds %struct.cmd_header, ptr %call7.i.i, i32 0, i32 1
  %action = getelementptr inbounds %struct.cmd_ds_802_11_subscribe_event, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %action to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %action, align 8
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -29696, ptr %size, align 2
  %6 = ptrtoint ptr %call7.i.i to i32
  %call10 = tail call i32 @__lbs_cmd(ptr noundef %1, i16 noundef zeroext 117, ptr noundef nonnull %call7.i.i, i32 noundef 140, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end4.out_cmd_crit_edge

if.end4.out_cmd_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_cmd

if.end13:                                         ; preds = %if.end4
  %tlv = getelementptr inbounds %struct.cmd_ds_802_11_subscribe_event, ptr %call7.i.i, i32 0, i32 3
  %7 = tail call i16 @llvm.bswap.i16(i16 %tlv_type) #9
  br label %while.body.i

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %if.end13
  %pos.02.i = phi i32 [ 0, %if.end13 ], [ %add12.i, %if.end7.i.while.body.i_crit_edge ]
  %tlv.addr.01.i = phi ptr [ %tlv, %if.end13 ], [ %add.ptr.i, %if.end7.i.while.body.i_crit_edge ]
  %len.i = getelementptr inbounds %struct.mrvl_ie_header, ptr %tlv.addr.01.i, i32 0, i32 1
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %while.body.i.if.end27_crit_edge, label %if.end.i

while.body.i.if.end27_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end.i:                                         ; preds = %while.body.i
  %10 = ptrtoint ptr %tlv.addr.01.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %tlv.addr.01.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %7)
  %cmp4.i = icmp eq i16 %11, %7
  br i1 %cmp4.i, label %lbs_tlv_find.exit, label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i
  %12 = tail call i16 @llvm.bswap.i16(i16 %9) #9
  %add.i = add i16 %12, 4
  %conv11.i = zext i16 %add.i to i32
  %add12.i = add nuw nsw i32 %pos.02.i, %conv11.i
  %add.ptr.i = getelementptr i8, ptr %tlv.addr.01.i, i32 %conv11.i
  %cmp.i = icmp ult i32 %add12.i, 128
  br i1 %cmp.i, label %if.end7.i.while.body.i_crit_edge, label %if.end7.i.if.end27_crit_edge

if.end7.i.if.end27_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

lbs_tlv_find.exit:                                ; preds = %if.end.i
  %tobool15.not = icmp eq ptr %tlv.addr.01.i, null
  br i1 %tobool15.not, label %lbs_tlv_find.exit.if.end27_crit_edge, label %if.then16

lbs_tlv_find.exit.if.end27_crit_edge:             ; preds = %lbs_tlv_find.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then16:                                        ; preds = %lbs_tlv_find.exit
  call void @__sanitizer_cov_trace_pc() #11
  %value17 = getelementptr inbounds %struct.mrvl_ie_thresholds, ptr %tlv.addr.01.i, i32 0, i32 1
  %13 = ptrtoint ptr %value17 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %value17, align 1
  %freq18 = getelementptr inbounds %struct.mrvl_ie_thresholds, ptr %tlv.addr.01.i, i32 0, i32 2
  %15 = ptrtoint ptr %freq18 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %freq18, align 1
  %events19 = getelementptr inbounds %struct.cmd_ds_802_11_subscribe_event, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %events19 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %events19, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv21 = zext i8 %14 to i32
  %conv22 = zext i8 %16 to i32
  %and53 = and i16 %19, %event_mask
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and53)
  %tobool24 = icmp ne i16 %and53, 0
  %lnot.ext = zext i1 %tobool24 to i32
  %call26 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 4096, ptr noundef nonnull @.str.22, i32 noundef %conv21, i32 noundef %conv22, i32 noundef %lnot.ext)
  br label %if.end27

if.end27:                                         ; preds = %if.then16, %lbs_tlv_find.exit.if.end27_crit_edge, %if.end7.i.if.end27_crit_edge, %while.body.i.if.end27_crit_edge
  %pos.0 = phi i32 [ %call26, %if.then16 ], [ 0, %lbs_tlv_find.exit.if.end27_crit_edge ], [ 0, %while.body.i.if.end27_crit_edge ], [ 0, %if.end7.i.if.end27_crit_edge ]
  %call28 = tail call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %2, i32 noundef %pos.0) #9
  br label %out_cmd

out_cmd:                                          ; preds = %if.end27, %if.end4.out_cmd_crit_edge
  %ret.0 = phi i32 [ %call10, %if.end4.out_cmd_crit_edge ], [ %call28, %if.end27 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %out_page

out_page:                                         ; preds = %out_cmd, %if.end.out_page_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_cmd ], [ -12, %if.end.out_page_crit_edge ]
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %out_page, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_page ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__lbs_cmd(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_cmd_copyback(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lbs_threshold_write(i16 noundef zeroext %tlv_type, i16 noundef zeroext %event_mask, ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %value = alloca i32, align 4
  %freq = alloca i32, align 4
  %new_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq) #9
  %3 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %freq, align 4, !annotation !97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_mask) #9
  %4 = ptrtoint ptr %new_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %new_mask, align 4, !annotation !97
  %5 = tail call i32 @llvm.umin.i32(i32 %count, i32 4095)
  %call = tail call ptr @memdup_user_nul(ptr noundef %userbuf, i32 noundef %5) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call, ptr noundef nonnull @.str.23, ptr noundef nonnull %value, ptr noundef nonnull %freq, ptr noundef nonnull %new_mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 3
  br i1 %cmp4.not, label %if.end6, label %if.end.out_page_crit_edge

if.end.out_page_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_page

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 140) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end6.out_page_crit_edge, label %if.end9

if.end6.out_page_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_page

if.end9:                                          ; preds = %if.end6
  %size = getelementptr inbounds %struct.cmd_header, ptr %call7.i.i, i32 0, i32 1
  %action = getelementptr inbounds %struct.cmd_ds_802_11_subscribe_event, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %action to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %action, align 8
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -29696, ptr %size, align 2
  %10 = ptrtoint ptr %call7.i.i to i32
  %call16 = call i32 @__lbs_cmd(ptr noundef %1, i16 noundef zeroext 117, ptr noundef nonnull %call7.i.i, i32 noundef 140, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end9.out_events_crit_edge

if.end9.out_events_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_events

if.end19:                                         ; preds = %if.end9
  %events20 = getelementptr inbounds %struct.cmd_ds_802_11_subscribe_event, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %events20 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %events20, align 2
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  %14 = ptrtoint ptr %new_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %new_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not = icmp eq i32 %15, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %or1 = or i16 %13, %event_mask
  %or = zext i16 %or1 to i32
  br label %if.end27

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %conv25 = zext i16 %13 to i32
  %conv26 = zext i16 %event_mask to i32
  %neg = xor i32 %conv26, -1
  %and = and i32 %conv25, %neg
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then22
  %storemerge = phi i32 [ %and, %if.else ], [ %or, %if.then22 ]
  %16 = ptrtoint ptr %new_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge, ptr %new_mask, align 4
  %tlv28 = getelementptr inbounds %struct.cmd_ds_802_11_subscribe_event, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %action to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 256, ptr %action, align 8
  %conv30 = trunc i32 %storemerge to i16
  %18 = call i16 @llvm.bswap.i16(i16 %conv30)
  %19 = ptrtoint ptr %events20 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %events20, align 2
  %20 = call i16 @llvm.bswap.i16(i16 %tlv_type)
  %21 = ptrtoint ptr %tlv28 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %tlv28, align 4
  %len = getelementptr inbounds %struct.cmd_ds_802_11_subscribe_event, ptr %call7.i.i, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 512, ptr %len, align 2
  %23 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value, align 4
  %conv33 = trunc i32 %24 to i8
  %value34 = getelementptr inbounds %struct.cmd_ds_802_11_subscribe_event, ptr %call7.i.i, i32 0, i32 3, i32 4
  %25 = ptrtoint ptr %value34 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv33, ptr %value34, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 263, i16 %tlv_type)
  %cmp36.not = icmp eq i16 %tlv_type, 263
  br i1 %cmp36.not, label %if.end27.if.end41_crit_edge, label %if.then38

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then38:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %freq, align 4
  %conv39 = trunc i32 %27 to i8
  %freq40 = getelementptr inbounds %struct.cmd_ds_802_11_subscribe_event, ptr %call7.i.i, i32 0, i32 3, i32 5
  %28 = ptrtoint ptr %freq40 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv39, ptr %freq40, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end27.if.end41_crit_edge
  %29 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -29696, ptr %size, align 2
  %call52 = call i32 @__lbs_cmd(ptr noundef %1, i16 noundef zeroext 117, ptr noundef nonnull %call7.i.i, i32 noundef 18, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  %spec.select = select i1 %tobool53.not, i32 %count, i32 %call52
  br label %out_events

out_events:                                       ; preds = %if.end41, %if.end9.out_events_crit_edge
  %ret.0 = phi i32 [ %call16, %if.end9.out_events_crit_edge ], [ %spec.select, %if.end41 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %out_page

out_page:                                         ; preds = %out_events, %if.end6.out_page_crit_edge, %if.end.out_page_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_events ], [ -22, %if.end.out_page_crit_edge ], [ -12, %if.end6.out_page_crit_edge ]
  call void @kfree(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %out_page, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ %ret.1, %out_page ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_mask) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_rdmac_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #9
  %2 = inttoptr i32 %call to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac_offset = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %mac_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mac_offset, align 4
  %conv = trunc i32 %5 to i16
  %call1 = call i32 @lbs_get_reg(ptr noundef %1, i16 noundef zeroext 25, i16 noundef zeroext %conv, ptr noundef nonnull %val) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %6(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool3.not = icmp eq i32 %call1, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %mac_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mac_offset, align 4
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 4096, ptr noundef nonnull @.str.30, i32 noundef %17, i32 noundef %19)
  %call7 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %2, i32 noundef %call6) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.if.end8_crit_edge ], [ %call7, %if.then4 ]
  call void @free_pages(i32 noundef %call, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_rdmac_write(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 4095)
  %call = tail call ptr @memdup_user_nul(ptr noundef %userbuf, i32 noundef %2) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @simple_strtoul(ptr noundef %call, ptr noundef null, i32 noundef 16) #9
  %mac_offset = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %mac_offset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call3, ptr %mac_offset, align 4
  tail call void @kfree(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %count, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_wrmac_write(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %offset = alloca i32, align 4
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #9
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %offset, align 4, !annotation !97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %3 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %value, align 4, !annotation !97
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 4095)
  %call = tail call ptr @memdup_user_nul(ptr noundef %userbuf, i32 noundef %4) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call, ptr noundef nonnull @.str.31, ptr noundef nonnull %offset, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 2
  br i1 %cmp4.not, label %if.end6, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %conv = trunc i32 %7 to i16
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  %call7 = call i32 @lbs_set_reg(ptr noundef %1, i16 noundef zeroext 25, i16 noundef zeroext %conv, i32 noundef %9) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %spec.select = select i1 %tobool8.not, i32 %count, i32 %call7
  br label %out_unlock

out_unlock:                                       ; preds = %if.end6, %if.end.out_unlock_crit_edge
  %res.0 = phi i32 [ -14, %if.end.out_unlock_crit_edge ], [ %spec.select, %if.end6 ]
  call void @kfree(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %res.0, %out_unlock ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_rdbbp_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #9
  %2 = inttoptr i32 %call to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bbp_offset = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %bbp_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bbp_offset, align 4
  %conv = trunc i32 %5 to i16
  %call1 = call i32 @lbs_get_reg(ptr noundef %1, i16 noundef zeroext 26, i16 noundef zeroext %conv, ptr noundef nonnull %val) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %6(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool3.not = icmp eq i32 %call1, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %bbp_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bbp_offset, align 4
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 4096, ptr noundef nonnull @.str.32, i32 noundef %17, i32 noundef %19)
  %call7 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %2, i32 noundef %call6) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.if.end8_crit_edge ], [ %call7, %if.then4 ]
  call void @free_pages(i32 noundef %call, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_rdbbp_write(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 4095)
  %call = tail call ptr @memdup_user_nul(ptr noundef %userbuf, i32 noundef %2) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @simple_strtoul(ptr noundef %call, ptr noundef null, i32 noundef 16) #9
  %bbp_offset = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %bbp_offset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call3, ptr %bbp_offset, align 4
  tail call void @kfree(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %count, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_wrbbp_write(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %offset = alloca i32, align 4
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #9
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %offset, align 4, !annotation !97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %3 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %value, align 4, !annotation !97
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 4095)
  %call = tail call ptr @memdup_user_nul(ptr noundef %userbuf, i32 noundef %4) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call, ptr noundef nonnull @.str.31, ptr noundef nonnull %offset, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 2
  br i1 %cmp4.not, label %if.end6, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %conv = trunc i32 %7 to i16
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  %call7 = call i32 @lbs_set_reg(ptr noundef %1, i16 noundef zeroext 26, i16 noundef zeroext %conv, i32 noundef %9) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %spec.select = select i1 %tobool8.not, i32 %count, i32 %call7
  br label %out_unlock

out_unlock:                                       ; preds = %if.end6, %if.end.out_unlock_crit_edge
  %res.0 = phi i32 [ -14, %if.end.out_unlock_crit_edge ], [ %spec.select, %if.end6 ]
  call void @kfree(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %res.0, %out_unlock ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_rdrf_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #9
  %2 = inttoptr i32 %call to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rf_offset = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %rf_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rf_offset, align 4
  %conv = trunc i32 %5 to i16
  %call1 = call i32 @lbs_get_reg(ptr noundef %1, i16 noundef zeroext 27, i16 noundef zeroext %conv, ptr noundef nonnull %val) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %6(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool3.not = icmp eq i32 %call1, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %rf_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rf_offset, align 4
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 4096, ptr noundef nonnull @.str.33, i32 noundef %17, i32 noundef %19)
  %call7 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %2, i32 noundef %call6) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.if.end8_crit_edge ], [ %call7, %if.then4 ]
  call void @free_pages(i32 noundef %call, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_rdrf_write(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 4095)
  %call = tail call ptr @memdup_user_nul(ptr noundef %userbuf, i32 noundef %2) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @simple_strtoul(ptr noundef %call, ptr noundef null, i32 noundef 16) #9
  %rf_offset = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %rf_offset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call3, ptr %rf_offset, align 4
  tail call void @kfree(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %count, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_wrrf_write(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %offset = alloca i32, align 4
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #9
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %offset, align 4, !annotation !97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %3 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %value, align 4, !annotation !97
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 4095)
  %call = tail call ptr @memdup_user_nul(ptr noundef %userbuf, i32 noundef %4) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call, ptr noundef nonnull @.str.31, ptr noundef nonnull %offset, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 2
  br i1 %cmp4.not, label %if.end6, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %conv = trunc i32 %7 to i16
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  %call7 = call i32 @lbs_set_reg(ptr noundef %1, i16 noundef zeroext 27, i16 noundef zeroext %conv, i32 noundef %9) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %spec.select = select i1 %tobool8.not, i32 %count, i32 %call7
  br label %out_unlock

out_unlock:                                       ; preds = %if.end6, %if.end.out_unlock_crit_edge
  %res.0 = phi i32 [ -14, %if.end.out_unlock_crit_edge ], [ %spec.select, %if.end6 ]
  call void @kfree(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %res.0, %out_unlock ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_get_reg(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_set_reg(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_debugfs_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #9
  %0 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %size = getelementptr %struct.debug_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %4, label %if.end.if.end33_crit_edge [
    i32 1, label %if.then2
    i32 2, label %if.then9
    i32 4, label %if.then18
    i32 8, label %if.then26
  ]

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %addr4 = getelementptr %struct.debug_data, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %addr4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr4, align 4
  %8 = inttoptr i32 %7 to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv = zext i8 %10 to i32
  br label %if.end33

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %addr11 = getelementptr %struct.debug_data, ptr %2, i32 0, i32 2
  %11 = ptrtoint ptr %addr11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr11, align 4
  %13 = inttoptr i32 %12 to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 2
  %conv12 = zext i16 %15 to i32
  br label %if.end33

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %addr20 = getelementptr %struct.debug_data, ptr %2, i32 0, i32 2
  %16 = ptrtoint ptr %addr20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr20, align 4
  %18 = inttoptr i32 %17 to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  br label %if.end33

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %addr28 = getelementptr %struct.debug_data, ptr %2, i32 0, i32 2
  %21 = ptrtoint ptr %addr28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr28, align 4
  %23 = inttoptr i32 %22 to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %23, align 8
  %conv29 = trunc i64 %25 to i32
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %if.then18, %if.then9, %if.then2, %if.end.if.end33_crit_edge
  %val.1 = phi i32 [ %conv, %if.then2 ], [ %conv12, %if.then9 ], [ %20, %if.then18 ], [ %conv29, %if.then26 ], [ 0, %if.end.if.end33_crit_edge ]
  %call35 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.35, ptr noundef %2, i32 noundef %val.1)
  %arrayidx.1 = getelementptr %struct.debug_data, ptr %2, i32 1
  %size.1 = getelementptr %struct.debug_data, ptr %2, i32 1, i32 1
  %26 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.1, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %27, label %if.end33.if.end33.1_crit_edge [
    i32 1, label %if.then2.1
    i32 2, label %if.then9.1
    i32 4, label %if.then18.1
    i32 8, label %if.then26.1
  ]

if.end33.if.end33.1_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.1

if.then26.1:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %addr28.1 = getelementptr %struct.debug_data, ptr %2, i32 1, i32 2
  %29 = ptrtoint ptr %addr28.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr28.1, align 4
  %31 = inttoptr i32 %30 to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %31, align 8
  %conv29.1 = trunc i64 %33 to i32
  br label %if.end33.1

if.then18.1:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %addr20.1 = getelementptr %struct.debug_data, ptr %2, i32 1, i32 2
  %34 = ptrtoint ptr %addr20.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr20.1, align 4
  %36 = inttoptr i32 %35 to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  br label %if.end33.1

if.then9.1:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %addr11.1 = getelementptr %struct.debug_data, ptr %2, i32 1, i32 2
  %39 = ptrtoint ptr %addr11.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %addr11.1, align 4
  %41 = inttoptr i32 %40 to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %41, align 2
  %conv12.1 = zext i16 %43 to i32
  br label %if.end33.1

if.then2.1:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %addr4.1 = getelementptr %struct.debug_data, ptr %2, i32 1, i32 2
  %44 = ptrtoint ptr %addr4.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr4.1, align 4
  %46 = inttoptr i32 %45 to ptr
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 1
  %conv.1 = zext i8 %48 to i32
  br label %if.end33.1

if.end33.1:                                       ; preds = %if.then2.1, %if.then9.1, %if.then18.1, %if.then26.1, %if.end33.if.end33.1_crit_edge
  %val.1.1 = phi i32 [ %conv.1, %if.then2.1 ], [ %conv12.1, %if.then9.1 ], [ %38, %if.then18.1 ], [ %conv29.1, %if.then26.1 ], [ %val.1, %if.end33.if.end33.1_crit_edge ]
  %add.ptr.1 = getelementptr i8, ptr %0, i32 %call35
  %call35.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.35, ptr noundef %arrayidx.1, i32 noundef %val.1.1)
  %add.1 = add i32 %call35.1, %call35
  %call36 = tail call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %0, i32 noundef %add.1) #9
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end33.1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36, %if.end33.1 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_debugfs_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %cnt, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp = icmp eq i32 %cnt, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %cnt) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %do.body.preheader

do.body.preheader:                                ; preds = %if.end
  %call6 = tail call ptr @strstr(ptr noundef %call, ptr noundef %1)
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %do.body.preheader.for.inc_crit_edge, label %if.end9

do.body.preheader.for.inc_crit_edge:              ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end9:                                          ; preds = %do.body.preheader
  %call10 = tail call ptr @strchr(ptr noundef nonnull %call6, i32 noundef 10)
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.end9.for.inc_crit_edge, label %if.end13

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end13:                                         ; preds = %if.end9
  %call14 = tail call ptr @strchr(ptr noundef nonnull %call6, i32 noundef 61)
  %tobool.not = icmp eq ptr %call14, null
  br i1 %tobool.not, label %if.end13.for.inc_crit_edge, label %if.end16

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end16:                                         ; preds = %if.end13
  %incdec.ptr17 = getelementptr i8, ptr %call14, i32 1
  %call18 = tail call i32 @simple_strtoul(ptr noundef %incdec.ptr17, ptr noundef null, i32 noundef 0) #9
  %size = getelementptr %struct.debug_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %4, label %if.end16.for.inc_crit_edge [
    i32 1, label %if.then21
    i32 2, label %if.then27
    i32 4, label %if.then36
    i32 8, label %if.then44
  ]

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %call18 to i8
  %addr = getelementptr %struct.debug_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  %8 = inttoptr i32 %7 to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %8, align 1
  br label %for.inc

if.then27:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %conv28 = trunc i32 %call18 to i16
  %addr30 = getelementptr %struct.debug_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %addr30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr30, align 4
  %12 = inttoptr i32 %11 to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv28, ptr %12, align 2
  br label %for.inc

if.then36:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %addr38 = getelementptr %struct.debug_data, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %addr38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr38, align 4
  %16 = inttoptr i32 %15 to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call18, ptr %16, align 4
  br label %for.inc

if.then44:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %conv45 = sext i32 %call18 to i64
  %addr47 = getelementptr %struct.debug_data, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %addr47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr47, align 4
  %20 = inttoptr i32 %19 to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv45, ptr %20, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then44, %if.then36, %if.then27, %if.then21, %if.end16.for.inc_crit_edge, %if.end13.for.inc_crit_edge, %if.end9.for.inc_crit_edge, %do.body.preheader.for.inc_crit_edge
  %p0.1 = phi ptr [ %call, %do.body.preheader.for.inc_crit_edge ], [ %call, %if.end9.for.inc_crit_edge ], [ %call10, %if.then21 ], [ %call10, %if.then27 ], [ %call10, %if.then36 ], [ %call10, %if.then44 ], [ %call10, %if.end13.for.inc_crit_edge ], [ %call10, %if.end16.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.debug_data, ptr %1, i32 1
  %call6.1 = tail call ptr @strstr(ptr noundef %p0.1, ptr noundef %arrayidx.1)
  %cmp7.1 = icmp eq ptr %call6.1, null
  br i1 %cmp7.1, label %for.inc.for.inc.1_crit_edge, label %if.end9.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end9.1:                                        ; preds = %for.inc
  %call10.1 = tail call ptr @strchr(ptr noundef nonnull %call6.1, i32 noundef 10)
  %cmp11.1 = icmp eq ptr %call10.1, null
  br i1 %cmp11.1, label %if.end9.1.for.inc.1_crit_edge, label %if.end13.1

if.end9.1.for.inc.1_crit_edge:                    ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end13.1:                                       ; preds = %if.end9.1
  %call14.1 = tail call ptr @strchr(ptr noundef nonnull %call6.1, i32 noundef 61)
  %tobool.not.1 = icmp eq ptr %call14.1, null
  br i1 %tobool.not.1, label %if.end13.1.for.inc.1_crit_edge, label %if.end16.1

if.end13.1.for.inc.1_crit_edge:                   ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end16.1:                                       ; preds = %if.end13.1
  %incdec.ptr17.1 = getelementptr i8, ptr %call14.1, i32 1
  %call18.1 = tail call i32 @simple_strtoul(ptr noundef %incdec.ptr17.1, ptr noundef null, i32 noundef 0) #9
  %size.1 = getelementptr %struct.debug_data, ptr %1, i32 1, i32 1
  %22 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.1, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %23, label %if.end16.1.for.inc.1_crit_edge [
    i32 1, label %if.then21.1
    i32 2, label %if.then27.1
    i32 4, label %if.then36.1
    i32 8, label %if.then44.1
  ]

if.end16.1.for.inc.1_crit_edge:                   ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then44.1:                                      ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #11
  %conv45.1 = sext i32 %call18.1 to i64
  %addr47.1 = getelementptr %struct.debug_data, ptr %1, i32 1, i32 2
  %25 = ptrtoint ptr %addr47.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr47.1, align 4
  %27 = inttoptr i32 %26 to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv45.1, ptr %27, align 8
  br label %for.inc.1

if.then36.1:                                      ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #11
  %addr38.1 = getelementptr %struct.debug_data, ptr %1, i32 1, i32 2
  %29 = ptrtoint ptr %addr38.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr38.1, align 4
  %31 = inttoptr i32 %30 to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call18.1, ptr %31, align 4
  br label %for.inc.1

if.then27.1:                                      ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #11
  %conv28.1 = trunc i32 %call18.1 to i16
  %addr30.1 = getelementptr %struct.debug_data, ptr %1, i32 1, i32 2
  %33 = ptrtoint ptr %addr30.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr30.1, align 4
  %35 = inttoptr i32 %34 to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv28.1, ptr %35, align 2
  br label %for.inc.1

if.then21.1:                                      ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #11
  %conv.1 = trunc i32 %call18.1 to i8
  %addr.1 = getelementptr %struct.debug_data, ptr %1, i32 1, i32 2
  %37 = ptrtoint ptr %addr.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addr.1, align 4
  %39 = inttoptr i32 %38 to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv.1, ptr %39, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then21.1, %if.then27.1, %if.then36.1, %if.then44.1, %if.end16.1.for.inc.1_crit_edge, %if.end13.1.for.inc.1_crit_edge, %if.end9.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  tail call void @kfree(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.1, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then2 ], [ %cnt, %for.inc.1 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 695, i32 32}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 721, i32 40}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 732, i32 38}
!6 = !{ptr @lbs_dir, !7, !"lbs_dir", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 15, i32 23}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 661, i32 4}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 662, i32 4}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 664, i32 4}
!14 = !{ptr @debugfs_files, !15, !"debugfs_files", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 660, i32 39}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 44, i32 36}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 46, i32 36}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 17, i32 2}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 18, i32 2}
!24 = !{ptr @szStates, !25, !"szStates", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 16, i32 14}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 108, i32 28}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 69, i32 20}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 173, i32 28}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 133, i32 20}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 144, i32 9}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 150, i32 25}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 669, i32 3}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 671, i32 3}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 673, i32 3}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 675, i32 3}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 677, i32 3}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 679, i32 3}
!50 = !{ptr @debugfs_events_files, !51, !"debugfs_events_files", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 668, i32 39}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 254, i32 29}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 286, i32 20}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 684, i32 3}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 685, i32 3}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 686, i32 3}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 687, i32 3}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 688, i32 3}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 689, i32 3}
!68 = !{ptr @debugfs_regs_files, !69, !"debugfs_regs_files", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 683, i32 39}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 449, i32 28}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 487, i32 20}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 519, i32 28}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 591, i32 28}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 927, i32 44}
!80 = distinct !{null, !81, !"num_of_items", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 794, i32 12}
!82 = !{ptr @items, !83, !"items", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 789, i32 26}
!84 = !{ptr @lbs_debug_fops, !85, !"lbs_debug_fops", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 902, i32 37}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/marvell/libertas/debugfs.c", i32 834, i32 27}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"auto-init"}
