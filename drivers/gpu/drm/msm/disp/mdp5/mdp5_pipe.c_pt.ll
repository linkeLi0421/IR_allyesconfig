; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/mdp5/mdp5_pipe.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp5/mdp5_pipe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
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
%struct.mdp5_global_state = type { %struct.drm_private_state, ptr, ptr, %struct.mdp5_hw_pipe_state, %struct.mdp5_hw_mixer_state, %struct.mdp5_smp_state }
%struct.drm_private_state = type { ptr }
%struct.mdp5_hw_pipe_state = type { [13 x ptr] }
%struct.mdp5_hw_mixer_state = type { [8 x ptr] }
%struct.mdp5_smp_state = type { [2 x i32], [32 x [2 x i32]], i32, i32 }
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
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.mdp5_hw_pipe = type { i32, ptr, i32, i32, i32, i32, i32 }

@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_pipe.c\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: alloc SMP blocks\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: assign to plane %s for caps %x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: assign to right of plane %s for caps %x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: release from plane %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: free SMP blocks\0A\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pipe2name.names = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr null, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIG0\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIG1\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIG2\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RGB0\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RGB1\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RGB2\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMA0\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMA1\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIG3\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RGB3\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CURSOR0\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CURSOR1\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 98, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 100, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 109, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 114, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 135, i32 2 }
@___asan_gen_.34 = private constant [45 x i8] c"../drivers/gpu/drm/msm/disp/mdp5/mdp5_pipe.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 139, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 193, i32 21 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 195, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 195, i32 15 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 195, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 196, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 196, i32 15 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 196, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 197, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 197, i32 15 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 198, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 198, i32 15 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 199, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [44 x i8] c"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 199, i32 18 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pipe2name.names, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipe2name.names to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp5_pipe_assign(ptr noundef %s, ptr noundef %plane, i32 noundef %caps, i32 noundef %blkcfg, ptr nocapture noundef %hwpipe, ptr noundef %r_hwpipe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %kms = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kms, align 4
  %call = tail call ptr @mdp5_get_global_state(ptr noundef %s) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %call to i32
  br label %cleanup125

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @mdp5_get_existing_global_state(ptr noundef %5) #3
  %hwpipe7 = getelementptr inbounds %struct.mdp5_global_state, ptr %call6, i32 0, i32 3
  %hwpipe8 = getelementptr inbounds %struct.mdp5_global_state, ptr %call, i32 0, i32 3
  %num_hwpipes = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %num_hwpipes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_hwpipes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp298.not = icmp eq i32 %8, 0
  br i1 %cmp298.not, label %if.end.for.end66_crit_edge, label %for.body.lr.ph

if.end.for.end66_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end66

for.body.lr.ph:                                   ; preds = %if.end
  %type = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 16
  %neg29 = xor i32 %caps, -1
  %tobool38.not = icmp eq ptr %r_hwpipe, null
  br label %for.body

for.body:                                         ; preds = %cleanup62.for.body_crit_edge, %for.body.lr.ph
  %i.0299 = phi i32 [ 0, %for.body.lr.ph ], [ %inc65, %cleanup62.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mdp5_kms, ptr %5, i32 0, i32 4, i32 %i.0299
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %arrayidx9 = getelementptr [13 x ptr], ptr %hwpipe8, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx9, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %lor.lhs.false, label %for.body.cleanup62_crit_edge

for.body.cleanup62_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup62

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx12 = getelementptr [13 x ptr], ptr %hwpipe7, i32 0, i32 %12
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %if.end15, label %lor.lhs.false.cleanup62_crit_edge

lor.lhs.false.cleanup62_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup62

if.end15:                                         ; preds = %lor.lhs.false
  %caps16 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %10, i32 0, i32 4
  %17 = ptrtoint ptr %caps16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %caps16, align 4
  %neg = xor i32 %18, -1
  %and = and i32 %neg, %caps
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup62_crit_edge

if.end15.cleanup62_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup62

if.end19:                                         ; preds = %if.end15
  %and21 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.end25_crit_edge, label %land.lhs.true

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end19
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp23.not = icmp eq i32 %20, 2
  br i1 %cmp23.not, label %land.lhs.true.if.end25_crit_edge, label %land.lhs.true.cleanup62_crit_edge

land.lhs.true.cleanup62_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup62

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end19.if.end25_crit_edge
  %21 = ptrtoint ptr %hwpipe to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hwpipe, align 4
  %tobool26.not = icmp eq ptr %22, null
  br i1 %tobool26.not, label %if.end25.if.then37_crit_edge, label %cond.false.i

if.end25.if.then37_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then37

cond.false.i:                                     ; preds = %if.end25
  %and30 = and i32 %18, %neg29
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %and30) #3
  %23 = ptrtoint ptr %hwpipe to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hwpipe, align 4
  %caps32 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %caps32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %caps32, align 4
  %and34 = and i32 %26, %neg29
  %call.i.i278 = tail call i32 @__sw_hweight32(i32 noundef %and34) #3
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %call.i.i278)
  %cmp36 = icmp ult i32 %call.i.i, %call.i.i278
  br i1 %cmp36, label %cond.false.i.if.then37_crit_edge, label %cond.false.i.cleanup62_crit_edge

