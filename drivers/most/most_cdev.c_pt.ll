; ModuleID = '/llk/IR_all_yes/drivers/most/most_cdev.c_pt.bc'
source_filename = "../drivers/most/most_cdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cdev_component = type { i32, %struct.ida, i32, ptr, %struct.most_component }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.most_component = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.comp_channel = type { %struct.wait_queue_head, %struct.spinlock, %struct.cdev, ptr, %struct.mutex, ptr, ptr, i32, i32, i32, %struct.anon.67, i32, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.67 = type { %union.anon.68, [0 x ptr] }
%union.anon.68 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.most_channel_config = type { i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.mbo = type { ptr, ptr, %struct.list_head, ptr, ptr, i16, ptr, i32, i16, i16, i32, ptr }
%struct.most_interface = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.70 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.72 = type { ptr }

@comp = internal global { %struct.cdev_component, [60 x i8] } { %struct.cdev_component { i32 0, %struct.ida zeroinitializer, i32 0, ptr null, %struct.most_component { %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @comp_probe, ptr @comp_disconnect_channel, ptr @comp_rx_completion, ptr @comp_tx_completion, ptr null } }, [60 x i8] zeroinitializer }, align 32
@channel_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @channel_list, ptr @channel_list }, [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_most_cdev__232_537_most_cdev_init6 = internal global ptr @most_cdev_init, section ".initcall6.init", align 4
@__exitcall_most_cdev_exit = internal global ptr @most_cdev_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [65 x i8] c"most_cdev.author=Christian Gromm <christian.gromm@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [38 x i8] c"most_cdev.file=drivers/most/most_cdev\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [22 x i8] c"most_cdev.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [62 x i8] c"most_cdev.description=character device component for mostcore\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cdev\00", [27 x i8] zeroinitializer }, align 32
@channel_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @comp_read, ptr @comp_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @comp_poll, ptr null, ptr null, ptr null, i32 0, ptr @comp_open, ptr null, ptr @comp_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@comp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&c->unlink\00", [21 x i8] zeroinitializer }, align 32
@comp_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"&c->wq\00", [25 x i8] zeroinitializer }, align 32
@comp_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&c->io_mutex\00", [19 x i8] zeroinitializer }, align 32
@ch_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/most/most_cdev.c\00", [39 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ch_list_lock\00", [19 x i8] zeroinitializer }, align 32
@comp_tx_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.7, i32 393, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Channel ID out of range\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"comp_tx_completion\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@comp_tx_completion._entry_ptr = internal global ptr @comp_tx_completion._entry, section ".printk_index", align 4
@most_cdev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"most_cdev\00", [22 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.18 = private unnamed_addr constant [5 x i8] c"comp\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 478, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"channel_list\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 47, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 481, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"channel_fops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 303, i32 37 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 447, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 452, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 453, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"ch_list_lock\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 457, i32 59 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 248, i32 7 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 230, i32 6 }
@___asan_gen_.61 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 214, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 174, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 48, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 393, i32 3 }
@___asan_gen_.88 = private constant [28 x i8] c"../drivers/most/most_cdev.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 493, i32 15 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 378, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_most_cdev_exit, ptr @__initcall__kmod_most_cdev__232_537_most_cdev_init6, ptr @comp_tx_completion._entry, ptr @comp_tx_completion._entry_ptr, ptr @most_cdev_exit, ptr @comp, ptr @channel_list, ptr @.str, ptr @channel_fops, ptr @comp_probe.__key, ptr @.str.1, ptr @comp_probe.__key.2, ptr @.str.3, ptr @comp_probe.__key.4, ptr @.str.5, ptr @ch_list_lock, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @most_cdev_init.__key, ptr @.str.16, ptr @xa_init_flags.__key, ptr @.str.17], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_tx_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_cdev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @most_cdev_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @most_deregister_configfs_subsys(ptr noundef getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 4)) #8
  %call = tail call i32 @most_deregister_component(ptr noundef getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 4)) #8
  %0 = load ptr, ptr @channel_list, align 4
  %cmp.not17 = icmp eq ptr %0, @channel_list
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %destroy_cdev.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in18 = phi ptr [ %.pn, %destroy_cdev.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %c.0 = getelementptr i8, ptr %.pn.in18, i32 -396
  %1 = ptrtoint ptr %.pn.in18 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in18, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 3), align 4
  %devno.i = getelementptr i8, ptr %.pn.in18, i32 -32
  %3 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devno.i, align 4
  tail call void @device_destroy(ptr noundef %2, i32 noundef %4) #8
  %cdev.i = getelementptr i8, ptr %.pn.in18, i32 -300
  tail call void @cdev_del(ptr noundef %cdev.i) #8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ch_list_lock) #8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in18) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.destroy_cdev.exit_crit_edge

for.body.destroy_cdev.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %destroy_cdev.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr i8, ptr %.pn.in18, i32 4
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %.pn.in18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in18, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %destroy_cdev.exit

destroy_cdev.exit:                                ; preds = %if.end.i.i.i, %for.body.destroy_cdev.exit_crit_edge
  %11 = ptrtoint ptr %.pn.in18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in18, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in18, i32 4
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ch_list_lock, i32 noundef %call2.i) #8
  %13 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devno.i, align 4
  %and.i = and i32 %14, 1048575
  tail call void @ida_free(ptr noundef getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 1), i32 noundef %and.i) #8
  %fifo.i = getelementptr i8, ptr %.pn.in18, i32 -24
  tail call void @__kfifo_free(ptr noundef %fifo.i) #8
  tail call void @kfree(ptr noundef %c.0) #8
  %cmp.not = icmp eq ptr %.pn, @channel_list
  br i1 %cmp.not, label %destroy_cdev.exit.for.end_crit_edge, label %destroy_cdev.exit.for.body_crit_edge

destroy_cdev.exit.for.body_crit_edge:             ; preds = %destroy_cdev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

destroy_cdev.exit.for.end_crit_edge:              ; preds = %destroy_cdev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %destroy_cdev.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %15 = load i32, ptr @comp, align 4
  tail call void @unregister_chrdev_region(i32 noundef %15, i32 noundef 50) #8
  tail call void @ida_destroy(ptr noundef getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 1)) #8
  %16 = load ptr, ptr getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 3), align 4
  tail call void @class_destroy(ptr noundef %16) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @most_deregister_configfs_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_deregister_component(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @most_cdev_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @most_cdev_init.__key) #8
  store ptr %call, ptr getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 3), align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 1), ptr noundef nonnull @.str.17, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
  store i32 67108869, ptr getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 1, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 1, i32 0, i32 2), align 4
  %call3 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @comp, i32 noundef 0, i32 noundef 50, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.dest_ida_crit_edge, label %if.end5

if.end.dest_ida_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dest_ida

if.end5:                                          ; preds = %if.end
  %1 = load i32, ptr @comp, align 4
  %shr = lshr i32 %1, 20
  store i32 %shr, ptr getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 2), align 4
  %call6 = tail call i32 @most_register_component(ptr noundef getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 4)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end5.free_cdev_crit_edge

if.end5.free_cdev_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_cdev

if.end8:                                          ; preds = %if.end5
  %call9 = tail call i32 @most_register_configfs_subsys(ptr noundef getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 4)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %deregister_comp

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

deregister_comp:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 @most_deregister_component(ptr noundef getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 4)) #8
  br label %free_cdev

