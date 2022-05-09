; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/remoteproc_virtio.c_pt.bc'
source_filename = "../drivers/remoteproc/remoteproc_virtio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rproc_vq_interrupt\22, \22a\22\09"
module asm "\09.weak\09__crc_rproc_vq_interrupt\09\09\09\09"
module asm "\09.long\09__crc_rproc_vq_interrupt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_vq_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_vq_interrupt\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_vq_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rproc_vring = type { ptr, i32, i32, i32, i32, ptr, ptr }
%struct.rproc_vdev = type { %struct.kref, %struct.rproc_subdev, %struct.device, i32, %struct.list_head, ptr, [2 x %struct.rproc_vring], i32, i32 }
%struct.rproc_subdev = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rproc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rproc_mem_entry = type { ptr, i8, i32, i32, i32, ptr, [32 x i8], %struct.list_head, i32, i32, i32, ptr, ptr }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.fw_rsc_vdev = type { i32, i32, i32, i32, i32, i8, i8, [2 x i8], [0 x %struct.fw_rsc_vdev_vring] }
%struct.fw_rsc_vdev_vring = type { i32, i32, i32, i32, i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }

@rproc_vq_interrupt.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"remoteproc\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rproc_vq_interrupt\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/remoteproc/remoteproc_virtio.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vq index %d is interrupted\0A\00", [36 x i8] zeroinitializer }, align 32
@__kstrtab_rproc_vq_interrupt = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_vq_interrupt = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_vq_interrupt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_vq_interrupt to i32), ptr @__kstrtab_rproc_vq_interrupt, ptr @__kstrtabns_rproc_vq_interrupt }, section "___ksymtab+rproc_vq_interrupt", align 4
@rproc_add_virtio_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 352, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c".kick method not defined for %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rproc_add_virtio_dev\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rproc_add_virtio_dev._entry_ptr = internal global ptr @rproc_add_virtio_dev._entry, section ".printk_index", align 4
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vdev%dbuffer\00", [19 x i8] zeroinitializer }, align 32
@rproc_add_virtio_dev._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 368, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't associate reserved memory\0A\00", [63 x i8] zeroinitializer }, align 32
@rproc_add_virtio_dev._entry_ptr.11 = internal global ptr @rproc_add_virtio_dev._entry.9, section ".printk_index", align 4
@rproc_add_virtio_dev._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.2, i32 374, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vdev %d buffer already mapped\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rproc_add_virtio_dev._entry_ptr.15 = internal global ptr @rproc_add_virtio_dev._entry.12, section ".printk_index", align 4
@rproc_add_virtio_dev._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.2, i32 386, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to associate buffer\0A\00", [36 x i8] zeroinitializer }, align 32
@rproc_add_virtio_dev._entry_ptr.18 = internal global ptr @rproc_add_virtio_dev._entry.16, section ".printk_index", align 4
@rproc_virtio_config_ops = internal constant { %struct.virtio_config_ops, [36 x i8] } { %struct.virtio_config_ops { ptr null, ptr @rproc_virtio_get, ptr @rproc_virtio_set, ptr null, ptr @rproc_virtio_get_status, ptr @rproc_virtio_set_status, ptr @rproc_virtio_reset, ptr @rproc_virtio_find_vqs, ptr @rproc_virtio_del_vqs, ptr @rproc_virtio_get_features, ptr @rproc_virtio_finalize_features, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rproc_add_virtio_dev._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.2, i32 431, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register vdev: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@rproc_add_virtio_dev._entry_ptr.21 = internal global ptr @rproc_add_virtio_dev._entry.19, section ".printk_index", align 4
@rproc_add_virtio_dev._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.2, i32 435, ptr @.str.24, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"registered %s (type %d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rproc_add_virtio_dev._entry_ptr.25 = internal global ptr @rproc_add_virtio_dev._entry.22, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rproc_virtio_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 274, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"rproc_virtio_get: access out of bounds\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rproc_virtio_get\00", [47 x i8] zeroinitializer }, align 32
@rproc_virtio_get._entry_ptr = internal global ptr @rproc_virtio_get._entry, section ".printk_index", align 4
@rproc_virtio_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 292, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"rproc_virtio_set: access out of bounds\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rproc_virtio_set\00", [47 x i8] zeroinitializer }, align 32
@rproc_virtio_set._entry_ptr = internal global ptr @rproc_virtio_set._entry, section ".printk_index", align 4
@rproc_virtio_set_status.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rproc_virtio_set_status\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"status: %d\0A\00", [20 x i8] zeroinitializer }, align 32
@rproc_virtio_reset.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rproc_virtio_reset\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reset !\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdev%dvring%d\00", [18 x i8] zeroinitializer }, align 32
@rp_find_vq.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rp_find_vq\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"vring%d: va %pK qsz %d notifyid %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rp_find_vq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 123, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vring_new_virtqueue %s failed\0A\00", [33 x i8] zeroinitializer }, align 32
@rp_find_vq._entry_ptr = internal global ptr @rp_find_vq._entry, section ".printk_index", align 4
@rproc_virtio_notify.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rproc_virtio_notify\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kicking vq index: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 67, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 352, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 357, i32 43 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 368, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 373, i32 5 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 386, i32 5 }
@___asan_gen_.91 = private unnamed_addr constant [24 x i8] c"rproc_virtio_config_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 299, i32 39 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 431, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 435, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 274, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 292, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 203, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 214, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 100, i32 43 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 113, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 123, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [42 x i8] c"../drivers/remoteproc/remoteproc_virtio.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 45, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__ksymtab_rproc_vq_interrupt, ptr @rp_find_vq._entry, ptr @rp_find_vq._entry_ptr, ptr @rproc_add_virtio_dev._entry, ptr @rproc_add_virtio_dev._entry.12, ptr @rproc_add_virtio_dev._entry.16, ptr @rproc_add_virtio_dev._entry.19, ptr @rproc_add_virtio_dev._entry.22, ptr @rproc_add_virtio_dev._entry.9, ptr @rproc_add_virtio_dev._entry_ptr, ptr @rproc_add_virtio_dev._entry_ptr.11, ptr @rproc_add_virtio_dev._entry_ptr.15, ptr @rproc_add_virtio_dev._entry_ptr.18, ptr @rproc_add_virtio_dev._entry_ptr.21, ptr @rproc_add_virtio_dev._entry_ptr.25, ptr @rproc_virtio_get._entry, ptr @rproc_virtio_get._entry_ptr, ptr @rproc_virtio_set._entry, ptr @rproc_virtio_set._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @rproc_virtio_config_ops, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_add_virtio_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_add_virtio_dev._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_add_virtio_dev._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_add_virtio_dev._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_virtio_config_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_add_virtio_dev._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_add_virtio_dev._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_virtio_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_virtio_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rp_find_vq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rproc_vq_interrupt(ptr noundef %rproc, i32 noundef %notifyid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rproc_vq_interrupt.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rproc_vq_interrupt, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !82

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rproc_vq_interrupt.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %notifyid) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %notifyids = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 19
  %call3 = tail call ptr @idr_find(ptr noundef %notifyids, i32 noundef %notifyid) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %vq = getelementptr inbounds %struct.rproc_vring, ptr %call3, i32 0, i32 6
  %0 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vq, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 @vring_interrupt(i32 noundef 0, ptr noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end7 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vring_interrupt(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rproc_add_virtio_dev(ptr noundef %rvdev, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rproc1 = getelementptr inbounds %struct.rproc_vdev, ptr %rvdev, i32 0, i32 5
  %0 = ptrtoint ptr %rproc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rproc1, align 4
  %dev2 = getelementptr inbounds %struct.rproc_vdev, ptr %rvdev, i32 0, i32 2
  %ops = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 8
  %kick = getelementptr inbounds %struct.rproc_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %kick to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kick, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.4, ptr noundef %7) #9
  br label %cleanup66

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.rproc_vdev, ptr %rvdev, i32 0, i32 8
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %call = tail call ptr (ptr, ptr, ...) @rproc_find_carveout_by_name(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %9) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else36, label %if.then3

if.then3:                                         ; preds = %if.end
  %of_resm_idx = getelementptr inbounds %struct.rproc_mem_entry, ptr %call, i32 0, i32 10
  %10 = ptrtoint ptr %of_resm_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %of_resm_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp4.not = icmp eq i32 %11, -1
  br i1 %cmp4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then3
  %parent = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call8 = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %dev2, ptr noundef %15, i32 noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then5.if.end42_crit_edge, label %cleanup

if.then5.if.end42_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

cleanup:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.10) #9
  br label %cleanup66

if.else:                                          ; preds = %if.then3
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 4
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %if.else23, label %do.end19

do.end19:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.13, i32 noundef %19) #9
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 4
  %call22 = tail call i32 @rproc_va_to_pa(ptr noundef %21) #6
  br label %if.end24

