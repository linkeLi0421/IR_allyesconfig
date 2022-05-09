; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/mdp5/mdp5_smp.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp5/mdp5_smp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
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
%struct.list_head = type { ptr, ptr }
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
%struct.mdp5_kms = type { %struct.mdp_kms, ptr, ptr, i32, [13 x ptr], i32, [8 x ptr], i32, [5 x ptr], ptr, i32, %struct.drm_modeset_lock, %struct.drm_private_obj, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i8, %struct.mdp_irq, i32 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.87, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.87 = type { [4 x i8] }
%struct.mdp_format = type { %struct.msm_format, i32, i32, i32, i32, [4 x i8], i8, i8, i8, i8, i32, i32, i8 }
%struct.msm_format = type { i32 }
%struct.mdp5_smp = type { ptr, [32 x i8], i32, i32, [22 x i32], [22 x i32], [13 x i32], [13 x i32], [13 x i32] }
%struct.mdp5_cfg_hw = type { ptr, %struct.mdp5_mdp_block, %struct.mdp5_smp_block, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 }
%struct.mdp5_mdp_block = type { i32, [8 x i32], i32 }
%struct.mdp5_smp_block = type { i32, i32, [32 x i32], [2 x i32], [32 x i8] }
%struct.mdp5_ctl_block = type { i32, [8 x i32], i32 }
%struct.mdp5_pipe_block = type { i32, [8 x i32], i32 }
%struct.mdp5_lm_block = type { i32, [8 x i32], [8 x %struct.mdp5_lm_instance], i32, i32, i32 }
%struct.mdp5_lm_instance = type { i32, i32, i32, i32 }
%struct.mdp5_sub_block = type { i32, [8 x i32] }
%struct.mdp5_intf_block = type { [8 x i32], [5 x i32] }
%struct.mdp5_perf_block = type { i32, i32, i32 }
%struct.mdp5_smp_state = type { [2 x i32], [32 x [2 x i32]], i32, i32 }
%struct.mdp5_hw_pipe = type { i32, ptr, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mdp5_global_state = type { %struct.drm_private_state, ptr, ptr, %struct.mdp5_hw_pipe_state, %struct.mdp5_hw_mixer_state, %struct.mdp5_smp_state }
%struct.drm_private_state = type { ptr }
%struct.mdp5_hw_pipe_state = type { [13 x ptr] }
%struct.mdp5_hw_mixer_state = type { [8 x ptr] }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s[%d]: request %d SMP blocks\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* Cannot allocate %d SMP blocks: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"assign %s:%u, %u blks\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"release %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"name\09inuse\09plane\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"----\09-----\09-----\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s:%d\09%d\09%s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TOTAL:\09%d\09(of %d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AVAIL:\09%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_smp.c\00", [55 x i8] zeroinitializer }, align 32
@mdp5_cfg = external dso_local local_unnamed_addr global ptr, align 4
@pipe2name.names = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr null, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIG0\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIG1\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIG2\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RGB0\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RGB1\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RGB2\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMA0\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMA1\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIG3\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RGB3\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CURSOR0\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CURSOR1\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%d MMBs allocated (%d reserved)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* out of blks (req=%d > avail=%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h\00", [55 x i8] zeroinitializer }, align 32
@kgdb_active = external dso_local global %struct.atomic_t, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.mdp5_smp_assign = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 1], [36 x i8] zeroinitializer }, align 32
@switch.table.mdp5_smp_assign.26 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 1], [36 x i8] zeroinitializer }, align 32
@switch.table.mdp5_smp_release = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 1], [36 x i8] zeroinitializer }, align 32
@switch.table.mdp5_smp_release.27 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 1], [36 x i8] zeroinitializer }, align 32
@switch.table.mdp5_smp_prepare_commit = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 1], [36 x i8] zeroinitializer }, align 32
@switch.table.mdp5_smp_prepare_commit.28 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 1], [36 x i8] zeroinitializer }, align 32
@switch.table.mdp5_smp_dump = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 1], [36 x i8] zeroinitializer }, align 32
@switch.table.mdp5_smp_dump.29 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 1], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.31 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.32 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 178, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 181, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 301, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 319, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 336, i32 16 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 337, i32 16 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 357, i32 18 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 365, i32 16 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 366, i32 16 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 43, i32 6 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 193, i32 21 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 195, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 195, i32 15 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 195, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 196, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 196, i32 15 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 196, i32 27 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 197, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 197, i32 15 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 198, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 198, i32 15 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 199, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 199, i32 18 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 77, i32 3 }
@___asan_gen_.109 = private constant [44 x i8] c"../drivers/gpu/drm/msm/disp/mdp5/mdp5_smp.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 82, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [44 x i8] c"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 169, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [29 x i8] c"switch.table.mdp5_smp_assign\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [32 x i8] c"switch.table.mdp5_smp_assign.26\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [30 x i8] c"switch.table.mdp5_smp_release\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [33 x i8] c"switch.table.mdp5_smp_release.27\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [37 x i8] c"switch.table.mdp5_smp_prepare_commit\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [40 x i8] c"switch.table.mdp5_smp_prepare_commit.28\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [27 x i8] c"switch.table.mdp5_smp_dump\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [30 x i8] c"switch.table.mdp5_smp_dump.29\00", align 1
@llvm.compiler.used = appending global [35 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @pipe2name.names, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @switch.table.mdp5_smp_assign, ptr @switch.table.mdp5_smp_assign.26, ptr @switch.table.mdp5_smp_release, ptr @switch.table.mdp5_smp_release.27, ptr @switch.table.mdp5_smp_prepare_commit, ptr @switch.table.mdp5_smp_prepare_commit.28, ptr @switch.table.mdp5_smp_dump, ptr @switch.table.mdp5_smp_dump.29], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipe2name.names to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_smp_assign to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_smp_assign.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_smp_release to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_smp_release.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_smp_prepare_commit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_smp_prepare_commit.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_smp_dump to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_smp_dump.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp5_smp_calculate(ptr nocapture noundef readonly %smp, ptr nocapture noundef readonly %format, i32 noundef %width, i1 noundef zeroext %hdecim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %call = tail call ptr @drm_format_info(i32 noundef %1) #5
  %2 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smp, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kms.i, align 4
  %cfg = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg, align 4
  %call2 = tail call i32 @mdp5_cfg_get_hw_rev(ptr noundef %9) #5
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_planes, align 1
  %hsub3 = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 6
  %12 = ptrtoint ptr %hsub3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hsub3, align 2
  %conv4 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp sgt i32 %call2, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %chroma_sample = getelementptr inbounds %struct.mdp_format, ptr %format, i32 0, i32 11
  %14 = ptrtoint ptr %chroma_sample to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chroma_sample, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp6.not = icmp eq i32 %15, 0
  %hdecim.not = xor i1 %hdecim, true
  %brmerge = or i1 %cmp6.not, %hdecim.not
  %.mux = select i1 %cmp6.not, i8 %11, i8 2
  br i1 %brmerge, label %land.lhs.true.if.end13_crit_edge, label %if.end13.thread

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.end13.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %16 = icmp ne i8 %13, 0
  %17 = zext i1 %16 to i32
  br label %for.body.lr.ph

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  %nplanes.0.shrunk = phi i8 [ %.mux, %land.lhs.true.if.end13_crit_edge ], [ %11, %entry.if.end13_crit_edge ]
  %nplanes.0 = zext i8 %nplanes.0.shrunk to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %nplanes.0.shrunk)
  %cmp1477.not = icmp eq i8 %nplanes.0.shrunk, 0
  br i1 %cmp1477.not, label %if.end13.for.end_crit_edge, label %if.end13.for.body.lr.ph_crit_edge

