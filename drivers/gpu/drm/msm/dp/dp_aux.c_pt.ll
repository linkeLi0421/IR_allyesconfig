; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/dp/dp_aux.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dp/dp_aux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.drm_dp_aux_msg = type { i32, i8, i8, ptr, i32 }
%struct.dp_aux_private = type { ptr, ptr, %struct.mutex, %struct.completion, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, %struct.drm_dp_aux }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid input\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dpu_dp_aux\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: failed to register drm aux: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.dp_aux_register = private unnamed_addr constant [16 x i8] c"dp_aux_register\00", align 1
@dp_aux_get.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&aux->mutex\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: invalid msg: size(%zu), request(%x)\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.dp_aux_transfer = private unnamed_addr constant [16 x i8] c"dp_aux_transfer\00", align 1
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"buf size greater than allowed size of 128 bytes\0A\00", [47 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 48, i64 80]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 112, i64 240]
@__sancov_gen_cov_switch_values.8 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 401, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 476, i32 21 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 481, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 509, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 329, i32 3 }
@___asan_gen_.28 = private constant [35 x i8] c"../drivers/gpu/drm/msm/dp/dp_aux.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 65, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 87, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dp_aux_get.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @init_completion.__key, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_aux_get.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_aux_isr(ptr noundef %dp_aux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_aux, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %catalog = getelementptr i8, ptr %dp_aux, i32 -180
  %0 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %catalog, align 4
  %call = tail call i32 @dp_catalog_aux_get_irq(ptr noundef %1) #3
  %cmd_busy = getelementptr i8, ptr %dp_aux, i32 -20
  %2 = ptrtoint ptr %cmd_busy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmd_busy, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %native = getelementptr i8, ptr %dp_aux, i32 -19
  %4 = ptrtoint ptr %native to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %native, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  %and.i15 = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15)
  %tobool.not.i16 = icmp eq i32 %and.i15, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end3
  br i1 %tobool.not.i16, label %if.else.i, label %if.then5.if.end11.sink.split.i_crit_edge

if.then5.if.end11.sink.split.i_crit_edge:         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.sink.split.i

if.else.i:                                        ; preds = %if.then5
  %and1.i = and i32 %call, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.else5.i, label %if.else.i.if.end11.sink.split.i_crit_edge

if.else.i.if.end11.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.sink.split.i

if.else5.i:                                       ; preds = %if.else.i
  %and6.i = and i32 %call, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else5.i.if.end11.i_crit_edge, label %if.else5.i.if.end11.sink.split.i_crit_edge

if.else5.i.if.end11.sink.split.i_crit_edge:       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.sink.split.i

if.else5.i.if.end11.i_crit_edge:                  ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i

if.end11.sink.split.i:                            ; preds = %if.else5.i.if.end11.sink.split.i_crit_edge, %if.else.i.if.end11.sink.split.i_crit_edge, %if.then5.if.end11.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 0, %if.then5.if.end11.sink.split.i_crit_edge ], [ 1, %if.else.i.if.end11.sink.split.i_crit_edge ], [ 2, %if.else5.i.if.end11.sink.split.i_crit_edge ]
  %aux_error_num4.i = getelementptr i8, ptr %dp_aux, i32 -28
  %6 = ptrtoint ptr %aux_error_num4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink.i, ptr %aux_error_num4.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end11.sink.split.i, %if.else5.i.if.end11.i_crit_edge
  %and12.i = and i32 %call, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end16.i_crit_edge, label %if.then14.i

if.end11.i.if.end16.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #5
  %aux_error_num15.i = getelementptr i8, ptr %dp_aux, i32 -28
  %7 = ptrtoint ptr %aux_error_num15.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %aux_error_num15.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end16.i_crit_edge
  %and17.i = and i32 %call, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end6_crit_edge, label %if.then19.i

if.end16.i.if.end6_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #5
  %aux_error_num20.i = getelementptr i8, ptr %dp_aux, i32 -28
  %8 = ptrtoint ptr %aux_error_num20.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %aux_error_num20.i, align 4
  %9 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %catalog, align 4
  %call.i = tail call i32 @dp_catalog_aux_clear_hw_interrupts(ptr noundef %10) #3
  br label %if.end6

if.else:                                          ; preds = %if.end3
  br i1 %tobool.not.i16, label %if.else5.i23, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %and1.i17 = and i32 %call, 2359296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i17)
  %tobool2.not.i18 = icmp eq i32 %and1.i17, 0
  %aux_error_num4.i19 = getelementptr i8, ptr %dp_aux, i32 -28
  br i1 %tobool2.not.i18, label %if.else.i20, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %aux_error_num4.i19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %aux_error_num4.i19, align 4
  br label %if.end6

