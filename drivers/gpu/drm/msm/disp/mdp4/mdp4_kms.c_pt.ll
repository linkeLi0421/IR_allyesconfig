; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mdp_kms_funcs = type { %struct.msm_kms_funcs, ptr }
%struct.msm_kms_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.mdp4_kms = type { %struct.mdp_kms, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mdp_irq, i8, ptr, i64 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.93, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.93 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.96, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.96 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.msm_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.msm_gem_address_space = type { ptr, %struct.drm_mm, %struct.spinlock, ptr, %struct.kref, ptr }

@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* failed to allocate kms\0A\00", [32 x i8] zeroinitializer }, align 32
@kms_funcs = internal constant { %struct.mdp_kms_funcs, [40 x i8] } { %struct.mdp_kms_funcs { %struct.msm_kms_funcs { ptr @mdp4_hw_init, ptr @mdp4_irq_preinstall, ptr @mdp4_irq_postinstall, ptr @mdp4_irq_uninstall, ptr @mdp4_irq, ptr @mdp4_enable_vblank, ptr @mdp4_disable_vblank, ptr @mdp4_enable_commit, ptr @mdp4_disable_commit, ptr null, ptr @mdp4_prepare_commit, ptr @mdp4_flush_commit, ptr @mdp4_wait_flush, ptr @mdp4_complete_commit, ptr @mdp_get_format, ptr null, ptr @mdp4_round_pixclk, ptr null, ptr @mdp4_destroy, ptr null, ptr null }, ptr @mdp4_set_irqmask }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"*ERROR* failed to init kms\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MDP4\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* failed to get irq: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"*ERROR* failed to enable regulator vdd: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"core_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* failed to get core_clk\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iface_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bus_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* failed to get axi_clk\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* unexpected MDP version: v%d.%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lut_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* failed to get lut_clk\0A\00", [33 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdp4\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"no iommu, fallback to phys contig buffers for scanout\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* modeset_init failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"*ERROR* could not allocate blank-cursor bo: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* could not pin blank-cursor bo: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@msm_kms_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&kms->commit_lock[i]\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fetch config: dmap=%02x, vg=%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MDP4 version v%d.%d\00", [44 x i8] zeroinitializer }, align 32
@modeset_init.mdp4_crtc_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.25, ptr @.str.26], [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMA_P\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMA_E\00", [26 x i8] zeroinitializer }, align 32
@modeset_init.mdp4_intfs = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3, i32 6, i32 2], [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"*ERROR* failed to construct plane for VG%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* failed to construct plane for RGB%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* failed to construct crtc for %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* failed to initialize intf: %d, %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* failed to construct LCDC encoder\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* failed to initialize LVDS connector\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* failed to construct DTV encoder\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* failed to initialize HDMI: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* failed to construct DSI encoder: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* failed to initialize DSI: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* Invalid or unsupported interface\0A\00", [54 x i8] zeroinitializer }, align 32
@mdp4_get_config.config.0 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mdp4_get_config.config.1 = internal global { i1, [31 x i8] } zeroinitializer, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 6]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 173, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 405, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [10 x i8] c"kms_funcs\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 149, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 412, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 421, i32 43 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 430, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 440, i32 59 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 447, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 452, i32 43 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 454, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 459, i32 44 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 463, i32 47 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 465, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 475, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 484, i32 48 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 486, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 512, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 523, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 530, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 537, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 545, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [33 x i8] c"../drivers/gpu/drm/msm/msm_kms.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 175, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 48, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 389, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [16 x i8] c"mdp4_crtc_names\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 309, i32 28 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 310, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 310, i32 12 }
@___asan_gen_.128 = private unnamed_addr constant [11 x i8] c"mdp4_intfs\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 312, i32 19 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 322, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 333, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 342, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 364, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 219, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 228, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 239, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 250, i32 5 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 268, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 279, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.162 = private constant [44 x i8] c"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 286, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [25 x i8] c"mdp4_get_config.config.0\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [25 x i8] c"mdp4_get_config.config.1\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @kms_funcs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @msm_kms_init.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @modeset_init.mdp4_crtc_names, ptr @.str.25, ptr @.str.26, ptr @modeset_init.mdp4_intfs, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @mdp4_get_config.config.0, ptr @mdp4_get_config.config.1], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kms_funcs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_kms_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modeset_init.mdp4_crtc_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modeset_init.mdp4_intfs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp4_get_config.config.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp4_get_config.config.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp4_disable(ptr nocapture noundef readonly %mdp4_kms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  %clk = getelementptr inbounds %struct.mdp4_kms, ptr %mdp4_kms, i32 0, i32 5
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %1) #6
  tail call void @clk_unprepare(ptr noundef %1) #6
  %pclk = getelementptr inbounds %struct.mdp4_kms, ptr %mdp4_kms, i32 0, i32 6
  %2 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %lut_clk = getelementptr inbounds %struct.mdp4_kms, ptr %mdp4_kms, i32 0, i32 7
  %4 = ptrtoint ptr %lut_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lut_clk, align 8
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %axi_clk = getelementptr inbounds %struct.mdp4_kms, ptr %mdp4_kms, i32 0, i32 8
  %6 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %axi_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp4_enable(ptr nocapture noundef readonly %mdp4_kms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  %clk = getelementptr inbounds %struct.mdp4_kms, ptr %mdp4_kms, i32 0, i32 5
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %1) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %pclk = getelementptr inbounds %struct.mdp4_kms, ptr %mdp4_kms, i32 0, i32 6
  %2 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk, align 4
  %call.i7 = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %tobool.not.i8 = icmp eq i32 %call.i7, 0
  br i1 %tobool.not.i8, label %if.end.i11, label %clk_prepare_enable.exit.clk_prepare_enable.exit13_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit13_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit13

if.end.i11:                                       ; preds = %clk_prepare_enable.exit
  %call1.i9 = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool2.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool2.not.i10, label %if.end.i11.clk_prepare_enable.exit13_crit_edge, label %if.then3.i12

if.end.i11.clk_prepare_enable.exit13_crit_edge:   ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit13

if.then3.i12:                                     ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %clk_prepare_enable.exit13

clk_prepare_enable.exit13:                        ; preds = %if.then3.i12, %if.end.i11.clk_prepare_enable.exit13_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit13_crit_edge
  %lut_clk = getelementptr inbounds %struct.mdp4_kms, ptr %mdp4_kms, i32 0, i32 7
  %4 = ptrtoint ptr %lut_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lut_clk, align 8
  %call.i14 = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool.not.i15 = icmp eq i32 %call.i14, 0
  br i1 %tobool.not.i15, label %if.end.i18, label %clk_prepare_enable.exit13.clk_prepare_enable.exit20_crit_edge

clk_prepare_enable.exit13.clk_prepare_enable.exit20_crit_edge: ; preds = %clk_prepare_enable.exit13
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit20

if.end.i18:                                       ; preds = %clk_prepare_enable.exit13
  %call1.i16 = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool2.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool2.not.i17, label %if.end.i18.clk_prepare_enable.exit20_crit_edge, label %if.then3.i19

if.end.i18.clk_prepare_enable.exit20_crit_edge:   ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit20

