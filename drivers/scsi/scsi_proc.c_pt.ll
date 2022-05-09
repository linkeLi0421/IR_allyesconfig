; ModuleID = '/llk/IR_all_yes/drivers/scsi/scsi_proc.c_pt.bc'
source_filename = "../drivers/scsi/scsi_proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.82 = type { ptr }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
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
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.scsi_transport_template = type { %struct.transport_container, %struct.transport_container, %struct.transport_container, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.transport_container = type { %struct.attribute_container, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }

@global_host_template_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @global_host_template_mutex, i64 52), ptr getelementptr (i8, ptr @global_host_template_mutex, i64 52) }, ptr @global_host_template_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@proc_scsi = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@scsi_proc_hostdir_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: proc_mkdir failed for %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"scsi_proc_hostdir_add\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/scsi/scsi_proc.c\00", [39 x i8] zeroinitializer }, align 32
@scsi_proc_hostdir_add._entry_ptr = internal global ptr @scsi_proc_hostdir_add._entry, section ".printk_index", align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@proc_scsi_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @proc_scsi_host_open, ptr @seq_read, ptr null, ptr @proc_scsi_host_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@scsi_proc_host_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register host %d in%s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"scsi_proc_host_add\00", [45 x i8] zeroinitializer }, align 32
@scsi_proc_host_add._entry_ptr = internal global ptr @scsi_proc_host_add._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"scsi\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"scsi/scsi\00", [22 x i8] zeroinitializer }, align 32
@scsi_scsi_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @proc_scsi_open, ptr @seq_read, ptr null, ptr @proc_scsi_write, ptr @seq_lseek, ptr @seq_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"global_host_template_mutex.wait_lock\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"global_host_template_mutex\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@scsi_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @scsi_seq_start, ptr @scsi_seq_stop, ptr @scsi_seq_next, ptr @scsi_seq_show }, [16 x i8] zeroinitializer }, align 32
@scsi_bus_type = external dso_local global %struct.bus_type, align 4
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Attached devices:\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Host: scsi%d Channel: %02d Id: %02d Lun: %02llu\0A  Vendor: \00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" Model: \00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" Rev: \00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  Type:   %s \00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"               ANSI  SCSI revision: %02x\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" CCS\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"scsi add-single-device\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"scsi remove-single-device\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"global_host_template_mutex\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [10 x i8] c"proc_scsi\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 44, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 110, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 147, i32 15 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"proc_scsi_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 86, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 151, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 454, i32 25 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 458, i32 20 }
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c"scsi_scsi_proc_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 439, i32 30 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 47, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 230, i32 6 }
@___asan_gen_.74 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 214, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 156, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [13 x i8] c"scsi_seq_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 416, i32 36 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 411, i32 19 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 189, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 198, i32 14 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 206, i32 14 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 216, i32 16 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 217, i32 16 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 220, i32 15 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 338, i32 15 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [28 x i8] c"../drivers/scsi/scsi_proc.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 352, i32 22 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @scsi_proc_host_add._entry, ptr @scsi_proc_host_add._entry_ptr, ptr @scsi_proc_hostdir_add._entry, ptr @scsi_proc_hostdir_add._entry_ptr, ptr @global_host_template_mutex, ptr @proc_scsi, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @proc_scsi_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @scsi_scsi_proc_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @scsi_seq_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_host_template_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_scsi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_proc_hostdir_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_scsi_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_proc_host_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_scsi_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_proc_hostdir_add(ptr nocapture noundef %sht) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %show_info = getelementptr inbounds %struct.scsi_host_template, ptr %sht, i32 0, i32 27
  %0 = ptrtoint ptr %show_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show_info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @global_host_template_mutex, i32 noundef 0) #9
  %present = getelementptr inbounds %struct.scsi_host_template, ptr %sht, i32 0, i32 43
  %2 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %present, align 2
  %inc = add i8 %3, 1
  store i8 %inc, ptr %present, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2:                                         ; preds = %if.end
  %proc_name = getelementptr inbounds %struct.scsi_host_template, ptr %sht, i32 0, i32 32
  %4 = ptrtoint ptr %proc_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proc_name, align 8
  %6 = load ptr, ptr @proc_scsi, align 4
  %call = tail call ptr @proc_mkdir(ptr noundef %5, ptr noundef %6) #9
  %proc_dir = getelementptr inbounds %struct.scsi_host_template, ptr %sht, i32 0, i32 33
  %7 = ptrtoint ptr %proc_dir to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %proc_dir, align 4
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %do.end, label %if.then2.if.end9_crit_edge

