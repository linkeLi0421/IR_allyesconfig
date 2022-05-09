; ModuleID = '/llk/IR_all_yes/sound/virtio/virtio_jack.c_pt.bc'
source_filename = "../sound/virtio/virtio_jack.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.virtio_device_id = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_snd = type { ptr, [4 x %struct.virtio_snd_queue], ptr, %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, ptr, i32 }
%struct.virtio_snd_queue = type { %struct.spinlock, ptr }
%struct.virtio_snd_jack_info = type { %struct.virtio_snd_info, i32, i32, i32, i8, [7 x i8] }
%struct.virtio_snd_info = type { i32 }
%struct.virtio_jack = type { ptr, i32, i32, i32, i32, i8, i32 }
%struct.snd_jack = type { %struct.list_head, ptr, ptr, ptr, i32, i32, [100 x i8], [6 x i32], i32, ptr, ptr }
%struct.virtio_snd_event = type { %struct.virtio_snd_hdr, i32 }
%struct.virtio_snd_hdr = type { i32 }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/virtio/virtio_jack.c\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Line Out\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Speaker\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Headphone\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CD\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HDMI Out\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SPDIF Out\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Line\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Aux\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SPDIF In\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Digital In\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Misc\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 10]
@__sancov_gen_cov_switch_values.13 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 8, i64 9, i64 10, i64 12, i64 13]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 4096, i64 4097]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 138, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 62, i32 10 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 64, i32 10 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 66, i32 10 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 68, i32 10 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 72, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 74, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 76, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 78, i32 10 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 80, i32 10 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 82, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 84, i32 10 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [30 x i8] c"../sound/virtio/virtio_jack.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 86, i32 10 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtsnd_jack_parse_cfg(ptr noundef %snd) local_unnamed_addr #0 align 64 {
entry:
  %virtio_cread_v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %snd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snd, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v) #5
  %2 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %virtio_cread_v, align 4, !annotation !35
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 138) #5
  %config = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 8
  %get = getelementptr inbounds %struct.virtio_config_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get, align 4
  call void %6(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %virtio_cread_v, i32 noundef 4) #5
  %7 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %virtio_cread_v, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %njacks = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 7
  %10 = ptrtoint ptr %njacks to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %njacks, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 28) #5
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !36