if.then3.i19:                                     ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %clk_prepare_enable.exit20

clk_prepare_enable.exit20:                        ; preds = %if.then3.i19, %if.end.i18.clk_prepare_enable.exit20_crit_edge, %clk_prepare_enable.exit13.clk_prepare_enable.exit20_crit_edge
  %axi_clk = getelementptr inbounds %struct.mdp4_kms, ptr %mdp4_kms, i32 0, i32 8
  %6 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %axi_clk, align 4
  %call.i21 = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool.not.i22 = icmp eq i32 %call.i21, 0
  br i1 %tobool.not.i22, label %if.end.i25, label %clk_prepare_enable.exit20.clk_prepare_enable.exit27_crit_edge

clk_prepare_enable.exit20.clk_prepare_enable.exit27_crit_edge: ; preds = %clk_prepare_enable.exit20
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit27

if.end.i25:                                       ; preds = %clk_prepare_enable.exit20
  %call1.i23 = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool2.not.i24 = icmp eq i32 %call1.i23, 0
  br i1 %tobool2.not.i24, label %if.end.i25.clk_prepare_enable.exit27_crit_edge, label %if.then3.i26

if.end.i25.clk_prepare_enable.exit27_crit_edge:   ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit27

if.then3.i26:                                     ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %clk_prepare_enable.exit27

clk_prepare_enable.exit27:                        ; preds = %if.then3.i26, %if.end.i25.clk_prepare_enable.exit27_crit_edge, %clk_prepare_enable.exit20.clk_prepare_enable.exit27_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mdp4_kms_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  store i1 true, ptr @mdp4_get_config.config.1, align 4
  %call.i = tail call ptr @iommu_domain_alloc(ptr noundef nonnull @platform_bus_type) #6
  store ptr %call.i, ptr @mdp4_get_config.config.0, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %major) #6
  %4 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %major, align 4, !annotation !98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minor) #6
  %5 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %minor, align 4, !annotation !98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1672) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #6
  br label %if.end136

if.end:                                           ; preds = %entry
  %funcs1.i = getelementptr inbounds %struct.mdp_kms, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %funcs1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @kms_funcs, ptr %funcs1.i, align 8
  %irq_list.i = getelementptr inbounds %struct.mdp_kms, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %irq_list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %irq_list.i, ptr %irq_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.mdp_kms, ptr %call7.i.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %irq_list.i, ptr %prev.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.msm_kms, ptr %call7.i.i, i32 0, i32 7, i32 0
  tail call void @__mutex_init(ptr noundef %arrayidx.i.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @msm_kms_init.__key) #6
  %arrayidx.1.i.i = getelementptr %struct.msm_kms, ptr %call7.i.i, i32 0, i32 7, i32 1
  tail call void @__mutex_init(ptr noundef %arrayidx.1.i.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @msm_kms_init.__key) #6
  %arrayidx.2.i.i = getelementptr %struct.msm_kms, ptr %call7.i.i, i32 0, i32 7, i32 2
  tail call void @__mutex_init(ptr noundef %arrayidx.2.i.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @msm_kms_init.__key) #6
  %arrayidx.3.i.i = getelementptr %struct.msm_kms, ptr %call7.i.i, i32 0, i32 7, i32 3
  tail call void @__mutex_init(ptr noundef %arrayidx.3.i.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @msm_kms_init.__key) #6
  %arrayidx.4.i.i = getelementptr %struct.msm_kms, ptr %call7.i.i, i32 0, i32 7, i32 4
  tail call void @__mutex_init(ptr noundef %arrayidx.4.i.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @msm_kms_init.__key) #6
  %arrayidx.5.i.i = getelementptr %struct.msm_kms, ptr %call7.i.i, i32 0, i32 7, i32 5
  tail call void @__mutex_init(ptr noundef %arrayidx.5.i.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @msm_kms_init.__key) #6
  %arrayidx.6.i.i = getelementptr %struct.msm_kms, ptr %call7.i.i, i32 0, i32 7, i32 6
  tail call void @__mutex_init(ptr noundef %arrayidx.6.i.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @msm_kms_init.__key) #6
  %arrayidx.7.i.i = getelementptr %struct.msm_kms, ptr %call7.i.i, i32 0, i32 7, i32 7
  tail call void @__mutex_init(ptr noundef %arrayidx.7.i.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @msm_kms_init.__key) #6
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @kms_funcs, ptr %call7.i.i, align 8
  %arrayidx5.i.i = getelementptr %struct.msm_kms, ptr %call7.i.i, i32 0, i32 9, i32 0
  %call.i.i = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %arrayidx5.i.i, ptr noundef nonnull %call7.i.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond2.i.i, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

for.cond2.i.i:                                    ; preds = %if.end
  %arrayidx5.1.i.i = getelementptr %struct.msm_kms, ptr %call7.i.i, i32 0, i32 9, i32 1
  %call.1.i.i = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %arrayidx5.1.i.i, ptr noundef nonnull %call7.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %call.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.cond2.1.i.i, label %for.cond2.i.i.if.then6_crit_edge

for.cond2.i.i.if.then6_crit_edge:                 ; preds = %for.cond2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

for.cond2.1.i.i:                                  ; preds = %for.cond2.i.i
  %arrayidx5.2.i.i = getelementptr %struct.msm_kms, ptr %call7.i.i, i32 0, i32 9, i32 2
  %call.2.i.i = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %arrayidx5.2.i.i, ptr noundef nonnull %call7.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %call.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.cond2.2.i.i, label %for.cond2.1.i.i.if.then6_crit_edge

for.cond2.1.i.i.if.then6_crit_edge:               ; preds = %for.cond2.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

for.cond2.2.i.i:                                  ; preds = %for.cond2.1.i.i
  %arrayidx5.3.i.i = getelementptr %struct.msm_kms, ptr %call7.i.i, i32 0, i32 9, i32 3
  %call.3.i.i = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %arrayidx5.3.i.i, ptr noundef nonnull %call7.i.i, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %call.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.cond2.3.i.i, label %for.cond2.2.i.i.if.then6_crit_edge

for.cond2.2.i.i.if.then6_crit_edge:               ; preds = %for.cond2.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

for.cond2.3.i.i:                                  ; preds = %for.cond2.2.i.i
  %arrayidx5.4.i.i = getelementptr %struct.msm_kms, ptr %call7.i.i, i32 0, i32 9, i32 4
  %call.4.i.i = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %arrayidx5.4.i.i, ptr noundef nonnull %call7.i.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i.i)
  %tobool.not.4.i.i = icmp eq i32 %call.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %for.cond2.4.i.i, label %for.cond2.3.i.i.if.then6_crit_edge

for.cond2.3.i.i.if.then6_crit_edge:               ; preds = %for.cond2.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

for.cond2.4.i.i:                                  ; preds = %for.cond2.3.i.i
  %arrayidx5.5.i.i = getelementptr %struct.msm_kms, ptr %call7.i.i, i32 0, i32 9, i32 5
  %call.5.i.i = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %arrayidx5.5.i.i, ptr noundef nonnull %call7.i.i, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i.i)
  %tobool.not.5.i.i = icmp eq i32 %call.5.i.i, 0
  br i1 %tobool.not.5.i.i, label %for.cond2.5.i.i, label %for.cond2.4.i.i.if.then6_crit_edge