if.end13.for.body.lr.ph_crit_edge:                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.lr.ph

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end13.for.body.lr.ph_crit_edge, %if.end13.thread
  %nplanes.085 = phi i32 [ 2, %if.end13.thread ], [ %nplanes.0, %if.end13.for.body.lr.ph_crit_edge ]
  %hsub.084 = phi i32 [ %17, %if.end13.thread ], [ %conv4, %if.end13.for.body.lr.ph_crit_edge ]
  %18 = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 3
  %blk_size = getelementptr inbounds %struct.mdp5_smp, ptr %smp, i32 0, i32 3
  %19 = ptrtoint ptr %blk_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %blk_size, align 4
  %add = add i32 %20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp21 = icmp eq i32 %call2, 0
  br label %for.body

for.body:                                         ; preds = %if.end53.for.body_crit_edge, %for.body.lr.ph
  %blkcfg.079 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %if.end53.for.body_crit_edge ]
  %i.078 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end53.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i8], ptr %18, i32 0, i32 %i.078
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %conv16 = zext i8 %22 to i32
  %mul = mul i32 %conv16, %width
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.078)
  %tobool17.not = icmp eq i32 %i.078, 0
  %spec.select = select i1 %tobool17.not, i32 1, i32 %hsub.084
  %div = udiv i32 %mul, %spec.select
  %mul18 = shl i32 %div, 1
  %sub = add i32 %add, %mul18
  %div20 = sdiv i32 %sub, %20
  br i1 %cmp21, label %cond.false49, label %for.body.if.end53_crit_edge

for.body.if.end53_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

cond.false49:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i75 = add i32 %div20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i75)
  %tobool.not.i.i.i = icmp eq i32 %sub.i75, 0
  %23 = tail call i32 @llvm.ctlz.i32(i32 %sub.i75, i1 true) #5, !range !63
  %sub.i.i.i = sub nuw nsw i32 32, %23
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  br label %if.end53

if.end53:                                         ; preds = %cond.false49, %for.body.if.end53_crit_edge
  %n.0 = phi i32 [ %div20, %for.body.if.end53_crit_edge ], [ %shl.i, %cond.false49 ]
  %mul54 = shl i32 %i.078, 3
  %shl55 = shl i32 %n.0, %mul54
  %or = or i32 %shl55, %blkcfg.079
  %inc = add nuw nsw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, %nplanes.085
  br i1 %exitcond.not, label %if.end53.for.end_crit_edge, label %if.end53.for.body_crit_edge

if.end53.for.body_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end53.for.end_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end53.for.end_crit_edge, %if.end13.for.end_crit_edge
  %blkcfg.0.lcssa = phi i32 [ 0, %if.end13.for.end_crit_edge ], [ %or, %if.end53.for.end_crit_edge ]
  ret i32 %blkcfg.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_cfg_get_hw_rev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp5_smp_assign(ptr nocapture noundef readonly %smp, ptr noundef %state, i32 noundef %pipe, i32 noundef %blkcfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kms.i, align 4
  %dev1 = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 8
  %arrayidx.i30 = getelementptr [13 x ptr], ptr @pipe2name.names, i32 0, i32 %pipe
  %blk_cnt.i = getelementptr inbounds %struct.mdp5_smp, ptr %smp, i32 0, i32 2
  %switch.tableidx = add i32 %pipe, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 7
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_smp_assign, i32 0, i32 %switch.tableidx
  %switch.tableidx43 = add i32 %pipe, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx43)
  %9 = icmp ult i32 %switch.tableidx43, 7
  %switch.gep44 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_smp_assign.26, i32 0, i32 %switch.tableidx43
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %blkcfg.addr.0 = phi i32 [ %blkcfg, %entry ], [ %blkcfg.addr.1.ph, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  br i1 %8, label %switch.lookup, label %for.cond.pipe2nclients.exit_crit_edge

for.cond.pipe2nclients.exit_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %pipe2nclients.exit

switch.lookup:                                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %pipe2nclients.exit

pipe2nclients.exit:                               ; preds = %switch.lookup, %for.cond.pipe2nclients.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 3, %for.cond.pipe2nclients.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %retval.0.i)
  %cmp = icmp ult i32 %i.0, %retval.0.i
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %pipe2nclients.exit
  br i1 %9, label %switch.lookup42, label %for.body.pipe2nclients.exit.i_crit_edge

for.body.pipe2nclients.exit.i_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %pipe2nclients.exit.i

switch.lookup42:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %switch.gep44 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load45 = load i32, ptr %switch.gep44, align 4
  br label %pipe2nclients.exit.i

pipe2nclients.exit.i:                             ; preds = %switch.lookup42, %for.body.pipe2nclients.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load45, %switch.lookup42 ], [ 3, %for.body.pipe2nclients.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %i.0)
  %cmp.not.i = icmp ugt i32 %retval.0.i.i, %i.0
  br i1 %cmp.not.i, label %if.end21.i, label %do.end.i, !prof !64

do.end.i:                                         ; preds = %pipe2nclients.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 43, i32 noundef 9, ptr noundef null) #5
  br label %pipe2client.exit

if.end21.i:                                       ; preds = %pipe2nclients.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %12 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx.i = getelementptr %struct.mdp5_cfg_hw, ptr %12, i32 0, i32 2, i32 2, i32 %pipe
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %14, %i.0
  br label %pipe2client.exit

pipe2client.exit:                                 ; preds = %if.end21.i, %do.end.i
  %retval.0.i29 = phi i32 [ 0, %do.end.i ], [ %add.i, %if.end21.i ]
  %and = and i32 %blkcfg.addr.0, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %pipe2client.exit.for.inc_crit_edge, label %if.end

pipe2client.exit.for.inc_crit_edge:               ; preds = %pipe2client.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %pipe2client.exit
  %15 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i30, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef %16, i32 noundef %i.0, i32 noundef %and) #5
  %arrayidx.i31 = getelementptr %struct.mdp5_smp_state, ptr %state, i32 0, i32 1, i32 %retval.0.i29
  %17 = ptrtoint ptr %blk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blk_cnt.i, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %arrayidx.i31, i32 noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i = icmp sgt i32 %call4.i.i, 0
  br i1 %cmp.i, label %do.end.i33, label %if.end.if.end.i_crit_edge, !prof !65

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i33:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 71, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i33, %if.end.if.end.i_crit_edge
  %arrayidx20.i = getelementptr %struct.mdp5_smp, ptr %smp, i32 0, i32 1, i32 %retval.0.i29
  %19 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool21.not.i = icmp eq i8 %20, 0
  br i1 %tobool21.not.i, label %if.end.i.if.end.i169.i_crit_edge, label %if.then22.i

if.end.i.if.end.i169.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i169.i

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i8 %20 to i32
  %sub.i = sub nsw i32 %and, %conv.i
  %21 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %21, i32 noundef %conv.i) #5
  br label %if.end.i169.i

if.end.i169.i:                                    ; preds = %if.then22.i, %if.end.i.if.end.i169.i_crit_edge
  %nblks.addr.0.i = phi i32 [ %21, %if.then22.i ], [ %and, %if.end.i.if.end.i169.i_crit_edge ]
  %call4.i168.i = tail call i32 @__bitmap_weight(ptr noundef %state, i32 noundef %18) #5
  %sub31.i = sub i32 %18, %call4.i168.i
  call void @__sanitizer_cov_trace_cmp4(i32 %nblks.addr.0.i, i32 %sub31.i)
  %cmp32.i = icmp sgt i32 %nblks.addr.0.i, %sub31.i
  br i1 %cmp32.i, label %cleanup, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i169.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nblks.addr.0.i)
  %cmp37172.i.not = icmp eq i32 %nblks.addr.0.i, 0
  br i1 %cmp37172.i.not, label %for.cond.preheader.i.if.end9_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end9_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0173.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call41.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %state, i32 noundef %18) #5
  tail call void @_set_bit(i32 noundef %call41.i, ptr noundef %arrayidx.i31) #5
  tail call void @_set_bit(i32 noundef %call41.i, ptr noundef %state) #5
  %inc.i = add nuw nsw i32 %i.0173.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %nblks.addr.0.i
  br i1 %exitcond.not.i, label %for.body.i.if.end9_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.if.end9_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end9:                                          ; preds = %for.body.i.if.end9_crit_edge, %for.cond.preheader.i.if.end9_crit_edge
  %shr = lshr i32 %blkcfg.addr.0, 8
  br label %for.inc