if.else23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dma = getelementptr inbounds %struct.rproc_mem_entry, ptr %call, i32 0, i32 2
  %22 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %do.end19
  %pa.0 = phi i32 [ %call22, %do.end19 ], [ %23, %if.else23 ]
  %da = getelementptr inbounds %struct.rproc_mem_entry, ptr %call, i32 0, i32 4
  %24 = ptrtoint ptr %da to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %da, align 4
  %len = getelementptr inbounds %struct.rproc_mem_entry, ptr %call, i32 0, i32 3
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %call25 = tail call i32 @dma_declare_coherent_memory(ptr noundef %dev2, i32 noundef %pa.0, i32 noundef %25, i32 noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end30, label %if.end24.if.end42_crit_edge

if.end24.if.end42_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.17) #9
  br label %cleanup66

if.else36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %parent39 = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 6, i32 1
  %28 = ptrtoint ptr %parent39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent39, align 8
  %of_node40 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %of_node40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node40, align 8
  %call41 = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %dev2, ptr noundef %31, i32 noundef 0) #6
  br label %if.end42

if.end42:                                         ; preds = %if.else36, %if.end24.if.end42_crit_edge, %if.then5.if.end42_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 1064) #10
  %tobool44.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool44.not, label %if.end42.cleanup66_crit_edge, label %if.end46

