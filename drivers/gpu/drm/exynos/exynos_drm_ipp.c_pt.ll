; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/exynos/exynos_drm_ipp.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_drm_ipp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.exynos_drm_param_map = type { i32, i32, i32 }
%struct.exynos_drm_ipp = type { ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, %struct.list_head, %struct.wait_queue_head }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_exynos_ioctl_ipp_get_res = type { i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_exynos_ipp_format = type { i32, i32, i64 }
%struct.drm_exynos_ioctl_ipp_get_caps = type { i32, i32, i32, i32, i64 }
%struct.exynos_drm_ipp_formats = type { i32, i32, i64, ptr, i32 }
%struct.drm_exynos_ioctl_ipp_get_limits = type { i32, i32, i64, i32, i32, i64 }
%struct.exynos_drm_ipp_task = type { ptr, ptr, %struct.list_head, %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer, %struct.drm_exynos_ipp_task_transform, %struct.drm_exynos_ipp_task_alpha, %struct.work_struct, i32, i32, ptr }
%struct.exynos_drm_ipp_buffer = type { %struct.drm_exynos_ipp_task_buffer, %struct.drm_exynos_ipp_task_rect, [4 x ptr], ptr, [4 x i32] }
%struct.drm_exynos_ipp_task_buffer = type { i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], i64 }
%struct.drm_exynos_ipp_task_rect = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_exynos_ipp_task_transform = type { i32, i32 }
%struct.drm_exynos_ipp_task_alpha = type { i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.drm_exynos_ioctl_ipp_commit = type { i32, i32, i32, i32, i64, i64 }
%struct.drm_pending_exynos_ipp_event = type { %struct.drm_pending_event, %struct.drm_exynos_ipp_event }
%struct.drm_pending_event = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.drm_exynos_ipp_event = type { %struct.drm_event, i64, i32, i32, i32, i32, i64 }
%struct.drm_event = type { i32, i32 }
%struct.exynos_drm_ipp_funcs = type { ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.85, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.85 = type { [4 x i8] }
%struct.drm_exynos_ipp_limit = type { i32, i32, %struct.drm_exynos_ipp_limit_val, %struct.drm_exynos_ipp_limit_val }
%struct.drm_exynos_ipp_limit_val = type { i32, i32, i32, i32 }
%struct.exynos_drm_gem = type { %struct.drm_gem_object, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }

@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/exynos/exynos_drm_ipp.c\00", [56 x i8] zeroinitializer }, align 32
@exynos_drm_ipp_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ipp->lock\00", [21 x i8] zeroinitializer }, align 32
@exynos_drm_ipp_register.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ipp->done_wq\00", [18 x i8] zeroinitializer }, align 32
@ipp_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ipp_list, ptr @ipp_list }, [24 x i8] zeroinitializer }, align 32
@num_ipp = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Registered ipp %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ipp: %d, task %pK done: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@exynos_drm_ipp_task_done.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&task->cleanup_work)\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ipp: %d, nonblocking processing task %pK\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ipp: %d, processing task %pK\0A\00", [34 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ipp: %d, try to run new task\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ipp: %d, selected task %pK to run\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Allocated task %pK\0A\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@exynos_drm_ipp_params_maps = internal constant { [6 x %struct.exynos_drm_param_map], [56 x i8] } { [6 x %struct.exynos_drm_param_map] [%struct.exynos_drm_param_map { i32 65537, i32 72, i32 16 }, %struct.exynos_drm_param_map { i32 131073, i32 72, i32 152 }, %struct.exynos_drm_param_map { i32 65538, i32 24, i32 88 }, %struct.exynos_drm_param_map { i32 131074, i32 24, i32 224 }, %struct.exynos_drm_param_map { i32 3, i32 8, i32 288 }, %struct.exynos_drm_param_map { i32 4, i32 8, i32 296 }], [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Got task %pK configuration from userspace\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Checking task %pK\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Task %pK: defined area is outside provided buffers\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Task %pK: hw capabilities exceeded\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Task %pK: all checks done.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Task %pK: %s format not supported\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"src\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dst\00", [28 x i8] zeroinitializer }, align 32
@limit_id_fallback = internal constant { [3 x [4 x i32]], [48 x i8] } { [3 x [4 x i32]] [[4 x i32] [i32 65536, i32 0, i32 0, i32 0], [4 x i32] [i32 131072, i32 65536, i32 0, i32 0], [4 x i32] [i32 196608, i32 131072, i32 65536, i32 0]], [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Value %d exceeds HW limits (min %d, max %d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Value %d exceeds HW limits (align %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Scale from %d to %d exceeds HW limits (ratio min %d.%05d, max %d.%05d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Setting buffer for task %pK\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Task %pK: src buffer setup failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Task %pK: dst buffer setup failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Task %pK: buffers prepared.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Freeing task %pK\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 3, i64 4, i64 65537, i64 65538, i64 131073, i64 131074]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 53, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 58, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 60, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [9 x i8] c"ipp_list\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 31, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant [8 x i8] c"num_ipp\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 30, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 72, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 766, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 780, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 918, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 926, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 230, i32 6 }
@___asan_gen_.74 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 214, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 174, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 791, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 808, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 273, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [27 x i8] c"exynos_drm_ipp_params_maps\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 282, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 340, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 611, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 626, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 644, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 657, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 560, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [18 x i8] c"limit_id_fallback\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 414, i32 45 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 467, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 456, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 510, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 669, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 674, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 681, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 687, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [43 x i8] c"../drivers/gpu/drm/exynos/exynos_drm_ipp.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 396, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @.str, ptr @exynos_drm_ipp_register.__key, ptr @.str.1, ptr @exynos_drm_ipp_register.__key.2, ptr @.str.3, ptr @ipp_list, ptr @num_ipp, ptr @.str.4, ptr @.str.5, ptr @exynos_drm_ipp_task_done.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @exynos_drm_ipp_params_maps, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @limit_id_fallback, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drm_ipp_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drm_ipp_register.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipp_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_ipp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drm_ipp_task_done.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drm_ipp_params_maps to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @limit_id_fallback to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_drm_ipp_register(ptr noundef %dev, ptr noundef %ipp, ptr noundef %funcs, i32 noundef %caps, ptr noundef %formats, i32 noundef %num_formats, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ipp, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !80

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool22.not = icmp eq ptr %funcs, null
  br i1 %tobool22.not, label %do.end40, label %if.end.if.end46_crit_edge, !prof !80

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

do.end40:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef null) #6
  br label %if.end46

if.end46:                                         ; preds = %do.end40, %if.end.if.end46_crit_edge
  %tobool55.not = icmp eq ptr %formats, null
  br i1 %tobool55.not, label %do.end73, label %if.end46.if.end79_crit_edge, !prof !80

if.end46.if.end79_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

do.end73:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 55, i32 noundef 9, ptr noundef null) #6
  br label %if.end79

if.end79:                                         ; preds = %do.end73, %if.end46.if.end79_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_formats)
  %tobool88.not = icmp eq i32 %num_formats, 0
  br i1 %tobool88.not, label %do.end106, label %if.end79.if.end112_crit_edge, !prof !80

if.end79.if.end112_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

do.end106:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef null) #6
  br label %if.end112

if.end112:                                        ; preds = %do.end106, %if.end79.if.end112_crit_edge
  %lock = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @exynos_drm_ipp_register.__key, i16 noundef signext 3) #6
  %todo_list = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 12
  %0 = ptrtoint ptr %todo_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %todo_list, ptr %todo_list, align 4
  %prev.i = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 12, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %todo_list, ptr %prev.i, align 4
  %done_wq = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %done_wq, ptr noundef nonnull @.str.3, ptr noundef nonnull @exynos_drm_ipp_register.__key.2) #6
  %dev126 = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 1
  %2 = ptrtoint ptr %dev126 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev126, align 4
  %funcs127 = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 5
  %3 = ptrtoint ptr %funcs127 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %funcs, ptr %funcs127, align 4
  %capabilities = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 6
  %4 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %caps, ptr %capabilities, align 4
  %name128 = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 4
  %5 = ptrtoint ptr %name128 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %name128, align 4
  %formats129 = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 7
  %6 = ptrtoint ptr %formats129 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %formats, ptr %formats129, align 4
  %num_formats130 = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 8
  %7 = ptrtoint ptr %num_formats130 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %num_formats, ptr %num_formats130, align 4
  %head = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 2
  %8 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ipp_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %8, ptr noundef nonnull @ipp_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end112.list_add_tail.exit_crit_edge

if.end112.list_add_tail.exit_crit_edge:           ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %head, ptr getelementptr inbounds (%struct.list_head, ptr @ipp_list, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ipp_list, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %head, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end112.list_add_tail.exit_crit_edge
  %12 = load i32, ptr @num_ipp, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr @num_ipp, align 4
  %id = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 3
  %13 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %id, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef %12) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_drm_ipp_unregister(ptr nocapture noundef readnone %dev, ptr noundef %ipp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %task = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 11
  %0 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !81

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 85, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %todo_list = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 12
  %2 = ptrtoint ptr %todo_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %todo_list, align 4
  %cmp.i.not = icmp eq ptr %3, %todo_list
  br i1 %cmp.i.not, label %if.end.if.end45_crit_edge, label %do.end39, !prof !81

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

do.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 86, i32 noundef 9, ptr noundef null) #6
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %if.end.if.end45_crit_edge
  %head = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end45.list_del.exit_crit_edge

if.end45.list_del.exit_crit_edge:                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end45.list_del.exit_crit_edge
  %10 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_drm_ipp_get_res_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ipp_id_ptr = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_get_res, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %ipp_id_ptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ipp_id_ptr, align 8
  %conv = trunc i64 %1 to i32
  %2 = inttoptr i32 %conv to ptr
  %3 = load i32, ptr @num_ipp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %land.lhs.true

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not = icmp ult i32 %5, %3
  br i1 %cmp.not, label %land.lhs.true.if.end13_crit_edge, label %for.cond.preheader

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

for.cond.preheader:                               ; preds = %land.lhs.true
  %.pn26 = load ptr, ptr @ipp_list, align 4
  %cmp2.not27 = icmp eq ptr %.pn26, @ipp_list
  br i1 %cmp2.not27, label %for.cond.preheader.if.end13_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end13_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

for.cond:                                         ; preds = %for.body
  %inc = add i32 %copied.028, 1
  %6 = ptrtoint ptr %.pn29 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn29, align 4
  %cmp2.not = icmp eq ptr %.pn, @ipp_list
  br i1 %cmp2.not, label %for.cond.if.end13_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.if.end13_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn29 = phi ptr [ %.pn, %for.cond.for.body_crit_edge ], [ %.pn26, %for.cond.preheader.for.body_crit_edge ]
  %copied.028 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add.ptr4 = getelementptr i32, ptr %2, i32 %copied.028
  %id = getelementptr i8, ptr %.pn29, i32 8
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 118) #6
  %9 = tail call i32 @llvm.read_register.i32(metadata !70) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !82
  %and.i = and i32 %11, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr4, i32 %8, i32 -1226833921) #6, !srcloc !85
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not = icmp eq i32 %12, 0
  br i1 %tobool7.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %for.cond.if.end13_crit_edge, %for.cond.preheader.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %3, ptr %data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -14, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_drm_ipp_get_caps_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.drm_exynos_ipp_format, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %formats_ptr = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_get_caps, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %formats_ptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %formats_ptr, align 8
  %conv = trunc i64 %1 to i32
  %2 = inttoptr i32 %conv to ptr
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @ipp_list, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @ipp_list
  br i1 %cmp.not.i, label %for.cond.i.cleanup22_crit_edge, label %for.body.i

for.cond.i.cleanup22_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup22

for.body.i:                                       ; preds = %for.cond.i
  %id1.i = getelementptr i8, ptr %.pn.i, i32 8
  %6 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id1.i, align 4
  %cmp2.i = icmp eq i32 %7, %4
  br i1 %cmp2.i, label %__ipp_get.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

__ipp_get.exit:                                   ; preds = %for.body.i
  %ipp.0.le.i = getelementptr i8, ptr %.pn.i, i32 -8
  %tobool.not = icmp eq ptr %ipp.0.le.i, null
  br i1 %tobool.not, label %__ipp_get.exit.cleanup22_crit_edge, label %if.end

__ipp_get.exit.cleanup22_crit_edge:               ; preds = %__ipp_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup22

if.end:                                           ; preds = %__ipp_get.exit
  %id1.i.le = getelementptr i8, ptr %.pn.i, i32 8
  %8 = ptrtoint ptr %id1.i.le to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id1.i.le, align 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %data, align 8
  %capabilities = getelementptr i8, ptr %.pn.i, i32 20
  %11 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %capabilities, align 4
  %capabilities2 = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_get_caps, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %capabilities2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %capabilities2, align 4
  %formats_count = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_get_caps, ptr %data, i32 0, i32 3
  %14 = ptrtoint ptr %formats_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %formats_count, align 4
  %num_formats = getelementptr i8, ptr %.pn.i, i32 28
  %16 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.not = icmp ult i32 %15, %17
  br i1 %cmp.not, label %if.end.if.end19_crit_edge, label %for.cond.preheader

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

for.cond.preheader:                               ; preds = %if.end
  %18 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp652.not = icmp eq i32 %19, 0
  br i1 %cmp652.not, label %for.cond.preheader.if.end19_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end19_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %20 = getelementptr inbounds %struct.drm_exynos_ipp_format, ptr %tmp, i32 0, i32 1
  %21 = getelementptr inbounds %struct.drm_exynos_ipp_format, ptr %tmp, i32 0, i32 2
  %formats = getelementptr i8, ptr %.pn.i, i32 24
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ptr.053 = phi ptr [ %2, %for.body.lr.ph ], [ %add.ptr, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #6
  %22 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %23 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %formats, align 4
  %arrayidx = getelementptr %struct.exynos_drm_ipp_formats, ptr %24, i32 %i.054
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 8
  %27 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %tmp, align 8
  %type11 = getelementptr %struct.exynos_drm_ipp_formats, ptr %24, i32 %i.054, i32 1
  %28 = ptrtoint ptr %type11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type11, align 4
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %20, align 4
  %modifier14 = getelementptr %struct.exynos_drm_ipp_formats, ptr %24, i32 %i.054, i32 2
  %31 = ptrtoint ptr %modifier14 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %modifier14, align 8
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %21, align 8
  call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #6
  %call.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %for.body.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

for.body.copy_to_user.exit.thread_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %for.body
  %34 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ptr.053, i32 16, i32 -1226833920) #9, !srcloc !86
  %asmresult.i.i = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %if.end.i.i.copy_to_user.exit.thread_crit_edge, %for.body.copy_to_user.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #6
  br label %cleanup22

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp, i32 noundef 16) #6
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %ptr.053, ptr noundef nonnull %tmp, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool16.not = icmp eq i32 %call.i12.i.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #6
  br i1 %tobool16.not, label %for.inc, label %copy_to_user.exit.cleanup22_crit_edge

copy_to_user.exit.cleanup22_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup22

for.inc:                                          ; preds = %copy_to_user.exit
  %add.ptr = getelementptr i8, ptr %ptr.053, i32 16
  %inc = add nuw i32 %i.054, 1
  %35 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_formats, align 4
  %cmp6 = icmp ult i32 %inc, %36
  br i1 %cmp6, label %for.inc.for.body_crit_edge, label %for.inc.if.end19_crit_edge

for.inc.if.end19_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end19:                                         ; preds = %for.inc.if.end19_crit_edge, %for.cond.preheader.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %37 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_formats, align 4
  %39 = ptrtoint ptr %formats_count to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %formats_count, align 4
  br label %cleanup22