if.else.i20:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %aux_error_num4.i19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %aux_error_num4.i19, align 4
  br label %if.end6

if.else5.i23:                                     ; preds = %if.else
  %and6.i21 = and i32 %call, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i21)
  %tobool7.not.i22 = icmp eq i32 %and6.i21, 0
  br i1 %tobool7.not.i22, label %if.else10.i, label %if.else5.i23.if.end16.sink.split.i_crit_edge

if.else5.i23.if.end16.sink.split.i_crit_edge:     ; preds = %if.else5.i23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16.sink.split.i

if.else10.i:                                      ; preds = %if.else5.i23
  %and11.i = and i32 %call, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.else10.i.if.end16.i27_crit_edge, label %if.else10.i.if.end16.sink.split.i_crit_edge

if.else10.i.if.end16.sink.split.i_crit_edge:      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16.sink.split.i

if.else10.i.if.end16.i27_crit_edge:               ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16.i27

if.end16.sink.split.i:                            ; preds = %if.else10.i.if.end16.sink.split.i_crit_edge, %if.else5.i23.if.end16.sink.split.i_crit_edge
  %.sink.i24 = phi i32 [ 1, %if.else5.i23.if.end16.sink.split.i_crit_edge ], [ 2, %if.else10.i.if.end16.sink.split.i_crit_edge ]
  %aux_error_num14.i = getelementptr i8, ptr %dp_aux, i32 -28
  %13 = ptrtoint ptr %aux_error_num14.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink.i24, ptr %aux_error_num14.i, align 4
  br label %if.end16.i27

if.end16.i27:                                     ; preds = %if.end16.sink.split.i, %if.else10.i.if.end16.i27_crit_edge
  %and17.i25 = and i32 %call, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i25)
  %tobool18.not.i26 = icmp eq i32 %and17.i25, 0
  br i1 %tobool18.not.i26, label %if.end16.i27.if.end21.i_crit_edge, label %if.then19.i29

if.end16.i27.if.end21.i_crit_edge:                ; preds = %if.end16.i27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21.i

if.then19.i29:                                    ; preds = %if.end16.i27
  call void @__sanitizer_cov_trace_pc() #5
  %aux_error_num20.i28 = getelementptr i8, ptr %dp_aux, i32 -28
  %14 = ptrtoint ptr %aux_error_num20.i28 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5, ptr %aux_error_num20.i28, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i29, %if.end16.i27.if.end21.i_crit_edge
  %and22.i = and i32 %call, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.if.end26.i_crit_edge, label %if.then24.i

if.end21.i.if.end26.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #5
  %aux_error_num25.i = getelementptr i8, ptr %dp_aux, i32 -28
  %15 = ptrtoint ptr %aux_error_num25.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %aux_error_num25.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end26.i_crit_edge
  %and27.i = and i32 %call, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end26.i.if.end31.i_crit_edge, label %if.then29.i

if.end26.i.if.end31.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #5
  %aux_error_num30.i = getelementptr i8, ptr %dp_aux, i32 -28
  %16 = ptrtoint ptr %aux_error_num30.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %aux_error_num30.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then29.i, %if.end26.i.if.end31.i_crit_edge
  %and32.i = and i32 %call, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end31.i.if.end6_crit_edge, label %if.then34.i

if.end31.i.if.end6_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #5
  %aux_error_num35.i = getelementptr i8, ptr %dp_aux, i32 -28
  %17 = ptrtoint ptr %aux_error_num35.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 6, ptr %aux_error_num35.i, align 4
  %18 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %catalog, align 4
  %call.i31 = tail call i32 @dp_catalog_aux_clear_hw_interrupts(ptr noundef %19) #3
  br label %if.end6

