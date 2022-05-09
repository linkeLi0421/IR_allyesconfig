; ModuleID = '/llk/IR_all_yes/drivers/bus/mhi/core/debugfs.c_pt.bc'
source_filename = "../drivers/bus/mhi/core/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mhi_controller = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], ptr, ptr, ptr, %struct.mutex, %struct.rwlock_t, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.mhi_link_info, %struct.work_struct, ptr, %struct.wait_queue_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mhi_link_info = type { i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mhi_device = type { ptr, ptr, ptr, ptr, ptr, %struct.device, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mhi_event = type { ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.mhi_ring, %struct.db_cfg, %struct.tasklet_struct, %struct.spinlock, ptr, i8, i8, i8 }
%struct.mhi_ring = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.db_cfg = type { i8, i8, i32, i32, i32, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.70, i32 }
%union.anon.70 = type { ptr }
%struct.mhi_event_ctxt = type <{ i32, i32, i32, i64, i64, i64, i64 }>
%struct.mhi_ctxt = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.mhi_chan = type { ptr, %struct.mhi_ring, %struct.mhi_ring, i32, i32, i32, i32, i32, %struct.db_cfg, i32, i32, i32, ptr, ptr, %struct.mutex, %struct.completion, %struct.rwlock_t, %struct.list_head, i8, i8, i8, i8, i8 }
%struct.mhi_chan_ctxt = type <{ i32, i32, i32, i64, i64, i64, i64 }>
%struct.anon.75 = type { ptr, i32, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@mhi_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"states\00", [25 x i8] zeroinitializer }, align 32
@debugfs_states_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mhi_debugfs_states_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@debugfs_events_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mhi_debugfs_events_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"channels\00", [23 x i8] zeroinitializer }, align 32
@debugfs_channels_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mhi_debugfs_channels_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devices\00", [24 x i8] zeroinitializer }, align 32
@debugfs_devices_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mhi_debugfs_devices_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"regdump\00", [24 x i8] zeroinitializer }, align 32
@debugfs_regdump_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mhi_debugfs_regdump_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device_wake\00", [20 x i8] zeroinitializer }, align 32
@debugfs_device_wake_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @seq_read, ptr @mhi_debugfs_device_wake_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mhi_debugfs_device_wake_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timeout_ms\00", [21 x i8] zeroinitializer }, align 32
@debugfs_timeout_ms_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @seq_read, ptr @mhi_debugfs_timeout_ms_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mhi_debugfs_timeout_ms_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mhi_bus_type = external dso_local global %struct.bus_type, align 4
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"PM state: %s Device: %s MHI state: %s EE: %s wake: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Active\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Inactive\00", [23 x i8] zeroinitializer }, align 32
@mhi_state_str = external dso_local local_unnamed_addr constant [256 x ptr], align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"INVALID_STATE\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"INVALID_EE\00", [21 x i8] zeroinitializer }, align 32
@mhi_ee_str = external dso_local local_unnamed_addr constant [10 x ptr], align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"M0: %u M2: %u M3: %u\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" device wake: %u pending packets: %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Device not ready\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Index: %d is an offload event ring\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Index: %d intmod count: %lu time: %lu\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c" base: 0x%0llx len: 0x%llx\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" rp: 0x%llx wp: 0x%llx\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c" local rp: 0x%pK db: 0x%pad\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(%u) is an offload channel\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s(%u) state: 0x%lx brstmode: 0x%lx pollcfg: 0x%lx\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c" type: 0x%x event ring: %u\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c" base: 0x%llx len: 0x%llx rp: 0x%llx wp: 0x%llx\00", [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c" local rp: 0x%pK local wp: 0x%pK db: 0x%pad\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: type: %s dev_wake: %u\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Controller\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Transfer\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c" channels: %u(UL)/%u(DL)\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MHI_REGLEN\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MHI_VER\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MHI_CFG\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MHI_CTRL\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MHI_STATUS\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MHI_WAKE_DB\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BHI_EXECENV\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BHI_STATUS\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BHI_ERRCODE\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BHI_ERRDBG1\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BHI_ERRDBG2\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BHI_ERRDBG3\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BHIE_TXVEC_DB\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BHIE_TXVEC_STATUS\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BHIE_RXVEC_DB\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BHIE_RXVEC_STATUS\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Host PM state: %s Device state: %s EE: %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Device EE: %s state: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: 0x%x\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"get\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"put\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Wake count: %d\0A%s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Usage: echo get/put > device_wake to vote/unvote for M0\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u ms\0A\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"mhi_debugfs_root\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 375, i32 23 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 383, i32 22 }
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"debugfs_states_fops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 331, i32 37 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 385, i32 22 }
@___asan_gen_.71 = private unnamed_addr constant [20 x i8] c"debugfs_events_fops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 337, i32 37 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 387, i32 22 }
@___asan_gen_.77 = private unnamed_addr constant [22 x i8] c"debugfs_channels_fops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 343, i32 37 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 389, i32 22 }
@___asan_gen_.83 = private unnamed_addr constant [21 x i8] c"debugfs_devices_fops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 349, i32 37 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 391, i32 22 }
@___asan_gen_.89 = private unnamed_addr constant [21 x i8] c"debugfs_regdump_fops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 355, i32 37 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 393, i32 22 }
@___asan_gen_.95 = private unnamed_addr constant [25 x i8] c"debugfs_device_wake_fops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 361, i32 37 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 395, i32 22 }
@___asan_gen_.101 = private unnamed_addr constant [24 x i8] c"debugfs_timeout_ms_fops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 368, i32 37 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 20, i32 16 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 22, i32 33 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 22, i32 44 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 23, i32 6 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 24, i32 6 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 25, i32 28 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 25, i32 37 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 28, i32 16 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 31, i32 16 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 46, i32 15 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 57, i32 18 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 62, i32 17 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 68, i32 17 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 71, i32 17 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 74, i32 17 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 99, i32 18 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 108, i32 7 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 115, i32 17 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 118, i32 17 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 122, i32 17 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 139, i32 38 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 140, i32 41 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 140, i32 56 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 145, i32 39 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 148, i32 36 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 185, i32 5 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 186, i32 5 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 187, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 188, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 189, i32 5 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 190, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 191, i32 5 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 192, i32 5 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 193, i32 5 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 194, i32 5 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 195, i32 5 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 196, i32 5 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 197, i32 5 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 198, i32 5 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 199, i32 5 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 200, i32 5 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 207, i32 16 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 214, i32 16 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 225, i32 17 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 261, i32 20 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 263, i32 27 }
@___asan_gen_.243 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 156, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 242, i32 6 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 243, i32 6 }
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private constant [34 x i8] c"../drivers/bus/mhi/core/debugfs.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 275, i32 16 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @mhi_debugfs_root, ptr @.str, ptr @debugfs_states_fops, ptr @.str.1, ptr @debugfs_events_fops, ptr @.str.2, ptr @debugfs_channels_fops, ptr @.str.3, ptr @debugfs_devices_fops, ptr @.str.4, ptr @debugfs_regdump_fops, ptr @.str.5, ptr @debugfs_device_wake_fops, ptr @.str.6, ptr @debugfs_timeout_ms_fops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_states_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_events_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_channels_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_devices_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_regdump_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_device_wake_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_timeout_ms_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mhi_create_debugfs(ptr noundef %mhi_cntrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mhi_dev = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 1
  %0 = ptrtoint ptr %mhi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mhi_dev, align 4
  %init_name.i = getelementptr inbounds %struct.mhi_device, ptr %1, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mhi_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %6 = load ptr, ptr @mhi_debugfs_root, align 4
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef %6) #6
  %debugfs_dentry = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 2
  %7 = ptrtoint ptr %debugfs_dentry to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %debugfs_dentry, align 4
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %call1, ptr noundef %mhi_cntrl, ptr noundef nonnull @debugfs_states_fops) #6
  %8 = ptrtoint ptr %debugfs_dentry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %debugfs_dentry, align 4
  %call5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %9, ptr noundef %mhi_cntrl, ptr noundef nonnull @debugfs_events_fops) #6
  %10 = ptrtoint ptr %debugfs_dentry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %debugfs_dentry, align 4
  %call7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %11, ptr noundef %mhi_cntrl, ptr noundef nonnull @debugfs_channels_fops) #6
  %12 = ptrtoint ptr %debugfs_dentry to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %debugfs_dentry, align 4
  %call9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %13, ptr noundef %mhi_cntrl, ptr noundef nonnull @debugfs_devices_fops) #6
  %14 = ptrtoint ptr %debugfs_dentry to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %debugfs_dentry, align 4
  %call11 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %15, ptr noundef %mhi_cntrl, ptr noundef nonnull @debugfs_regdump_fops) #6
  %16 = ptrtoint ptr %debugfs_dentry to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %debugfs_dentry, align 4
  %call13 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 420, ptr noundef %17, ptr noundef %mhi_cntrl, ptr noundef nonnull @debugfs_device_wake_fops) #6
  %18 = ptrtoint ptr %debugfs_dentry to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %debugfs_dentry, align 4
  %call15 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 420, ptr noundef %19, ptr noundef %mhi_cntrl, ptr noundef nonnull @debugfs_timeout_ms_fops) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mhi_destroy_debugfs(ptr nocapture noundef %mhi_cntrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_dentry = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 2
  %0 = ptrtoint ptr %debugfs_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_dentry, align 4
  tail call void @debugfs_remove(ptr noundef %1) #6
  %2 = ptrtoint ptr %debugfs_dentry to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %debugfs_dentry, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mhi_debugfs_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mhi_bus_type to i32))
  %0 = load ptr, ptr @mhi_bus_type, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef %0, ptr noundef null) #6
  store ptr %call, ptr @mhi_debugfs_root, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mhi_debugfs_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mhi_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_debugfs_states_open(ptr nocapture noundef readonly %inode, ptr noundef %fp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %fp, ptr noundef nonnull @mhi_debugfs_states_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_debugfs_states_show(ptr noundef %m, ptr nocapture noundef readnone %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %pm_state = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pm_state, align 4
  %call = tail call ptr @to_mhi_pm_state_str(i32 noundef %3) #6
  %dev_state.i = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 40
  %4 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp = icmp ugt i32 %5, 255
  br i1 %cmp, label %entry.cond.end_crit_edge, label %lor.lhs.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [256 x ptr], ptr @mhi_state_str, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not, ptr @.str.10, ptr %7
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false, %entry.cond.end_crit_edge
  %cond5 = phi ptr [ @.str.10, %entry.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %ee = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 39
  %8 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ee, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %9)
  %cmp6 = icmp ugt i32 %9, 9
  br i1 %cmp6, label %cond.end.cond.end11_crit_edge, label %cond.false8

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end11

cond.false8:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx10 = getelementptr [10 x ptr], ptr @mhi_ee_str, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx10, align 4
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false8, %cond.end.cond.end11_crit_edge
  %cond12 = phi ptr [ %11, %cond.false8 ], [ @.str.11, %cond.end.cond.end11_crit_edge ]
  %12 = add i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %13 = icmp ult i32 %12, 5
  %cond = select i1 %13, ptr @.str.8, ptr @.str.9
  %wake_set = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 68
  %14 = ptrtoint ptr %wake_set to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wake_set, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13.not = icmp eq i8 %15, 0
  %cond14 = select i1 %tobool13.not, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.7, ptr noundef %call, ptr noundef nonnull %cond, ptr noundef nonnull %cond5, ptr noundef %cond12, ptr noundef nonnull %cond14) #6
  %M0 = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 43
  %16 = ptrtoint ptr %M0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %M0, align 4
  %M2 = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 44
  %18 = ptrtoint ptr %M2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %M2, align 4
  %M3 = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 45
  %20 = ptrtoint ptr %M3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %M3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, i32 noundef %17, i32 noundef %19, i32 noundef %21) #6
  %dev_wake = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dev_wake, i32 noundef 4) #6
  %22 = ptrtoint ptr %dev_wake to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %dev_wake, align 4
  %pending_pkts = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 42
  %call.i.i34 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_pkts, i32 noundef 4) #6
  %24 = ptrtoint ptr %pending_pkts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %pending_pkts, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i32 noundef %23, i32 noundef %25) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @to_mhi_pm_state_str(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_debugfs_events_open(ptr nocapture noundef readonly %inode, ptr noundef %fp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %fp, ptr noundef nonnull @mhi_debugfs_events_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_debugfs_events_show(ptr noundef %m, ptr nocapture noundef readnone %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev_state.i = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_state.i, align 4
  %4 = add i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %5 = icmp ult i32 %4, 5
  br i1 %5, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.16) #6
  br label %cleanup11

if.end:                                           ; preds = %entry
  %total_ev_rings = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %total_ev_rings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total_ev_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp36.not = icmp eq i32 %7, 0
  br i1 %cmp36.not, label %if.end.cleanup11_crit_edge, label %for.body.preheader

if.end.cleanup11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup11

for.body.preheader:                               ; preds = %if.end
  %mhi_event2 = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %mhi_event2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mhi_event2, align 4
  %mhi_ctxt = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 33
  %10 = ptrtoint ptr %mhi_ctxt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mhi_ctxt, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.preheader
  %i.041 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %er_ctxt.039 = phi ptr [ %incdec.ptr, %cleanup.for.body_crit_edge ], [ %13, %for.body.preheader ]
  %mhi_event.037 = phi ptr [ %incdec.ptr10, %cleanup.for.body_crit_edge ], [ %9, %for.body.preheader ]
  %offload_ev = getelementptr inbounds %struct.mhi_event, ptr %mhi_event.037, i32 0, i32 15
  %14 = ptrtoint ptr %offload_ev to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %offload_ev, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.17, i32 noundef %i.041) #6
  br label %cleanup

if.end5:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %er_ctxt.039 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %er_ctxt.039, align 4
  %and = lshr i32 %17, 8
  %shr = and i32 %and, 255
  %shr8 = lshr i32 %17, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, i32 noundef %i.041, i32 noundef %shr, i32 noundef %shr8) #6
  %rbase = getelementptr inbounds %struct.mhi_event_ctxt, ptr %er_ctxt.039, i32 0, i32 3
  %18 = ptrtoint ptr %rbase to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %rbase, align 4
  %rlen = getelementptr inbounds %struct.mhi_event_ctxt, ptr %er_ctxt.039, i32 0, i32 4
  %20 = ptrtoint ptr %rlen to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %rlen, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.19, i64 noundef %19, i64 noundef %21) #6
  %rp = getelementptr inbounds %struct.mhi_event_ctxt, ptr %er_ctxt.039, i32 0, i32 5
  %22 = ptrtoint ptr %rp to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %rp, align 4
  %wp = getelementptr inbounds %struct.mhi_event_ctxt, ptr %er_ctxt.039, i32 0, i32 6
  %24 = ptrtoint ptr %wp to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %wp, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20, i64 noundef %23, i64 noundef %25) #6
  %rp9 = getelementptr inbounds %struct.mhi_event, ptr %mhi_event.037, i32 0, i32 8, i32 5
  %26 = ptrtoint ptr %rp9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rp9, align 4
  %db_val = getelementptr inbounds %struct.mhi_event, ptr %mhi_event.037, i32 0, i32 9, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, ptr noundef %27, ptr noundef %db_val) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4
  %inc = add nuw i32 %i.041, 1
  %incdec.ptr = getelementptr %struct.mhi_event_ctxt, ptr %er_ctxt.039, i32 1
  %incdec.ptr10 = getelementptr %struct.mhi_event, ptr %mhi_event.037, i32 1
  %28 = ptrtoint ptr %total_ev_rings to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %total_ev_rings, align 4
  %cmp = icmp ult i32 %inc, %29
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.cleanup11_crit_edge