if.end42.cleanup66_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup66

if.end46:                                         ; preds = %if.end42
  %id47 = getelementptr inbounds %struct.virtio_device, ptr %call7.i.i, i32 0, i32 7
  %33 = ptrtoint ptr %id47 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %id, ptr %id47, align 8
  %config = getelementptr inbounds %struct.virtio_device, ptr %call7.i.i, i32 0, i32 8
  %34 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @rproc_virtio_config_ops, ptr %config, align 8
  %dev48 = getelementptr inbounds %struct.virtio_device, ptr %call7.i.i, i32 0, i32 6
  %parent49 = getelementptr inbounds %struct.virtio_device, ptr %call7.i.i, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %parent49 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev2, ptr %parent49, align 8
  %release = getelementptr inbounds %struct.virtio_device, ptr %call7.i.i, i32 0, i32 6, i32 35
  %36 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @rproc_virtio_dev_release, ptr %release, align 4
  %dev51 = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 6
  %call52 = tail call ptr @get_device(ptr noundef %dev51) #6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rvdev, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %rvdev, i32 1, i32 3, i32 1) #6
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rvdev, ptr %rvdev, i32 1, ptr elementtype(i32) %rvdev) #6, !srcloc !83
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end46.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !84

if.end46.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end46
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %38 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %.not.i.i.i.i = icmp sgt i32 %38, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !85

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end46.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end46.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %rvdev, i32 noundef %.sink.i.i.i.i) #6
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %call53 = tail call i32 @register_virtio_device(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %do.end63, label %if.then55

if.then55:                                        ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @put_device(ptr noundef %dev48) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.20, i32 noundef %call53) #9
  br label %cleanup66

do.end63:                                         ; preds = %kref_get.exit
  %init_name.i = getelementptr inbounds %struct.virtio_device, ptr %call7.i.i, i32 0, i32 6, i32 3
  %39 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end63.dev_name.exit_crit_edge

do.end63.dev_name.exit_crit_edge:                 ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev48, align 8
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end63.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %42, %if.end.i ], [ %40, %do.end63.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.23, ptr noundef %retval.0.i, i32 noundef %id) #9
  br label %cleanup66