cleanup:                                          ; preds = %if.end.i169.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %smp, align 4
  %dev35.i = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev35.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev35.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %25, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24, i32 noundef %nblks.addr.0.i, i32 noundef %sub31.i) #5
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %26 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %27, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %and, i32 noundef -28) #5
  br label %cleanup11

for.inc:                                          ; preds = %if.end9, %pipe2client.exit.for.inc_crit_edge
  %blkcfg.addr.1.ph = phi i32 [ %blkcfg.addr.0, %pipe2client.exit.for.inc_crit_edge ], [ %shr, %if.end9 ]
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %pipe2nclients.exit
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl nuw i32 1, %pipe
  %assigned = getelementptr inbounds %struct.mdp5_smp_state, ptr %state, i32 0, i32 2
  %28 = ptrtoint ptr %assigned to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %assigned, align 4
  %or = or i32 %29, %shl
  store i32 %or, ptr %assigned, align 4
  br label %cleanup11

cleanup11:                                        ; preds = %for.end, %cleanup
  %retval.2 = phi i32 [ -28, %cleanup ], [ 0, %for.end ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp5_smp_release(ptr nocapture noundef readonly %smp, ptr noundef %state, i32 noundef %pipe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %blk_cnt = getelementptr inbounds %struct.mdp5_smp, ptr %smp, i32 0, i32 2
  %0 = ptrtoint ptr %blk_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %blk_cnt, align 4
  %sub.i17 = add i32 %1, 31
  %2 = lshr i32 %sub.i17, 3
  %mul.i = and i32 %2, 536870908
  %switch.tableidx = add i32 %pipe, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %3 = icmp ult i32 %switch.tableidx, 7
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_smp_release, i32 0, i32 %switch.tableidx
  %switch.tableidx19 = add i32 %pipe, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx19)
  %4 = icmp ult i32 %switch.tableidx19, 7
  %switch.gep20 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_smp_release.27, i32 0, i32 %switch.tableidx19
  br label %for.cond

for.cond:                                         ; preds = %pipe2client.exit, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %pipe2client.exit ]
  br i1 %3, label %switch.lookup, label %for.cond.pipe2nclients.exit_crit_edge

for.cond.pipe2nclients.exit_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %pipe2nclients.exit

switch.lookup:                                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %pipe2nclients.exit

pipe2nclients.exit:                               ; preds = %switch.lookup, %for.cond.pipe2nclients.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 3, %for.cond.pipe2nclients.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %retval.0.i)
  %cmp = icmp ult i32 %i.0, %retval.0.i
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %pipe2nclients.exit
  br i1 %4, label %switch.lookup18, label %for.body.pipe2nclients.exit.i_crit_edge

for.body.pipe2nclients.exit.i_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %pipe2nclients.exit.i

switch.lookup18:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %switch.gep20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load21 = load i32, ptr %switch.gep20, align 4
  br label %pipe2nclients.exit.i

pipe2nclients.exit.i:                             ; preds = %switch.lookup18, %for.body.pipe2nclients.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load21, %switch.lookup18 ], [ 3, %for.body.pipe2nclients.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %i.0)
  %cmp.not.i = icmp ugt i32 %retval.0.i.i, %i.0
  br i1 %cmp.not.i, label %if.end21.i, label %do.end.i, !prof !64

do.end.i:                                         ; preds = %pipe2nclients.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 43, i32 noundef 9, ptr noundef null) #5
  br label %pipe2client.exit

if.end21.i:                                       ; preds = %pipe2nclients.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %7 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx.i = getelementptr %struct.mdp5_cfg_hw, ptr %7, i32 0, i32 2, i32 2, i32 %pipe
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, %i.0
  br label %pipe2client.exit

pipe2client.exit:                                 ; preds = %if.end21.i, %do.end.i
  %retval.0.i16 = phi i32 [ 0, %do.end.i ], [ %add.i, %if.end21.i ]
  %arrayidx = getelementptr %struct.mdp5_smp_state, ptr %state, i32 0, i32 1, i32 %retval.0.i16
  %call.i = tail call i32 @__bitmap_andnot(ptr noundef %state, ptr noundef %state, ptr noundef %arrayidx, i32 noundef %1) #5
  %10 = call ptr @memset(ptr %arrayidx, i32 0, i32 %mul.i)
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %pipe2nclients.exit
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl nuw i32 1, %pipe
  %released = getelementptr inbounds %struct.mdp5_smp_state, ptr %state, i32 0, i32 3
  %11 = ptrtoint ptr %released to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %released, align 4
  %or = or i32 %12, %shl
  store i32 %or, ptr %released, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp5_smp_prepare_commit(ptr nocapture noundef %smp, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %assigned = getelementptr inbounds %struct.mdp5_smp_state, ptr %state, i32 0, i32 2
  %call = tail call i32 @_find_next_bit_be(ptr noundef %assigned, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call)
  %cmp43 = icmp ult i32 %call, 32
  br i1 %cmp43, label %for.cond1.preheader.lr.ph, label %entry.for.end12_crit_edge

entry.for.end12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end12

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %blk_cnt.i = getelementptr inbounds %struct.mdp5_smp, ptr %smp, i32 0, i32 2
  %blk_size.i = getelementptr inbounds %struct.mdp5_smp, ptr %smp, i32 0, i32 3
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %pipe.044 = phi i32 [ %call, %for.cond1.preheader.lr.ph ], [ %call11, %for.end.for.cond1.preheader_crit_edge ]
  %arrayidx.i34 = getelementptr [13 x ptr], ptr @pipe2name.names, i32 0, i32 %pipe.044
  %switch.tableidx = add i32 %pipe.044, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 7
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_smp_prepare_commit, i32 0, i32 %switch.tableidx
  %switch.tableidx46 = add i32 %pipe.044, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx46)
  %1 = icmp ult i32 %switch.tableidx46, 7
  %switch.gep47 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_smp_prepare_commit.28, i32 0, i32 %switch.tableidx46
  br label %for.cond1

for.cond1:                                        ; preds = %update_smp_state.exit, %for.cond1.preheader
  %nblks.0 = phi i32 [ %add, %update_smp_state.exit ], [ 0, %for.cond1.preheader ]
  %i.0 = phi i32 [ %inc, %update_smp_state.exit ], [ 0, %for.cond1.preheader ]
  br i1 %0, label %switch.lookup, label %for.cond1.pipe2nclients.exit_crit_edge

for.cond1.pipe2nclients.exit_crit_edge:           ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #7
  br label %pipe2nclients.exit

switch.lookup:                                    ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %pipe2nclients.exit

pipe2nclients.exit:                               ; preds = %switch.lookup, %for.cond1.pipe2nclients.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 3, %for.cond1.pipe2nclients.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %retval.0.i)
  %cmp3 = icmp ult i32 %i.0, %retval.0.i
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %pipe2nclients.exit
  br i1 %1, label %switch.lookup45, label %for.body4.pipe2nclients.exit.i_crit_edge

for.body4.pipe2nclients.exit.i_crit_edge:         ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #7
  br label %pipe2nclients.exit.i

switch.lookup45:                                  ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %switch.gep47 to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load48 = load i32, ptr %switch.gep47, align 4
  br label %pipe2nclients.exit.i

pipe2nclients.exit.i:                             ; preds = %switch.lookup45, %for.body4.pipe2nclients.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load48, %switch.lookup45 ], [ 3, %for.body4.pipe2nclients.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %i.0)
  %cmp.not.i = icmp ugt i32 %retval.0.i.i, %i.0
  br i1 %cmp.not.i, label %if.end21.i, label %do.end.i, !prof !64

do.end.i:                                         ; preds = %pipe2nclients.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 43, i32 noundef 9, ptr noundef null) #5
  br label %pipe2client.exit

if.end21.i:                                       ; preds = %pipe2nclients.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %4 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx.i = getelementptr %struct.mdp5_cfg_hw, ptr %4, i32 0, i32 2, i32 2, i32 %pipe.044
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %6, %i.0
  br label %pipe2client.exit