if.end6:                                          ; preds = %if.then34.i, %if.end31.i.if.end6_crit_edge, %if.else.i20, %if.then3.i, %if.then19.i, %if.end16.i.if.end6_crit_edge
  %comp = getelementptr i8, ptr %dp_aux, i32 -84
  tail call void @complete(ptr noundef %comp) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_aux_get_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_aux_reconfig(ptr nocapture noundef readonly %dp_aux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %catalog = getelementptr i8, ptr %dp_aux, i32 -180
  %0 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %catalog, align 4
  tail call void @dp_catalog_aux_update_cfg(ptr noundef %1) #3
  %2 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %catalog, align 4
  tail call void @dp_catalog_aux_reset(ptr noundef %3) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_aux_update_cfg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_aux_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_aux_init(ptr noundef %dp_aux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_aux, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %mutex = getelementptr i8, ptr %dp_aux, i32 -176
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %catalog = getelementptr i8, ptr %dp_aux, i32 -180
  %0 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %catalog, align 4
  tail call void @dp_catalog_aux_enable(ptr noundef %1, i1 noundef zeroext true) #3
  %retry_cnt = getelementptr i8, ptr %dp_aux, i32 -24
  %2 = ptrtoint ptr %retry_cnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %retry_cnt, align 8
  %initted = getelementptr i8, ptr %dp_aux, i32 -15
  %3 = ptrtoint ptr %initted to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %initted, align 1
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_aux_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_aux_deinit(ptr noundef %dp_aux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %dp_aux, i32 -176
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %initted = getelementptr i8, ptr %dp_aux, i32 -15
  %0 = ptrtoint ptr %initted to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %initted, align 1
  %catalog = getelementptr i8, ptr %dp_aux, i32 -180
  %1 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %catalog, align 4
  tail call void @dp_catalog_aux_enable(ptr noundef %2, i1 noundef zeroext false) #3
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_aux_register(ptr noundef %dp_aux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_aux, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dp_aux, i32 -184
  %0 = ptrtoint ptr %dp_aux to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.1, ptr %dp_aux, align 8
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %dev3 = getelementptr inbounds %struct.drm_dp_aux, ptr %dp_aux, i32 0, i32 2
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %dev3, align 8
  %transfer = getelementptr inbounds %struct.drm_dp_aux, ptr %dp_aux, i32 0, i32 8
  %4 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @dp_aux_transfer, ptr %transfer, align 8
  %call = tail call i32 @drm_dp_aux_register(ptr noundef nonnull %dp_aux) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dp_aux_register, i32 noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then7 ], [ -22, %if.then ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_aux_transfer(ptr noundef %dp_aux, ptr nocapture noundef %msg) #0 align 64 {
entry:
  %helper_msg.i = alloca %struct.drm_dp_aux_msg, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dp_aux, i32 -184
  %request = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %request, align 4
  %2 = and i8 %1, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp ne i8 %2, 0
  %native = getelementptr i8, ptr %dp_aux, i32 -19
  %.lobit = lshr exact i8 %2, 3
  %3 = ptrtoint ptr %native to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.lobit, ptr %native, align 1
  %size = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 4
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %buffer = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 3
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %reply = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %reply to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %reply, align 1
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp12 = icmp ugt i32 %5, 16
  %or.cond = select i1 %tobool.not, i1 %cmp12, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %5)
  %cmp16 = icmp ugt i32 %5, 128
  %or.cond139 = select i1 %or.cond, i1 true, i1 %cmp16
  br i1 %or.cond139, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %request, align 4
  %conv21 = zext i8 %10 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dp_aux_transfer, i32 noundef %5, i32 noundef %conv21) #3
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %mutex = getelementptr i8, ptr %dp_aux, i32 -176
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %initted = getelementptr i8, ptr %dp_aux, i32 -15
  %11 = ptrtoint ptr %initted to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %initted, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool23.not = icmp eq i8 %12, 0
  br i1 %tobool23.not, label %if.end22.exit_crit_edge, label %if.end25

if.end22.exit_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit

if.end25:                                         ; preds = %if.end22
  %13 = ptrtoint ptr %native to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %native, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool1.not.i = icmp eq i8 %14, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %if.end25.dp_aux_update_offset_and_segment.exit_crit_edge

if.end25.dp_aux_update_offset_and_segment.exit_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_aux_update_offset_and_segment.exit

lor.lhs.false.i:                                  ; preds = %if.end25
  %15 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %request, align 4
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.dp_aux_update_offset_and_segment.exit_crit_edge

lor.lhs.false.i.dp_aux_update_offset_and_segment.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_aux_update_offset_and_segment.exit

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %lor.lhs.false5.i.dp_aux_update_offset_and_segment.exit_crit_edge [
    i32 80, label %lor.lhs.false5.i.if.end.i_crit_edge
    i32 48, label %lor.lhs.false5.i.if.end.i_crit_edge140
  ]

lor.lhs.false5.i.if.end.i_crit_edge140:           ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

lor.lhs.false5.i.if.end.i_crit_edge:              ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

lor.lhs.false5.i.dp_aux_update_offset_and_segment.exit_crit_edge: ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_aux_update_offset_and_segment.exit

if.end.i:                                         ; preds = %lor.lhs.false5.i.if.end.i_crit_edge, %lor.lhs.false5.i.if.end.i_crit_edge140
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %19)
  %cmp11.i = icmp eq i32 %19, 48
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv14.i = zext i8 %24 to i32
  br i1 %cmp11.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %segment.i = getelementptr i8, ptr %dp_aux, i32 -8
  %25 = ptrtoint ptr %segment.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv14.i, ptr %segment.i, align 8
  br label %dp_aux_update_offset_and_segment.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %offset.i = getelementptr i8, ptr %dp_aux, i32 -12
  %26 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv14.i, ptr %offset.i, align 4
  br label %dp_aux_update_offset_and_segment.exit

dp_aux_update_offset_and_segment.exit:            ; preds = %if.else.i, %if.then13.i, %lor.lhs.false5.i.dp_aux_update_offset_and_segment.exit_crit_edge, %lor.lhs.false.i.dp_aux_update_offset_and_segment.exit_crit_edge, %if.end25.dp_aux_update_offset_and_segment.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %helper_msg.i) #3
  %27 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %request, align 4
  %29 = and i8 %28, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %29)
  %.not.i = icmp eq i8 %29, 5
  br i1 %.not.i, label %lor.lhs.false9.i, label %dp_aux_update_offset_and_segment.exit.dp_aux_transfer_helper.exit_crit_edge