for.cond2.4.i.i.if.then6_crit_edge:               ; preds = %for.cond2.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

for.cond2.5.i.i:                                  ; preds = %for.cond2.4.i.i
  %arrayidx5.6.i.i = getelementptr %struct.msm_kms, ptr %call7.i.i, i32 0, i32 9, i32 6
  %call.6.i.i = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %arrayidx5.6.i.i, ptr noundef nonnull %call7.i.i, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i.i)
  %tobool.not.6.i.i = icmp eq i32 %call.6.i.i, 0
  br i1 %tobool.not.6.i.i, label %mdp_kms_init.exit, label %for.cond2.5.i.i.if.then6_crit_edge

for.cond2.5.i.i.if.then6_crit_edge:               ; preds = %for.cond2.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

mdp_kms_init.exit:                                ; preds = %for.cond2.5.i.i
  %arrayidx5.7.i.i = getelementptr %struct.msm_kms, ptr %call7.i.i, i32 0, i32 9, i32 7
  %call.7.i.i = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %arrayidx5.7.i.i, ptr noundef nonnull %call7.i.i, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i.i)
  %tobool5.not = icmp eq i32 %call.7.i.i, 0
  br i1 %tobool5.not, label %if.end8, label %mdp_kms_init.exit.if.then6_crit_edge

mdp_kms_init.exit.if.then6_crit_edge:             ; preds = %mdp_kms_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.then6:                                         ; preds = %mdp_kms_init.exit.if.then6_crit_edge, %for.cond2.5.i.i.if.then6_crit_edge, %for.cond2.4.i.i.if.then6_crit_edge, %for.cond2.3.i.i.if.then6_crit_edge, %for.cond2.2.i.i.if.then6_crit_edge, %for.cond2.1.i.i.if.then6_crit_edge, %for.cond2.i.i.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %retval.0.i.i260 = phi i32 [ %call.7.i.i, %mdp_kms_init.exit.if.then6_crit_edge ], [ %call.6.i.i, %for.cond2.5.i.i.if.then6_crit_edge ], [ %call.5.i.i, %for.cond2.4.i.i.if.then6_crit_edge ], [ %call.4.i.i, %for.cond2.3.i.i.if.then6_crit_edge ], [ %call.3.i.i, %for.cond2.2.i.i.if.then6_crit_edge ], [ %call.2.i.i, %for.cond2.1.i.i.if.then6_crit_edge ], [ %call.1.i.i, %for.cond2.i.i.if.then6_crit_edge ], [ %call.i.i, %if.end.if.then6_crit_edge ]
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #6
  br label %if.end136

if.end8:                                          ; preds = %mdp_kms_init.exit
  %kms11 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %kms11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %kms11, align 4
  %dev13 = getelementptr inbounds %struct.mdp4_kms, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %dev13, align 8
  %call14 = tail call ptr @msm_ioremap(ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.4) #6
  %mmio = getelementptr inbounds %struct.mdp4_kms, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call14, ptr %mmio, align 8
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call14 to i32
  br label %if.then135

if.end20:                                         ; preds = %if.end8
  %call21 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %20, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef %call21) #6
  br label %if.then135

if.end24:                                         ; preds = %if.end20
  %irq25 = getelementptr inbounds %struct.msm_kms, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %irq25 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call21, ptr %irq25, align 8
  %call27 = tail call ptr @devm_regulator_get_exclusive(ptr noundef %1, ptr noundef nonnull @.str.6) #6
  %vdd = getelementptr inbounds %struct.mdp4_kms, ptr %call7.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call27, ptr %vdd, align 4
  %cmp.i246 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i246, label %if.end32.thread, label %if.end32

if.end32.thread:                                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %vdd, align 4
  br label %if.end42

if.end32:                                         ; preds = %if.end24
  %tobool34.not = icmp eq ptr %call27, null
  br i1 %tobool34.not, label %if.end32.if.end42_crit_edge, label %if.then35

if.end32.if.end42_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then35:                                        ; preds = %if.end32
  %call37 = tail call i32 @regulator_enable(ptr noundef nonnull %call27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then35.if.end42_crit_edge, label %if.then39

if.then35.if.end42_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %25, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, i32 noundef %call37) #6
  br label %if.then135

if.end42:                                         ; preds = %if.then35.if.end42_crit_edge, %if.end32.if.end42_crit_edge, %if.end32.thread
  %call44 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.8) #6
  %clk = getelementptr inbounds %struct.mdp4_kms, ptr %call7.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call44, ptr %clk, align 8
  %cmp.i247 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i247, label %if.then47, label %if.end51

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %28, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9) #6
  %29 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk, align 8
  %31 = ptrtoint ptr %30 to i32
  br label %if.then135

if.end51:                                         ; preds = %if.end42
  %call53 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.10) #6
  %pclk = getelementptr inbounds %struct.mdp4_kms, ptr %call7.i.i, i32 0, i32 6
  %cmp.i248 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i248, ptr null, ptr %call53
  %32 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %spec.store.select, ptr %pclk, align 4
  %call60 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.11) #6
  %axi_clk = getelementptr inbounds %struct.mdp4_kms, ptr %call7.i.i, i32 0, i32 8
  %33 = ptrtoint ptr %axi_clk to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call60, ptr %axi_clk, align 4
  %cmp.i249 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i249, label %if.then63, label %if.end67

if.then63:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %35, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #6
  %36 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %axi_clk, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %if.then135

if.end67:                                         ; preds = %if.end51
  %39 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk, align 8
  %.b = load i1, ptr @mdp4_get_config.config.1, align 4
  %41 = select i1 %.b, i32 266667000, i32 0
  %call69 = tail call i32 @clk_set_rate(ptr noundef %40, i32 noundef %41) #6
  call fastcc void @read_mdp_hw_revision(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %major, ptr noundef nonnull %minor)
  %42 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %cmp70.not = icmp eq i32 %43, 4
  br i1 %cmp70.not, label %if.end73, label %if.then71

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev1, align 4
  %46 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %minor, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %45, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13, i32 noundef %43, i32 noundef %47) #6
  br label %if.then135

if.end73:                                         ; preds = %if.end67
  %48 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %minor, align 4
  %rev = getelementptr inbounds %struct.mdp4_kms, ptr %call7.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp75 = icmp sgt i32 %49, 1
  br i1 %cmp75, label %if.then76, label %if.end73.if.end89_crit_edge

if.end73.if.end89_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.then76:                                        ; preds = %if.end73
  %call78 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.14) #6
  %lut_clk = getelementptr inbounds %struct.mdp4_kms, ptr %call7.i.i, i32 0, i32 7
  %51 = ptrtoint ptr %lut_clk to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call78, ptr %lut_clk, align 8
  %cmp.i250 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i250, label %if.then81, label %if.end85

if.then81:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %53, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15) #6
  %54 = ptrtoint ptr %lut_clk to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lut_clk, align 8
  %56 = ptrtoint ptr %55 to i32
  br label %if.then135

