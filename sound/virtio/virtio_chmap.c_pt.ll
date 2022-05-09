; ModuleID = '/llk/IR_all_yes/sound/virtio/virtio_chmap.c_pt.bc'
source_filename = "../sound/virtio/virtio_chmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.virtio_snd_chmap_info = type { %struct.virtio_snd_info, i8, i8, [18 x i8] }
%struct.virtio_snd_info = type { i32 }
%struct.virtio_pcm = type { %struct.list_head, i32, ptr, [2 x %struct.virtio_pcm_stream] }
%struct.virtio_pcm_stream = type { ptr, i32, ptr, i32 }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/virtio/virtio_chmap.c\00", [36 x i8] zeroinitializer }, align 32
@virtsnd_chmap_parse_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 102, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"chmap #%u: unknown direction (%u)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"virtsnd_chmap_parse_cfg\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@virtsnd_chmap_parse_cfg._entry_ptr = internal global ptr @virtsnd_chmap_parse_cfg._entry, section ".printk_index", align 4
@g_v2a_position_map = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 66, i32 2 }
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 100, i32 4 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"g_v2a_position_map\00", align 1
@___asan_gen_.24 = private constant [31 x i8] c"../sound/virtio/virtio_chmap.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 11, i32 17 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @virtsnd_chmap_parse_cfg._entry, ptr @virtsnd_chmap_parse_cfg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @g_v2a_position_map], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_chmap_parse_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_v2a_position_map to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtsnd_chmap_parse_cfg(ptr noundef %snd) local_unnamed_addr #0 align 64 {
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
  store i32 -1, ptr %virtio_cread_v, align 4, !annotation !20
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 66) #5
  %config = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 8
  %get = getelementptr inbounds %struct.virtio_config_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get, align 4
  call void %6(ptr noundef %1, i32 noundef 8, ptr noundef nonnull %virtio_cread_v, i32 noundef 4) #5
  %7 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %virtio_cread_v, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %nchmaps = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 11
  %10 = ptrtoint ptr %nchmaps to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nchmaps, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup45_crit_edge, label %if.end

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup45

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 6
  %11 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 24) #5
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !21

devm_kcalloc.exit.thread:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %chmaps72 = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 10
  %13 = ptrtoint ptr %chmaps72 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %chmaps72, align 4
  br label %cleanup45

devm_kcalloc.exit:                                ; preds = %if.end
  %14 = extractvalue { i32, i1 } %11, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %14, i32 noundef 3520) #5
  %chmaps = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 10
  %15 = ptrtoint ptr %chmaps to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5.i.i, ptr %chmaps, align 4
  %tobool11.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool11.not, label %devm_kcalloc.exit.cleanup45_crit_edge, label %if.end13

devm_kcalloc.exit.cleanup45_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup45

if.end13:                                         ; preds = %devm_kcalloc.exit
  %16 = ptrtoint ptr %nchmaps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nchmaps, align 4
  %call16 = call i32 @virtsnd_ctl_query_info(ptr noundef %snd, i32 noundef 512, i32 noundef 0, i32 noundef %17, i32 noundef 24, ptr noundef nonnull %call5.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.cond.preheader, label %if.end13.cleanup45_crit_edge

if.end13.cleanup45_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup45

for.cond.preheader:                               ; preds = %if.end13
  %18 = ptrtoint ptr %nchmaps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nchmaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2179.not = icmp eq i32 %19, 0
  br i1 %cmp2179.not, label %for.cond.preheader.cleanup45_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup45_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup45

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.080 = phi i32 [ %inc44, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %20 = ptrtoint ptr %chmaps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chmaps, align 4
  %arrayidx = getelementptr %struct.virtio_snd_chmap_info, ptr %21, i32 %i.080
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  %call24 = call ptr @virtsnd_pcm_find_or_create(ptr noundef %snd, i32 noundef %24) #5
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end28

if.then26:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %call24 to i32
  br label %cleanup45

if.end28:                                         ; preds = %for.body
  %direction = getelementptr %struct.virtio_snd_chmap_info, ptr %21, i32 %i.080, i32 1
  %26 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %direction, align 4
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i8 %27, label %do.end36 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb31
  ]

sw.bb:                                            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %streams = getelementptr inbounds %struct.virtio_pcm, ptr %call24, i32 0, i32 3
  br label %for.inc

sw.bb31:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx33 = getelementptr %struct.virtio_pcm, ptr %call24, i32 0, i32 3, i32 1
  br label %for.inc

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %conv29 = zext i8 %27 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %i.080, i32 noundef %conv29) #8
  br label %cleanup45