dp_aux_update_offset_and_segment.exit.dp_aux_transfer_helper.exit_crit_edge: ; preds = %dp_aux_update_offset_and_segment.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_aux_transfer_helper.exit

lor.lhs.false9.i:                                 ; preds = %dp_aux_update_offset_and_segment.exit
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i = icmp eq i32 %31, 0
  br i1 %cmp.i, label %lor.lhs.false9.i.dp_aux_transfer_helper.exit_crit_edge, label %if.end.i136

lor.lhs.false9.i.dp_aux_transfer_helper.exit_crit_edge: ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_aux_transfer_helper.exit

if.end.i136:                                      ; preds = %lor.lhs.false9.i
  %offset.i135 = getelementptr i8, ptr %dp_aux, i32 -12
  %32 = ptrtoint ptr %offset.i135 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset.i135, align 4
  %rem.i = and i32 %33, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool11.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool11.not.i, label %if.end.i136.end.i_crit_edge, label %if.end15.i

if.end.i136.end.i_crit_edge:                      ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #5
  br label %end.i

if.end15.i:                                       ; preds = %if.end.i136
  %read.i = getelementptr i8, ptr %dp_aux, i32 -18
  %34 = ptrtoint ptr %read.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %read.i, align 2
  %cmd_busy.i = getelementptr i8, ptr %dp_aux, i32 -20
  %35 = ptrtoint ptr %cmd_busy.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %cmd_busy.i, align 4
  %no_send_addr.i = getelementptr i8, ptr %dp_aux, i32 -17
  %36 = ptrtoint ptr %no_send_addr.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %no_send_addr.i, align 1
  %no_send_stop.i = getelementptr i8, ptr %dp_aux, i32 -16
  %37 = ptrtoint ptr %no_send_stop.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %no_send_stop.i, align 8
  %segment.i137 = getelementptr i8, ptr %dp_aux, i32 -8
  %38 = ptrtoint ptr %segment.i137 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %segment.i137, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool16.not.i = icmp eq i32 %39, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end20.i_crit_edge, label %if.then17.i

if.end15.i.if.end20.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #5
  %40 = getelementptr inbounds i8, ptr %helper_msg.i, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %40, align 4
  %42 = ptrtoint ptr %helper_msg.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 48, ptr %helper_msg.i, align 4
  %buffer.i138 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %helper_msg.i, i32 0, i32 3
  %43 = ptrtoint ptr %buffer.i138 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %segment.i137, ptr %buffer.i138, align 4
  %size19.i = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %helper_msg.i, i32 0, i32 4
  %44 = ptrtoint ptr %size19.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %size19.i, align 4
  %call.i = call fastcc i32 @dp_aux_cmd_fifo_tx(ptr noundef %add.ptr, ptr noundef nonnull %helper_msg.i) #3
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.end15.i.if.end20.i_crit_edge
  %45 = getelementptr inbounds i8, ptr %helper_msg.i, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %45, align 4
  %47 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msg, align 4
  %49 = ptrtoint ptr %helper_msg.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %helper_msg.i, align 4
  %buffer24.i = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %helper_msg.i, i32 0, i32 3
  %50 = ptrtoint ptr %buffer24.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %offset.i135, ptr %buffer24.i, align 4
  %size25.i = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %helper_msg.i, i32 0, i32 4
  %51 = ptrtoint ptr %size25.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %size25.i, align 4
  %call26.i = call fastcc i32 @dp_aux_cmd_fifo_tx(ptr noundef %add.ptr, ptr noundef nonnull %helper_msg.i) #3
  %52 = ptrtoint ptr %offset.i135 to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr.i = load i32, ptr %offset.i135, align 4
  br label %end.i