if.end85:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  %.b244 = load i1, ptr @mdp4_get_config.config.1, align 4
  %57 = select i1 %.b244, i32 266667000, i32 0
  %call88 = tail call i32 @clk_set_rate(ptr noundef %call78, i32 noundef %57) #6
  br label %if.end89

if.end89:                                         ; preds = %if.end85, %if.end73.if.end89_crit_edge
  %58 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev1, align 4
  tail call void @pm_runtime_enable(ptr noundef %59) #6
  %rpm_enabled = getelementptr inbounds %struct.mdp4_kms, ptr %call7.i.i, i32 0, i32 10
  %60 = ptrtoint ptr %rpm_enabled to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %rpm_enabled, align 4
  %call91 = tail call i32 @mdp4_enable(ptr noundef nonnull %call7.i.i)
  %61 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio, align 8
  %add.ptr.i = getelementptr i8, ptr %62, i32 851968
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i) #6
  %63 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio, align 8
  %add.ptr.i252 = getelementptr i8, ptr %64, i32 786432
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i252) #6
  %65 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio, align 8
  %add.ptr.i254 = getelementptr i8, ptr %66, i32 917504
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i254) #6
  %call92 = tail call i32 @mdp4_disable(ptr noundef nonnull %call7.i.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748000) #6
  %83 = load ptr, ptr @mdp4_get_config.config.0, align 4
  %tobool94.not = icmp eq ptr %83, null
  br i1 %tobool94.not, label %if.else, label %if.then95

if.then95:                                        ; preds = %if.end89
  %call98 = tail call ptr @msm_iommu_new(ptr noundef %1, ptr noundef nonnull %83) #6
  %call99 = tail call ptr @msm_gem_address_space_create(ptr noundef %call98, ptr noundef nonnull @.str.16, i64 noundef 4096, i64 noundef 4294963200) #6
  %cmp.i255 = icmp ugt ptr %call99, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i255, label %if.then101, label %cleanup.thread

if.then101:                                       ; preds = %if.then95
  %cmp.i256 = icmp ugt ptr %call98, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i256, label %if.then101.cleanup_crit_edge, label %if.then103

if.then101.cleanup_crit_edge:                     ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then103:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %call98 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call98, align 4
  %destroy = getelementptr inbounds %struct.msm_mmu_funcs, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %destroy, align 4
  tail call void %87(ptr noundef %call98) #6
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #8
  %aspace107 = getelementptr inbounds %struct.msm_kms, ptr %call7.i.i, i32 0, i32 3
  %88 = ptrtoint ptr %aspace107 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call99, ptr %aspace107, align 4
  br label %if.end109

cleanup:                                          ; preds = %if.then103, %if.then101.cleanup_crit_edge
  %89 = ptrtoint ptr %call99 to i32
  br label %if.then135

if.else:                                          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %91, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #6
  br label %if.end109

if.end109:                                        ; preds = %if.else, %cleanup.thread
  %call110 = tail call fastcc i32 @modeset_init(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end114, label %if.then112

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %93, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19, i32 noundef %call110) #6
  br label %if.then135

if.end114:                                        ; preds = %if.end109
  %call115 = tail call ptr @msm_gem_new(ptr noundef %dev, i32 noundef 16384, i32 noundef 131073) #6
  %blank_cursor_bo = getelementptr inbounds %struct.mdp4_kms, ptr %call7.i.i, i32 0, i32 11
  %94 = ptrtoint ptr %blank_cursor_bo to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call115, ptr %blank_cursor_bo, align 8
  %cmp.i257 = icmp ugt ptr %call115, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i257, label %if.then118, label %if.end123

if.then118:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %call115 to i32
  %96 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %97, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef %95) #6
  %98 = ptrtoint ptr %blank_cursor_bo to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %blank_cursor_bo, align 8
  br label %if.then135

if.end123:                                        ; preds = %if.end114
  %aspace125 = getelementptr inbounds %struct.msm_kms, ptr %call7.i.i, i32 0, i32 3
  %99 = ptrtoint ptr %aspace125 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %aspace125, align 4
  %blank_cursor_iova = getelementptr inbounds %struct.mdp4_kms, ptr %call7.i.i, i32 0, i32 12
  %call126 = tail call i32 @msm_gem_get_and_pin_iova(ptr noundef %call115, ptr noundef %100, ptr noundef %blank_cursor_iova) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end130, label %if.then128

if.then128:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %102, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef %call126) #6
  br label %if.then135

if.end130:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  %min_width = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 23
  %103 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %min_width, align 4
  %min_height = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 24
  %104 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %min_height, align 4
  %max_width = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 25
  %105 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 2048, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 26
  %106 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 2048, ptr %max_height, align 4
  br label %cleanup138

if.then135:                                       ; preds = %if.then128, %if.then118, %if.then112, %cleanup, %if.then81, %if.then71, %if.then63, %if.then47, %if.then39, %if.then22, %if.then17
  %ret.2269 = phi i32 [ %56, %if.then81 ], [ -6, %if.then71 ], [ %38, %if.then63 ], [ %31, %if.then47 ], [ %call37, %if.then39 ], [ %call21, %if.then22 ], [ %18, %if.then17 ], [ %89, %cleanup ], [ %call110, %if.then112 ], [ %95, %if.then118 ], [ %call126, %if.then128 ]
  tail call void @mdp4_destroy(ptr noundef nonnull %call7.i.i)
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.then6, %if.then
  %ret.2270 = phi i32 [ %ret.2269, %if.then135 ], [ -12, %if.then ], [ %retval.0.i.i260, %if.then6 ]
  %107 = inttoptr i32 %ret.2270 to ptr
  br label %cleanup138