cleanup66:                                        ; preds = %dev_name.exit, %if.then55, %if.end42.cleanup66_crit_edge, %do.end30, %cleanup, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call53, %if.then55 ], [ 0, %dev_name.exit ], [ -12, %if.end42.cleanup66_crit_edge ], [ %call8, %cleanup ], [ %call25, %do.end30 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_find_carveout_by_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_va_to_pa(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_declare_coherent_memory(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rproc_virtio_dev_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -96
  %parent.i = getelementptr i8, ptr %dev, i32 136
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i7 = getelementptr i8, ptr %1, i32 -32
  %rproc.i = getelementptr i8, ptr %1, i32 940
  %2 = ptrtoint ptr %rproc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rproc.i, align 4
  tail call void @kfree(ptr noundef %add.ptr.i) #6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i7, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i7, i32 1, i32 3, i32 1) #6
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i7, ptr %add.ptr.i7, i32 1, ptr elementtype(i32) %add.ptr.i7) #6, !srcloc !87
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !85

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr.i7, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @rproc_vdev_release(ptr noundef %add.ptr.i7) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %dev4 = getelementptr inbounds %struct.rproc, ptr %3, i32 0, i32 6
  tail call void @put_device(ptr noundef %dev4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rproc_remove_virtio_dev(ptr noundef %dev, ptr nocapture noundef readnone %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -96
  tail call void @unregister_virtio_device(ptr noundef %add.ptr.i) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rproc_virtio_get(ptr noundef %vdev, i32 noundef %offset, ptr nocapture noundef writeonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %rproc = getelementptr i8, ptr %1, i32 940
  %2 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rproc, align 4
  %table_ptr = getelementptr inbounds %struct.rproc, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %table_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table_ptr, align 8
  %rsc_offset = getelementptr i8, ptr %1, i32 1000
  %6 = ptrtoint ptr %rsc_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rsc_offset, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %add = add i32 %len, %offset
  %config_len = getelementptr inbounds %struct.fw_rsc_vdev, ptr %add.ptr, i32 0, i32 4
  %8 = ptrtoint ptr %config_len to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %config_len, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp = icmp ugt i32 %add, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp2 = icmp ult i32 %add, %len
  %or.cond = or i1 %cmp2, %cmp
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %vring = getelementptr inbounds %struct.fw_rsc_vdev, ptr %add.ptr, i32 0, i32 8
  %num_of_vrings = getelementptr inbounds %struct.fw_rsc_vdev, ptr %add.ptr, i32 0, i32 6
  %10 = ptrtoint ptr %num_of_vrings to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_of_vrings, align 1
  %idxprom = zext i8 %11 to i32
  %arrayidx = getelementptr [0 x %struct.fw_rsc_vdev_vring], ptr %vring, i32 0, i32 %idxprom
  %add.ptr3 = getelementptr i8, ptr %arrayidx, i32 %offset
  %12 = call ptr @memcpy(ptr %buf, ptr %add.ptr3, i32 %len)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rproc_virtio_set(ptr noundef %vdev, i32 noundef %offset, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %rproc = getelementptr i8, ptr %1, i32 940
  %2 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rproc, align 4
  %table_ptr = getelementptr inbounds %struct.rproc, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %table_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table_ptr, align 8
  %rsc_offset = getelementptr i8, ptr %1, i32 1000
  %6 = ptrtoint ptr %rsc_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rsc_offset, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %add = add i32 %len, %offset
  %config_len = getelementptr inbounds %struct.fw_rsc_vdev, ptr %add.ptr, i32 0, i32 4
  %8 = ptrtoint ptr %config_len to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %config_len, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp = icmp ugt i32 %add, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp2 = icmp ult i32 %add, %len
  %or.cond = or i1 %cmp2, %cmp
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %vring = getelementptr inbounds %struct.fw_rsc_vdev, ptr %add.ptr, i32 0, i32 8
  %num_of_vrings = getelementptr inbounds %struct.fw_rsc_vdev, ptr %add.ptr, i32 0, i32 6
  %10 = ptrtoint ptr %num_of_vrings to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_of_vrings, align 1
  %idxprom = zext i8 %11 to i32
  %arrayidx = getelementptr [0 x %struct.fw_rsc_vdev_vring], ptr %vring, i32 0, i32 %idxprom
  %add.ptr3 = getelementptr i8, ptr %arrayidx, i32 %offset
  %12 = call ptr @memcpy(ptr %add.ptr3, ptr %buf, i32 %len)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @rproc_virtio_get_status(ptr nocapture noundef readonly %vdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %rproc = getelementptr i8, ptr %1, i32 940
  %2 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rproc, align 4
  %table_ptr = getelementptr inbounds %struct.rproc, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %table_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table_ptr, align 8
  %rsc_offset = getelementptr i8, ptr %1, i32 1000
  %6 = ptrtoint ptr %rsc_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rsc_offset, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %status = getelementptr inbounds %struct.fw_rsc_vdev, ptr %add.ptr, i32 0, i32 5
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %status, align 1
  ret i8 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rproc_virtio_set_status(ptr noundef %vdev, i8 noundef zeroext %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %rproc = getelementptr i8, ptr %1, i32 940
  %2 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rproc, align 4
  %table_ptr = getelementptr inbounds %struct.rproc, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %table_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table_ptr, align 8
  %rsc_offset = getelementptr i8, ptr %1, i32 1000
  %6 = ptrtoint ptr %rsc_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rsc_offset, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %status1 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %add.ptr, i32 0, i32 5
  %8 = ptrtoint ptr %status1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %status, ptr %status1, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rproc_virtio_set_status.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rproc_virtio_set_status, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !82

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  %conv = zext i8 %status to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rproc_virtio_set_status.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rproc_virtio_reset(ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %rproc = getelementptr i8, ptr %1, i32 940
  %2 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rproc, align 4
  %table_ptr = getelementptr inbounds %struct.rproc, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %table_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table_ptr, align 8
  %rsc_offset = getelementptr i8, ptr %1, i32 1000
  %6 = ptrtoint ptr %rsc_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rsc_offset, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %status = getelementptr inbounds %struct.fw_rsc_vdev, ptr %add.ptr, i32 0, i32 5
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %status, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rproc_virtio_reset.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rproc_virtio_reset, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !82

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rproc_virtio_reset.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.33) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rproc_virtio_find_vqs(ptr noundef %vdev, i32 noundef %nvqs, ptr nocapture noundef %vqs, ptr nocapture noundef readonly %callbacks, ptr nocapture noundef readonly %names, ptr noundef readonly %ctx, ptr nocapture noundef readnone %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nvqs)
  %cmp34.not = icmp eq i32 %nvqs, 0
  br i1 %cmp34.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %tobool4.not = icmp eq ptr %ctx, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %queue_idx.038 = phi i32 [ 0, %for.body.lr.ph ], [ %queue_idx.1, %for.inc.for.body_crit_edge ]
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc15, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %names, i32 %i.035
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx1 = getelementptr ptr, ptr %vqs, i32 %i.035
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx1, align 4
  br label %for.inc

if.end:                                           ; preds = %for.body
  %inc = add i32 %queue_idx.038, 1
  %arrayidx2 = getelementptr ptr, ptr %callbacks, i32 %i.035
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx2, align 4
  br i1 %tobool4.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx5 = getelementptr i8, ptr %ctx, i32 %i.035
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx5, align 1, !range !89
  %7 = zext i8 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool7 = icmp ne i32 %cond, 0
  %call = tail call fastcc ptr @rp_find_vq(ptr noundef %vdev, i32 noundef %queue_idx.038, ptr noundef %4, ptr noundef nonnull %1, i1 noundef zeroext %tobool7)
  %arrayidx8 = getelementptr ptr, ptr %vqs, i32 %i.035
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %arrayidx8, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %cond.end.for.inc_crit_edge

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then11:                                        ; preds = %cond.end
  %9 = ptrtoint ptr %call to i32
  %vqs.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 10
  %10 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vqs.i, align 8
  %cmp.not18.i = icmp eq ptr %11, %vqs.i
  br i1 %cmp.not18.i, label %if.then11.cleanup_crit_edge, label %if.then11.for.body.i_crit_edge

if.then11.for.body.i_crit_edge:                   ; preds = %if.then11
  br label %for.body.i

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then11.for.body.i_crit_edge
  %vq.019.i = phi ptr [ %n.0.i, %for.body.i.for.body.i_crit_edge ], [ %11, %if.then11.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %vq.019.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %n.0.i = load ptr, ptr %vq.019.i, align 4
  %priv.i = getelementptr inbounds %struct.virtqueue, ptr %vq.019.i, i32 0, i32 6
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i, align 4
  %vq7.i = getelementptr inbounds %struct.rproc_vring, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %vq7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %vq7.i, align 4
  tail call void @vring_del_virtqueue(ptr noundef %vq.019.i) #6
  %cmp.not.i = icmp eq ptr %n.0.i, %vqs.i
  br i1 %cmp.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %cond.end.for.inc_crit_edge, %if.then
  %queue_idx.1 = phi i32 [ %inc, %cond.end.for.inc_crit_edge ], [ %queue_idx.038, %if.then ]
  %inc15 = add nuw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc15, %nvqs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then11.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %9, %for.body.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rproc_virtio_del_vqs(ptr noundef readonly %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vqs.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 10
  %0 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vqs.i, align 8
  %cmp.not18.i = icmp eq ptr %1, %vqs.i
  br i1 %cmp.not18.i, label %entry.__rproc_virtio_del_vqs.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.__rproc_virtio_del_vqs.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__rproc_virtio_del_vqs.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %vq.019.i = phi ptr [ %n.0.i, %for.body.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %vq.019.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0.i = load ptr, ptr %vq.019.i, align 4
  %priv.i = getelementptr inbounds %struct.virtqueue, ptr %vq.019.i, i32 0, i32 6
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 4
  %vq7.i = getelementptr inbounds %struct.rproc_vring, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %vq7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %vq7.i, align 4
  tail call void @vring_del_virtqueue(ptr noundef %vq.019.i) #6
  %cmp.not.i = icmp eq ptr %n.0.i, %vqs.i
  br i1 %cmp.not.i, label %for.body.i.__rproc_virtio_del_vqs.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.__rproc_virtio_del_vqs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__rproc_virtio_del_vqs.exit

__rproc_virtio_del_vqs.exit:                      ; preds = %for.body.i.__rproc_virtio_del_vqs.exit_crit_edge, %entry.__rproc_virtio_del_vqs.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @rproc_virtio_get_features(ptr nocapture noundef readonly %vdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %rproc = getelementptr i8, ptr %1, i32 940
  %2 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rproc, align 4
  %table_ptr = getelementptr inbounds %struct.rproc, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %table_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table_ptr, align 8
  %rsc_offset = getelementptr i8, ptr %1, i32 1000
  %6 = ptrtoint ptr %rsc_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rsc_offset, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %dfeatures = getelementptr inbounds %struct.fw_rsc_vdev, ptr %add.ptr, i32 0, i32 2
  %8 = ptrtoint ptr %dfeatures to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %dfeatures, align 1
  %conv = zext i32 %9 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rproc_virtio_finalize_features(ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %rproc = getelementptr i8, ptr %1, i32 940
  %2 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rproc, align 4
  %table_ptr = getelementptr inbounds %struct.rproc, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %table_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table_ptr, align 8
  %rsc_offset = getelementptr i8, ptr %1, i32 1000
  %6 = ptrtoint ptr %rsc_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rsc_offset, align 8
  tail call void @vring_transport_features(ptr noundef %vdev) #6
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %8 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %9, -17179869185
  store i64 %and.i.i, ptr %features.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.i.i)
  %10 = icmp ult i64 %and.i.i, 4294967296
  br i1 %10, label %do.end10, label %do.body5, !prof !85

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/remoteproc/remoteproc_virtio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 252, 0\0A.popsection", ""() #6, !srcloc !90
  unreachable

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i64 %9 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %gfeatures = getelementptr inbounds %struct.fw_rsc_vdev, ptr %add.ptr, i32 0, i32 3
  %11 = ptrtoint ptr %gfeatures to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %conv, ptr %gfeatures, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rp_find_vq(ptr noundef %vdev, i32 noundef %id, ptr noundef %callback, ptr noundef %name, i1 noundef zeroext %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -32
  %rproc.i = getelementptr i8, ptr %1, i32 940
  %2 = ptrtoint ptr %rproc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rproc.i, align 4
  %dev2 = getelementptr inbounds %struct.rproc, ptr %3, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %id)
  %cmp = icmp ugt i32 %id, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %index = getelementptr i8, ptr %1, i32 1004
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %call6 = tail call ptr (ptr, ptr, ...) @rproc_find_carveout_by_name(ptr noundef %3, ptr noundef nonnull @.str.34, i32 noundef %5, i32 noundef %id) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %lor.lhs.false

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %6 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call6, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end11

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.rproc_vdev, ptr %add.ptr.i, i32 0, i32 6, i32 %id
  %len13 = getelementptr %struct.rproc_vdev, ptr %add.ptr.i, i32 0, i32 6, i32 %id, i32 1
  %8 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len13, align 4
  %align = getelementptr %struct.rproc_vdev, ptr %add.ptr.i, i32 0, i32 6, i32 %id, i32 3
  %10 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %align, align 4
  %reass.mul.i = mul i32 %9, 18
  %add3.i = add i32 %11, 5
  %sub.i = add i32 %add3.i, %reass.mul.i
  %neg.i = sub i32 0, %11
  %and.i = and i32 %sub.i, %neg.i
  %mul6.i = shl i32 %9, 3
  %add5.i = or i32 %mul6.i, 6
  %add7.i = add i32 %add5.i, %and.i
  %12 = call ptr @memset(ptr %7, i32 0, i32 %add7.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rp_find_vq.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rp_find_vq, %if.then20)) #6
          to label %do.end [label %if.then20], !srcloc !82

if.then20:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %notifyid = getelementptr %struct.rproc_vdev, ptr %add.ptr.i, i32 0, i32 6, i32 %id, i32 4
  %13 = ptrtoint ptr %notifyid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %notifyid, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rp_find_vq.__UNIQUE_ID_ddebug235, ptr noundef %dev2, ptr noundef nonnull @.str.36, i32 noundef %id, ptr noundef nonnull %7, i32 noundef %9, i32 noundef %14) #6
  br label %do.end

do.end:                                           ; preds = %if.then20, %if.end11
  %15 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %align, align 4
  %call24 = tail call ptr @vring_new_virtqueue(i32 noundef %id, i32 noundef %9, i32 noundef %16, ptr noundef %vdev, i1 noundef zeroext false, i1 noundef zeroext %ctx, ptr noundef nonnull %7, ptr noundef nonnull @rproc_virtio_notify, ptr noundef %callback, ptr noundef nonnull %name) #6
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %do.end29, label %if.end31

do.end29:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.37, ptr noundef nonnull %name) #9
  tail call void @rproc_free_vring(ptr noundef %arrayidx) #6
  br label %cleanup

if.end31:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %vq32 = getelementptr %struct.rproc_vdev, ptr %add.ptr.i, i32 0, i32 6, i32 %id, i32 6
  %17 = ptrtoint ptr %vq32 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call24, ptr %vq32, align 4
  %priv = getelementptr inbounds %struct.virtqueue, ptr %call24, i32 0, i32 6
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx, ptr %priv, align 4
  %table_ptr = getelementptr inbounds %struct.rproc, ptr %3, i32 0, i32 25
  %19 = ptrtoint ptr %table_ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %table_ptr, align 8
  %rsc_offset = getelementptr i8, ptr %1, i32 1000
  %21 = ptrtoint ptr %rsc_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rsc_offset, align 8
  %add.ptr = getelementptr i8, ptr %20, i32 %22
  %da = getelementptr inbounds %struct.rproc_mem_entry, ptr %call6, i32 0, i32 4
  %23 = ptrtoint ptr %da to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %da, align 4
  %vring33 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %add.ptr, i32 0, i32 8
  %arrayidx34 = getelementptr [0 x %struct.fw_rsc_vdev_vring], ptr %vring33, i32 0, i32 %id
  %25 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %arrayidx34, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end29, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call24, %if.end31 ], [ inttoptr (i32 -12 to ptr), %do.end29 ], [ null, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vring_new_virtqueue(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @rproc_virtio_notify(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %rvdev = getelementptr inbounds %struct.rproc_vring, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %rvdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rvdev, align 4
  %rproc1 = getelementptr inbounds %struct.rproc_vdev, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %rproc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rproc1, align 4
  %notifyid2 = getelementptr inbounds %struct.rproc_vring, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %notifyid2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %notifyid2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rproc_virtio_notify.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rproc_virtio_notify, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !82

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.rproc, ptr %5, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rproc_virtio_notify.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %7) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ops = getelementptr inbounds %struct.rproc, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 8
  %kick = getelementptr inbounds %struct.rproc_ops, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %kick to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kick, align 4
  tail call void %11(ptr noundef %5, i32 noundef %7) #6
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_free_vring(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vring_del_virtqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vring_transport_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_vdev_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !14, !15, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !67, !68, !69, !71, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/remoteproc_virtio.c", i32 67, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rproc_vq_interrupt.__UNIQUE_ID_ddebug234, !1, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!6 = !{ptr @__ksymtab_rproc_vq_interrupt, !7, !"__ksymtab_rproc_vq_interrupt", i1 false, i1 false}
!7 = !{!"../drivers/remoteproc/remoteproc_virtio.c", i32 75, i32 1}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/remoteproc/remoteproc_virtio.c", i32 352, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rproc_add_virtio_dev._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @rproc_add_virtio_dev._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/remoteproc/remoteproc_virtio.c", i32 357, i32 43}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/remoteproc/remoteproc_virtio.c", i32 368, i32 5}
!19 = !{ptr @rproc_add_virtio_dev._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @rproc_add_virtio_dev._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/remoteproc/remoteproc_virtio.c", i32 373, i32 5}
!23 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rproc_add_virtio_dev._entry.12, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @rproc_add_virtio_dev._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/remoteproc/remoteproc_virtio.c", i32 386, i32 5}
!28 = !{ptr @rproc_add_virtio_dev._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rproc_add_virtio_dev._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/remoteproc/remoteproc_virtio.c", i32 431, i32 3}
!32 = !{ptr @rproc_add_virtio_dev._entry.19, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rproc_add_virtio_dev._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/remoteproc/remoteproc_virtio.c", i32 435, i32 2}
!36 = !{ptr @.str.24, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rproc_add_virtio_dev._entry.22, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @rproc_add_virtio_dev._entry_ptr.25, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @rproc_virtio_config_ops, !40, !"rproc_virtio_config_ops", i1 false, i1 false}
!40 = !{!"../drivers/remoteproc/remoteproc_virtio.c", i32 299, i32 39}
!41 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/remoteproc/remoteproc_virtio.c", i32 274, i32 3}
!43 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @rproc_virtio_get._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @rproc_virtio_get._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/remoteproc/remoteproc_virtio.c", i32 292, i32 3}
!48 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rproc_virtio_set._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @rproc_virtio_set._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/remoteproc/remoteproc_virtio.c", i32 203, i32 2}
!53 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @rproc_virtio_set_status.__UNIQUE_ID_ddebug236, !52, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/remoteproc/remoteproc_virtio.c", i32 214, i32 2}
!57 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @rproc_virtio_reset.__UNIQUE_ID_ddebug237, !56, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/remoteproc/remoteproc_virtio.c", i32 100, i32 43}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/remoteproc/remoteproc_virtio.c", i32 113, i32 2}
!63 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @rp_find_vq.__UNIQUE_ID_ddebug235, !62, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/remoteproc/remoteproc_virtio.c", i32 123, i32 3}
!67 = !{ptr @rp_find_vq._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @rp_find_vq._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/remoteproc/remoteproc_virtio.c", i32 45, i32 2}
!71 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @rproc_virtio_notify.__UNIQUE_ID_ddebug233, !70, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 2148344656, i64 2148344661, i64 2148344674, i64 2148344718, i64 2148344752, i64 2148344773}
!83 = !{i64 2148532793, i64 2148532825, i64 2148532854, i64 2148532888, i64 2148532919, i64 2148532942}
!84 = !{!"branch_weights", i32 1, i32 2000}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{i64 2148620794}
!87 = !{i64 2148535258, i64 2148535290, i64 2148535319, i64 2148535353, i64 2148535384, i64 2148535407}
!88 = !{i64 2149642847}
!89 = !{i8 0, i8 2}
!90 = !{i64 2154116328, i64 2154116831, i64 2154116365, i64 2154116421, i64 2154116455, i64 2154116479, i64 2154116520, i64 2154116541, i64 2154116569, i64 2154116603}