cleanup.cleanup11_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup11

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup11:                                        ; preds = %cleanup.cleanup11_crit_edge, %if.end.cleanup11_crit_edge, %if.then
  %retval.0 = phi i32 [ -19, %if.then ], [ 0, %if.end.cleanup11_crit_edge ], [ 0, %cleanup.cleanup11_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_debugfs_channels_open(ptr nocapture noundef readonly %inode, ptr noundef %fp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %fp, ptr noundef nonnull @mhi_debugfs_channels_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_debugfs_channels_show(ptr noundef %m, ptr nocapture noundef readnone %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev_state.i = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_state.i, align 4
  %4 = add i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %5 = icmp ult i32 %4, 5
  br i1 %5, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.16) #6
  br label %cleanup19

if.end:                                           ; preds = %entry
  %max_chan = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %max_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp51.not = icmp eq i32 %7, 0
  br i1 %cmp51.not, label %if.end.cleanup19_crit_edge, label %for.body.preheader

if.end.cleanup19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup19

for.body.preheader:                               ; preds = %if.end
  %mhi_ctxt = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 33
  %8 = ptrtoint ptr %mhi_ctxt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mhi_ctxt, align 4
  %chan_ctxt2 = getelementptr inbounds %struct.mhi_ctxt, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %chan_ctxt2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan_ctxt2, align 4
  %mhi_chan1 = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %mhi_chan1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mhi_chan1, align 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.preheader
  %i.056 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %chan_ctxt.054 = phi ptr [ %incdec.ptr, %cleanup.for.body_crit_edge ], [ %11, %for.body.preheader ]
  %mhi_chan.052 = phi ptr [ %incdec.ptr18, %cleanup.for.body_crit_edge ], [ %13, %for.body.preheader ]
  %offload_ch = getelementptr inbounds %struct.mhi_chan, ptr %mhi_chan.052, i32 0, i32 20
  %14 = ptrtoint ptr %offload_ch to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %offload_ch, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %mhi_chan.052 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mhi_chan.052, align 4
  %chan = getelementptr inbounds %struct.mhi_chan, ptr %mhi_chan.052, i32 0, i32 3
  %18 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chan, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22, ptr noundef %17, i32 noundef %19) #6
  br label %cleanup

if.end4:                                          ; preds = %for.body
  %mhi_dev = getelementptr inbounds %struct.mhi_chan, ptr %mhi_chan.052, i32 0, i32 12
  %20 = ptrtoint ptr %mhi_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mhi_dev, align 4
  %tobool5.not = icmp eq ptr %21, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %mhi_chan.052 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mhi_chan.052, align 4
  %chan9 = getelementptr inbounds %struct.mhi_chan, ptr %mhi_chan.052, i32 0, i32 3
  %24 = ptrtoint ptr %chan9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chan9, align 4
  %26 = ptrtoint ptr %chan_ctxt.054 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chan_ctxt.054, align 4
  %and = and i32 %27, 255
  %and11 = lshr i32 %27, 8
  %shr12 = and i32 %and11, 3
  %and14 = lshr i32 %27, 10
  %shr15 = and i32 %and14, 63
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.23, ptr noundef %23, i32 noundef %25, i32 noundef %and, i32 noundef %shr12, i32 noundef %shr15) #6
  %chtype = getelementptr inbounds %struct.mhi_chan_ctxt, ptr %chan_ctxt.054, i32 0, i32 1
  %28 = ptrtoint ptr %chtype to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chtype, align 4
  %erindex = getelementptr inbounds %struct.mhi_chan_ctxt, ptr %chan_ctxt.054, i32 0, i32 2
  %30 = ptrtoint ptr %erindex to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %erindex, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %29, i32 noundef %31) #6
  %rbase = getelementptr inbounds %struct.mhi_chan_ctxt, ptr %chan_ctxt.054, i32 0, i32 3
  %32 = ptrtoint ptr %rbase to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %rbase, align 4
  %rlen = getelementptr inbounds %struct.mhi_chan_ctxt, ptr %chan_ctxt.054, i32 0, i32 4
  %34 = ptrtoint ptr %rlen to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %rlen, align 4
  %rp = getelementptr inbounds %struct.mhi_chan_ctxt, ptr %chan_ctxt.054, i32 0, i32 5
  %36 = ptrtoint ptr %rp to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %rp, align 4
  %wp = getelementptr inbounds %struct.mhi_chan_ctxt, ptr %chan_ctxt.054, i32 0, i32 6
  %38 = ptrtoint ptr %wp to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %wp, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.25, i64 noundef %33, i64 noundef %35, i64 noundef %37, i64 noundef %39) #6
  %rp16 = getelementptr inbounds %struct.mhi_chan, ptr %mhi_chan.052, i32 0, i32 2, i32 5
  %40 = ptrtoint ptr %rp16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rp16, align 4
  %wp17 = getelementptr inbounds %struct.mhi_chan, ptr %mhi_chan.052, i32 0, i32 2, i32 6
  %42 = ptrtoint ptr %wp17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wp17, align 4
  %db_val = getelementptr inbounds %struct.mhi_chan, ptr %mhi_chan.052, i32 0, i32 8, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.26, ptr noundef %41, ptr noundef %43, ptr noundef %db_val) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end4.cleanup_crit_edge, %if.then3
  %inc = add nuw i32 %i.056, 1
  %incdec.ptr = getelementptr %struct.mhi_chan_ctxt, ptr %chan_ctxt.054, i32 1
  %incdec.ptr18 = getelementptr %struct.mhi_chan, ptr %mhi_chan.052, i32 1
  %44 = ptrtoint ptr %max_chan to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_chan, align 4
  %cmp = icmp ult i32 %inc, %45
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.cleanup19_crit_edge