for.inc:                                          ; preds = %sw.bb31, %sw.bb
  %vs.0 = phi ptr [ %arrayidx33, %sw.bb31 ], [ %streams, %sw.bb ]
  %nchmaps40 = getelementptr inbounds %struct.virtio_pcm_stream, ptr %vs.0, i32 0, i32 3
  %29 = ptrtoint ptr %nchmaps40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nchmaps40, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %nchmaps40, align 4
  %inc44 = add nuw i32 %i.080, 1
  %31 = ptrtoint ptr %nchmaps to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nchmaps, align 4
  %cmp21 = icmp ult i32 %inc44, %32
  br i1 %cmp21, label %for.inc.for.body_crit_edge, label %for.inc.cleanup45_crit_edge

for.inc.cleanup45_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup45

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup45:                                        ; preds = %for.inc.cleanup45_crit_edge, %do.end36, %if.then26, %for.cond.preheader.cleanup45_crit_edge, %if.end13.cleanup45_crit_edge, %devm_kcalloc.exit.cleanup45_crit_edge, %devm_kcalloc.exit.thread, %entry.cleanup45_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup45_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup45_crit_edge ], [ %call16, %if.end13.cleanup45_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %25, %if.then26 ], [ -22, %do.end36 ], [ 0, %for.cond.preheader.cleanup45_crit_edge ], [ 0, %for.inc.cleanup45_crit_edge ]
  ret i32 %retval.2
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
declare dso_local ptr @virtsnd_pcm_find_or_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtsnd_chmap_build_devs(ptr noundef %snd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm_list = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 5
  %0 = ptrtoint ptr %pcm_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %vpcm.0183 = load ptr, ptr %pcm_list, align 4
  %cmp.not184 = icmp eq ptr %vpcm.0183, %pcm_list
  br i1 %cmp.not184, label %entry.for.cond19.preheader_crit_edge, label %for.cond3.preheader.lr.ph

entry.for.cond19.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond19.preheader

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %1 = ptrtoint ptr %snd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %snd, align 4
  %dev = getelementptr inbounds %struct.virtio_device, ptr %2, i32 0, i32 6
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc.1.for.cond3.preheader_crit_edge, %for.cond3.preheader.lr.ph
  %vpcm.0185 = phi ptr [ %vpcm.0183, %for.cond3.preheader.lr.ph ], [ %vpcm.0, %for.inc.1.for.cond3.preheader_crit_edge ]
  %nchmaps = getelementptr %struct.virtio_pcm, ptr %vpcm.0185, i32 0, i32 3, i32 0, i32 3
  %3 = ptrtoint ptr %nchmaps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nchmaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %for.cond3.preheader.for.inc_crit_edge, label %if.end

for.cond3.preheader.for.inc_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.cond19.preheader:                             ; preds = %for.inc.1.for.cond19.preheader_crit_edge, %entry.for.cond19.preheader_crit_edge
  %nchmaps20 = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 11
  %5 = ptrtoint ptr %nchmaps20 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nchmaps20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp21188.not = icmp eq i32 %6, 0
  br i1 %cmp21188.not, label %for.cond19.preheader.for.cond79.preheader_crit_edge, label %for.body22.lr.ph

for.cond19.preheader.for.cond79.preheader_crit_edge: ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond79.preheader

for.body22.lr.ph:                                 ; preds = %for.cond19.preheader
  %chmaps23 = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 10
  br label %for.body22

if.end:                                           ; preds = %for.cond3.preheader
  %add = add i32 %4, 1
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 16) #5
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %if.end.devm_kcalloc.exit.thread_crit_edge, label %devm_kcalloc.exit, !prof !21

