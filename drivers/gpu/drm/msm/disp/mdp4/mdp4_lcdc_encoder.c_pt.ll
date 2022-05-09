; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mdp4_lcdc_encoder = type { %struct.drm_encoder, ptr, ptr, ptr, i32, [3 x ptr], i8, i32 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.92 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.95, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.95 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.mdp4_kms = type { %struct.mdp_kms, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mdp_irq, i8, ptr, i64 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@mdp4_lcdc_encoder_funcs = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @mdp4_lcdc_encoder_destroy, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@mdp4_lcdc_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdp4_lcdc_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @mdp4_lcdc_encoder_disable, ptr @mdp4_lcdc_encoder_enable, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* failed to get lvds_clk\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lvds-vccs-3p3v\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* failed to get lvds-vccs-3p3v: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lvds-pll-vdda\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* failed to get lvds-pll-vdda: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lvds-vdda\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* failed to get lvds-vdda: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"set mode: \22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pixclock=%lu\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* failed to disable regulator: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom,lcdc-align-lsb\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* failed to enable regulator: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"setting lcdc_clk=%lu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* failed to configure lcdc_clk: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* failed to enable lcdc_clk: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"*ERROR* unknown bpp: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 24]
@___asan_gen_.19 = private unnamed_addr constant [24 x i8] c"mdp4_lcdc_encoder_funcs\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 41, i32 39 }
@___asan_gen_.22 = private unnamed_addr constant [31 x i8] c"mdp4_lcdc_encoder_helper_funcs\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 369, i32 46 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 408, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 414, i32 37 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 417, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 422, i32 37 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 425, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 430, i32 37 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 433, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 226, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 230, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 281, i32 6 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 307, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 336, i32 48 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 345, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 348, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 351, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 354, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [53 x i8] c"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 177, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @mdp4_lcdc_encoder_funcs, ptr @mdp4_lcdc_encoder_helper_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp4_lcdc_encoder_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp4_lcdc_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp4_lcdc_round_pixclk(ptr nocapture noundef readonly %encoder, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %lcdc_clk = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %encoder, i32 0, i32 3
  %0 = ptrtoint ptr %lcdc_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lcdc_clk, align 4
  %call = tail call i32 @clk_round_rate(ptr noundef %1, i32 noundef %rate) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mdp4_lcdc_encoder_init(ptr noundef %dev, ptr noundef %panel_node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 108) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.end38_crit_edge, label %if.end

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

if.end:                                           ; preds = %entry
  %panel_node1 = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %panel_node1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %panel_node, ptr %panel_node1, align 8
  %call2 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @mdp4_lcdc_encoder_funcs, i32 noundef 3, ptr noundef null) #3
  %helper_private.i = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %2 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mdp4_lcdc_encoder_helper_funcs, ptr %helper_private.i, align 4
  %call3 = tail call ptr @mpd4_lvds_pll_init(ptr noundef %dev) #3
  %lcdc_clk = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %lcdc_clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %lcdc_clk, align 8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev7, align 4
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3
  %6 = ptrtoint ptr %lcdc_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lcdc_clk, align 8
  %8 = ptrtoint ptr %7 to i32
  br label %if.then37

if.end10:                                         ; preds = %if.end
  %call12 = tail call ptr @devm_regulator_get(ptr noundef %5, ptr noundef nonnull @.str.2) #3
  %cmp.i74 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %call12 to i32
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef %9) #3
  br label %if.then37

if.end17:                                         ; preds = %if.end10
  %regs = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call12, ptr %regs, align 8
  %13 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev7, align 4
  %call19 = tail call ptr @devm_regulator_get(ptr noundef %14, ptr noundef nonnull @.str.4) #3
  %cmp.i75 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %call19 to i32
  %16 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %15) #3
  br label %if.then37

if.end24:                                         ; preds = %if.end17
  %arrayidx26 = getelementptr %struct.mdp4_lcdc_encoder, ptr %call7.i.i, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call19, ptr %arrayidx26, align 4
  %19 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev7, align 4
  %call28 = tail call ptr @devm_regulator_get(ptr noundef %20, ptr noundef nonnull @.str.6) #3
  %cmp.i76 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %call28 to i32
  %22 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %23, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef %21) #3
  br label %if.then37