cleanup22:                                        ; preds = %if.end19, %copy_to_user.exit.cleanup22_crit_edge, %copy_to_user.exit.thread, %__ipp_get.exit.cleanup22_crit_edge, %for.cond.i.cleanup22_crit_edge
  %retval.2 = phi i32 [ 0, %if.end19 ], [ -2, %__ipp_get.exit.cleanup22_crit_edge ], [ -14, %copy_to_user.exit.thread ], [ -14, %copy_to_user.exit.cleanup22_crit_edge ], [ -2, %for.cond.i.cleanup22_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_drm_ipp_get_limits_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %limits_ptr = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_get_limits, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %limits_ptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %limits_ptr, align 8
  %conv = trunc i64 %1 to i32
  %2 = inttoptr i32 %conv to ptr
  %type = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_get_limits, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 8
  %.off = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ @ipp_list, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @ipp_list
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %id1.i = getelementptr i8, ptr %.pn.i, i32 8
  %8 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id1.i, align 4
  %cmp2.i = icmp eq i32 %9, %6
  br i1 %cmp2.i, label %__ipp_get.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

__ipp_get.exit:                                   ; preds = %for.body.i
  %ipp.0.le.i = getelementptr i8, ptr %.pn.i, i32 -8
  %tobool.not = icmp eq ptr %ipp.0.le.i, null
  br i1 %tobool.not, label %__ipp_get.exit.cleanup_crit_edge, label %if.end6

__ipp_get.exit.cleanup_crit_edge:                 ; preds = %__ipp_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %__ipp_get.exit
  %fourcc = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_get_limits, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fourcc, align 4
  %modifier = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_get_limits, ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %modifier, align 8
  %num_formats.i = getelementptr i8, ptr %.pn.i, i32 28
  %14 = ptrtoint ptr %num_formats.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp21.not.i = icmp eq i32 %15, 0
  br i1 %cmp21.not.i, label %if.end6.cleanup_crit_edge, label %for.body.lr.ph.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end6
  %formats.i = getelementptr i8, ptr %.pn.i, i32 24
  %16 = ptrtoint ptr %formats.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %formats.i, align 4
  br label %for.body.i44

for.body.i44:                                     ; preds = %for.inc.i.for.body.i44_crit_edge, %for.body.lr.ph.i
  %i.022.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i44_crit_edge ]
  %arrayidx.i = getelementptr %struct.exynos_drm_ipp_formats, ptr %17, i32 %i.022.i
  %type1.i = getelementptr %struct.exynos_drm_ipp_formats, ptr %17, i32 %i.022.i, i32 1
  %18 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type1.i, align 4
  %and.i = and i32 %19, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i44.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i44.for.inc.i_crit_edge:                 ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i44
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %11)
  %cmp5.i = icmp eq i32 %21, %11
  br i1 %cmp5.i, label %land.lhs.true6.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %modifier.i = getelementptr %struct.exynos_drm_ipp_formats, ptr %17, i32 %i.022.i, i32 2
  %22 = ptrtoint ptr %modifier.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %modifier.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %13)
  %cmp9.i = icmp eq i64 %23, %13
  br i1 %cmp9.i, label %__ipp_format_get.exit, label %land.lhs.true6.i.for.inc.i_crit_edge

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true6.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i44.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i44_crit_edge

for.inc.i.for.body.i44_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i44

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

__ipp_format_get.exit:                            ; preds = %land.lhs.true6.i
  %tobool9.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool9.not, label %__ipp_format_get.exit.cleanup_crit_edge, label %if.end11

__ipp_format_get.exit.cleanup_crit_edge:          ; preds = %__ipp_format_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %__ipp_format_get.exit
  %num_limits = getelementptr %struct.exynos_drm_ipp_formats, ptr %17, i32 %i.022.i, i32 4
  %24 = ptrtoint ptr %num_limits to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_limits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool12.not = icmp eq i32 %25, 0
  br i1 %tobool12.not, label %if.end11.if.end23_crit_edge, label %land.lhs.true13

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

land.lhs.true13:                                  ; preds = %if.end11
  %limits_count = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_get_limits, ptr %data, i32 0, i32 4
  %26 = ptrtoint ptr %limits_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %limits_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp15.not = icmp ult i32 %27, %25
  br i1 %cmp15.not, label %land.lhs.true13.if.end23_crit_edge, label %if.then17

land.lhs.true13.if.end23_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then17:                                        ; preds = %land.lhs.true13
  %limits = getelementptr %struct.exynos_drm_ipp_formats, ptr %17, i32 %i.022.i, i32 3
  %28 = ptrtoint ptr %limits to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %limits, align 8
  %mul = mul i32 %25, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then17
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !81

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then17
  tail call void @__check_object_size(ptr noundef %29, i32 noundef %mul, i1 noundef zeroext true) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %30 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %mul, i32 -1226833920) #9, !srcloc !86
  %asmresult.i.i = extractvalue { i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %29, i32 noundef %mul) #6
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef %29, i32 noundef %mul) #6
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %mul, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool20.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool20.not, label %copy_to_user.exit.if.end23_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit.if.end23_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.end23:                                         ; preds = %copy_to_user.exit.if.end23_crit_edge, %land.lhs.true13.if.end23_crit_edge, %if.end11.if.end23_crit_edge
  %31 = ptrtoint ptr %num_limits to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_limits, align 4
  %limits_count25 = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_get_limits, ptr %data, i32 0, i32 4
  %33 = ptrtoint ptr %limits_count25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %limits_count25, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %copy_to_user.exit.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %__ipp_format_get.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %__ipp_get.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -22, %entry.cleanup_crit_edge ], [ -2, %__ipp_get.exit.cleanup_crit_edge ], [ -22, %__ipp_format_get.exit.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ], [ -2, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_drm_ipp_task_done(ptr noundef %task, i32 noundef %ret) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ipp1 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 1
  %0 = ptrtoint ptr %ipp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipp1, align 4
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %id = getelementptr inbounds %struct.exynos_drm_ipp, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %5, ptr noundef %task, i32 noundef %ret) #6
  %lock = getelementptr inbounds %struct.exynos_drm_ipp, ptr %1, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %task6 = getelementptr inbounds %struct.exynos_drm_ipp, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %task6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task6, align 4
  %cmp7 = icmp eq ptr %7, %task
  br i1 %cmp7, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %task6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %task6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags10 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 8
  %9 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags10, align 4
  %or = or i32 %10, 1
  store i32 %or, ptr %flags10, align 4
  %ret11 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 9
  %11 = ptrtoint ptr %ret11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %ret, ptr %ret11, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  tail call fastcc void @exynos_drm_ipp_next_task(ptr noundef %1)
  %done_wq = getelementptr inbounds %struct.exynos_drm_ipp, ptr %1, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %done_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  %12 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags10, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end25_crit_edge, label %do.body15

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.body15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %cleanup_work = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 7
  tail call void @__init_work(ptr noundef %cleanup_work, i32 noundef 0) #6
  %14 = ptrtoint ptr %cleanup_work to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %cleanup_work, align 8
  %lockdep_map = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @exynos_drm_ipp_task_done.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry19 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry19, ptr %entry19, align 4
  %prev.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 7, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry19, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @exynos_drm_ipp_cleanup_work, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %cleanup_work) #6
  br label %if.end25

if.end25:                                         ; preds = %do.body15, %if.end.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos_drm_ipp_next_task(ptr noundef %ipp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 3
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef %3) #6
  %lock = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 10
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %task5 = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 11
  %4 = ptrtoint ptr %task5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task5, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %todo_list = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 12
  %6 = ptrtoint ptr %todo_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %todo_list, align 4
  %cmp.i.not = icmp eq ptr %7, %todo_list
  br i1 %cmp.i.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr = getelementptr i8, ptr %7, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %7, ptr %7, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %7, ptr %prev.i3.i, align 4
  %16 = ptrtoint ptr %task5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr, ptr %task5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %18, i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef %20, ptr noundef %add.ptr) #6
  %funcs = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 5
  %21 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %funcs, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call15 = tail call i32 %24(ptr noundef %ipp, ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %list_del_init.exit.cleanup_crit_edge, label %if.then17

list_del_init.exit.cleanup_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @exynos_drm_ipp_task_done(ptr noundef %add.ptr, i32 noundef %call15)
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %list_del_init.exit.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_drm_ipp_cleanup_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -304
  %call = tail call fastcc i32 @exynos_drm_ipp_task_cleanup(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_drm_ipp_commit_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_commit, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %tobool.not = icmp ult i32 %1, 8
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup77_crit_edge

entry.cleanup77_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup77

lor.lhs.false:                                    ; preds = %entry
  %reserved = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_commit, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %reserved to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reserved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp ne i32 %3, 0
  %4 = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %.not = icmp eq i32 %4, 3
  %or.cond = select i1 %tobool1.not, i1 true, i1 %.not
  br i1 %or.cond, label %lor.lhs.false.cleanup77_crit_edge, label %if.end9

lor.lhs.false.cleanup77_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup77

if.end9:                                          ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end9
  %.pn.in.i = phi ptr [ @ipp_list, %if.end9 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @ipp_list
  br i1 %cmp.not.i, label %for.cond.i.cleanup77_crit_edge, label %for.body.i

for.cond.i.cleanup77_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup77

for.body.i:                                       ; preds = %for.cond.i
  %id1.i = getelementptr i8, ptr %.pn.i, i32 8
  %8 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id1.i, align 4
  %cmp2.i = icmp eq i32 %9, %6
  br i1 %cmp2.i, label %__ipp_get.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

__ipp_get.exit:                                   ; preds = %for.body.i
  %id1.i.le = getelementptr i8, ptr %.pn.i, i32 8
  %ipp.0.le.i = getelementptr i8, ptr %.pn.i, i32 -8
  %tobool10.not = icmp eq ptr %ipp.0.le.i, null
  br i1 %tobool10.not, label %__ipp_get.exit.cleanup77_crit_edge, label %if.end12

__ipp_get.exit.cleanup77_crit_edge:               ; preds = %__ipp_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup77

if.end12:                                         ; preds = %__ipp_get.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 360) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end12.cleanup77_crit_edge, label %if.end16

if.end12.cleanup77_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup77

if.end16:                                         ; preds = %if.end12
  %dev.i = getelementptr i8, ptr %.pn.i, i32 -4
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %call7.i.i.i, align 8
  %ipp2.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %ipp2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ipp.0.le.i, ptr %ipp2.i, align 4
  %w.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 4
  %15 = ptrtoint ptr %w.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %w.i, align 8
  %w4.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %call7.i.i.i, i32 0, i32 3, i32 1, i32 4
  %16 = ptrtoint ptr %w4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %w4.i, align 8
  %h.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 5
  %17 = ptrtoint ptr %h.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %h.i, align 4
  %h9.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %call7.i.i.i, i32 0, i32 3, i32 1, i32 5
  %18 = ptrtoint ptr %h9.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %h9.i, align 4
  %rotation.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %rotation.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %rotation.i, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %12, i32 noundef 2, ptr noundef nonnull @.str.14, ptr noundef nonnull %call7.i.i.i) #6
  %params_size.i = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_commit, ptr %data, i32 0, i32 3
  %20 = ptrtoint ptr %params_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %params_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not67.i = icmp eq i32 %21, 0
  br i1 %tobool.not67.i, label %if.end16.if.end20_crit_edge, label %while.body.preheader.i

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

while.body.preheader.i:                           ; preds = %if.end16
  %params_ptr.i = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_commit, ptr %data, i32 0, i32 4
  %22 = ptrtoint ptr %params_ptr.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %params_ptr.i, align 8
  %conv.i = trunc i64 %23 to i32
  %24 = inttoptr i32 %conv.i to ptr
  br label %while.body.i

while.body.i:                                     ; preds = %if.end24.i.while.body.i_crit_edge, %while.body.preheader.i
  %params.069.i = phi ptr [ %add.ptr27.i, %if.end24.i.while.body.i_crit_edge ], [ %24, %while.body.preheader.i ]
  %size.068.i = phi i32 [ %sub.i, %if.end24.i.while.body.i_crit_edge ], [ %21, %while.body.preheader.i ]
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 322) #6
  %25 = tail call i32 @llvm.read_register.i32(metadata !70) #6
  %and.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #3, !srcloc !82
  %and.i.i = and i32 %27, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %28 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %params.069.i, i32 -1226833921) #6, !srcloc !87
  %asmresult.i = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool3.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool3.not.i, label %for.body.preheader.i, label %while.body.i.free_crit_edge

while.body.i.free_crit_edge:                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free

for.body.preheader.i:                             ; preds = %while.body.i
  %asmresult1.i = extractvalue { i32, i32 } %28, 1
  %29 = zext i32 %asmresult1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %asmresult1.i, label %for.body.preheader.i.free_crit_edge [
    i32 65537, label %for.body.preheader.i.lor.lhs.false.i_crit_edge
    i32 131073, label %lor.lhs.false.fold.split.i
    i32 65538, label %lor.lhs.false.fold.split90.i
    i32 131074, label %lor.lhs.false.fold.split91.i
    i32 3, label %lor.lhs.false.fold.split92.i
    i32 4, label %lor.lhs.false.fold.split93.i
  ]

for.body.preheader.i.lor.lhs.false.i_crit_edge:   ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

for.body.preheader.i.free_crit_edge:              ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free

lor.lhs.false.fold.split.i:                       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

lor.lhs.false.fold.split90.i:                     ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

lor.lhs.false.fold.split91.i:                     ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

lor.lhs.false.fold.split92.i:                     ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

lor.lhs.false.fold.split93.i:                     ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %lor.lhs.false.fold.split93.i, %lor.lhs.false.fold.split92.i, %lor.lhs.false.fold.split91.i, %lor.lhs.false.fold.split90.i, %lor.lhs.false.fold.split.i, %for.body.preheader.i.lor.lhs.false.i_crit_edge
  %i.066.lcssa.i = phi i32 [ 0, %for.body.preheader.i.lor.lhs.false.i_crit_edge ], [ 1, %lor.lhs.false.fold.split.i ], [ 2, %lor.lhs.false.fold.split90.i ], [ 3, %lor.lhs.false.fold.split91.i ], [ 4, %lor.lhs.false.fold.split92.i ], [ 5, %lor.lhs.false.fold.split93.i ]
  %size13.i = getelementptr %struct.exynos_drm_param_map, ptr @exynos_drm_ipp_params_maps, i32 %i.066.lcssa.i, i32 1
  %30 = ptrtoint ptr %size13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %size.068.i, i32 %31)
  %cmp14.i = icmp ult i32 %size.068.i, %31
  br i1 %cmp14.i, label %lor.lhs.false.i.free_crit_edge, label %if.end17.i

lor.lhs.false.i.free_crit_edge:                   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free

if.end17.i:                                       ; preds = %lor.lhs.false.i
  %offset.i = getelementptr %struct.exynos_drm_param_map, ptr @exynos_drm_ipp_params_maps, i32 %i.066.lcssa.i, i32 2
  %32 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call7.i.i.i, i32 %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp9.i.i.i = icmp slt i32 %31, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end17.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.free_crit_edge, label %if.then27.i.i.i, !prof !81

land.rhs16.i.i.i.free_crit_edge:                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %free

if.then.i.i.i.i:                                  ; preds = %if.end17.i
  tail call void @__check_object_size(ptr noundef %add.ptr.i, i32 noundef %31, i1 noundef zeroext false) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #6
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %34 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %params.069.i, i32 %31, i32 -1226833920) #9, !srcloc !88
  %asmresult.i.i.i = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !81

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef %31) #6
  %35 = tail call i32 @llvm.read_register.i32(metadata !70) #6
  %and.i.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #3, !srcloc !82
  %and.i.i.i.i.i = and i32 %37, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr.i, ptr noundef %params.069.i, i32 noundef %31) #6
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %31, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %31, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end24.i, label %if.then11.i.i.i, !prof !81

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i.i = sub i32 %31, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i, i32 %sub.i.i.i
  %38 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %free

if.end24.i:                                       ; preds = %if.end.i.i.i
  %add.ptr27.i = getelementptr i8, ptr %params.069.i, i32 %31
  %sub.i = sub i32 %size.068.i, %31
  %tobool.not.i123 = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i123, label %if.end24.i.if.end20_crit_edge, label %if.end24.i.while.body.i_crit_edge