pipe2client.exit:                                 ; preds = %if.end21.i, %do.end.i
  %retval.0.i31 = phi i32 [ 0, %do.end.i ], [ %add.i, %if.end21.i ]
  %arrayidx = getelementptr %struct.mdp5_smp_state, ptr %state, i32 0, i32 1, i32 %retval.0.i31
  %7 = ptrtoint ptr %blk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %blk_cnt.i, align 4
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %arrayidx, i32 noundef %8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %8)
  %cmp39.i = icmp ult i32 %call.i, %8
  br i1 %cmp39.i, label %for.body.lr.ph.i, label %pipe2client.exit.update_smp_state.exit_crit_edge

pipe2client.exit.update_smp_state.exit_crit_edge: ; preds = %pipe2client.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %update_smp_state.exit

for.body.lr.ph.i:                                 ; preds = %pipe2client.exit
  %shl.i37.i = shl i32 %retval.0.i31, 16
  %and.i38.i = and i32 %shl.i37.i, 16711680
  %shl.i.i = shl i32 %retval.0.i31, 8
  %and.i36.i = and i32 %shl.i.i, 65280
  %and.i.i = and i32 %retval.0.i31, 255
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %blk.041.i = phi i32 [ %call.i, %for.body.lr.ph.i ], [ %call14.i, %sw.epilog.i.for.body.i_crit_edge ]
  %nblks.040.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %sw.epilog.i.for.body.i_crit_edge ]
  %blk.041.i.frozen = freeze i32 %blk.041.i
  %div.i = udiv i32 %blk.041.i.frozen, 3
  %9 = mul i32 %div.i, 3
  %rem.i.decomposed = sub i32 %blk.041.i.frozen, %9
  %arrayidx.i32 = getelementptr %struct.mdp5_smp, ptr %smp, i32 0, i32 4, i32 %div.i
  %10 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i32, align 4
  %12 = zext i32 %rem.i.decomposed to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rem.i.decomposed, label %for.body.i.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb6.i
  ]

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = and i32 %11, -256
  %or.i = or i32 %and.i, %and.i.i
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %and3.i = and i32 %11, -65281
  %or5.i = or i32 %and3.i, %and.i36.i
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %and7.i = and i32 %11, -16711681
  %or9.i = or i32 %and7.i, %and.i38.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb6.i, %sw.bb2.i, %sw.bb.i, %for.body.i.sw.epilog.i_crit_edge
  %val.0.i = phi i32 [ %11, %for.body.i.sw.epilog.i_crit_edge ], [ %or9.i, %sw.bb6.i ], [ %or5.i, %sw.bb2.i ], [ %or.i, %sw.bb.i ]
  %13 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %val.0.i, ptr %arrayidx.i32, align 4
  %arrayidx12.i = getelementptr %struct.mdp5_smp, ptr %smp, i32 0, i32 5, i32 %div.i
  %14 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %val.0.i, ptr %arrayidx12.i, align 4
  %inc.i = add i32 %nblks.040.i, 1
  %add.i33 = add nuw i32 %blk.041.i, 1
  %call14.i = tail call i32 @_find_next_bit_be(ptr noundef %arrayidx, i32 noundef %8, i32 noundef %add.i33) #5
  %cmp.i = icmp ult i32 %call14.i, %8
  br i1 %cmp.i, label %sw.epilog.i.for.body.i_crit_edge, label %sw.epilog.i.update_smp_state.exit_crit_edge

sw.epilog.i.update_smp_state.exit_crit_edge:      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %update_smp_state.exit

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

update_smp_state.exit:                            ; preds = %sw.epilog.i.update_smp_state.exit_crit_edge, %pipe2client.exit.update_smp_state.exit_crit_edge
  %nblks.0.lcssa.i = phi i32 [ 0, %pipe2client.exit.update_smp_state.exit_crit_edge ], [ %inc.i, %sw.epilog.i.update_smp_state.exit_crit_edge ]
  %add = add i32 %nblks.0.lcssa.i, %nblks.0
  %15 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i34, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef %16, i32 noundef %i.0, i32 noundef %add) #5
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond1

for.end:                                          ; preds = %pipe2nclients.exit
  %17 = ptrtoint ptr %blk_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blk_size.i, align 4
  %div.i35 = sdiv i32 %18, 16
  %mul.i = mul i32 %div.i35, %nblks.0
  %div114.i = lshr i32 %mul.i, 2
  %arrayidx.i36 = getelementptr %struct.mdp5_smp, ptr %smp, i32 0, i32 6, i32 %pipe.044
  %19 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div114.i, ptr %arrayidx.i36, align 4
  %mul3.i = shl nuw nsw i32 %div114.i, 1
  %arrayidx4.i = getelementptr %struct.mdp5_smp, ptr %smp, i32 0, i32 7, i32 %pipe.044
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul3.i, ptr %arrayidx4.i, align 4
  %mul5.i = mul nuw i32 %div114.i, 3
  %arrayidx6.i = getelementptr %struct.mdp5_smp, ptr %smp, i32 0, i32 8, i32 %pipe.044
  %21 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul5.i, ptr %arrayidx6.i, align 4
  %add10 = add i32 %pipe.044, 1
  %call11 = tail call i32 @_find_next_bit_be(ptr noundef %assigned, i32 noundef 32, i32 noundef %add10) #5
  %cmp = icmp ult i32 %call11, 32
  br i1 %cmp, label %for.end.for.cond1.preheader_crit_edge, label %for.end.for.end12_crit_edge

for.end.for.end12_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end12

for.end.for.cond1.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader

for.end12:                                        ; preds = %for.end.for.end12_crit_edge, %entry.for.end12_crit_edge
  %blk_cnt.i37 = getelementptr inbounds %struct.mdp5_smp, ptr %smp, i32 0, i32 2
  %22 = ptrtoint ptr %blk_cnt.i37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %blk_cnt.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %23)
  %cmp.not21.i = icmp slt i32 %23, -2
  br i1 %cmp.not21.i, label %for.end12.write_smp_alloc_regs.exit_crit_edge, label %for.body.lr.ph.i39

for.end12.write_smp_alloc_regs.exit_crit_edge:    ; preds = %for.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %write_smp_alloc_regs.exit

for.body.lr.ph.i39:                               ; preds = %for.end12
  %div.i38 = sdiv i32 %23, 3
  %24 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %smp, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %kms.i.i, align 4
  %enable_count.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %29, i32 0, i32 26
  %mmio.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %29, i32 0, i32 15
  br label %for.body.i41

for.body.i41:                                     ; preds = %mdp5_write.exit20.i.for.body.i41_crit_edge, %for.body.lr.ph.i39
  %i.022.i = phi i32 [ 0, %for.body.lr.ph.i39 ], [ %inc.i42, %mdp5_write.exit20.i.for.body.i41_crit_edge ]
  %mul.i.i = shl i32 %i.022.i, 2
  %add.i.i = add i32 %mul.i.i, 128
  %arrayidx.i40 = getelementptr %struct.mdp5_smp, ptr %smp, i32 0, i32 4, i32 %i.022.i
  %30 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i40, align 4
  %32 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i.i = icmp slt i32 %33, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %for.body.i41.mdp5_write.exit.i_crit_edge, !prof !65

for.body.i41.mdp5_write.exit.i_crit_edge:         ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #7
  br label %mdp5_write.exit.i

do.end.i.i:                                       ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 169, i32 noundef 9, ptr noundef null) #5
  br label %mdp5_write.exit.i

mdp5_write.exit.i:                                ; preds = %do.end.i.i, %for.body.i41.mdp5_write.exit.i_crit_edge
  %34 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 %add.i.i
  tail call void @msm_writel(i32 noundef %31, ptr noundef %add.ptr.i.i) #5
  %add.i14.i = add i32 %mul.i.i, 304
  %arrayidx3.i = getelementptr %struct.mdp5_smp, ptr %smp, i32 0, i32 5, i32 %i.022.i
  %36 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx3.i, align 4
  %38 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i16.i = icmp slt i32 %39, 1
  br i1 %cmp.i16.i, label %do.end.i17.i, label %mdp5_write.exit.i.mdp5_write.exit20.i_crit_edge, !prof !65