if.end33:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx35 = getelementptr %struct.mdp4_lcdc_encoder, ptr %call7.i.i, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call28, ptr %arrayidx35, align 8
  br label %cleanup

if.then37:                                        ; preds = %if.then30, %if.then21, %if.then14, %if.then6
  %ret.0.ph = phi i32 [ %21, %if.then30 ], [ %15, %if.then21 ], [ %9, %if.then14 ], [ %8, %if.then6 ]
  tail call void @drm_encoder_cleanup(ptr noundef nonnull %call7.i.i) #3
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #3
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %entry.if.end38_crit_edge
  %ret.082 = phi i32 [ %ret.0.ph, %if.then37 ], [ -12, %entry.if.end38_crit_edge ]
  %25 = inttoptr i32 %ret.082 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end33
  %retval.0 = phi ptr [ %25, %if.end38 ], [ %call7.i.i, %if.end33 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpd4_lvds_pll_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_lcdc_encoder_destroy(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #3
  tail call void @kfree(ptr noundef %encoder) #3
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_lcdc_encoder_mode_set(ptr nocapture noundef %encoder, ptr nocapture noundef readnone %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kms.i, align 4
  %name = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 31
  %call1 = tail call i32 @drm_mode_vrefresh(ptr noundef %adjusted_mode) #3
  %6 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %adjusted_mode, align 4
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 1
  %8 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %9 to i32
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 2
  %10 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hsync_start, align 2
  %conv2 = zext i16 %11 to i32
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 3
  %12 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hsync_end, align 4
  %conv3 = zext i16 %13 to i32
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 4
  %14 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %htotal, align 2
  %conv4 = zext i16 %15 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 6
  %16 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vdisplay, align 2
  %conv5 = zext i16 %17 to i32
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 7
  %18 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vsync_start, align 4
  %conv6 = zext i16 %19 to i32
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 8
  %20 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vsync_end, align 2
  %conv7 = zext i16 %21 to i32
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 9
  %22 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vtotal, align 4
  %conv8 = zext i16 %23 to i32
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 28
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %type, align 2
  %conv9 = zext i8 %25 to i32
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 11
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %call1, i32 noundef %7, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %27) #3
  %28 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %adjusted_mode, align 4
  %mul = mul i32 %29, 1000
  %pixclock = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %encoder, i32 0, i32 4
  %30 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul, ptr %pixclock, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef %mul) #3
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %and = lshr i32 %32, 1
  %and.lobit = and i32 %and, 1
  %and14 = lshr i32 %32, 2
  %33 = and i32 %and14, 2
  %34 = or i32 %33, %and.lobit
  %35 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %htotal, align 2
  %conv20 = zext i16 %36 to i32
  %37 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %hsync_start, align 2
  %conv22 = zext i16 %38 to i32
  %sub = sub nsw i32 %conv20, %conv22
  %39 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %hdisplay, align 4
  %conv28 = zext i16 %40 to i32
  %sub30 = add nsw i32 %sub, %conv28
  %41 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vtotal, align 4
  %conv33 = zext i16 %42 to i32
  %mul36 = mul nuw i32 %conv33, %conv20
  %43 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vsync_end, align 2
  %conv38 = zext i16 %44 to i32
  %45 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vsync_start, align 4
  %conv40 = zext i16 %46 to i32
  %sub41 = sub nsw i32 %conv38, %conv40
  %mul44 = mul i32 %sub41, %conv20
  %sub49 = sub nsw i32 %conv33, %conv40
  %mul52 = mul i32 %sub49, %conv20
  %47 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vdisplay, align 2
  %conv56 = zext i16 %48 to i32
  %sub57.neg = sub nsw i32 %conv56, %conv40
  %mul60.neg = mul i32 %sub57.neg, %conv20
  %sub61 = add i32 %mul36, -1
  %sub63 = add i32 %sub61, %mul60.neg
  %49 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %hsync_end, align 4
  %conv65 = zext i16 %50 to i32
  %sub68 = sub nsw i32 %conv65, %conv22
  %and.i = and i32 %sub68, 65535
  %shl.i = shl nuw i32 %conv20, 16
  %or73 = or i32 %and.i, %shl.i
  %mmio.i = getelementptr inbounds %struct.mdp4_kms, ptr %5, i32 0, i32 3
  %51 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %52, i32 786436
  tail call void @msm_writel(i32 noundef %or73, ptr noundef %add.ptr.i) #3
  %53 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i136 = getelementptr i8, ptr %54, i32 786440
  tail call void @msm_writel(i32 noundef %mul36, ptr noundef %add.ptr.i136) #3
  %55 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i138 = getelementptr i8, ptr %56, i32 786444
  tail call void @msm_writel(i32 noundef %mul44, ptr noundef %add.ptr.i138) #3
  %and.i139 = and i32 %sub, 65535
  %sub31 = shl i32 %sub30, 16
  %shl.i140 = add i32 %sub31, -65536
  %or76 = or i32 %shl.i140, %and.i139
  %57 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i142 = getelementptr i8, ptr %58, i32 786448
  tail call void @msm_writel(i32 noundef %or76, ptr noundef %add.ptr.i142) #3
  %59 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i144 = getelementptr i8, ptr %60, i32 786452
  tail call void @msm_writel(i32 noundef %mul52, ptr noundef %add.ptr.i144) #3
  %61 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i146 = getelementptr i8, ptr %62, i32 786456
  tail call void @msm_writel(i32 noundef %sub63, ptr noundef %add.ptr.i146) #3
  %63 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i148 = getelementptr i8, ptr %64, i32 786472
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i148) #3
  %65 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i150 = getelementptr i8, ptr %66, i32 786476
  tail call void @msm_writel(i32 noundef -2147483393, ptr noundef %add.ptr.i150) #3
  %67 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i152 = getelementptr i8, ptr %68, i32 786480
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i152) #3
  %69 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i154 = getelementptr i8, ptr %70, i32 786488
  tail call void @msm_writel(i32 noundef %34, ptr noundef %add.ptr.i154) #3
  %71 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i156 = getelementptr i8, ptr %72, i32 786460
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i156) #3
  %73 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i158 = getelementptr i8, ptr %74, i32 786464
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i158) #3
  %75 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i160 = getelementptr i8, ptr %76, i32 786468
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i160) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_lcdc_encoder_disable(ptr nocapture noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kms.i, align 4
  %enabled = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %encoder, i32 0, i32 6
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !51

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 281, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end25:                                         ; preds = %entry
  %mmio.i = getelementptr inbounds %struct.mdp4_kms, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 786432
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i) #3
  %panel_node = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %encoder, i32 0, i32 1
  %10 = ptrtoint ptr %panel_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %panel_node, align 4
  %call26 = tail call ptr @of_drm_find_panel(ptr noundef %11) #3
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end25.if.end31_crit_edge, label %if.then28

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  %call29 = tail call i32 @drm_panel_disable(ptr noundef %call26) #3
  %call30 = tail call i32 @drm_panel_unprepare(ptr noundef %call26) #3
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end25.if.end31_crit_edge
  tail call void @mdp_irq_wait(ptr noundef %5, i32 noundef 128) #3
  %lcdc_clk = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %encoder, i32 0, i32 3
  %12 = ptrtoint ptr %lcdc_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lcdc_clk, align 4
  tail call void @clk_disable(ptr noundef %13) #3
  tail call void @clk_unprepare(ptr noundef %13) #3
  %dev35 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %arrayidx = getelementptr %struct.mdp4_lcdc_encoder, ptr %encoder, i32 0, i32 5, i32 0
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %call32 = tail call i32 @regulator_disable(ptr noundef %15) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end31.for.inc_crit_edge, label %if.then34