if.then2.if.end9_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %proc_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %proc_name, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %9) #12
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.then2.if.end9_crit_edge, %if.end.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @global_host_template_mutex) #9
  br label %return

return:                                           ; preds = %if.end9, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_proc_hostdir_rm(ptr nocapture noundef %sht) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %show_info = getelementptr inbounds %struct.scsi_host_template, ptr %sht, i32 0, i32 27
  %0 = ptrtoint ptr %show_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show_info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @global_host_template_mutex, i32 noundef 0) #9
  %present = getelementptr inbounds %struct.scsi_host_template, ptr %sht, i32 0, i32 43
  %2 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %present, align 2
  %dec = add i8 %3, -1
  store i8 %dec, ptr %present, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool1.not = icmp eq i8 %dec, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %proc_dir = getelementptr inbounds %struct.scsi_host_template, ptr %sht, i32 0, i32 33
  %4 = ptrtoint ptr %proc_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proc_dir, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end5_crit_edge, label %if.then3

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %proc_name = getelementptr inbounds %struct.scsi_host_template, ptr %sht, i32 0, i32 32
  %6 = ptrtoint ptr %proc_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %proc_name, align 8
  %8 = load ptr, ptr @proc_scsi, align 4
  tail call void @remove_proc_entry(ptr noundef %7, ptr noundef %8) #9
  %9 = ptrtoint ptr %proc_dir to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %proc_dir, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @global_host_template_mutex) #9
  br label %return

return:                                           ; preds = %if.end5, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_proc_host_add(ptr noundef %shost) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 11
  %0 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostt, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %name) #9
  %proc_dir = getelementptr inbounds %struct.scsi_host_template, ptr %1, i32 0, i32 33
  %2 = call ptr @memset(ptr %name, i32 255, i32 10)
  %3 = ptrtoint ptr %proc_dir to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %proc_dir, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 17
  %5 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %host_no, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.3, i32 noundef %6)
  %7 = ptrtoint ptr %proc_dir to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %proc_dir, align 4
  %call3 = call ptr @proc_create_data(ptr noundef nonnull %name, i16 noundef zeroext 420, ptr noundef %8, ptr noundef nonnull @proc_scsi_ops, ptr noundef %shost) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %host_no, align 4
  %proc_name = getelementptr inbounds %struct.scsi_host_template, ptr %1, i32 0, i32 32
  %11 = ptrtoint ptr %proc_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %proc_name, align 8
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %10, ptr noundef %12) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %name) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_proc_host_rm(ptr nocapture noundef readonly %shost) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %name) #9
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 11
  %0 = call ptr @memset(ptr %name, i32 255, i32 10)
  %1 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hostt, align 8
  %proc_dir = getelementptr inbounds %struct.scsi_host_template, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %proc_dir to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %proc_dir, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 17
  %5 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %host_no, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.3, i32 noundef %6)
  %7 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hostt, align 8
  %proc_dir3 = getelementptr inbounds %struct.scsi_host_template, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %proc_dir3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %proc_dir3, align 4
  call void @remove_proc_entry(ptr noundef nonnull %name, ptr noundef %10) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %name) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_init_procfs() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.6, ptr noundef null) #9
  store ptr %call, ptr @proc_scsi, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @proc_create(ptr noundef nonnull @.str.7, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @scsi_scsi_proc_ops) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %err2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err2:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.6, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %err2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %err2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_exit_procfs() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.7, ptr noundef null) #9
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.6, ptr noundef null) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_scsi_host_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %call1 = tail call i32 @single_open_size(ptr noundef %file, ptr noundef nonnull @proc_scsi_show, ptr noundef %1, i32 noundef 16384) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_scsi_host_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %count)
  %cmp = icmp ugt i32 %count, 3072
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostt, align 8
  %write_info = getelementptr inbounds %struct.scsi_host_template, ptr %5, i32 0, i32 28
  %6 = ptrtoint ptr %write_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_info, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %8 = inttoptr i32 %call4 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.out_crit_edge, label %if.then.i.i.i

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.i.i.i:                                    ; preds = %if.end3
  tail call void @__check_object_size(ptr noundef nonnull %8, i32 noundef %count, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #13, !srcloc !64
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !65

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %8, i32 noundef %count) #9
  %10 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !66
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !68
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %buf, i32 noundef %count) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !68
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end10, label %if.then11.i.i, !prof !65

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out

