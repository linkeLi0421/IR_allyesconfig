; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/omap_irq.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/omap_irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.87 = type { i32, ptr }
%struct.omap_irq_wait = type { %struct.list_head, %struct.wait_queue_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.omap_drm_private = type { ptr, ptr, i32, ptr, ptr, i8, i32, [8 x %struct.omap_drm_pipeline], [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], %struct.drm_private_obj, ptr, ptr, %struct.mutex, %struct.list_head, ptr, i8, ptr, %struct.spinlock, %struct.list_head, i32, i32 }
%struct.omap_drm_pipeline = type { ptr, ptr, ptr, ptr, i32 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@omap_irq_wait_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&wait->wq\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/omapdrm/omap_irq.c\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dev=%p, crtc=%u, enable=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dev=%p, crtc=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@omap_drm_irq_install.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&priv->wait_lock\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"irqmask=%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@omap_irq_ocp_error_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.omap_irq_ocp_error_handler = private unnamed_addr constant [27 x i8] c"omap_irq_ocp_error_handler\00", align 1
@omap_irq_ocp_error_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.omap_irq_ocp_error_handler, ptr @.str.1, i32 202, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OCP error\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_irq_ocp_error_handler._entry_ptr = internal global ptr @omap_irq_ocp_error_handler._entry, section ".printk_index", align 4
@omap_irq_fifo_underflow._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gfx\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vid1\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vid2\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vid3\00", [27 x i8] zeroinitializer }, align 32
@__func__.omap_irq_fifo_underflow = private unnamed_addr constant [24 x i8] c"omap_irq_fifo_underflow\00", align 1
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FIFO underflow on \00", [45 x i8] zeroinitializer }, align 32
@omap_irq_fifo_underflow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @__func__.omap_irq_fifo_underflow, ptr @.str.1, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c%s \00", [26 x i8] zeroinitializer }, align 32
@omap_irq_fifo_underflow._entry_ptr = internal global ptr @omap_irq_fifo_underflow._entry, section ".printk_index", align 4
@omap_irq_fifo_underflow._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.omap_irq_fifo_underflow, ptr @.str.1, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01c(0x%08x)\0A\00", [20 x i8] zeroinitializer }, align 32
@omap_irq_fifo_underflow._entry_ptr.18 = internal global ptr @omap_irq_fifo_underflow._entry.16, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 48, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 67, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 88, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 120, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 264, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 30, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 202, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 158, i32 9 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 164, i32 5 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 165, i32 5 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 166, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 167, i32 5 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 186, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 190, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [38 x i8] c"../drivers/gpu/drm/omapdrm/omap_irq.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 193, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @omap_irq_fifo_underflow._entry, ptr @omap_irq_fifo_underflow._entry.16, ptr @omap_irq_fifo_underflow._entry_ptr, ptr @omap_irq_fifo_underflow._entry_ptr.18, ptr @omap_irq_ocp_error_handler._entry, ptr @omap_irq_ocp_error_handler._entry_ptr, ptr @omap_irq_wait_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @omap_drm_irq_install.__key, ptr @.str.4, ptr @.str.5, ptr @omap_irq_ocp_error_handler._rs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @omap_irq_fifo_underflow._rs, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_irq_wait_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_drm_irq_install.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_irq_ocp_error_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_irq_ocp_error_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_irq_fifo_underflow._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_irq_fifo_underflow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_irq_fifo_underflow._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap_irq_wait_init(ptr nocapture noundef readonly %dev, i32 noundef %irqmask, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 68) #8
  %wq = getelementptr inbounds %struct.omap_irq_wait, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str, ptr noundef nonnull @omap_irq_wait_init.__key) #5
  %irqmask1 = getelementptr inbounds %struct.omap_irq_wait, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %irqmask1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %irqmask, ptr %irqmask1, align 4
  %count2 = getelementptr inbounds %struct.omap_irq_wait, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %count2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %count, ptr %count2, align 8
  %wait_lock = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 21
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wait_lock) #5
  %wait_list = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 22
  %5 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wait_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call7.i.i, ptr noundef %wait_list, ptr noundef %6) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %wait_list, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %wait_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i.i, ptr %wait_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  %11 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_private, align 4
  %irq_mask.i = getelementptr inbounds %struct.omap_drm_private, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq_mask.i, align 4
  %wait_lock.i = getelementptr inbounds %struct.omap_drm_private, ptr %12, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %15 = ptrtoint ptr %wait_lock.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %wait_lock.i, align 4
  %16 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !58

do.body4.i:                                       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/omap_irq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 25, 0\0A.popsection", ""() #5, !srcloc !59
  unreachable