if.end24.i.while.body.i_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end24.i.if.end20_crit_edge:                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end20:                                         ; preds = %if.end24.i.if.end20_crit_edge, %if.end16.if.end20_crit_edge
  %39 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i.i, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %40, i32 noundef 2, ptr noundef nonnull @.str.15, ptr noundef %call7.i.i.i) #6
  %call21 = tail call fastcc i32 @exynos_drm_ipp_task_check(ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.free_crit_edge

if.end20.free_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %free

if.end24:                                         ; preds = %if.end20
  %call25 = tail call fastcc i32 @exynos_drm_ipp_task_setup_buffers(ptr noundef nonnull %call7.i.i.i, ptr noundef %file_priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %lor.lhs.false27, label %if.end24.free_crit_edge

if.end24.free_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %free

lor.lhs.false27:                                  ; preds = %if.end24
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  %and29 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end32, label %lor.lhs.false27.free_crit_edge

lor.lhs.false27.free_crit_edge:                   ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #8
  br label %free

if.end32:                                         ; preds = %lor.lhs.false27
  %and34 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end41_crit_edge, label %if.then36

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then36:                                        ; preds = %if.end32
  %user_data = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_commit, ptr %data, i32 0, i32 5
  %43 = ptrtoint ptr %user_data to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %user_data, align 8
  %call37 = tail call fastcc i32 @exynos_drm_ipp_event_create(ptr noundef nonnull %call7.i.i.i, ptr noundef %file_priv, i64 noundef %44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then36.if.end41_crit_edge, label %if.then36.free_crit_edge

if.then36.free_crit_edge:                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %free

if.then36.if.end41_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.end41:                                         ; preds = %if.then36.if.end41_crit_edge, %if.end32.if.end41_crit_edge
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 4
  %and43 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  %49 = ptrtoint ptr %id1.i.le to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %id1.i.le, align 4
  br i1 %tobool44.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %48, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %50, ptr noundef nonnull %call7.i.i.i) #6
  %flags47 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %call7.i.i.i, i32 0, i32 8
  %51 = ptrtoint ptr %flags47 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags47, align 4
  %or = or i32 %52, 2
  store i32 %or, ptr %flags47, align 4
  %53 = ptrtoint ptr %ipp2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ipp2.i, align 4
  tail call fastcc void @exynos_drm_ipp_schedule_task(ptr noundef %54, ptr noundef nonnull %call7.i.i.i)
  br label %cleanup77

if.else:                                          ; preds = %if.end41
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %48, i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %50, ptr noundef nonnull %call7.i.i.i) #6
  tail call fastcc void @exynos_drm_ipp_schedule_task(ptr noundef nonnull %ipp.0.le.i, ptr noundef nonnull %call7.i.i.i)
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 930) #6
  %flags54 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %call7.i.i.i, i32 0, i32 8
  %55 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags54, align 4
  %and55 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.then57, label %if.else.if.else73_crit_edge

if.else.if.else73_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else73

if.then57:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %57 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %done_wq = getelementptr i8, ptr %.pn.i, i32 92
  %call59158 = call i32 @prepare_to_wait_event(ptr noundef %done_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %58 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags54, align 4
  %and61159 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61159)
  %tobool62.not160 = icmp eq i32 %and61159, 0
  br i1 %tobool62.not160, label %if.then57.if.end64_crit_edge, label %if.then57.if.end69.thread141_crit_edge

if.then57.if.end69.thread141_crit_edge:           ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69.thread141

if.then57.if.end64_crit_edge:                     ; preds = %if.then57
  br label %if.end64

if.end64:                                         ; preds = %cleanup.if.end64_crit_edge, %if.then57.if.end64_crit_edge
  %call59161 = phi i32 [ %call59, %cleanup.if.end64_crit_edge ], [ %call59158, %if.then57.if.end64_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59161)
  %tobool65.not = icmp eq i32 %call59161, 0
  br i1 %tobool65.not, label %cleanup, label %if.then72

cleanup:                                          ; preds = %if.end64
  call void @schedule() #6
  %call59 = call i32 @prepare_to_wait_event(ptr noundef %done_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %60 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags54, align 4
  %and61 = and i32 %61, 1
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %cleanup.if.end64_crit_edge, label %cleanup.if.end69.thread141_crit_edge

cleanup.if.end69.thread141_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69.thread141

cleanup.if.end64_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.end69.thread141:                               ; preds = %cleanup.if.end69.thread141_crit_edge, %if.then57.if.end69.thread141_crit_edge
  call void @finish_wait(ptr noundef %done_wq, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.else73

if.then72:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  call fastcc void @exynos_drm_ipp_task_abort(ptr noundef nonnull %ipp.0.le.i, ptr noundef nonnull %call7.i.i.i)
  br label %cleanup77

if.else73:                                        ; preds = %if.end69.thread141, %if.else.if.else73_crit_edge
  %call74 = call fastcc i32 @exynos_drm_ipp_task_cleanup(ptr noundef nonnull %call7.i.i.i)
  br label %cleanup77

free:                                             ; preds = %if.then36.free_crit_edge, %lor.lhs.false27.free_crit_edge, %if.end24.free_crit_edge, %if.end20.free_crit_edge, %if.then11.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.free_crit_edge, %lor.lhs.false.i.free_crit_edge, %for.body.preheader.i.free_crit_edge, %while.body.i.free_crit_edge
  %ret.1 = phi i32 [ %call21, %if.end20.free_crit_edge ], [ %call25, %if.end24.free_crit_edge ], [ 0, %lor.lhs.false27.free_crit_edge ], [ %call37, %if.then36.free_crit_edge ], [ -14, %land.rhs16.i.i.i.free_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %if.then11.i.i.i ], [ -22, %lor.lhs.false.i.free_crit_edge ], [ -14, %while.body.i.free_crit_edge ], [ -22, %for.body.preheader.i.free_crit_edge ]
  %62 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call7.i.i.i, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %63, i32 noundef 2, ptr noundef nonnull @.str.30, ptr noundef %call7.i.i.i) #6
  %src.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %call7.i.i.i, i32 0, i32 3
  tail call fastcc void @exynos_drm_ipp_task_release_buf(ptr noundef %src.i) #6
  %dst.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %call7.i.i.i, i32 0, i32 4
  tail call fastcc void @exynos_drm_ipp_task_release_buf(ptr noundef %dst.i) #6
  %event.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %call7.i.i.i, i32 0, i32 10
  %64 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %event.i, align 4
  %tobool.not.i125 = icmp eq ptr %65, null
  br i1 %tobool.not.i125, label %free.exynos_drm_ipp_task_free.exit_crit_edge, label %if.then.i

free.exynos_drm_ipp_task_free.exit_crit_edge:     ; preds = %free
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos_drm_ipp_task_free.exit

if.then.i:                                        ; preds = %free
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %ipp.0.le.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ipp.0.le.i, align 4
  tail call void @drm_event_cancel_free(ptr noundef %67, ptr noundef nonnull %65) #6
  br label %exynos_drm_ipp_task_free.exit

exynos_drm_ipp_task_free.exit:                    ; preds = %if.then.i, %free.exynos_drm_ipp_task_free.exit_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i.i) #6
  br label %cleanup77

cleanup77:                                        ; preds = %exynos_drm_ipp_task_free.exit, %if.else73, %if.then72, %if.then45, %if.end12.cleanup77_crit_edge, %__ipp_get.exit.cleanup77_crit_edge, %for.cond.i.cleanup77_crit_edge, %lor.lhs.false.cleanup77_crit_edge, %entry.cleanup77_crit_edge
  %retval.0 = phi i32 [ %ret.1, %exynos_drm_ipp_task_free.exit ], [ -22, %lor.lhs.false.cleanup77_crit_edge ], [ -22, %entry.cleanup77_crit_edge ], [ -2, %__ipp_get.exit.cleanup77_crit_edge ], [ 0, %if.then45 ], [ %call59161, %if.then72 ], [ %call74, %if.else73 ], [ -12, %if.end12.cleanup77_crit_edge ], [ -2, %for.cond.i.cleanup77_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exynos_drm_ipp_task_check(ptr noundef %task) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ipp1 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 1
  %0 = ptrtoint ptr %ipp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipp1, align 4
  %src2 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3
  %dst3 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4
  %rotation4 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %rotation4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rotation4, align 4
  %and.i = and i32 %3, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ne i32 %3, 1
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %5, i32 noundef 2, ptr noundef nonnull @.str.16, ptr noundef %task) #6
  %w = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 1, i32 4
  %6 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %w, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp6 = icmp eq i32 %7, -1
  br i1 %cmp6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %width = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 0, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 8
  %10 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %w, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %h = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 1, i32 5
  %11 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %h, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp10 = icmp eq i32 %12, -1
  br i1 %cmp10, label %if.then11, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %height = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 0, i32 3
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  %15 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %h, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end.if.end15_crit_edge
  %w17 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 1, i32 4
  %16 = ptrtoint ptr %w17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %w17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp18 = icmp eq i32 %17, -1
  br i1 %cmp18, label %if.then19, label %if.end15.if.end24_crit_edge

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %width21 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 0, i32 2
  %18 = ptrtoint ptr %width21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width21, align 8
  %20 = ptrtoint ptr %w17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %w17, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end15.if.end24_crit_edge
  %h26 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 1, i32 5
  %21 = ptrtoint ptr %h26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %h26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp27 = icmp eq i32 %22, -1
  br i1 %cmp27, label %if.then28, label %if.end24.if.end33_crit_edge

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %height30 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 0, i32 3
  %23 = ptrtoint ptr %height30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height30, align 4
  %25 = ptrtoint ptr %h26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %h26, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.end24.if.end33_crit_edge
  %x = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 1, i32 2
  %26 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %x, align 8
  %28 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %w, align 8
  %add = add i32 %29, %27
  %width38 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 0, i32 2
  %30 = ptrtoint ptr %width38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %width38, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %31)
  %cmp39 = icmp ugt i32 %add, %31
  br i1 %cmp39, label %if.end33.if.then65_crit_edge, label %lor.lhs.false

if.end33.if.then65_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then65

lor.lhs.false:                                    ; preds = %if.end33
  %y = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 1, i32 3
  %32 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %y, align 4
  %34 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %h, align 4
  %add43 = add i32 %35, %33
  %height45 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 0, i32 3
  %36 = ptrtoint ptr %height45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add43, i32 %37)
  %cmp46 = icmp ugt i32 %add43, %37
  br i1 %cmp46, label %lor.lhs.false.if.then65_crit_edge, label %lor.lhs.false47

lor.lhs.false.if.then65_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then65

lor.lhs.false47:                                  ; preds = %lor.lhs.false
  %x49 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 1, i32 2
  %38 = ptrtoint ptr %x49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %x49, align 8
  %40 = ptrtoint ptr %w17 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %w17, align 8
  %add52 = add i32 %41, %39
  %width54 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 0, i32 2
  %42 = ptrtoint ptr %width54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %width54, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add52, i32 %43)
  %cmp55 = icmp ugt i32 %add52, %43
  br i1 %cmp55, label %lor.lhs.false47.if.then65_crit_edge, label %lor.lhs.false56

lor.lhs.false47.if.then65_crit_edge:              ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then65

lor.lhs.false56:                                  ; preds = %lor.lhs.false47
  %y58 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 1, i32 3
  %44 = ptrtoint ptr %y58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %y58, align 4
  %46 = ptrtoint ptr %h26 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %h26, align 4
  %add61 = add i32 %47, %45
  %height63 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 0, i32 3
  %48 = ptrtoint ptr %height63 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %height63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add61, i32 %49)
  %cmp64 = icmp ugt i32 %add61, %49
  br i1 %cmp64, label %lor.lhs.false56.if.then65_crit_edge, label %if.end67

lor.lhs.false56.if.then65_crit_edge:              ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then65

if.then65:                                        ; preds = %lor.lhs.false56.if.then65_crit_edge, %lor.lhs.false47.if.then65_crit_edge, %lor.lhs.false.if.then65_crit_edge, %if.end33.if.then65_crit_edge
  %50 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %51, i32 noundef 2, ptr noundef nonnull @.str.17, ptr noundef %task) #6
  br label %cleanup

if.end67:                                         ; preds = %lor.lhs.false56
  br i1 %tobool.i, label %land.lhs.true81.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %41)
  %cmp72.not = icmp eq i32 %29, %41
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %47)
  %cmp78.not = icmp eq i32 %35, %47
  %or.cond = select i1 %cmp72.not, i1 %cmp78.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.end94_crit_edge, label %land.lhs.true.if.then93_crit_edge

land.lhs.true.if.then93_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then93

land.lhs.true.if.end94_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

land.lhs.true81.critedge:                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %47)
  %cmp86.not = icmp eq i32 %29, %47
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %41)
  %cmp92.not = icmp eq i32 %35, %41
  %or.cond223 = select i1 %cmp86.not, i1 %cmp92.not, i1 false
  br i1 %or.cond223, label %land.lhs.true81.critedge.if.end94_crit_edge, label %land.lhs.true81.critedge.if.then93_crit_edge

land.lhs.true81.critedge.if.then93_crit_edge:     ; preds = %land.lhs.true81.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then93

land.lhs.true81.critedge.if.end94_crit_edge:      ; preds = %land.lhs.true81.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

if.then93:                                        ; preds = %land.lhs.true81.critedge.if.then93_crit_edge, %land.lhs.true.if.then93_crit_edge
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %land.lhs.true81.critedge.if.end94_crit_edge, %land.lhs.true.if.end94_crit_edge
  %scale.0.off0 = phi i1 [ false, %if.then93 ], [ true, %land.lhs.true.if.end94_crit_edge ], [ true, %land.lhs.true81.critedge.if.end94_crit_edge ]
  %capabilities = getelementptr inbounds %struct.exynos_drm_ipp, ptr %1, i32 0, i32 6
  %52 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %capabilities, align 4
  %and = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool95.not = icmp eq i32 %and, 0
  br i1 %tobool95.not, label %land.lhs.true96, label %if.end94.lor.lhs.false112_crit_edge

if.end94.lor.lhs.false112_crit_edge:              ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false112

land.lhs.true96:                                  ; preds = %if.end94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool99.not = icmp eq i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool103.not = icmp eq i32 %33, 0
  %or.cond224 = select i1 %tobool99.not, i1 %tobool103.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool107.not = icmp eq i32 %39, 0
  %or.cond225 = select i1 %or.cond224, i1 %tobool107.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool111.not = icmp eq i32 %45, 0
  %or.cond226 = select i1 %or.cond225, i1 %tobool111.not, i1 false
  br i1 %or.cond226, label %land.lhs.true96.lor.lhs.false112_crit_edge, label %land.lhs.true96.if.then133_crit_edge

land.lhs.true96.if.then133_crit_edge:             ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then133

land.lhs.true96.lor.lhs.false112_crit_edge:       ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %land.lhs.true96.lor.lhs.false112_crit_edge, %if.end94.lor.lhs.false112_crit_edge
  %and114 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  %54 = and i1 %cmp, %tobool115.not
  br i1 %54, label %lor.lhs.false112.if.then133_crit_edge, label %lor.lhs.false118

lor.lhs.false112.if.then133_crit_edge:            ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then133

lor.lhs.false118:                                 ; preds = %lor.lhs.false112
  %and120 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp ne i32 %and120, 0
  %brmerge222 = or i1 %scale.0.off0, %tobool121.not
  br i1 %brmerge222, label %lor.lhs.false124, label %lor.lhs.false118.if.then133_crit_edge

lor.lhs.false118.if.then133_crit_edge:            ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then133

lor.lhs.false124:                                 ; preds = %lor.lhs.false118
  %and126 = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %land.lhs.true128, label %lor.lhs.false124.if.end135_crit_edge

lor.lhs.false124.if.end135_crit_edge:             ; preds = %lor.lhs.false124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

land.lhs.true128:                                 ; preds = %lor.lhs.false124
  %fourcc = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 0, i32 1
  %55 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fourcc, align 4
  %fourcc131 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 0, i32 1
  %57 = ptrtoint ptr %fourcc131 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fourcc131, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp132.not = icmp eq i32 %56, %58
  br i1 %cmp132.not, label %land.lhs.true128.if.end135_crit_edge, label %land.lhs.true128.if.then133_crit_edge

land.lhs.true128.if.then133_crit_edge:            ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then133

