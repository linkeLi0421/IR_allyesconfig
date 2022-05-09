; ModuleID = '/llk/IR_all_yes/drivers/scsi/snic/snic_debugfs.c_pt.bc'
source_filename = "../drivers/scsi/snic/snic_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.snic_global = type { %struct.list_head, %struct.spinlock, [3 x ptr], ptr, ptr, ptr, [52 x i8], %struct.snic_trc, [64 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snic_trc = type { %struct.spinlock, ptr, i32, i32, i32, i8 }
%struct.snic = type { %struct.list_head, [16 x i8], %struct.atomic_t, %struct.spinlock, ptr, i8, i8, %struct.snic_disc, ptr, %struct.vnic_dev_bar, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, [3 x %struct.snic_msix_entry], [3 x ptr], [4 x i8], [64 x %struct.spinlock], %struct.spinlock, %struct.list_head, i32, %struct.atomic_t, %struct.vnic_snic_config, %struct.work_struct, %struct.snic_fw_info, %struct.work_struct, %struct.work_struct, i32, %struct.atomic64_t, %struct.snic_stats, ptr, ptr, ptr, [60 x i8], [2 x %struct.vnic_cq], [8 x i8], [1 x %struct.vnic_wq], [1 x %struct.spinlock], [20 x i8], [3 x %struct.vnic_intr], [92 x i8] }
%struct.snic_disc = type { %struct.list_head, i32, %struct.mutex, i16, i8, i32, i32, ptr, %struct.delayed_work, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.vnic_dev_bar = type { ptr, i32, i32 }
%struct.snic_msix_entry = type { i32, [32 x i8], ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vnic_snic_config = type { i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8 }
%struct.snic_fw_info = type { i32, i32, i32, i32, i32, i32, i32, i16, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.snic_stats = type { %struct.snic_io_stats, %struct.snic_abort_stats, %struct.snic_reset_stats, %struct.snic_fw_stats, %struct.snic_misc_stats, %struct.atomic64_t }
%struct.snic_io_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [60 x %struct.atomic64_t], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.snic_abort_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.snic_reset_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.snic_fw_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.snic_misc_stats = type { i64, i64, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.vnic_cq = type { i32, ptr, ptr, %struct.vnic_dev_ring, i32, i32 }
%struct.vnic_dev_ring = type { ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.vnic_wq = type { i32, ptr, ptr, %struct.vnic_dev_ring, [64 x ptr], ptr, ptr, i32 }
%struct.vnic_intr = type { i32, ptr, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.104, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.105, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.106, ptr, %struct.address_space, %struct.list_head, %union.anon.107, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.104 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.105 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.106 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.107 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
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

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"snic\00", [27 x i8] zeroinitializer }, align 32
@snic_glob = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"statistics\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"host%d\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@snic_stats_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @snic_stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset_stats\00", [20 x i8] zeroinitializer }, align 32
@snic_reset_stats_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @snic_reset_stats_read, ptr @snic_reset_stats_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @snic_reset_stats_open, ptr null, ptr @snic_reset_stats_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tracing_enable\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"trace\00", [26 x i8] zeroinitializer }, align 32
@snic_trc_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @snic_trc_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"------------------------------------------\0A\09\09 IO Statistics\0A------------------------------------------\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [509 x i8], [99 x i8] } { [509 x i8] c"Active IOs                  : %lld\0AMax Active IOs              : %lld\0ATotal IOs                   : %lld\0AIOs Completed               : %lld\0AIOs Failed                  : %lld\0AIOs Not Found               : %lld\0AMemory Alloc Failures       : %lld\0AREQs Null                   : %lld\0ASCSI Cmd Pointers Null      : %lld\0AMax SGL for any IO          : %lld\0AMax IO Size                 : %lld Sectors\0AMax Queuing Time            : %lld\0AMax Completion Time         : %lld\0AMax IO Process Time(FW)     : %lld (%u msec)\0A\00", [99 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\0ASGL Counters\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%10lld \00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"\0A-------------------------------------------\0A\09\09 Abort Statistics\0A---------------------------------------------\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [211 x i8], [45 x i8] } { [211 x i8] c"Aborts                      : %lld\0AAborts Fail                 : %lld\0AAborts Driver Timeout       : %lld\0AAbort FW Timeout            : %lld\0AAbort IO NOT Found          : %lld\0AAbort Queuing Failed        : %lld\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"\0A-------------------------------------------\0A\09\09 Reset Statistics\0A---------------------------------------------\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"HBA Resets                  : %lld\0AHBA Reset Cmpls             : %lld\0AHBA Reset Fail              : %lld\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"\0A-------------------------------------------\0A\09\09 Firmware Statistics\0A---------------------------------------------\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [191 x i8], [33 x i8] } { [191 x i8] c"Active FW Requests             : %lld\0AMax FW Requests                : %lld\0AFW Out Of Resource Errs        : %lld\0AFW IO Errors                   : %lld\0AFW SCSI Errors                 : %lld\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"\0A---------------------------------------------\0A\09\09 Other Statistics\0A\0A---------------------------------------------\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [589 x i8], [147 x i8] } { [589 x i8] c"Last ISR Time               : %llu (%8llu.%09lu)\0ALast Ack Time               : %llu (%8llu.%09lu)\0AAck ISRs                    : %llu\0AIO Cmpl ISRs                : %llu\0AErr Notify ISRs             : %llu\0AMax CQ Entries              : %lld\0AData Count Mismatch         : %lld\0AIOs w/ Timeout Status       : %lld\0AIOs w/ Aborted Status       : %lld\0AIOs w/ SGL Invalid Stat     : %lld\0AWQ Desc Alloc Fail          : %lld\0AQueue Full                  : %lld\0AQueue Ramp Up               : %lld\0AQueue Ramp Down             : %lld\0AQueue Last Queue Depth      : %lld\0ATarget Not Ready            : %lld\0A\00", [147 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@snic_reset_stats_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.23, i32 162, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Reset Op: Driver statistics.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snic_reset_stats_write\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/scsi/snic/snic_debugfs.c\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snic_reset_stats_write._entry_ptr = internal global ptr @snic_reset_stats_write._entry, section ".printk_index", align 4
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@snic_reset_stats_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.23, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013snic:SNIC BUG(%s) at %s : %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snic_reset_stats_open\00", [42 x i8] zeroinitializer }, align 32
@snic_reset_stats_open._entry_ptr = internal global ptr @snic_reset_stats_open._entry, section ".printk_index", align 4
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"!inode->i_private\00", [46 x i8] zeroinitializer }, align 32
@snic_reset_stats_open.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_trc_sops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @snic_trc_seq_start, ptr @snic_trc_seq_stop, ptr @snic_trc_seq_next, ptr @snic_trc_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 35, i32 43 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 37, i32 45 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 360, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 364, i32 41 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"snic_stats_fops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 337, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 368, i32 47 }
@___asan_gen_.51 = private unnamed_addr constant [22 x i8] c"snic_reset_stats_fops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 339, i32 37 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 441, i32 22 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 444, i32 22 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"snic_trc_fops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 431, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 189, i32 6 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 195, i32 6 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 225, i32 16 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 229, i32 7 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 233, i32 18 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 238, i32 6 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 243, i32 6 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 258, i32 6 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 263, i32 6 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 272, i32 6 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 277, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 291, i32 6 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 299, i32 6 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 95, i32 21 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 162, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 156, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 64, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [14 x i8] c"snic_trc_sops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 424, i32 36 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [36 x i8] c"../drivers/scsi/snic/snic_debugfs.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 419, i32 19 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @snic_reset_stats_open._entry, ptr @snic_reset_stats_open._entry_ptr, ptr @snic_reset_stats_write._entry, ptr @snic_reset_stats_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @snic_stats_fops, ptr @.str.4, ptr @snic_reset_stats_fops, ptr @.str.5, ptr @.str.6, ptr @snic_trc_fops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @snic_trc_sops, ptr @.str.32], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_stats_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_reset_stats_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_trc_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 509, i32 608, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 211, i32 256, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 191, i32 224, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 589, i32 736, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_reset_stats_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_reset_stats_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_trc_sops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_debugfs_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %0 = load ptr, ptr @snic_glob, align 4
  %trc_root = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %trc_root to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %trc_root, align 4
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef %call) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %2 = load ptr, ptr @snic_glob, align 4
  %stats_root = getelementptr inbounds %struct.snic_global, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %stats_root to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %stats_root, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_debugfs_term() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %0 = load ptr, ptr @snic_glob, align 4
  %stats_root = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %stats_root to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stats_root, align 8
  tail call void @debugfs_remove(ptr noundef %2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %3 = load ptr, ptr @snic_glob, align 4
  %stats_root1 = getelementptr inbounds %struct.snic_global, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %stats_root1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %stats_root1, align 8
  %trc_root = getelementptr inbounds %struct.snic_global, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %trc_root to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trc_root, align 4
  tail call void @debugfs_remove(ptr noundef %6) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %7 = load ptr, ptr @snic_glob, align 4
  %trc_root2 = getelementptr inbounds %struct.snic_global, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %trc_root2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %trc_root2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_stats_debugfs_init(ptr noundef %snic) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #9
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %0 = call ptr @memset(ptr %name, i32 255, i32 16)
  %1 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %shost, align 16
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %host_no, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %4)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %5 = load ptr, ptr @snic_glob, align 4
  %stats_root = getelementptr inbounds %struct.snic_global, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %stats_root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stats_root, align 8
  %call2 = call ptr @debugfs_create_dir(ptr noundef nonnull %name, ptr noundef %7) #9
  %stats_host = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 37
  %8 = ptrtoint ptr %stats_host to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %stats_host, align 8
  %call4 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext -32476, ptr noundef %call2, ptr noundef %snic, ptr noundef nonnull @snic_stats_fops) #9
  %stats_file = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 38
  %9 = ptrtoint ptr %stats_file to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call4, ptr %stats_file, align 4
  %10 = ptrtoint ptr %stats_host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stats_host, align 8
  %call6 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext -32348, ptr noundef %11, ptr noundef %snic, ptr noundef nonnull @snic_reset_stats_fops) #9
  %reset_stats_file = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 39
  %12 = ptrtoint ptr %reset_stats_file to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call6, ptr %reset_stats_file, align 64
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_stats_debugfs_remove(ptr nocapture noundef %snic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stats_file = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 38
  %0 = ptrtoint ptr %stats_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats_file, align 4
  tail call void @debugfs_remove(ptr noundef %1) #9
  %2 = ptrtoint ptr %stats_file to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %stats_file, align 4
  %reset_stats_file = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 39
  %3 = ptrtoint ptr %reset_stats_file to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reset_stats_file, align 64
  tail call void @debugfs_remove(ptr noundef %4) #9
  %5 = ptrtoint ptr %reset_stats_file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %reset_stats_file, align 64
  %stats_host = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 37
  %6 = ptrtoint ptr %stats_host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stats_host, align 8
  tail call void @debugfs_remove(ptr noundef %7) #9
  %8 = ptrtoint ptr %stats_host to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %stats_host, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_trc_debugfs_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %0 = load ptr, ptr @snic_glob, align 4
  %trc_root = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %trc_root to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %trc_root, align 4
  %enable = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 7, i32 5
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.5, i16 noundef zeroext -32348, ptr noundef %2, ptr noundef %enable) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %3 = load ptr, ptr @snic_glob, align 4
  %trc_root1 = getelementptr inbounds %struct.snic_global, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %trc_root1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trc_root1, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext -32348, ptr noundef %5, ptr noundef null, ptr noundef nonnull @snic_trc_fops) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_trc_debugfs_term() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %0 = load ptr, ptr @snic_glob, align 4
  %trc_root = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %trc_root to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %trc_root, align 4
  %call = tail call ptr @debugfs_lookup(ptr noundef nonnull @.str.6, ptr noundef %2) #9
  tail call void @debugfs_remove(ptr noundef %call) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %3 = load ptr, ptr @snic_glob, align 4
  %trc_root1 = getelementptr inbounds %struct.snic_global, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %trc_root1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trc_root1, align 4
  %call2 = tail call ptr @debugfs_lookup(ptr noundef nonnull @.str.5, ptr noundef %5) #9
  tail call void @debugfs_remove(ptr noundef %call2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snic_stats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @snic_stats_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snic_stats_show(ptr noundef %sfp, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %last_isr_tms = alloca %struct.timespec64, align 8
  %last_ack_tms = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %sfp, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %s_stats = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %last_isr_tms) #9
  %2 = call ptr @memset(ptr %last_isr_tms, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %last_ack_tms) #9
  %3 = call ptr @memset(ptr %last_ack_tms, i32 255, i32 16)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sfp, ptr noundef nonnull @.str.7) #9
  %max_time = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %max_time, i32 noundef 8) #9
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %max_time) #9
  %call.i.i160 = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_stats, i32 noundef 8) #9
  %call.i161 = tail call i64 @generic_atomic64_read(ptr noundef %s_stats) #9
  %max_active = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 0, i32 1
  %call.i.i162 = tail call zeroext i1 @__kasan_check_read(ptr noundef %max_active, i32 noundef 8) #9
  %call.i163 = tail call i64 @generic_atomic64_read(ptr noundef %max_active) #9
  %num_ios = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 0, i32 14
  %call.i.i164 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_ios, i32 noundef 8) #9
  %call.i165 = tail call i64 @generic_atomic64_read(ptr noundef %num_ios) #9
  %compl = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 0, i32 8
  %call.i.i166 = tail call zeroext i1 @__kasan_check_read(ptr noundef %compl, i32 noundef 8) #9
  %call.i167 = tail call i64 @generic_atomic64_read(ptr noundef %compl) #9
  %fail = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 0, i32 9
  %call.i.i168 = tail call zeroext i1 @__kasan_check_read(ptr noundef %fail, i32 noundef 8) #9
  %call.i169 = tail call i64 @generic_atomic64_read(ptr noundef %fail) #9
  %io_not_found = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 0, i32 13
  %call.i.i170 = tail call zeroext i1 @__kasan_check_read(ptr noundef %io_not_found, i32 noundef 8) #9
  %call.i171 = tail call i64 @generic_atomic64_read(ptr noundef %io_not_found) #9
  %alloc_fail = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 0, i32 11
  %call.i.i172 = tail call zeroext i1 @__kasan_check_read(ptr noundef %alloc_fail, i32 noundef 8) #9
  %call.i173 = tail call i64 @generic_atomic64_read(ptr noundef %alloc_fail) #9
  %req_null = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 0, i32 10
  %call.i.i174 = tail call zeroext i1 @__kasan_check_read(ptr noundef %req_null, i32 noundef 8) #9
  %call.i175 = tail call i64 @generic_atomic64_read(ptr noundef %req_null) #9
  %sc_null = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 0, i32 12
  %call.i.i176 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sc_null, i32 noundef 8) #9
  %call.i177 = tail call i64 @generic_atomic64_read(ptr noundef %sc_null) #9
  %max_sgl = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 0, i32 2
  %call.i.i178 = tail call zeroext i1 @__kasan_check_read(ptr noundef %max_sgl, i32 noundef 8) #9
  %call.i179 = tail call i64 @generic_atomic64_read(ptr noundef %max_sgl) #9
  %max_io_sz = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 0, i32 7
  %call.i.i180 = tail call zeroext i1 @__kasan_check_read(ptr noundef %max_io_sz, i32 noundef 8) #9
  %call.i181 = tail call i64 @generic_atomic64_read(ptr noundef %max_io_sz) #9
  %max_qtime = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 0, i32 4
  %call.i.i182 = tail call zeroext i1 @__kasan_check_read(ptr noundef %max_qtime, i32 noundef 8) #9
  %call.i183 = tail call i64 @generic_atomic64_read(ptr noundef %max_qtime) #9
  %max_cmpl_time = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 0, i32 5
  %call.i.i184 = tail call zeroext i1 @__kasan_check_read(ptr noundef %max_cmpl_time, i32 noundef 8) #9
  %call.i185 = tail call i64 @generic_atomic64_read(ptr noundef %max_cmpl_time) #9
  %conv = trunc i64 %call.i to i32
  %call27 = tail call i32 @jiffies_to_msecs(i32 noundef %conv) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sfp, ptr noundef nonnull @.str.8, i64 noundef %call.i161, i64 noundef %call.i163, i64 noundef %call.i165, i64 noundef %call.i167, i64 noundef %call.i169, i64 noundef %call.i171, i64 noundef %call.i173, i64 noundef %call.i175, i64 noundef %call.i177, i64 noundef %call.i179, i64 noundef %call.i181, i64 noundef %call.i183, i64 noundef %call.i185, i64 noundef %call.i, i32 noundef %call27) #9
  tail call void @seq_puts(ptr noundef %sfp, ptr noundef nonnull @.str.9) #9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0244 = phi i32 [ 0, %entry ], [ %add, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snic, ptr %1, i32 0, i32 36, i32 0, i32 6, i32 %i.0244
  %call.i.i186 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 8) #9
  %call.i187 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sfp, ptr noundef nonnull @.str.10, i64 noundef %call.i187) #9
  %add = add nuw nsw i32 %i.0244, 1
  %4 = and i32 %add, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp31 = icmp eq i32 %4, 0
  br i1 %cmp31, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %sfp, ptr noundef nonnull @.str.11) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %exitcond.not = icmp eq i32 %add, 60
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sfp, ptr noundef nonnull @.str.12) #9
  %abts = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 1
  %call.i.i188 = tail call zeroext i1 @__kasan_check_read(ptr noundef %abts, i32 noundef 8) #9
  %call.i189 = tail call i64 @generic_atomic64_read(ptr noundef %abts) #9
  %fail35 = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 1, i32 1
  %call.i.i190 = tail call zeroext i1 @__kasan_check_read(ptr noundef %fail35, i32 noundef 8) #9
  %call.i191 = tail call i64 @generic_atomic64_read(ptr noundef %fail35) #9
  %drv_tmo = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 1, i32 2
  %call.i.i192 = tail call zeroext i1 @__kasan_check_read(ptr noundef %drv_tmo, i32 noundef 8) #9
  %call.i193 = tail call i64 @generic_atomic64_read(ptr noundef %drv_tmo) #9
  %fw_tmo = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 1, i32 3
  %call.i.i194 = tail call zeroext i1 @__kasan_check_read(ptr noundef %fw_tmo, i32 noundef 8) #9
  %call.i195 = tail call i64 @generic_atomic64_read(ptr noundef %fw_tmo) #9
  %io_not_found42 = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 1, i32 4
  %call.i.i196 = tail call zeroext i1 @__kasan_check_read(ptr noundef %io_not_found42, i32 noundef 8) #9
  %call.i197 = tail call i64 @generic_atomic64_read(ptr noundef %io_not_found42) #9
  %q_fail = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 1, i32 5
  %call.i.i198 = tail call zeroext i1 @__kasan_check_read(ptr noundef %q_fail, i32 noundef 8) #9
  %call.i199 = tail call i64 @generic_atomic64_read(ptr noundef %q_fail) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sfp, ptr noundef nonnull @.str.13, i64 noundef %call.i189, i64 noundef %call.i191, i64 noundef %call.i193, i64 noundef %call.i195, i64 noundef %call.i197, i64 noundef %call.i199) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sfp, ptr noundef nonnull @.str.14) #9
  %hba_resets = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 2, i32 5
  %call.i.i200 = tail call zeroext i1 @__kasan_check_read(ptr noundef %hba_resets, i32 noundef 8) #9
  %call.i201 = tail call i64 @generic_atomic64_read(ptr noundef %hba_resets) #9
  %hba_reset_cmpl = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 2, i32 6
  %call.i.i202 = tail call zeroext i1 @__kasan_check_read(ptr noundef %hba_reset_cmpl, i32 noundef 8) #9
  %call.i203 = tail call i64 @generic_atomic64_read(ptr noundef %hba_reset_cmpl) #9
  %hba_reset_fail = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 2, i32 7
  %call.i.i204 = tail call zeroext i1 @__kasan_check_read(ptr noundef %hba_reset_fail, i32 noundef 8) #9
  %call.i205 = tail call i64 @generic_atomic64_read(ptr noundef %hba_reset_fail) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sfp, ptr noundef nonnull @.str.15, i64 noundef %call.i201, i64 noundef %call.i203, i64 noundef %call.i205) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sfp, ptr noundef nonnull @.str.16) #9
  %fw = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 3
  %call.i.i206 = tail call zeroext i1 @__kasan_check_read(ptr noundef %fw, i32 noundef 8) #9
  %call.i207 = tail call i64 @generic_atomic64_read(ptr noundef %fw) #9
  %max_actv_reqs = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 3, i32 1
  %call.i.i208 = tail call zeroext i1 @__kasan_check_read(ptr noundef %max_actv_reqs, i32 noundef 8) #9
  %call.i209 = tail call i64 @generic_atomic64_read(ptr noundef %max_actv_reqs) #9
  %out_of_res = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 3, i32 2
  %call.i.i210 = tail call zeroext i1 @__kasan_check_read(ptr noundef %out_of_res, i32 noundef 8) #9
  %call.i211 = tail call i64 @generic_atomic64_read(ptr noundef %out_of_res) #9
  %io_errs = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 3, i32 3
  %call.i.i212 = tail call zeroext i1 @__kasan_check_read(ptr noundef %io_errs, i32 noundef 8) #9
  %call.i213 = tail call i64 @generic_atomic64_read(ptr noundef %io_errs) #9
  %scsi_errs = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 3, i32 4
  %call.i.i214 = tail call zeroext i1 @__kasan_check_read(ptr noundef %scsi_errs, i32 noundef 8) #9
  %call.i215 = tail call i64 @generic_atomic64_read(ptr noundef %scsi_errs) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sfp, ptr noundef nonnull @.str.17, i64 noundef %call.i207, i64 noundef %call.i209, i64 noundef %call.i211, i64 noundef %call.i213, i64 noundef %call.i215) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sfp, ptr noundef nonnull @.str.18) #9
  %misc = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 4
  %5 = ptrtoint ptr %misc to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %misc, align 8
  %conv60 = trunc i64 %6 to i32
  call void @jiffies_to_timespec64(i32 noundef %conv60, ptr noundef nonnull %last_isr_tms) #9
  %last_ack_time = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 4, i32 1
  %7 = ptrtoint ptr %last_ack_time to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %last_ack_time, align 8
  %conv62 = trunc i64 %8 to i32
  call void @jiffies_to_timespec64(i32 noundef %conv62, ptr noundef nonnull %last_ack_tms) #9
  %9 = ptrtoint ptr %misc to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %misc, align 8
  %11 = ptrtoint ptr %last_isr_tms to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %last_isr_tms, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %last_isr_tms, i32 0, i32 1
  %13 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tv_nsec, align 8
  %15 = ptrtoint ptr %last_ack_time to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %last_ack_time, align 8
  %17 = ptrtoint ptr %last_ack_tms to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %last_ack_tms, align 8
  %tv_nsec68 = getelementptr inbounds %struct.timespec64, ptr %last_ack_tms, i32 0, i32 1
  %19 = ptrtoint ptr %tv_nsec68 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tv_nsec68, align 8
  %ack_isr_cnt = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 4, i32 2
  %call.i.i216 = call zeroext i1 @__kasan_check_read(ptr noundef %ack_isr_cnt, i32 noundef 8) #9
  %call.i217 = call i64 @generic_atomic64_read(ptr noundef %ack_isr_cnt) #9
  %cmpl_isr_cnt = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 4, i32 3
  %call.i.i218 = call zeroext i1 @__kasan_check_read(ptr noundef %cmpl_isr_cnt, i32 noundef 8) #9
  %call.i219 = call i64 @generic_atomic64_read(ptr noundef %cmpl_isr_cnt) #9
  %errnotify_isr_cnt = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 4, i32 4
  %call.i.i220 = call zeroext i1 @__kasan_check_read(ptr noundef %errnotify_isr_cnt, i32 noundef 8) #9
  %call.i221 = call i64 @generic_atomic64_read(ptr noundef %errnotify_isr_cnt) #9
  %max_cq_ents = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 4, i32 5
  %call.i.i222 = call zeroext i1 @__kasan_check_read(ptr noundef %max_cq_ents, i32 noundef 8) #9
  %call.i223 = call i64 @generic_atomic64_read(ptr noundef %max_cq_ents) #9
  %data_cnt_mismat = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 4, i32 6
  %call.i.i224 = call zeroext i1 @__kasan_check_read(ptr noundef %data_cnt_mismat, i32 noundef 8) #9
  %call.i225 = call i64 @generic_atomic64_read(ptr noundef %data_cnt_mismat) #9
  %io_tmo = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 4, i32 7
  %call.i.i226 = call zeroext i1 @__kasan_check_read(ptr noundef %io_tmo, i32 noundef 8) #9
  %call.i227 = call i64 @generic_atomic64_read(ptr noundef %io_tmo) #9
  %io_aborted = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 4, i32 8
  %call.i.i228 = call zeroext i1 @__kasan_check_read(ptr noundef %io_aborted, i32 noundef 8) #9
  %call.i229 = call i64 @generic_atomic64_read(ptr noundef %io_aborted) #9
  %sgl_inval = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 4, i32 9
  %call.i.i230 = call zeroext i1 @__kasan_check_read(ptr noundef %sgl_inval, i32 noundef 8) #9
  %call.i231 = call i64 @generic_atomic64_read(ptr noundef %sgl_inval) #9
  %wq_alloc_fail = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 4, i32 12
  %call.i.i232 = call zeroext i1 @__kasan_check_read(ptr noundef %wq_alloc_fail, i32 noundef 8) #9
  %call.i233 = call i64 @generic_atomic64_read(ptr noundef %wq_alloc_fail) #9
  %qfull = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 4, i32 15
  %call.i.i234 = call zeroext i1 @__kasan_check_read(ptr noundef %qfull, i32 noundef 8) #9
  %call.i235 = call i64 @generic_atomic64_read(ptr noundef %qfull) #9
  %qsz_rampup = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 4, i32 16
  %call.i.i236 = call zeroext i1 @__kasan_check_read(ptr noundef %qsz_rampup, i32 noundef 8) #9
  %call.i237 = call i64 @generic_atomic64_read(ptr noundef %qsz_rampup) #9
  %qsz_rampdown = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 4, i32 17
  %call.i.i238 = call zeroext i1 @__kasan_check_read(ptr noundef %qsz_rampdown, i32 noundef 8) #9
  %call.i239 = call i64 @generic_atomic64_read(ptr noundef %qsz_rampdown) #9
  %last_qsz = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 4, i32 18
  %call.i.i240 = call zeroext i1 @__kasan_check_read(ptr noundef %last_qsz, i32 noundef 8) #9
  %call.i241 = call i64 @generic_atomic64_read(ptr noundef %last_qsz) #9
  %tgt_not_rdy = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36, i32 4, i32 19
  %call.i.i242 = call zeroext i1 @__kasan_check_read(ptr noundef %tgt_not_rdy, i32 noundef 8) #9
  %call.i243 = call i64 @generic_atomic64_read(ptr noundef %tgt_not_rdy) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %sfp, ptr noundef nonnull @.str.19, i64 noundef %10, i64 noundef %12, i32 noundef %14, i64 noundef %16, i64 noundef %18, i32 noundef %20, i64 noundef %call.i217, i64 noundef %call.i219, i64 noundef %call.i221, i64 noundef %call.i223, i64 noundef %call.i225, i64 noundef %call.i227, i64 noundef %call.i229, i64 noundef %call.i231, i64 noundef %call.i233, i64 noundef %call.i235, i64 noundef %call.i237, i64 noundef %call.i239, i64 noundef %call.i241, i64 noundef %call.i243) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %last_ack_tms) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %last_isr_tms) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jiffies_to_timespec64(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snic_reset_stats_read(ptr nocapture noundef readonly %filp, ptr noundef %ubuf, i32 noundef %cnt, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 255, i32 64)
  %reset_stats = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 34
  %3 = ptrtoint ptr %reset_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reset_stats, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.20, i32 noundef %4)
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %cnt, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snic_reset_stats_write(ptr nocapture noundef readonly %filp, ptr noundef %ubuf, i32 noundef %cnt, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %s_stats = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %cnt)
  %cmp = icmp ugt i32 %cnt, 63
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.then.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %entry
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %cnt, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %cnt, i32 -1226833920) #12, !srcloc !85
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !86

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %cnt) #9
  %5 = call i32 @llvm.read_register.i32(metadata !74) #9
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !87
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !88
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %ubuf, i32 noundef %cnt) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #9, !srcloc !88
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %cnt, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %cnt, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.then11.i.i, !prof !86

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %cnt, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr [64 x i8], ptr %buf, i32 0, i32 %cnt
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx, align 1
  %call.i35 = call i32 @_kstrtoul(ptr noundef nonnull %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp4 = icmp slt i32 %call.i35, 0
  br i1 %cmp4, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %reset_stats = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 34
  %12 = ptrtoint ptr %reset_stats to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %reset_stats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %if.end6.if.end13_crit_edge, label %if.then9

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %io_cmpl_skip = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 35
  %call.i.i33 = call zeroext i1 @__kasan_check_read(ptr noundef %s_stats, i32 noundef 8) #9
  %call.i = call i64 @generic_atomic64_read(ptr noundef %s_stats) #9
  %call.i.i34 = call zeroext i1 @__kasan_check_write(ptr noundef %io_cmpl_skip, i32 noundef 8) #9
  call void @generic_atomic64_set(ptr noundef %io_cmpl_skip, i64 noundef %call.i) #9
  %add.ptr = getelementptr %struct.snic, ptr %1, i32 0, i32 36, i32 0, i32 1
  %add.ptr12 = getelementptr %struct.snic, ptr %1, i32 0, i32 36, i32 3, i32 1
  %13 = call ptr @memset(ptr %add.ptr, i32 0, i32 720)
  %14 = call ptr @memset(ptr %add.ptr12, i32 0, i32 192)
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end6.if.end13_crit_edge
  %15 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ppos, align 8
  %inc = add i64 %16, 1
  store i64 %inc, ptr %ppos, align 8
  %shost = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %18, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.24, ptr noundef %shost_gendev, ptr noundef nonnull @.str.21) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end2.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cnt, %if.end13 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i35, %if.end2.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snic_reset_stats_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %entry.if.end43_crit_edge

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef 64) #13
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.rhs, label %do.end.if.end43_crit_edge