if.end10:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hostt, align 8
  %write_info12 = getelementptr inbounds %struct.scsi_host_template, ptr %15, i32 0, i32 28
  %16 = ptrtoint ptr %write_info12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_info12, align 8
  %call13 = tail call i32 %17(ptr noundef %3, ptr noundef nonnull %8, i32 noundef %count) #9
  br label %out

out:                                              ; preds = %if.end10, %if.then11.i.i, %if.end3.out_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end10 ], [ -12, %if.end3.out_crit_edge ], [ -14, %if.then11.i.i ]
  tail call void @free_pages(i32 noundef %call4, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -75, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open_size(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_scsi_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostt, align 8
  %show_info = getelementptr inbounds %struct.scsi_host_template, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %show_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %show_info, align 4
  %call = tail call i32 %5(ptr noundef %m, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_scsi_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @scsi_seq_ops) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_scsi_write(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %length, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #9
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %p, align 4, !annotation !69
  %tobool.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %length)
  %cmp = icmp ugt i32 %length, 4096
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %1 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then.i.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  tail call void @__check_object_size(ptr noundef nonnull %1, i32 noundef %length, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %buf, i32 %length, i32 -1226833920) #13, !srcloc !64
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !65

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef %length) #9
  %3 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !66
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !68
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %1, ptr noundef nonnull %buf, i32 noundef %length) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #9, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !68
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %length, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %length, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.then11.i.i, !prof !65

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %length, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out

if.end7:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %length)
  %cmp8 = icmp ult i32 %length, 4096
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr i8, ptr %1, i32 %length
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end14

if.else:                                          ; preds = %if.end7
  %arrayidx10 = getelementptr i8, ptr %1, i32 4095
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool11.not = icmp eq i8 %9, 0
  br i1 %tobool11.not, label %if.else.if.end14_crit_edge, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.then9
  %call15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(23) @.str.20, ptr noundef nonnull %1, i32 noundef 22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.else26