do.end9.i:                                        ; preds = %list_add.exit
  %wait_list.i = getelementptr inbounds %struct.omap_drm_private, ptr %12, i32 0, i32 22
  %17 = ptrtoint ptr %wait_list.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %wait.027.i = load ptr, ptr %wait_list.i, align 4
  %cmp.not28.i = icmp eq ptr %wait.027.i, %wait_list.i
  br i1 %cmp.not28.i, label %do.end9.i.omap_irq_update.exit_crit_edge, label %do.end9.i.for.body.i_crit_edge

do.end9.i.for.body.i_crit_edge:                   ; preds = %do.end9.i
  br label %for.body.i

do.end9.i.omap_irq_update.exit_crit_edge:         ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_irq_update.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end9.i.for.body.i_crit_edge
  %wait.030.i = phi ptr [ %wait.0.i, %for.body.i.for.body.i_crit_edge ], [ %wait.027.i, %do.end9.i.for.body.i_crit_edge ]
  %irqmask.029.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ %14, %do.end9.i.for.body.i_crit_edge ]
  %irqmask13.i = getelementptr inbounds %struct.omap_irq_wait, ptr %wait.030.i, i32 0, i32 2
  %18 = ptrtoint ptr %irqmask13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irqmask13.i, align 4
  %or.i = or i32 %19, %irqmask.029.i
  %20 = ptrtoint ptr %wait.030.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %wait.0.i = load ptr, ptr %wait.030.i, align 4
  %cmp.not.i = icmp eq ptr %wait.0.i, %wait_list.i
  br i1 %cmp.not.i, label %for.body.i.omap_irq_update.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.omap_irq_update.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_irq_update.exit

omap_irq_update.exit:                             ; preds = %for.body.i.omap_irq_update.exit_crit_edge, %do.end9.i.omap_irq_update.exit_crit_edge
  %irqmask.0.lcssa.i = phi i32 [ %14, %do.end9.i.omap_irq_update.exit_crit_edge ], [ %or.i, %for.body.i.omap_irq_update.exit_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %irqmask.0.lcssa.i) #5
  %dispc.i = getelementptr inbounds %struct.omap_drm_private, ptr %12, i32 0, i32 4
  %21 = ptrtoint ptr %dispc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dispc.i, align 4
  tail call void @dispc_write_irqenable(ptr noundef %22, i32 noundef %irqmask.0.lcssa.i) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock, i32 noundef %call6) #5
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_irq_wait(ptr nocapture noundef readonly %dev, ptr noundef %wait, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 67) #5
  %count = getelementptr inbounds %struct.omap_irq_wait, ptr %wait, i32 0, i32 3
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool4.not = icmp eq i32 %timeout, 0
  %4 = and i1 %tobool4.not, %cmp
  %__ret.0 = select i1 %4, i32 1, i32 %timeout
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool6.not = icmp eq i32 %__ret.0, 0
  %5 = select i1 %cmp, i1 true, i1 %tobool6.not
  br i1 %5, label %entry.if.end32_crit_edge, label %if.then8

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then8:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %wq = getelementptr inbounds %struct.omap_irq_wait, ptr %wait, i32 0, i32 1
  %call70 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp1271 = icmp slt i32 %8, 1
  %9 = and i1 %cmp1271, %tobool4.not
  %__ret9.173 = select i1 %9, i32 1, i32 %timeout
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret9.173)
  %tobool22.not74 = icmp eq i32 %__ret9.173, 0
  %10 = select i1 %cmp1271, i1 true, i1 %tobool22.not74
  br i1 %10, label %if.then8.for.end_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  br label %cleanup

if.then8.for.end_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then8.cleanup_crit_edge
  %__ret9.175 = phi i32 [ %__ret9.1, %cleanup.cleanup_crit_edge ], [ %__ret9.173, %if.then8.cleanup_crit_edge ]
  %call29 = call i32 @schedule_timeout(i32 noundef %__ret9.175) #5
  %call = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp12 = icmp slt i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool16.not = icmp eq i32 %call29, 0
  %13 = select i1 %cmp12, i1 %tobool16.not, i1 false
  %__ret9.1 = select i1 %13, i32 1, i32 %call29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret9.1)
  %tobool22.not = icmp eq i32 %__ret9.1, 0
  %14 = select i1 %cmp12, i1 true, i1 %tobool22.not
  br i1 %14, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then8.for.end_crit_edge
  %__ret9.1.lcssa = phi i32 [ %__ret9.173, %if.then8.for.end_crit_edge ], [ %__ret9.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wq, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %if.end32

if.end32:                                         ; preds = %for.end, %entry.if.end32_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %entry.if.end32_crit_edge ], [ %__ret9.1.lcssa, %for.end ]
  %wait_lock = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 21
  %call39 = call i32 @_raw_spin_lock_irqsave(ptr noundef %wait_lock) #5
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %wait) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end32.list_del.exit_crit_edge