free_cdev:                                        ; preds = %deregister_comp, %if.end5.free_cdev_crit_edge
  %err.0 = phi i32 [ %call6, %if.end5.free_cdev_crit_edge ], [ %call9, %deregister_comp ]
  %2 = load i32, ptr @comp, align 4
  tail call void @unregister_chrdev_region(i32 noundef %2, i32 noundef 50) #8
  br label %dest_ida

dest_ida:                                         ; preds = %free_cdev, %if.end.dest_ida_crit_edge
  %err.1 = phi i32 [ %call3, %if.end.dest_ida_crit_edge ], [ %err.0, %free_cdev ]
  tail call void @ida_destroy(ptr noundef getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 1)) #8
  %3 = load ptr, ptr getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 3), align 4
  tail call void @class_destroy(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %dest_ida, %if.end8.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %err.1, %dest_ida ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_probe(ptr noundef %iface, i32 noundef %channel_id, ptr noundef %cfg, ptr noundef %name, ptr nocapture noundef readnone %args) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cfg, null
  %tobool2.not = icmp eq ptr %name, null
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ch_list_lock) #8
  %0 = load ptr, ptr @channel_list, align 4
  %cmp11.not34.i = icmp eq ptr %0, @channel_list
  br i1 %cmp11.not34.i, label %if.end.get_channel.exit.thread_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.get_channel.exit.thread_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_channel.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn.in35.i = phi ptr [ %.pn36.i, %for.inc.i.for.body.i_crit_edge ], [ %0, %if.end.for.body.i_crit_edge ]
  %1 = ptrtoint ptr %.pn.in35.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn36.i = load ptr, ptr %.pn.in35.i, align 4
  %iface13.i = getelementptr i8, ptr %.pn.in35.i, i32 -44
  %2 = ptrtoint ptr %iface13.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iface13.i, align 4
  %cmp14.i = icmp eq ptr %3, %iface
  br i1 %cmp14.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %channel_id.i = getelementptr i8, ptr %.pn.in35.i, i32 -36
  %4 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %channel_id)
  %cmp16.i = icmp eq i32 %5, %channel_id
  br i1 %cmp16.i, label %get_channel.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp11.not.i = icmp eq ptr %.pn36.i, @channel_list
  br i1 %cmp11.not.i, label %for.inc.i.get_channel.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.get_channel.exit.thread_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_channel.exit.thread

get_channel.exit.thread:                          ; preds = %for.inc.i.get_channel.exit.thread_crit_edge, %if.end.get_channel.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ch_list_lock, i32 noundef %call3.i) #8
  br label %if.end5

get_channel.exit:                                 ; preds = %land.lhs.true.i
  %c.0.le.i = getelementptr i8, ptr %.pn.in35.i, i32 -396
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ch_list_lock, i32 noundef %call3.i) #8
  %tobool3.not = icmp eq ptr %c.0.le.i, null
  br i1 %tobool3.not, label %get_channel.exit.if.end5_crit_edge, label %get_channel.exit.cleanup_crit_edge

get_channel.exit.cleanup_crit_edge:               ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

get_channel.exit.if.end5_crit_edge:               ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end5:                                          ; preds = %get_channel.exit.if.end5_crit_edge, %get_channel.exit.thread
  %call6 = tail call i32 @ida_alloc_range(ptr noundef getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 1), i32 noundef 0, i32 noundef -1, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 404) #11
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.err_remove_ida_crit_edge, label %if.end12

if.end8.err_remove_ida_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_remove_ida

if.end12:                                         ; preds = %if.end8
  %7 = load i32, ptr getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 2), align 4
  %shl = shl i32 %7, 20
  %or = or i32 %shl, %call6
  %devno = getelementptr inbounds %struct.comp_channel, ptr %call7.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %devno to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %devno, align 4
  %cdev = getelementptr inbounds %struct.comp_channel, ptr %call7.i.i, i32 0, i32 2
  tail call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @channel_fops) #8
  %owner = getelementptr inbounds %struct.comp_channel, ptr %call7.i.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %owner, align 8
  %10 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devno, align 4
  %call16 = tail call i32 @cdev_add(ptr noundef %cdev, i32 noundef %11, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end12.err_free_c_crit_edge, label %if.end19

if.end12.err_free_c_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_c

if.end19:                                         ; preds = %if.end12
  %iface20 = getelementptr inbounds %struct.comp_channel, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %iface20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %iface, ptr %iface20, align 8
  %cfg21 = getelementptr inbounds %struct.comp_channel, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %cfg21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cfg, ptr %cfg21, align 4
  %channel_id22 = getelementptr inbounds %struct.comp_channel, ptr %call7.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %channel_id22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %channel_id, ptr %channel_id22, align 8
  %access_ref = getelementptr inbounds %struct.comp_channel, ptr %call7.i.i, i32 0, i32 11
  %15 = ptrtoint ptr %access_ref to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %access_ref, align 8
  %unlink = getelementptr inbounds %struct.comp_channel, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %unlink, ptr noundef nonnull @.str.1, ptr noundef nonnull @comp_probe.__key, i16 noundef signext 3) #8
  %fifo = getelementptr inbounds %struct.comp_channel, ptr %call7.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %fifo, align 4
  %out = getelementptr inbounds %struct.comp_channel, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %out, align 8
  %mask = getelementptr inbounds %struct.comp_channel, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 0, i32 2
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %mask, align 4
  %esize = getelementptr inbounds %struct.comp_channel, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 0, i32 3
  %19 = ptrtoint ptr %esize to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %esize, align 8
  %data = getelementptr inbounds %struct.comp_channel, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 0, i32 4
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %data, align 4
  %num_buffers = getelementptr inbounds %struct.most_channel_config, ptr %cfg, i32 0, i32 2
  %21 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_buffers, align 4
  %conv = zext i16 %22 to i32
  %call28 = tail call i32 @__kfifo_alloc(ptr noundef %fifo, i32 noundef %conv, i32 noundef 4, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool30.not = icmp eq i32 %call28, 0
  br i1 %tobool30.not, label %do.body33, label %if.end19.err_del_cdev_and_free_channel_crit_edge

if.end19.err_del_cdev_and_free_channel_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_del_cdev_and_free_channel

do.body33:                                        ; preds = %if.end19
  tail call void @__init_waitqueue_head(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @comp_probe.__key.2) #8
  %io_mutex = getelementptr inbounds %struct.comp_channel, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %io_mutex, ptr noundef nonnull @.str.5, ptr noundef nonnull @comp_probe.__key.4) #8
  %call45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ch_list_lock) #8
  %list = getelementptr inbounds %struct.comp_channel, ptr %call7.i.i, i32 0, i32 12
  %23 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @channel_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %23, ptr noundef nonnull @channel_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.body33.list_add_tail.exit_crit_edge

do.body33.list_add_tail.exit_crit_edge:           ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @channel_list, i32 0, i32 1), align 4
  %24 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @channel_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.comp_channel, ptr %call7.i.i, i32 0, i32 12, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %prev3.i.i, align 8
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %list, ptr %23, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body33.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ch_list_lock, i32 noundef %call45) #8
  %27 = load ptr, ptr getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 3), align 4
  %28 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %devno, align 4
  %call51 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %27, ptr noundef null, i32 noundef %29, ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull %name) #8
  %dev = getelementptr inbounds %struct.comp_channel, ptr %call7.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call51, ptr %dev, align 8
  %cmp.i = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then54, label %if.end57