land.lhs.true128.if.end135_crit_edge:             ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.then133:                                       ; preds = %land.lhs.true128.if.then133_crit_edge, %lor.lhs.false118.if.then133_crit_edge, %lor.lhs.false112.if.then133_crit_edge, %land.lhs.true96.if.then133_crit_edge
  %59 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %60, i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef %task) #6
  br label %cleanup

if.end135:                                        ; preds = %land.lhs.true128.if.end135_crit_edge, %lor.lhs.false124.if.end135_crit_edge
  %call138 = tail call fastcc i32 @exynos_drm_ipp_check_format(ptr noundef %task, ptr noundef %src2, ptr noundef %src2, ptr noundef %dst3, i1 noundef zeroext %cmp, i1 noundef zeroext %tobool.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end141, label %if.end135.cleanup_crit_edge

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end141:                                        ; preds = %if.end135
  %call143 = tail call fastcc i32 @exynos_drm_ipp_check_format(ptr noundef %task, ptr noundef %dst3, ptr noundef %src2, ptr noundef %dst3, i1 noundef zeroext false, i1 noundef zeroext %tobool.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end146, label %if.end141.cleanup_crit_edge

if.end141.cleanup_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end146:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  %dev147 = getelementptr inbounds %struct.exynos_drm_ipp, ptr %1, i32 0, i32 1
  %61 = ptrtoint ptr %dev147 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev147, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %62, i32 noundef 2, ptr noundef nonnull @.str.19, ptr noundef %task) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end146, %if.end141.cleanup_crit_edge, %if.end135.cleanup_crit_edge, %if.then133, %if.then65
  %retval.0 = phi i32 [ -22, %if.then65 ], [ 0, %if.end146 ], [ -22, %if.then133 ], [ %call138, %if.end135.cleanup_crit_edge ], [ %call143, %if.end141.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exynos_drm_ipp_task_setup_buffers(ptr noundef %task, ptr noundef %filp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %src1 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3
  %0 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.26, ptr noundef %task) #6
  %call = tail call fastcc i32 @exynos_drm_ipp_task_setup_buffer(ptr noundef %src1, ptr noundef %filp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.27, ptr noundef %task) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dst2 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4
  %call4 = tail call fastcc i32 @exynos_drm_ipp_task_setup_buffer(ptr noundef %dst2, ptr noundef %filp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %5, i32 noundef 2, ptr noundef nonnull @.str.28, ptr noundef %task) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %5, i32 noundef 2, ptr noundef nonnull @.str.29, ptr noundef %task) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call4, %if.then6 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exynos_drm_ipp_event_create(ptr nocapture noundef %task, ptr noundef %file_priv, i64 noundef %user_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 80) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %event = getelementptr inbounds %struct.drm_pending_exynos_ipp_event, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -2147483646, ptr %event, align 8
  %length = getelementptr inbounds %struct.drm_pending_exynos_ipp_event, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 40, ptr %length, align 4
  %user_data4 = getelementptr inbounds %struct.drm_pending_exynos_ipp_event, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %user_data4 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %user_data, ptr %user_data4, align 8
  %ipp = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 1
  %4 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipp, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call8 = tail call i32 @drm_event_reserve_init(ptr noundef %7, ptr noundef %file_priv, ptr noundef nonnull %call7.i.i, ptr noundef %event) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %free

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %event12 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 10
  %8 = ptrtoint ptr %event12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %event12, align 4
  br label %cleanup

free:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %free ], [ 0, %if.end11 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos_drm_ipp_schedule_task(ptr noundef %ipp, ptr noundef %task) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 10
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %head = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 2
  %todo_list = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 12
  %0 = ptrtoint ptr %todo_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %todo_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %todo_list, ptr noundef %1) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %prev1.i.i, align 4
  %3 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %todo_list, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %todo_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %head, ptr %todo_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  tail call fastcc void @exynos_drm_ipp_next_task(ptr noundef %ipp)
  ret void
}

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos_drm_ipp_task_abort(ptr noundef %ipp, ptr noundef %task) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 10
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %flags5 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 8
  %0 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags5, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.else:                                          ; preds = %entry
  %task7 = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 11
  %2 = ptrtoint ptr %task7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task7, align 4
  %cmp8.not = icmp eq ptr %3, %task
  br i1 %cmp8.not, label %if.else12, label %if.then10

if.then10:                                        ; preds = %if.else
  %head = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then10.list_del_init.exit_crit_edge

if.then10.list_del_init.exit_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then10.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %head, ptr %head, align 4
  %prev.i3.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head, ptr %prev.i3.i, align 4
  br label %if.end20

if.else12:                                        ; preds = %if.else
  %or = or i32 %1, 2
  %12 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %flags5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  %funcs = getelementptr inbounds %struct.exynos_drm_ipp, ptr %ipp, i32 0, i32 5
  %13 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs, align 4
  %abort = getelementptr inbounds %struct.exynos_drm_ipp_funcs, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %abort to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %abort, align 4
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %if.else12.cleanup_crit_edge, label %if.then16

if.else12.cleanup_crit_edge:                      ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %16(ptr noundef %ipp, ptr noundef %task) #6
  br label %cleanup

if.end20:                                         ; preds = %list_del_init.exit, %entry.if.end20_crit_edge
  %call11 = tail call fastcc i32 @exynos_drm_ipp_task_cleanup(ptr noundef %task)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then16, %if.else12.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exynos_drm_ipp_task_cleanup(ptr noundef %task) unnamed_addr #0 align 64 {
entry:
  %now.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ret1 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 9
  %0 = ptrtoint ptr %ret1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ret1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %event = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 10
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now.i) #6
  %4 = call ptr @memset(ptr %now.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %now.i) #6
  %5 = ptrtoint ptr %now.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %now.i, align 8
  %conv.i = trunc i64 %6 to i32
  %7 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %event, align 4
  %tv_sec2.i = getelementptr inbounds %struct.drm_pending_exynos_ipp_event, ptr %8, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %tv_sec2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.i, ptr %tv_sec2.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %now.i, i32 0, i32 1
  %10 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %11, 1000
  %12 = load ptr, ptr %event, align 4
  %tv_usec.i = getelementptr inbounds %struct.drm_pending_exynos_ipp_event, ptr %12, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %tv_usec.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div.i, ptr %tv_usec.i, align 4
  %ipp.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 1
  %14 = ptrtoint ptr %ipp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ipp.i, align 4
  %sequence.i = getelementptr inbounds %struct.exynos_drm_ipp, ptr %15, i32 0, i32 9
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sequence.i, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !89
  call void @llvm.prefetch.p0(ptr %sequence.i, i32 1, i32 3, i32 1) #6
  %16 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sequence.i, ptr %sequence.i, i32 1, ptr elementtype(i32) %sequence.i) #6, !srcloc !90
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !91
  %17 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %event, align 4
  %sequence7.i = getelementptr inbounds %struct.drm_pending_exynos_ipp_event, ptr %18, i32 0, i32 1, i32 5
  %19 = ptrtoint ptr %sequence7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %asmresult.i.i.i.i.i, ptr %sequence7.i, align 4
  %20 = ptrtoint ptr %ipp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ipp.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = load ptr, ptr %event, align 4
  call void @drm_send_event(ptr noundef %23, ptr noundef %24) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now.i) #6
  %25 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %event, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ipp = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 1
  %26 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ipp, align 4
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %29, i32 noundef 2, ptr noundef nonnull @.str.30, ptr noundef %task) #6
  %src.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3
  call fastcc void @exynos_drm_ipp_task_release_buf(ptr noundef %src.i) #6
  %dst.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4
  call fastcc void @exynos_drm_ipp_task_release_buf(ptr noundef %dst.i) #6
  %event.i9 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 10
  %30 = ptrtoint ptr %event.i9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %event.i9, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end.exynos_drm_ipp_task_free.exit_crit_edge, label %if.then.i

if.end.exynos_drm_ipp_task_free.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos_drm_ipp_task_free.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %27, align 4
  call void @drm_event_cancel_free(ptr noundef %33, ptr noundef nonnull %31) #6
  br label %exynos_drm_ipp_task_free.exit

exynos_drm_ipp_task_free.exit:                    ; preds = %if.then.i, %if.end.exynos_drm_ipp_task_free.exit_crit_edge
  call void @kfree(ptr noundef %task) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exynos_drm_ipp_check_format(ptr noundef %task, ptr noundef %buf, ptr noundef readonly %src, ptr noundef readonly %dst, i1 noundef zeroext %rotate, i1 noundef zeroext %swap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ipp = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 1
  %0 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipp, align 4
  %fourcc = getelementptr inbounds %struct.drm_exynos_ipp_task_buffer, ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fourcc, align 4
  %modifier = getelementptr inbounds %struct.drm_exynos_ipp_task_buffer, ptr %buf, i32 0, i32 7
  %4 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %modifier, align 8
  %cmp = icmp eq ptr %buf, %src
  %cond = select i1 %cmp, i32 1, i32 2
  %num_formats.i = getelementptr inbounds %struct.exynos_drm_ipp, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %num_formats.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp21.not.i = icmp eq i32 %7, 0
  br i1 %cmp21.not.i, label %entry.if.then_crit_edge, label %for.body.lr.ph.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %entry
  %formats.i = getelementptr inbounds %struct.exynos_drm_ipp, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %formats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %formats.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.022.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.exynos_drm_ipp_formats, ptr %9, i32 %i.022.i
  %type1.i = getelementptr %struct.exynos_drm_ipp_formats, ptr %9, i32 %i.022.i, i32 1
  %10 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type1.i, align 4
  %and.i = and i32 %11, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %3)
  %cmp5.i = icmp eq i32 %13, %3
  br i1 %cmp5.i, label %land.lhs.true6.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %modifier.i = getelementptr %struct.exynos_drm_ipp_formats, ptr %9, i32 %i.022.i, i32 2
  %14 = ptrtoint ptr %modifier.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %modifier.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %5)
  %cmp9.i = icmp eq i64 %15, %5
  br i1 %cmp9.i, label %__ipp_format_get.exit, label %land.lhs.true6.i.for.inc.i_crit_edge

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true6.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

__ipp_format_get.exit:                            ; preds = %land.lhs.true6.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %__ipp_format_get.exit.if.then_crit_edge, label %if.end

__ipp_format_get.exit.if.then_crit_edge:          ; preds = %__ipp_format_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %__ipp_format_get.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %cond5 = select i1 %cmp, ptr @.str.21, ptr @.str.22
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %17, i32 noundef 2, ptr noundef nonnull @.str.20, ptr noundef %task, ptr noundef nonnull %cond5) #6
  br label %cleanup92

if.end:                                           ; preds = %__ipp_format_get.exit
  %width = getelementptr inbounds %struct.drm_exynos_ipp_task_buffer, ptr %buf, i32 0, i32 2
  %18 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp7 = icmp eq i32 %19, 0
  br i1 %cmp7, label %if.end.cleanup92_crit_edge, label %lor.lhs.false

if.end.cleanup92_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup92

lor.lhs.false:                                    ; preds = %if.end
  %height = getelementptr inbounds %struct.drm_exynos_ipp_task_buffer, ptr %buf, i32 0, i32 3
  %20 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp9 = icmp eq i32 %21, 0
  br i1 %cmp9, label %lor.lhs.false.cleanup92_crit_edge, label %if.end11

lor.lhs.false.cleanup92_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup92

if.end11:                                         ; preds = %lor.lhs.false
  %call14 = tail call ptr @drm_format_info(i32 noundef %3) #6
  %format = getelementptr inbounds %struct.exynos_drm_ipp_buffer, ptr %buf, i32 0, i32 3
  %22 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call14, ptr %format, align 8
  %num_planes166 = getelementptr inbounds %struct.drm_format_info, ptr %call14, i32 0, i32 2
  %23 = ptrtoint ptr %num_planes166 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_planes166, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp16168.not = icmp eq i8 %24, 0
  br i1 %cmp16168.not, label %if.end11.if.end72_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.if.end72_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

for.cond:                                         ; preds = %cleanup
  %inc = add nuw nsw i32 %i.0170, 1
  %25 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %format, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %28 to i32
  %cmp16 = icmp ult i32 %inc, %conv
  br i1 %cmp16, label %for.cond.for.body_crit_edge, label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end11.for.body_crit_edge
  %29 = phi ptr [ %26, %for.cond.for.body_crit_edge ], [ %call14, %if.end11.for.body_crit_edge ]
  %i.0170 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end11.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0170)
  %cmp19 = icmp eq i32 %i.0170, 0
  %30 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %width, align 8
  br i1 %cmp19, label %for.body.cond.end_crit_edge, label %cond.false

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %hsub = getelementptr inbounds %struct.drm_format_info, ptr %29, i32 0, i32 6
  %32 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hsub, align 2
  %conv26 = zext i8 %33 to i32
  %add = add i32 %31, -1
  %sub = add i32 %add, %conv26
  %div = udiv i32 %sub, %conv26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body.cond.end_crit_edge
  %cond30 = phi i32 [ %div, %cond.false ], [ %31, %for.body.cond.end_crit_edge ]
  %arrayidx = getelementptr %struct.drm_exynos_ipp_task_buffer, ptr %buf, i32 0, i32 6, i32 %i.0170
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp32 = icmp eq i32 %35, 0
  br i1 %cmp32, label %if.then34, label %cond.end.if.end41_crit_edge

cond.end.if.end41_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then34:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %36 = getelementptr inbounds %struct.drm_format_info, ptr %29, i32 0, i32 3
  %arrayidx36 = getelementptr [4 x i8], ptr %36, i32 0, i32 %i.0170
  %37 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %38 to i32
  %mul = mul i32 %cond30, %conv37
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mul, ptr %arrayidx, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then34, %cond.end.if.end41_crit_edge
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %42 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %format, align 8
  %44 = getelementptr inbounds %struct.drm_format_info, ptr %43, i32 0, i32 3
  %arrayidx46 = getelementptr [4 x i8], ptr %44, i32 0, i32 %i.0170
  %45 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %46 to i32
  %mul48 = mul i32 %cond30, %conv47
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %mul48)
  %cmp49 = icmp ult i32 %41, %mul48
  br i1 %cmp49, label %if.end41.cleanup92_crit_edge, label %cleanup

if.end41.cleanup92_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup92

cleanup:                                          ; preds = %if.end41
  %arrayidx54 = getelementptr %struct.drm_exynos_ipp_task_buffer, ptr %buf, i32 0, i32 4, i32 %i.0170
  %47 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool55.not = icmp eq i32 %48, 0
  br i1 %tobool55.not, label %cleanup.cleanup92_crit_edge, label %for.cond

cleanup.cleanup92_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup92

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp61 = icmp ugt i8 %28, 2
  br i1 %cmp61, label %land.lhs.true, label %for.end.if.end72_crit_edge

for.end.if.end72_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

land.lhs.true:                                    ; preds = %for.end
  %arrayidx65 = getelementptr %struct.drm_exynos_ipp_task_buffer, ptr %buf, i32 0, i32 6, i32 1
  %49 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx65, align 4
  %arrayidx68 = getelementptr %struct.drm_exynos_ipp_task_buffer, ptr %buf, i32 0, i32 6, i32 2
  %51 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx68, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp69.not = icmp eq i32 %50, %52
  br i1 %cmp69.not, label %land.lhs.true.if.end72_crit_edge, label %land.lhs.true.cleanup92_crit_edge

land.lhs.true.cleanup92_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup92

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.end72:                                         ; preds = %land.lhs.true.if.end72_crit_edge, %for.end.if.end72_crit_edge, %if.end11.if.end72_crit_edge
  %.lcssa162181 = phi ptr [ %26, %land.lhs.true.if.end72_crit_edge ], [ %26, %for.end.if.end72_crit_edge ], [ %call14, %if.end11.if.end72_crit_edge ]
  %limits = getelementptr %struct.exynos_drm_ipp_formats, ptr %9, i32 %i.022.i, i32 3
  %53 = ptrtoint ptr %limits to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %limits, align 8
  %num_limits = getelementptr %struct.exynos_drm_ipp_formats, ptr %9, i32 %i.022.i, i32 4
  %55 = ptrtoint ptr %num_limits to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_limits, align 4
  %cmp74 = icmp eq ptr %buf, %dst
  %spec.select = and i1 %cmp74, %swap
  %cond.i = select i1 %rotate, i32 2, i32 1
  %tobool4.not.i = icmp eq ptr %54, null
  br i1 %tobool4.not.i, label %if.end72.if.end86_crit_edge, label %if.end.i

