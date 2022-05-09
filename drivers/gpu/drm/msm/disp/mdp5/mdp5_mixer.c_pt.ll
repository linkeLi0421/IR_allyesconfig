; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/mdp5/mdp5_mixer.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp5/mdp5_mixer.c"
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
%struct.mdp5_hw_mixer = type { i32, ptr, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mdp5_lm_instance = type { i32, i32, i32, i32 }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"assigning Layer Mixer %d to crtc %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"assigning Right Layer Mixer %d to crtc %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_mixer.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: release from crtc %s\0A\00", [38 x i8] zeroinitializer }, align 32
@mixer_names = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], [40 x i8] zeroinitializer }, align 32
@lm_right_pair = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 -1, i32 5, i32 -1, i32 -1, i32 -1], [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LM0\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LM1\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LM2\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LM3\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LM4\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LM5\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 107, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 111, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 127, i32 6 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 130, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"mixer_names\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 141, i32 27 }
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"lm_right_pair\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 17, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 142, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 142, i32 9 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 142, i32 16 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 142, i32 23 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 142, i32 30 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [46 x i8] c"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mixer.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 142, i32 37 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mixer_names, ptr @lm_right_pair, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer_names to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm_right_pair to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp5_mixer_assign(ptr noundef %s, ptr noundef %crtc, i32 noundef %caps, ptr nocapture noundef %mixer, ptr noundef %r_mixer) local_unnamed_addr #0 align 64 {
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
  br label %cleanup60

if.end:                                           ; preds = %entry
  %hwmixer = getelementptr inbounds %struct.mdp5_global_state, ptr %call, i32 0, i32 4
  %num_hwmixers = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 5
  %7 = ptrtoint ptr %num_hwmixers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_hwmixers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp109.not = icmp eq i32 %8, 0
  br i1 %cmp109.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %tobool17.not = icmp eq ptr %r_mixer, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %9 = phi i32 [ %8, %for.body.lr.ph ], [ %40, %for.inc.for.body_crit_edge ]
  %i.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mdp5_kms, ptr %5, i32 0, i32 6, i32 %i.0110
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %arrayidx6 = getelementptr [8 x ptr], ptr %hwmixer, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx6, align 4
  %tobool.not = icmp eq ptr %15, null
  %cmp10.not = icmp eq ptr %15, %crtc
  %or.cond = or i1 %tobool.not, %cmp10.not
  br i1 %or.cond, label %if.end12, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %caps13 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %caps13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %caps13, align 4
  %neg = xor i32 %17, -1
  %and = and i32 %neg, %caps
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.for.inc_crit_edge

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end16:                                         ; preds = %if.end12
  br i1 %tobool17.not, label %if.end16.if.end30_crit_edge, label %if.then18

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

if.then18:                                        ; preds = %if.end16
  %lm = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %11, i32 0, i32 2
  %18 = ptrtoint ptr %lm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lm, align 4
  %arrayidx.i = getelementptr [6 x i32], ptr @lm_right_pair, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %22 = and i32 %19, 1073741821
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %.not.i = icmp eq i32 %22, 0
  br i1 %.not.i, label %if.then18.for.body.i_crit_edge, label %if.then18.cleanup60_crit_edge

if.then18.cleanup60_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup60

if.then18.for.body.i_crit_edge:                   ; preds = %if.then18
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.cond.i.cleanup60_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.cond.i.cleanup60_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup60

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then18.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.then18.for.body.i_crit_edge ]
  %arrayidx2.i = getelementptr %struct.mdp5_kms, ptr %5, i32 0, i32 6, i32 %i.016.i
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx2.i, align 4
  %lm3.i = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %lm3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lm3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %21)
  %cmp4.i = icmp eq i32 %26, %21
  br i1 %cmp4.i, label %get_right_pair_idx.exit, label %for.cond.i

get_right_pair_idx.exit:                          ; preds = %for.body.i
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp20 = icmp slt i32 %28, 0
  br i1 %cmp20, label %get_right_pair_idx.exit.cleanup60_crit_edge, label %if.end22

get_right_pair_idx.exit.cleanup60_crit_edge:      ; preds = %get_right_pair_idx.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup60

if.end22:                                         ; preds = %get_right_pair_idx.exit
  %arrayidx24 = getelementptr [8 x ptr], ptr %hwmixer, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %30, null
  br i1 %tobool25.not, label %cleanup, label %if.end22.for.inc_crit_edge

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

cleanup:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx29 = getelementptr %struct.mdp5_kms, ptr %5, i32 0, i32 6, i32 %28
  %31 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx29, align 4
  %33 = ptrtoint ptr %r_mixer to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %r_mixer, align 4
  br label %if.end30

if.end30:                                         ; preds = %cleanup, %if.end16.if.end30_crit_edge
  %34 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mixer, align 4
  %tobool31.not = icmp eq ptr %35, null
  br i1 %tobool31.not, label %if.end30.if.then35_crit_edge, label %lor.lhs.false

if.end30.if.then35_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then35

lor.lhs.false:                                    ; preds = %if.end30
  %36 = ptrtoint ptr %caps13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %caps13, align 4
  %and33 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then35_crit_edge

lor.lhs.false.if.then35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then35

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then35:                                        ; preds = %lor.lhs.false.if.then35_crit_edge, %if.end30.if.then35_crit_edge
  %38 = ptrtoint ptr %mixer to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %11, ptr %mixer, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then35, %lor.lhs.false.for.inc_crit_edge, %if.end22.for.inc_crit_edge, %if.end12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0110, 1
  %39 = ptrtoint ptr %num_hwmixers to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_hwmixers, align 8
  %cmp = icmp ult i32 %inc, %40
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %41 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mixer, align 4
  %tobool40.not = icmp eq ptr %42, null
  br i1 %tobool40.not, label %for.end.cleanup60_crit_edge, label %if.end42