mdp5_write.exit.i.mdp5_write.exit20.i_crit_edge:  ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mdp5_write.exit20.i

do.end.i17.i:                                     ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 169, i32 noundef 9, ptr noundef null) #5
  br label %mdp5_write.exit20.i

mdp5_write.exit20.i:                              ; preds = %do.end.i17.i, %mdp5_write.exit.i.mdp5_write.exit20.i_crit_edge
  %40 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %41, i32 %add.i14.i
  tail call void @msm_writel(i32 noundef %37, ptr noundef %add.ptr.i19.i) #5
  %inc.i42 = add nuw nsw i32 %i.022.i, 1
  %exitcond.i = icmp eq i32 %i.022.i, %div.i38
  br i1 %exitcond.i, label %mdp5_write.exit20.i.write_smp_alloc_regs.exit_crit_edge, label %mdp5_write.exit20.i.for.body.i41_crit_edge

mdp5_write.exit20.i.for.body.i41_crit_edge:       ; preds = %mdp5_write.exit20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i41

mdp5_write.exit20.i.write_smp_alloc_regs.exit_crit_edge: ; preds = %mdp5_write.exit20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %write_smp_alloc_regs.exit

write_smp_alloc_regs.exit:                        ; preds = %mdp5_write.exit20.i.write_smp_alloc_regs.exit_crit_edge, %for.end12.write_smp_alloc_regs.exit_crit_edge
  tail call fastcc void @write_smp_fifo_regs(ptr noundef %smp)
  %42 = ptrtoint ptr %assigned to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %assigned, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_smp_fifo_regs(ptr nocapture noundef readonly %smp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kms.i, align 4
  %num_hwpipes = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %num_hwpipes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_hwpipes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp92.not = icmp eq i32 %7, 0
  br i1 %cmp92.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %enable_count.i = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 26
  %mmio.i = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %mdp5_write.exit91.for.body_crit_edge, %for.body.lr.ph
  %i.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %mdp5_write.exit91.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mdp5_kms, ptr %5, i32 0, i32 4, i32 %i.093
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %pipe1 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pipe1, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %11, label %do.body45.i.i [
    i32 0, label %do.body.i.i
    i32 1, label %sw.bb3.i.i
    i32 2, label %sw.bb4.i.i
    i32 3, label %sw.bb8.i.i
    i32 4, label %sw.bb12.i.i
    i32 5, label %sw.bb15.i.i
    i32 6, label %sw.bb19.i.i
    i32 7, label %sw.bb23.i.i
    i32 8, label %sw.bb26.i.i
    i32 9, label %sw.bb30.i.i
    i32 10, label %sw.bb34.i.i
    i32 11, label %sw.bb38.i.i
    i32 12, label %sw.bb41.i.i
  ]

do.body.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 550, 0\0A.popsection", ""() #5, !srcloc !66
  unreachable

sw.bb3.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %13 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %13, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_0.exit

sw.bb4.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %14 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %14, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_0.exit

sw.bb8.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %15 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %15, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_0.exit

sw.bb12.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %16 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %16, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_0.exit

sw.bb15.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %17 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %17, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_0.exit

sw.bb19.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %18 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %18, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_0.exit

sw.bb23.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %19 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %19, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_0.exit

sw.bb26.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %20 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %20, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_0.exit

sw.bb30.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %21 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %21, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_0.exit

sw.bb34.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %22 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %22, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_0.exit

sw.bb38.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %23 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %23, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_0.exit

sw.bb41.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %24 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %24, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_0.exit

do.body45.i.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #5, !srcloc !67
  unreachable

REG_MDP5_PIPE_REQPRIO_FIFO_WM_0.exit:             ; preds = %sw.bb41.i.i, %sw.bb38.i.i, %sw.bb34.i.i, %sw.bb30.i.i, %sw.bb26.i.i, %sw.bb23.i.i, %sw.bb19.i.i, %sw.bb15.i.i, %sw.bb12.i.i, %sw.bb8.i.i, %sw.bb4.i.i, %sw.bb3.i.i
  %retval.0.in.i.i = phi ptr [ %arrayidx44.i.i, %sw.bb41.i.i ], [ %base39.i.i, %sw.bb38.i.i ], [ %arrayidx37.i.i, %sw.bb34.i.i ], [ %arrayidx33.i.i, %sw.bb30.i.i ], [ %arrayidx29.i.i, %sw.bb26.i.i ], [ %base24.i.i, %sw.bb23.i.i ], [ %arrayidx22.i.i, %sw.bb19.i.i ], [ %arrayidx18.i.i, %sw.bb15.i.i ], [ %base13.i.i, %sw.bb12.i.i ], [ %arrayidx11.i.i, %sw.bb8.i.i ], [ %arrayidx7.i.i, %sw.bb4.i.i ], [ %base.i.i, %sw.bb3.i.i ]
  %25 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %add.i = add i32 %retval.0.i.i, 80
  %arrayidx3 = getelementptr %struct.mdp5_smp, ptr %smp, i32 0, i32 6, i32 %11
  %26 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx3, align 4
  %28 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp.i = icmp slt i32 %29, 1
  br i1 %cmp.i, label %do.end.i, label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_0.exit.mdp5_write.exit_crit_edge, !prof !65

REG_MDP5_PIPE_REQPRIO_FIFO_WM_0.exit.mdp5_write.exit_crit_edge: ; preds = %REG_MDP5_PIPE_REQPRIO_FIFO_WM_0.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %mdp5_write.exit

do.end.i:                                         ; preds = %REG_MDP5_PIPE_REQPRIO_FIFO_WM_0.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 169, i32 noundef 9, ptr noundef null) #5
  br label %mdp5_write.exit

mdp5_write.exit:                                  ; preds = %do.end.i, %REG_MDP5_PIPE_REQPRIO_FIFO_WM_0.exit.mdp5_write.exit_crit_edge
  %30 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 %add.i
  tail call void @msm_writel(i32 noundef %27, ptr noundef %add.ptr.i) #5
  %32 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %11, label %do.body45.i.i47 [
    i32 12, label %sw.bb41.i.i46
    i32 1, label %sw.bb3.i.i24
    i32 2, label %sw.bb4.i.i26
    i32 3, label %sw.bb8.i.i28
    i32 4, label %sw.bb12.i.i30
    i32 5, label %sw.bb15.i.i32
    i32 6, label %sw.bb19.i.i34
    i32 7, label %sw.bb23.i.i36
    i32 8, label %sw.bb26.i.i38
    i32 9, label %sw.bb30.i.i40
    i32 10, label %sw.bb34.i.i42
    i32 11, label %sw.bb38.i.i44
  ]

sw.bb3.i.i24:                                     ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %33 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i23 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %33, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_1.exit

sw.bb4.i.i26:                                     ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %34 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i25 = getelementptr %struct.mdp5_cfg_hw, ptr %34, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_1.exit

sw.bb8.i.i28:                                     ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %35 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i27 = getelementptr %struct.mdp5_cfg_hw, ptr %35, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_1.exit

sw.bb12.i.i30:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %36 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i29 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %36, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_1.exit

sw.bb15.i.i32:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %37 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i31 = getelementptr %struct.mdp5_cfg_hw, ptr %37, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_1.exit

sw.bb19.i.i34:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %38 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i33 = getelementptr %struct.mdp5_cfg_hw, ptr %38, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_1.exit

sw.bb23.i.i36:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %39 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i35 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %39, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_1.exit

sw.bb26.i.i38:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %40 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i37 = getelementptr %struct.mdp5_cfg_hw, ptr %40, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_1.exit

sw.bb30.i.i40:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %41 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i39 = getelementptr %struct.mdp5_cfg_hw, ptr %41, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_1.exit

sw.bb34.i.i42:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %42 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i41 = getelementptr %struct.mdp5_cfg_hw, ptr %42, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_1.exit

sw.bb38.i.i44:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %43 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i43 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %43, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_1.exit