if.end32.list_del.exit_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %wait, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wait, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end32.list_del.exit_crit_edge
  %21 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %wait, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %wait, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %23 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_private, align 4
  %irq_mask.i = getelementptr inbounds %struct.omap_drm_private, ptr %24, i32 0, i32 23
  %25 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq_mask.i, align 4
  %wait_lock.i = getelementptr inbounds %struct.omap_drm_private, ptr %24, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %27 = ptrtoint ptr %wait_lock.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %wait_lock.i, align 4
  %28 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !58

do.body4.i:                                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/omap_irq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 25, 0\0A.popsection", ""() #5, !srcloc !59
  unreachable

do.end9.i:                                        ; preds = %list_del.exit
  %wait_list.i = getelementptr inbounds %struct.omap_drm_private, ptr %24, i32 0, i32 22
  %29 = ptrtoint ptr %wait_list.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %wait.027.i = load ptr, ptr %wait_list.i, align 4
  %cmp.not28.i = icmp eq ptr %wait.027.i, %wait_list.i
  br i1 %cmp.not28.i, label %do.end9.i.omap_irq_update.exit_crit_edge, label %do.end9.i.for.body.i_crit_edge

do.end9.i.for.body.i_crit_edge:                   ; preds = %do.end9.i
  br label %for.body.i

do.end9.i.omap_irq_update.exit_crit_edge:         ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_irq_update.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end9.i.for.body.i_crit_edge
  %wait.030.i = phi ptr [ %wait.0.i, %for.body.i.for.body.i_crit_edge ], [ %wait.027.i, %do.end9.i.for.body.i_crit_edge ]
  %irqmask.029.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ %26, %do.end9.i.for.body.i_crit_edge ]
  %irqmask13.i = getelementptr inbounds %struct.omap_irq_wait, ptr %wait.030.i, i32 0, i32 2
  %30 = ptrtoint ptr %irqmask13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irqmask13.i, align 4
  %or.i = or i32 %31, %irqmask.029.i
  %32 = ptrtoint ptr %wait.030.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %wait.0.i = load ptr, ptr %wait.030.i, align 4
  %cmp.not.i = icmp eq ptr %wait.0.i, %wait_list.i
  br i1 %cmp.not.i, label %for.body.i.omap_irq_update.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.omap_irq_update.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_irq_update.exit

omap_irq_update.exit:                             ; preds = %for.body.i.omap_irq_update.exit_crit_edge, %do.end9.i.omap_irq_update.exit_crit_edge
  %irqmask.0.lcssa.i = phi i32 [ %26, %do.end9.i.omap_irq_update.exit_crit_edge ], [ %or.i, %for.body.i.omap_irq_update.exit_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %irqmask.0.lcssa.i) #5
  %dispc.i = getelementptr inbounds %struct.omap_drm_private, ptr %24, i32 0, i32 4
  %33 = ptrtoint ptr %dispc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dispc.i, align 4
  call void @dispc_write_irqenable(ptr noundef %34, i32 noundef %irqmask.0.lcssa.i) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock, i32 noundef %call39) #5
  call void @kfree(ptr noundef %wait) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp45 = icmp eq i32 %__ret.1, 0
  %cond = sext i1 %cmp45 to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_irq_enable_framedone(ptr noundef %crtc, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %call = tail call i32 @omap_crtc_channel(ptr noundef %crtc) #5
  %dispc = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dispc, align 4
  %call2 = tail call i32 @dispc_mgr_get_framedone_irq(ptr noundef %5, i32 noundef %call) #5
  %conv = zext i1 %enable to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef %1, i32 noundef %call, i32 noundef %conv) #5
  %wait_lock = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 21
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wait_lock) #5
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %irq_mask = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_mask, align 4
  %or = or i32 %7, %call2
  store i32 %or, ptr %irq_mask, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %neg = xor i32 %call2, -1
  %irq_mask10 = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 23
  %8 = ptrtoint ptr %irq_mask10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_mask10, align 4
  %and = and i32 %9, %neg
  store i32 %and, ptr %irq_mask10, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_private, align 4
  %irq_mask.i = getelementptr inbounds %struct.omap_drm_private, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_mask.i, align 4
  %wait_lock.i = getelementptr inbounds %struct.omap_drm_private, ptr %11, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %14 = ptrtoint ptr %wait_lock.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %wait_lock.i, align 4
  %15 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !58

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/omap_irq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 25, 0\0A.popsection", ""() #5, !srcloc !59
  unreachable