if.end.devm_kcalloc.exit.thread_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %devm_kcalloc.exit.thread

devm_kcalloc.exit.thread:                         ; preds = %if.end.1.devm_kcalloc.exit.thread_crit_edge, %if.end.devm_kcalloc.exit.thread_crit_edge
  %i.0181.lcssa = phi i32 [ 0, %if.end.devm_kcalloc.exit.thread_crit_edge ], [ 1, %if.end.1.devm_kcalloc.exit.thread_crit_edge ]
  %chmaps168 = getelementptr %struct.virtio_pcm, ptr %vpcm.0185, i32 0, i32 3, i32 %i.0181.lcssa, i32 2
  %9 = ptrtoint ptr %chmaps168 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %chmaps168, align 4
  br label %cleanup114

devm_kcalloc.exit:                                ; preds = %if.end
  %10 = extractvalue { i32, i1 } %7, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %10, i32 noundef 3520) #5
  %chmaps = getelementptr %struct.virtio_pcm, ptr %vpcm.0185, i32 0, i32 3, i32 0, i32 2
  %11 = ptrtoint ptr %chmaps to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i, ptr %chmaps, align 4
  %tobool8.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool8.not, label %devm_kcalloc.exit.cleanup114_crit_edge, label %if.end10

devm_kcalloc.exit.cleanup114_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup114

if.end10:                                         ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %nchmaps to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %nchmaps, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %for.cond3.preheader.for.inc_crit_edge
  %nchmaps.1 = getelementptr %struct.virtio_pcm, ptr %vpcm.0185, i32 0, i32 3, i32 1, i32 3
  %13 = ptrtoint ptr %nchmaps.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nchmaps.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.1 = icmp eq i32 %14, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %add.1 = add i32 %14, 1
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.1, i32 16) #5
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %if.end.1.devm_kcalloc.exit.thread_crit_edge, label %devm_kcalloc.exit.1, !prof !21

if.end.1.devm_kcalloc.exit.thread_crit_edge:      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %devm_kcalloc.exit.thread

devm_kcalloc.exit.1:                              ; preds = %if.end.1
  %17 = extractvalue { i32, i1 } %15, 0
  %call5.i.i.1 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %17, i32 noundef 3520) #5
  %chmaps.1 = getelementptr %struct.virtio_pcm, ptr %vpcm.0185, i32 0, i32 3, i32 1, i32 2
  %18 = ptrtoint ptr %chmaps.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call5.i.i.1, ptr %chmaps.1, align 4
  %tobool8.not.1 = icmp eq ptr %call5.i.i.1, null
  br i1 %tobool8.not.1, label %devm_kcalloc.exit.1.cleanup114_crit_edge, label %if.end10.1

devm_kcalloc.exit.1.cleanup114_crit_edge:         ; preds = %devm_kcalloc.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup114

if.end10.1:                                       ; preds = %devm_kcalloc.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %nchmaps.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %nchmaps.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end10.1, %for.inc.for.inc.1_crit_edge
  %20 = ptrtoint ptr %vpcm.0185 to i32
  call void @__asan_load4_noabort(i32 %20)
  %vpcm.0 = load ptr, ptr %vpcm.0185, align 4
  %cmp.not = icmp eq ptr %vpcm.0, %pcm_list
  br i1 %cmp.not, label %for.inc.1.for.cond19.preheader_crit_edge, label %for.inc.1.for.cond3.preheader_crit_edge

for.inc.1.for.cond3.preheader_crit_edge:          ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond3.preheader

for.inc.1.for.cond19.preheader_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond19.preheader