sw.bb41.i.i46:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %44 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i45 = getelementptr %struct.mdp5_cfg_hw, ptr %44, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_1.exit

do.body45.i.i47:                                  ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #5, !srcloc !67
  unreachable

REG_MDP5_PIPE_REQPRIO_FIFO_WM_1.exit:             ; preds = %sw.bb41.i.i46, %sw.bb38.i.i44, %sw.bb34.i.i42, %sw.bb30.i.i40, %sw.bb26.i.i38, %sw.bb23.i.i36, %sw.bb19.i.i34, %sw.bb15.i.i32, %sw.bb12.i.i30, %sw.bb8.i.i28, %sw.bb4.i.i26, %sw.bb3.i.i24
  %retval.0.in.i.i48 = phi ptr [ %arrayidx44.i.i45, %sw.bb41.i.i46 ], [ %base39.i.i43, %sw.bb38.i.i44 ], [ %arrayidx37.i.i41, %sw.bb34.i.i42 ], [ %arrayidx33.i.i39, %sw.bb30.i.i40 ], [ %arrayidx29.i.i37, %sw.bb26.i.i38 ], [ %base24.i.i35, %sw.bb23.i.i36 ], [ %arrayidx22.i.i33, %sw.bb19.i.i34 ], [ %arrayidx18.i.i31, %sw.bb15.i.i32 ], [ %base13.i.i29, %sw.bb12.i.i30 ], [ %arrayidx11.i.i27, %sw.bb8.i.i28 ], [ %arrayidx7.i.i25, %sw.bb4.i.i26 ], [ %base.i.i23, %sw.bb3.i.i24 ]
  %45 = ptrtoint ptr %retval.0.in.i.i48 to i32
  call void @__asan_load4_noabort(i32 %45)
  %retval.0.i.i49 = load i32, ptr %retval.0.in.i.i48, align 4
  %add.i50 = add i32 %retval.0.i.i49, 84
  %arrayidx5 = getelementptr %struct.mdp5_smp, ptr %smp, i32 0, i32 7, i32 %11
  %46 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx5, align 4
  %48 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp.i52 = icmp slt i32 %49, 1
  br i1 %cmp.i52, label %do.end.i53, label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_1.exit.mdp5_write.exit56_crit_edge, !prof !65

REG_MDP5_PIPE_REQPRIO_FIFO_WM_1.exit.mdp5_write.exit56_crit_edge: ; preds = %REG_MDP5_PIPE_REQPRIO_FIFO_WM_1.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %mdp5_write.exit56

do.end.i53:                                       ; preds = %REG_MDP5_PIPE_REQPRIO_FIFO_WM_1.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 169, i32 noundef 9, ptr noundef null) #5
  br label %mdp5_write.exit56

mdp5_write.exit56:                                ; preds = %do.end.i53, %REG_MDP5_PIPE_REQPRIO_FIFO_WM_1.exit.mdp5_write.exit56_crit_edge
  %50 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %51, i32 %add.i50
  tail call void @msm_writel(i32 noundef %47, ptr noundef %add.ptr.i55) #5
  %52 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %11, label %do.body45.i.i82 [
    i32 12, label %sw.bb41.i.i81
    i32 1, label %sw.bb3.i.i59
    i32 2, label %sw.bb4.i.i61
    i32 3, label %sw.bb8.i.i63
    i32 4, label %sw.bb12.i.i65
    i32 5, label %sw.bb15.i.i67
    i32 6, label %sw.bb19.i.i69
    i32 7, label %sw.bb23.i.i71
    i32 8, label %sw.bb26.i.i73
    i32 9, label %sw.bb30.i.i75
    i32 10, label %sw.bb34.i.i77
    i32 11, label %sw.bb38.i.i79
  ]

sw.bb3.i.i59:                                     ; preds = %mdp5_write.exit56
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %53 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i58 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %53, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_2.exit

sw.bb4.i.i61:                                     ; preds = %mdp5_write.exit56
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %54 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i60 = getelementptr %struct.mdp5_cfg_hw, ptr %54, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_2.exit

sw.bb8.i.i63:                                     ; preds = %mdp5_write.exit56
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %55 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i62 = getelementptr %struct.mdp5_cfg_hw, ptr %55, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_2.exit

sw.bb12.i.i65:                                    ; preds = %mdp5_write.exit56
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %56 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i64 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %56, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_2.exit

sw.bb15.i.i67:                                    ; preds = %mdp5_write.exit56
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %57 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i66 = getelementptr %struct.mdp5_cfg_hw, ptr %57, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_2.exit

sw.bb19.i.i69:                                    ; preds = %mdp5_write.exit56
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %58 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i68 = getelementptr %struct.mdp5_cfg_hw, ptr %58, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_2.exit

sw.bb23.i.i71:                                    ; preds = %mdp5_write.exit56
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %59 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i70 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %59, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_2.exit

sw.bb26.i.i73:                                    ; preds = %mdp5_write.exit56
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %60 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i72 = getelementptr %struct.mdp5_cfg_hw, ptr %60, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_2.exit

sw.bb30.i.i75:                                    ; preds = %mdp5_write.exit56
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %61 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i74 = getelementptr %struct.mdp5_cfg_hw, ptr %61, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_2.exit

sw.bb34.i.i77:                                    ; preds = %mdp5_write.exit56
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %62 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i76 = getelementptr %struct.mdp5_cfg_hw, ptr %62, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_2.exit

sw.bb38.i.i79:                                    ; preds = %mdp5_write.exit56
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %63 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i78 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %63, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_2.exit

sw.bb41.i.i81:                                    ; preds = %mdp5_write.exit56
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %64 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i80 = getelementptr %struct.mdp5_cfg_hw, ptr %64, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_2.exit

do.body45.i.i82:                                  ; preds = %mdp5_write.exit56
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #5, !srcloc !67
  unreachable

REG_MDP5_PIPE_REQPRIO_FIFO_WM_2.exit:             ; preds = %sw.bb41.i.i81, %sw.bb38.i.i79, %sw.bb34.i.i77, %sw.bb30.i.i75, %sw.bb26.i.i73, %sw.bb23.i.i71, %sw.bb19.i.i69, %sw.bb15.i.i67, %sw.bb12.i.i65, %sw.bb8.i.i63, %sw.bb4.i.i61, %sw.bb3.i.i59
  %retval.0.in.i.i83 = phi ptr [ %arrayidx44.i.i80, %sw.bb41.i.i81 ], [ %base39.i.i78, %sw.bb38.i.i79 ], [ %arrayidx37.i.i76, %sw.bb34.i.i77 ], [ %arrayidx33.i.i74, %sw.bb30.i.i75 ], [ %arrayidx29.i.i72, %sw.bb26.i.i73 ], [ %base24.i.i70, %sw.bb23.i.i71 ], [ %arrayidx22.i.i68, %sw.bb19.i.i69 ], [ %arrayidx18.i.i66, %sw.bb15.i.i67 ], [ %base13.i.i64, %sw.bb12.i.i65 ], [ %arrayidx11.i.i62, %sw.bb8.i.i63 ], [ %arrayidx7.i.i60, %sw.bb4.i.i61 ], [ %base.i.i58, %sw.bb3.i.i59 ]
  %65 = ptrtoint ptr %retval.0.in.i.i83 to i32
  call void @__asan_load4_noabort(i32 %65)
  %retval.0.i.i84 = load i32, ptr %retval.0.in.i.i83, align 4
  %add.i85 = add i32 %retval.0.i.i84, 88
  %arrayidx7 = getelementptr %struct.mdp5_smp, ptr %smp, i32 0, i32 8, i32 %11
  %66 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx7, align 4
  %68 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp.i87 = icmp slt i32 %69, 1
  br i1 %cmp.i87, label %do.end.i88, label %REG_MDP5_PIPE_REQPRIO_FIFO_WM_2.exit.mdp5_write.exit91_crit_edge, !prof !65

REG_MDP5_PIPE_REQPRIO_FIFO_WM_2.exit.mdp5_write.exit91_crit_edge: ; preds = %REG_MDP5_PIPE_REQPRIO_FIFO_WM_2.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %mdp5_write.exit91