if.end31.for.inc_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef %call32) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then34, %if.end31.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.mdp4_lcdc_encoder, ptr %encoder, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.1, align 4
  %call32.1 = tail call i32 @regulator_disable(ptr noundef %19) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.1)
  %tobool33.not.1 = icmp eq i32 %call32.1, 0
  br i1 %tobool33.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then34.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.1

if.then34.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef %call32.1) #3
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then34.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.mdp4_lcdc_encoder, ptr %encoder, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.2, align 4
  %call32.2 = tail call i32 @regulator_disable(ptr noundef %23) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.2)
  %tobool33.not.2 = icmp eq i32 %call32.2, 0
  br i1 %tobool33.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then34.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.2

if.then34.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef %call32.2) #3
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then34.2, %for.inc.1.for.inc.2_crit_edge
  %26 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.inc.2, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_lcdc_encoder_enable(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %pixclock = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %encoder, i32 0, i32 4
  %2 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixclock, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kms.i, align 4
  %enabled = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %encoder, i32 0, i32 6
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end24, label %do.end, !prof !52

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 324, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end24:                                         ; preds = %entry
  %dev33 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev33, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %13, ptr noundef nonnull @.str.12, ptr noundef null) #3
  %tobool.i.not = icmp eq ptr %call.i, null
  %spec.select = select i1 %tobool.i.not, i32 16785834, i32 16785706
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %14 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc, align 4
  tail call void @mdp4_crtc_set_config(ptr noundef %15, i32 noundef %spec.select) #3
  %16 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtc, align 4
  tail call void @mdp4_crtc_set_intf(ptr noundef %17, i32 noundef 0, i32 noundef 0) #3
  %arrayidx = getelementptr %struct.mdp4_lcdc_encoder, ptr %encoder, i32 0, i32 5, i32 0
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %call39 = tail call i32 @regulator_enable(ptr noundef %19) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end24.for.inc_crit_edge, label %if.then41

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then41:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef %call39) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then41, %if.end24.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.mdp4_lcdc_encoder, ptr %encoder, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.1, align 4
  %call39.1 = tail call i32 @regulator_enable(ptr noundef %23) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.1)
  %tobool40.not.1 = icmp eq i32 %call39.1, 0
  br i1 %tobool40.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then41.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.1