for.cond79.preheader:                             ; preds = %for.inc71.for.cond79.preheader_crit_edge, %for.cond19.preheader.for.cond79.preheader_crit_edge
  %21 = ptrtoint ptr %pcm_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %vpcm.1193 = load ptr, ptr %pcm_list, align 4
  %cmp82.not194 = icmp eq ptr %vpcm.1193, %pcm_list
  br i1 %cmp82.not194, label %for.cond79.preheader.cleanup114_crit_edge, label %for.cond79.preheader.for.body85_crit_edge

for.cond79.preheader.for.body85_crit_edge:        ; preds = %for.cond79.preheader
  br label %for.body85

for.cond79.preheader.cleanup114_crit_edge:        ; preds = %for.cond79.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup114

for.body22:                                       ; preds = %for.inc71.for.body22_crit_edge, %for.body22.lr.ph
  %i.1189 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc72, %for.inc71.for.body22_crit_edge ]
  %22 = ptrtoint ptr %chmaps23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chmaps23, align 4
  %arrayidx24 = getelementptr %struct.virtio_snd_chmap_info, ptr %23, i32 %i.1189
  %channels25 = getelementptr %struct.virtio_snd_chmap_info, ptr %23, i32 %i.1189, i32 2
  %24 = ptrtoint ptr %channels25 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %channels25, align 1
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx24, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %call26 = tail call ptr @virtsnd_pcm_find(ptr noundef %snd, i32 noundef %28) #5
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end30

if.then28:                                        ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %call26 to i32
  br label %cleanup114

if.end30:                                         ; preds = %for.body22
  %direction = getelementptr %struct.virtio_snd_chmap_info, ptr %23, i32 %i.1189, i32 1
  %30 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp32 = icmp eq i8 %31, 0
  %streams35 = getelementptr inbounds %struct.virtio_pcm, ptr %call26, i32 0, i32 3
  %arrayidx38 = getelementptr %struct.virtio_pcm, ptr %call26, i32 0, i32 3, i32 1
  %vs.0 = select i1 %cmp32, ptr %streams35, ptr %arrayidx38
  %chmaps40 = getelementptr inbounds %struct.virtio_pcm_stream, ptr %vs.0, i32 0, i32 2
  %32 = ptrtoint ptr %chmaps40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chmaps40, align 4
  %nchmaps41 = getelementptr inbounds %struct.virtio_pcm_stream, ptr %vs.0, i32 0, i32 3
  %34 = ptrtoint ptr %nchmaps41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nchmaps41, align 4
  %inc42 = add i32 %35, 1
  store i32 %inc42, ptr %nchmaps41, align 4
  %arrayidx43 = getelementptr %struct.snd_pcm_chmap_elem, ptr %33, i32 %35
  %36 = tail call i8 @llvm.umin.i8(i8 %25, i8 15)
  %37 = zext i8 %36 to i32
  %38 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %36, ptr %arrayidx43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp51186.not = icmp eq i8 %36, 0
  br i1 %cmp51186.not, label %if.end30.for.inc71_crit_edge, label %if.end30.for.body53_crit_edge

if.end30.for.body53_crit_edge:                    ; preds = %if.end30
  br label %for.body53

if.end30.for.inc71_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc71

for.body53:                                       ; preds = %for.inc62.for.body53_crit_edge, %if.end30.for.body53_crit_edge
  %ch.0187 = phi i32 [ %inc63, %for.inc62.for.body53_crit_edge ], [ 0, %if.end30.for.body53_crit_edge ]
  %arrayidx54 = getelementptr %struct.virtio_snd_chmap_info, ptr %23, i32 %i.1189, i32 3, i32 %ch.0187
  %39 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %40)
  %cmp56 = icmp ugt i8 %40, 36
  br i1 %cmp56, label %for.body53.cleanup114_crit_edge, label %for.inc62

for.body53.cleanup114_crit_edge:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup114