do.end.i88:                                       ; preds = %REG_MDP5_PIPE_REQPRIO_FIFO_WM_2.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 169, i32 noundef 9, ptr noundef null) #5
  br label %mdp5_write.exit91

mdp5_write.exit91:                                ; preds = %do.end.i88, %REG_MDP5_PIPE_REQPRIO_FIFO_WM_2.exit.mdp5_write.exit91_crit_edge
  %70 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %71, i32 %add.i85
  tail call void @msm_writel(i32 noundef %67, ptr noundef %add.ptr.i90) #5
  %inc = add nuw i32 %i.093, 1
  %72 = ptrtoint ptr %num_hwpipes to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_hwpipes, align 8
  %cmp = icmp ult i32 %inc, %73
  br i1 %cmp, label %mdp5_write.exit91.for.body_crit_edge, label %mdp5_write.exit91.for.end_crit_edge

mdp5_write.exit91.for.end_crit_edge:              ; preds = %mdp5_write.exit91
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

mdp5_write.exit91.for.body_crit_edge:             ; preds = %mdp5_write.exit91
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %mdp5_write.exit91.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp5_smp_complete_commit(ptr nocapture noundef %smp, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %released = getelementptr inbounds %struct.mdp5_smp_state, ptr %state, i32 0, i32 3
  %call = tail call i32 @_find_next_bit_be(ptr noundef %released, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call)
  %cmp12 = icmp ult i32 %call, 32
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %pipe.013 = phi i32 [ %call3, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %arrayidx.i = getelementptr [13 x ptr], ptr @pipe2name.names, i32 0, i32 %pipe.013
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef %1) #5
  %arrayidx.i11 = getelementptr %struct.mdp5_smp, ptr %smp, i32 0, i32 6, i32 %pipe.013
  %2 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %arrayidx.i11, align 4
  %arrayidx4.i = getelementptr %struct.mdp5_smp, ptr %smp, i32 0, i32 7, i32 %pipe.013
  %3 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.mdp5_smp, ptr %smp, i32 0, i32 8, i32 %pipe.013
  %4 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx6.i, align 4
  %add = add nuw nsw i32 %pipe.013, 1
  %call3 = tail call i32 @_find_next_bit_be(ptr noundef %released, i32 noundef 32, i32 noundef %add) #5
  %cmp = icmp ult i32 %call3, 32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call fastcc void @write_smp_fifo_regs(ptr noundef %smp)
  %5 = ptrtoint ptr %released to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %released, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp5_smp_dump(ptr nocapture noundef readonly %smp, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kms.i, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.5) #5
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.6) #5
  %6 = tail call i32 @llvm.read_register.i32(metadata !53) #5
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !68
  %and.i.i156 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i156)
  %tobool.not.i = icmp eq i32 %and.i.i156, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.drm_can_sleep.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.drm_can_sleep.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_can_sleep.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %11 = tail call i32 @llvm.read_register.i32(metadata !53) #5
  %and.i35.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i35.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %call.i.i.i157 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_active, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_active to i32))
  %15 = load volatile i32, ptr @kgdb_active, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %15)
  %cmp13.i = icmp eq i32 %14, %15
  br i1 %cmp13.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.drm_can_sleep.exit_crit_edge

land.lhs.true.i.drm_can_sleep.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_can_sleep.exit

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

drm_can_sleep.exit:                               ; preds = %land.lhs.true.i.drm_can_sleep.exit_crit_edge, %lor.lhs.false.i.drm_can_sleep.exit_crit_edge
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !68
  %and.i36.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.i)
  %tobool34.not.i = icmp eq i32 %and.i36.i, 0
  br i1 %tobool34.not.i, label %if.then, label %drm_can_sleep.exit.if.end_crit_edge

drm_can_sleep.exit.if.end_crit_edge:              ; preds = %drm_can_sleep.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %drm_can_sleep.exit
  call void @__sanitizer_cov_trace_pc() #7
  %glob_state_lock = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 11
  %call2 = tail call i32 @drm_modeset_lock(ptr noundef %glob_state_lock, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %drm_can_sleep.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call ptr @mdp5_get_existing_global_state(ptr noundef %5) #5
  %hwpipe = getelementptr inbounds %struct.mdp5_global_state, ptr %call3, i32 0, i32 3
  %smp4 = getelementptr inbounds %struct.mdp5_global_state, ptr %call3, i32 0, i32 5
  %num_hwpipes = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %num_hwpipes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_hwpipes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp181.not = icmp eq i32 %18, 0
  br i1 %cmp181.not, label %if.end.for.end18_crit_edge, label %for.body.lr.ph

if.end.for.end18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end18

for.body.lr.ph:                                   ; preds = %if.end
  %blk_cnt = getelementptr inbounds %struct.mdp5_smp, ptr %smp, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.0183 = phi i32 [ 0, %for.body.lr.ph ], [ %inc17, %for.end.for.body_crit_edge ]
  %total.0182 = phi i32 [ 0, %for.body.lr.ph ], [ %total.1, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mdp5_kms, ptr %5, i32 0, i32 4, i32 %i.0183
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %arrayidx6 = getelementptr [13 x ptr], ptr %hwpipe, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx6, align 4
  %pipe7 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %20, i32 0, i32 2
  %25 = ptrtoint ptr %pipe7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pipe7, align 4
  %arrayidx.i162 = getelementptr [13 x ptr], ptr @pipe2name.names, i32 0, i32 %26
  %tobool.not = icmp eq ptr %24, null
  %name = getelementptr inbounds %struct.drm_plane, ptr %24, i32 0, i32 2
  %switch.tableidx = add i32 %26, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %27 = icmp ult i32 %switch.tableidx, 7
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_smp_dump, i32 0, i32 %switch.tableidx
  %switch.tableidx185 = add i32 %26, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx185)
  %28 = icmp ult i32 %switch.tableidx185, 7
  %switch.gep186 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_smp_dump.29, i32 0, i32 %switch.tableidx185
  br label %for.cond8

for.cond8:                                        ; preds = %cond.end, %for.body
  %total.1 = phi i32 [ %total.0182, %for.body ], [ %add, %cond.end ]
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %cond.end ]
  br i1 %27, label %switch.lookup, label %for.cond8.pipe2nclients.exit_crit_edge

for.cond8.pipe2nclients.exit_crit_edge:           ; preds = %for.cond8
  call void @__sanitizer_cov_trace_pc() #7
  br label %pipe2nclients.exit

switch.lookup:                                    ; preds = %for.cond8
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %pipe2nclients.exit

pipe2nclients.exit:                               ; preds = %switch.lookup, %for.cond8.pipe2nclients.exit_crit_edge
  %retval.0.i159 = phi i32 [ %switch.load, %switch.lookup ], [ 3, %for.cond8.pipe2nclients.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0, i32 %retval.0.i159)
  %cmp10 = icmp ult i32 %j.0, %retval.0.i159
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %pipe2nclients.exit
  br i1 %28, label %switch.lookup184, label %for.body11.pipe2nclients.exit.i_crit_edge

for.body11.pipe2nclients.exit.i_crit_edge:        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %pipe2nclients.exit.i

switch.lookup184:                                 ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %switch.gep186 to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load187 = load i32, ptr %switch.gep186, align 4
  br label %pipe2nclients.exit.i

pipe2nclients.exit.i:                             ; preds = %switch.lookup184, %for.body11.pipe2nclients.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load187, %switch.lookup184 ], [ 3, %for.body11.pipe2nclients.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %j.0)
  %cmp.not.i160 = icmp ugt i32 %retval.0.i.i, %j.0
  br i1 %cmp.not.i160, label %if.end21.i, label %do.end.i, !prof !64

do.end.i:                                         ; preds = %pipe2nclients.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 43, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end21.i:                                       ; preds = %pipe2nclients.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %31 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx.i = getelementptr %struct.mdp5_cfg_hw, ptr %31, i32 0, i32 2, i32 2, i32 %26
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %33, %j.0
  br label %if.end.i