cond.false.i.cleanup62_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup62

cond.false.i.if.then37_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then37

if.then37:                                        ; preds = %cond.false.i.if.then37_crit_edge, %if.end25.if.then37_crit_edge
  br i1 %tobool38.not, label %if.then37.if.then59_crit_edge, label %for.cond40.preheader

if.then37.if.then59_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then59

for.cond40.preheader:                             ; preds = %if.then37
  %27 = ptrtoint ptr %num_hwpipes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_hwpipes, align 8
  %j.0295 = add nuw i32 %i.0299, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0295, i32 %28)
  %cmp42296 = icmp ult i32 %j.0295, %28
  br i1 %cmp42296, label %for.body43.lr.ph, label %for.cond40.preheader.cleanup62_crit_edge

for.cond40.preheader.cleanup62_crit_edge:         ; preds = %for.cond40.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup62

for.body43.lr.ph:                                 ; preds = %for.cond40.preheader
  %29 = ptrtoint ptr %caps16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %caps16, align 4
  %pipe = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %10, i32 0, i32 2
  br label %for.body43

for.body43:                                       ; preds = %cleanup.for.body43_crit_edge, %for.body43.lr.ph
  %j.0297 = phi i32 [ %j.0295, %for.body43.lr.ph ], [ %j.0, %cleanup.for.body43_crit_edge ]
  %arrayidx45 = getelementptr %struct.mdp5_kms, ptr %5, i32 0, i32 4, i32 %j.0297
  %31 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx45, align 4
  %caps46 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %caps46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %caps46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %30)
  %cmp48.not = icmp eq i32 %34, %30
  br i1 %cmp48.not, label %if.end50, label %for.body43.cleanup_crit_edge

for.body43.cleanup_crit_edge:                     ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end50:                                         ; preds = %for.body43
  %35 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pipe, align 4
  %pipe51 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %32, i32 0, i32 2
  %37 = ptrtoint ptr %pipe51 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pipe51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp52 = icmp ugt i32 %36, %38
  br i1 %cmp52, label %if.end50.cleanup_crit_edge, label %cleanup.thread

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #5
  %39 = ptrtoint ptr %r_hwpipe to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %32, ptr %r_hwpipe, align 4
  br label %if.then59

cleanup:                                          ; preds = %if.end50.cleanup_crit_edge, %for.body43.cleanup_crit_edge
  %j.0 = add i32 %j.0297, 1
  %exitcond.not = icmp eq i32 %j.0, %28
  br i1 %exitcond.not, label %cleanup.cleanup62_crit_edge, label %cleanup.for.body43_crit_edge

cleanup.for.body43_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body43

cleanup.cleanup62_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup62

if.then59:                                        ; preds = %cleanup.thread, %if.then37.if.then59_crit_edge
  %40 = ptrtoint ptr %hwpipe to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %10, ptr %hwpipe, align 4
  br label %cleanup62