do.end.if.end43_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

land.rhs:                                         ; preds = %do.end
  %.b49 = load i1, ptr @snic_reset_stats_open.__already_done, align 1
  br i1 %.b49, label %land.rhs.if.end43_crit_edge, label %if.then11, !prof !86

land.rhs.if.end43_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @snic_reset_stats_open.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 64, i32 noundef 9, ptr noundef null) #9
  br label %if.end43

if.end43:                                         ; preds = %if.then11, %land.rhs.if.end43_crit_edge, %do.end.if.end43_crit_edge, %entry.if.end43_crit_edge
  %4 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snic_reset_stats_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef writeonly %filp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

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
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snic_trc_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @snic_trc_sops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %private, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @snic_trc_seq_start(ptr nocapture noundef readnone %sfp, ptr nocapture noundef readnone %pos) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %0 = load ptr, ptr @snic_glob, align 4
  %trc = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 7
  ret ptr %trc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snic_trc_seq_stop(ptr nocapture noundef %sfp, ptr nocapture noundef %data) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @snic_trc_seq_next(ptr nocapture noundef readnone %sfp, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %pos) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snic_trc_seq_show(ptr noundef %sfp, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #9
  %0 = call ptr @memset(ptr %buf, i32 255, i32 256)
  %call = call i32 @snic_get_trc_data(ptr noundef nonnull %buf, i32 noundef 256) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %sfp, ptr noundef nonnull @.str.32, ptr noundef nonnull %buf) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snic_get_trc_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !52, !53, !54, !56, !57, !59, !61, !63, !64, !65, !66, !67, !68, !70, !72}