do.end9.i:                                        ; preds = %if.end
  %wait_list.i = getelementptr inbounds %struct.omap_drm_private, ptr %11, i32 0, i32 22
  %16 = ptrtoint ptr %wait_list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %wait.027.i = load ptr, ptr %wait_list.i, align 4
  %cmp.not28.i = icmp eq ptr %wait.027.i, %wait_list.i
  br i1 %cmp.not28.i, label %do.end9.i.omap_irq_update.exit_crit_edge, label %do.end9.i.for.body.i_crit_edge

do.end9.i.for.body.i_crit_edge:                   ; preds = %do.end9.i
  br label %for.body.i

do.end9.i.omap_irq_update.exit_crit_edge:         ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_irq_update.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end9.i.for.body.i_crit_edge
  %wait.030.i = phi ptr [ %wait.0.i, %for.body.i.for.body.i_crit_edge ], [ %wait.027.i, %do.end9.i.for.body.i_crit_edge ]
  %irqmask.029.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ %13, %do.end9.i.for.body.i_crit_edge ]
  %irqmask13.i = getelementptr inbounds %struct.omap_irq_wait, ptr %wait.030.i, i32 0, i32 2
  %17 = ptrtoint ptr %irqmask13.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irqmask13.i, align 4
  %or.i = or i32 %18, %irqmask.029.i
  %19 = ptrtoint ptr %wait.030.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %wait.0.i = load ptr, ptr %wait.030.i, align 4
  %cmp.not.i = icmp eq ptr %wait.0.i, %wait_list.i
  br i1 %cmp.not.i, label %for.body.i.omap_irq_update.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.omap_irq_update.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_irq_update.exit

omap_irq_update.exit:                             ; preds = %for.body.i.omap_irq_update.exit_crit_edge, %do.end9.i.omap_irq_update.exit_crit_edge
  %irqmask.0.lcssa.i = phi i32 [ %13, %do.end9.i.omap_irq_update.exit_crit_edge ], [ %or.i, %for.body.i.omap_irq_update.exit_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %irqmask.0.lcssa.i) #5
  %dispc.i = getelementptr inbounds %struct.omap_drm_private, ptr %11, i32 0, i32 4
  %20 = ptrtoint ptr %dispc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dispc.i, align 4
  tail call void @dispc_write_irqenable(ptr noundef %21, i32 noundef %irqmask.0.lcssa.i) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock, i32 noundef %call6) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_crtc_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_mgr_get_framedone_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_irq_enable_vblank(ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %call = tail call i32 @omap_crtc_channel(ptr noundef %crtc) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef %1, i32 noundef %call) #5
  %wait_lock = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 21
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wait_lock) #5
  %dispc = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dispc, align 4
  %call7 = tail call i32 @dispc_mgr_get_vsync_irq(ptr noundef %5, i32 noundef %call) #5
  %irq_mask = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_mask, align 4
  %or = or i32 %7, %call7
  store i32 %or, ptr %irq_mask, align 4
  %8 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private, align 4
  %irq_mask.i = getelementptr inbounds %struct.omap_drm_private, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_mask.i, align 4
  %wait_lock.i = getelementptr inbounds %struct.omap_drm_private, ptr %9, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %12 = ptrtoint ptr %wait_lock.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %wait_lock.i, align 4
  %13 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !58

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/omap_irq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 25, 0\0A.popsection", ""() #5, !srcloc !59
  unreachable

do.end9.i:                                        ; preds = %entry
  %wait_list.i = getelementptr inbounds %struct.omap_drm_private, ptr %9, i32 0, i32 22
  %14 = ptrtoint ptr %wait_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %wait.027.i = load ptr, ptr %wait_list.i, align 4
  %cmp.not28.i = icmp eq ptr %wait.027.i, %wait_list.i
  br i1 %cmp.not28.i, label %do.end9.i.omap_irq_update.exit_crit_edge, label %do.end9.i.for.body.i_crit_edge

do.end9.i.for.body.i_crit_edge:                   ; preds = %do.end9.i
  br label %for.body.i

do.end9.i.omap_irq_update.exit_crit_edge:         ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_irq_update.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end9.i.for.body.i_crit_edge
  %wait.030.i = phi ptr [ %wait.0.i, %for.body.i.for.body.i_crit_edge ], [ %wait.027.i, %do.end9.i.for.body.i_crit_edge ]
  %irqmask.029.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ %11, %do.end9.i.for.body.i_crit_edge ]
  %irqmask13.i = getelementptr inbounds %struct.omap_irq_wait, ptr %wait.030.i, i32 0, i32 2
  %15 = ptrtoint ptr %irqmask13.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irqmask13.i, align 4
  %or.i = or i32 %16, %irqmask.029.i
  %17 = ptrtoint ptr %wait.030.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %wait.0.i = load ptr, ptr %wait.030.i, align 4
  %cmp.not.i = icmp eq ptr %wait.0.i, %wait_list.i
  br i1 %cmp.not.i, label %for.body.i.omap_irq_update.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.omap_irq_update.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_irq_update.exit