cleanup138:                                       ; preds = %if.end136, %if.end130
  %retval.0 = phi ptr [ %107, %if.end136 ], [ %call7.i.i, %if.end130 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minor) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %major) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_exclusive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @read_mdp_hw_revision(ptr nocapture noundef readonly %mdp4_kms, ptr nocapture noundef %major, ptr nocapture noundef writeonly %minor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mdp4_kms, ptr %mdp4_kms, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %call = tail call i32 @mdp4_enable(ptr noundef %mdp4_kms)
  %mmio.i = getelementptr inbounds %struct.mdp4_kms, ptr %mdp4_kms, i32 0, i32 3
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 8
  %call.i = tail call i32 @msm_readl(ptr noundef %3) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  %clk.i = getelementptr inbounds %struct.mdp4_kms, ptr %mdp4_kms, i32 0, i32 5
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 8
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %pclk.i = getelementptr inbounds %struct.mdp4_kms, ptr %mdp4_kms, i32 0, i32 6
  %6 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  %lut_clk.i = getelementptr inbounds %struct.mdp4_kms, ptr %mdp4_kms, i32 0, i32 7
  %8 = ptrtoint ptr %lut_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lut_clk.i, align 8
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  %axi_clk.i = getelementptr inbounds %struct.mdp4_kms, ptr %mdp4_kms, i32 0, i32 8
  %10 = ptrtoint ptr %axi_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %axi_clk.i, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  %shr = lshr i32 %call.i, 24
  %12 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr, ptr %major, align 4
  %and4 = lshr i32 %call.i, 16
  %shr5 = and i32 %and4, 255
  %13 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr5, ptr %minor, align 4
  %dev6 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev6, align 4
  %16 = load i32, ptr %major, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %15, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.24, i32 noundef %16, i32 noundef %shr5) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_iommu_new(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_address_space_create(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @modeset_init(ptr nocapture noundef readonly %mdp4_kms) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mdp4_kms, ptr %mdp4_kms, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %num_planes = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 23
  %call = tail call ptr @mdp4_plane_init(ptr noundef %1, i32 noundef 0, i1 noundef zeroext false) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %if.end.if.then_crit_edge, %entry.if.then_crit_edge
  %i.0114.lcssa = phi i32 [ 1, %entry.if.then_crit_edge ], [ 2, %if.end.if.then_crit_edge ]
  %call.lcssa = phi ptr [ %call, %entry.if.then_crit_edge ], [ %call.1, %if.end.if.then_crit_edge ]
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27, i32 noundef %i.0114.lcssa) #6
  %6 = ptrtoint ptr %call.lcssa to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_planes, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %num_planes, align 4
  %arrayidx5 = getelementptr %struct.msm_drm_private, ptr %3, i32 0, i32 24, i32 %8
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %arrayidx5, align 4
  %call.1 = tail call ptr @mdp4_plane_init(ptr noundef %1, i32 noundef 1, i1 noundef zeroext false) #6
  %cmp.i.1 = icmp ugt ptr %call.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.end.if.then_crit_edge, label %if.end.1

if.end.if.then_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.1:                                         ; preds = %if.end
  %10 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_planes, align 4
  %inc.1 = add i32 %11, 1
  store i32 %inc.1, ptr %num_planes, align 4
  %arrayidx5.1 = getelementptr %struct.msm_drm_private, ptr %3, i32 0, i32 24, i32 %11
  %12 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.1, ptr %arrayidx5.1, align 4
  %num_crtcs = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 25
  %call11 = tail call ptr @mdp4_plane_init(ptr noundef %1, i32 noundef 2, i1 noundef zeroext true) #6
  %cmp.i83 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %if.end.1.if.then13_crit_edge, label %if.end17

if.end.1.if.then13_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

if.then13:                                        ; preds = %if.end25.if.then13_crit_edge, %if.end.1.if.then13_crit_edge
  %i.1115.lcssa = phi i32 [ 1, %if.end.1.if.then13_crit_edge ], [ 2, %if.end25.if.then13_crit_edge ]
  %call11.lcssa = phi ptr [ %call11, %if.end.1.if.then13_crit_edge ], [ %call11.1, %if.end25.if.then13_crit_edge ]
  %dev14 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.28, i32 noundef %i.1115.lcssa) #6
  %15 = ptrtoint ptr %call11.lcssa to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end.1
  %16 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_crtcs, align 8
  %call19 = tail call ptr @mdp4_crtc_init(ptr noundef %1, ptr noundef %call11, i32 noundef %17, i32 noundef 0, i32 noundef 0) #6
  %cmp.i84 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84, label %if.end17.if.then21_crit_edge, label %if.end25

if.end17.if.then21_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

if.then21:                                        ; preds = %if.end17.1.if.then21_crit_edge, %if.end17.if.then21_crit_edge
  %call19.lcssa = phi ptr [ %call19, %if.end17.if.then21_crit_edge ], [ %call19.1, %if.end17.1.if.then21_crit_edge ]
  %i.1115.lcssa142 = phi i32 [ 0, %if.end17.if.then21_crit_edge ], [ 1, %if.end17.1.if.then21_crit_edge ]
  %dev22 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev22, align 4
  %arrayidx23 = getelementptr [2 x ptr], ptr @modeset_init.mdp4_crtc_names, i32 0, i32 %i.1115.lcssa142
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx23, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %19, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.29, ptr noundef %21) #6
  %22 = ptrtoint ptr %call19.lcssa to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %23 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_crtcs, align 8
  %inc27 = add i32 %24, 1
  store i32 %inc27, ptr %num_crtcs, align 8
  %arrayidx28 = getelementptr %struct.msm_drm_private, ptr %3, i32 0, i32 26, i32 %24
  %25 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call19, ptr %arrayidx28, align 4
  %call11.1 = tail call ptr @mdp4_plane_init(ptr noundef %1, i32 noundef 3, i1 noundef zeroext true) #6
  %cmp.i83.1 = icmp ugt ptr %call11.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83.1, label %if.end25.if.then13_crit_edge, label %if.end17.1

if.end25.if.then13_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

if.end17.1:                                       ; preds = %if.end25
  %26 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_crtcs, align 8
  %call19.1 = tail call ptr @mdp4_crtc_init(ptr noundef %1, ptr noundef %call11.1, i32 noundef %27, i32 noundef 1, i32 noundef 2) #6
  %cmp.i84.1 = icmp ugt ptr %call19.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84.1, label %if.end17.1.if.then21_crit_edge, label %if.end25.1

if.end17.1.if.then21_crit_edge:                   ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

if.end25.1:                                       ; preds = %if.end17.1
  %28 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_crtcs, align 8
  %inc27.1 = add i32 %29, 1
  store i32 %inc27.1, ptr %num_crtcs, align 8
  %arrayidx28.1 = getelementptr %struct.msm_drm_private, ptr %3, i32 0, i32 26, i32 %29
  %30 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call19.1, ptr %arrayidx28.1, align 4
  br label %for.body34

for.body34:                                       ; preds = %for.inc40.for.body34_crit_edge, %if.end25.1
  %i.2119 = phi i32 [ %inc41, %for.inc40.for.body34_crit_edge ], [ 0, %if.end25.1 ]
  %arrayidx35 = getelementptr [3 x i32], ptr @modeset_init.mdp4_intfs, i32 0, i32 %i.2119
  %31 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx35, align 4
  %33 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_private.i, align 4
  %37 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %32, label %sw.default.i [
    i32 3, label %sw.bb.i
    i32 2, label %sw.bb17.i
    i32 6, label %sw.bb38.i
  ]

sw.bb.i:                                          ; preds = %for.body34
  %dev2.i = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 2
  %38 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev2.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 27
  %40 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_graph_get_remote_node(ptr noundef %41, i32 noundef 0, i32 noundef 0) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb.i.for.inc40_crit_edge, label %if.end.i

sw.bb.i.for.inc40_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc40

if.end.i:                                         ; preds = %sw.bb.i
  %call3.i = tail call ptr @mdp4_lcdc_encoder_init(ptr noundef %34, ptr noundef nonnull %call.i) #6
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev2.i.le167 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 2
  %42 = ptrtoint ptr %dev2.i.le167 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev2.i.le167, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %43, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.31) #6
  %44 = ptrtoint ptr %call3.i to i32
  br label %if.then37

if.end8.i:                                        ; preds = %if.end.i
  %possible_crtcs.i = getelementptr inbounds %struct.drm_encoder, ptr %call3.i, i32 0, i32 6
  %45 = ptrtoint ptr %possible_crtcs.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %possible_crtcs.i, align 4
  %call9.i = tail call ptr @mdp4_lvds_connector_init(ptr noundef %34, ptr noundef nonnull %call.i, ptr noundef %call3.i) #6
  %cmp.i119.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119.i, label %if.then11.i, label %if.end14.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev2.i.le = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 2
  %46 = ptrtoint ptr %dev2.i.le to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev2.i.le, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %47, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32) #6
  %48 = ptrtoint ptr %call9.i to i32
  br label %if.then37