if.end72.if.end86_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.end.i:                                         ; preds = %if.end72
  %pitch.i = getelementptr inbounds %struct.drm_exynos_ipp_task_buffer, ptr %buf, i32 0, i32 6
  %57 = ptrtoint ptr %pitch.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pitch.i, align 8
  %59 = getelementptr inbounds %struct.drm_format_info, ptr %.lcssa162181, i32 0, i32 3
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %59, align 2
  %conv.i = zext i8 %61 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %54 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp67.not.i.i = icmp eq i32 %56, 0
  br i1 %cmp67.not.i.i, label %if.end.i.if.end10.i_crit_edge, label %if.end.i.for.body3.i.i_crit_edge

if.end.i.for.body3.i.i_crit_edge:                 ; preds = %if.end.i
  br label %for.body3.i.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

for.body3.i.i:                                    ; preds = %for.inc.i.i.for.body3.i.i_crit_edge, %if.end.i.for.body3.i.i_crit_edge
  %l.sroa.0.1.i = phi i32 [ %l.sroa.0.3.i, %for.inc.i.i.for.body3.i.i_crit_edge ], [ 0, %if.end.i.for.body3.i.i_crit_edge ]
  %l.sroa.12.1.i = phi i32 [ %l.sroa.12.3.i, %for.inc.i.i.for.body3.i.i_crit_edge ], [ 0, %if.end.i.for.body3.i.i_crit_edge ]
  %l.sroa.23.1.i = phi i32 [ %l.sroa.23.3.i, %for.inc.i.i.for.body3.i.i_crit_edge ], [ 0, %if.end.i.for.body3.i.i_crit_edge ]
  %l.sroa.34.1.i = phi i32 [ %l.sroa.34.3.i, %for.inc.i.i.for.body3.i.i_crit_edge ], [ 0, %if.end.i.for.body3.i.i_crit_edge ]
  %l.sroa.42.1.i = phi i32 [ %l.sroa.42.3.i, %for.inc.i.i.for.body3.i.i_crit_edge ], [ 0, %if.end.i.for.body3.i.i_crit_edge ]
  %l.sroa.53.1.i = phi i32 [ %l.sroa.53.2.i, %for.inc.i.i.for.body3.i.i_crit_edge ], [ 0, %if.end.i.for.body3.i.i_crit_edge ]
  %l.068.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body3.i.i_crit_edge ], [ %54, %if.end.i.for.body3.i.i_crit_edge ]
  %62 = ptrtoint ptr %l.068.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %l.068.i.i, align 4
  %64 = and i32 %63, 983055
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %64)
  %65 = icmp eq i32 %64, 65537
  br i1 %65, label %if.end.i.i, label %for.body3.i.i.for.inc.i.i_crit_edge

for.body3.i.i.for.inc.i.i_crit_edge:              ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.sroa.0.1.i)
  %tobool.not.i.i.i = icmp eq i32 %l.sroa.0.1.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.i.__limit_set_val.exit.i.i_crit_edge

if.end.i.i.__limit_set_val.exit.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__limit_set_val.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %h10.i.i = getelementptr inbounds %struct.drm_exynos_ipp_limit, ptr %l.068.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %h10.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %h10.i.i, align 4
  br label %__limit_set_val.exit.i.i

__limit_set_val.exit.i.i:                         ; preds = %if.then.i.i.i, %if.end.i.i.__limit_set_val.exit.i.i_crit_edge
  %l.sroa.0.2.i = phi i32 [ %67, %if.then.i.i.i ], [ %l.sroa.0.1.i, %if.end.i.i.__limit_set_val.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.sroa.12.1.i)
  %tobool.not.i51.i.i = icmp eq i32 %l.sroa.12.1.i, 0
  br i1 %tobool.not.i51.i.i, label %if.then.i52.i.i, label %__limit_set_val.exit.i.i.__limit_set_val.exit53.i.i_crit_edge

__limit_set_val.exit.i.i.__limit_set_val.exit53.i.i_crit_edge: ; preds = %__limit_set_val.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__limit_set_val.exit53.i.i

if.then.i52.i.i:                                  ; preds = %__limit_set_val.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %max14.i.i = getelementptr inbounds %struct.drm_exynos_ipp_limit, ptr %l.068.i.i, i32 0, i32 2, i32 1
  %68 = ptrtoint ptr %max14.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max14.i.i, align 4
  br label %__limit_set_val.exit53.i.i

__limit_set_val.exit53.i.i:                       ; preds = %if.then.i52.i.i, %__limit_set_val.exit.i.i.__limit_set_val.exit53.i.i_crit_edge
  %l.sroa.12.2.i = phi i32 [ %69, %if.then.i52.i.i ], [ %l.sroa.12.1.i, %__limit_set_val.exit.i.i.__limit_set_val.exit53.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.sroa.23.1.i)
  %tobool.not.i54.i.i = icmp eq i32 %l.sroa.23.1.i, 0
  br i1 %tobool.not.i54.i.i, label %if.then.i55.i.i, label %__limit_set_val.exit53.i.i.__limit_set_val.exit56.i.i_crit_edge

__limit_set_val.exit53.i.i.__limit_set_val.exit56.i.i_crit_edge: ; preds = %__limit_set_val.exit53.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__limit_set_val.exit56.i.i

if.then.i55.i.i:                                  ; preds = %__limit_set_val.exit53.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %align17.i.i = getelementptr inbounds %struct.drm_exynos_ipp_limit, ptr %l.068.i.i, i32 0, i32 2, i32 2
  %70 = ptrtoint ptr %align17.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %align17.i.i, align 4
  br label %__limit_set_val.exit56.i.i

__limit_set_val.exit56.i.i:                       ; preds = %if.then.i55.i.i, %__limit_set_val.exit53.i.i.__limit_set_val.exit56.i.i_crit_edge
  %l.sroa.23.2.i = phi i32 [ %71, %if.then.i55.i.i ], [ %l.sroa.23.1.i, %__limit_set_val.exit53.i.i.__limit_set_val.exit56.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.sroa.34.1.i)
  %tobool.not.i57.i.i = icmp eq i32 %l.sroa.34.1.i, 0
  br i1 %tobool.not.i57.i.i, label %if.then.i58.i.i, label %__limit_set_val.exit56.i.i.__limit_set_val.exit59.i.i_crit_edge

__limit_set_val.exit56.i.i.__limit_set_val.exit59.i.i_crit_edge: ; preds = %__limit_set_val.exit56.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__limit_set_val.exit59.i.i

if.then.i58.i.i:                                  ; preds = %__limit_set_val.exit56.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %v19.i.i = getelementptr inbounds %struct.drm_exynos_ipp_limit, ptr %l.068.i.i, i32 0, i32 3
  %72 = ptrtoint ptr %v19.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %v19.i.i, align 4
  br label %__limit_set_val.exit59.i.i

__limit_set_val.exit59.i.i:                       ; preds = %if.then.i58.i.i, %__limit_set_val.exit56.i.i.__limit_set_val.exit59.i.i_crit_edge
  %l.sroa.34.2.i = phi i32 [ %73, %if.then.i58.i.i ], [ %l.sroa.34.1.i, %__limit_set_val.exit56.i.i.__limit_set_val.exit59.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.sroa.42.1.i)
  %tobool.not.i60.i.i = icmp eq i32 %l.sroa.42.1.i, 0
  br i1 %tobool.not.i60.i.i, label %if.then.i61.i.i, label %__limit_set_val.exit59.i.i.__limit_set_val.exit62.i.i_crit_edge

__limit_set_val.exit59.i.i.__limit_set_val.exit62.i.i_crit_edge: ; preds = %__limit_set_val.exit59.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__limit_set_val.exit62.i.i

if.then.i61.i.i:                                  ; preds = %__limit_set_val.exit59.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %max24.i.i = getelementptr inbounds %struct.drm_exynos_ipp_limit, ptr %l.068.i.i, i32 0, i32 3, i32 1
  %74 = ptrtoint ptr %max24.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max24.i.i, align 4
  br label %__limit_set_val.exit62.i.i

__limit_set_val.exit62.i.i:                       ; preds = %if.then.i61.i.i, %__limit_set_val.exit59.i.i.__limit_set_val.exit62.i.i_crit_edge
  %l.sroa.42.2.i = phi i32 [ %75, %if.then.i61.i.i ], [ %l.sroa.42.1.i, %__limit_set_val.exit59.i.i.__limit_set_val.exit62.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.sroa.53.1.i)
  %tobool.not.i63.i.i = icmp eq i32 %l.sroa.53.1.i, 0
  br i1 %tobool.not.i63.i.i, label %if.then.i64.i.i, label %__limit_set_val.exit62.i.i.for.inc.i.i_crit_edge

__limit_set_val.exit62.i.i.for.inc.i.i_crit_edge: ; preds = %__limit_set_val.exit62.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then.i64.i.i:                                  ; preds = %__limit_set_val.exit62.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %align28.i.i = getelementptr inbounds %struct.drm_exynos_ipp_limit, ptr %l.068.i.i, i32 0, i32 3, i32 2
  %76 = ptrtoint ptr %align28.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %align28.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i64.i.i, %__limit_set_val.exit62.i.i.for.inc.i.i_crit_edge, %for.body3.i.i.for.inc.i.i_crit_edge
  %l.sroa.0.3.i = phi i32 [ %l.sroa.0.2.i, %if.then.i64.i.i ], [ %l.sroa.0.2.i, %__limit_set_val.exit62.i.i.for.inc.i.i_crit_edge ], [ %l.sroa.0.1.i, %for.body3.i.i.for.inc.i.i_crit_edge ]
  %l.sroa.12.3.i = phi i32 [ %l.sroa.12.2.i, %if.then.i64.i.i ], [ %l.sroa.12.2.i, %__limit_set_val.exit62.i.i.for.inc.i.i_crit_edge ], [ %l.sroa.12.1.i, %for.body3.i.i.for.inc.i.i_crit_edge ]
  %l.sroa.23.3.i = phi i32 [ %l.sroa.23.2.i, %if.then.i64.i.i ], [ %l.sroa.23.2.i, %__limit_set_val.exit62.i.i.for.inc.i.i_crit_edge ], [ %l.sroa.23.1.i, %for.body3.i.i.for.inc.i.i_crit_edge ]
  %l.sroa.34.3.i = phi i32 [ %l.sroa.34.2.i, %if.then.i64.i.i ], [ %l.sroa.34.2.i, %__limit_set_val.exit62.i.i.for.inc.i.i_crit_edge ], [ %l.sroa.34.1.i, %for.body3.i.i.for.inc.i.i_crit_edge ]
  %l.sroa.42.3.i = phi i32 [ %l.sroa.42.2.i, %if.then.i64.i.i ], [ %l.sroa.42.2.i, %__limit_set_val.exit62.i.i.for.inc.i.i_crit_edge ], [ %l.sroa.42.1.i, %for.body3.i.i.for.inc.i.i_crit_edge ]
  %l.sroa.53.2.i = phi i32 [ %77, %if.then.i64.i.i ], [ %l.sroa.53.1.i, %__limit_set_val.exit62.i.i.for.inc.i.i_crit_edge ], [ %l.sroa.53.1.i, %for.body3.i.i.for.inc.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr %struct.drm_exynos_ipp_limit, ptr %l.068.i.i, i32 1
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %incdec.ptr.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 40
  %cmp.i.i = icmp ult i32 %sub.ptr.div.i.i, %56
  br i1 %cmp.i.i, label %for.inc.i.i.for.body3.i.i_crit_edge, label %for.inc29.i.i

for.inc.i.i.for.body3.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i.i

for.inc29.i.i:                                    ; preds = %for.inc.i.i
  %div.i = udiv i32 %58, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %l.sroa.0.3.i, i32 %div.i)
  %cmp.i47.i = icmp ugt i32 %l.sroa.0.3.i, %div.i
  br i1 %cmp.i47.i, label %for.inc29.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

for.inc29.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %for.inc29.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.sroa.12.3.i)
  %tobool2.not.i.i = icmp ne i32 %l.sroa.12.3.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %l.sroa.12.3.i, i32 %div.i)
  %cmp5.i.i = icmp ult i32 %l.sroa.12.3.i, %div.i
  %or.cond18.i.i = and i1 %tobool2.not.i.i, %cmp5.i.i
  br i1 %or.cond18.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %if.end.i51.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %for.inc29.i.i.if.then.i.i_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %div.i, i32 noundef %l.sroa.0.3.i, i32 noundef %l.sroa.12.3.i) #6
  br label %cleanup92

if.end.i51.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.sroa.23.3.i)
  %tobool.not.i.i50.i = icmp eq i32 %l.sroa.23.3.i, 0
  br i1 %tobool.not.i.i50.i, label %if.end.i51.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i51.i.lor.lhs.false.i_crit_edge:           ; preds = %if.end.i51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i51.i
  %sub.i.i.i = add i32 %l.sroa.23.3.i, -1
  %and.i.i.i = and i32 %div.i, %sub.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.lor.lhs.false.i_crit_edge, label %if.then.i.i52.i

land.lhs.true.i.i.i.lor.lhs.false.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

if.then.i.i52.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %div.i, i32 noundef %l.sroa.23.3.i) #6
  br label %cleanup92

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.i.i.lor.lhs.false.i_crit_edge, %if.end.i51.i.lor.lhs.false.i_crit_edge
  %78 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %l.sroa.34.3.i, i32 %79)
  %cmp.i53.i = icmp ugt i32 %l.sroa.34.3.i, %79
  br i1 %cmp.i53.i, label %lor.lhs.false.i.if.then.i60.i_crit_edge, label %lor.lhs.false.i58.i

lor.lhs.false.i.if.then.i60.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i60.i

lor.lhs.false.i58.i:                              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.sroa.42.3.i)
  %tobool2.not.i55.i = icmp ne i32 %l.sroa.42.3.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %l.sroa.42.3.i, i32 %79)
  %cmp5.i56.i = icmp ult i32 %l.sroa.42.3.i, %79
  %or.cond18.i57.i = and i1 %tobool2.not.i55.i, %cmp5.i56.i
  br i1 %or.cond18.i57.i, label %lor.lhs.false.i58.i.if.then.i60.i_crit_edge, label %if.end.i63.i

lor.lhs.false.i58.i.if.then.i60.i_crit_edge:      ; preds = %lor.lhs.false.i58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i60.i

if.then.i60.i:                                    ; preds = %lor.lhs.false.i58.i.if.then.i60.i_crit_edge, %lor.lhs.false.i.if.then.i60.i_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %79, i32 noundef %l.sroa.34.3.i, i32 noundef %l.sroa.42.3.i) #6
  br label %cleanup92

if.end.i63.i:                                     ; preds = %lor.lhs.false.i58.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.sroa.53.2.i)
  %tobool.not.i.i62.i = icmp eq i32 %l.sroa.53.2.i, 0
  br i1 %tobool.not.i.i62.i, label %if.end.i63.i.if.end10.i_crit_edge, label %land.lhs.true.i.i67.i

if.end.i63.i.if.end10.i_crit_edge:                ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

land.lhs.true.i.i67.i:                            ; preds = %if.end.i63.i
  %sub.i.i64.i = add i32 %l.sroa.53.2.i, -1
  %and.i.i65.i = and i32 %79, %sub.i.i64.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i65.i)
  %tobool1.not.i.i66.i = icmp eq i32 %and.i.i65.i, 0
  br i1 %tobool1.not.i.i66.i, label %land.lhs.true.i.i67.i.if.end10.i_crit_edge, label %if.then.i.i68.i

land.lhs.true.i.i67.i.if.end10.i_crit_edge:       ; preds = %land.lhs.true.i.i67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then.i.i68.i:                                  ; preds = %land.lhs.true.i.i67.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %79, i32 noundef %l.sroa.53.2.i) #6
  br label %cleanup92