cleanup.cleanup19_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup19

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup19:                                        ; preds = %cleanup.cleanup19_crit_edge, %if.end.cleanup19_crit_edge, %if.then
  %retval.0 = phi i32 [ -19, %if.then ], [ 0, %if.end.cleanup19_crit_edge ], [ 0, %cleanup.cleanup19_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_debugfs_devices_open(ptr nocapture noundef readonly %inode, ptr noundef %fp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %fp, ptr noundef nonnull @mhi_debugfs_devices_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_debugfs_devices_show(ptr noundef %m, ptr nocapture noundef readnone %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev_state.i = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_state.i, align 4
  %4 = add i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %5 = icmp ult i32 %4, 5
  br i1 %5, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.16) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %mhi_dev = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mhi_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mhi_dev, align 4
  %bus.i = getelementptr inbounds %struct.mhi_device, ptr %7, i32 0, i32 5, i32 5
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %cmp.not.i = icmp eq ptr %9, @mhi_bus_type
  br i1 %cmp.not.i, label %if.end.i, label %if.end.mhi_device_info_show.exit_crit_edge

if.end.mhi_device_info_show.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %mhi_device_info_show.exit

if.end.i:                                         ; preds = %if.end
  %name.i = getelementptr %struct.mhi_device, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name.i, align 4
  %dev_type.i = getelementptr %struct.mhi_device, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.29, ptr @.str.28
  %dev_wake.i = getelementptr %struct.mhi_device, ptr %7, i32 0, i32 9
  %14 = ptrtoint ptr %dev_wake.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev_wake.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27, ptr noundef %11, ptr noundef nonnull %cond.i, i32 noundef %15) #6
  %16 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dev_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp2.i = icmp eq i32 %17, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %ul_chan_id.i = getelementptr %struct.mhi_device, ptr %7, i32 0, i32 7
  %18 = ptrtoint ptr %ul_chan_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ul_chan_id.i, align 4
  %dl_chan_id.i = getelementptr %struct.mhi_device, ptr %7, i32 0, i32 8
  %20 = ptrtoint ptr %dl_chan_id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dl_chan_id.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.30, i32 noundef %19, i32 noundef %21) #6
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.31) #6
  br label %mhi_device_info_show.exit