end.i:                                            ; preds = %if.end20.i, %if.end.i136.end.i_crit_edge
  %53 = phi i32 [ %33, %if.end.i136.end.i_crit_edge ], [ %.pr.i, %if.end20.i ]
  %add.i = add i32 %53, 16
  %54 = ptrtoint ptr %offset.i135 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.i, ptr %offset.i135, align 4
  %55 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %53, label %end.i.dp_aux_transfer_helper.exit_crit_edge [
    i32 112, label %end.i.if.then35.i_crit_edge
    i32 240, label %end.i.if.then35.i_crit_edge141
  ]

end.i.if.then35.i_crit_edge141:                   ; preds = %end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then35.i

end.i.if.then35.i_crit_edge:                      ; preds = %end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then35.i

end.i.dp_aux_transfer_helper.exit_crit_edge:      ; preds = %end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_aux_transfer_helper.exit

if.then35.i:                                      ; preds = %end.i.if.then35.i_crit_edge, %end.i.if.then35.i_crit_edge141
  %segment36.i = getelementptr i8, ptr %dp_aux, i32 -8
  %56 = ptrtoint ptr %segment36.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %segment36.i, align 8
  br label %dp_aux_transfer_helper.exit

dp_aux_transfer_helper.exit:                      ; preds = %if.then35.i, %end.i.dp_aux_transfer_helper.exit_crit_edge, %lor.lhs.false9.i.dp_aux_transfer_helper.exit_crit_edge, %dp_aux_update_offset_and_segment.exit.dp_aux_transfer_helper.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %helper_msg.i) #3
  %57 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %request, align 4
  %59 = and i8 %58, 1
  %read = getelementptr i8, ptr %dp_aux, i32 -18
  %60 = ptrtoint ptr %read to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %read, align 2
  %cmd_busy = getelementptr i8, ptr %dp_aux, i32 -20
  %61 = ptrtoint ptr %cmd_busy to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %cmd_busy, align 4
  %62 = xor i8 %59, 1
  %63 = getelementptr i8, ptr %dp_aux, i32 -17
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %63, align 1
  %65 = getelementptr i8, ptr %dp_aux, i32 -16
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %62, ptr %65, align 8
  %call = tail call fastcc i32 @dp_aux_cmd_fifo_tx(ptr noundef %add.ptr, ptr noundef %msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp37 = icmp slt i32 %call, 0
  br i1 %cmp37, label %if.then39, label %if.else54

if.then39:                                        ; preds = %dp_aux_transfer_helper.exit
  %67 = ptrtoint ptr %native to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %native, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool41.not = icmp eq i8 %68, 0
  br i1 %tobool41.not, label %if.then39.if.end47_crit_edge, label %if.then42

if.then39.if.end47_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

if.then42:                                        ; preds = %if.then39
  %retry_cnt = getelementptr i8, ptr %dp_aux, i32 -24
  %69 = ptrtoint ptr %retry_cnt to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %retry_cnt, align 8
  %inc = add i32 %70, 1
  store i32 %inc, ptr %retry_cnt, align 8
  %rem = urem i32 %inc, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool44.not = icmp eq i32 %rem, 0
  br i1 %tobool44.not, label %if.then45, label %if.then42.if.end47_crit_edge

if.then42.if.end47_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #5
  %catalog = getelementptr i8, ptr %dp_aux, i32 -180
  %71 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %catalog, align 4
  tail call void @dp_catalog_aux_update_cfg(ptr noundef %72) #3
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.then42.if.end47_crit_edge, %if.then39.if.end47_crit_edge
  %catalog48 = getelementptr i8, ptr %dp_aux, i32 -180
  %73 = ptrtoint ptr %catalog48 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %catalog48, align 4
  %call49 = tail call i32 @dp_catalog_link_is_connected(ptr noundef %74) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end47.if.end82_crit_edge, label %if.then51

if.end47.if.end82_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end82

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  %75 = ptrtoint ptr %catalog48 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %catalog48, align 4
  tail call void @dp_catalog_aux_reset(ptr noundef %76) #3
  br label %if.end82

if.else54:                                        ; preds = %dp_aux_transfer_helper.exit
  %retry_cnt55 = getelementptr i8, ptr %dp_aux, i32 -24
  %77 = ptrtoint ptr %retry_cnt55 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %retry_cnt55, align 8
  %aux_error_num = getelementptr i8, ptr %dp_aux, i32 -28
  %78 = ptrtoint ptr %aux_error_num to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %aux_error_num, align 4
  %80 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %79, label %if.else54.if.end82_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb67
    i32 6, label %if.else54.sw.bb74_crit_edge
    i32 1, label %if.else54.sw.bb74_crit_edge142
    i32 3, label %if.else54.sw.bb74_crit_edge143
    i32 5, label %if.else54.sw.bb74_crit_edge144
    i32 2, label %sw.bb81
  ]