if.then17:                                        ; preds = %if.end14
  %add.ptr = getelementptr i8, ptr %1, i32 23
  %10 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %p, align 4
  %call18 = call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef nonnull %p, i32 noundef 0) #9
  %11 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p, align 4
  %add.ptr19 = getelementptr i8, ptr %12, i32 1
  %call20 = call i32 @simple_strtoul(ptr noundef %add.ptr19, ptr noundef nonnull %p, i32 noundef 0) #9
  %13 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p, align 4
  %add.ptr21 = getelementptr i8, ptr %14, i32 1
  %call22 = call i32 @simple_strtoul(ptr noundef %add.ptr21, ptr noundef nonnull %p, i32 noundef 0) #9
  %15 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p, align 4
  %add.ptr23 = getelementptr i8, ptr %16, i32 1
  %call24 = call i32 @simple_strtoul(ptr noundef %add.ptr23, ptr noundef nonnull %p, i32 noundef 0) #9
  %conv.i = trunc i32 %call18 to i16
  %call.i = call ptr @scsi_host_lookup(i16 noundef zeroext %conv.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then17.out_crit_edge, label %if.end.i

if.then17.out_crit_edge:                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i:                                         ; preds = %if.then17
  %transportt.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 0, i32 12
  %17 = ptrtoint ptr %transportt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %transportt.i, align 4
  %user_scan.i = getelementptr inbounds %struct.scsi_transport_template, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %user_scan.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %user_scan.i, align 4
  %tobool1.not.i = icmp eq ptr %20, null
  %conv7.i = zext i32 %call24 to i64
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i = call i32 %20(ptr noundef nonnull %call.i, i32 noundef %call20, i32 noundef %call22, i64 noundef %conv7.i) #9
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = call i32 @scsi_scan_host_selected(ptr noundef nonnull %call.i, i32 noundef %call20, i32 noundef %call22, i64 noundef %conv7.i, i32 noundef 2) #9
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %if.then2.i
  %error.0.i = phi i32 [ %call6.i, %if.then2.i ], [ %call8.i, %if.else.i ]
  call void @scsi_host_put(ptr noundef nonnull %call.i) #9
  br label %if.end40

if.else26:                                        ; preds = %if.end14
  %call27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(26) @.str.21, ptr noundef nonnull %1, i32 noundef 25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.else26.out_crit_edge

if.else26.out_crit_edge:                          ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then29:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr30 = getelementptr i8, ptr %1, i32 26
  %21 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr30, ptr %p, align 4
  %call31 = call i32 @simple_strtoul(ptr noundef %add.ptr30, ptr noundef nonnull %p, i32 noundef 0) #9
  %22 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p, align 4
  %add.ptr32 = getelementptr i8, ptr %23, i32 1
  %call33 = call i32 @simple_strtoul(ptr noundef %add.ptr32, ptr noundef nonnull %p, i32 noundef 0) #9
  %24 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p, align 4
  %add.ptr34 = getelementptr i8, ptr %25, i32 1
  %call35 = call i32 @simple_strtoul(ptr noundef %add.ptr34, ptr noundef nonnull %p, i32 noundef 0) #9
  %26 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p, align 4
  %add.ptr36 = getelementptr i8, ptr %27, i32 1
  %call37 = call i32 @simple_strtoul(ptr noundef %add.ptr36, ptr noundef nonnull %p, i32 noundef 0) #9
  %call38 = call fastcc i32 @scsi_remove_single_device(i32 noundef %call31, i32 noundef %call33, i32 noundef %call35, i32 noundef %call37)
  br label %if.end40

if.end40:                                         ; preds = %if.then29, %if.end9.i
  %err.0 = phi i32 [ %call38, %if.then29 ], [ %error.0.i, %if.end9.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool41.not = icmp eq i32 %err.0, 0
  %spec.select = select i1 %tobool41.not, i32 %length, i32 %err.0
  br label %out

out:                                              ; preds = %if.end40, %if.else26.out_crit_edge, %if.then17.out_crit_edge, %if.else.out_crit_edge, %if.then11.i.i
  %err.1 = phi i32 [ -22, %if.else.out_crit_edge ], [ -14, %if.then11.i.i ], [ -6, %if.then17.out_crit_edge ], [ -22, %if.else26.out_crit_edge ], [ %spec.select, %if.end40 ]
  call void @free_pages(i32 noundef %call, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @scsi_seq_start(ptr nocapture noundef %sfile, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %call.i.i3 = tail call ptr @bus_find_device(ptr noundef nonnull @scsi_bus_type, ptr noundef null, ptr noundef null, ptr noundef nonnull @device_match_any) #9
  tail call void @put_device(ptr noundef null) #9
  %tobool.not4 = icmp eq ptr %call.i.i3, null
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool1.not5 = icmp eq i64 %1, 0
  %or.cond6 = select i1 %tobool.not4, i1 true, i1 %tobool1.not5
  br i1 %or.cond6, label %entry.while.end_crit_edge, label %if.end.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end.lr.ph:                                     ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %sfile, i32 0, i32 11
  br label %if.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %if.end.lr.ph
  %call.i.i8 = phi ptr [ %call.i.i3, %if.end.lr.ph ], [ %call.i.i, %if.end.if.end_crit_edge ]
  %n.07 = phi i64 [ %1, %if.end.lr.ph ], [ %dec, %if.end.if.end_crit_edge ]
  %dec = add i64 %n.07, -1
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %incdec.ptr = getelementptr i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %private, align 8
  %call.i.i = tail call ptr @bus_find_device(ptr noundef nonnull @scsi_bus_type, ptr noundef nonnull %call.i.i8, ptr noundef null, ptr noundef nonnull @device_match_any) #9
  tail call void @put_device(ptr noundef nonnull %call.i.i8) #9
  %tobool.not = icmp eq ptr %call.i.i, null
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec)
  %tobool1.not = icmp eq i64 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %if.end.while.end_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %call.i.i.lcssa = phi ptr [ %call.i.i3, %entry.while.end_crit_edge ], [ %call.i.i, %if.end.while.end_crit_edge ]
  ret ptr %call.i.i.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scsi_seq_stop(ptr nocapture noundef readnone %sfile, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @put_device(ptr noundef %v) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @scsi_seq_next(ptr nocapture noundef %sfile, ptr noundef %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %private = getelementptr inbounds %struct.seq_file, ptr %sfile, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %incdec.ptr = getelementptr i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %private, align 8
  %call.i.i = tail call ptr @bus_find_device(ptr noundef nonnull @scsi_bus_type, ptr noundef %v, ptr noundef null, ptr noundef nonnull @device_match_any) #9
  tail call void @put_device(ptr noundef %v) #9
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scsi_seq_show(ptr noundef %sfile, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %sfile, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %sfile, ptr noundef nonnull @.str.13) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call i32 @scsi_is_sdev_device(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.proc_print_scsidevice.exit_crit_edge, label %if.end.i

if.end.proc_print_scsidevice.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %proc_print_scsidevice.exit

if.end.i:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -408
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no.i, align 4
  %channel.i = getelementptr i8, ptr %dev, i32 -276
  %6 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel.i, align 4
  %id.i = getelementptr i8, ptr %dev, i32 -280
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i, align 8
  %lun.i = getelementptr i8, ptr %dev, i32 -272
  %10 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %lun.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sfile, ptr noundef nonnull @.str.14, i32 noundef %5, i32 noundef %7, i32 noundef %9, i64 noundef %11) #9
  %vendor.i = getelementptr i8, ptr %dev, i32 -148
  %12 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vendor.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %16 = tail call i8 @llvm.umax.i8(i8 %15, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %16) #9
  %17 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vendor.i, align 4
  %arrayidx.1.i = getelementptr i8, ptr %18, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.1.i, align 1
  %21 = tail call i8 @llvm.umax.i8(i8 %20, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %21) #9
  %22 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vendor.i, align 4
  %arrayidx.2.i = getelementptr i8, ptr %23, i32 2
  %24 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.2.i, align 1
  %26 = tail call i8 @llvm.umax.i8(i8 %25, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %26) #9
  %27 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vendor.i, align 4
  %arrayidx.3.i = getelementptr i8, ptr %28, i32 3
  %29 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.3.i, align 1
  %31 = tail call i8 @llvm.umax.i8(i8 %30, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %31) #9
  %32 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vendor.i, align 4
  %arrayidx.4.i = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.4.i, align 1
  %36 = tail call i8 @llvm.umax.i8(i8 %35, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %36) #9
  %37 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vendor.i, align 4
  %arrayidx.5.i = getelementptr i8, ptr %38, i32 5
  %39 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.5.i, align 1
  %41 = tail call i8 @llvm.umax.i8(i8 %40, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %41) #9
  %42 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vendor.i, align 4
  %arrayidx.6.i = getelementptr i8, ptr %43, i32 6
  %44 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.6.i, align 1
  %46 = tail call i8 @llvm.umax.i8(i8 %45, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %46) #9
  %47 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vendor.i, align 4
  %arrayidx.7.i = getelementptr i8, ptr %48, i32 7
  %49 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.7.i, align 1
  %51 = tail call i8 @llvm.umax.i8(i8 %50, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %51) #9
  tail call void @seq_puts(ptr noundef %sfile, ptr noundef nonnull @.str.15) #9
  %model.i = getelementptr i8, ptr %dev, i32 -144
  %52 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %model.i, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %53, align 1
  %56 = tail call i8 @llvm.umax.i8(i8 %55, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %56) #9
  %57 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %model.i, align 8
  %arrayidx11.i.1 = getelementptr i8, ptr %58, i32 1
  %59 = ptrtoint ptr %arrayidx11.i.1 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx11.i.1, align 1
  %61 = tail call i8 @llvm.umax.i8(i8 %60, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %61) #9
  %62 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %model.i, align 8
  %arrayidx11.i.2 = getelementptr i8, ptr %63, i32 2
  %64 = ptrtoint ptr %arrayidx11.i.2 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx11.i.2, align 1
  %66 = tail call i8 @llvm.umax.i8(i8 %65, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %66) #9
  %67 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %model.i, align 8
  %arrayidx11.i.3 = getelementptr i8, ptr %68, i32 3
  %69 = ptrtoint ptr %arrayidx11.i.3 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx11.i.3, align 1
  %71 = tail call i8 @llvm.umax.i8(i8 %70, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %71) #9
  %72 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %model.i, align 8
  %arrayidx11.i.4 = getelementptr i8, ptr %73, i32 4
  %74 = ptrtoint ptr %arrayidx11.i.4 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx11.i.4, align 1
  %76 = tail call i8 @llvm.umax.i8(i8 %75, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %76) #9
  %77 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %model.i, align 8
  %arrayidx11.i.5 = getelementptr i8, ptr %78, i32 5
  %79 = ptrtoint ptr %arrayidx11.i.5 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx11.i.5, align 1
  %81 = tail call i8 @llvm.umax.i8(i8 %80, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %81) #9
  %82 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %model.i, align 8
  %arrayidx11.i.6 = getelementptr i8, ptr %83, i32 6
  %84 = ptrtoint ptr %arrayidx11.i.6 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx11.i.6, align 1
  %86 = tail call i8 @llvm.umax.i8(i8 %85, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %86) #9
  %87 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %model.i, align 8
  %arrayidx11.i.7 = getelementptr i8, ptr %88, i32 7
  %89 = ptrtoint ptr %arrayidx11.i.7 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx11.i.7, align 1
  %91 = tail call i8 @llvm.umax.i8(i8 %90, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %91) #9
  %92 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %model.i, align 8
  %arrayidx11.i.8 = getelementptr i8, ptr %93, i32 8
  %94 = ptrtoint ptr %arrayidx11.i.8 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx11.i.8, align 1
  %96 = tail call i8 @llvm.umax.i8(i8 %95, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %96) #9
  %97 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %model.i, align 8
  %arrayidx11.i.9 = getelementptr i8, ptr %98, i32 9
  %99 = ptrtoint ptr %arrayidx11.i.9 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx11.i.9, align 1
  %101 = tail call i8 @llvm.umax.i8(i8 %100, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %101) #9
  %102 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %model.i, align 8
  %arrayidx11.i.10 = getelementptr i8, ptr %103, i32 10
  %104 = ptrtoint ptr %arrayidx11.i.10 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx11.i.10, align 1
  %106 = tail call i8 @llvm.umax.i8(i8 %105, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %106) #9
  %107 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %model.i, align 8
  %arrayidx11.i.11 = getelementptr i8, ptr %108, i32 11
  %109 = ptrtoint ptr %arrayidx11.i.11 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx11.i.11, align 1
  %111 = tail call i8 @llvm.umax.i8(i8 %110, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %111) #9
  %112 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %model.i, align 8
  %arrayidx11.i.12 = getelementptr i8, ptr %113, i32 12
  %114 = ptrtoint ptr %arrayidx11.i.12 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx11.i.12, align 1
  %116 = tail call i8 @llvm.umax.i8(i8 %115, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %116) #9
  %117 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %model.i, align 8
  %arrayidx11.i.13 = getelementptr i8, ptr %118, i32 13
  %119 = ptrtoint ptr %arrayidx11.i.13 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx11.i.13, align 1
  %121 = tail call i8 @llvm.umax.i8(i8 %120, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %121) #9
  %122 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %model.i, align 8
  %arrayidx11.i.14 = getelementptr i8, ptr %123, i32 14
  %124 = ptrtoint ptr %arrayidx11.i.14 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx11.i.14, align 1
  %126 = tail call i8 @llvm.umax.i8(i8 %125, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %126) #9
  %127 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %model.i, align 8
  %arrayidx11.i.15 = getelementptr i8, ptr %128, i32 15
  %129 = ptrtoint ptr %arrayidx11.i.15 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx11.i.15, align 1
  %131 = tail call i8 @llvm.umax.i8(i8 %130, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %131) #9
  tail call void @seq_puts(ptr noundef %sfile, ptr noundef nonnull @.str.16) #9
  %rev.i = getelementptr i8, ptr %dev, i32 -140
  %132 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rev.i, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %133, align 1
  %136 = tail call i8 @llvm.umax.i8(i8 %135, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %136) #9
  %137 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rev.i, align 4
  %arrayidx27.1.i = getelementptr i8, ptr %138, i32 1
  %139 = ptrtoint ptr %arrayidx27.1.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx27.1.i, align 1
  %141 = tail call i8 @llvm.umax.i8(i8 %140, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %141) #9
  %142 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rev.i, align 4
  %arrayidx27.2.i = getelementptr i8, ptr %143, i32 2
  %144 = ptrtoint ptr %arrayidx27.2.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx27.2.i, align 1
  %146 = tail call i8 @llvm.umax.i8(i8 %145, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %146) #9
  %147 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %rev.i, align 4
  %arrayidx27.3.i = getelementptr i8, ptr %148, i32 3
  %149 = ptrtoint ptr %arrayidx27.3.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx27.3.i, align 1
  %151 = tail call i8 @llvm.umax.i8(i8 %150, i8 32) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext %151) #9
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext 10) #9
  %type.i = getelementptr i8, ptr %dev, i32 -252
  %152 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %type.i, align 4
  %conv39.i = zext i8 %153 to i32
  %call40.i = tail call ptr @scsi_device_type(i32 noundef %conv39.i) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sfile, ptr noundef nonnull @.str.17, ptr noundef %call40.i) #9
  %scsi_level.i = getelementptr i8, ptr %dev, i32 -251
  %154 = ptrtoint ptr %scsi_level.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %scsi_level.i, align 1
  %conv41.i = zext i8 %155 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %155)
  %cmp44.i = icmp ugt i8 %155, 1
  %conv45.neg.i = sext i1 %cmp44.i to i32
  %sub.i = add nsw i32 %conv45.neg.i, %conv41.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sfile, ptr noundef nonnull @.str.18, i32 noundef %sub.i) #9
  %156 = ptrtoint ptr %scsi_level.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %scsi_level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %157)
  %cmp48.i = icmp eq i8 %157, 2
  br i1 %cmp48.i, label %if.then50.i, label %if.else51.i