mhi_device_info_show.exit:                        ; preds = %if.end4.i, %if.end.mhi_device_info_show.exit_crit_edge
  %22 = ptrtoint ptr %mhi_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mhi_dev, align 4
  %dev3 = getelementptr inbounds %struct.mhi_device, ptr %23, i32 0, i32 5
  %call4 = tail call i32 @device_for_each_child(ptr noundef %dev3, ptr noundef %m, ptr noundef nonnull @mhi_device_info_show) #6
  br label %cleanup

cleanup:                                          ; preds = %mhi_device_info_show.exit, %if.then
  %retval.0 = phi i32 [ 0, %mhi_device_info_show.exit ], [ -19, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_device_info_show(ptr nocapture noundef readonly %dev, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %cmp.not = icmp eq ptr %1, @mhi_bus_type
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr i8, ptr %dev, i32 -20
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %dev_type = getelementptr i8, ptr %dev, i32 928
  %4 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, ptr @.str.29, ptr @.str.28
  %dev_wake = getelementptr i8, ptr %dev, i32 940
  %6 = ptrtoint ptr %dev_wake to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_wake, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %data, ptr noundef nonnull @.str.27, ptr noundef %3, ptr noundef nonnull %cond, i32 noundef %7) #6
  %8 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2 = icmp eq i32 %9, 0
  br i1 %cmp2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ul_chan_id = getelementptr i8, ptr %dev, i32 932
  %10 = ptrtoint ptr %ul_chan_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ul_chan_id, align 4
  %dl_chan_id = getelementptr i8, ptr %dev, i32 936
  %12 = ptrtoint ptr %dl_chan_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dl_chan_id, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %data, ptr noundef nonnull @.str.30, i32 noundef %11, i32 noundef %13) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @seq_puts(ptr noundef %data, ptr noundef nonnull @.str.31) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_debugfs_regdump_open(ptr nocapture noundef readonly %inode, ptr noundef %fp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %fp, ptr noundef nonnull @mhi_debugfs_regdump_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_debugfs_regdump_show(ptr noundef %m, ptr nocapture noundef readnone %d) #0 align 64 {
entry:
  %val = alloca i32, align 4
  %regs2 = alloca [17 x %struct.anon.75], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !146
  %regs = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %bhi = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %bhi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bhi, align 4
  %bhie = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %bhie to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bhie, align 4
  %wake_db1 = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %wake_db1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wake_db1, align 4
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %regs2) #6
  %11 = ptrtoint ptr %regs2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.32, ptr %regs2, align 4
  %offset = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 0, i32 1
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %offset, align 4
  %base = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 0, i32 2
  %13 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %4, ptr %base, align 4
  %arrayinit.element = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 1
  %14 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.33, ptr %arrayinit.element, align 4
  %offset4 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 1, i32 1
  %15 = ptrtoint ptr %offset4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %offset4, align 4
  %base5 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 1, i32 2
  %16 = ptrtoint ptr %base5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %4, ptr %base5, align 4
  %arrayinit.element6 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 2
  %17 = ptrtoint ptr %arrayinit.element6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.34, ptr %arrayinit.element6, align 4
  %offset8 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 2, i32 1
  %18 = ptrtoint ptr %offset8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16, ptr %offset8, align 4
  %base9 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 2, i32 2
  %19 = ptrtoint ptr %base9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %4, ptr %base9, align 4
  %arrayinit.element10 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 3
  %20 = ptrtoint ptr %arrayinit.element10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.35, ptr %arrayinit.element10, align 4
  %offset12 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 3, i32 1
  %21 = ptrtoint ptr %offset12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 56, ptr %offset12, align 4
  %base13 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 3, i32 2
  %22 = ptrtoint ptr %base13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %4, ptr %base13, align 4
  %arrayinit.element14 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 4
  %23 = ptrtoint ptr %arrayinit.element14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.36, ptr %arrayinit.element14, align 4
  %offset16 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 4, i32 1
  %24 = ptrtoint ptr %offset16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 72, ptr %offset16, align 4
  %base17 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 4, i32 2
  %25 = ptrtoint ptr %base17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %4, ptr %base17, align 4
  %arrayinit.element18 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 5
  %26 = ptrtoint ptr %arrayinit.element18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.37, ptr %arrayinit.element18, align 4
  %offset20 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 5, i32 1
  %27 = ptrtoint ptr %offset20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %offset20, align 4
  %base21 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 5, i32 2
  %28 = ptrtoint ptr %base21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %10, ptr %base21, align 4
  %arrayinit.element22 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 6
  %29 = ptrtoint ptr %arrayinit.element22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.38, ptr %arrayinit.element22, align 4
  %offset24 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 6, i32 1
  %30 = ptrtoint ptr %offset24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 40, ptr %offset24, align 4
  %base25 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 6, i32 2
  %31 = ptrtoint ptr %base25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %6, ptr %base25, align 4
  %arrayinit.element26 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 7
  %32 = ptrtoint ptr %arrayinit.element26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.39, ptr %arrayinit.element26, align 4
  %offset28 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 7, i32 1
  %33 = ptrtoint ptr %offset28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 44, ptr %offset28, align 4
  %base29 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 7, i32 2
  %34 = ptrtoint ptr %base29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %6, ptr %base29, align 4
  %arrayinit.element30 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 8
  %35 = ptrtoint ptr %arrayinit.element30 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.40, ptr %arrayinit.element30, align 4
  %offset32 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 8, i32 1
  %36 = ptrtoint ptr %offset32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 48, ptr %offset32, align 4
  %base33 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 8, i32 2
  %37 = ptrtoint ptr %base33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %6, ptr %base33, align 4
  %arrayinit.element34 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 9
  %38 = ptrtoint ptr %arrayinit.element34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.41, ptr %arrayinit.element34, align 4
  %offset36 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 9, i32 1
  %39 = ptrtoint ptr %offset36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 52, ptr %offset36, align 4
  %base37 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 9, i32 2
  %40 = ptrtoint ptr %base37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %6, ptr %base37, align 4
  %arrayinit.element38 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 10
  %41 = ptrtoint ptr %arrayinit.element38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.42, ptr %arrayinit.element38, align 4
  %offset40 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 10, i32 1
  %42 = ptrtoint ptr %offset40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 56, ptr %offset40, align 4
  %base41 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 10, i32 2
  %43 = ptrtoint ptr %base41 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %6, ptr %base41, align 4
  %arrayinit.element42 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 11
  %44 = ptrtoint ptr %arrayinit.element42 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.43, ptr %arrayinit.element42, align 4
  %offset44 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 11, i32 1
  %45 = ptrtoint ptr %offset44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 60, ptr %offset44, align 4
  %base45 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 11, i32 2
  %46 = ptrtoint ptr %base45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %6, ptr %base45, align 4
  %arrayinit.element46 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 12
  %47 = ptrtoint ptr %arrayinit.element46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.44, ptr %arrayinit.element46, align 4
  %offset48 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 12, i32 1
  %48 = ptrtoint ptr %offset48 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 60, ptr %offset48, align 4
  %base49 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 12, i32 2
  %49 = ptrtoint ptr %base49 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %8, ptr %base49, align 4
  %arrayinit.element50 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 13
  %50 = ptrtoint ptr %arrayinit.element50 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.45, ptr %arrayinit.element50, align 4
  %offset52 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 13, i32 1
  %51 = ptrtoint ptr %offset52 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 68, ptr %offset52, align 4
  %base53 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 13, i32 2
  %52 = ptrtoint ptr %base53 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %8, ptr %base53, align 4
  %arrayinit.element54 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 14
  %53 = ptrtoint ptr %arrayinit.element54 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.46, ptr %arrayinit.element54, align 4
  %offset56 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 14, i32 1
  %54 = ptrtoint ptr %offset56 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 112, ptr %offset56, align 4
  %base57 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 14, i32 2
  %55 = ptrtoint ptr %base57 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %8, ptr %base57, align 4
  %arrayinit.element58 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 15
  %56 = ptrtoint ptr %arrayinit.element58 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.47, ptr %arrayinit.element58, align 4
  %offset60 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 15, i32 1
  %57 = ptrtoint ptr %offset60 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 120, ptr %offset60, align 4
  %base61 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 15, i32 2
  %58 = ptrtoint ptr %base61 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %8, ptr %base61, align 4
  %arrayinit.element62 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 16
  %59 = ptrtoint ptr %arrayinit.element62 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %arrayinit.element62, align 4
  %offset64 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 16, i32 1
  %60 = ptrtoint ptr %offset64 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %offset64, align 4
  %base65 = getelementptr inbounds %struct.anon.75, ptr %regs2, i32 16, i32 2
  %61 = ptrtoint ptr %base65 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %base65, align 4
  %pm_state = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 37
  %62 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pm_state, align 4
  %and = and i32 %63, 2014
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @to_mhi_pm_state_str(i32 noundef %63) #6
  %dev_state = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 40
  %64 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %65)
  %cmp = icmp ugt i32 %65, 255
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %lor.lhs.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [256 x ptr], ptr @mhi_state_str, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx, align 4
  %tobool68.not = icmp eq ptr %67, null
  %spec.select = select i1 %tobool68.not, ptr @.str.10, ptr %67
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false, %if.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.10, %if.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %ee71 = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 39
  %68 = ptrtoint ptr %ee71 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ee71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %69)
  %cmp72 = icmp ugt i32 %69, 9
  br i1 %cmp72, label %cond.end.cond.end77_crit_edge, label %cond.false74