if.then54:                                        ; preds = %list_add_tail.exit
  %31 = ptrtoint ptr %call51 to i32
  tail call void @__kfifo_free(ptr noundef %fifo) #8
  %call.i.i107 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #8
  br i1 %call.i.i107, label %if.end.i.i108, label %if.then54.list_del.exit_crit_edge

if.then54.list_del.exit_crit_edge:                ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i108:                                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.comp_channel, ptr %call7.i.i, i32 0, i32 12, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 8
  %34 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i108, %if.then54.list_del.exit_crit_edge
  %38 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.comp_channel, ptr %call7.i.i, i32 0, i32 12, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 8
  br label %err_del_cdev_and_free_channel

if.end57:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call59 = tail call i32 @kobject_uevent(ptr noundef %call51, i32 noundef 0) #8
  br label %cleanup

err_del_cdev_and_free_channel:                    ; preds = %list_del.exit, %if.end19.err_del_cdev_and_free_channel_crit_edge
  %retval1.0 = phi i32 [ %call28, %if.end19.err_del_cdev_and_free_channel_crit_edge ], [ %31, %list_del.exit ]
  tail call void @cdev_del(ptr noundef %cdev) #8
  br label %err_free_c

err_free_c:                                       ; preds = %err_del_cdev_and_free_channel, %if.end12.err_free_c_crit_edge
  %retval1.1 = phi i32 [ %call16, %if.end12.err_free_c_crit_edge ], [ %retval1.0, %err_del_cdev_and_free_channel ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %err_remove_ida

err_remove_ida:                                   ; preds = %err_free_c, %if.end8.err_remove_ida_crit_edge
  %retval1.2 = phi i32 [ %retval1.1, %err_free_c ], [ -12, %if.end8.err_remove_ida_crit_edge ]
  tail call void @ida_free(ptr noundef getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 1), i32 noundef %call6) #8
  br label %cleanup

cleanup:                                          ; preds = %err_remove_ida, %if.end57, %if.end5.cleanup_crit_edge, %get_channel.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.2, %err_remove_ida ], [ 0, %if.end57 ], [ -22, %entry.cleanup_crit_edge ], [ -17, %get_channel.exit.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_disconnect_channel(ptr noundef readnone %iface, i32 noundef %channel_id) #3 align 64 {
entry:
  %mbo.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ch_list_lock) #8
  %0 = load ptr, ptr @channel_list, align 4
  %cmp11.not34.i = icmp eq ptr %0, @channel_list
  br i1 %cmp11.not34.i, label %entry.get_channel.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.get_channel.exit.thread_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_channel.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in35.i = phi ptr [ %.pn36.i, %for.inc.i.for.body.i_crit_edge ], [ %0, %entry.for.body.i_crit_edge ]
  %1 = ptrtoint ptr %.pn.in35.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn36.i = load ptr, ptr %.pn.in35.i, align 4
  %iface13.i = getelementptr i8, ptr %.pn.in35.i, i32 -44
  %2 = ptrtoint ptr %iface13.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iface13.i, align 4
  %cmp14.i = icmp eq ptr %3, %iface
  br i1 %cmp14.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %channel_id.i = getelementptr i8, ptr %.pn.in35.i, i32 -36
  %4 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %channel_id)
  %cmp16.i = icmp eq i32 %5, %channel_id
  br i1 %cmp16.i, label %get_channel.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp11.not.i = icmp eq ptr %.pn36.i, @channel_list
  br i1 %cmp11.not.i, label %for.inc.i.get_channel.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.get_channel.exit.thread_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_channel.exit.thread

get_channel.exit.thread:                          ; preds = %for.inc.i.get_channel.exit.thread_crit_edge, %entry.get_channel.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ch_list_lock, i32 noundef %call3.i) #8
  br label %cleanup

get_channel.exit:                                 ; preds = %land.lhs.true.i
  %iface13.i.le = getelementptr i8, ptr %.pn.in35.i, i32 -44
  %channel_id.i.le = getelementptr i8, ptr %.pn.in35.i, i32 -36
  %c.0.le.i = getelementptr i8, ptr %.pn.in35.i, i32 -396
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ch_list_lock, i32 noundef %call3.i) #8
  %tobool.not = icmp eq ptr %c.0.le.i, null
  br i1 %tobool.not, label %get_channel.exit.cleanup_crit_edge, label %if.end

get_channel.exit.cleanup_crit_edge:               ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %get_channel.exit
  %io_mutex = getelementptr i8, ptr %.pn.in35.i, i32 -136
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #8
  %unlink = getelementptr i8, ptr %.pn.in35.i, i32 -344
  tail call void @_raw_spin_lock(ptr noundef %unlink) #8
  %dev = getelementptr i8, ptr %.pn.in35.i, i32 -140
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %dev, align 4
  tail call void @_raw_spin_unlock(ptr noundef %unlink) #8
  %7 = load ptr, ptr getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 3), align 4
  %devno.i = getelementptr i8, ptr %.pn.in35.i, i32 -32
  %8 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devno.i, align 4
  tail call void @device_destroy(ptr noundef %7, i32 noundef %9) #8
  %cdev.i = getelementptr i8, ptr %.pn.in35.i, i32 -300
  tail call void @cdev_del(ptr noundef %cdev.i) #8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ch_list_lock) #8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in35.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.destroy_cdev.exit_crit_edge

if.end.destroy_cdev.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %destroy_cdev.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr i8, ptr %.pn.in35.i, i32 4
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %.pn.in35.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn.in35.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %destroy_cdev.exit