if.end10.i:                                       ; preds = %land.lhs.true.i.i67.i.if.end10.i_crit_edge, %if.end.i63.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %arrayidx170.i.i = getelementptr [3 x [4 x i32]], ptr @limit_id_fallback, i32 0, i32 %cond.i, i32 0
  %80 = ptrtoint ptr %arrayidx170.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx170.i.i, align 4
  br label %for.cond2.preheader.i79.i

for.cond2.preheader.i79.i:                        ; preds = %for.inc29.i120.i.for.cond2.preheader.i79.i_crit_edge, %if.end10.i
  %l.sroa.0.5.i = phi i32 [ 0, %if.end10.i ], [ %l.sroa.0.9.i, %for.inc29.i120.i.for.cond2.preheader.i79.i_crit_edge ]
  %l.sroa.12.5.i = phi i32 [ 0, %if.end10.i ], [ %l.sroa.12.9.i, %for.inc29.i120.i.for.cond2.preheader.i79.i_crit_edge ]
  %l.sroa.23.5.i = phi i32 [ 0, %if.end10.i ], [ %l.sroa.23.9.i, %for.inc29.i120.i.for.cond2.preheader.i79.i_crit_edge ]
  %l.sroa.34.5.i = phi i32 [ 0, %if.end10.i ], [ %l.sroa.34.9.i, %for.inc29.i120.i.for.cond2.preheader.i79.i_crit_edge ]
  %l.sroa.42.5.i = phi i32 [ 0, %if.end10.i ], [ %l.sroa.42.9.i, %for.inc29.i120.i.for.cond2.preheader.i79.i_crit_edge ]
  %l.sroa.53.4.i = phi i32 [ 0, %if.end10.i ], [ %l.sroa.53.7.i, %for.inc29.i120.i.for.cond2.preheader.i79.i_crit_edge ]
  %82 = phi i32 [ %81, %if.end10.i ], [ %98, %for.inc29.i120.i.for.cond2.preheader.i79.i_crit_edge ]
  %i.072.i78.i = phi i32 [ 0, %if.end10.i ], [ %inc.i117.i, %for.inc29.i120.i.for.cond2.preheader.i79.i_crit_edge ]
  br i1 %cmp67.not.i.i, label %for.cond2.preheader.i79.i.for.inc29.i120.i_crit_edge, label %for.cond2.preheader.i79.i.for.body3.i86.i_crit_edge

for.cond2.preheader.i79.i.for.body3.i86.i_crit_edge: ; preds = %for.cond2.preheader.i79.i
  br label %for.body3.i86.i

for.cond2.preheader.i79.i.for.inc29.i120.i_crit_edge: ; preds = %for.cond2.preheader.i79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc29.i120.i

for.body3.i86.i:                                  ; preds = %for.inc.i116.i.for.body3.i86.i_crit_edge, %for.cond2.preheader.i79.i.for.body3.i86.i_crit_edge
  %l.sroa.0.6.i = phi i32 [ %l.sroa.0.8.i, %for.inc.i116.i.for.body3.i86.i_crit_edge ], [ %l.sroa.0.5.i, %for.cond2.preheader.i79.i.for.body3.i86.i_crit_edge ]
  %l.sroa.12.6.i = phi i32 [ %l.sroa.12.8.i, %for.inc.i116.i.for.body3.i86.i_crit_edge ], [ %l.sroa.12.5.i, %for.cond2.preheader.i79.i.for.body3.i86.i_crit_edge ]
  %l.sroa.23.6.i = phi i32 [ %l.sroa.23.8.i, %for.inc.i116.i.for.body3.i86.i_crit_edge ], [ %l.sroa.23.5.i, %for.cond2.preheader.i79.i.for.body3.i86.i_crit_edge ]
  %l.sroa.34.6.i = phi i32 [ %l.sroa.34.8.i, %for.inc.i116.i.for.body3.i86.i_crit_edge ], [ %l.sroa.34.5.i, %for.cond2.preheader.i79.i.for.body3.i86.i_crit_edge ]
  %l.sroa.42.6.i = phi i32 [ %l.sroa.42.8.i, %for.inc.i116.i.for.body3.i86.i_crit_edge ], [ %l.sroa.42.5.i, %for.cond2.preheader.i79.i.for.body3.i86.i_crit_edge ]
  %l.sroa.53.5.i = phi i32 [ %l.sroa.53.6.i, %for.inc.i116.i.for.body3.i86.i_crit_edge ], [ %l.sroa.53.4.i, %for.cond2.preheader.i79.i.for.body3.i86.i_crit_edge ]
  %l.068.i80.i = phi ptr [ %incdec.ptr.i111.i, %for.inc.i116.i.for.body3.i86.i_crit_edge ], [ %54, %for.cond2.preheader.i79.i.for.body3.i86.i_crit_edge ]
  %83 = ptrtoint ptr %l.068.i80.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %l.068.i80.i, align 4
  %and.i81.i = and i32 %84, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i81.i)
  %cmp4.not.i82.i = icmp eq i32 %and.i81.i, 1
  %and6.i83.i = and i32 %84, 983040
  call void @__sanitizer_cov_trace_cmp4(i32 %and6.i83.i, i32 %82)
  %cmp9.not.i84.i = icmp eq i32 %and6.i83.i, %82
  %or.cond.i85.i = select i1 %cmp4.not.i82.i, i1 %cmp9.not.i84.i, i1 false
  br i1 %or.cond.i85.i, label %if.end.i88.i, label %for.body3.i86.i.for.inc.i116.i_crit_edge

for.body3.i86.i.for.inc.i116.i_crit_edge:         ; preds = %for.body3.i86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i116.i

if.end.i88.i:                                     ; preds = %for.body3.i86.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.sroa.0.6.i)
  %tobool.not.i.i87.i = icmp eq i32 %l.sroa.0.6.i, 0
  br i1 %tobool.not.i.i87.i, label %if.then.i.i90.i, label %if.end.i88.i.__limit_set_val.exit.i92.i_crit_edge

if.end.i88.i.__limit_set_val.exit.i92.i_crit_edge: ; preds = %if.end.i88.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__limit_set_val.exit.i92.i

if.then.i.i90.i:                                  ; preds = %if.end.i88.i
  call void @__sanitizer_cov_trace_pc() #8
  %h10.i89.i = getelementptr inbounds %struct.drm_exynos_ipp_limit, ptr %l.068.i80.i, i32 0, i32 2
  %85 = ptrtoint ptr %h10.i89.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %h10.i89.i, align 4
  br label %__limit_set_val.exit.i92.i

__limit_set_val.exit.i92.i:                       ; preds = %if.then.i.i90.i, %if.end.i88.i.__limit_set_val.exit.i92.i_crit_edge
  %l.sroa.0.7.i = phi i32 [ %86, %if.then.i.i90.i ], [ %l.sroa.0.6.i, %if.end.i88.i.__limit_set_val.exit.i92.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.sroa.12.6.i)
  %tobool.not.i51.i91.i = icmp eq i32 %l.sroa.12.6.i, 0
  br i1 %tobool.not.i51.i91.i, label %if.then.i52.i94.i, label %__limit_set_val.exit.i92.i.__limit_set_val.exit53.i96.i_crit_edge

__limit_set_val.exit.i92.i.__limit_set_val.exit53.i96.i_crit_edge: ; preds = %__limit_set_val.exit.i92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__limit_set_val.exit53.i96.i

if.then.i52.i94.i:                                ; preds = %__limit_set_val.exit.i92.i
  call void @__sanitizer_cov_trace_pc() #8
  %max14.i93.i = getelementptr inbounds %struct.drm_exynos_ipp_limit, ptr %l.068.i80.i, i32 0, i32 2, i32 1
  %87 = ptrtoint ptr %max14.i93.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max14.i93.i, align 4
  br label %__limit_set_val.exit53.i96.i

__limit_set_val.exit53.i96.i:                     ; preds = %if.then.i52.i94.i, %__limit_set_val.exit.i92.i.__limit_set_val.exit53.i96.i_crit_edge
  %l.sroa.12.7.i = phi i32 [ %88, %if.then.i52.i94.i ], [ %l.sroa.12.6.i, %__limit_set_val.exit.i92.i.__limit_set_val.exit53.i96.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.sroa.23.6.i)
  %tobool.not.i54.i95.i = icmp eq i32 %l.sroa.23.6.i, 0
  br i1 %tobool.not.i54.i95.i, label %if.then.i55.i98.i, label %__limit_set_val.exit53.i96.i.__limit_set_val.exit56.i100.i_crit_edge

__limit_set_val.exit53.i96.i.__limit_set_val.exit56.i100.i_crit_edge: ; preds = %__limit_set_val.exit53.i96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__limit_set_val.exit56.i100.i

if.then.i55.i98.i:                                ; preds = %__limit_set_val.exit53.i96.i
  call void @__sanitizer_cov_trace_pc() #8
  %align17.i97.i = getelementptr inbounds %struct.drm_exynos_ipp_limit, ptr %l.068.i80.i, i32 0, i32 2, i32 2
  %89 = ptrtoint ptr %align17.i97.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %align17.i97.i, align 4
  br label %__limit_set_val.exit56.i100.i

__limit_set_val.exit56.i100.i:                    ; preds = %if.then.i55.i98.i, %__limit_set_val.exit53.i96.i.__limit_set_val.exit56.i100.i_crit_edge
  %l.sroa.23.7.i = phi i32 [ %90, %if.then.i55.i98.i ], [ %l.sroa.23.6.i, %__limit_set_val.exit53.i96.i.__limit_set_val.exit56.i100.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.sroa.34.6.i)
  %tobool.not.i57.i99.i = icmp eq i32 %l.sroa.34.6.i, 0
  br i1 %tobool.not.i57.i99.i, label %if.then.i58.i102.i, label %__limit_set_val.exit56.i100.i.__limit_set_val.exit59.i104.i_crit_edge

__limit_set_val.exit56.i100.i.__limit_set_val.exit59.i104.i_crit_edge: ; preds = %__limit_set_val.exit56.i100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__limit_set_val.exit59.i104.i

if.then.i58.i102.i:                               ; preds = %__limit_set_val.exit56.i100.i
  call void @__sanitizer_cov_trace_pc() #8
  %v19.i101.i = getelementptr inbounds %struct.drm_exynos_ipp_limit, ptr %l.068.i80.i, i32 0, i32 3
  %91 = ptrtoint ptr %v19.i101.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %v19.i101.i, align 4
  br label %__limit_set_val.exit59.i104.i

__limit_set_val.exit59.i104.i:                    ; preds = %if.then.i58.i102.i, %__limit_set_val.exit56.i100.i.__limit_set_val.exit59.i104.i_crit_edge
  %l.sroa.34.7.i = phi i32 [ %92, %if.then.i58.i102.i ], [ %l.sroa.34.6.i, %__limit_set_val.exit56.i100.i.__limit_set_val.exit59.i104.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.sroa.42.6.i)
  %tobool.not.i60.i103.i = icmp eq i32 %l.sroa.42.6.i, 0
  br i1 %tobool.not.i60.i103.i, label %if.then.i61.i106.i, label %__limit_set_val.exit59.i104.i.__limit_set_val.exit62.i108.i_crit_edge

__limit_set_val.exit59.i104.i.__limit_set_val.exit62.i108.i_crit_edge: ; preds = %__limit_set_val.exit59.i104.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__limit_set_val.exit62.i108.i

if.then.i61.i106.i:                               ; preds = %__limit_set_val.exit59.i104.i
  call void @__sanitizer_cov_trace_pc() #8
  %max24.i105.i = getelementptr inbounds %struct.drm_exynos_ipp_limit, ptr %l.068.i80.i, i32 0, i32 3, i32 1
  %93 = ptrtoint ptr %max24.i105.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %max24.i105.i, align 4
  br label %__limit_set_val.exit62.i108.i

__limit_set_val.exit62.i108.i:                    ; preds = %if.then.i61.i106.i, %__limit_set_val.exit59.i104.i.__limit_set_val.exit62.i108.i_crit_edge
  %l.sroa.42.7.i = phi i32 [ %94, %if.then.i61.i106.i ], [ %l.sroa.42.6.i, %__limit_set_val.exit59.i104.i.__limit_set_val.exit62.i108.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.sroa.53.5.i)
  %tobool.not.i63.i107.i = icmp eq i32 %l.sroa.53.5.i, 0
  br i1 %tobool.not.i63.i107.i, label %if.then.i64.i110.i, label %__limit_set_val.exit62.i108.i.for.inc.i116.i_crit_edge

__limit_set_val.exit62.i108.i.for.inc.i116.i_crit_edge: ; preds = %__limit_set_val.exit62.i108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i116.i

if.then.i64.i110.i:                               ; preds = %__limit_set_val.exit62.i108.i
  call void @__sanitizer_cov_trace_pc() #8
  %align28.i109.i = getelementptr inbounds %struct.drm_exynos_ipp_limit, ptr %l.068.i80.i, i32 0, i32 3, i32 2
  %95 = ptrtoint ptr %align28.i109.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %align28.i109.i, align 4
  br label %for.inc.i116.i

for.inc.i116.i:                                   ; preds = %if.then.i64.i110.i, %__limit_set_val.exit62.i108.i.for.inc.i116.i_crit_edge, %for.body3.i86.i.for.inc.i116.i_crit_edge
  %l.sroa.0.8.i = phi i32 [ %l.sroa.0.7.i, %if.then.i64.i110.i ], [ %l.sroa.0.7.i, %__limit_set_val.exit62.i108.i.for.inc.i116.i_crit_edge ], [ %l.sroa.0.6.i, %for.body3.i86.i.for.inc.i116.i_crit_edge ]
  %l.sroa.12.8.i = phi i32 [ %l.sroa.12.7.i, %if.then.i64.i110.i ], [ %l.sroa.12.7.i, %__limit_set_val.exit62.i108.i.for.inc.i116.i_crit_edge ], [ %l.sroa.12.6.i, %for.body3.i86.i.for.inc.i116.i_crit_edge ]
  %l.sroa.23.8.i = phi i32 [ %l.sroa.23.7.i, %if.then.i64.i110.i ], [ %l.sroa.23.7.i, %__limit_set_val.exit62.i108.i.for.inc.i116.i_crit_edge ], [ %l.sroa.23.6.i, %for.body3.i86.i.for.inc.i116.i_crit_edge ]
  %l.sroa.34.8.i = phi i32 [ %l.sroa.34.7.i, %if.then.i64.i110.i ], [ %l.sroa.34.7.i, %__limit_set_val.exit62.i108.i.for.inc.i116.i_crit_edge ], [ %l.sroa.34.6.i, %for.body3.i86.i.for.inc.i116.i_crit_edge ]
  %l.sroa.42.8.i = phi i32 [ %l.sroa.42.7.i, %if.then.i64.i110.i ], [ %l.sroa.42.7.i, %__limit_set_val.exit62.i108.i.for.inc.i116.i_crit_edge ], [ %l.sroa.42.6.i, %for.body3.i86.i.for.inc.i116.i_crit_edge ]
  %l.sroa.53.6.i = phi i32 [ %96, %if.then.i64.i110.i ], [ %l.sroa.53.5.i, %__limit_set_val.exit62.i108.i.for.inc.i116.i_crit_edge ], [ %l.sroa.53.5.i, %for.body3.i86.i.for.inc.i116.i_crit_edge ]
  %incdec.ptr.i111.i = getelementptr %struct.drm_exynos_ipp_limit, ptr %l.068.i80.i, i32 1
  %sub.ptr.lhs.cast.i112.i = ptrtoint ptr %incdec.ptr.i111.i to i32
  %sub.ptr.sub.i113.i = sub i32 %sub.ptr.lhs.cast.i112.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i114.i = sdiv exact i32 %sub.ptr.sub.i113.i, 40
  %cmp.i115.i = icmp ult i32 %sub.ptr.div.i114.i, %56
  br i1 %cmp.i115.i, label %for.inc.i116.i.for.body3.i86.i_crit_edge, label %for.inc.i116.i.for.inc29.i120.i_crit_edge