if.else54.sw.bb74_crit_edge144:                   ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb74

if.else54.sw.bb74_crit_edge143:                   ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb74

if.else54.sw.bb74_crit_edge142:                   ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb74

if.else54.sw.bb74_crit_edge:                      ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb74

if.else54.if.end82_crit_edge:                     ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end82

sw.bb:                                            ; preds = %if.else54
  %81 = ptrtoint ptr %read to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %read, align 2, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool57.not = icmp eq i8 %82, 0
  br i1 %tobool57.not, label %sw.bb.if.end60_crit_edge, label %if.then58

sw.bb.if.end60_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end60

if.then58:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %call59 = tail call fastcc i32 @dp_aux_cmd_fifo_rx(ptr noundef %add.ptr, ptr noundef %msg)
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %sw.bb.if.end60_crit_edge
  %ret.0 = phi i32 [ %call59, %if.then58 ], [ %call, %sw.bb.if.end60_crit_edge ]
  %reply66 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 2
  %83 = ptrtoint ptr %reply66 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %reply66, align 1
  br label %if.end82

sw.bb67:                                          ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #5
  %84 = ptrtoint ptr %native to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %native, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool69.not = icmp eq i8 %85, 0
  %conv72 = select i1 %tobool69.not, i8 8, i8 2
  %reply73 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 2
  %86 = ptrtoint ptr %reply73 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv72, ptr %reply73, align 1
  br label %if.end82

sw.bb74:                                          ; preds = %if.else54.sw.bb74_crit_edge, %if.else54.sw.bb74_crit_edge142, %if.else54.sw.bb74_crit_edge143, %if.else54.sw.bb74_crit_edge144
  %87 = ptrtoint ptr %native to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %native, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool76.not = icmp eq i8 %88, 0
  %conv79 = select i1 %tobool76.not, i8 4, i8 1
  %reply80 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 2
  %89 = ptrtoint ptr %reply80 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv79, ptr %reply80, align 1
  br label %if.end82

sw.bb81:                                          ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end82

if.end82:                                         ; preds = %sw.bb81, %sw.bb74, %sw.bb67, %if.end60, %if.else54.if.end82_crit_edge, %if.then51, %if.end47.if.end82_crit_edge
  %ret.1 = phi i32 [ %call, %if.then51 ], [ %call, %if.end47.if.end82_crit_edge ], [ %call, %if.else54.if.end82_crit_edge ], [ -110, %sw.bb81 ], [ %call, %sw.bb74 ], [ %call, %sw.bb67 ], [ %ret.0, %if.end60 ]
  %90 = ptrtoint ptr %cmd_busy to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %cmd_busy, align 4
  br label %exit