destroy_cdev.exit:                                ; preds = %if.end.i.i.i, %if.end.destroy_cdev.exit_crit_edge
  %16 = ptrtoint ptr %.pn.in35.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in35.i, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in35.i, i32 4
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ch_list_lock, i32 noundef %call2.i) #8
  %access_ref = getelementptr i8, ptr %.pn.in35.i, i32 -4
  %18 = ptrtoint ptr %access_ref to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %access_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool2.not = icmp eq i32 %19, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %destroy_cdev.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mbo.i) #8
  %20 = ptrtoint ptr %mbo.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %mbo.i, align 4, !annotation !65
  %fifo.i = getelementptr i8, ptr %.pn.in35.i, i32 -24
  %call5.i = call i32 @__kfifo_out(ptr noundef %fifo.i, ptr noundef nonnull %mbo.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not6.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not6.i, label %if.then3.stop_channel.exit_crit_edge, label %if.then3.while.body.i_crit_edge

if.then3.while.body.i_crit_edge:                  ; preds = %if.then3
  br label %while.body.i

if.then3.stop_channel.exit_crit_edge:             ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop_channel.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then3.while.body.i_crit_edge
  %21 = ptrtoint ptr %mbo.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mbo.i, align 4
  call void @most_put_mbo(ptr noundef %22) #8
  %call.i = call i32 @__kfifo_out(ptr noundef %fifo.i, ptr noundef nonnull %mbo.i, i32 noundef 1) #8
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i.stop_channel.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.stop_channel.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop_channel.exit

stop_channel.exit:                                ; preds = %while.body.i.stop_channel.exit_crit_edge, %if.then3.stop_channel.exit_crit_edge
  %23 = ptrtoint ptr %iface13.i.le to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iface13.i.le, align 4
  %25 = ptrtoint ptr %channel_id.i.le to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channel_id.i.le, align 4
  %call2.i19 = call i32 @most_stop_channel(ptr noundef %24, i32 noundef %26, ptr noundef getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 4)) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mbo.i) #8
  call void @__wake_up(ptr noundef nonnull %c.0.le.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  call void @mutex_unlock(ptr noundef %io_mutex) #8
  br label %cleanup

if.else:                                          ; preds = %destroy_cdev.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %io_mutex) #8
  %27 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %devno.i, align 4
  %and.i = and i32 %28, 1048575
  tail call void @ida_free(ptr noundef getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 1), i32 noundef %and.i) #8
  %fifo.i21 = getelementptr i8, ptr %.pn.in35.i, i32 -24
  tail call void @__kfifo_free(ptr noundef %fifo.i21) #8
  tail call void @kfree(ptr noundef nonnull %c.0.le.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %stop_channel.exit, %get_channel.exit.cleanup_crit_edge, %get_channel.exit.thread
  %retval.0 = phi i32 [ -22, %get_channel.exit.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %stop_channel.exit ], [ -22, %get_channel.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_rx_completion(ptr noundef %mbo) #3 align 64 {
entry:
  %mbo.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mbo.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mbo, ptr %mbo.addr, align 4
  %tobool.not = icmp eq ptr %mbo, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ifp = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 3
  %1 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ifp, align 4
  %hdm_channel_id = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 5
  %3 = ptrtoint ptr %hdm_channel_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %hdm_channel_id, align 4
  %conv = zext i16 %4 to i32
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ch_list_lock) #8
  %5 = load ptr, ptr @channel_list, align 4
  %cmp11.not34.i = icmp eq ptr %5, @channel_list
  br i1 %cmp11.not34.i, label %if.end.get_channel.exit.thread_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.get_channel.exit.thread_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_channel.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn.in35.i = phi ptr [ %.pn36.i, %for.inc.i.for.body.i_crit_edge ], [ %5, %if.end.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in35.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn36.i = load ptr, ptr %.pn.in35.i, align 4
  %iface13.i = getelementptr i8, ptr %.pn.in35.i, i32 -44
  %7 = ptrtoint ptr %iface13.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iface13.i, align 4
  %cmp14.i = icmp eq ptr %8, %2
  br i1 %cmp14.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %channel_id.i = getelementptr i8, ptr %.pn.in35.i, i32 -36
  %9 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp16.i = icmp eq i32 %10, %conv
  br i1 %cmp16.i, label %get_channel.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp11.not.i = icmp eq ptr %.pn36.i, @channel_list
  br i1 %cmp11.not.i, label %for.inc.i.get_channel.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.get_channel.exit.thread_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_channel.exit.thread

get_channel.exit.thread:                          ; preds = %for.inc.i.get_channel.exit.thread_crit_edge, %if.end.get_channel.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ch_list_lock, i32 noundef %call3.i) #8
  br label %cleanup

get_channel.exit:                                 ; preds = %land.lhs.true.i
  %c.0.le.i = getelementptr i8, ptr %.pn.in35.i, i32 -396
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ch_list_lock, i32 noundef %call3.i) #8
  %tobool1.not = icmp eq ptr %c.0.le.i, null
  br i1 %tobool1.not, label %get_channel.exit.cleanup_crit_edge, label %if.end3

get_channel.exit.cleanup_crit_edge:               ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %get_channel.exit
  %unlink = getelementptr i8, ptr %.pn.in35.i, i32 -344
  tail call void @_raw_spin_lock(ptr noundef %unlink) #8
  %access_ref = getelementptr i8, ptr %.pn.in35.i, i32 -4
  %11 = ptrtoint ptr %access_ref to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %access_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not = icmp eq i32 %12, 0
  br i1 %tobool4.not, label %if.end3.if.then6_crit_edge, label %lor.lhs.false

if.end3.if.then6_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end3
  %dev = getelementptr i8, ptr %.pn.in35.i, i32 -140
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %tobool5.not = icmp eq ptr %14, null
  br i1 %tobool5.not, label %lor.lhs.false.if.then6_crit_edge, label %if.end8

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end3.if.then6_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %unlink) #8
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %fifo = getelementptr i8, ptr %.pn.in35.i, i32 -24
  %call9 = call i32 @__kfifo_in(ptr noundef %fifo, ptr noundef nonnull %mbo.addr, i32 noundef 1) #8
  call void @_raw_spin_unlock(ptr noundef %unlink) #8
  call void @__wake_up(ptr noundef nonnull %c.0.le.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %get_channel.exit.cleanup_crit_edge, %get_channel.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -19, %if.then6 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %get_channel.exit.cleanup_crit_edge ], [ -22, %get_channel.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_tx_completion(ptr noundef readonly %iface, i32 noundef %channel_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ch_list_lock) #8
  %0 = load ptr, ptr @channel_list, align 4
  %cmp11.not34.i = icmp eq ptr %0, @channel_list
  br i1 %cmp11.not34.i, label %entry.get_channel.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.get_channel.exit.thread_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_channel.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in35.i = phi ptr [ %.pn36.i, %for.inc.i.for.body.i_crit_edge ], [ %0, %entry.for.body.i_crit_edge ]
  %1 = ptrtoint ptr %.pn.in35.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn36.i = load ptr, ptr %.pn.in35.i, align 4
  %iface13.i = getelementptr i8, ptr %.pn.in35.i, i32 -44
  %2 = ptrtoint ptr %iface13.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iface13.i, align 4
  %cmp14.i = icmp eq ptr %3, %iface
  br i1 %cmp14.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %channel_id.i = getelementptr i8, ptr %.pn.in35.i, i32 -36
  %4 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %channel_id)
  %cmp16.i = icmp eq i32 %5, %channel_id
  br i1 %cmp16.i, label %get_channel.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp11.not.i = icmp eq ptr %.pn36.i, @channel_list
  br i1 %cmp11.not.i, label %for.inc.i.get_channel.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.get_channel.exit.thread_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_channel.exit.thread

get_channel.exit.thread:                          ; preds = %for.inc.i.get_channel.exit.thread_crit_edge, %entry.get_channel.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ch_list_lock, i32 noundef %call3.i) #8
  br label %cleanup

get_channel.exit:                                 ; preds = %land.lhs.true.i
  %c.0.le.i = getelementptr i8, ptr %.pn.in35.i, i32 -396
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ch_list_lock, i32 noundef %call3.i) #8
  %tobool.not = icmp eq ptr %c.0.le.i, null
  br i1 %tobool.not, label %get_channel.exit.cleanup_crit_edge, label %if.end

get_channel.exit.cleanup_crit_edge:               ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %get_channel.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel_id)
  %cmp = icmp slt i32 %channel_id, 0
  br i1 %cmp, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %num_channels = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 5
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %channel_id)
  %cmp1.not = icmp ugt i32 %7, %channel_id
  br i1 %cmp1.not, label %if.end3, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev = getelementptr i8, ptr %.pn.in35.i, i32 -140
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.12) #12
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__wake_up(ptr noundef nonnull %c.0.le.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %do.end, %get_channel.exit.cleanup_crit_edge, %get_channel.exit.thread
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end3 ], [ -22, %get_channel.exit.cleanup_crit_edge ], [ -22, %get_channel.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %offset) #3 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %io_mutex = getelementptr inbounds %struct.comp_channel, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #8
  %dev = getelementptr inbounds %struct.comp_channel, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool.not159 = icmp eq ptr %3, null
  br i1 %tobool.not159, label %entry.if.then69_crit_edge, label %land.rhs.lr.ph