cond.end.cond.end77_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end77

cond.false74:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx76 = getelementptr [10 x ptr], ptr @mhi_ee_str, i32 0, i32 %69
  %70 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx76, align 4
  br label %cond.end77

cond.end77:                                       ; preds = %cond.false74, %cond.end.cond.end77_crit_edge
  %cond78 = phi ptr [ %71, %cond.false74 ], [ @.str.11, %cond.end.cond.end77_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.48, ptr noundef %call, ptr noundef nonnull %cond, ptr noundef %cond78) #6
  %call79 = tail call i32 @mhi_get_mhi_state(ptr noundef %1) #6
  %call80 = tail call i32 @mhi_get_exec_env(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call80)
  %cmp81 = icmp ugt i32 %call80, 9
  br i1 %cmp81, label %cond.end77.cond.end85_crit_edge, label %cond.false83

cond.end77.cond.end85_crit_edge:                  ; preds = %cond.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end85

cond.false83:                                     ; preds = %cond.end77
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx84 = getelementptr [10 x ptr], ptr @mhi_ee_str, i32 0, i32 %call80
  %72 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx84, align 4
  br label %cond.end85

cond.end85:                                       ; preds = %cond.false83, %cond.end77.cond.end85_crit_edge
  %cond86 = phi ptr [ %73, %cond.false83 ], [ @.str.11, %cond.end77.cond.end85_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call79)
  %cmp87 = icmp ugt i32 %call79, 255
  br i1 %cmp87, label %cond.end85.cond.end94_crit_edge, label %lor.lhs.false88