exit:                                             ; preds = %if.end82, %if.end22.exit_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.end82 ], [ -5, %if.end22.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then18, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ -22, %if.then18 ], [ %ret.2, %exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_aux_unregister(ptr noundef %dp_aux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_dp_aux_unregister(ptr noundef %dp_aux) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dp_aux_get(ptr noundef %dev, ptr noundef %catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %catalog, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1920, i32 noundef 3520) #3
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %comp = getelementptr inbounds %struct.dp_aux_private, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.dp_aux_private, ptr %call.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #3
  %cmd_busy = getelementptr inbounds %struct.dp_aux_private, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %cmd_busy to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %cmd_busy, align 4
  %mutex = getelementptr inbounds %struct.dp_aux_private, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @dp_aux_get.__key) #3
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 8
  %catalog7 = getelementptr inbounds %struct.dp_aux_private, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %catalog7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %catalog, ptr %catalog7, align 4
  %retry_cnt = getelementptr inbounds %struct.dp_aux_private, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %retry_cnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %retry_cnt, align 8
  %dp_aux = getelementptr inbounds %struct.dp_aux_private, ptr %call.i, i32 0, i32 14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %dp_aux, %if.end5 ], [ inttoptr (i32 -19 to ptr), %if.then ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_aux_put(ptr noundef %dp_aux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_aux, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr i8, ptr %dp_aux, i32 -184
  %mutex = getelementptr i8, ptr %dp_aux, i32 -176
  tail call void @mutex_destroy(ptr noundef %mutex) #3
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call void @devm_kfree(ptr noundef %1, ptr noundef %add.ptr) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_aux_clear_hw_interrupts(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dp_aux_cmd_fifo_tx(ptr noundef %aux, ptr nocapture noundef readonly %msg) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %comp = getelementptr inbounds %struct.dp_aux_private, ptr %aux, i32 0, i32 3
  %0 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %comp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #3
  %1 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 1
  %2 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 2
  %3 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 3
  %buffer.i = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 3
  %4 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer.i, align 4
  %read.i = getelementptr inbounds %struct.dp_aux_private, ptr %aux, i32 0, i32 8
  %6 = ptrtoint ptr %read.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %read.i, align 2, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then5.i

if.end.i:                                         ; preds = %entry
  %size.i = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 4
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 124, i32 %9)
  %cmp.i = icmp sgt i32 %9, 124
  br i1 %cmp.i, label %dp_aux_write.exit.thread, label %if.end2.thread.i

if.end2.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg, align 4
  %shr99.i = lshr i32 %11, 16
  %12 = trunc i32 %shr99.i to i8
  %conv100.i = and i8 %12, 15
  br label %if.end9.i

dp_aux_write.exit.thread:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #3
  br label %cleanup

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg, align 4
  %shr.i = lshr i32 %14, 16
  %15 = trunc i32 %shr.i to i8
  %conv.i = and i8 %15, 15
  %16 = or i8 %conv.i, 16
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then5.i, %if.end2.thread.i
  %storemerge.i = phi i8 [ %16, %if.then5.i ], [ %conv100.i, %if.end2.thread.i ]
  %17 = phi i32 [ %14, %if.then5.i ], [ %11, %if.end2.thread.i ]
  %len.097101.i = phi i32 [ 0, %if.then5.i ], [ %9, %if.end2.thread.i ]
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %storemerge.i, ptr %data.i, align 1
  %shr11.i = lshr i32 %17, 8
  %conv12.i = trunc i32 %shr11.i to i8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv12.i, ptr %1, align 1
  %conv15.i = trunc i32 %17 to i8
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv15.i, ptr %2, align 1
  %size17.i = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 4
  %21 = ptrtoint ptr %size17.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size17.i, align 4
  %23 = trunc i32 %22 to i8
  %conv18.i = add i8 %23, -1
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv18.i, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %len.097101.i)
  %cmp20102.i = icmp sgt i32 %len.097101.i, -4
  br i1 %cmp20102.i, label %for.body.lr.ph.i, label %if.end9.i.for.end.i_crit_edge

if.end9.i.for.end.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end9.i
  %catalog.i = getelementptr inbounds %struct.dp_aux_private, ptr %aux, i32 0, i32 1
  %25 = add nsw i32 %len.097101.i, 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0103.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0103.i)
  %cmp22.i = icmp ult i32 %i.0103.i, 4
  %arrayidx24.i = getelementptr [4 x i8], ptr %data.i, i32 0, i32 %i.0103.i
  %sub26.i = add nsw i32 %i.0103.i, -4
  %arrayidx27.i = getelementptr i8, ptr %5, i32 %sub26.i
  %cond.in.in.i = select i1 %cmp22.i, ptr %arrayidx24.i, ptr %arrayidx27.i
  %26 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %cond.in.i = load i8, ptr %cond.in.in.i, align 1
  %cond.i = zext i8 %cond.in.i to i32
  %shl.i = shl nuw nsw i32 %cond.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0103.i)
  %cmp31.i = icmp eq i32 %i.0103.i, 0
  %or34.i = or i32 %shl.i, -2147483648
  %reg.0.i = select i1 %cmp31.i, i32 %or34.i, i32 %shl.i
  %27 = ptrtoint ptr %catalog.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %catalog.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %reg.0.i, ptr %28, align 4
  %30 = load ptr, ptr %catalog.i, align 4
  %call.i = tail call i32 @dp_catalog_aux_write_data(ptr noundef %30) #3
  %inc.i = add nuw nsw i32 %i.0103.i, 1
  %exitcond.not.i = icmp eq i32 %i.0103.i, %25
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end9.i.for.end.i_crit_edge
  %catalog37.i = getelementptr inbounds %struct.dp_aux_private, ptr %aux, i32 0, i32 1
  %31 = ptrtoint ptr %catalog37.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %catalog37.i, align 4
  %call38.i = tail call i32 @dp_catalog_aux_clear_trans(ptr noundef %32, i1 noundef zeroext false) #3
  %33 = ptrtoint ptr %catalog37.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %catalog37.i, align 4
  %call40.i = tail call i32 @dp_catalog_aux_clear_hw_interrupts(ptr noundef %34) #3
  %native.i = getelementptr inbounds %struct.dp_aux_private, ptr %aux, i32 0, i32 7
  %35 = ptrtoint ptr %native.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %native.i, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool41.not.i = icmp eq i8 %36, 0
  br i1 %tobool41.not.i, label %if.then42.i, label %for.end.i.dp_aux_write.exit_crit_edge