if.end14.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %num_encoders.i = getelementptr inbounds %struct.msm_drm_private, ptr %36, i32 0, i32 28
  %49 = ptrtoint ptr %num_encoders.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_encoders.i, align 4
  %inc.i = add i32 %50, 1
  store i32 %inc.i, ptr %num_encoders.i, align 4
  %arrayidx.i = getelementptr %struct.msm_drm_private, ptr %36, i32 0, i32 29, i32 %50
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call3.i, ptr %arrayidx.i, align 4
  %num_connectors.i = getelementptr inbounds %struct.msm_drm_private, ptr %36, i32 0, i32 32
  %52 = ptrtoint ptr %num_connectors.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_connectors.i, align 4
  %inc15.i = add i32 %53, 1
  store i32 %inc15.i, ptr %num_connectors.i, align 4
  %arrayidx16.i = getelementptr %struct.msm_drm_private, ptr %36, i32 0, i32 33, i32 %53
  %54 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call9.i, ptr %arrayidx16.i, align 4
  br label %for.inc40

sw.bb17.i:                                        ; preds = %for.body34
  %call18.i = tail call ptr @mdp4_dtv_encoder_init(ptr noundef %34) #6
  %cmp.i120.i = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120.i, label %if.then20.i, label %if.end23.i

if.then20.i:                                      ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev21.i = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 2
  %55 = ptrtoint ptr %dev21.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev21.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %56, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.33) #6
  %57 = ptrtoint ptr %call18.i to i32
  br label %if.then37

if.end23.i:                                       ; preds = %sw.bb17.i
  %possible_crtcs24.i = getelementptr inbounds %struct.drm_encoder, ptr %call18.i, i32 0, i32 6
  %58 = ptrtoint ptr %possible_crtcs24.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %possible_crtcs24.i, align 4
  %hdmi.i = getelementptr inbounds %struct.msm_drm_private, ptr %36, i32 0, i32 4
  %59 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hdmi.i, align 8
  %tobool25.not.i = icmp eq ptr %60, null
  br i1 %tobool25.not.i, label %if.end23.i.if.end33.i_crit_edge, label %if.then26.i

if.end23.i.if.end33.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then26.i:                                      ; preds = %if.end23.i
  %call28.i = tail call i32 @msm_hdmi_modeset_init(ptr noundef nonnull %60, ptr noundef %34, ptr noundef %call18.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.then26.i.if.end33.i_crit_edge, label %if.then30.i

if.then26.i.if.end33.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then30.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev31.i = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 2
  %61 = ptrtoint ptr %dev31.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev31.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %62, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.34, i32 noundef %call28.i) #6
  br label %if.then37

if.end33.i:                                       ; preds = %if.then26.i.if.end33.i_crit_edge, %if.end23.i.if.end33.i_crit_edge
  %num_encoders35.i = getelementptr inbounds %struct.msm_drm_private, ptr %36, i32 0, i32 28
  %63 = ptrtoint ptr %num_encoders35.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_encoders35.i, align 4
  %inc36.i = add i32 %64, 1
  store i32 %inc36.i, ptr %num_encoders35.i, align 4
  %arrayidx37.i = getelementptr %struct.msm_drm_private, ptr %36, i32 0, i32 29, i32 %64
  %65 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call18.i, ptr %arrayidx37.i, align 4
  br label %for.inc40

sw.bb38.i:                                        ; preds = %for.body34
  %dsi.i = getelementptr inbounds %struct.msm_drm_private, ptr %36, i32 0, i32 5
  %66 = ptrtoint ptr %dsi.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dsi.i, align 4
  %tobool40.not.i = icmp eq ptr %67, null
  br i1 %tobool40.not.i, label %sw.bb38.i.for.inc40_crit_edge, label %if.end42.i

sw.bb38.i.for.inc40_crit_edge:                    ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc40

if.end42.i:                                       ; preds = %sw.bb38.i
  %call43.i = tail call ptr @mdp4_dsi_encoder_init(ptr noundef %34) #6
  %cmp.i121.i = icmp ugt ptr %call43.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121.i, label %if.then45.i, label %if.end48.i

if.then45.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %call43.i to i32
  %dev47.i = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 2
  %69 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev47.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %70, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.35, i32 noundef %68) #6
  br label %if.then37

if.end48.i:                                       ; preds = %if.end42.i
  %possible_crtcs49.i = getelementptr inbounds %struct.drm_encoder, ptr %call43.i, i32 0, i32 6
  %71 = ptrtoint ptr %possible_crtcs49.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %possible_crtcs49.i, align 4
  %num_encoders51.i = getelementptr inbounds %struct.msm_drm_private, ptr %36, i32 0, i32 28
  %72 = ptrtoint ptr %num_encoders51.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_encoders51.i, align 4
  %inc52.i = add i32 %73, 1
  store i32 %inc52.i, ptr %num_encoders51.i, align 4
  %arrayidx53.i = getelementptr %struct.msm_drm_private, ptr %36, i32 0, i32 29, i32 %73
  %74 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call43.i, ptr %arrayidx53.i, align 4
  %75 = ptrtoint ptr %dsi.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dsi.i, align 4
  %call56.i = tail call i32 @msm_dsi_modeset_init(ptr noundef %76, ptr noundef %34, ptr noundef %call43.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %if.end48.i.for.inc40_crit_edge, label %if.then58.i

if.end48.i.for.inc40_crit_edge:                   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc40

if.then58.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev59.i = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 2
  %77 = ptrtoint ptr %dev59.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev59.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %78, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.36, i32 noundef %call56.i) #6
  br label %if.then37

sw.default.i:                                     ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #8
  %dev61.i = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 2
  %79 = ptrtoint ptr %dev61.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev61.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %80, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.37) #6
  br label %if.then37

if.then37:                                        ; preds = %sw.default.i, %if.then58.i, %if.then45.i, %if.then30.i, %if.then20.i, %if.then11.i, %if.then5.i
  %retval.0.i91 = phi i32 [ %call28.i, %if.then30.i ], [ %call56.i, %if.then58.i ], [ -22, %sw.default.i ], [ %68, %if.then45.i ], [ %57, %if.then20.i ], [ %44, %if.then5.i ], [ %48, %if.then11.i ]
  %dev38 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %81 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev38, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %82, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.30, i32 noundef %i.2119, i32 noundef %retval.0.i91) #6
  br label %cleanup

for.inc40:                                        ; preds = %if.end48.i.for.inc40_crit_edge, %sw.bb38.i.for.inc40_crit_edge, %if.end33.i, %if.end14.i, %sw.bb.i.for.inc40_crit_edge
  %inc41 = add nuw nsw i32 %i.2119, 1
  %exitcond.not = icmp eq i32 %inc41, 3
  br i1 %exitcond.not, label %for.inc40.cleanup_crit_edge, label %for.inc40.for.body34_crit_edge