entry.if.then69_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then69

land.rhs.lr.ph:                                   ; preds = %entry
  %fifo = getelementptr inbounds %struct.comp_channel, ptr %1, i32 0, i32 10
  %out = getelementptr inbounds %struct.comp_channel, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 1
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  br label %land.rhs

land.rhs:                                         ; preds = %if.end58.land.rhs_crit_edge, %land.rhs.lr.ph
  %4 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo, align 4
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  call void @mutex_unlock(ptr noundef %io_mutex) #8
  %8 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_flags, align 4
  %and12 = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end15, label %while.body.cleanup94_crit_edge

while.body.cleanup94_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup94

if.end15:                                         ; preds = %while.body
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 250) #8
  %10 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fifo, align 4
  %12 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp28 = icmp eq i32 %11, %13
  br i1 %cmp28, label %lor.lhs.false, label %if.end15.if.end58_crit_edge

if.end15.if.end58_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

lor.lhs.false:                                    ; preds = %if.end15
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %tobool32.not = icmp eq ptr %15, null
  br i1 %tobool32.not, label %lor.lhs.false.if.end58_crit_edge, label %if.then33

lor.lhs.false.if.end58_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then33:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %16 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call35156 = call i32 @prepare_to_wait_event(ptr noundef %1, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %17 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fifo, align 4
  %19 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp41157 = icmp eq i32 %18, %20
  br i1 %cmp41157, label %if.then33.lor.lhs.false44_crit_edge, label %if.then33.if.end54.thread146_crit_edge

if.then33.if.end54.thread146_crit_edge:           ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.thread146

if.then33.lor.lhs.false44_crit_edge:              ; preds = %if.then33
  br label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %cleanup.lor.lhs.false44_crit_edge, %if.then33.lor.lhs.false44_crit_edge
  %call35158 = phi i32 [ %call35, %cleanup.lor.lhs.false44_crit_edge ], [ %call35156, %if.then33.lor.lhs.false44_crit_edge ]
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %tobool46.not = icmp eq ptr %22, null
  br i1 %tobool46.not, label %lor.lhs.false44.if.end54.thread146_crit_edge, label %if.end48

lor.lhs.false44.if.end54.thread146_crit_edge:     ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.thread146

if.end48:                                         ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35158)
  %tobool49.not = icmp eq i32 %call35158, 0
  br i1 %tobool49.not, label %cleanup, label %if.end54

cleanup:                                          ; preds = %if.end48
  call void @schedule() #8
  %call35 = call i32 @prepare_to_wait_event(ptr noundef %1, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %23 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fifo, align 4
  %25 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %out, align 4
  %cmp41 = icmp eq i32 %24, %26
  br i1 %cmp41, label %cleanup.lor.lhs.false44_crit_edge, label %cleanup.if.end54.thread146_crit_edge

cleanup.if.end54.thread146_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.thread146

cleanup.lor.lhs.false44_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false44

if.end54.thread146:                               ; preds = %cleanup.if.end54.thread146_crit_edge, %lor.lhs.false44.if.end54.thread146_crit_edge, %if.then33.if.end54.thread146_crit_edge
  call void @finish_wait(ptr noundef %1, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end58

if.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %cleanup94

if.end58:                                         ; preds = %if.end54.thread146, %lor.lhs.false.if.end58_crit_edge, %if.end15.if.end58_crit_edge
  call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #8
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %if.end58.if.then69_crit_edge, label %if.end58.land.rhs_crit_edge

if.end58.land.rhs_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

if.end58.if.then69_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then69

while.end:                                        ; preds = %land.rhs
  %data = getelementptr inbounds %struct.comp_channel, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 4
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %mask = getelementptr inbounds %struct.comp_channel, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 2
  %31 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mask, align 4
  %and = and i32 %32, %7
  %arrayidx = getelementptr ptr, ptr %30, i32 %and
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !66
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load ptr, ptr %dev, align 4
  %tobool61.not = icmp eq ptr %.pr, null
  br i1 %tobool61.not, label %while.end.if.then69_crit_edge, label %if.end71, !prof !67

while.end.if.then69_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then69

if.then69:                                        ; preds = %while.end.if.then69_crit_edge, %if.end58.if.then69_crit_edge, %entry.if.then69_crit_edge
  call void @mutex_unlock(ptr noundef %io_mutex) #8
  br label %cleanup94

if.end71:                                         ; preds = %while.end
  %processed_length = getelementptr inbounds %struct.mbo, ptr %34, i32 0, i32 9
  %36 = ptrtoint ptr %processed_length to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %processed_length, align 2
  %conv72 = zext i16 %37 to i32
  %mbo_offs = getelementptr inbounds %struct.comp_channel, ptr %1, i32 0, i32 9
  %38 = ptrtoint ptr %mbo_offs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mbo_offs, align 4
  %sub = sub i32 %conv72, %39
  %40 = call i32 @llvm.umin.i32(i32 %sub, i32 %count)
  %virt_address = getelementptr inbounds %struct.mbo, ptr %34, i32 0, i32 6
  %41 = ptrtoint ptr %virt_address to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %virt_address, align 4
  %add.ptr = getelementptr i8, ptr %42, i32 %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp9.i.i = icmp slt i32 %40, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end71
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_user.exit_crit_edge, label %if.then27.i.i, !prof !68

land.rhs16.i.i.copy_to_user.exit_crit_edge:       ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %copy_to_user.exit

if.then.i.i.i:                                    ; preds = %if.end71
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %40, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %43 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %40, i32 -1226833920) #13, !srcloc !69
  %asmresult.i.i = extractvalue { i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %40) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %40) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge, %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %40, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %40, %if.end.i.i.copy_to_user.exit_crit_edge ], [ %40, %if.then27.i.i ], [ %40, %land.rhs16.i.i.copy_to_user.exit_crit_edge ]
  %sub78 = sub i32 %40, %n.addr.0.i
  %44 = ptrtoint ptr %mbo_offs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mbo_offs, align 4
  %add = add i32 %45, %sub78
  store i32 %add, ptr %mbo_offs, align 4
  %46 = ptrtoint ptr %processed_length to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %processed_length, align 2
  %conv82 = zext i16 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv82)
  %cmp83.not = icmp ult i32 %add, %conv82
  br i1 %cmp83.not, label %copy_to_user.exit.if.end92_crit_edge, label %if.then85

copy_to_user.exit.if.end92_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then85:                                        ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %out, align 4
  %inc = add i32 %49, 1
  store i32 %inc, ptr %out, align 4
  call void @most_put_mbo(ptr noundef %34) #8
  %50 = ptrtoint ptr %mbo_offs to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %mbo_offs, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then85, %copy_to_user.exit.if.end92_crit_edge
  call void @mutex_unlock(ptr noundef %io_mutex) #8
  br label %cleanup94

cleanup94:                                        ; preds = %if.end92, %if.then69, %if.end54, %while.body.cleanup94_crit_edge
  %retval.0 = phi i32 [ -19, %if.then69 ], [ %sub78, %if.end92 ], [ -512, %if.end54 ], [ -11, %while.body.cleanup94_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %offset) #3 align 64 {