for.inc.i116.i.for.inc29.i120.i_crit_edge:        ; preds = %for.inc.i116.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc29.i120.i

for.inc.i116.i.for.body3.i86.i_crit_edge:         ; preds = %for.inc.i116.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i86.i

for.inc29.i120.i:                                 ; preds = %for.inc.i116.i.for.inc29.i120.i_crit_edge, %for.cond2.preheader.i79.i.for.inc29.i120.i_crit_edge
  %l.sroa.0.9.i = phi i32 [ %l.sroa.0.5.i, %for.cond2.preheader.i79.i.for.inc29.i120.i_crit_edge ], [ %l.sroa.0.8.i, %for.inc.i116.i.for.inc29.i120.i_crit_edge ]
  %l.sroa.12.9.i = phi i32 [ %l.sroa.12.5.i, %for.cond2.preheader.i79.i.for.inc29.i120.i_crit_edge ], [ %l.sroa.12.8.i, %for.inc.i116.i.for.inc29.i120.i_crit_edge ]
  %l.sroa.23.9.i = phi i32 [ %l.sroa.23.5.i, %for.cond2.preheader.i79.i.for.inc29.i120.i_crit_edge ], [ %l.sroa.23.8.i, %for.inc.i116.i.for.inc29.i120.i_crit_edge ]
  %l.sroa.34.9.i = phi i32 [ %l.sroa.34.5.i, %for.cond2.preheader.i79.i.for.inc29.i120.i_crit_edge ], [ %l.sroa.34.8.i, %for.inc.i116.i.for.inc29.i120.i_crit_edge ]
  %l.sroa.42.9.i = phi i32 [ %l.sroa.42.5.i, %for.cond2.preheader.i79.i.for.inc29.i120.i_crit_edge ], [ %l.sroa.42.8.i, %for.inc.i116.i.for.inc29.i120.i_crit_edge ]
  %l.sroa.53.7.i = phi i32 [ %l.sroa.53.4.i, %for.cond2.preheader.i79.i.for.inc29.i120.i_crit_edge ], [ %l.sroa.53.6.i, %for.inc.i116.i.for.inc29.i120.i_crit_edge ]
  %inc.i117.i = add i32 %i.072.i78.i, 1
  %arrayidx1.i118.i = getelementptr [3 x [4 x i32]], ptr @limit_id_fallback, i32 0, i32 %cond.i, i32 %inc.i117.i
  %97 = ptrtoint ptr %arrayidx1.i118.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx1.i118.i, align 4
  %tobool.not.i119.i = icmp eq i32 %98, 0
  br i1 %tobool.not.i119.i, label %__get_size_limit.exit121.i, label %for.inc29.i120.i.for.cond2.preheader.i79.i_crit_edge

for.inc29.i120.i.for.cond2.preheader.i79.i_crit_edge: ; preds = %for.inc29.i120.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond2.preheader.i79.i

__get_size_limit.exit121.i:                       ; preds = %for.inc29.i120.i
  %w.i = getelementptr inbounds %struct.exynos_drm_ipp_buffer, ptr %buf, i32 0, i32 1, i32 4
  %99 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %w.i, align 8
  %.sroa.speculated242.i = select i1 %spec.select, i32 %l.sroa.34.9.i, i32 %l.sroa.0.9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %.sroa.speculated242.i, i32 %100)
  %cmp.i122.i = icmp ugt i32 %.sroa.speculated242.i, %100
  %.pre.i = select i1 %spec.select, i32 %l.sroa.42.9.i, i32 %l.sroa.12.9.i
  br i1 %cmp.i122.i, label %__get_size_limit.exit121.i.if.then.i129.i_crit_edge, label %lor.lhs.false.i127.i

__get_size_limit.exit121.i.if.then.i129.i_crit_edge: ; preds = %__get_size_limit.exit121.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i129.i

lor.lhs.false.i127.i:                             ; preds = %__get_size_limit.exit121.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %tobool2.not.i124.i = icmp ne i32 %.pre.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre.i, i32 %100)
  %cmp5.i125.i = icmp ult i32 %.pre.i, %100
  %or.cond18.i126.i = and i1 %tobool2.not.i124.i, %cmp5.i125.i
  br i1 %or.cond18.i126.i, label %lor.lhs.false.i127.i.if.then.i129.i_crit_edge, label %if.end.i132.i

lor.lhs.false.i127.i.if.then.i129.i_crit_edge:    ; preds = %lor.lhs.false.i127.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i129.i

if.then.i129.i:                                   ; preds = %lor.lhs.false.i127.i.if.then.i129.i_crit_edge, %__get_size_limit.exit121.i.if.then.i129.i_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %100, i32 noundef %.sroa.speculated242.i, i32 noundef %.pre.i) #6
  br label %cleanup92

if.end.i132.i:                                    ; preds = %lor.lhs.false.i127.i
  %.sroa.speculated210.i = select i1 %spec.select, i32 %l.sroa.53.7.i, i32 %l.sroa.23.9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.sroa.speculated210.i)
  %tobool.not.i.i131.i = icmp eq i32 %.sroa.speculated210.i, 0
  br i1 %tobool.not.i.i131.i, label %if.end.i132.i.lor.lhs.false20.i_crit_edge, label %land.lhs.true.i.i136.i

if.end.i132.i.lor.lhs.false20.i_crit_edge:        ; preds = %if.end.i132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false20.i

land.lhs.true.i.i136.i:                           ; preds = %if.end.i132.i
  %sub.i.i133.i = add i32 %.sroa.speculated210.i, -1
  %and.i.i134.i = and i32 %100, %sub.i.i133.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i134.i)
  %tobool1.not.i.i135.i = icmp eq i32 %and.i.i134.i, 0
  br i1 %tobool1.not.i.i135.i, label %land.lhs.true.i.i, label %if.then.i.i137.i

if.then.i.i137.i:                                 ; preds = %land.lhs.true.i.i136.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %100, i32 noundef %.sroa.speculated210.i) #6
  br label %cleanup92

land.lhs.true.i.i:                                ; preds = %land.lhs.true.i.i136.i
  %x.i = getelementptr inbounds %struct.exynos_drm_ipp_buffer, ptr %buf, i32 0, i32 1, i32 2
  %101 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %x.i, align 8
  %and.i141.i = and i32 %102, %sub.i.i133.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i141.i)
  %tobool1.not.i.i = icmp eq i32 %and.i141.i, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.lor.lhs.false20.i_crit_edge, label %__align_check.exit.i

land.lhs.true.i.i.lor.lhs.false20.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false20.i

__align_check.exit.i:                             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %102, i32 noundef %.sroa.speculated210.i) #6
  br label %cleanup92

lor.lhs.false20.i:                                ; preds = %land.lhs.true.i.i.lor.lhs.false20.i_crit_edge, %if.end.i132.i.lor.lhs.false20.i_crit_edge
  %h22.i = getelementptr inbounds %struct.exynos_drm_ipp_buffer, ptr %buf, i32 0, i32 1, i32 5
  %103 = ptrtoint ptr %h22.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %h22.i, align 4
  %.sroa.speculated239.i = select i1 %spec.select, i32 %l.sroa.0.9.i, i32 %l.sroa.34.9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %.sroa.speculated239.i, i32 %104)
  %cmp.i144.i = icmp ugt i32 %.sroa.speculated239.i, %104
  %.pre274.i = select i1 %spec.select, i32 %l.sroa.12.9.i, i32 %l.sroa.42.9.i
  br i1 %cmp.i144.i, label %lor.lhs.false20.i.if.then.i151.i_crit_edge, label %lor.lhs.false.i149.i

lor.lhs.false20.i.if.then.i151.i_crit_edge:       ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i151.i

lor.lhs.false.i149.i:                             ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre274.i)
  %tobool2.not.i146.i = icmp ne i32 %.pre274.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre274.i, i32 %104)
  %cmp5.i147.i = icmp ult i32 %.pre274.i, %104
  %or.cond18.i148.i = and i1 %tobool2.not.i146.i, %cmp5.i147.i
  br i1 %or.cond18.i148.i, label %lor.lhs.false.i149.i.if.then.i151.i_crit_edge, label %if.end.i154.i

lor.lhs.false.i149.i.if.then.i151.i_crit_edge:    ; preds = %lor.lhs.false.i149.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i151.i

if.then.i151.i:                                   ; preds = %lor.lhs.false.i149.i.if.then.i151.i_crit_edge, %lor.lhs.false20.i.if.then.i151.i_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %104, i32 noundef %.sroa.speculated239.i, i32 noundef %.pre274.i) #6
  br label %cleanup92

if.end.i154.i:                                    ; preds = %lor.lhs.false.i149.i
  %.sroa.speculated.i = select i1 %spec.select, i32 %l.sroa.23.9.i, i32 %l.sroa.53.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.sroa.speculated.i)
  %tobool.not.i.i153.i = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %tobool.not.i.i153.i, label %if.end.i154.i.if.end86thread-pre-split_crit_edge, label %land.lhs.true.i.i158.i

if.end.i154.i.if.end86thread-pre-split_crit_edge: ; preds = %if.end.i154.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86thread-pre-split

land.lhs.true.i.i158.i:                           ; preds = %if.end.i154.i
  %sub.i.i155.i = add i32 %.sroa.speculated.i, -1
  %and.i.i156.i = and i32 %104, %sub.i.i155.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i156.i)
  %tobool1.not.i.i157.i = icmp eq i32 %and.i.i156.i, 0
  br i1 %tobool1.not.i.i157.i, label %land.lhs.true.i166.i, label %if.then.i.i159.i

if.then.i.i159.i:                                 ; preds = %land.lhs.true.i.i158.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %104, i32 noundef %.sroa.speculated.i) #6
  br label %cleanup92

land.lhs.true.i166.i:                             ; preds = %land.lhs.true.i.i158.i
  %y.i = getelementptr inbounds %struct.exynos_drm_ipp_buffer, ptr %buf, i32 0, i32 1, i32 3
  %105 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %y.i, align 4
  %and.i164.i = and i32 %106, %sub.i.i155.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i164.i)
  %tobool1.not.i165.i = icmp eq i32 %and.i164.i, 0
  br i1 %tobool1.not.i165.i, label %land.lhs.true.i166.i.if.end86thread-pre-split_crit_edge, label %__align_check.exit169.i

land.lhs.true.i166.i.if.end86thread-pre-split_crit_edge: ; preds = %land.lhs.true.i166.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86thread-pre-split

__align_check.exit169.i:                          ; preds = %land.lhs.true.i166.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %106, i32 noundef %.sroa.speculated.i) #6
  br label %cleanup92

if.end86thread-pre-split:                         ; preds = %land.lhs.true.i166.i.if.end86thread-pre-split_crit_edge, %if.end.i154.i.if.end86thread-pre-split_crit_edge
  %107 = ptrtoint ptr %num_limits to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pr = load i32, ptr %num_limits, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.end86thread-pre-split, %if.end72.if.end86_crit_edge
  %108 = phi i32 [ %.pr, %if.end86thread-pre-split ], [ %56, %if.end72.if.end86_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.not75.i = icmp eq i32 %108, 0
  br i1 %tobool.not75.i, label %if.end86.cleanup92_crit_edge, label %for.body.i142.preheader

if.end86.cleanup92_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup92

for.body.i142.preheader:                          ; preds = %if.end86
  %109 = ptrtoint ptr %limits to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %limits, align 8
  br label %for.body.i142

for.body.i142:                                    ; preds = %for.inc.i144.for.body.i142_crit_edge, %for.body.i142.preheader
  %num_limits.addr.077.i = phi i32 [ %dec.i, %for.inc.i144.for.body.i142_crit_edge ], [ %108, %for.body.i142.preheader ]
  %limits.addr.076.i = phi ptr [ %incdec.ptr.i, %for.inc.i144.for.body.i142_crit_edge ], [ %110, %for.body.i142.preheader ]
  %111 = ptrtoint ptr %limits.addr.076.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %limits.addr.076.i, align 4
  %and.i141 = and i32 %112, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i141)
  %cmp.i = icmp eq i32 %and.i141, 2
  br i1 %cmp.i, label %if.end3.i, label %for.inc.i144

for.inc.i144:                                     ; preds = %for.body.i142
  %incdec.ptr.i = getelementptr %struct.drm_exynos_ipp_limit, ptr %limits.addr.076.i, i32 1
  %dec.i = add i32 %num_limits.addr.077.i, -1
  %tobool.not.i143 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i143, label %for.inc.i144.cleanup92_crit_edge, label %for.inc.i144.for.body.i142_crit_edge

for.inc.i144.for.body.i142_crit_edge:             ; preds = %for.inc.i144
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i142

for.inc.i144.cleanup92_crit_edge:                 ; preds = %for.inc.i144
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup92

if.end3.i:                                        ; preds = %for.body.i142
  %h.i = getelementptr inbounds %struct.drm_exynos_ipp_limit, ptr %limits.addr.076.i, i32 0, i32 2
  %v.i = getelementptr inbounds %struct.drm_exynos_ipp_limit, ptr %limits.addr.076.i, i32 0, i32 3
  %cond.i145 = select i1 %swap, ptr %v.i, ptr %h.i
  %cond11.i = select i1 %swap, ptr %h.i, ptr %v.i
  %w.i146 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, ptr %dst, i32 0, i32 1, i32 4
  %h15.i = getelementptr inbounds %struct.exynos_drm_ipp_buffer, ptr %dst, i32 0, i32 1, i32 5
  %cond17.in.i = select i1 %swap, ptr %h15.i, ptr %w.i146
  %113 = ptrtoint ptr %cond17.in.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %cond17.i = load i32, ptr %cond17.in.i, align 4
  %cond24.in.i = select i1 %swap, ptr %w.i146, ptr %h15.i
  %114 = ptrtoint ptr %cond24.in.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %cond24.i = load i32, ptr %cond24.in.i, align 4
  %w25.i = getelementptr inbounds %struct.exynos_drm_ipp_buffer, ptr %src, i32 0, i32 1, i32 4
  %115 = ptrtoint ptr %w25.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %w25.i, align 4
  %117 = ptrtoint ptr %cond.i145 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cond.i145, align 4
  %max.i = getelementptr inbounds %struct.drm_exynos_ipp_limit_val, ptr %cond.i145, i32 0, i32 1
  %119 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i.i = icmp ne i32 %120, 0
  %shl.i.i = shl i32 %cond17.i, 16
  %mul.i.i = mul i32 %120, %116
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %mul.i.i)
  %cmp.i.i147 = icmp ugt i32 %shl.i.i, %mul.i.i
  %or.cond.i.i = and i1 %tobool.not.i.i, %cmp.i.i147
  br i1 %or.cond.i.i, label %if.end3.i.__scale_limit_check.exit.i_crit_edge, label %lor.lhs.false.i.i150

if.end3.i.__scale_limit_check.exit.i_crit_edge:   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__scale_limit_check.exit.i

lor.lhs.false.i.i150:                             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool1.not.i.i148 = icmp ne i32 %118, 0
  %mul4.i.i = mul i32 %118, %116
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %mul4.i.i)
  %cmp5.i.i149 = icmp ult i32 %shl.i.i, %mul4.i.i
  %or.cond23.i.i = and i1 %tobool1.not.i.i148, %cmp5.i.i149
  br i1 %or.cond23.i.i, label %lor.lhs.false.i.i150.__scale_limit_check.exit.i_crit_edge, label %lor.lhs.false.i151

lor.lhs.false.i.i150.__scale_limit_check.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i150
  call void @__sanitizer_cov_trace_pc() #8
  br label %__scale_limit_check.exit.i

__scale_limit_check.exit.i:                       ; preds = %lor.lhs.false.i.i150.__scale_limit_check.exit.i_crit_edge, %if.end3.i.__scale_limit_check.exit.i_crit_edge
  %shr.i.i = lshr i32 %118, 16
  %and.i.i = and i32 %118, 65535
  %mul6.i.i = mul i32 %and.i.i, 100000
  %div21.i.i = lshr i32 %mul6.i.i, 16
  %shr7.i.i = lshr i32 %120, 16
  %and8.i.i = and i32 %120, 65535
  %mul9.i.i = mul i32 %and8.i.i, 100000
  %div1022.i.i = lshr i32 %mul9.i.i, 16
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25, i32 noundef %116, i32 noundef %cond17.i, i32 noundef %shr.i.i, i32 noundef %div21.i.i, i32 noundef %shr7.i.i, i32 noundef %div1022.i.i) #6
  br label %cleanup92