for.inc40.for.body34_crit_edge:                   ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body34

for.inc40.cleanup_crit_edge:                      ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc40.cleanup_crit_edge, %if.then37, %if.then21, %if.then13, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ %15, %if.then13 ], [ %22, %if.then21 ], [ %retval.0.i91, %if.then37 ], [ 0, %for.inc40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_new(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_get_and_pin_iova(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_destroy(ptr noundef %kms) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev4 = getelementptr inbounds %struct.mdp4_kms, ptr %kms, i32 0, i32 1
  %0 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev4, align 8
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev5, align 4
  %aspace6 = getelementptr inbounds %struct.msm_kms, ptr %kms, i32 0, i32 3
  %4 = ptrtoint ptr %aspace6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aspace6, align 4
  %blank_cursor_iova = getelementptr inbounds %struct.mdp4_kms, ptr %kms, i32 0, i32 12
  %6 = ptrtoint ptr %blank_cursor_iova to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %blank_cursor_iova, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %blank_cursor_bo = getelementptr inbounds %struct.mdp4_kms, ptr %kms, i32 0, i32 11
  %8 = ptrtoint ptr %blank_cursor_bo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %blank_cursor_bo, align 8
  tail call void @msm_gem_unpin_iova(ptr noundef %9, ptr noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %blank_cursor_bo8 = getelementptr inbounds %struct.mdp4_kms, ptr %kms, i32 0, i32 11
  %10 = ptrtoint ptr %blank_cursor_bo8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %blank_cursor_bo8, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.drm_gem_object_put.exit_crit_edge, label %if.then.i

if.end.drm_gem_object_put.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %if.end
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %11, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr nonnull %11, i32 1, i32 3, i32 1) #6
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #6, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !101

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef 3) #6
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @drm_gem_object_free(ptr noundef nonnull %11) #6
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %if.end.drm_gem_object_put.exit_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %drm_gem_object_put.exit.if.end12_crit_edge, label %if.then10

drm_gem_object_put.exit.if.end12_crit_edge:       ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  %mmu = getelementptr inbounds %struct.msm_gem_address_space, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmu, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  tail call void %18(ptr noundef %14) #6
  tail call void @msm_gem_address_space_put(ptr noundef nonnull %5) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %drm_gem_object_put.exit.if.end12_crit_edge
  %rpm_enabled = getelementptr inbounds %struct.mdp4_kms, ptr %kms, i32 0, i32 10
  %19 = ptrtoint ptr %rpm_enabled to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rpm_enabled, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool13.not = icmp eq i8 %20, 0
  br i1 %tobool13.not, label %if.end12.if.end15_crit_edge, label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  %arrayidx.i.i = getelementptr %struct.msm_kms, ptr %kms, i32 0, i32 9, i32 0
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %arrayidx.i.i) #6
  %arrayidx.1.i.i = getelementptr %struct.msm_kms, ptr %kms, i32 0, i32 9, i32 1
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %arrayidx.1.i.i) #6
  %arrayidx.2.i.i = getelementptr %struct.msm_kms, ptr %kms, i32 0, i32 9, i32 2
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %arrayidx.2.i.i) #6
  %arrayidx.3.i.i = getelementptr %struct.msm_kms, ptr %kms, i32 0, i32 9, i32 3
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %arrayidx.3.i.i) #6
  %arrayidx.4.i.i = getelementptr %struct.msm_kms, ptr %kms, i32 0, i32 9, i32 4
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %arrayidx.4.i.i) #6
  %arrayidx.5.i.i = getelementptr %struct.msm_kms, ptr %kms, i32 0, i32 9, i32 5
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %arrayidx.5.i.i) #6
  %arrayidx.6.i.i = getelementptr %struct.msm_kms, ptr %kms, i32 0, i32 9, i32 6
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %arrayidx.6.i.i) #6
  %arrayidx.7.i.i = getelementptr %struct.msm_kms, ptr %kms, i32 0, i32 9, i32 7
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %arrayidx.7.i.i) #6
  tail call void @kfree(ptr noundef %kms) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_atomic_init_pending_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp4_hw_init(ptr noundef readonly %kms) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev4 = getelementptr inbounds %struct.mdp4_kms, ptr %kms, i32 0, i32 1
  %0 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev4, align 8
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev5, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #6
  %rev = getelementptr inbounds %struct.mdp4_kms, ptr %kms, i32 0, i32 2
  %4 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i = getelementptr inbounds %struct.mdp4_kms, ptr %kms, i32 0, i32 3
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 192
  tail call void @msm_writel(i32 noundef 117964799, ptr noundef %add.ptr.i) #6
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i65 = getelementptr i8, ptr %9, i32 196
  tail call void @msm_writel(i32 noundef 50806591, ptr noundef %add.ptr.i65) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mmio.i66 = getelementptr inbounds %struct.mdp4_kms, ptr %kms, i32 0, i32 3
  %10 = ptrtoint ptr %mmio.i66 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i66, align 8
  %add.ptr.i67 = getelementptr i8, ptr %11, i32 112
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i67) #6
  %12 = ptrtoint ptr %mmio.i66 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i66, align 8
  %add.ptr.i69 = getelementptr i8, ptr %13, i32 76
  tail call void @msm_writel(i32 noundef 8738, ptr noundef %add.ptr.i69) #6
  %clk6 = getelementptr inbounds %struct.mdp4_kms, ptr %kms, i32 0, i32 5
  %14 = ptrtoint ptr %clk6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk6, align 8
  %call7 = tail call i32 @clk_get_rate(ptr noundef %15) #6
  %16 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp9 = icmp sgt i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 89999999, i32 %call7)
  %cmp10 = icmp ugt i32 %call7, 89999999
  %or.cond = select i1 %cmp9, i1 true, i1 %cmp10
  %dmap_cfg.0 = select i1 %or.cond, i32 71, i32 39
  %vg_cfg.0 = select i1 %or.cond, i32 71, i32 67
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %dmap_cfg.0, i32 noundef %vg_cfg.0) #6
  %18 = ptrtoint ptr %mmio.i66 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i66, align 8
  %add.ptr.i71 = getelementptr i8, ptr %19, i32 593924
  tail call void @msm_writel(i32 noundef %dmap_cfg.0, ptr noundef %add.ptr.i71) #6
  %20 = ptrtoint ptr %mmio.i66 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i66, align 8
  %add.ptr.i73 = getelementptr i8, ptr %21, i32 724996
  tail call void @msm_writel(i32 noundef %dmap_cfg.0, ptr noundef %add.ptr.i73) #6
  %22 = ptrtoint ptr %mmio.i66 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i66, align 8
  %add.ptr.i75 = getelementptr i8, ptr %23, i32 135172
  tail call void @msm_writel(i32 noundef %vg_cfg.0, ptr noundef %add.ptr.i75) #6
  %24 = ptrtoint ptr %mmio.i66 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i66, align 8
  %add.ptr.i77 = getelementptr i8, ptr %25, i32 200708
  tail call void @msm_writel(i32 noundef %vg_cfg.0, ptr noundef %add.ptr.i77) #6
  %26 = ptrtoint ptr %mmio.i66 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i66, align 8
  %add.ptr.i79 = getelementptr i8, ptr %27, i32 266244
  tail call void @msm_writel(i32 noundef %vg_cfg.0, ptr noundef %add.ptr.i79) #6
  %28 = ptrtoint ptr %mmio.i66 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i66, align 8
  %add.ptr.i81 = getelementptr i8, ptr %29, i32 331780
  tail call void @msm_writel(i32 noundef %vg_cfg.0, ptr noundef %add.ptr.i81) #6
  %30 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp20 = icmp sgt i32 %31, 1
  br i1 %cmp20, label %if.then21, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %mmio.i66 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i66, align 8
  %add.ptr.i83 = getelementptr i8, ptr %33, i32 65788
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i83) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end.if.end22_crit_edge
  %34 = ptrtoint ptr %mmio.i66 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i66, align 8
  %add.ptr.i85 = getelementptr i8, ptr %35, i32 65792
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i85) #6
  %36 = ptrtoint ptr %mmio.i66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio.i66, align 8
  %add.ptr.i87 = getelementptr i8, ptr %37, i32 131160
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i87) #6
  %38 = ptrtoint ptr %mmio.i66 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i66, align 8
  %add.ptr.i89 = getelementptr i8, ptr %39, i32 196696
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i89) #6
  %40 = ptrtoint ptr %mmio.i66 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i66, align 8
  %add.ptr.i91 = getelementptr i8, ptr %41, i32 589936
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i91) #6
  %42 = ptrtoint ptr %mmio.i66 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i66, align 8
  %add.ptr.i93 = getelementptr i8, ptr %43, i32 655400
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i93) #6
  %44 = ptrtoint ptr %mmio.i66 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio.i66, align 8
  %add.ptr.i95 = getelementptr i8, ptr %45, i32 98816
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i95) #6
  %46 = ptrtoint ptr %mmio.i66 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio.i66, align 8
  %add.ptr.i97 = getelementptr i8, ptr %47, i32 557568
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i97) #6
  %48 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp28 = icmp sgt i32 %49, 1
  br i1 %cmp28, label %if.then29, label %if.end22.if.end30_crit_edge

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %mmio.i66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio.i66, align 8
  %add.ptr.i99 = getelementptr i8, ptr %51, i32 60
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i99) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end22.if.end30_crit_edge
  %52 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev5, align 4
  %call.i100 = tail call i32 @__pm_runtime_idle(ptr noundef %53, i32 noundef 4) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp4_irq_preinstall(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp4_irq_postinstall(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp4_irq_uninstall(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp4_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp4_enable_vblank(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp4_disable_vblank(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_enable_commit(ptr nocapture noundef readonly %kms) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mdp4_enable(ptr noundef %kms)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_disable_commit(ptr nocapture noundef readonly %kms) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  %clk.i = getelementptr inbounds %struct.mdp4_kms, ptr %kms, i32 0, i32 5
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 8
  tail call void @clk_disable(ptr noundef %1) #6
  tail call void @clk_unprepare(ptr noundef %1) #6
  %pclk.i = getelementptr inbounds %struct.mdp4_kms, ptr %kms, i32 0, i32 6
  %2 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk.i, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %lut_clk.i = getelementptr inbounds %struct.mdp4_kms, ptr %kms, i32 0, i32 7
  %4 = ptrtoint ptr %lut_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lut_clk.i, align 8
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %axi_clk.i = getelementptr inbounds %struct.mdp4_kms, ptr %kms, i32 0, i32 8
  %6 = ptrtoint ptr %axi_clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %axi_clk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mdp4_prepare_commit(ptr nocapture noundef %kms, ptr nocapture noundef %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mdp4_flush_commit(ptr nocapture noundef %kms, i32 noundef %crtc_mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_wait_flush(ptr nocapture noundef readonly %kms, i32 noundef %crtc_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mdp4_kms, ptr %kms, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 20
  %2 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn19 = load ptr, ptr %crtc_list, align 4
  %cmp.not22 = icmp eq ptr %.pn19, %crtc_list
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn23 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn19, %entry.for.body_crit_edge ]
  %index.i.i = getelementptr i8, ptr %.pn23, i32 148
  %3 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %4
  %and = and i32 %shl.i, %crtc_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %crtc.024 = getelementptr i8, ptr %.pn23, i32 -8
  tail call void @mdp4_crtc_wait_for_commit_done(ptr noundef %crtc.024) #6
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %.pn23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn23, align 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %crtc_list9 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 20
  %cmp.not = icmp eq ptr %.pn, %crtc_list9
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mdp4_complete_commit(ptr nocapture noundef %kms, i32 noundef %crtc_mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp_get_format(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp4_round_pixclk(ptr nocapture noundef readnone %kms, i32 noundef %rate, ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder_type = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 4
  %0 = ptrtoint ptr %encoder_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %encoder_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cond = icmp eq i32 %1, 2
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @mdp4_dtv_round_pixclk(ptr noundef %encoder, i32 noundef %rate) #6
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ %rate, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp4_set_irqmask(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp4_crtc_wait_for_commit_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp4_dtv_round_pixclk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp4_plane_init(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp4_crtc_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp4_lcdc_encoder_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp4_lvds_connector_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp4_dtv_encoder_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_hdmi_modeset_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp4_dsi_encoder_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_modeset_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_unpin_iova(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_address_space_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_atomic_destroy_pending_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !38, !40, !42, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 173, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 405, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 412, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 421, i32 43}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 430, i32 3}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 440, i32 59}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 447, i32 4}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 452, i32 43}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 454, i32 3}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 459, i32 44}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 463, i32 47}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 465, i32 3}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 475, i32 3}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 484, i32 48}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 486, i32 4}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 512, i32 4}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 523, i32 3}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 530, i32 3}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 537, i32 3}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 545, i32 3}
!42 = !{ptr @msm_kms_init.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/msm_kms.h", i32 175, i32 3}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @kms_funcs, !46, !"kms_funcs", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 149, i32 35}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 48, i32 2}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 389, i32 2}
!51 = distinct !{null, !52, !"rgb_planes", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 300, i32 30}
!53 = distinct !{null, !54, !"vg_planes", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 303, i32 30}
!55 = distinct !{null, !56, !"mdp4_crtcs", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 306, i32 29}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 310, i32 3}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 310, i32 12}
!61 = !{ptr @modeset_init.mdp4_crtc_names, !62, !"mdp4_crtc_names", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 309, i32 28}
!63 = !{ptr @modeset_init.mdp4_intfs, !64, !"mdp4_intfs", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 312, i32 19}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 322, i32 4}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 333, i32 4}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 342, i32 4}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 364, i32 4}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 219, i32 4}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 228, i32 4}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 239, i32 4}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 250, i32 5}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 268, i32 4}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 279, i32 4}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 286, i32 3}
!87 = distinct !{null, !88, !"config", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c", i32 564, i32 37}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"auto-init"}
!99 = !{i64 2148291109}
!100 = !{i64 2148205573, i64 2148205605, i64 2148205634, i64 2148205668, i64 2148205699, i64 2148205722}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{i64 2149569827}
!103 = !{i8 0, i8 2}