omap_irq_update.exit:                             ; preds = %for.body.i.omap_irq_update.exit_crit_edge, %do.end9.i.omap_irq_update.exit_crit_edge
  %irqmask.0.lcssa.i = phi i32 [ %11, %do.end9.i.omap_irq_update.exit_crit_edge ], [ %or.i, %for.body.i.omap_irq_update.exit_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %irqmask.0.lcssa.i) #5
  %dispc.i = getelementptr inbounds %struct.omap_drm_private, ptr %9, i32 0, i32 4
  %18 = ptrtoint ptr %dispc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dispc.i, align 4
  tail call void @dispc_write_irqenable(ptr noundef %19, i32 noundef %irqmask.0.lcssa.i) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock, i32 noundef %call4) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_mgr_get_vsync_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_irq_disable_vblank(ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %call = tail call i32 @omap_crtc_channel(ptr noundef %crtc) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef %1, i32 noundef %call) #5
  %wait_lock = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 21
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wait_lock) #5
  %dispc = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dispc, align 4
  %call7 = tail call i32 @dispc_mgr_get_vsync_irq(ptr noundef %5, i32 noundef %call) #5
  %neg = xor i32 %call7, -1
  %irq_mask = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_mask, align 4
  %and = and i32 %7, %neg
  store i32 %and, ptr %irq_mask, align 4
  %8 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private, align 4
  %irq_mask.i = getelementptr inbounds %struct.omap_drm_private, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_mask.i, align 4
  %wait_lock.i = getelementptr inbounds %struct.omap_drm_private, ptr %9, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %12 = ptrtoint ptr %wait_lock.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %wait_lock.i, align 4
  %13 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !58

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/omap_irq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 25, 0\0A.popsection", ""() #5, !srcloc !59
  unreachable

do.end9.i:                                        ; preds = %entry
  %wait_list.i = getelementptr inbounds %struct.omap_drm_private, ptr %9, i32 0, i32 22
  %14 = ptrtoint ptr %wait_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %wait.027.i = load ptr, ptr %wait_list.i, align 4
  %cmp.not28.i = icmp eq ptr %wait.027.i, %wait_list.i
  br i1 %cmp.not28.i, label %do.end9.i.omap_irq_update.exit_crit_edge, label %do.end9.i.for.body.i_crit_edge

do.end9.i.for.body.i_crit_edge:                   ; preds = %do.end9.i
  br label %for.body.i

do.end9.i.omap_irq_update.exit_crit_edge:         ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_irq_update.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end9.i.for.body.i_crit_edge
  %wait.030.i = phi ptr [ %wait.0.i, %for.body.i.for.body.i_crit_edge ], [ %wait.027.i, %do.end9.i.for.body.i_crit_edge ]
  %irqmask.029.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ %11, %do.end9.i.for.body.i_crit_edge ]
  %irqmask13.i = getelementptr inbounds %struct.omap_irq_wait, ptr %wait.030.i, i32 0, i32 2
  %15 = ptrtoint ptr %irqmask13.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irqmask13.i, align 4
  %or.i = or i32 %16, %irqmask.029.i
  %17 = ptrtoint ptr %wait.030.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %wait.0.i = load ptr, ptr %wait.030.i, align 4
  %cmp.not.i = icmp eq ptr %wait.0.i, %wait_list.i
  br i1 %cmp.not.i, label %for.body.i.omap_irq_update.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.omap_irq_update.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_irq_update.exit