if.then41.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef %call39.1) #3
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then41.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.mdp4_lcdc_encoder, ptr %encoder, i32 0, i32 5, i32 2
  %26 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.2, align 4
  %call39.2 = tail call i32 @regulator_enable(ptr noundef %27) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.2)
  %tobool40.not.2 = icmp eq i32 %call39.2, 0
  br i1 %tobool40.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then41.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.2

if.then41.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef %call39.2) #3
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then41.2, %for.inc.1.for.inc.2_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14, i32 noundef %3) #3
  %lcdc_clk = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %encoder, i32 0, i32 3
  %30 = ptrtoint ptr %lcdc_clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lcdc_clk, align 4
  %call44 = tail call i32 @clk_set_rate(ptr noundef %31, i32 noundef %3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %for.inc.2.if.end48_crit_edge, label %if.then46

for.inc.2.if.end48_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48

if.then46:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  %32 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %33, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef %call44) #3
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %for.inc.2.if.end48_crit_edge
  %34 = ptrtoint ptr %lcdc_clk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lcdc_clk, align 4
  %call.i95 = tail call i32 @clk_prepare(ptr noundef %35) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool.not.i = icmp eq i32 %call.i95, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end48.if.then52_crit_edge

if.end48.if.then52_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then52

if.end.i:                                         ; preds = %if.end48
  %call1.i = tail call i32 @clk_enable(ptr noundef %35) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end54_crit_edge, label %if.then3.i

if.end.i.if.end54_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end54

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %35) #3
  br label %if.then52