if.then50.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %sfile, ptr noundef nonnull @.str.19) #9
  br label %proc_print_scsidevice.exit

if.else51.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_putc(ptr noundef %sfile, i8 noundef zeroext 10) #9
  br label %proc_print_scsidevice.exit

proc_print_scsidevice.exit:                       ; preds = %if.else51.i, %if.then50.i, %if.end.proc_print_scsidevice.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_any(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_sdev_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_type(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scsi_remove_single_device(i32 noundef %host, i32 noundef %channel, i32 noundef %id, i32 noundef %lun) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %host to i16
  %call = tail call ptr @scsi_host_lookup(i16 noundef zeroext %conv) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv1 = zext i32 %lun to i64
  %call2 = tail call ptr @scsi_device_lookup(ptr noundef nonnull %call, i32 noundef %channel, i32 noundef %id, i64 noundef %conv1) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @scsi_remove_device(ptr noundef nonnull %call2) #9
  tail call void @scsi_device_put(ptr noundef nonnull %call2) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %error.0 = phi i32 [ 0, %if.then4 ], [ -6, %if.end.if.end5_crit_edge ]
  tail call void @scsi_host_put(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %if.end5 ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_lookup(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_scan_host_selected(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_lookup(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !17, !19, !21, !22, !23, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/scsi_proc.c", i32 110, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @scsi_proc_hostdir_add._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @scsi_proc_hostdir_add._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/scsi_proc.c", i32 147, i32 15}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/scsi_proc.c", i32 151, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @scsi_proc_host_add._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @scsi_proc_host_add._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/scsi_proc.c", i32 454, i32 25}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/scsi_proc.c", i32 458, i32 20}
!17 = !{ptr @proc_scsi, !18, !"proc_scsi", i1 false, i1 false}
!18 = !{!"../drivers/scsi/scsi_proc.c", i32 44, i32 31}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/scsi_proc.c", i32 47, i32 8}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @global_host_template_mutex, !20, !"global_host_template_mutex", i1 false, i1 false}
!23 = !{ptr @proc_scsi_ops, !24, !"proc_scsi_ops", i1 false, i1 false}
!24 = !{!"../drivers/scsi/scsi_proc.c", i32 86, i32 30}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!32 = !{ptr @scsi_scsi_proc_ops, !33, !"scsi_scsi_proc_ops", i1 false, i1 false}
!33 = !{!"../drivers/scsi/scsi_proc.c", i32 439, i32 30}
!34 = !{ptr @scsi_seq_ops, !35, !"scsi_seq_ops", i1 false, i1 false}
!35 = !{!"../drivers/scsi/scsi_proc.c", i32 416, i32 36}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/scsi_proc.c", i32 411, i32 19}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/scsi_proc.c", i32 189, i32 3}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/scsi_proc.c", i32 198, i32 14}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/scsi_proc.c", i32 206, i32 14}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/scsi_proc.c", i32 216, i32 16}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/scsi_proc.c", i32 217, i32 16}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/scsi_proc.c", i32 220, i32 15}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/scsi_proc.c", i32 338, i32 15}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/scsi_proc.c", i32 352, i32 22}
!54 = !{!"sp"}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2152972390, i64 2152972415}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 5467945}
!67 = !{i64 5468142}
!68 = !{i64 2152953375}
!69 = !{!"auto-init"}