omap_irq_update.exit:                             ; preds = %for.body.i.omap_irq_update.exit_crit_edge, %do.end9.i.omap_irq_update.exit_crit_edge
  %irqmask.0.lcssa.i = phi i32 [ %11, %do.end9.i.omap_irq_update.exit_crit_edge ], [ %or.i, %for.body.i.omap_irq_update.exit_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %irqmask.0.lcssa.i) #5
  %dispc.i = getelementptr inbounds %struct.omap_drm_private, ptr %9, i32 0, i32 4
  %18 = ptrtoint ptr %dispc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dispc.i, align 4
  tail call void @dispc_write_irqenable(ptr noundef %19, i32 noundef %irqmask.0.lcssa.i) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock, i32 noundef %call4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_drm_irq_install(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dispc = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dispc, align 4
  %call = tail call i32 @dispc_get_num_mgrs(ptr noundef %3) #5
  %wait_lock = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 21
  tail call void @__raw_spin_lock_init(ptr noundef %wait_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @omap_drm_irq_install.__key, i16 noundef signext 3) #5
  %wait_list = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %wait_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %wait_list, ptr %wait_list, align 4
  %prev.i = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 22, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %wait_list, ptr %prev.i, align 4
  %irq_mask = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 512, ptr %irq_mask, align 4
  %arrayidx = getelementptr %struct.omap_drm_private, ptr %1, i32 0, i32 10, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_mask, align 4
  %or = or i32 %10, 64
  store i32 %or, ptr %irq_mask, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.omap_drm_private, ptr %1, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %12, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq_mask, align 4
  %or.1 = or i32 %14, 1024
  store i32 %or.1, ptr %irq_mask, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.omap_drm_private, ptr %1, i32 0, i32 10, i32 2
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %16, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq_mask, align 4
  %or.2 = or i32 %18, 4096
  store i32 %or.2, ptr %irq_mask, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.omap_drm_private, ptr %1, i32 0, i32 10, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %20, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq_mask, align 4
  %or.3 = or i32 %22, 1048576
  store i32 %or.3, ptr %irq_mask, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp549.not = icmp eq i32 %call, 0
  br i1 %cmp549.not, label %for.inc.3.for.end13_crit_edge, label %for.inc.3.for.body6_crit_edge

for.inc.3.for.body6_crit_edge:                    ; preds = %for.inc.3
  br label %for.body6

for.inc.3.for.end13_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end13

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.inc.3.for.body6_crit_edge
  %i.150 = phi i32 [ %inc12, %for.body6.for.body6_crit_edge ], [ 0, %for.inc.3.for.body6_crit_edge ]
  %23 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dispc, align 4
  %call8 = tail call i32 @dispc_mgr_get_sync_lost_irq(ptr noundef %24, i32 noundef %i.150) #5
  %25 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq_mask, align 4
  %or10 = or i32 %26, %call8
  store i32 %or10, ptr %irq_mask, align 4
  %inc12 = add nuw i32 %i.150, 1
  %exitcond.not = icmp eq i32 %inc12, %call
  br i1 %exitcond.not, label %for.body6.for.end13_crit_edge, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6

for.body6.for.end13_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end13

for.end13:                                        ; preds = %for.body6.for.end13_crit_edge, %for.inc.3.for.end13_crit_edge
  %27 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dispc, align 4
  %call15 = tail call i32 @dispc_runtime_get(ptr noundef %28) #5
  %29 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dispc, align 4
  tail call void @dispc_clear_irqstatus(ptr noundef %30, i32 noundef -1) #5
  %31 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dispc, align 4
  tail call void @dispc_runtime_put(ptr noundef %32) #5
  %33 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dispc, align 4
  %call19 = tail call i32 @dispc_request_irq(ptr noundef %34, ptr noundef nonnull @omap_irq_handler, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %for.end13.cleanup_crit_edge, label %if.end22

for.end13.cleanup_crit_edge:                      ; preds = %for.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %for.end13
  call void @__sanitizer_cov_trace_pc() #7
  %irq_enabled = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 5
  %35 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %irq_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %for.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ %call19, %for.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_get_num_mgrs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_mgr_get_sync_lost_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_runtime_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_clear_irqstatus(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_runtime_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_request_irq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_irq_handler(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dispc = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dispc, align 4
  %call = tail call i32 @dispc_read_irqstatus(ptr noundef %3) #5
  %4 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dispc, align 4
  tail call void @dispc_clear_irqstatus(ptr noundef %5, i32 noundef %call) #5
  %6 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dispc, align 4
  %call3 = tail call i32 @dispc_read_irqstatus(ptr noundef %7) #5
  %num_pipes = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %num_pipes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_pipes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp88.not = icmp eq i32 %9, 0
  br i1 %cmp88.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %entry.for.body_crit_edge
  %id.089 = phi i32 [ %inc, %if.end20.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.omap_drm_private, ptr %1, i32 0, i32 7, i32 %id.089
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call5 = tail call i32 @omap_crtc_channel(ptr noundef %11) #5
  %12 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dispc, align 4
  %call7 = tail call i32 @dispc_mgr_get_vsync_irq(ptr noundef %13, i32 noundef %call5) #5
  %and = and i32 %call7, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call zeroext i1 @drm_handle_vblank(ptr noundef %arg, i32 noundef %id.089) #5
  tail call void @omap_crtc_vblank_irq(ptr noundef %11) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %14 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dispc, align 4
  %call10 = tail call i32 @dispc_mgr_get_sync_lost_irq(ptr noundef %15, i32 noundef %call5) #5
  %and11 = and i32 %call10, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.if.end14_crit_edge, label %if.then13

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @omap_crtc_error_irq(ptr noundef %11, i32 noundef %call) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end.if.end14_crit_edge
  %16 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dispc, align 4
  %call16 = tail call i32 @dispc_mgr_get_framedone_irq(ptr noundef %17, i32 noundef %call5) #5
  %and17 = and i32 %call16, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end14.if.end20_crit_edge, label %if.then19

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @omap_crtc_framedone_irq(ptr noundef %11, i32 noundef %call) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end14.if.end20_crit_edge
  %inc = add nuw i32 %id.089, 1
  %18 = ptrtoint ptr %num_pipes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_pipes, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %if.end20.for.body_crit_edge, label %if.end20.for.end_crit_edge

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end20.for.end_crit_edge, %entry.for.end_crit_edge
  %and.i = and i32 %call, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.end.omap_irq_ocp_error_handler.exit_crit_edge, label %do.body.i

for.end.omap_irq_ocp_error_handler.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_irq_ocp_error_handler.exit

do.body.i:                                        ; preds = %for.end
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @omap_irq_ocp_error_handler._rs, ptr noundef nonnull @__func__.omap_irq_ocp_error_handler) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %do.body.i.omap_irq_ocp_error_handler.exit_crit_edge, label %do.end.i

do.body.i.omap_irq_ocp_error_handler.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_irq_ocp_error_handler.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev4.i = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 2
  %20 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev4.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.7) #9
  br label %omap_irq_ocp_error_handler.exit

omap_irq_ocp_error_handler.exit:                  ; preds = %do.end.i, %do.body.i.omap_irq_ocp_error_handler.exit_crit_edge, %for.end.omap_irq_ocp_error_handler.exit_crit_edge
  %wait_lock.i = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %wait_lock.i) #5
  %irq_mask.i = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 23
  %22 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq_mask.i, align 4
  %and.i84 = and i32 %call, 1053760
  %and1.i = and i32 %and.i84, %23
  tail call void @_raw_spin_unlock(ptr noundef %wait_lock.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i85 = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i85, label %omap_irq_ocp_error_handler.exit.omap_irq_fifo_underflow.exit_crit_edge, label %if.end.i

omap_irq_ocp_error_handler.exit.omap_irq_fifo_underflow.exit_crit_edge: ; preds = %omap_irq_ocp_error_handler.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_irq_fifo_underflow.exit

if.end.i:                                         ; preds = %omap_irq_ocp_error_handler.exit
  %call.i86 = tail call i32 @___ratelimit(ptr noundef nonnull @omap_irq_fifo_underflow._rs, ptr noundef nonnull @__func__.omap_irq_fifo_underflow) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool3.not.i = icmp eq i32 %call.i86, 0
  br i1 %tobool3.not.i, label %if.end.i.omap_irq_fifo_underflow.exit_crit_edge, label %if.end5.i

if.end.i.omap_irq_fifo_underflow.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_irq_fifo_underflow.exit

if.end5.i:                                        ; preds = %if.end.i
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #5
  %and7.i = and i32 %and1.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end5.i.for.inc.i_crit_edge, label %do.end.i87

if.end5.i.for.inc.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.end.i87:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.10) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i87, %if.end5.i.for.inc.i_crit_edge
  %and7.1.i = and i32 %and1.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.1.i)
  %tobool8.not.1.i = icmp eq i32 %and7.1.i, 0
  br i1 %tobool8.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %do.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

do.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %call11.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.11) #9
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %do.end.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %and7.2.i = and i32 %and1.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.2.i)
  %tobool8.not.2.i = icmp eq i32 %and7.2.i, 0
  br i1 %tobool8.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %do.end.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