cond.end85.cond.end94_crit_edge:                  ; preds = %cond.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end94

lor.lhs.false88:                                  ; preds = %cond.end85
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx89 = getelementptr [256 x ptr], ptr @mhi_state_str, i32 0, i32 %call79
  %74 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx89, align 4
  %tobool90.not = icmp eq ptr %75, null
  %spec.select165 = select i1 %tobool90.not, ptr @.str.10, ptr %75
  br label %cond.end94

cond.end94:                                       ; preds = %lor.lhs.false88, %cond.end85.cond.end94_crit_edge
  %cond95 = phi ptr [ @.str.10, %cond.end85.cond.end94_crit_edge ], [ %spec.select165, %lor.lhs.false88 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.49, ptr noundef %cond86, ptr noundef nonnull %cond95) #6
  %76 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs2, align 4
  %tobool98.not166 = icmp eq ptr %77, null
  br i1 %tobool98.not166, label %cond.end94.cleanup_crit_edge, label %cond.end94.for.body_crit_edge

cond.end94.for.body_crit_edge:                    ; preds = %cond.end94
  br label %for.body

cond.end94.cleanup_crit_edge:                     ; preds = %cond.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cond.end94.for.body_crit_edge
  %arrayidx96169 = phi ptr [ %arrayidx96, %for.inc.for.body_crit_edge ], [ %regs2, %cond.end94.for.body_crit_edge ]
  %i.0167 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %cond.end94.for.body_crit_edge ]
  %base100 = getelementptr [17 x %struct.anon.75], ptr %regs2, i32 0, i32 %i.0167, i32 2
  %78 = ptrtoint ptr %base100 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base100, align 4
  %tobool101.not = icmp eq ptr %79, null
  br i1 %tobool101.not, label %for.body.for.inc_crit_edge, label %if.end103

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end103:                                        ; preds = %for.body
  %offset107 = getelementptr [17 x %struct.anon.75], ptr %regs2, i32 0, i32 %i.0167, i32 1
  %80 = ptrtoint ptr %offset107 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offset107, align 4
  %call108 = call i32 @mhi_read_reg(ptr noundef %1, ptr noundef nonnull %79, i32 noundef %81, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %if.end103.for.inc_crit_edge

if.end103.for.inc_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end111:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %arrayidx96169 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx96169, align 4
  %84 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50, ptr noundef %83, i32 noundef %85) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end111, %if.end103.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %i.0167, 1
  %arrayidx96 = getelementptr [17 x %struct.anon.75], ptr %regs2, i32 0, i32 %inc
  %86 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx96, align 4
  %tobool98.not = icmp eq ptr %87, null
  br i1 %tobool98.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %cond.end94.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %cond.end94.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %regs2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_get_mhi_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_get_exec_env(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_read_reg(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_debugfs_device_wake_write(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %mhi_dev1 = getelementptr inbounds %struct.mhi_controller, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mhi_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mhi_dev1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #6
  %6 = tail call i32 @llvm.umin.i32(i32 %count, i32 15)
  %7 = call ptr @memset(ptr %buf, i32 255, i32 16)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %6, i1 noundef zeroext false) #6
  call void @__might_fault(ptr noundef nonnull @.str.55, i32 noundef 156) #6
  %call.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %8 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %6, i32 -1226833920) #9, !srcloc !147
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !148

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %6) #6
  %9 = call i32 @llvm.read_register.i32(metadata !135) #6
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !149
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !150
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %ubuf, i32 noundef %6) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #6, !srcloc !150
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %6, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %6, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !148

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = sub i32 %6, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buf, ptr noundef nonnull dereferenceable(3) @.str.51, i32 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool3.not = icmp eq i32 %bcmp, 0
  br i1 %tobool3.not, label %if.end11, label %if.else