for.end.i.dp_aux_write.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_aux_write.exit

if.then42.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %no_send_addr.i = getelementptr inbounds %struct.dp_aux_private, ptr %aux, i32 0, i32 9
  %37 = ptrtoint ptr %no_send_addr.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %no_send_addr.i, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool44.not.i = icmp eq i8 %38, 0
  %spec.select.i = select i1 %tobool44.not.i, i32 256, i32 1280
  %no_send_stop.i = getelementptr inbounds %struct.dp_aux_private, ptr %aux, i32 0, i32 10
  %39 = ptrtoint ptr %no_send_stop.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %no_send_stop.i, align 8, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool48.not.i = icmp eq i8 %40, 0
  %or50.i = or i32 %spec.select.i, 2048
  %spec.select94.i = select i1 %tobool48.not.i, i32 %spec.select.i, i32 %or50.i
  %phi.bo.i = or i32 %spec.select94.i, 512
  br label %dp_aux_write.exit

dp_aux_write.exit:                                ; preds = %if.then42.i, %for.end.i.dp_aux_write.exit_crit_edge
  %reg.2.i = phi i32 [ 512, %for.end.i.dp_aux_write.exit_crit_edge ], [ %phi.bo.i, %if.then42.i ]
  %41 = ptrtoint ptr %catalog37.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %catalog37.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %reg.2.i, ptr %42, align 4
  %44 = load ptr, ptr %catalog37.i, align 4
  %call57.i = tail call i32 @dp_catalog_aux_write_trans(ptr noundef %44) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.097101.i)
  %cmp = icmp slt i32 %len.097101.i, 0
  br i1 %cmp, label %dp_aux_write.exit.cleanup_crit_edge, label %if.end

dp_aux_write.exit.cleanup_crit_edge:              ; preds = %dp_aux_write.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %dp_aux_write.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call i32 @wait_for_completion_timeout(ptr noundef %comp, i32 noundef 25) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %.call = select i1 %tobool.not, i32 -110, i32 %len.097101.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dp_aux_write.exit.cleanup_crit_edge, %dp_aux_write.exit.thread
  %retval.0 = phi i32 [ %len.097101.i, %dp_aux_write.exit.cleanup_crit_edge ], [ %.call, %if.end ], [ -22, %dp_aux_write.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_link_is_connected(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dp_aux_cmd_fifo_rx(ptr nocapture noundef readonly %aux, ptr nocapture noundef readonly %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 4
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %catalog = getelementptr inbounds %struct.dp_aux_private, ptr %aux, i32 0, i32 1
  %2 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %catalog, align 4
  %call = tail call i32 @dp_catalog_aux_clear_trans(ptr noundef %3, i1 noundef zeroext true) #3
  %4 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %catalog, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -2147483647, ptr %5, align 4
  %7 = load ptr, ptr %catalog, align 4
  %call3 = tail call i32 @dp_catalog_aux_write_data(ptr noundef %7) #3
  %buffer = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %10 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %catalog, align 4
  %call5 = tail call i32 @dp_catalog_aux_read_data(ptr noundef %11) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp23.not = icmp eq i32 %1, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %dp.024 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %9, %entry.for.body_crit_edge ]
  %12 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %catalog, align 4
  %call7 = tail call i32 @dp_catalog_aux_read_data(ptr noundef %13) #3
  %shr = lshr i32 %call7, 8
  %conv = trunc i32 %shr to i8
  %14 = ptrtoint ptr %dp.024 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %dp.024, align 1
  %shr8 = lshr i32 %call7, 16
  %and9 = and i32 %shr8, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %i.025, i32 %and9)
  %cmp10.not = icmp eq i32 %i.025, %and9
  br i1 %cmp10.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr i8, ptr %dp.024, i32 1
  %inc = add nuw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.025, %for.body.for.end_crit_edge ], [ %1, %for.inc.for.end_crit_edge ]
  ret i32 %i.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_aux_write_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_aux_clear_trans(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_aux_write_trans(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_aux_read_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/dp/dp_aux.c", i32 401, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/dp/dp_aux.c", i32 476, i32 21}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/dp/dp_aux.c", i32 481, i32 3}
!6 = !{ptr @__func__.dp_aux_register, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @dp_aux_get.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/dp/dp_aux.c", i32 509, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/dp/dp_aux.c", i32 329, i32 3}
!12 = !{ptr @__func__.dp_aux_transfer, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/dp/dp_aux.c", i32 65, i32 3}
!15 = !{ptr @init_completion.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../include/linux/completion.h", i32 87, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i8 0, i8 2}