lor.lhs.false.i151:                               ; preds = %lor.lhs.false.i.i150
  %h26.i = getelementptr inbounds %struct.exynos_drm_ipp_buffer, ptr %src, i32 0, i32 1, i32 5
  %121 = ptrtoint ptr %h26.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %h26.i, align 4
  %123 = ptrtoint ptr %cond11.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cond11.i, align 4
  %max28.i = getelementptr inbounds %struct.drm_exynos_ipp_limit_val, ptr %cond11.i, i32 0, i32 1
  %125 = ptrtoint ptr %max28.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %max28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.not.i51.i = icmp ne i32 %126, 0
  %shl.i52.i = shl i32 %cond24.i, 16
  %mul.i53.i = mul i32 %126, %122
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i52.i, i32 %mul.i53.i)
  %cmp.i54.i = icmp ugt i32 %shl.i52.i, %mul.i53.i
  %or.cond.i55.i = and i1 %tobool.not.i51.i, %cmp.i54.i
  br i1 %or.cond.i55.i, label %lor.lhs.false.i151.__scale_limit_check.exit71.i_crit_edge, label %lor.lhs.false.i60.i

lor.lhs.false.i151.__scale_limit_check.exit71.i_crit_edge: ; preds = %lor.lhs.false.i151
  call void @__sanitizer_cov_trace_pc() #8
  br label %__scale_limit_check.exit71.i

lor.lhs.false.i60.i:                              ; preds = %lor.lhs.false.i151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool1.not.i56.i = icmp ne i32 %124, 0
  %mul4.i57.i = mul i32 %124, %122
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i52.i, i32 %mul4.i57.i)
  %cmp5.i58.i = icmp ult i32 %shl.i52.i, %mul4.i57.i
  %or.cond23.i59.i = and i1 %tobool1.not.i56.i, %cmp5.i58.i
  br i1 %or.cond23.i59.i, label %lor.lhs.false.i60.i.__scale_limit_check.exit71.i_crit_edge, label %lor.lhs.false.i60.i.cleanup92_crit_edge

lor.lhs.false.i60.i.cleanup92_crit_edge:          ; preds = %lor.lhs.false.i60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup92

lor.lhs.false.i60.i.__scale_limit_check.exit71.i_crit_edge: ; preds = %lor.lhs.false.i60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__scale_limit_check.exit71.i

__scale_limit_check.exit71.i:                     ; preds = %lor.lhs.false.i60.i.__scale_limit_check.exit71.i_crit_edge, %lor.lhs.false.i151.__scale_limit_check.exit71.i_crit_edge
  %shr.i61.i = lshr i32 %124, 16
  %and.i62.i = and i32 %124, 65535
  %mul6.i63.i = mul i32 %and.i62.i, 100000
  %div21.i64.i = lshr i32 %mul6.i63.i, 16
  %shr7.i65.i = lshr i32 %126, 16
  %and8.i66.i = and i32 %126, 65535
  %mul9.i67.i = mul i32 %and8.i66.i, 100000
  %div1022.i68.i = lshr i32 %mul9.i67.i, 16
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25, i32 noundef %122, i32 noundef %cond24.i, i32 noundef %shr.i61.i, i32 noundef %div21.i64.i, i32 noundef %shr7.i65.i, i32 noundef %div1022.i68.i) #6
  br label %cleanup92

cleanup92:                                        ; preds = %__scale_limit_check.exit71.i, %lor.lhs.false.i60.i.cleanup92_crit_edge, %__scale_limit_check.exit.i, %for.inc.i144.cleanup92_crit_edge, %if.end86.cleanup92_crit_edge, %__align_check.exit169.i, %if.then.i.i159.i, %if.then.i151.i, %__align_check.exit.i, %if.then.i.i137.i, %if.then.i129.i, %if.then.i.i68.i, %if.then.i60.i, %if.then.i.i52.i, %if.then.i.i, %land.lhs.true.cleanup92_crit_edge, %cleanup.cleanup92_crit_edge, %if.end41.cleanup92_crit_edge, %lor.lhs.false.cleanup92_crit_edge, %if.end.cleanup92_crit_edge, %if.then
  %retval.2 = phi i32 [ -22, %if.then ], [ -22, %lor.lhs.false.cleanup92_crit_edge ], [ -22, %if.end.cleanup92_crit_edge ], [ -22, %land.lhs.true.cleanup92_crit_edge ], [ -22, %__scale_limit_check.exit.i ], [ -22, %__scale_limit_check.exit71.i ], [ 0, %lor.lhs.false.i60.i.cleanup92_crit_edge ], [ 0, %if.end86.cleanup92_crit_edge ], [ -22, %__align_check.exit.i ], [ -22, %if.then.i.i ], [ -22, %if.then.i.i52.i ], [ -22, %if.then.i60.i ], [ -22, %if.then.i.i68.i ], [ -22, %if.then.i129.i ], [ -22, %if.then.i.i137.i ], [ -22, %if.then.i151.i ], [ -22, %if.then.i.i159.i ], [ -22, %__align_check.exit169.i ], [ 0, %for.inc.i144.cleanup92_crit_edge ], [ -22, %if.end41.cleanup92_crit_edge ], [ -2, %cleanup.cleanup92_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exynos_drm_ipp_task_setup_buffer(ptr nocapture noundef %buf, ptr noundef %filp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.exynos_drm_ipp_buffer, ptr %buf, i32 0, i32 3
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %format, align 8
  %num_planes82 = getelementptr inbounds %struct.drm_format_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_planes82 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_planes82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp84.not = icmp eq i8 %3, 0
  br i1 %cmp84.not, label %entry.cleanup43_crit_edge, label %for.body.lr.ph

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup43

for.body.lr.ph:                                   ; preds = %entry
  %height7 = getelementptr inbounds %struct.drm_exynos_ipp_task_buffer, ptr %buf, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %4 = phi ptr [ %1, %for.body.lr.ph ], [ %22, %for.inc.for.body_crit_edge ]
  %i.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc37, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.085)
  %cmp2 = icmp eq i32 %i.085, 0
  %5 = ptrtoint ptr %height7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height7, align 4
  br i1 %cmp2, label %for.body.cond.end_crit_edge, label %cond.false

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %vsub = getelementptr inbounds %struct.drm_format_info, ptr %4, i32 0, i32 7
  %7 = ptrtoint ptr %vsub to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %vsub, align 1
  %conv9 = zext i8 %8 to i32
  %add = add i32 %6, -1
  %sub = add i32 %add, %conv9
  %div = udiv i32 %sub, %conv9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.false ], [ %6, %for.body.cond.end_crit_edge ]
  %arrayidx = getelementptr %struct.drm_exynos_ipp_task_buffer, ptr %buf, i32 0, i32 6, i32 %i.085
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %arrayidx15 = getelementptr %struct.drm_exynos_ipp_task_buffer, ptr %buf, i32 0, i32 4, i32 %i.085
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx15, align 4
  %call = tail call ptr @exynos_drm_gem_get(ptr noundef %filp, i32 noundef %12) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %cond.end
  %mul = mul i32 %10, %cond
  %arrayidx16 = getelementptr %struct.exynos_drm_ipp_buffer, ptr %buf, i32 0, i32 2, i32 %i.085
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %arrayidx16, align 4
  %arrayidx18 = getelementptr %struct.drm_exynos_ipp_task_buffer, ptr %buf, i32 0, i32 5, i32 %i.085
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 %15, %mul
  %size22 = getelementptr inbounds %struct.exynos_drm_gem, ptr %call, i32 0, i32 2
  %16 = ptrtoint ptr %size22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add19, i32 %17)
  %cmp23 = icmp ugt i32 %add19, %17
  br i1 %cmp23, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add nuw nsw i32 %i.085, 1
  br label %while.body.preheader

cleanup:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.085)
  %tobool38.not86 = icmp eq i32 %i.085, 0
  br i1 %tobool38.not86, label %cleanup.cleanup43_crit_edge, label %cleanup.while.body.preheader_crit_edge

cleanup.while.body.preheader_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.preheader

cleanup.cleanup43_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup43

while.body.preheader:                             ; preds = %cleanup.while.body.preheader_crit_edge, %cleanup.thread
  %i.195 = phi i32 [ %inc, %cleanup.thread ], [ %i.085, %cleanup.while.body.preheader_crit_edge ]
  %ret.194 = phi i32 [ -22, %cleanup.thread ], [ -2, %cleanup.while.body.preheader_crit_edge ]
  br label %while.body

for.inc:                                          ; preds = %if.end
  %dma_addr = getelementptr inbounds %struct.exynos_drm_gem, ptr %call, i32 0, i32 5
  %18 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_addr, align 8
  %add32 = add i32 %19, %15
  %arrayidx34 = getelementptr %struct.exynos_drm_ipp_buffer, ptr %buf, i32 0, i32 4, i32 %i.085
  %20 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add32, ptr %arrayidx34, align 4
  %inc37 = add nuw nsw i32 %i.085, 1
  %21 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %format, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %24 to i32
  %cmp = icmp ult i32 %inc37, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup43_crit_edge

for.inc.cleanup43_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup43

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

while.body:                                       ; preds = %exynos_drm_gem_put.exit.while.body_crit_edge, %while.body.preheader
  %i.287 = phi i32 [ %dec, %exynos_drm_gem_put.exit.while.body_crit_edge ], [ %i.195, %while.body.preheader ]
  %dec = add nsw i32 %i.287, -1
  %arrayidx40 = getelementptr %struct.exynos_drm_ipp_buffer, ptr %buf, i32 0, i32 2, i32 %dec
  %25 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx40, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %while.body.exynos_drm_gem_put.exit_crit_edge, label %if.then.i.i

while.body.exynos_drm_gem_put.exit_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos_drm_gem_put.exit

if.then.i.i:                                      ; preds = %while.body
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %26, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @llvm.prefetch.p0(ptr nonnull %26, i32 1, i32 3, i32 1) #6
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %26, ptr nonnull %26, i32 1, ptr nonnull elementtype(i32) %26) #6, !srcloc !93
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.exynos_drm_gem_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !81

if.end5.i.i.i.i.i.i.i.exynos_drm_gem_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos_drm_gem_put.exit

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %26, i32 noundef 3) #6
  br label %exynos_drm_gem_put.exit

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @drm_gem_object_free(ptr noundef nonnull %26) #6
  br label %exynos_drm_gem_put.exit

exynos_drm_gem_put.exit:                          ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.exynos_drm_gem_put.exit_crit_edge, %while.body.exynos_drm_gem_put.exit_crit_edge
  %28 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx40, align 4
  %tobool38.not = icmp eq i32 %dec, 0
  br i1 %tobool38.not, label %exynos_drm_gem_put.exit.cleanup43_crit_edge, label %exynos_drm_gem_put.exit.while.body_crit_edge

exynos_drm_gem_put.exit.while.body_crit_edge:     ; preds = %exynos_drm_gem_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

exynos_drm_gem_put.exit.cleanup43_crit_edge:      ; preds = %exynos_drm_gem_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup43

cleanup43:                                        ; preds = %exynos_drm_gem_put.exit.cleanup43_crit_edge, %for.inc.cleanup43_crit_edge, %cleanup.cleanup43_crit_edge, %entry.cleanup43_crit_edge
  %retval.0 = phi i32 [ -2, %cleanup.cleanup43_crit_edge ], [ 0, %entry.cleanup43_crit_edge ], [ %ret.194, %exynos_drm_gem_put.exit.cleanup43_crit_edge ], [ 0, %for.inc.cleanup43_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_drm_gem_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_event_reserve_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_send_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos_drm_ipp_task_release_buf(ptr nocapture noundef readonly %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %exynos_gem = getelementptr inbounds %struct.exynos_drm_ipp_buffer, ptr %buf, i32 0, i32 2
  %0 = ptrtoint ptr %exynos_gem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %exynos_gem, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %format = getelementptr inbounds %struct.exynos_drm_ipp_buffer, ptr %buf, i32 0, i32 3
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %format, align 8
  %num_planes8 = getelementptr inbounds %struct.drm_format_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %num_planes8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_planes8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp10.not = icmp eq i8 %5, 0
  br i1 %cmp10.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %exynos_drm_gem_put.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %exynos_drm_gem_put.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx3 = getelementptr %struct.exynos_drm_ipp_buffer, ptr %buf, i32 0, i32 2, i32 %i.011
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %for.body.exynos_drm_gem_put.exit_crit_edge, label %if.then.i.i

for.body.exynos_drm_gem_put.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos_drm_gem_put.exit

if.then.i.i:                                      ; preds = %for.body
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %7, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @llvm.prefetch.p0(ptr nonnull %7, i32 1, i32 3, i32 1) #6
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #6, !srcloc !93
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.exynos_drm_gem_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !81

if.end5.i.i.i.i.i.i.i.exynos_drm_gem_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos_drm_gem_put.exit

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 3) #6
  br label %exynos_drm_gem_put.exit

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @drm_gem_object_free(ptr noundef nonnull %7) #6
  br label %exynos_drm_gem_put.exit

exynos_drm_gem_put.exit:                          ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.exynos_drm_gem_put.exit_crit_edge, %for.body.exynos_drm_gem_put.exit_crit_edge
  %inc = add nuw nsw i32 %i.011, 1
  %9 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %format, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %12 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %exynos_drm_gem_put.exit.for.body_crit_edge, label %exynos_drm_gem_put.exit.cleanup_crit_edge

exynos_drm_gem_put.exit.cleanup_crit_edge:        ; preds = %exynos_drm_gem_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

exynos_drm_gem_put.exit.for.body_crit_edge:       ; preds = %exynos_drm_gem_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %exynos_drm_gem_put.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_event_cancel_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68}
!llvm.named.register.sp = !{!70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 53, i32 2}
!2 = !{ptr @exynos_drm_ipp_register.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 58, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @exynos_drm_ipp_register.__key.2, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 60, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 72, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 766, i32 2}
!12 = !{ptr @exynos_drm_ipp_task_done.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 780, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 918, i32 3}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 926, i32 3}
!19 = !{ptr @num_ipp, !20, !"num_ipp", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 30, i32 12}
!21 = !{ptr @ipp_list, !22, !"ipp_list", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 31, i32 8}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 791, i32 2}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 808, i32 2}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 273, i32 2}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 340, i32 2}
!38 = !{ptr @exynos_drm_ipp_params_maps, !39, !"exynos_drm_ipp_params_maps", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 282, i32 3}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 611, i32 2}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 626, i32 3}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 644, i32 3}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 657, i32 2}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 560, i32 3}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @limit_id_fallback, !53, !"limit_id_fallback", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 414, i32 45}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 467, i32 3}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 456, i32 3}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 510, i32 3}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 669, i32 2}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 674, i32 3}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 681, i32 3}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 687, i32 2}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/exynos/exynos_drm_ipp.c", i32 396, i32 2}
!70 = !{!"sp"}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{i64 3016975}
!83 = !{i64 3017172}
!84 = !{i64 2150502405}
!85 = !{i64 2156608533, i64 2156608813, i64 2156609147, i64 2156609481}
!86 = !{i64 2150522101, i64 2150522126}
!87 = !{i64 2156624871, i64 2156625151, i64 2156625485, i64 2156625819}
!88 = !{i64 2150521420, i64 2150521445}
!89 = !{i64 2148552131}
!90 = !{i64 2148467440, i64 2148467472, i64 2148467501, i64 2148467535, i64 2148467566, i64 2148467589}
!91 = !{i64 2148552360}
!92 = !{i64 2148556251}
!93 = !{i64 2148470715, i64 2148470747, i64 2148470776, i64 2148470810, i64 2148470841, i64 2148470864}
!94 = !{i64 2149591974}