entry:
  %mbo = alloca ptr, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mbo) #8
  %0 = ptrtoint ptr %mbo to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %mbo, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %io_mutex = getelementptr inbounds %struct.comp_channel, ptr %2, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #8
  %dev = getelementptr inbounds %struct.comp_channel, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %tobool.not136 = icmp eq ptr %4, null
  br i1 %tobool.not136, label %entry.unlock_crit_edge, label %land.rhs.lr.ph

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

land.rhs.lr.ph:                                   ; preds = %entry
  %fifo.i = getelementptr inbounds %struct.comp_channel, ptr %2, i32 0, i32 10
  %out.i = getelementptr inbounds %struct.comp_channel, ptr %2, i32 0, i32 10, i32 0, i32 0, i32 1
  %data.i = getelementptr inbounds %struct.comp_channel, ptr %2, i32 0, i32 10, i32 0, i32 0, i32 4
  %mask.i = getelementptr inbounds %struct.comp_channel, ptr %2, i32 0, i32 10, i32 0, i32 0, i32 2
  %iface.i = getelementptr inbounds %struct.comp_channel, ptr %2, i32 0, i32 5
  %channel_id.i = getelementptr inbounds %struct.comp_channel, ptr %2, i32 0, i32 7
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  br label %land.rhs

land.rhs:                                         ; preds = %if.end27.land.rhs_crit_edge, %land.rhs.lr.ph
  %5 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fifo.i, align 4
  %7 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not.i = icmp eq i32 %6, %8
  br i1 %cmp.not.i, label %if.then8.i, label %if.end.i

if.end.i:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %11 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %12, %8
  %arrayidx.i = getelementptr ptr, ptr %10, i32 %and.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %15 = ptrtoint ptr %mbo to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %mbo, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !70
  br label %ch_get_mbo.exit

if.then8.i:                                       ; preds = %land.rhs
  %16 = ptrtoint ptr %iface.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iface.i, align 4
  %18 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel_id.i, align 4
  %call9.i = call ptr @most_get_mbo(ptr noundef %17, i32 noundef %19, ptr noundef getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 4)) #8
  %20 = ptrtoint ptr %mbo to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9.i, ptr %mbo, align 4
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.then8.i.while.body_crit_edge, label %if.then11.i

if.then8.i.while.body_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.then11.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i = call i32 @__kfifo_in(ptr noundef %fifo.i, ptr noundef nonnull %mbo, i32 noundef 1) #8
  br label %ch_get_mbo.exit

ch_get_mbo.exit:                                  ; preds = %if.then11.i, %if.end.i
  %21 = ptrtoint ptr %mbo to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load ptr, ptr %mbo, align 4
  %tobool1.not = icmp eq ptr %.pr, null
  br i1 %tobool1.not, label %ch_get_mbo.exit.while.body_crit_edge, label %while.end

ch_get_mbo.exit.while.body_crit_edge:             ; preds = %ch_get_mbo.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body:                                       ; preds = %ch_get_mbo.exit.while.body_crit_edge, %if.then8.i.while.body_crit_edge
  call void @mutex_unlock(ptr noundef %io_mutex) #8
  %22 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f_flags, align 4
  %and = and i32 %23, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end, label %while.body.cleanup69_crit_edge

while.body.cleanup69_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

if.end:                                           ; preds = %while.body
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 196) #8
  %24 = ptrtoint ptr %iface.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iface.i, align 4
  %26 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channel_id.i, align 4
  %call.i = call i32 @channel_has_mbo(ptr noundef %25, i32 noundef %27, ptr noundef getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 4)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.if.end27_crit_edge, label %lor.lhs.false

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

lor.lhs.false:                                    ; preds = %if.end
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %tobool9.not = icmp eq ptr %29, null
  br i1 %tobool9.not, label %lor.lhs.false.if.end27_crit_edge, label %if.then10

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then10:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %30 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call12132 = call i32 @prepare_to_wait_event(ptr noundef %2, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %31 = ptrtoint ptr %iface.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iface.i, align 4
  %33 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %channel_id.i, align 4
  %call.i110133 = call i32 @channel_has_mbo(ptr noundef %32, i32 noundef %34, ptr noundef getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 4)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110133)
  %cmp.i111134 = icmp sgt i32 %call.i110133, 0
  br i1 %cmp.i111134, label %if.then10.if.end23.thread122_crit_edge, label %if.then10.lor.lhs.false14_crit_edge

if.then10.lor.lhs.false14_crit_edge:              ; preds = %if.then10
  br label %lor.lhs.false14

if.then10.if.end23.thread122_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.thread122

lor.lhs.false14:                                  ; preds = %cleanup.lor.lhs.false14_crit_edge, %if.then10.lor.lhs.false14_crit_edge
  %call12135 = phi i32 [ %call12, %cleanup.lor.lhs.false14_crit_edge ], [ %call12132, %if.then10.lor.lhs.false14_crit_edge ]
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %tobool16.not = icmp eq ptr %36, null
  br i1 %tobool16.not, label %lor.lhs.false14.if.end23.thread122_crit_edge, label %if.end18

lor.lhs.false14.if.end23.thread122_crit_edge:     ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.thread122

if.end18:                                         ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12135)
  %tobool19.not = icmp eq i32 %call12135, 0
  br i1 %tobool19.not, label %cleanup, label %if.end23

cleanup:                                          ; preds = %if.end18
  call void @schedule() #8
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %2, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %37 = ptrtoint ptr %iface.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iface.i, align 4
  %39 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %channel_id.i, align 4
  %call.i110 = call i32 @channel_has_mbo(ptr noundef %38, i32 noundef %40, ptr noundef getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 4)) #8
  %cmp.i111 = icmp sgt i32 %call.i110, 0
  br i1 %cmp.i111, label %cleanup.if.end23.thread122_crit_edge, label %cleanup.lor.lhs.false14_crit_edge

cleanup.lor.lhs.false14_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false14

cleanup.if.end23.thread122_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.thread122

if.end23.thread122:                               ; preds = %cleanup.if.end23.thread122_crit_edge, %lor.lhs.false14.if.end23.thread122_crit_edge, %if.then10.if.end23.thread122_crit_edge
  call void @finish_wait(ptr noundef %2, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end27

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %cleanup69

if.end27:                                         ; preds = %if.end23.thread122, %lor.lhs.false.if.end27_crit_edge, %if.end.if.end27_crit_edge
  call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #8
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %42, null
  br i1 %tobool.not, label %if.end27.unlock_crit_edge, label %if.end27.land.rhs_crit_edge

if.end27.land.rhs_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

if.end27.unlock_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

while.end:                                        ; preds = %ch_get_mbo.exit
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr125 = load ptr, ptr %dev, align 4
  %tobool30.not = icmp eq ptr %.pr125, null
  br i1 %tobool30.not, label %while.end.unlock_crit_edge, label %if.end36, !prof !67

while.end.unlock_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end36:                                         ; preds = %while.end
  %cfg = getelementptr inbounds %struct.comp_channel, ptr %2, i32 0, i32 6
  %44 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg, align 4
  %buffer_size = getelementptr inbounds %struct.most_channel_config, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %buffer_size, align 2
  %conv = zext i16 %47 to i32
  %mbo_offs = getelementptr inbounds %struct.comp_channel, ptr %2, i32 0, i32 9
  %48 = ptrtoint ptr %mbo_offs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mbo_offs, align 4
  %sub = sub i32 %conv, %49
  %50 = call i32 @llvm.umin.i32(i32 %sub, i32 %count)
  %51 = ptrtoint ptr %mbo to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mbo, align 4
  %virt_address = getelementptr inbounds %struct.mbo, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %virt_address to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %virt_address, align 4
  %add.ptr = getelementptr i8, ptr %54, i32 %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp9.i.i = icmp slt i32 %50, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end36
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.unlock_crit_edge, label %if.then27.i.i, !prof !68

land.rhs16.i.i.unlock_crit_edge:                  ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %unlock

if.then.i.i.i:                                    ; preds = %if.end36
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %50, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %55 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %50, i32 -1226833920) #13, !srcloc !71
  %asmresult.i.i = extractvalue { i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !68

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %50) #8
  %56 = call i32 @llvm.read_register.i32(metadata !55) #8
  %and.i.i.i.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 4
  %58 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !72
  %and.i.i.i.i = and i32 %58, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %50) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #8, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %50, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %50, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.copy_from_user.exit_crit_edge, label %if.then11.i.i, !prof !68