if.then52:                                        ; preds = %if.then3.i, %if.end48.if.then52_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i95, %if.end48.if.then52_crit_edge ]
  %36 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %37, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i.ph) #3
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end.i.if.end54_crit_edge
  %panel_node = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %encoder, i32 0, i32 1
  %38 = ptrtoint ptr %panel_node to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %panel_node, align 4
  %call55 = tail call ptr @of_drm_find_panel(ptr noundef %39) #3
  %cmp.i = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end54.if.end60_crit_edge, label %if.then57

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end60

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #5
  %call58 = tail call i32 @drm_panel_prepare(ptr noundef %call55) #3
  %call59 = tail call i32 @drm_panel_enable(ptr noundef %call55) #3
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end54.if.end60_crit_edge
  %40 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %encoder, align 4
  %connector_list.i.i = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 30, i32 12
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end60
  %.pn.in.i.i = phi ptr [ %connector_list.i.i, %if.end60 ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %42 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %connector_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.setup_phy.exit_crit_edge, label %for.body.i.i

for.cond.i.i.setup_phy.exit_crit_edge:            ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %setup_phy.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %encoder4.i.i = getelementptr i8, ptr %.pn.i.i, i32 804
  %43 = ptrtoint ptr %encoder4.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %encoder4.i.i, align 4
  %cmp5.i.i = icmp eq ptr %44, %encoder
  br i1 %cmp5.i.i, label %get_connector.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i.i

get_connector.exit.i:                             ; preds = %for.body.i.i
  %connector.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -16
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 5
  %45 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %kms.i.i, align 4
  %tobool.not.i96 = icmp eq ptr %connector.0.le.i.i, null
  br i1 %tobool.not.i96, label %get_connector.exit.i.setup_phy.exit_crit_edge, label %if.end.i97

get_connector.exit.i.setup_phy.exit_crit_edge:    ; preds = %get_connector.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %setup_phy.exit

if.end.i97:                                       ; preds = %get_connector.exit.i
  %bpc.i = getelementptr i8, ptr %.pn.i.i, i32 184
  %49 = ptrtoint ptr %bpc.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bpc.i, align 8
  %mul.i = mul i32 %50, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool3.not.i = icmp eq i32 %mul.i, 0
  %spec.store.select.i = select i1 %tobool3.not.i, i32 18, i32 %mul.i
  %51 = zext i32 %spec.store.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.store.select.i, label %sw.default.i [
    i32 24, label %sw.bb.i
    i32 18, label %sw.bb65.i
  ]

sw.bb.i:                                          ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #5
  %mmio.i.i = getelementptr inbounds %struct.mdp4_kms, ptr %48, i32 0, i32 3
  %52 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 794644
  tail call void @msm_writel(i32 noundef 50595080, ptr noundef %add.ptr.i.i) #3
  %54 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i174.i = getelementptr i8, ptr %55, i32 794648
  tail call void @msm_writel(i32 noundef 258, ptr noundef %add.ptr.i174.i) #3
  br label %if.end126.i

sw.bb65.i:                                        ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #5
  %mmio.i187.i = getelementptr inbounds %struct.mdp4_kms, ptr %48, i32 0, i32 3
  br label %if.end126.i

sw.default.i:                                     ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #5
  %dev115.i = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 2
  %56 = ptrtoint ptr %dev115.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev115.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %57, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17, i32 noundef %spec.store.select.i) #3
  br label %setup_phy.exit