for.inc62:                                        ; preds = %for.body53
  %conv55 = zext i8 %40 to i32
  %arrayidx60 = getelementptr [37 x i8], ptr @g_v2a_position_map, i32 0, i32 %conv55
  %41 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx60, align 1
  %arrayidx61 = getelementptr %struct.snd_pcm_chmap_elem, ptr %33, i32 %35, i32 1, i32 %ch.0187
  %43 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx61, align 1
  %inc63 = add nuw nsw i32 %ch.0187, 1
  %exitcond.not = icmp eq i32 %inc63, %37
  br i1 %exitcond.not, label %for.inc62.for.inc71_crit_edge, label %for.inc62.for.body53_crit_edge

for.inc62.for.body53_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body53

for.inc62.for.inc71_crit_edge:                    ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc71

for.inc71:                                        ; preds = %for.inc62.for.inc71_crit_edge, %if.end30.for.inc71_crit_edge
  %inc72 = add nuw i32 %i.1189, 1
  %44 = ptrtoint ptr %nchmaps20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nchmaps20, align 4
  %cmp21 = icmp ult i32 %inc72, %45
  br i1 %cmp21, label %for.inc71.for.body22_crit_edge, label %for.inc71.for.cond79.preheader_crit_edge

for.inc71.for.cond79.preheader_crit_edge:         ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond79.preheader

for.inc71.for.body22_crit_edge:                   ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body22

for.body85:                                       ; preds = %for.inc107.for.body85_crit_edge, %for.cond79.preheader.for.body85_crit_edge
  %vpcm.1195 = phi ptr [ %vpcm.1, %for.inc107.for.body85_crit_edge ], [ %vpcm.1193, %for.cond79.preheader.for.body85_crit_edge ]
  %pcm = getelementptr inbounds %struct.virtio_pcm, ptr %vpcm.1195, i32 0, i32 2
  %46 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcm, align 4
  %tobool86.not = icmp eq ptr %47, null
  br i1 %tobool86.not, label %for.body85.for.inc107_crit_edge, label %for.body92.preheader

for.body85.for.inc107_crit_edge:                  ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc107

for.body92.preheader:                             ; preds = %for.body85
  %nchmaps95 = getelementptr %struct.virtio_pcm, ptr %vpcm.1195, i32 0, i32 3, i32 0, i32 3
  %48 = ptrtoint ptr %nchmaps95 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nchmaps95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool96.not = icmp eq i32 %49, 0
  br i1 %tobool96.not, label %for.body92.preheader.for.inc104_crit_edge, label %if.end98

for.body92.preheader.for.inc104_crit_edge:        ; preds = %for.body92.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc104

if.end98:                                         ; preds = %for.body92.preheader
  %50 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcm, align 4
  %52 = ptrtoint ptr %nchmaps95 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nchmaps95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp15.not.i = icmp eq i32 %53, 0
  br i1 %cmp15.not.i, label %if.end98.virtsnd_chmap_add_ctls.exit_crit_edge, label %for.body.lr.ph.i

if.end98.virtsnd_chmap_add_ctls.exit_crit_edge:   ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %virtsnd_chmap_add_ctls.exit

for.body.lr.ph.i:                                 ; preds = %if.end98
  %chmaps.i = getelementptr %struct.virtio_pcm, ptr %vpcm.1195, i32 0, i32 3, i32 0, i32 2
  %54 = ptrtoint ptr %chmaps.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chmaps.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %max_channels.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %58, %for.body.i.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.snd_pcm_chmap_elem, ptr %55, i32 %i.016.i
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %57 to i32
  %58 = tail call i32 @llvm.smax.i32(i32 %max_channels.017.i, i32 %conv.i) #5
  %inc.i = add nuw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %53
  br i1 %exitcond.not.i, label %for.body.i.virtsnd_chmap_add_ctls.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.virtsnd_chmap_add_ctls.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %virtsnd_chmap_add_ctls.exit