if.end.i.i.copy_from_user.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_from_user.exit

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %50, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %59 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then11.i.i, %if.end.i.i.copy_from_user.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %res.0.i.i)
  %cmp41 = icmp eq i32 %50, %res.0.i.i
  br i1 %cmp41, label %copy_from_user.exit.unlock_crit_edge, label %if.end44

copy_from_user.exit.unlock_crit_edge:             ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end44:                                         ; preds = %copy_from_user.exit
  %sub45 = sub i32 %50, %res.0.i.i
  %60 = ptrtoint ptr %mbo_offs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mbo_offs, align 4
  %add = add i32 %61, %sub45
  store i32 %add, ptr %mbo_offs, align 4
  %62 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cfg, align 4
  %buffer_size49 = getelementptr inbounds %struct.most_channel_config, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %buffer_size49 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %buffer_size49, align 2
  %conv50 = zext i16 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv50)
  %cmp51.not = icmp ult i32 %add, %conv50
  br i1 %cmp51.not, label %lor.lhs.false53, label %if.end44.if.then62_crit_edge

if.end44.if.then62_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62

lor.lhs.false53:                                  ; preds = %if.end44
  %data_type = getelementptr inbounds %struct.most_channel_config, ptr %63, i32 0, i32 1
  %66 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %data_type, align 4
  %.off = add i32 %67, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %lor.lhs.false53.if.then62_crit_edge, label %lor.lhs.false53.unlock_crit_edge

lor.lhs.false53.unlock_crit_edge:                 ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

lor.lhs.false53.if.then62_crit_edge:              ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false53.if.then62_crit_edge, %if.end44.if.then62_crit_edge
  %68 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %out.i, align 4
  %inc = add i32 %69, 1
  store i32 %inc, ptr %out.i, align 4
  %conv64 = trunc i32 %add to i16
  %70 = ptrtoint ptr %mbo to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mbo, align 4
  %buffer_length = getelementptr inbounds %struct.mbo, ptr %71, i32 0, i32 8
  %72 = ptrtoint ptr %buffer_length to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv64, ptr %buffer_length, align 4
  %73 = ptrtoint ptr %mbo_offs to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %mbo_offs, align 4
  call void @most_submit_mbo(ptr noundef %71) #8
  br label %unlock

unlock:                                           ; preds = %if.then62, %lor.lhs.false53.unlock_crit_edge, %copy_from_user.exit.unlock_crit_edge, %if.then27.i.i, %land.rhs16.i.i.unlock_crit_edge, %while.end.unlock_crit_edge, %if.end27.unlock_crit_edge, %entry.unlock_crit_edge
  %ret.0 = phi i32 [ -19, %while.end.unlock_crit_edge ], [ -14, %copy_from_user.exit.unlock_crit_edge ], [ %sub45, %lor.lhs.false53.unlock_crit_edge ], [ %sub45, %if.then62 ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.unlock_crit_edge ], [ -19, %entry.unlock_crit_edge ], [ -19, %if.end27.unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %io_mutex) #8
  br label %cleanup69

cleanup69:                                        ; preds = %unlock, %if.end23, %while.body.cleanup69_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -512, %if.end23 ], [ -11, %while.body.cleanup69_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mbo) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_poll(ptr noundef %filp, ptr noundef %wait) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %1, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %filp, ptr noundef nonnull %1, ptr noundef nonnull %wait) #8
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %io_mutex = getelementptr inbounds %struct.comp_channel, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #8
  %cfg = getelementptr inbounds %struct.comp_channel, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %dev = getelementptr inbounds %struct.comp_channel, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %poll_wait.exit
  br i1 %tobool.not, label %if.then.if.then3_crit_edge, label %lor.lhs.false

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.then
  %fifo = getelementptr inbounds %struct.comp_channel, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fifo, align 4
  %out = getelementptr inbounds %struct.comp_channel, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp1 = icmp eq i32 %11, %13
  br i1 %cmp1, label %lor.lhs.false.if.end20_crit_edge, label %lor.lhs.false.if.then3_crit_edge

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.then.if.then3_crit_edge
  br label %if.end20

if.else:                                          ; preds = %poll_wait.exit
  br i1 %tobool.not, label %if.else.if.then17_crit_edge, label %lor.lhs.false6

if.else.if.then17_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

lor.lhs.false6:                                   ; preds = %if.else
  %fifo8 = getelementptr inbounds %struct.comp_channel, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %fifo8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fifo8, align 4
  %out11 = getelementptr inbounds %struct.comp_channel, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %out11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %out11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp12 = icmp eq i32 %15, %17
  br i1 %cmp12, label %lor.lhs.false15, label %lor.lhs.false6.if.then17_crit_edge

lor.lhs.false6.if.then17_crit_edge:               ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

lor.lhs.false15:                                  ; preds = %lor.lhs.false6
  %iface.i = getelementptr inbounds %struct.comp_channel, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %iface.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iface.i, align 4
  %channel_id.i = getelementptr inbounds %struct.comp_channel, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel_id.i, align 4
  %call.i = tail call i32 @channel_has_mbo(ptr noundef %19, i32 noundef %21, ptr noundef getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 4)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %lor.lhs.false15.if.then17_crit_edge, label %lor.lhs.false15.if.end20_crit_edge

lor.lhs.false15.if.end20_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