cleanup62:                                        ; preds = %if.then59, %cleanup.cleanup62_crit_edge, %for.cond40.preheader.cleanup62_crit_edge, %cond.false.i.cleanup62_crit_edge, %land.lhs.true.cleanup62_crit_edge, %if.end15.cleanup62_crit_edge, %lor.lhs.false.cleanup62_crit_edge, %for.body.cleanup62_crit_edge
  %inc65 = add nuw i32 %i.0299, 1
  %41 = ptrtoint ptr %num_hwpipes to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_hwpipes, align 8
  %cmp = icmp ult i32 %inc65, %42
  br i1 %cmp, label %cleanup62.for.body_crit_edge, label %cleanup62.for.end66_crit_edge

cleanup62.for.end66_crit_edge:                    ; preds = %cleanup62
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end66

cleanup62.for.body_crit_edge:                     ; preds = %cleanup62
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end66:                                        ; preds = %cleanup62.for.end66_crit_edge, %if.end.for.end66_crit_edge
  %43 = ptrtoint ptr %hwpipe to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hwpipe, align 4
  %tobool67.not = icmp eq ptr %44, null
  br i1 %tobool67.not, label %for.end66.cleanup125_crit_edge, label %if.end69

for.end66.cleanup125_crit_edge:                   ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup125

if.end69:                                         ; preds = %for.end66
  %tobool70.not = icmp eq ptr %r_hwpipe, null
  br i1 %tobool70.not, label %if.end74, label %land.lhs.true71

land.lhs.true71:                                  ; preds = %if.end69
  %45 = ptrtoint ptr %r_hwpipe to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %r_hwpipe, align 4
  %tobool72.not = icmp eq ptr %46, null
  br i1 %tobool72.not, label %land.lhs.true71.cleanup125_crit_edge, label %if.end74.thread

land.lhs.true71.cleanup125_crit_edge:             ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup125

if.end74:                                         ; preds = %if.end69
  %smp = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 13
  %47 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %smp, align 4
  %tobool75.not = icmp eq ptr %48, null
  br i1 %tobool75.not, label %if.end74.if.end111_crit_edge, label %if.end74.if.end92_crit_edge

if.end74.if.end92_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end92

if.end74.if.end111_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end111

if.end74.thread:                                  ; preds = %land.lhs.true71
  %smp289 = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 13
  %49 = ptrtoint ptr %smp289 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %smp289, align 4
  %tobool75.not290 = icmp eq ptr %50, null
  br i1 %tobool75.not290, label %if.end74.thread.if.end111_crit_edge, label %do.end

if.end74.thread.if.end111_crit_edge:              ; preds = %if.end74.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end111

do.end:                                           ; preds = %if.end74.thread
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef null) #3
  br label %if.end92

if.end92:                                         ; preds = %do.end, %if.end74.if.end92_crit_edge
  %smp291294 = phi ptr [ %smp289, %do.end ], [ %smp, %if.end74.if.end92_crit_edge ]
  %51 = ptrtoint ptr %hwpipe to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hwpipe, align 4
  %name = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef %54) #3
  %55 = ptrtoint ptr %smp291294 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %smp291294, align 4
  %smp101 = getelementptr inbounds %struct.mdp5_global_state, ptr %call, i32 0, i32 5
  %57 = ptrtoint ptr %hwpipe to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hwpipe, align 4
  %pipe102 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %pipe102 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pipe102, align 4
  %call103 = tail call i32 @mdp5_smp_assign(ptr noundef %56, ptr noundef %smp101, i32 noundef %60, i32 noundef %blkcfg) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end92.cleanup125_crit_edge

if.end92.cleanup125_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup125

if.end106:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #5
  %61 = ptrtoint ptr %hwpipe to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hwpipe, align 4
  %blkcfg107 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %blkcfg107 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %blkcfg, ptr %blkcfg107, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.end106, %if.end74.thread.if.end111_crit_edge, %if.end74.if.end111_crit_edge
  %64 = ptrtoint ptr %hwpipe to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hwpipe, align 4
  %name112 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %name112 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %name112, align 4
  %name113 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 2
  %68 = ptrtoint ptr %name113 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %name113, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef %67, ptr noundef %69, i32 noundef %caps) #3
  %70 = ptrtoint ptr %hwpipe to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hwpipe, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %arrayidx116 = getelementptr [13 x ptr], ptr %hwpipe8, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %plane, ptr %arrayidx116, align 4
  br i1 %tobool70.not, label %if.end111.cleanup125_crit_edge, label %if.then118