if.else:                                          ; preds = %if.end
  %bcmp26 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buf, ptr noundef nonnull dereferenceable(3) @.str.52, i32 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp26)
  %tobool8.not = icmp eq i32 %bcmp26, 0
  br i1 %tobool8.not, label %if.end11.thread, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @mhi_device_put(ptr noundef %5) #6
  br label %13

if.end11:                                         ; preds = %if.end
  %call5 = call i32 @mhi_device_get_sync(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool12.not = icmp eq i32 %call5, 0
  br i1 %tobool12.not, label %if.end11._crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11._crit_edge:                              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %13

13:                                               ; preds = %if.end11._crit_edge, %if.end11.thread
  br label %cleanup

cleanup:                                          ; preds = %13, %if.end11.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %13 ], [ %call5, %if.end11.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -22, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_debugfs_device_wake_open(ptr nocapture noundef readonly %inode, ptr noundef %fp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %fp, ptr noundef nonnull @mhi_debugfs_device_wake_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_device_get_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mhi_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_debugfs_device_wake_show(ptr noundef %m, ptr nocapture noundef readnone %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev_state.i = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_state.i, align 4
  %4 = add i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %5 = icmp ult i32 %4, 5
  br i1 %5, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.16) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mhi_dev1 = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mhi_dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mhi_dev1, align 4
  %dev_wake = getelementptr inbounds %struct.mhi_device, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %dev_wake to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_wake, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, i32 noundef %9, ptr noundef nonnull @.str.57) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_debugfs_timeout_ms_write(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %timeout_ms = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeout_ms) #6
  %4 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %timeout_ms, align 4, !annotation !146
  %call.i = call i32 @kstrtouint_from_user(ptr noundef %ubuf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %timeout_ms) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %timeout_ms, align 4
  %timeout_ms1 = getelementptr inbounds %struct.mhi_controller, ptr %3, i32 0, i32 36
  %7 = ptrtoint ptr %timeout_ms1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %timeout_ms1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeout_ms) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_debugfs_timeout_ms_open(ptr nocapture noundef readonly %inode, ptr noundef %fp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %fp, ptr noundef nonnull @mhi_debugfs_timeout_ms_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_debugfs_timeout_ms_show(ptr noundef %m, ptr nocapture noundef readnone %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %timeout_ms = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout_ms, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.58, i32 noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind readonly }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !125, !127, !129, !131, !133}