if.end.i:                                         ; preds = %if.end21.i, %do.end.i
  %retval.0.i161 = phi i32 [ 0, %do.end.i ], [ %add.i, %if.end21.i ]
  %34 = ptrtoint ptr %blk_cnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %blk_cnt, align 4
  %arrayidx13 = getelementptr %struct.mdp5_global_state, ptr %call3, i32 0, i32 5, i32 1, i32 %retval.0.i161
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %arrayidx13, i32 noundef %35) #5
  %36 = ptrtoint ptr %arrayidx.i162 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i162, align 4
  br i1 %tobool.not, label %if.end.i.cond.end_crit_edge, label %cond.true

if.end.i.cond.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.i.cond.end_crit_edge
  %cond = phi ptr [ %39, %cond.true ], [ null, %if.end.i.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.7, ptr noundef %37, i32 noundef %j.0, i32 noundef %call4.i, ptr noundef %cond) #5
  %add = add i32 %call4.i, %total.1
  %inc = add nuw nsw i32 %j.0, 1
  br label %for.cond8

for.end:                                          ; preds = %pipe2nclients.exit
  %inc17 = add nuw i32 %i.0183, 1
  %40 = ptrtoint ptr %num_hwpipes to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_hwpipes, align 8
  %cmp = icmp ult i32 %inc17, %41
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end18_crit_edge

for.end.for.end18_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end18

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end18:                                        ; preds = %for.end.for.end18_crit_edge, %if.end.for.end18_crit_edge
  %total.0.lcssa = phi i32 [ 0, %if.end.for.end18_crit_edge ], [ %total.1, %for.end.for.end18_crit_edge ]
  %blk_cnt19 = getelementptr inbounds %struct.mdp5_smp, ptr %smp, i32 0, i32 2
  %42 = ptrtoint ptr %blk_cnt19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %blk_cnt19, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.8, i32 noundef %total.0.lcssa, i32 noundef %43) #5
  %44 = ptrtoint ptr %blk_cnt19 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %blk_cnt19, align 4
  %call4.i152 = tail call i32 @__bitmap_weight(ptr noundef %smp4, i32 noundef %45) #5
  %sub = sub i32 %45, %call4.i152
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.9, i32 noundef %sub) #5
  %46 = tail call i32 @llvm.read_register.i32(metadata !53) #5
  %and.i.i.i163 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i163 to ptr
  %preempt_count.i.i164 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i164 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.not.i165 = icmp eq i32 %49, 0
  br i1 %cmp.not.i165, label %lor.lhs.false.i168, label %for.end18.if.end28_crit_edge

for.end18.if.end28_crit_edge:                     ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

lor.lhs.false.i168:                               ; preds = %for.end18
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !68
  %and.i.i166 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i166)
  %tobool.not.i167 = icmp eq i32 %and.i.i166, 0
  br i1 %tobool.not.i167, label %lor.lhs.false.i168.drm_can_sleep.exit178_crit_edge, label %land.lhs.true.i173

lor.lhs.false.i168.drm_can_sleep.exit178_crit_edge: ; preds = %lor.lhs.false.i168
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_can_sleep.exit178

land.lhs.true.i173:                               ; preds = %lor.lhs.false.i168
  %51 = tail call i32 @llvm.read_register.i32(metadata !53) #5
  %and.i35.i169 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i35.i169 to ptr
  %cpu.i170 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %cpu.i170 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu.i170, align 4
  %call.i.i.i171 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_active, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_active to i32))
  %55 = load volatile i32, ptr @kgdb_active, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %55)
  %cmp13.i172 = icmp eq i32 %54, %55
  br i1 %cmp13.i172, label %land.lhs.true.i173.if.end28_crit_edge, label %land.lhs.true.i173.drm_can_sleep.exit178_crit_edge

land.lhs.true.i173.drm_can_sleep.exit178_crit_edge: ; preds = %land.lhs.true.i173
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_can_sleep.exit178

land.lhs.true.i173.if.end28_crit_edge:            ; preds = %land.lhs.true.i173
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

drm_can_sleep.exit178:                            ; preds = %land.lhs.true.i173.drm_can_sleep.exit178_crit_edge, %lor.lhs.false.i168.drm_can_sleep.exit178_crit_edge
  %56 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !68
  %and.i36.i174 = and i32 %56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.i174)
  %tobool34.not.i175 = icmp eq i32 %and.i36.i174, 0
  br i1 %tobool34.not.i175, label %if.then26, label %drm_can_sleep.exit178.if.end28_crit_edge

drm_can_sleep.exit178.if.end28_crit_edge:         ; preds = %drm_can_sleep.exit178
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then26:                                        ; preds = %drm_can_sleep.exit178
  call void @__sanitizer_cov_trace_pc() #7
  %glob_state_lock27 = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 11
  tail call void @drm_modeset_unlock(ptr noundef %glob_state_lock27) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %drm_can_sleep.exit178.if.end28_crit_edge, %land.lhs.true.i173.if.end28_crit_edge, %for.end18.if.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_get_existing_global_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp5_smp_destroy(ptr noundef %smp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %smp) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mdp5_smp_init(ptr noundef %mdp5_kms, ptr nocapture noundef readonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 376) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !65

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mdp5_kms, ptr %mdp5_kms, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %call7.i.i, align 8
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cfg, align 4
  %blk_cnt = getelementptr inbounds %struct.mdp5_smp, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %blk_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %blk_cnt, align 4
  %mmb_size = getelementptr inbounds %struct.mdp5_smp_block, ptr %cfg, i32 0, i32 1
  %7 = ptrtoint ptr %mmb_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mmb_size, align 4
  %blk_size = getelementptr inbounds %struct.mdp5_smp, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %blk_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %blk_size, align 8
  %call5 = tail call ptr @mdp5_get_existing_global_state(ptr noundef %mdp5_kms) #5
  %smp6 = getelementptr inbounds %struct.mdp5_global_state, ptr %call5, i32 0, i32 5
  %reserved_state = getelementptr inbounds %struct.mdp5_smp_block, ptr %cfg, i32 0, i32 3
  %sub.i = add i32 %5, 31
  %10 = lshr i32 %sub.i, 3
  %mul.i = and i32 %10, 536870908
  %11 = call ptr @memcpy(ptr %smp6, ptr %reserved_state, i32 %mul.i)
  %reserved = getelementptr inbounds %struct.mdp5_smp, ptr %call7.i.i, i32 0, i32 1
  %reserved11 = getelementptr inbounds %struct.mdp5_smp_block, ptr %cfg, i32 0, i32 4
  %12 = call ptr @memcpy(ptr %reserved, ptr %reserved11, i32 32)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_andnot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_smp.c", i32 178, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_smp.c", i32 181, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_smp.c", i32 301, i32 4}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_smp.c", i32 319, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_smp.c", i32 336, i32 16}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_smp.c", i32 337, i32 16}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_smp.c", i32 357, i32 18}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_smp.c", i32 365, i32 16}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_smp.c", i32 366, i32 16}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_smp.c", i32 43, i32 6}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 195, i32 3}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 195, i32 15}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 195, i32 27}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 196, i32 3}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 196, i32 15}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 196, i32 27}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 197, i32 3}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 197, i32 15}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 198, i32 3}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 198, i32 15}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 199, i32 3}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 199, i32 18}
!45 = !{ptr @pipe2name.names, !46, !"names", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 193, i32 21}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_smp.c", i32 77, i32 3}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_smp.c", i32 82, i32 3}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 169, i32 2}
!53 = !{!"sp"}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i32 0, i32 33}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{i64 2157184485, i64 2157184990, i64 2157184522, i64 2157184578, i64 2157184612, i64 2157184636, i64 2157184677, i64 2157184698, i64 2157184726, i64 2157184760}
!67 = !{i64 2157186040, i64 2157186545, i64 2157186077, i64 2157186133, i64 2157186167, i64 2157186191, i64 2157186232, i64 2157186253, i64 2157186281, i64 2157186315}
!68 = !{i64 829020}