if.end111.cleanup125_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup125

if.then118:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #5
  %75 = ptrtoint ptr %r_hwpipe to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %r_hwpipe, align 4
  %name119 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %name119 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name119, align 4
  %79 = ptrtoint ptr %name113 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %name113, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef %78, ptr noundef %80, i32 noundef %caps) #3
  %81 = ptrtoint ptr %r_hwpipe to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %r_hwpipe, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %arrayidx123 = getelementptr [13 x ptr], ptr %hwpipe8, i32 0, i32 %84
  %85 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %plane, ptr %arrayidx123, align 4
  br label %cleanup125

cleanup125:                                       ; preds = %if.then118, %if.end111.cleanup125_crit_edge, %if.end92.cleanup125_crit_edge, %land.lhs.true71.cleanup125_crit_edge, %for.end66.cleanup125_crit_edge, %if.then
  %retval.1 = phi i32 [ %6, %if.then ], [ -12, %for.end66.cleanup125_crit_edge ], [ -12, %land.lhs.true71.cleanup125_crit_edge ], [ 0, %if.then118 ], [ 0, %if.end111.cleanup125_crit_edge ], [ -12, %if.end92.cleanup125_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_get_global_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_get_existing_global_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_smp_assign(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp5_pipe_release(ptr noundef %s, ptr noundef readonly %hwpipe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %kms = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kms, align 4
  %call = tail call ptr @mdp5_get_global_state(ptr noundef %s) #3
  %hwpipe4 = getelementptr inbounds %struct.mdp5_global_state, ptr %call, i32 0, i32 3
  %tobool.not = icmp eq ptr %hwpipe, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %hwpipe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwpipe, align 4
  %arrayidx = getelementptr [13 x ptr], ptr %hwpipe4, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %do.end, label %if.end31, !prof !47

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %hwpipe, i32 0, i32 1
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %name35 = getelementptr inbounds %struct.drm_plane, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %name35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name35, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef %11, ptr noundef %13) #3
  %smp = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 13
  %14 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %smp, align 4
  %tobool36.not = icmp eq ptr %15, null
  br i1 %tobool36.not, label %if.end31.if.end41_crit_edge, label %if.then37

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, ptr noundef %17) #3
  %18 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %smp, align 4
  %smp40 = getelementptr inbounds %struct.mdp5_global_state, ptr %call, i32 0, i32 5
  %pipe = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %hwpipe, i32 0, i32 2
  %20 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pipe, align 4
  tail call void @mdp5_smp_release(ptr noundef %19, ptr noundef %smp40, i32 noundef %21) #3
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end31.if.end41_crit_edge
  %22 = ptrtoint ptr %hwpipe to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hwpipe, align 4
  %arrayidx44 = getelementptr [13 x ptr], ptr %hwpipe4, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx44, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_smp_release(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp5_pipe_destroy(ptr noundef %hwpipe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %hwpipe) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mdp5_pipe_init(i32 noundef %pipe, i32 noundef %reg_offset, i32 noundef %caps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.i = getelementptr [13 x ptr], ptr @pipe2name.names, i32 0, i32 %pipe
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %name = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %name, align 4
  %pipe3 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %pipe3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %pipe, ptr %pipe3, align 8
  %reg_offset4 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %reg_offset4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %reg_offset, ptr %reg_offset4, align 4
  %caps5 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %caps5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %caps, ptr %caps5, align 8
  %call6 = tail call i32 @mdp_ctl_flush_mask_pipe(i32 noundef %pipe) #3
  %flush_mask = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %flush_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call6, ptr %flush_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp_ctl_flush_mask_pipe(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_pipe.c", i32 98, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_pipe.c", i32 100, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_pipe.c", i32 109, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_pipe.c", i32 114, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_pipe.c", i32 135, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_pipe.c", i32 139, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 195, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 195, i32 15}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 195, i32 27}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 196, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 196, i32 15}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 196, i32 27}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 197, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 197, i32 15}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 198, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 198, i32 15}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 199, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 199, i32 18}
!36 = !{ptr @pipe2name.names, !37, !"names", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 193, i32 21}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"branch_weights", i32 1, i32 2000}