virtsnd_chmap_add_ctls.exit:                      ; preds = %for.body.i.virtsnd_chmap_add_ctls.exit_crit_edge, %if.end98.virtsnd_chmap_add_ctls.exit_crit_edge
  %max_channels.0.lcssa.i = phi i32 [ 0, %if.end98.virtsnd_chmap_add_ctls.exit_crit_edge ], [ %58, %for.body.i.virtsnd_chmap_add_ctls.exit_crit_edge ]
  %chmaps7.i = getelementptr %struct.virtio_pcm, ptr %vpcm.1195, i32 0, i32 3, i32 0, i32 2
  %59 = ptrtoint ptr %chmaps7.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chmaps7.i, align 4
  %call.i = tail call i32 @snd_pcm_add_chmap_ctls(ptr noundef %51, i32 noundef 0, ptr noundef %60, i32 noundef %max_channels.0.lcssa.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool101.not = icmp eq i32 %call.i, 0
  br i1 %tobool101.not, label %virtsnd_chmap_add_ctls.exit.for.inc104_crit_edge, label %virtsnd_chmap_add_ctls.exit.cleanup114_crit_edge

virtsnd_chmap_add_ctls.exit.cleanup114_crit_edge: ; preds = %virtsnd_chmap_add_ctls.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup114

virtsnd_chmap_add_ctls.exit.for.inc104_crit_edge: ; preds = %virtsnd_chmap_add_ctls.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc104

for.inc104:                                       ; preds = %virtsnd_chmap_add_ctls.exit.for.inc104_crit_edge, %for.body92.preheader.for.inc104_crit_edge
  %nchmaps95.1 = getelementptr %struct.virtio_pcm, ptr %vpcm.1195, i32 0, i32 3, i32 1, i32 3
  %61 = ptrtoint ptr %nchmaps95.1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nchmaps95.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool96.not.1 = icmp eq i32 %62, 0
  br i1 %tobool96.not.1, label %for.inc104.for.inc107_crit_edge, label %if.end98.1

for.inc104.for.inc107_crit_edge:                  ; preds = %for.inc104
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc107

if.end98.1:                                       ; preds = %for.inc104
  %63 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pcm, align 4
  %65 = ptrtoint ptr %nchmaps95.1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nchmaps95.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp15.not.i.1 = icmp eq i32 %66, 0
  br i1 %cmp15.not.i.1, label %if.end98.1.virtsnd_chmap_add_ctls.exit.1_crit_edge, label %for.body.lr.ph.i.1

if.end98.1.virtsnd_chmap_add_ctls.exit.1_crit_edge: ; preds = %if.end98.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %virtsnd_chmap_add_ctls.exit.1

for.body.lr.ph.i.1:                               ; preds = %if.end98.1
  %chmaps.i.1 = getelementptr %struct.virtio_pcm, ptr %vpcm.1195, i32 0, i32 3, i32 1, i32 2
  %67 = ptrtoint ptr %chmaps.i.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %chmaps.i.1, align 4
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %for.body.i.1.for.body.i.1_crit_edge, %for.body.lr.ph.i.1
  %max_channels.017.i.1 = phi i32 [ 0, %for.body.lr.ph.i.1 ], [ %71, %for.body.i.1.for.body.i.1_crit_edge ]
  %i.016.i.1 = phi i32 [ 0, %for.body.lr.ph.i.1 ], [ %inc.i.1, %for.body.i.1.for.body.i.1_crit_edge ]
  %arrayidx.i.1 = getelementptr %struct.snd_pcm_chmap_elem, ptr %68, i32 %i.016.i.1
  %69 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i.1, align 1
  %conv.i.1 = zext i8 %70 to i32
  %71 = tail call i32 @llvm.smax.i32(i32 %max_channels.017.i.1, i32 %conv.i.1) #5
  %inc.i.1 = add nuw i32 %i.016.i.1, 1
  %exitcond.not.i.1 = icmp eq i32 %inc.i.1, %66
  br i1 %exitcond.not.i.1, label %for.body.i.1.virtsnd_chmap_add_ctls.exit.1_crit_edge, label %for.body.i.1.for.body.i.1_crit_edge

for.body.i.1.for.body.i.1_crit_edge:              ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.1

for.body.i.1.virtsnd_chmap_add_ctls.exit.1_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %virtsnd_chmap_add_ctls.exit.1

virtsnd_chmap_add_ctls.exit.1:                    ; preds = %for.body.i.1.virtsnd_chmap_add_ctls.exit.1_crit_edge, %if.end98.1.virtsnd_chmap_add_ctls.exit.1_crit_edge
  %max_channels.0.lcssa.i.1 = phi i32 [ 0, %if.end98.1.virtsnd_chmap_add_ctls.exit.1_crit_edge ], [ %71, %for.body.i.1.virtsnd_chmap_add_ctls.exit.1_crit_edge ]
  %chmaps7.i.1 = getelementptr %struct.virtio_pcm, ptr %vpcm.1195, i32 0, i32 3, i32 1, i32 2
  %72 = ptrtoint ptr %chmaps7.i.1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %chmaps7.i.1, align 4
  %call.i.1 = tail call i32 @snd_pcm_add_chmap_ctls(ptr noundef %64, i32 noundef 1, ptr noundef %73, i32 noundef %max_channels.0.lcssa.i.1, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool101.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool101.not.1, label %virtsnd_chmap_add_ctls.exit.1.for.inc107_crit_edge, label %virtsnd_chmap_add_ctls.exit.1.cleanup114_crit_edge

virtsnd_chmap_add_ctls.exit.1.cleanup114_crit_edge: ; preds = %virtsnd_chmap_add_ctls.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup114

virtsnd_chmap_add_ctls.exit.1.for.inc107_crit_edge: ; preds = %virtsnd_chmap_add_ctls.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc107

for.inc107:                                       ; preds = %virtsnd_chmap_add_ctls.exit.1.for.inc107_crit_edge, %for.inc104.for.inc107_crit_edge, %for.body85.for.inc107_crit_edge
  %74 = ptrtoint ptr %vpcm.1195 to i32
  call void @__asan_load4_noabort(i32 %74)
  %vpcm.1 = load ptr, ptr %vpcm.1195, align 4
  %cmp82.not = icmp eq ptr %vpcm.1, %pcm_list
  br i1 %cmp82.not, label %for.inc107.cleanup114_crit_edge, label %for.inc107.for.body85_crit_edge

for.inc107.for.body85_crit_edge:                  ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body85

for.inc107.cleanup114_crit_edge:                  ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup114

cleanup114:                                       ; preds = %for.inc107.cleanup114_crit_edge, %virtsnd_chmap_add_ctls.exit.1.cleanup114_crit_edge, %virtsnd_chmap_add_ctls.exit.cleanup114_crit_edge, %for.body53.cleanup114_crit_edge, %if.then28, %for.cond79.preheader.cleanup114_crit_edge, %devm_kcalloc.exit.1.cleanup114_crit_edge, %devm_kcalloc.exit.cleanup114_crit_edge, %devm_kcalloc.exit.thread
  %retval.4 = phi i32 [ -12, %devm_kcalloc.exit.thread ], [ %29, %if.then28 ], [ 0, %for.cond79.preheader.cleanup114_crit_edge ], [ 0, %for.inc107.cleanup114_crit_edge ], [ %call.i.1, %virtsnd_chmap_add_ctls.exit.1.cleanup114_crit_edge ], [ %call.i, %virtsnd_chmap_add_ctls.exit.cleanup114_crit_edge ], [ -22, %for.body53.cleanup114_crit_edge ], [ -12, %devm_kcalloc.exit.1.cleanup114_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup114_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtsnd_pcm_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/virtio/virtio_chmap.c", i32 66, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/virtio/virtio_chmap.c", i32 100, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @virtsnd_chmap_parse_cfg._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @virtsnd_chmap_parse_cfg._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @g_v2a_position_map, !10, !"g_v2a_position_map", i1 false, i1 false}
!10 = !{!"../sound/virtio/virtio_chmap.c", i32 11, i32 17}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"auto-init"}
!21 = !{!"branch_weights", i32 1, i32 2000}