for.end.cleanup60_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup60

if.end42:                                         ; preds = %for.end
  %tobool43.not = icmp eq ptr %r_mixer, null
  br i1 %tobool43.not, label %if.end42.if.end47_crit_edge, label %land.lhs.true44

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

land.lhs.true44:                                  ; preds = %if.end42
  %43 = ptrtoint ptr %r_mixer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %r_mixer, align 4
  %tobool45.not = icmp eq ptr %44, null
  br i1 %tobool45.not, label %land.lhs.true44.cleanup60_crit_edge, label %land.lhs.true44.if.end47_crit_edge

land.lhs.true44.if.end47_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

land.lhs.true44.cleanup60_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup60

if.end47:                                         ; preds = %land.lhs.true44.if.end47_crit_edge, %if.end42.if.end47_crit_edge
  %lm48 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %42, i32 0, i32 2
  %45 = ptrtoint ptr %lm48 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lm48, align 4
  %name = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 3
  %47 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %46, ptr noundef %48) #3
  %49 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mixer, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %arrayidx51 = getelementptr [8 x ptr], ptr %hwmixer, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %crtc, ptr %arrayidx51, align 4
  br i1 %tobool43.not, label %if.end47.cleanup60_crit_edge, label %if.then53

if.end47.cleanup60_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup60

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  %54 = ptrtoint ptr %r_mixer to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %r_mixer, align 4
  %lm54 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %lm54 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %lm54, align 4
  %58 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %57, ptr noundef %59) #3
  %60 = ptrtoint ptr %r_mixer to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %r_mixer, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %arrayidx58 = getelementptr [8 x ptr], ptr %hwmixer, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %crtc, ptr %arrayidx58, align 4
  br label %cleanup60

cleanup60:                                        ; preds = %if.then53, %if.end47.cleanup60_crit_edge, %land.lhs.true44.cleanup60_crit_edge, %for.end.cleanup60_crit_edge, %get_right_pair_idx.exit.cleanup60_crit_edge, %for.cond.i.cleanup60_crit_edge, %if.then18.cleanup60_crit_edge, %if.then
  %retval.4 = phi i32 [ %6, %if.then ], [ -12, %for.end.cleanup60_crit_edge ], [ -12, %land.lhs.true44.cleanup60_crit_edge ], [ 0, %if.then53 ], [ 0, %if.end47.cleanup60_crit_edge ], [ -22, %for.cond.i.cleanup60_crit_edge ], [ -22, %get_right_pair_idx.exit.cleanup60_crit_edge ], [ -22, %if.then18.cleanup60_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_get_global_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp5_mixer_release(ptr noundef %s, ptr noundef readonly %mixer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mdp5_get_global_state(ptr noundef %s) #3
  %hwmixer = getelementptr inbounds %struct.mdp5_global_state, ptr %call, i32 0, i32 4
  %tobool.not = icmp eq ptr %mixer, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mixer, align 4
  %arrayidx = getelementptr [8 x ptr], ptr %hwmixer, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %do.end, label %if.end26, !prof !33

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 127, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %name = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %mixer, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %name30 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %name30 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name30, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef %5, ptr noundef %7) #3
  %8 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mixer, align 4
  %arrayidx33 = getelementptr [8 x ptr], ptr %hwmixer, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx33, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp5_mixer_destroy(ptr noundef %mixer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %mixer) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mdp5_mixer_init(ptr nocapture noundef readonly %lm) local_unnamed_addr #0 align 64 {
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
  %1 = ptrtoint ptr %lm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lm, align 4
  %arrayidx = getelementptr [6 x ptr], ptr @mixer_names, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %name = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %name, align 4
  %lm3 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %lm3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %2, ptr %lm3, align 8
  %caps = getelementptr inbounds %struct.mdp5_lm_instance, ptr %lm, i32 0, i32 3
  %7 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %caps, align 4
  %caps4 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %caps4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %caps4, align 4
  %pp = getelementptr inbounds %struct.mdp5_lm_instance, ptr %lm, i32 0, i32 1
  %10 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pp, align 4
  %pp5 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %pp5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pp5, align 8
  %dspp = getelementptr inbounds %struct.mdp5_lm_instance, ptr %lm, i32 0, i32 2
  %13 = ptrtoint ptr %dspp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dspp, align 4
  %dspp6 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %dspp6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dspp6, align 4
  %call8 = tail call i32 @mdp_ctl_flush_mask_lm(i32 noundef %2) #3
  %flush_mask = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %call7.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %flush_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call8, ptr %flush_mask, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp_ctl_flush_mask_lm(i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mixer.c", i32 107, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mixer.c", i32 111, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mixer.c", i32 127, i32 6}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mixer.c", i32 130, i32 2}
!8 = !{ptr @lm_right_pair, !9, !"lm_right_pair", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mixer.c", i32 17, i32 12}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mixer.c", i32 142, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mixer.c", i32 142, i32 9}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mixer.c", i32 142, i32 16}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mixer.c", i32 142, i32 23}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mixer.c", i32 142, i32 30}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mixer.c", i32 142, i32 37}
!22 = !{ptr @mixer_names, !23, !"mixer_names", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_mixer.c", i32 141, i32 27}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 1, i32 2000}