!llvm.named.register.sp = !{!135}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 383, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 385, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 387, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 389, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 391, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 393, i32 22}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 395, i32 22}
!14 = !{ptr @mhi_debugfs_root, !15, !"mhi_debugfs_root", i1 false, i1 false}
!15 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 375, i32 23}
!16 = !{ptr @debugfs_states_fops, !17, !"debugfs_states_fops", i1 false, i1 false}
!17 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 331, i32 37}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 20, i32 16}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 22, i32 33}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 22, i32 44}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 23, i32 6}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 24, i32 6}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 25, i32 28}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 25, i32 37}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 28, i32 16}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 31, i32 16}
!36 = !{ptr @debugfs_events_fops, !37, !"debugfs_events_fops", i1 false, i1 false}
!37 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 337, i32 37}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 46, i32 15}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 57, i32 18}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 62, i32 17}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 68, i32 17}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 71, i32 17}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 74, i32 17}
!50 = !{ptr @debugfs_channels_fops, !51, !"debugfs_channels_fops", i1 false, i1 false}
!51 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 343, i32 37}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 99, i32 18}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 108, i32 7}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 115, i32 17}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 118, i32 17}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 122, i32 17}
!62 = !{ptr @debugfs_devices_fops, !63, !"debugfs_devices_fops", i1 false, i1 false}
!63 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 349, i32 37}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 139, i32 38}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 140, i32 41}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 140, i32 56}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 145, i32 39}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 148, i32 36}
!74 = !{ptr @debugfs_regdump_fops, !75, !"debugfs_regdump_fops", i1 false, i1 false}
!75 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 355, i32 37}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 185, i32 5}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 186, i32 5}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 187, i32 5}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 188, i32 5}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 189, i32 5}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 190, i32 5}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 191, i32 5}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 192, i32 5}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 193, i32 5}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 194, i32 5}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 195, i32 5}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 196, i32 5}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 197, i32 5}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 198, i32 5}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 199, i32 5}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 200, i32 5}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 207, i32 16}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 214, i32 16}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 225, i32 17}
!114 = !{ptr @debugfs_device_wake_fops, !115, !"debugfs_device_wake_fops", i1 false, i1 false}
!115 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 361, i32 37}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 261, i32 20}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 263, i32 27}
!120 = distinct !{null, !121, !"__already_done", i1 false, i1 false}
!121 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!122 = distinct !{null, !121, !"<string literal>", i1 false, i1 false}
!123 = distinct !{null, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 242, i32 6}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 243, i32 6}
!131 = !{ptr @debugfs_timeout_ms_fops, !132, !"debugfs_timeout_ms_fops", i1 false, i1 false}
!132 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 368, i32 37}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/bus/mhi/core/debugfs.c", i32 275, i32 16}
!135 = !{!"sp"}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i8 0, i8 2}
!146 = !{!"auto-init"}
!147 = !{i64 2152185559, i64 2152185584}
!148 = !{!"branch_weights", i32 2000, i32 1}
!149 = !{i64 4681114}
!150 = !{i64 4681311}
!151 = !{i64 2152166544}