do.end.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %call11.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #9
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %do.end.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %and7.3.i = and i32 %and1.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.3.i)
  %tobool8.not.3.i = icmp eq i32 %and7.3.i, 0
  br i1 %tobool8.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %do.end.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i

do.end.3.i:                                       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %call11.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13) #9
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %do.end.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %and1.i) #9
  br label %omap_irq_fifo_underflow.exit

omap_irq_fifo_underflow.exit:                     ; preds = %for.inc.3.i, %if.end.i.omap_irq_fifo_underflow.exit_crit_edge, %omap_irq_ocp_error_handler.exit.omap_irq_fifo_underflow.exit_crit_edge
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wait_lock.i) #5
  %wait_list = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 22
  %24 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wait_list, align 4
  %cmp35.not92 = icmp eq ptr %25, %wait_list
  br i1 %cmp35.not92, label %omap_irq_fifo_underflow.exit.for.end48_crit_edge, label %omap_irq_fifo_underflow.exit.for.body37_crit_edge

omap_irq_fifo_underflow.exit.for.body37_crit_edge: ; preds = %omap_irq_fifo_underflow.exit
  br label %for.body37

omap_irq_fifo_underflow.exit.for.end48_crit_edge: ; preds = %omap_irq_fifo_underflow.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end48

for.body37:                                       ; preds = %for.inc42.for.body37_crit_edge, %omap_irq_fifo_underflow.exit.for.body37_crit_edge
  %wait.093 = phi ptr [ %n.094, %for.inc42.for.body37_crit_edge ], [ %25, %omap_irq_fifo_underflow.exit.for.body37_crit_edge ]
  %26 = ptrtoint ptr %wait.093 to i32
  call void @__asan_load4_noabort(i32 %26)
  %n.094 = load ptr, ptr %wait.093, align 4
  %irqmask = getelementptr inbounds %struct.omap_irq_wait, ptr %wait.093, i32 0, i32 2
  %27 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irqmask, align 4
  %and38 = and i32 %28, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %for.body37.for.inc42_crit_edge, label %if.then40