lor.lhs.false15.if.then17_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false15.if.then17_crit_edge, %lor.lhs.false6.if.then17_crit_edge, %if.else.if.then17_crit_edge
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %lor.lhs.false15.if.end20_crit_edge, %if.then3, %lor.lhs.false.if.end20_crit_edge
  %mask.0 = phi i32 [ 0, %lor.lhs.false.if.end20_crit_edge ], [ 65, %if.then3 ], [ 260, %if.then17 ], [ 0, %lor.lhs.false15.if.end20_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %io_mutex) #8
  ret i32 %mask.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef %filp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -96
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %private_data, align 4
  %cfg = getelementptr i8, ptr %2, i32 260
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.if.end_crit_edge [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true5
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %9 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_flags, align 4
  %and = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1.not = icmp eq i32 %and, 0
  br i1 %cmp1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true5:                                   ; preds = %entry
  %f_flags6 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %11 = ptrtoint ptr %f_flags6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f_flags6, align 4
  %and7 = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and7)
  %cmp8.not = icmp eq i32 %and7, 1
  br i1 %cmp8.not, label %land.lhs.true5.if.end_crit_edge, label %land.lhs.true5.cleanup_crit_edge

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true5.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %io_mutex = getelementptr i8, ptr %2, i32 164
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #8
  %dev = getelementptr i8, ptr %2, i32 160
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end11

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end
  %access_ref = getelementptr i8, ptr %2, i32 296
  %15 = ptrtoint ptr %access_ref to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %access_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.not = icmp eq i32 %16, 0
  br i1 %tobool12.not, label %if.end15, label %if.end11.cleanup.sink.split_crit_edge

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end11
  %mbo_offs = getelementptr i8, ptr %2, i32 272
  %17 = ptrtoint ptr %mbo_offs to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %mbo_offs, align 4
  %iface = getelementptr i8, ptr %2, i32 256
  %18 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iface, align 4
  %channel_id = getelementptr i8, ptr %2, i32 264
  %20 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel_id, align 4
  %call = tail call i32 @most_start_channel(ptr noundef %19, i32 noundef %21, ptr noundef getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 4)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %if.then17, label %if.end15.cleanup.sink.split_crit_edge

if.end15.cleanup.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %access_ref to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %access_ref, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then17, %if.end15.cleanup.sink.split_crit_edge, %if.end11.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -19, %if.end.cleanup.sink.split_crit_edge ], [ -16, %if.end11.cleanup.sink.split_crit_edge ], [ %call, %if.then17 ], [ %call, %if.end15.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %io_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %land.lhs.true5.cleanup_crit_edge ], [ -13, %land.lhs.true.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_close(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %filp) #3 align 64 {
entry:
  %mbo.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %io_mutex = getelementptr i8, ptr %2, i32 164
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #8
  %unlink = getelementptr i8, ptr %2, i32 -44
  tail call void @_raw_spin_lock(ptr noundef %unlink) #8
  %access_ref = getelementptr i8, ptr %2, i32 296
  %3 = ptrtoint ptr %access_ref to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %access_ref, align 4
  tail call void @_raw_spin_unlock(ptr noundef %unlink) #8
  %dev = getelementptr i8, ptr %2, i32 160
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mbo.i) #8
  %6 = ptrtoint ptr %mbo.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %mbo.i, align 4, !annotation !65
  %fifo.i = getelementptr i8, ptr %2, i32 276
  %call5.i = call i32 @__kfifo_out(ptr noundef %fifo.i, ptr noundef nonnull %mbo.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not6.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not6.i, label %if.then.stop_channel.exit_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.stop_channel.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop_channel.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %7 = ptrtoint ptr %mbo.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mbo.i, align 4
  call void @most_put_mbo(ptr noundef %8) #8
  %call.i = call i32 @__kfifo_out(ptr noundef %fifo.i, ptr noundef nonnull %mbo.i, i32 noundef 1) #8
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i.stop_channel.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.stop_channel.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop_channel.exit

stop_channel.exit:                                ; preds = %while.body.i.stop_channel.exit_crit_edge, %if.then.stop_channel.exit_crit_edge
  %iface.i = getelementptr i8, ptr %2, i32 256
  %9 = ptrtoint ptr %iface.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iface.i, align 4
  %channel_id.i = getelementptr i8, ptr %2, i32 264
  %11 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel_id.i, align 4
  %call2.i = call i32 @most_stop_channel(ptr noundef %10, i32 noundef %12, ptr noundef getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 4)) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mbo.i) #8
  call void @mutex_unlock(ptr noundef %io_mutex) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %2, i32 -96
  tail call void @mutex_unlock(ptr noundef %io_mutex) #8
  %devno.i = getelementptr i8, ptr %2, i32 268
  %13 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devno.i, align 4
  %and.i = and i32 %14, 1048575
  tail call void @ida_free(ptr noundef getelementptr inbounds (%struct.cdev_component, ptr @comp, i32 0, i32 1), i32 noundef %and.i) #8
  %fifo.i12 = getelementptr i8, ptr %2, i32 276
  tail call void @__kfifo_free(ptr noundef %fifo.i12) #8
  tail call void @kfree(ptr noundef %add.ptr) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %stop_channel.exit
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @most_put_mbo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @most_submit_mbo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @most_get_mbo(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @channel_has_mbo(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_start_channel(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_stop_channel(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_register_component(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_register_configfs_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !20, !21, !23, !24, !26, !28, !30, !32, !33, !35, !37, !39, !40, !42, !43, !44, !45, !46, !47, !49, !51, !52, !54}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_most_cdev__232_537_most_cdev_init6, !1, !"__initcall__kmod_most_cdev__232_537_most_cdev_init6", i1 false, i1 false}
!1 = !{!"../drivers/most/most_cdev.c", i32 537, i32 1}
!2 = !{ptr @__exitcall_most_cdev_exit, !3, !"__exitcall_most_cdev_exit", i1 false, i1 false}
!3 = !{!"../drivers/most/most_cdev.c", i32 538, i32 1}
!4 = !{ptr @__UNIQUE_ID_author233, !5, !"__UNIQUE_ID_author233", i1 false, i1 false}
!5 = !{!"../drivers/most/most_cdev.c", i32 539, i32 1}
!6 = !{ptr @__UNIQUE_ID_file234, !7, !"__UNIQUE_ID_file234", i1 false, i1 false}
!7 = !{!"../drivers/most/most_cdev.c", i32 540, i32 1}
!8 = !{ptr @__UNIQUE_ID_license235, !7, !"__UNIQUE_ID_license235", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description236, !10, !"__UNIQUE_ID_description236", i1 false, i1 false}
!10 = !{!"../drivers/most/most_cdev.c", i32 541, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/most/most_cdev.c", i32 481, i32 11}
!13 = !{ptr @comp, !14, !"comp", i1 false, i1 false}
!14 = !{!"../drivers/most/most_cdev.c", i32 478, i32 30}
!15 = !{ptr @comp_probe.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/most/most_cdev.c", i32 447, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @comp_probe.__key.2, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/most/most_cdev.c", i32 452, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @comp_probe.__key.4, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/most/most_cdev.c", i32 453, i32 2}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/most/most_cdev.c", i32 457, i32 59}
!26 = !{ptr @channel_fops, !27, !"channel_fops", i1 false, i1 false}
!27 = !{!"../drivers/most/most_cdev.c", i32 303, i32 37}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/most/most_cdev.c", i32 248, i32 7}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/most/most_cdev.c", i32 48, i32 8}
!39 = !{ptr @ch_list_lock, !38, !"ch_list_lock", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/most/most_cdev.c", i32 393, i32 3}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @comp_tx_completion._entry, !41, !"_entry", i1 false, i1 false}
!46 = !{ptr @comp_tx_completion._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @channel_list, !48, !"channel_list", i1 false, i1 false}
!48 = !{!"../drivers/most/most_cdev.c", i32 47, i32 8}
!49 = !{ptr @most_cdev_init.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/most/most_cdev.c", i32 493, i32 15}
!51 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @xa_init_flags.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!54 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
!66 = !{i64 2153899289}
!67 = !{!"branch_weights", i32 1, i32 2000}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i64 2152416047, i64 2152416072}
!70 = !{i64 2153884523}
!71 = !{i64 2152415366, i64 2152415391}
!72 = !{i64 4910921}
!73 = !{i64 4911118}
!74 = !{i64 2152396351}