if.end126.i:                                      ; preds = %sw.bb65.i, %sw.bb.i
  %mmio.i187.sink235.i = phi ptr [ %mmio.i187.i, %sw.bb65.i ], [ %mmio.i.i, %sw.bb.i ]
  %.sink234.i = phi i32 [ 794644, %sw.bb65.i ], [ 794652, %sw.bb.i ]
  %.sink232.i = phi i32 [ 84281098, %sw.bb65.i ], [ 202182673, %sw.bb.i ]
  %.sink230.i = phi i32 [ 794648, %sw.bb65.i ], [ 794656, %sw.bb.i ]
  %.sink228.i = phi i32 [ 131844, %sw.bb65.i ], [ 592395, %sw.bb.i ]
  %.sink226.i = phi i32 [ 794652, %sw.bb65.i ], [ 794660, %sw.bb.i ]
  %.sink224.i = phi i32 [ 235868691, %sw.bb65.i ], [ 353900826, %sw.bb.i ]
  %.sink222.i = phi i32 [ 794656, %sw.bb65.i ], [ 794664, %sw.bb.i ]
  %.sink220.i = phi i32 [ 723981, %sw.bb65.i ], [ 1184532, %sw.bb.i ]
  %.sink218.i = phi i32 [ 794660, %sw.bb65.i ], [ 794668, %sw.bb.i ]
  %.sink216.i = phi i32 [ 387455258, %sw.bb65.i ], [ 253105947, %sw.bb.i ]
  %.sink215.i = phi i32 [ 794664, %sw.bb65.i ], [ 794672, %sw.bb.i ]
  %.sink.i = phi i32 [ 1316118, %sw.bb65.i ], [ 395022, %sw.bb.i ]
  %lvds_intf.1.i = phi i32 [ 67468, %sw.bb65.i ], [ 69508, %sw.bb.i ]
  %58 = ptrtoint ptr %mmio.i187.sink235.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i187.sink235.i, align 8
  %add.ptr.i188.i = getelementptr i8, ptr %59, i32 %.sink234.i
  tail call void @msm_writel(i32 noundef %.sink232.i, ptr noundef %add.ptr.i188.i) #3
  %60 = ptrtoint ptr %mmio.i187.sink235.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio.i187.sink235.i, align 8
  %add.ptr.i190.i = getelementptr i8, ptr %61, i32 %.sink230.i
  tail call void @msm_writel(i32 noundef %.sink228.i, ptr noundef %add.ptr.i190.i) #3
  %62 = ptrtoint ptr %mmio.i187.sink235.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio.i187.sink235.i, align 8
  %add.ptr.i192.i = getelementptr i8, ptr %63, i32 %.sink226.i
  tail call void @msm_writel(i32 noundef %.sink224.i, ptr noundef %add.ptr.i192.i) #3
  %64 = ptrtoint ptr %mmio.i187.sink235.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio.i187.sink235.i, align 8
  %add.ptr.i194.i = getelementptr i8, ptr %65, i32 %.sink222.i
  tail call void @msm_writel(i32 noundef %.sink220.i, ptr noundef %add.ptr.i194.i) #3
  %66 = ptrtoint ptr %mmio.i187.sink235.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio.i187.sink235.i, align 8
  %add.ptr.i196.i = getelementptr i8, ptr %67, i32 %.sink218.i
  tail call void @msm_writel(i32 noundef %.sink216.i, ptr noundef %add.ptr.i196.i) #3
  %68 = ptrtoint ptr %mmio.i187.sink235.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio.i187.sink235.i, align 8
  %add.ptr.i198.i = getelementptr i8, ptr %69, i32 %.sink215.i
  tail call void @msm_writel(i32 noundef %.sink.i, ptr noundef %add.ptr.i198.i) #3
  %mmio.i199.i = getelementptr inbounds %struct.mdp4_kms, ptr %48, i32 0, i32 3
  %70 = ptrtoint ptr %mmio.i199.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio.i199.i, align 8
  %add.ptr.i200.i = getelementptr i8, ptr %71, i32 798976
  tail call void @msm_writel(i32 noundef 64, ptr noundef %add.ptr.i200.i) #3
  %72 = ptrtoint ptr %mmio.i199.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmio.i199.i, align 8
  %add.ptr.i202.i = getelementptr i8, ptr %73, i32 794624
  tail call void @msm_writel(i32 noundef %lvds_intf.1.i, ptr noundef %add.ptr.i202.i) #3
  %74 = ptrtoint ptr %mmio.i199.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio.i199.i, align 8
  %add.ptr.i204.i = getelementptr i8, ptr %75, i32 798984
  tail call void @msm_writel(i32 noundef 48, ptr noundef %add.ptr.i204.i) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748) #3
  %77 = ptrtoint ptr %mmio.i199.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmio.i199.i, align 8
  %add.ptr.i206.i = getelementptr i8, ptr %78, i32 798976
  tail call void @msm_writel(i32 noundef 80, ptr noundef %add.ptr.i206.i) #3
  br label %setup_phy.exit

setup_phy.exit:                                   ; preds = %if.end126.i, %sw.default.i, %get_connector.exit.i.setup_phy.exit_crit_edge, %for.cond.i.i.setup_phy.exit_crit_edge
  %mmio.i = getelementptr inbounds %struct.mdp4_kms, ptr %7, i32 0, i32 3
  %79 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %80, i32 786432
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i) #3
  %81 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %setup_phy.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_panel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp_irq_wait(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp4_crtc_set_config(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp4_crtc_set_intf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c", i32 408, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c", i32 414, i32 37}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c", i32 417, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c", i32 422, i32 37}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c", i32 425, i32 3}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c", i32 430, i32 37}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c", i32 433, i32 3}
!15 = !{ptr @mdp4_lcdc_encoder_funcs, !16, !"mdp4_lcdc_encoder_funcs", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c", i32 41, i32 39}
!17 = !{ptr @mdp4_lcdc_encoder_helper_funcs, !18, !"mdp4_lcdc_encoder_helper_funcs", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c", i32 369, i32 46}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c", i32 226, i32 2}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c", i32 230, i32 2}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c", i32 281, i32 6}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c", i32 307, i32 4}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c", i32 336, i32 48}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c", i32 345, i32 4}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c", i32 348, i32 2}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c", i32 351, i32 3}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c", i32 354, i32 3}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c", i32 177, i32 3}
!39 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c", i32 194, i32 3}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i8 0, i8 2}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2157199842}