for.body37.for.inc42_crit_edge:                   ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc42

if.then40:                                        ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #7
  %count.i = getelementptr inbounds %struct.omap_irq_wait, ptr %wait.093, i32 0, i32 3
  %29 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %30, -1
  store i32 %dec.i, ptr %count.i, align 4
  %wq.i = getelementptr inbounds %struct.omap_irq_wait, ptr %wait.093, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %for.inc42

for.inc42:                                        ; preds = %if.then40, %for.body37.for.inc42_crit_edge
  %cmp35.not = icmp eq ptr %n.094, %wait_list
  br i1 %cmp35.not, label %for.inc42.for.end48_crit_edge, label %for.inc42.for.body37_crit_edge

for.inc42.for.body37_crit_edge:                   ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body37

for.inc42.for.end48_crit_edge:                    ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end48

for.end48:                                        ; preds = %for.inc42.for.end48_crit_edge, %omap_irq_fifo_underflow.exit.for.end48_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock.i, i32 noundef %call24) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_drm_irq_uninstall(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %irq_enabled = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq_enabled, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %irq_enabled, align 4
  %dispc = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dispc, align 4
  tail call void @dispc_free_irq(ptr noundef %6, ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_free_irq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_write_irqenable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_read_irqstatus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_handle_vblank(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_crtc_vblank_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_crtc_error_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_crtc_framedone_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @omap_irq_wait_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/omap_irq.c", i32 48, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/omapdrm/omap_irq.c", i32 67, i32 8}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/omapdrm/omap_irq.c", i32 88, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/omapdrm/omap_irq.c", i32 120, i32 2}
!9 = !{ptr @omap_drm_irq_install.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/omapdrm/omap_irq.c", i32 264, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/omapdrm/omap_irq.c", i32 30, i32 2}
!14 = distinct !{null, !15, !"omap_underflow_irqs", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/omapdrm/omap_irq.c", i32 249, i32 18}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/omapdrm/omap_irq.c", i32 202, i32 2}
!18 = !{ptr @omap_irq_ocp_error_handler._rs, !17, !"_rs", i1 false, i1 false}
!19 = !{ptr @__func__.omap_irq_ocp_error_handler, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @omap_irq_ocp_error_handler._entry, !17, !"_entry", i1 false, i1 false}
!24 = !{ptr @omap_irq_ocp_error_handler._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @omap_irq_fifo_underflow._rs, !26, !"_rs", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/omapdrm/omap_irq.c", i32 158, i32 9}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/omapdrm/omap_irq.c", i32 164, i32 5}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/omapdrm/omap_irq.c", i32 165, i32 5}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/omapdrm/omap_irq.c", i32 166, i32 5}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/omapdrm/omap_irq.c", i32 167, i32 5}
!35 = distinct !{null, !36, !"sources", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/omapdrm/omap_irq.c", i32 163, i32 4}
!37 = !{ptr @__func__.omap_irq_fifo_underflow, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/omapdrm/omap_irq.c", i32 183, i32 7}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/omapdrm/omap_irq.c", i32 186, i32 2}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/omapdrm/omap_irq.c", i32 190, i32 4}
!43 = !{ptr @omap_irq_fifo_underflow._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @omap_irq_fifo_underflow._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/omapdrm/omap_irq.c", i32 193, i32 2}
!47 = !{ptr @omap_irq_fifo_underflow._entry.16, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @omap_irq_fifo_underflow._entry_ptr.18, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 2156669998, i64 2156670496, i64 2156670035, i64 2156670091, i64 2156670125, i64 2156670149, i64 2156670190, i64 2156670211, i64 2156670239, i64 2156670273}
!60 = !{i8 0, i8 2}