!llvm.named.register.sp = !{!74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 35, i32 43}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 37, i32 45}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 360, i32 31}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 364, i32 41}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 368, i32 47}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 441, i32 22}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 444, i32 22}
!14 = !{ptr @snic_stats_fops, !15, !"snic_stats_fops", i1 false, i1 false}
!15 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 337, i32 1}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 189, i32 6}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 195, i32 6}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 225, i32 16}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 229, i32 7}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 233, i32 18}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 238, i32 6}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 243, i32 6}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 258, i32 6}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 263, i32 6}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 272, i32 6}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 277, i32 3}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 291, i32 6}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 299, i32 6}
!42 = !{ptr @snic_reset_stats_fops, !43, !"snic_reset_stats_fops", i1 false, i1 false}
!43 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 339, i32 37}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 95, i32 21}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 162, i32 2}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @snic_reset_stats_write._entry, !47, !"_entry", i1 false, i1 false}
!53 = !{ptr @snic_reset_stats_write._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!56 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 64, i32 2}
!63 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @snic_reset_stats_open._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @snic_reset_stats_open._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!68 = !{ptr @snic_trc_fops, !69, !"snic_trc_fops", i1 false, i1 false}
!69 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 431, i32 1}
!70 = !{ptr @snic_trc_sops, !71, !"snic_trc_sops", i1 false, i1 false}
!71 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 424, i32 36}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/snic/snic_debugfs.c", i32 419, i32 19}
!74 = !{!"sp"}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"auto-init"}
!85 = !{i64 2152427695, i64 2152427720}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i64 4923250}
!88 = !{i64 4923447}
!89 = !{i64 2152408680}