devm_kcalloc.exit.thread:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %jacks73 = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 6
  %13 = ptrtoint ptr %jacks73 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %jacks73, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end
  %dev = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 6
  %14 = extractvalue { i32, i1 } %11, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %14, i32 noundef 3520) #5
  %jacks = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 6
  %15 = ptrtoint ptr %jacks to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5.i.i, ptr %jacks, align 4
  %tobool11.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool11.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end13

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %devm_kcalloc.exit
  %16 = ptrtoint ptr %njacks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %njacks, align 4
  %18 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 24) #5
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %if.end13.cleanup_crit_edge, label %if.end7.i.i, !prof !36

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end13
  %20 = extractvalue { i32, i1 } %18, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #8
  %tobool16.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool16.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end18

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.end7.i.i
  %21 = ptrtoint ptr %njacks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %njacks, align 4
  %call20 = call i32 @virtsnd_ctl_query_info(ptr noundef %snd, i32 noundef 1, i32 noundef 0, i32 noundef %22, i32 noundef 24, ptr noundef nonnull %call8.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %for.cond.preheader, label %if.end18.on_exit_crit_edge

if.end18.on_exit_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %on_exit

for.cond.preheader:                               ; preds = %if.end18
  %23 = ptrtoint ptr %njacks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %njacks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp2582.not = icmp eq i32 %24, 0
  br i1 %cmp2582.not, label %for.cond.preheader.on_exit_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.on_exit_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %on_exit

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.083 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %25 = ptrtoint ptr %jacks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %jacks, align 4
  %arrayidx28 = getelementptr %struct.virtio_snd_jack_info, ptr %call8.i.i, i32 %i.083
  %27 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx28, align 8
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %nid = getelementptr %struct.virtio_jack, ptr %26, i32 %i.083, i32 1
  %30 = ptrtoint ptr %nid to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %nid, align 4
  %features = getelementptr %struct.virtio_snd_jack_info, ptr %call8.i.i, i32 %i.083, i32 1
  %31 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %features, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %features30 = getelementptr %struct.virtio_jack, ptr %26, i32 %i.083, i32 2
  %34 = ptrtoint ptr %features30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %features30, align 4
  %hda_reg_defconf = getelementptr %struct.virtio_snd_jack_info, ptr %call8.i.i, i32 %i.083, i32 2
  %35 = ptrtoint ptr %hda_reg_defconf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hda_reg_defconf, align 8
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %defconf = getelementptr %struct.virtio_jack, ptr %26, i32 %i.083, i32 3
  %38 = ptrtoint ptr %defconf to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %defconf, align 4
  %hda_reg_caps = getelementptr %struct.virtio_snd_jack_info, ptr %call8.i.i, i32 %i.083, i32 3
  %39 = ptrtoint ptr %hda_reg_caps to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hda_reg_caps, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %caps = getelementptr %struct.virtio_jack, ptr %26, i32 %i.083, i32 4
  %42 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %caps, align 4
  %connected = getelementptr %struct.virtio_snd_jack_info, ptr %call8.i.i, i32 %i.083, i32 4
  %43 = ptrtoint ptr %connected to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %connected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool34 = icmp ne i8 %44, 0
  %connected35 = getelementptr %struct.virtio_jack, ptr %26, i32 %i.083, i32 5
  %frombool = zext i1 %tobool34 to i8
  %45 = ptrtoint ptr %connected35 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %frombool, ptr %connected35, align 4
  %inc = add nuw i32 %i.083, 1
  %46 = ptrtoint ptr %njacks to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %njacks, align 4
  %cmp25 = icmp ult i32 %inc, %47
  br i1 %cmp25, label %for.body.for.body_crit_edge, label %for.body.on_exit_crit_edge

for.body.on_exit_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %on_exit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

on_exit:                                          ; preds = %for.body.on_exit_crit_edge, %for.cond.preheader.on_exit_crit_edge, %if.end18.on_exit_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %on_exit, %if.end7.i.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %on_exit ], [ 0, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtsnd_ctl_query_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtsnd_jack_build_devs(ptr nocapture noundef readonly %snd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %njacks = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 7
  %0 = ptrtoint ptr %njacks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %njacks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp51.not = icmp eq i32 %1, 0
  br i1 %cmp51.not, label %entry.cleanup12_crit_edge, label %for.body.lr.ph

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup12

for.body.lr.ph:                                   ; preds = %entry
  %jacks = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 6
  %card46 = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %jacks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jacks, align 4
  %arrayidx = getelementptr %struct.virtio_jack, ptr %3, i32 %i.052
  %defconf1.i = getelementptr %struct.virtio_jack, ptr %3, i32 %i.052, i32 3
  %4 = ptrtoint ptr %defconf1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %defconf1.i, align 4
  %and.i = lshr i32 %5, 20
  %shr.i = and i32 %and.i, 15
  %6 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i, label %sw.default.i [
    i32 0, label %for.body.virtsnd_jack_get_type.exit_crit_edge
    i32 1, label %for.body.virtsnd_jack_get_type.exit_crit_edge56
    i32 2, label %virtsnd_jack_get_type.exit.thread
    i32 4, label %for.body.sw.bb3.i_crit_edge
    i32 5, label %for.body.sw.bb3.i_crit_edge57
    i32 10, label %virtsnd_jack_get_type.exit.thread43
  ]

for.body.sw.bb3.i_crit_edge57:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

for.body.sw.bb3.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

for.body.virtsnd_jack_get_type.exit_crit_edge56:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %virtsnd_jack_get_type.exit

for.body.virtsnd_jack_get_type.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %virtsnd_jack_get_type.exit

virtsnd_jack_get_type.exit.thread:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %type37 = getelementptr %struct.virtio_jack, ptr %3, i32 %i.052, i32 6
  %7 = ptrtoint ptr %type37 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %type37, align 4
  %8 = ptrtoint ptr %card46 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card46, align 4
  br label %virtsnd_jack_get_label.exit

sw.bb3.i:                                         ; preds = %for.body.sw.bb3.i_crit_edge, %for.body.sw.bb3.i_crit_edge57
  br label %virtsnd_jack_get_type.exit

virtsnd_jack_get_type.exit.thread43:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %type45 = getelementptr %struct.virtio_jack, ptr %3, i32 %i.052, i32 6
  %10 = ptrtoint ptr %type45 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %type45, align 4
  %11 = ptrtoint ptr %card46 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card46, align 4
  br label %sw.bb10.i

sw.default.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %virtsnd_jack_get_type.exit

virtsnd_jack_get_type.exit:                       ; preds = %sw.default.i, %sw.bb3.i, %for.body.virtsnd_jack_get_type.exit_crit_edge, %for.body.virtsnd_jack_get_type.exit_crit_edge56
  %retval.0.i = phi i32 [ 32, %sw.default.i ], [ 20, %sw.bb3.i ], [ 4, %for.body.virtsnd_jack_get_type.exit_crit_edge ], [ 4, %for.body.virtsnd_jack_get_type.exit_crit_edge56 ]
  %type = getelementptr %struct.virtio_jack, ptr %3, i32 %i.052, i32 6
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i, ptr %type, align 4
  %14 = ptrtoint ptr %card46 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card46, align 4
  %16 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %shr.i, label %sw.default.i34 [
    i32 0, label %virtsnd_jack_get_type.exit.virtsnd_jack_get_label.exit_crit_edge
    i32 1, label %sw.bb4.i33
    i32 13, label %sw.bb12.i
    i32 3, label %sw.bb6.i
    i32 4, label %virtsnd_jack_get_type.exit.sw.bb7.i_crit_edge
    i32 5, label %virtsnd_jack_get_type.exit.sw.bb7.i_crit_edge58
    i32 8, label %sw.bb8.i
    i32 9, label %sw.bb9.i
    i32 10, label %virtsnd_jack_get_type.exit.sw.bb10.i_crit_edge
    i32 12, label %sw.bb11.i
  ]

virtsnd_jack_get_type.exit.sw.bb10.i_crit_edge:   ; preds = %virtsnd_jack_get_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10.i

virtsnd_jack_get_type.exit.sw.bb7.i_crit_edge58:  ; preds = %virtsnd_jack_get_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

virtsnd_jack_get_type.exit.sw.bb7.i_crit_edge:    ; preds = %virtsnd_jack_get_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

virtsnd_jack_get_type.exit.virtsnd_jack_get_label.exit_crit_edge: ; preds = %virtsnd_jack_get_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %virtsnd_jack_get_label.exit

sw.bb4.i33:                                       ; preds = %virtsnd_jack_get_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %virtsnd_jack_get_label.exit

sw.bb6.i:                                         ; preds = %virtsnd_jack_get_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %virtsnd_jack_get_label.exit

sw.bb7.i:                                         ; preds = %virtsnd_jack_get_type.exit.sw.bb7.i_crit_edge, %virtsnd_jack_get_type.exit.sw.bb7.i_crit_edge58
  %17 = and i32 %5, 1056964608
  call void @__sanitizer_cov_trace_const_cmp4(i32 402653184, i32 %17)
  %cmp.i = icmp eq i32 %17, 402653184
  %.str.5..str.6.i = select i1 %cmp.i, ptr @.str.5, ptr @.str.6
  br label %virtsnd_jack_get_label.exit

sw.bb8.i:                                         ; preds = %virtsnd_jack_get_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %virtsnd_jack_get_label.exit

sw.bb9.i:                                         ; preds = %virtsnd_jack_get_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %virtsnd_jack_get_label.exit

sw.bb10.i:                                        ; preds = %virtsnd_jack_get_type.exit.sw.bb10.i_crit_edge, %virtsnd_jack_get_type.exit.thread43
  %18 = phi ptr [ %12, %virtsnd_jack_get_type.exit.thread43 ], [ %15, %virtsnd_jack_get_type.exit.sw.bb10.i_crit_edge ]
  %type48 = phi ptr [ %type45, %virtsnd_jack_get_type.exit.thread43 ], [ %type, %virtsnd_jack_get_type.exit.sw.bb10.i_crit_edge ]
  %retval.0.i47 = phi i32 [ 2, %virtsnd_jack_get_type.exit.thread43 ], [ %retval.0.i, %virtsnd_jack_get_type.exit.sw.bb10.i_crit_edge ]
  br label %virtsnd_jack_get_label.exit

sw.bb11.i:                                        ; preds = %virtsnd_jack_get_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %virtsnd_jack_get_label.exit

sw.bb12.i:                                        ; preds = %virtsnd_jack_get_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %virtsnd_jack_get_label.exit

sw.default.i34:                                   ; preds = %virtsnd_jack_get_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %virtsnd_jack_get_label.exit

virtsnd_jack_get_label.exit:                      ; preds = %sw.default.i34, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb4.i33, %virtsnd_jack_get_type.exit.virtsnd_jack_get_label.exit_crit_edge, %virtsnd_jack_get_type.exit.thread
  %19 = phi ptr [ %15, %sw.default.i34 ], [ %15, %sw.bb12.i ], [ %15, %sw.bb11.i ], [ %18, %sw.bb10.i ], [ %15, %sw.bb9.i ], [ %15, %sw.bb8.i ], [ %15, %sw.bb6.i ], [ %9, %virtsnd_jack_get_type.exit.thread ], [ %15, %sw.bb4.i33 ], [ %15, %virtsnd_jack_get_type.exit.virtsnd_jack_get_label.exit_crit_edge ], [ %15, %sw.bb7.i ]
  %type42 = phi ptr [ %type, %sw.default.i34 ], [ %type, %sw.bb12.i ], [ %type, %sw.bb11.i ], [ %type48, %sw.bb10.i ], [ %type, %sw.bb9.i ], [ %type, %sw.bb8.i ], [ %type, %sw.bb6.i ], [ %type37, %virtsnd_jack_get_type.exit.thread ], [ %type, %sw.bb4.i33 ], [ %type, %virtsnd_jack_get_type.exit.virtsnd_jack_get_label.exit_crit_edge ], [ %type, %sw.bb7.i ]
  %retval.0.i40 = phi i32 [ %retval.0.i, %sw.default.i34 ], [ %retval.0.i, %sw.bb12.i ], [ %retval.0.i, %sw.bb11.i ], [ %retval.0.i47, %sw.bb10.i ], [ %retval.0.i, %sw.bb9.i ], [ %retval.0.i, %sw.bb8.i ], [ %retval.0.i, %sw.bb6.i ], [ 1, %virtsnd_jack_get_type.exit.thread ], [ %retval.0.i, %sw.bb4.i33 ], [ %retval.0.i, %virtsnd_jack_get_type.exit.virtsnd_jack_get_label.exit_crit_edge ], [ %retval.0.i, %sw.bb7.i ]
  %retval.0.i35 = phi ptr [ @.str.12, %sw.default.i34 ], [ @.str.11, %sw.bb12.i ], [ @.str.10, %sw.bb11.i ], [ @.str.9, %sw.bb10.i ], [ @.str.8, %sw.bb9.i ], [ @.str.7, %sw.bb8.i ], [ @.str.4, %sw.bb6.i ], [ @.str.3, %virtsnd_jack_get_type.exit.thread ], [ @.str.2, %sw.bb4.i33 ], [ @.str.1, %virtsnd_jack_get_type.exit.virtsnd_jack_get_label.exit_crit_edge ], [ %.str.5..str.6.i, %sw.bb7.i ]
  %call3 = tail call i32 @snd_jack_new(ptr noundef %19, ptr noundef nonnull %retval.0.i35, i32 noundef %retval.0.i40, ptr noundef %arrayidx, i1 noundef zeroext true, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %virtsnd_jack_get_label.exit.cleanup12_crit_edge

virtsnd_jack_get_label.exit.cleanup12_crit_edge:  ; preds = %virtsnd_jack_get_label.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup12

if.end:                                           ; preds = %virtsnd_jack_get_label.exit
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %21, null
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %private_data = getelementptr inbounds %struct.snd_jack, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx, ptr %private_data, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %connected = getelementptr %struct.virtio_jack, ptr %3, i32 %i.052, i32 5
  %25 = ptrtoint ptr %connected to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %connected, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool10.not = icmp eq i8 %26, 0
  br i1 %tobool10.not, label %if.end8.for.inc_crit_edge, label %cond.true

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cond.true:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %type42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type42, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.true, %if.end8.for.inc_crit_edge
  %cond = phi i32 [ %28, %cond.true ], [ 0, %if.end8.for.inc_crit_edge ]
  tail call void @snd_jack_report(ptr noundef %24, i32 noundef %cond) #5
  %inc = add nuw i32 %i.052, 1
  %29 = ptrtoint ptr %njacks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %njacks, align 4
  %cmp = icmp ult i32 %inc, %30
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup12_crit_edge

for.inc.cleanup12_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup12

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup12:                                        ; preds = %for.inc.cleanup12_crit_edge, %virtsnd_jack_get_label.exit.cleanup12_crit_edge, %entry.cleanup12_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup12_crit_edge ], [ %call3, %virtsnd_jack_get_label.exit.cleanup12_crit_edge ], [ 0, %for.inc.cleanup12_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_jack_report(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtsnd_jack_event(ptr nocapture noundef readonly %snd, ptr nocapture noundef readonly %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.virtio_snd_event, ptr %event, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %njacks = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 7
  %3 = ptrtoint ptr %njacks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %njacks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp.not = icmp ult i32 %2, %4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %jacks = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 6
  %5 = ptrtoint ptr %jacks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %jacks, align 4
  %arrayidx = getelementptr %struct.virtio_jack, ptr %6, i32 %2
  %7 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %event, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %9, label %if.end.cleanup_crit_edge [
    i32 4096, label %if.end.sw.epilog_crit_edge
    i32 4097, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %if.end.sw.epilog_crit_edge
  %tobool.not = phi i1 [ false, %if.end.sw.epilog_crit_edge ], [ true, %sw.bb1 ]
  %.sink = phi i8 [ 1, %if.end.sw.epilog_crit_edge ], [ 0, %sw.bb1 ]
  %connected2 = getelementptr %struct.virtio_jack, ptr %6, i32 %2, i32 5
  %11 = ptrtoint ptr %connected2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink, ptr %connected2, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  br i1 %tobool.not, label %sw.epilog.cond.end_crit_edge, label %cond.true

sw.epilog.cond.end_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %type = getelementptr %struct.virtio_jack, ptr %6, i32 %2, i32 6
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %sw.epilog.cond.end_crit_edge
  %cond = phi i32 [ %15, %cond.true ], [ 0, %sw.epilog.cond.end_crit_edge ]
  tail call void @snd_jack_report(ptr noundef %13, i32 noundef %cond) #5
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/virtio/virtio_jack.c", i32 138, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/virtio/virtio_jack.c", i32 62, i32 10}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/virtio/virtio_jack.c", i32 64, i32 10}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/virtio/virtio_jack.c", i32 66, i32 10}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/virtio/virtio_jack.c", i32 68, i32 10}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/virtio/virtio_jack.c", i32 72, i32 11}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/virtio/virtio_jack.c", i32 74, i32 11}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/virtio/virtio_jack.c", i32 76, i32 10}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/virtio/virtio_jack.c", i32 78, i32 10}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/virtio/virtio_jack.c", i32 80, i32 10}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/virtio/virtio_jack.c", i32 82, i32 10}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/virtio/virtio_jack.c", i32 84, i32 10}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/virtio/virtio_jack.c", i32 86, i32 10}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"auto-init"}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{i8 0, i8 2}
