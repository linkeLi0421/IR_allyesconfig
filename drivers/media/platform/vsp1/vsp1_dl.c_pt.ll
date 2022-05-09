; ModuleID = '/llk/IR_all_yes/drivers/media/platform/vsp1/vsp1_dl.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_dl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vsp1_dl_body_pool = type { i32, i32, ptr, ptr, %struct.list_head, %struct.spinlock, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.vsp1_dl_body = type { %struct.list_head, %struct.list_head, %struct.refcount_struct, ptr, ptr, i32, i32, i32, i32 }
%struct.vsp1_dl_entry = type { i32, i32 }
%struct.vsp1_dl_list = type { %struct.list_head, ptr, ptr, ptr, i32, ptr, %struct.list_head, ptr, ptr, i8, %struct.list_head, i32 }
%struct.vsp1_dl_manager = type { i32, i8, ptr, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.vsp1_dl_cmd_pool = type { i32, i32, ptr, ptr, %struct.list_head, %struct.spinlock, ptr }
%struct.vsp1_dl_ext_cmd = type { ptr, %struct.list_head, i8, i32, ptr, i32, i32, ptr, i32 }
%struct.vsp1_dl_header = type { i32, [8 x %struct.vsp1_dl_header_list], i32, i32 }
%struct.vsp1_dl_header_list = type { i32, i32 }
%struct.vsp1_dl_ext_header = type { i32, i16, i16, i32, i32, i32 }
%struct.vsp1_pre_ext_dl_body = type { i32, i32, i32, i32 }
%struct.vsp1_device_info = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }

@vsp1_dl_body_pool_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pool->lock\00", [20 x i8] zeroinitializer }, align 32
@vsp1_dl_body_write.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/platform/vsp1/vsp1_dl.c\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DLB size exceeded (max %u)\00", [37 x i8] zeroinitializer }, align 32
@vsp1_dlm_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dlm->lock\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vsp1_dl_cmd_pool_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 284, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 382, i32 6 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 1105, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private constant [41 x i8] c"../drivers/media/platform/vsp1/vsp1_dl.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 436, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @vsp1_dl_body_pool_create.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @vsp1_dlm_create.__key, ptr @.str.3, ptr @vsp1_dl_cmd_pool_create.__key], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_dl_body_pool_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_dlm_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_dl_cmd_pool_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsp1_dl_body_pool_create(ptr noundef %vsp1, i32 noundef %num_bodies, i32 noundef %num_entries, i32 noundef %extra_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vsp11 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %call7.i.i, i32 0, i32 6
  %1 = ptrtoint ptr %vsp11 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %vsp1, ptr %vsp11, align 4
  %mul = shl i32 %num_entries, 3
  %add = add i32 %mul, %extra_size
  %mul2 = mul i32 %add, %num_bodies
  %size = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mul2, ptr %size, align 4
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_bodies, i32 44) #8
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !23

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %bodies64 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %bodies64 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %bodies64, align 4
  br label %cleanup.sink.split

if.end7.i.i:                                      ; preds = %if.end
  %6 = extractvalue { i32, i1 } %3, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #12
  %bodies = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %bodies to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8.i.i, ptr %bodies, align 4
  %tobool5.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool5.not, label %if.end7.i.i.cleanup.sink.split_crit_edge, label %if.end7

if.end7.i.i.cleanup.sink.split_crit_edge:         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end7.i.i
  %bus_master = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 5
  %8 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_master, align 4
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef %11, ptr noundef nonnull %call7.i.i, i32 noundef 3264, i32 noundef 4) #8
  %mem = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %mem, align 8
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.then12, label %do.body

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %bodies to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bodies, align 4
  tail call void @kfree(ptr noundef %14) #8
  br label %cleanup.sink.split

do.body:                                          ; preds = %if.end7
  %lock = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @vsp1_dl_body_pool_create.__key, i16 noundef signext 3) #8
  %free = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %free, ptr %free, align 8
  %prev.i = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %call7.i.i, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %free, ptr %prev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_bodies)
  %cmp71.not = icmp eq i32 %num_bodies, 0
  br i1 %cmp71.not, label %do.body.cleanup_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %do.body.for.body_crit_edge
  %i.072 = phi i32 [ %inc, %list_add_tail.exit.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %bodies to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bodies, align 4
  %pool17 = getelementptr %struct.vsp1_dl_body, ptr %18, i32 %i.072, i32 3
  %19 = ptrtoint ptr %pool17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %pool17, align 4
  %max_entries = getelementptr %struct.vsp1_dl_body, ptr %18, i32 %i.072, i32 8
  %20 = ptrtoint ptr %max_entries to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %num_entries, ptr %max_entries, align 4
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call7.i.i, align 8
  %mul19 = mul i32 %i.072, %add
  %add20 = add i32 %22, %mul19
  %dma21 = getelementptr %struct.vsp1_dl_body, ptr %18, i32 %i.072, i32 5
  %23 = ptrtoint ptr %dma21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add20, ptr %dma21, align 4
  %24 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mem, align 8
  %add.ptr = getelementptr i8, ptr %25, i32 %mul19
  %entries = getelementptr %struct.vsp1_dl_body, ptr %18, i32 %i.072, i32 4
  %26 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr, ptr %entries, align 4
  %free24 = getelementptr %struct.vsp1_dl_body, ptr %18, i32 %i.072, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %free24, ptr noundef %28, ptr noundef %free) #8
  br i1 %call.i.i, label %if.end.i.i62, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i62:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %free24, ptr %prev.i, align 4
  %30 = ptrtoint ptr %free24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %free, ptr %free24, align 4
  %prev3.i.i = getelementptr %struct.vsp1_dl_body, ptr %18, i32 %i.072, i32 1, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %free24, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i62, %for.body.list_add_tail.exit_crit_edge
  %inc = add nuw i32 %i.072, 1
  %exitcond.not = icmp eq i32 %inc, %num_bodies
  br i1 %exitcond.not, label %list_add_tail.exit.cleanup_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then12, %if.end7.i.i.cleanup.sink.split_crit_edge, %kcalloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %list_add_tail.exit.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %do.body.cleanup_crit_edge ], [ null, %cleanup.sink.split ], [ %call7.i.i, %list_add_tail.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_dl_body_pool_destroy(ptr noundef %pool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pool, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %mem = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %pool, i32 0, i32 2
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %vsp1 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %pool, i32 0, i32 6
  %2 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vsp1, align 4
  %bus_master = getelementptr inbounds %struct.vsp1_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_master, align 4
  %size = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %pool, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %8 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pool, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %1, i32 noundef %9, i32 noundef 4) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %bodies = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %pool, i32 0, i32 3
  %10 = ptrtoint ptr %bodies to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bodies, align 4
  tail call void @kfree(ptr noundef %11) #8
  tail call void @kfree(ptr noundef nonnull %pool) #8
  br label %return

return:                                           ; preds = %if.end4, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsp1_dl_body_get(ptr noundef %pool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %pool, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %free = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %pool, i32 0, i32 4
  %0 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free, align 4
  %cmp.i.not = icmp eq ptr %1, %free
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %refcnt = getelementptr i8, ptr %1, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #8
  %10 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %refcnt, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  %dlb.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %add.ptr, %list_del.exit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret ptr %dlb.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_dl_body_put(ptr noundef %dlb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dlb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds %struct.vsp1_dl_body, ptr %dlb, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !24
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #8, !srcloc !25
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end2, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !26

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  %num_entries = getelementptr inbounds %struct.vsp1_dl_body, ptr %dlb, i32 0, i32 7
  %1 = ptrtoint ptr %num_entries to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %num_entries, align 4
  %pool = getelementptr inbounds %struct.vsp1_dl_body, ptr %dlb, i32 0, i32 3
  %2 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool, align 4
  %lock = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %3, i32 0, i32 5
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %free = getelementptr inbounds %struct.vsp1_dl_body, ptr %dlb, i32 0, i32 1
  %4 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pool, align 4
  %free9 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %5, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %5, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %free, ptr noundef %7, ptr noundef %free9) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end2.list_add_tail.exit_crit_edge

if.end2.list_add_tail.exit_crit_edge:             ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %free, ptr %prev.i, align 4
  %9 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %free9, ptr %free, align 4
  %prev3.i.i = getelementptr inbounds %struct.vsp1_dl_body, ptr %dlb, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %free, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end2.list_add_tail.exit_crit_edge
  %12 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pool, align 4
  %lock11 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %13, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock11, i32 noundef %call5) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_dl_body_write(ptr nocapture noundef %dlb, i32 noundef %reg, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_entries = getelementptr inbounds %struct.vsp1_dl_body, ptr %dlb, i32 0, i32 7
  %0 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_entries, align 4
  %max_entries = getelementptr inbounds %struct.vsp1_dl_body, ptr %dlb, i32 0, i32 8
  %2 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end38.critedge, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b54 = load i1, ptr @vsp1_dl_body_write.__already_done, align 1
  br i1 %.b54, label %land.rhs.return_crit_edge, label %if.then, !prof !26

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @vsp1_dl_body_write.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 383, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %3) #8
  br label %return

if.end38.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %entries = getelementptr inbounds %struct.vsp1_dl_body, ptr %dlb, i32 0, i32 4
  %4 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entries, align 4
  %arrayidx = getelementptr %struct.vsp1_dl_entry, ptr %5, i32 %1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %reg, ptr %arrayidx, align 1
  %7 = load ptr, ptr %entries, align 4
  %8 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_entries, align 4
  %data43 = getelementptr %struct.vsp1_dl_entry, ptr %7, i32 %9, i32 1
  %10 = ptrtoint ptr %data43 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %data, ptr %data43, align 1
  %11 = load i32, ptr %num_entries, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %num_entries, align 4
  br label %return

return:                                           ; preds = %if.end38.critedge, %if.then, %land.rhs.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsp1_dl_get_pre_cmd(ptr nocapture noundef %dl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pre_cmd = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 7
  %0 = ptrtoint ptr %pre_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pre_cmd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dlm1 = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 1
  %2 = ptrtoint ptr %dlm1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlm1, align 4
  %cmdpool = getelementptr inbounds %struct.vsp1_dl_manager, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %cmdpool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmdpool, align 4
  %lock.i = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %5, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %free.i = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %free.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %free.i
  br i1 %cmp.i.not.i, label %if.end.vsp1_dl_ext_cmd_get.exit_crit_edge, label %if.then.i

if.end.vsp1_dl_ext_cmd_get.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_dl_ext_cmd_get.exit

if.then.i:                                        ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %7, i32 -4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %vsp1_dl_ext_cmd_get.exit

vsp1_dl_ext_cmd_get.exit:                         ; preds = %list_del.exit.i, %if.end.vsp1_dl_ext_cmd_get.exit_crit_edge
  %cmd.0.i = phi ptr [ null, %if.end.vsp1_dl_ext_cmd_get.exit_crit_edge ], [ %add.ptr.i, %list_del.exit.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  %16 = ptrtoint ptr %pre_cmd to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cmd.0.i, ptr %pre_cmd, align 4
  br label %cleanup

cleanup:                                          ; preds = %vsp1_dl_ext_cmd_get.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %cmd.0.i, %vsp1_dl_ext_cmd_get.exit ], [ %1, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsp1_dl_list_get(ptr noundef %dlm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vsp1_dl_manager, ptr %dlm, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %free = getelementptr inbounds %struct.vsp1_dl_manager, ptr %dlm, i32 0, i32 4
  %0 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free, align 4
  %cmp.i.not = icmp eq ptr %1, %free
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %chain = getelementptr inbounds %struct.vsp1_dl_list, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %chain, ptr %chain, align 4
  %prev.i14 = getelementptr inbounds %struct.vsp1_dl_list, ptr %1, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %prev.i14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %chain, ptr %prev.i14, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  %dl.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %1, %list_del.exit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret ptr %dl.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_dl_list_put(ptr noundef %dl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dl, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dlm = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 1
  %0 = ptrtoint ptr %dlm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlm, align 4
  %lock = getelementptr inbounds %struct.vsp1_dl_manager, ptr %1, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  tail call fastcc void @__vsp1_dl_list_put(ptr noundef nonnull %dl)
  %2 = ptrtoint ptr %dlm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlm, align 4
  %lock6 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock6, i32 noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__vsp1_dl_list_put(ptr noundef %dl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dl, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %has_chain = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 9
  %0 = ptrtoint ptr %has_chain to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_chain, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.if.end10_crit_edge, label %if.then2

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then2:                                         ; preds = %if.end
  %chain = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 10
  %2 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn45 = load ptr, ptr %chain, align 4
  %cmp.not46 = icmp eq ptr %.pn45, %chain
  br i1 %cmp.not46, label %if.then2.if.end10_crit_edge, label %if.then2.for.body_crit_edge

if.then2.for.body_crit_edge:                      ; preds = %if.then2
  br label %for.body

if.then2.if.end10_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then2.for.body_crit_edge
  %.pn47 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn45, %if.then2.for.body_crit_edge ]
  %dl_next.0 = getelementptr i8, ptr %.pn47, i32 -48
  tail call fastcc void @__vsp1_dl_list_put(ptr noundef %dl_next.0)
  %3 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn47, align 4
  %cmp.not = icmp eq ptr %.pn, %chain
  br i1 %cmp.not, label %for.body.if.end10_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10:                                         ; preds = %for.body.if.end10_crit_edge, %if.then2.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %4 = ptrtoint ptr %has_chain to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %has_chain, align 4
  %bodies.i = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 6
  %5 = ptrtoint ptr %bodies.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bodies.i, align 4
  %cmp.not19.i = icmp eq ptr %6, %bodies.i
  br i1 %cmp.not19.i, label %if.end10.vsp1_dl_list_bodies_put.exit_crit_edge, label %if.end10.for.body.i_crit_edge

if.end10.for.body.i_crit_edge:                    ; preds = %if.end10
  br label %for.body.i

if.end10.vsp1_dl_list_bodies_put.exit_crit_edge:  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_dl_list_bodies_put.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end10.for.body.i_crit_edge
  %dlb.020.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %6, %if.end10.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %dlb.020.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %tmp.0.i = load ptr, ptr %dlb.020.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dlb.020.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %dlb.020.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %dlb.020.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dlb.020.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %14 = ptrtoint ptr %dlb.020.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %dlb.020.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dlb.020.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vsp1_dl_body_put(ptr noundef %dlb.020.i) #8
  %cmp.not.i = icmp eq ptr %tmp.0.i, %bodies.i
  br i1 %cmp.not.i, label %list_del.exit.i.vsp1_dl_list_bodies_put.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

list_del.exit.i.vsp1_dl_list_bodies_put.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_dl_list_bodies_put.exit

vsp1_dl_list_bodies_put.exit:                     ; preds = %list_del.exit.i.vsp1_dl_list_bodies_put.exit_crit_edge, %if.end10.vsp1_dl_list_bodies_put.exit_crit_edge
  %pre_cmd = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 7
  %16 = ptrtoint ptr %pre_cmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pre_cmd, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %vsp1_dl_list_bodies_put.exit.vsp1_dl_ext_cmd_put.exit_crit_edge, label %if.end.i

vsp1_dl_list_bodies_put.exit.vsp1_dl_ext_cmd_put.exit_crit_edge: ; preds = %vsp1_dl_list_bodies_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_dl_ext_cmd_put.exit

if.end.i:                                         ; preds = %vsp1_dl_list_bodies_put.exit
  %flags1.i = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %flags1.i, align 4
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %17, align 4
  %lock.i = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %20, i32 0, i32 5
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %free.i = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %17, align 4
  %free7.i = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %22, i32 0, i32 4
  %prev.i.i28 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %22, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %prev.i.i28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i28, align 4
  %call.i.i.i29 = tail call zeroext i1 @__list_add_valid(ptr noundef %free.i, ptr noundef %24, ptr noundef %free7.i) #8
  br i1 %call.i.i.i29, label %if.end.i.i.i30, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i30:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %prev.i.i28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %free.i, ptr %prev.i.i28, align 4
  %26 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %free7.i, ptr %free.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %17, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %free.i, ptr %24, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i30, %if.end.i.list_add_tail.exit.i_crit_edge
  %29 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %17, align 4
  %lock9.i = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %30, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock9.i, i32 noundef %call3.i) #8
  br label %vsp1_dl_ext_cmd_put.exit

vsp1_dl_ext_cmd_put.exit:                         ; preds = %list_add_tail.exit.i, %vsp1_dl_list_bodies_put.exit.vsp1_dl_ext_cmd_put.exit_crit_edge
  %post_cmd = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 8
  %31 = ptrtoint ptr %post_cmd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %post_cmd, align 4
  %tobool.not.i31 = icmp eq ptr %32, null
  br i1 %tobool.not.i31, label %vsp1_dl_ext_cmd_put.exit.vsp1_dl_ext_cmd_put.exit44_crit_edge, label %if.end.i39

vsp1_dl_ext_cmd_put.exit.vsp1_dl_ext_cmd_put.exit44_crit_edge: ; preds = %vsp1_dl_ext_cmd_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_dl_ext_cmd_put.exit44

if.end.i39:                                       ; preds = %vsp1_dl_ext_cmd_put.exit
  %flags1.i32 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %flags1.i32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %flags1.i32, align 4
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %32, align 4
  %lock.i33 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %35, i32 0, i32 5
  %call3.i34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i33) #8
  %free.i35 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %32, i32 0, i32 1
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %32, align 4
  %free7.i36 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %37, i32 0, i32 4
  %prev.i.i37 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %37, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %prev.i.i37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i37, align 4
  %call.i.i.i38 = tail call zeroext i1 @__list_add_valid(ptr noundef %free.i35, ptr noundef %39, ptr noundef %free7.i36) #8
  br i1 %call.i.i.i38, label %if.end.i.i.i41, label %if.end.i39.list_add_tail.exit.i43_crit_edge

if.end.i39.list_add_tail.exit.i43_crit_edge:      ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i43

if.end.i.i.i41:                                   ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %prev.i.i37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %free.i35, ptr %prev.i.i37, align 4
  %41 = ptrtoint ptr %free.i35 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %free7.i36, ptr %free.i35, align 4
  %prev3.i.i.i40 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %32, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i.i40, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %free.i35, ptr %39, align 4
  br label %list_add_tail.exit.i43

list_add_tail.exit.i43:                           ; preds = %if.end.i.i.i41, %if.end.i39.list_add_tail.exit.i43_crit_edge
  %44 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %32, align 4
  %lock9.i42 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %45, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock9.i42, i32 noundef %call3.i34) #8
  br label %vsp1_dl_ext_cmd_put.exit44

vsp1_dl_ext_cmd_put.exit44:                       ; preds = %list_add_tail.exit.i43, %vsp1_dl_ext_cmd_put.exit.vsp1_dl_ext_cmd_put.exit44_crit_edge
  %46 = ptrtoint ptr %pre_cmd to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %pre_cmd, align 4
  %47 = ptrtoint ptr %post_cmd to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %post_cmd, align 4
  %body0 = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 5
  %48 = ptrtoint ptr %body0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %body0, align 4
  %num_entries = getelementptr inbounds %struct.vsp1_dl_body, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %num_entries to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %num_entries, align 4
  %dlm = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 1
  %51 = ptrtoint ptr %dlm to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dlm, align 4
  %free = getelementptr inbounds %struct.vsp1_dl_manager, ptr %52, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.vsp1_dl_manager, ptr %52, i32 0, i32 4, i32 1
  %53 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %dl, ptr noundef %54, ptr noundef %free) #8
  br i1 %call.i.i, label %if.end.i.i, label %vsp1_dl_ext_cmd_put.exit44.cleanup_crit_edge

vsp1_dl_ext_cmd_put.exit44.cleanup_crit_edge:     ; preds = %vsp1_dl_ext_cmd_put.exit44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %vsp1_dl_ext_cmd_put.exit44
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %dl, ptr %prev.i, align 4
  %56 = ptrtoint ptr %dl to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %free, ptr %dl, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %dl, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %dl, ptr %54, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %vsp1_dl_ext_cmd_put.exit44.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @vsp1_dl_list_get_body0(ptr nocapture noundef readonly %dl) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %body0 = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 5
  %0 = ptrtoint ptr %body0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %body0, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsp1_dl_list_add_body(ptr noundef %dl, ptr noundef %dlb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.vsp1_dl_body, ptr %dlb, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #8, !srcloc !29
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !23

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !26

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #8
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %bodies = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %dlb, ptr noundef %3, ptr noundef %bodies) #8
  br i1 %call.i.i, label %if.end.i.i, label %refcount_inc.exit.list_add_tail.exit_crit_edge

refcount_inc.exit.list_add_tail.exit_crit_edge:   ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dlb, ptr %prev.i, align 4
  %5 = ptrtoint ptr %dlb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %bodies, ptr %dlb, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %dlb, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %dlb, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %refcount_inc.exit.list_add_tail.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsp1_dl_list_add_chain(ptr noundef %head, ptr noundef %dl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %has_chain = getelementptr inbounds %struct.vsp1_dl_list, ptr %head, i32 0, i32 9
  %0 = ptrtoint ptr %has_chain to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %has_chain, align 4
  %chain = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 10
  %chain1 = getelementptr inbounds %struct.vsp1_dl_list, ptr %head, i32 0, i32 10
  %prev.i = getelementptr inbounds %struct.vsp1_dl_list, ptr %head, i32 0, i32 10, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %chain, ptr noundef %2, ptr noundef %chain1) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %chain, ptr %prev.i, align 4
  %4 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %chain1, ptr %chain, align 4
  %prev3.i.i = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %chain, ptr %2, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_dl_list_commit(ptr noundef %dl, i32 noundef %dl_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dlm1 = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 1
  %0 = ptrtoint ptr %dlm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlm1, align 4
  %chain = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 10
  %2 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %chain, align 4
  %cmp.i = icmp eq ptr %3, %chain
  tail call fastcc void @vsp1_dl_list_fill_header(ptr noundef %dl, i1 noundef zeroext %cmp.i)
  %4 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn47 = load ptr, ptr %chain, align 4
  %cmp.not48 = icmp eq ptr %.pn47, %chain
  br i1 %cmp.not48, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn49 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn47, %entry.for.body_crit_edge ]
  %dl_next.0 = getelementptr i8, ptr %.pn49, i32 -48
  %5 = ptrtoint ptr %.pn49 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn49, align 4
  %cmp.i38 = icmp eq ptr %6, %chain
  tail call fastcc void @vsp1_dl_list_fill_header(ptr noundef %dl_next.0, i1 noundef zeroext %cmp.i38)
  %7 = ptrtoint ptr %.pn49 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn49, align 4
  %cmp.not = icmp eq ptr %.pn, %chain
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %and = and i32 %dl_flags, -2
  %flags15 = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 11
  %8 = ptrtoint ptr %flags15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %flags15, align 4
  %lock = getelementptr inbounds %struct.vsp1_dl_manager, ptr %1, i32 0, i32 3
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %singleshot = getelementptr inbounds %struct.vsp1_dl_manager, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %singleshot to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %singleshot, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool23.not = icmp eq i8 %10, 0
  %11 = ptrtoint ptr %dlm1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dlm1, align 4
  br i1 %tobool23.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %vsp12.i.i = getelementptr inbounds %struct.vsp1_dl_manager, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %vsp12.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vsp12.i.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %mul.i.i = shl i32 %16, 2
  %add.i.i = add i32 %mul.i.i, 260
  %dma.i.i = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 4
  %17 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma.i.i, align 4
  %mmio.i.i.i = getelementptr inbounds %struct.vsp1_device, ptr %14, i32 0, i32 3
  %19 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %21) #8, !srcloc !31
  %active.i = getelementptr inbounds %struct.vsp1_dl_manager, ptr %12, i32 0, i32 5
  br label %if.end

if.else:                                          ; preds = %for.end
  %queued.i.i = getelementptr inbounds %struct.vsp1_dl_manager, ptr %12, i32 0, i32 6
  %22 = ptrtoint ptr %queued.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %queued.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.else.if.end26.i_crit_edge, label %vsp1_dl_list_hw_update_pending.exit.i

if.else.if.end26.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

vsp1_dl_list_hw_update_pending.exit.i:            ; preds = %if.else
  %vsp11.i.i = getelementptr inbounds %struct.vsp1_dl_manager, ptr %12, i32 0, i32 2
  %24 = ptrtoint ptr %vsp11.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vsp11.i.i, align 4
  %26 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %12, align 4
  %mul.i.i41 = shl i32 %27, 2
  %mmio.i.i.i42 = getelementptr inbounds %struct.vsp1_device, ptr %25, i32 0, i32 3
  %28 = ptrtoint ptr %mmio.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i.i.i42, align 4
  %add.ptr.i.i.i43 = getelementptr i8, ptr %29, i32 %mul.i.i41
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i43) #8, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  %31 = and i32 %30, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool2.i.not.i = icmp eq i32 %31, 0
  br i1 %tobool2.i.not.i, label %vsp1_dl_list_hw_update_pending.exit.i.if.end26.i_crit_edge, label %if.then.i

vsp1_dl_list_hw_update_pending.exit.i.if.end26.i_crit_edge: ; preds = %vsp1_dl_list_hw_update_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then.i:                                        ; preds = %vsp1_dl_list_hw_update_pending.exit.i
  %pending.i = getelementptr inbounds %struct.vsp1_dl_manager, ptr %12, i32 0, i32 7
  %32 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pending.i, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.then.i.vsp1_dl_list_commit_continuous.exit_crit_edge, label %land.rhs.i

if.then.i.vsp1_dl_list_commit_continuous.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_dl_list_commit_continuous.exit

land.rhs.i:                                       ; preds = %if.then.i
  %flags.i = getelementptr inbounds %struct.vsp1_dl_list, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %land.rhs.i.vsp1_dl_list_commit_continuous.exit_crit_edge, label %do.end.i, !prof !26

land.rhs.i.vsp1_dl_list_commit_continuous.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_dl_list_commit_continuous.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 887, i32 noundef 9, ptr noundef null) #8
  br label %vsp1_dl_list_commit_continuous.exit

if.end26.i:                                       ; preds = %vsp1_dl_list_hw_update_pending.exit.i.if.end26.i_crit_edge, %if.else.if.end26.i_crit_edge
  %36 = ptrtoint ptr %dlm1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dlm1, align 4
  %vsp12.i.i44 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %vsp12.i.i44 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vsp12.i.i44, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %37, align 4
  %mul.i38.i = shl i32 %41, 2
  %add.i.i45 = add i32 %mul.i38.i, 260
  %dma.i.i46 = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 4
  %42 = ptrtoint ptr %dma.i.i46 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma.i.i46, align 4
  %mmio.i.i39.i = getelementptr inbounds %struct.vsp1_device, ptr %39, i32 0, i32 3
  %44 = ptrtoint ptr %mmio.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio.i.i39.i, align 4
  %add.ptr.i.i40.i = getelementptr i8, ptr %45, i32 %add.i.i45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  %46 = tail call i32 @llvm.bswap.i32(i32 %43) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i40.i, i32 %46) #8, !srcloc !31
  br label %vsp1_dl_list_commit_continuous.exit

vsp1_dl_list_commit_continuous.exit:              ; preds = %if.end26.i, %do.end.i, %land.rhs.i.vsp1_dl_list_commit_continuous.exit_crit_edge, %if.then.i.vsp1_dl_list_commit_continuous.exit_crit_edge
  %queued.i.sink42.i = phi ptr [ %queued.i.i, %if.end26.i ], [ %pending.i, %if.then.i.vsp1_dl_list_commit_continuous.exit_crit_edge ], [ %pending.i, %do.end.i ], [ %pending.i, %land.rhs.i.vsp1_dl_list_commit_continuous.exit_crit_edge ]
  %47 = ptrtoint ptr %queued.i.sink42.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %queued.i.sink42.i, align 4
  tail call fastcc void @__vsp1_dl_list_put(ptr noundef %48) #8
  br label %if.end

if.end:                                           ; preds = %vsp1_dl_list_commit_continuous.exit, %if.then
  %queued.i.sink42.i.sink = phi ptr [ %queued.i.sink42.i, %vsp1_dl_list_commit_continuous.exit ], [ %active.i, %if.then ]
  %49 = ptrtoint ptr %queued.i.sink42.i.sink to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %dl, ptr %queued.i.sink42.i.sink, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call20) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsp1_dl_list_fill_header(ptr noundef readonly %dl, i1 noundef zeroext %is_last) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dlm1 = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 1
  %0 = ptrtoint ptr %dlm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlm1, align 4
  %header = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 2
  %2 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %header, align 4
  %lists = getelementptr inbounds %struct.vsp1_dl_header, ptr %3, i32 0, i32 1
  %body0 = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 5
  %4 = ptrtoint ptr %body0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %body0, align 4
  %num_entries = getelementptr inbounds %struct.vsp1_dl_body, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_entries, align 4
  %mul = shl i32 %7, 3
  %8 = ptrtoint ptr %lists to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %mul, ptr %lists, align 1
  %bodies = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 6
  %9 = ptrtoint ptr %bodies to i32
  call void @__asan_load4_noabort(i32 %9)
  %dlb.0129 = load ptr, ptr %bodies, align 4
  %cmp.not130 = icmp eq ptr %dlb.0129, %bodies
  br i1 %cmp.not130, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %dlb.0133 = phi ptr [ %dlb.0, %for.body.for.body_crit_edge ], [ %dlb.0129, %entry.for.body_crit_edge ]
  %hdr.0132 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %lists, %entry.for.body_crit_edge ]
  %num_lists.0131 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %inc = add i32 %num_lists.0131, 1
  %incdec.ptr = getelementptr %struct.vsp1_dl_header_list, ptr %hdr.0132, i32 1
  %dma = getelementptr inbounds %struct.vsp1_dl_body, ptr %dlb.0133, i32 0, i32 5
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma, align 4
  %addr = getelementptr %struct.vsp1_dl_header_list, ptr %hdr.0132, i32 1, i32 1
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %addr, align 1
  %num_entries3 = getelementptr inbounds %struct.vsp1_dl_body, ptr %dlb.0133, i32 0, i32 7
  %13 = ptrtoint ptr %num_entries3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_entries3, align 4
  %mul4 = shl i32 %14, 3
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %mul4, ptr %incdec.ptr, align 1
  %16 = ptrtoint ptr %dlb.0133 to i32
  call void @__asan_load4_noabort(i32 %16)
  %dlb.0 = load ptr, ptr %dlb.0133, align 4
  %cmp.not = icmp eq ptr %dlb.0, %bodies
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %num_lists.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %17 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %header, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %num_lists.0.lcssa, ptr %18, align 1
  %20 = load ptr, ptr %header, align 4
  %flags = getelementptr inbounds %struct.vsp1_dl_header, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 0, ptr %flags, align 1
  %singleshot = getelementptr inbounds %struct.vsp1_dl_manager, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %singleshot to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %singleshot, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  %brmerge = or i1 %tobool.not, %is_last
  br i1 %brmerge, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %header, align 4
  %flags16 = getelementptr inbounds %struct.vsp1_dl_header, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %flags16 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %flags16, align 1
  %or = or i32 %27, 2
  store i32 %or, ptr %flags16, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %28 = ptrtoint ptr %singleshot to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %singleshot, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool18.not = icmp ne i8 %29, 0
  %30 = and i1 %tobool18.not, %is_last
  br i1 %30, label %if.end.if.end25_crit_edge, label %if.then21

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %header, align 4
  %flags23 = getelementptr inbounds %struct.vsp1_dl_header, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %flags23 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %flags23, align 1
  %or24 = or i32 %34, 1
  store i32 %or24, ptr %flags23, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end.if.end25_crit_edge
  br i1 %is_last, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %chain = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 10
  %35 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chain, align 4
  %dma33 = getelementptr i8, ptr %36, i32 -28
  br label %if.end42.sink.split

if.else:                                          ; preds = %if.end25
  %37 = ptrtoint ptr %singleshot to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %singleshot, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool36.not = icmp eq i8 %38, 0
  br i1 %tobool36.not, label %if.then37, label %if.else.if.end42_crit_edge

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dma38 = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 4
  br label %if.end42.sink.split

if.end42.sink.split:                              ; preds = %if.then37, %if.then27
  %dma38.sink = phi ptr [ %dma38, %if.then37 ], [ %dma33, %if.then27 ]
  %39 = ptrtoint ptr %dma38.sink to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma38.sink, align 4
  %41 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %header, align 4
  %next_header40 = getelementptr inbounds %struct.vsp1_dl_header, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %next_header40 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %40, ptr %next_header40, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %if.else.if.end42_crit_edge
  %extension = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 3
  %44 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %extension, align 4
  %tobool43.not = icmp eq ptr %45, null
  br i1 %tobool43.not, label %if.end42.cleanup_crit_edge, label %if.end45

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end45:                                         ; preds = %if.end42
  %flags47 = getelementptr inbounds %struct.vsp1_dl_ext_header, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %flags47 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 0, ptr %flags47, align 1
  %pre_cmd = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 7
  %47 = ptrtoint ptr %pre_cmd to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pre_cmd, align 4
  %tobool48.not = icmp eq ptr %48, null
  br i1 %tobool48.not, label %if.end45.if.end60_crit_edge, label %if.then49

if.end45.if.end60_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_dma = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %cmd_dma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cmd_dma, align 4
  %51 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %extension, align 4
  %pre_ext_dl_plist = getelementptr inbounds %struct.vsp1_dl_ext_header, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %pre_ext_dl_plist to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %50, ptr %pre_ext_dl_plist, align 1
  %54 = ptrtoint ptr %pre_cmd to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pre_cmd, align 4
  %num_cmds = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %num_cmds to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_cmds, align 4
  %conv = trunc i32 %57 to i16
  %58 = load ptr, ptr %extension, align 4
  %pre_ext_dl_num_cmd = getelementptr inbounds %struct.vsp1_dl_ext_header, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %pre_ext_dl_num_cmd to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %conv, ptr %pre_ext_dl_num_cmd, align 1
  %60 = load ptr, ptr %extension, align 4
  %flags55 = getelementptr inbounds %struct.vsp1_dl_ext_header, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %flags55 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %flags55, align 1
  %63 = or i16 %62, 512
  store i16 %63, ptr %flags55, align 1
  %64 = load ptr, ptr %pre_cmd, align 4
  %opcode.i = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %opcode.i, align 4
  %conv.i = zext i8 %66 to i32
  %cmds.i = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %64, i32 0, i32 4
  %67 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cmds.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %conv.i, ptr %68, align 1
  %flags.i = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %64, i32 0, i32 3
  %70 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags.i, align 4
  %72 = load ptr, ptr %cmds.i, align 4
  %flags4.i = getelementptr inbounds %struct.vsp1_pre_ext_dl_body, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %flags4.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %71, ptr %flags4.i, align 1
  %data_dma.i = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %64, i32 0, i32 8
  %74 = ptrtoint ptr %data_dma.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %data_dma.i, align 4
  %76 = load ptr, ptr %cmds.i, align 4
  %address_set.i = getelementptr inbounds %struct.vsp1_pre_ext_dl_body, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %address_set.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %75, ptr %address_set.i, align 1
  %78 = load ptr, ptr %cmds.i, align 4
  %reserved.i = getelementptr inbounds %struct.vsp1_pre_ext_dl_body, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %reserved.i to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 0, ptr %reserved.i, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.then49, %if.end45.if.end60_crit_edge
  %post_cmd = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl, i32 0, i32 8
  %80 = ptrtoint ptr %post_cmd to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %post_cmd, align 4
  %tobool61.not = icmp eq ptr %81, null
  br i1 %tobool61.not, label %if.end60.cleanup_crit_edge, label %if.then62

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_dma64 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %cmd_dma64 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cmd_dma64, align 4
  %84 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %extension, align 4
  %post_ext_dl_plist = getelementptr inbounds %struct.vsp1_dl_ext_header, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %post_ext_dl_plist to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 %83, ptr %post_ext_dl_plist, align 1
  %87 = ptrtoint ptr %post_cmd to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %post_cmd, align 4
  %num_cmds67 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %num_cmds67 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_cmds67, align 4
  %91 = load ptr, ptr %extension, align 4
  %post_ext_dl_num_cmd = getelementptr inbounds %struct.vsp1_dl_ext_header, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %post_ext_dl_num_cmd to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %90, ptr %post_ext_dl_num_cmd, align 1
  %93 = load ptr, ptr %extension, align 4
  %flags70 = getelementptr inbounds %struct.vsp1_dl_ext_header, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %flags70 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %flags70, align 1
  %96 = or i16 %95, 256
  store i16 %96, ptr %flags70, align 1
  %97 = load ptr, ptr %post_cmd, align 4
  %opcode.i121 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %opcode.i121 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %opcode.i121, align 4
  %conv.i122 = zext i8 %99 to i32
  %cmds.i123 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %97, i32 0, i32 4
  %100 = ptrtoint ptr %cmds.i123 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cmds.i123, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_storeN_noabort(i32 %102, i32 4)
  store i32 %conv.i122, ptr %101, align 1
  %flags.i124 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %97, i32 0, i32 3
  %103 = ptrtoint ptr %flags.i124 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags.i124, align 4
  %105 = load ptr, ptr %cmds.i123, align 4
  %flags4.i125 = getelementptr inbounds %struct.vsp1_pre_ext_dl_body, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %flags4.i125 to i32
  call void @__asan_storeN_noabort(i32 %106, i32 4)
  store i32 %104, ptr %flags4.i125, align 1
  %data_dma.i126 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %97, i32 0, i32 8
  %107 = ptrtoint ptr %data_dma.i126 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %data_dma.i126, align 4
  %109 = load ptr, ptr %cmds.i123, align 4
  %address_set.i127 = getelementptr inbounds %struct.vsp1_pre_ext_dl_body, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %address_set.i127 to i32
  call void @__asan_storeN_noabort(i32 %110, i32 4)
  store i32 %108, ptr %address_set.i127, align 1
  %111 = load ptr, ptr %cmds.i123, align 4
  %reserved.i128 = getelementptr inbounds %struct.vsp1_pre_ext_dl_body, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %reserved.i128 to i32
  call void @__asan_storeN_noabort(i32 %112, i32 4)
  store i32 0, ptr %reserved.i128, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %if.end60.cleanup_crit_edge, %if.end42.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsp1_dlm_irq_frame_end(ptr noundef %dlm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vsp11 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %dlm, i32 0, i32 2
  %0 = ptrtoint ptr %vsp11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsp11, align 4
  %mmio.i = getelementptr inbounds %struct.vsp1_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 56
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !32
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  %lock = getelementptr inbounds %struct.vsp1_dl_manager, ptr %dlm, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %singleshot = getelementptr inbounds %struct.vsp1_dl_manager, ptr %dlm, i32 0, i32 1
  %6 = ptrtoint ptr %singleshot to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %singleshot, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %active = getelementptr inbounds %struct.vsp1_dl_manager, ptr %dlm, i32 0, i32 5
  %8 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %active, align 4
  tail call fastcc void @__vsp1_dl_list_put(ptr noundef %9)
  br label %done.sink.split

if.end:                                           ; preds = %entry
  %queued.i = getelementptr inbounds %struct.vsp1_dl_manager, ptr %dlm, i32 0, i32 6
  %10 = ptrtoint ptr %queued.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queued.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.if.end5_crit_edge, label %vsp1_dl_list_hw_update_pending.exit

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

vsp1_dl_list_hw_update_pending.exit:              ; preds = %if.end
  %12 = ptrtoint ptr %vsp11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vsp11, align 4
  %14 = ptrtoint ptr %dlm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dlm, align 4
  %mul.i = shl i32 %15, 2
  %mmio.i.i = getelementptr inbounds %struct.vsp1_device, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %mul.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  %19 = and i32 %18, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool2.i.not = icmp eq i32 %19, 0
  br i1 %tobool2.i.not, label %vsp1_dl_list_hw_update_pending.exit.if.end5_crit_edge, label %vsp1_dl_list_hw_update_pending.exit.done_crit_edge

vsp1_dl_list_hw_update_pending.exit.done_crit_edge: ; preds = %vsp1_dl_list_hw_update_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

vsp1_dl_list_hw_update_pending.exit.if.end5_crit_edge: ; preds = %vsp1_dl_list_hw_update_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end5:                                          ; preds = %vsp1_dl_list_hw_update_pending.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %20 = ptrtoint ptr %dlm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dlm, align 4
  %add = add i32 %21, 28
  %shl = shl nuw i32 1, %add
  %and = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.done_crit_edge

if.end5.done_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end8:                                          ; preds = %if.end5
  %active9 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %dlm, i32 0, i32 5
  %22 = ptrtoint ptr %active9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %active9, align 4
  %tobool10.not = icmp eq ptr %23, null
  br i1 %tobool10.not, label %if.end8.if.end20_crit_edge, label %land.lhs.true

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end8
  %flags12 = getelementptr inbounds %struct.vsp1_dl_list, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %flags12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags12, align 4
  %and13 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end20_crit_edge, label %if.then15

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %and19 = and i32 %25, -3
  %26 = ptrtoint ptr %flags12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and19, ptr %flags12, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %land.lhs.true.if.end20_crit_edge, %if.end8.if.end20_crit_edge
  %flags.0 = phi i32 [ 2, %if.then15 ], [ 0, %land.lhs.true.if.end20_crit_edge ], [ 0, %if.end8.if.end20_crit_edge ]
  %27 = ptrtoint ptr %queued.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %queued.i, align 4
  %tobool21.not = icmp eq ptr %28, null
  br i1 %tobool21.not, label %if.end20.if.end38_crit_edge, label %if.then22

if.end20.if.end38_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %flags24 = getelementptr inbounds %struct.vsp1_dl_list, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags24, align 4
  %and25 = and i32 %30, 4
  %and32 = and i32 %30, -5
  store i32 %and32, ptr %flags24, align 4
  %31 = ptrtoint ptr %active9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %active9, align 4
  tail call fastcc void @__vsp1_dl_list_put(ptr noundef %32)
  %33 = ptrtoint ptr %queued.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %queued.i, align 4
  %35 = ptrtoint ptr %active9 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %active9, align 4
  store ptr null, ptr %queued.i, align 4
  %36 = or i32 %flags.0, %and25
  %or37 = or i32 %36, 1
  br label %if.end38

if.end38:                                         ; preds = %if.then22, %if.end20.if.end38_crit_edge
  %flags.2 = phi i32 [ %or37, %if.then22 ], [ %flags.0, %if.end20.if.end38_crit_edge ]
  %pending = getelementptr inbounds %struct.vsp1_dl_manager, ptr %dlm, i32 0, i32 7
  %37 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pending, align 4
  %tobool39.not = icmp eq ptr %38, null
  br i1 %tobool39.not, label %if.end38.done_crit_edge, label %if.then40

if.end38.done_crit_edge:                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %dlm1.i = getelementptr inbounds %struct.vsp1_dl_list, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %dlm1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dlm1.i, align 4
  %vsp12.i = getelementptr inbounds %struct.vsp1_dl_manager, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %vsp12.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vsp12.i, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %40, align 4
  %mul.i75 = shl i32 %44, 2
  %add.i = add i32 %mul.i75, 260
  %dma.i = getelementptr inbounds %struct.vsp1_dl_list, ptr %38, i32 0, i32 4
  %45 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma.i, align 4
  %mmio.i.i76 = getelementptr inbounds %struct.vsp1_device, ptr %42, i32 0, i32 3
  %47 = ptrtoint ptr %mmio.i.i76 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmio.i.i76, align 4
  %add.ptr.i.i77 = getelementptr i8, ptr %48, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  %49 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i77, i32 %49) #8, !srcloc !31
  %50 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pending, align 4
  %52 = ptrtoint ptr %queued.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %queued.i, align 4
  br label %done.sink.split

done.sink.split:                                  ; preds = %if.then40, %if.then
  %pending.sink = phi ptr [ %pending, %if.then40 ], [ %active, %if.then ]
  %flags.3.ph = phi i32 [ %flags.2, %if.then40 ], [ 1, %if.then ]
  %53 = ptrtoint ptr %pending.sink to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %pending.sink, align 4
  br label %done

done:                                             ; preds = %done.sink.split, %if.end38.done_crit_edge, %if.end5.done_crit_edge, %vsp1_dl_list_hw_update_pending.exit.done_crit_edge
  %flags.3 = phi i32 [ 0, %vsp1_dl_list_hw_update_pending.exit.done_crit_edge ], [ 0, %if.end5.done_crit_edge ], [ %flags.2, %if.end38.done_crit_edge ], [ %flags.3.ph, %done.sink.split ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret i32 %flags.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_dlm_setup(ptr nocapture noundef readonly %vsp1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %features = getelementptr inbounds %struct.vsp1_device_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features, align 4
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %wpf_count12 = getelementptr inbounds %struct.vsp1_device_info, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %wpf_count12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wpf_count12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13.not = icmp eq i32 %7, 0
  br i1 %cmp13.not, label %for.cond.preheader.if.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mmio.i = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = mul i32 %i.014, 36
  %add = add i32 %mul, 284
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 553779200) #8, !srcloc !31
  %inc = add nuw i32 %i.014, 1
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %wpf_count = getelementptr inbounds %struct.vsp1_device_info, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %wpf_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wpf_count, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %mmio.i8 = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 3
  %14 = ptrtoint ptr %mmio.i8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i8, align 4
  %add.ptr.i9 = getelementptr i8, ptr %15, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 286326785) #8, !srcloc !31
  %16 = ptrtoint ptr %mmio.i8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i8, align 4
  %add.ptr.i11 = getelementptr i8, ptr %17, i32 276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 67108864) #8, !srcloc !31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_dlm_reset(ptr noundef %dlm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vsp1_dl_manager, ptr %dlm, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %active = getelementptr inbounds %struct.vsp1_dl_manager, ptr %dlm, i32 0, i32 5
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %active, align 4
  tail call fastcc void @__vsp1_dl_list_put(ptr noundef %1)
  %queued = getelementptr inbounds %struct.vsp1_dl_manager, ptr %dlm, i32 0, i32 6
  %2 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queued, align 4
  tail call fastcc void @__vsp1_dl_list_put(ptr noundef %3)
  %pending = getelementptr inbounds %struct.vsp1_dl_manager, ptr %dlm, i32 0, i32 7
  %4 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pending, align 4
  tail call fastcc void @__vsp1_dl_list_put(ptr noundef %5)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  %6 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %active, align 4
  %7 = ptrtoint ptr %queued to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %queued, align 4
  %8 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsp1_dlm_dl_body_get(ptr nocapture noundef readonly %dlm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pool = getelementptr inbounds %struct.vsp1_dl_manager, ptr %dlm, i32 0, i32 8
  %0 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool, align 4
  %lock.i = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %1, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %free.i = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %free.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %free.i
  br i1 %cmp.i.not.i, label %entry.vsp1_dl_body_get.exit_crit_edge, label %if.then.i

entry.vsp1_dl_body_get.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_dl_body_get.exit

if.then.i:                                        ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %refcnt.i = getelementptr i8, ptr %3, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  %12 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %refcnt.i, align 4
  br label %vsp1_dl_body_get.exit

vsp1_dl_body_get.exit:                            ; preds = %list_del.exit.i, %entry.vsp1_dl_body_get.exit_crit_edge
  %dlb.0.i = phi ptr [ null, %entry.vsp1_dl_body_get.exit_crit_edge ], [ %add.ptr.i, %list_del.exit.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  ret ptr %dlb.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsp1_dlm_create(ptr noundef %vsp1, i32 noundef %index, i32 noundef %prealloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsp1, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 84, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup36_crit_edge, label %if.end

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup36

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %index, ptr %call.i, align 4
  %info = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 1
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info, align 4
  %uapi = getelementptr inbounds %struct.vsp1_device_info, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %uapi to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %uapi, align 4, !range !28
  %singleshot = getelementptr inbounds %struct.vsp1_dl_manager, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %singleshot to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %singleshot, align 4
  %vsp13 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %vsp13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vsp1, ptr %vsp13, align 4
  %lock = getelementptr inbounds %struct.vsp1_dl_manager, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @vsp1_dlm_create.__key, i16 noundef signext 3) #8
  %free = getelementptr inbounds %struct.vsp1_dl_manager, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %free, ptr %free, align 4
  %prev.i = getelementptr inbounds %struct.vsp1_dl_manager, ptr %call.i, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %free, ptr %prev.i, align 4
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  %features = getelementptr inbounds %struct.vsp1_device_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %features, align 4
  %and = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %add = select i1 %tobool6.not, i32 80, i32 96
  %add8 = add i32 %prealloc, 1
  %call9 = tail call ptr @vsp1_dl_body_pool_create(ptr noundef %vsp1, i32 noundef %add8, i32 noundef 256, i32 noundef %add)
  %pool = getelementptr inbounds %struct.vsp1_dl_manager, ptr %call.i, i32 0, i32 8
  %15 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9, ptr %pool, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end.cleanup36_crit_edge, label %for.cond.preheader

if.end.cleanup36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup36

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prealloc)
  %cmp93.not = icmp eq i32 %prealloc, 0
  br i1 %cmp93.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.094 = phi i32 [ %inc, %list_add_tail.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 60) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.if.then16_crit_edge, label %if.end.i

for.body.if.then16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.end.i:                                         ; preds = %for.body
  %bodies.i = getelementptr inbounds %struct.vsp1_dl_list, ptr %call7.i.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %bodies.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %bodies.i, ptr %bodies.i, align 4
  %prev.i.i = getelementptr inbounds %struct.vsp1_dl_list, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %bodies.i, ptr %prev.i.i, align 8
  %dlm1.i = getelementptr inbounds %struct.vsp1_dl_list, ptr %call7.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %dlm1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %dlm1.i, align 8
  %20 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pool, align 4
  %lock.i.i = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %21, i32 0, i32 5
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #8
  %free.i.i = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %free.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %free.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %23, %free.i.i
  br i1 %cmp.i.not.i.i, label %vsp1_dl_body_get.exit.thread.i, label %if.then.i.i

vsp1_dl_body_get.exit.thread.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #8
  %body033.i = getelementptr inbounds %struct.vsp1_dl_list, ptr %call7.i.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %body033.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %body033.i, align 8
  br label %if.then5.i

if.then.i.i:                                      ; preds = %if.end.i
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 -8
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %23) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.vsp1_dl_body_get.exit.i_crit_edge

if.then.i.i.vsp1_dl_body_get.exit.i_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_dl_body_get.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %23, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %vsp1_dl_body_get.exit.i

vsp1_dl_body_get.exit.i:                          ; preds = %if.end.i.i.i.i, %if.then.i.i.vsp1_dl_body_get.exit.i_crit_edge
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %refcnt.i.i = getelementptr i8, ptr %23, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #8
  %33 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 1, ptr %refcnt.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #8
  %body0.i = getelementptr inbounds %struct.vsp1_dl_list, ptr %call7.i.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %body0.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr.i.i, ptr %body0.i, align 8
  %tobool4.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool4.not.i, label %vsp1_dl_body_get.exit.i.if.then5.i_crit_edge, label %if.end17

vsp1_dl_body_get.exit.i.if.then5.i_crit_edge:     ; preds = %vsp1_dl_body_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i

if.then5.i:                                       ; preds = %vsp1_dl_body_get.exit.i.if.then5.i_crit_edge, %vsp1_dl_body_get.exit.thread.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %if.then16

if.then16:                                        ; preds = %if.then5.i, %for.body.if.then16_crit_edge
  tail call void @vsp1_dlm_destroy(ptr noundef nonnull %call.i)
  br label %cleanup36

if.end17:                                         ; preds = %vsp1_dl_body_get.exit.i
  %max_entries.i = getelementptr i8, ptr %23, i32 32
  %35 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_entries.i, align 4
  %mul.i = shl i32 %36, 3
  %entries.i = getelementptr i8, ptr %23, i32 16
  %37 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %entries.i, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 %mul.i
  %header.i = getelementptr inbounds %struct.vsp1_dl_list, ptr %call7.i.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %header.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr.i, ptr %header.i, align 4
  %dma.i = getelementptr i8, ptr %23, i32 20
  %40 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma.i, align 4
  %add.i = add i32 %41, %mul.i
  %dma10.i = getelementptr inbounds %struct.vsp1_dl_list, ptr %call7.i.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %dma10.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add.i, ptr %dma10.i, align 4
  %43 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 76)
  %44 = load i32, ptr %dma.i, align 4
  %addr.i = getelementptr inbounds %struct.vsp1_dl_header, ptr %add.ptr.i, i32 0, i32 1, i32 0, i32 1
  %45 = ptrtoint ptr %addr.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %addr.i, align 1
  %46 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %info, align 4
  %features19 = getelementptr inbounds %struct.vsp1_device_info, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %features19 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %features19, align 4
  %and20 = and i32 %49, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end17.if.end23_crit_edge, label %if.then22

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %header.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %header.i, align 4
  %add.ptr = getelementptr i8, ptr %51, i32 76
  %extension = getelementptr inbounds %struct.vsp1_dl_list, ptr %call7.i.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %extension to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr, ptr %extension, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end17.if.end23_crit_edge
  %53 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %54, ptr noundef %free) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end23.list_add_tail.exit_crit_edge

if.end23.list_add_tail.exit_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call7.i.i.i, ptr %prev.i, align 4
  %56 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %free, ptr %call7.i.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %call7.i.i.i, ptr %54, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end23.list_add_tail.exit_crit_edge
  %inc = add nuw i32 %i.094, 1
  %exitcond.not = icmp eq i32 %inc, %prealloc
  br i1 %exitcond.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %59 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %info, align 4
  %features26 = getelementptr inbounds %struct.vsp1_device_info, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %features26 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %features26, align 4
  %and27 = and i32 %62, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %for.end.cleanup36_crit_edge, label %if.then29

for.end.cleanup36_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup36

if.then29:                                        ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %63 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i69 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 3520, i32 noundef 72) #11
  %tobool.not.i70 = icmp eq ptr %call7.i.i.i69, null
  br i1 %tobool.not.i70, label %if.then29.vsp1_dl_cmd_pool_create.exit.thread_crit_edge, label %if.end.i72

if.then29.vsp1_dl_cmd_pool_create.exit.thread_crit_edge: ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_dl_cmd_pool_create.exit.thread

if.end.i72:                                       ; preds = %if.then29
  %vsp11.i = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %call7.i.i.i69, i32 0, i32 6
  %64 = ptrtoint ptr %vsp11.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %vsp1, ptr %vsp11.i, align 4
  %lock.i = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %call7.i.i.i69, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @vsp1_dl_cmd_pool_create.__key, i16 noundef signext 3) #8
  %free.i = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %call7.i.i.i69, i32 0, i32 4
  %65 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %free.i, ptr %free.i, align 8
  %prev.i.i71 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %call7.i.i.i69, i32 0, i32 4, i32 1
  %66 = ptrtoint ptr %prev.i.i71 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %free.i, ptr %prev.i.i71, align 4
  %67 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %prealloc, i32 40) #8
  %68 = extractvalue { i32, i1 } %67, 1
  br i1 %68, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !23

kcalloc.exit.thread.i:                            ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #10
  %cmds4.i = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %call7.i.i.i69, i32 0, i32 3
  %69 = ptrtoint ptr %cmds4.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %cmds4.i, align 4
  br label %cleanup.sink.split.i

if.end7.i.i.i:                                    ; preds = %if.end.i72
  %70 = extractvalue { i32, i1 } %67, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %70, i32 noundef 3520) #12
  %cmds.i = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %call7.i.i.i69, i32 0, i32 3
  %71 = ptrtoint ptr %cmds.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call8.i.i.i, ptr %cmds.i, align 4
  %tobool5.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool5.not.i, label %if.end7.i.i.i.cleanup.sink.split.i_crit_edge, label %if.end7.i

if.end7.i.i.i.cleanup.sink.split.i_crit_edge:     ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end7.i:                                        ; preds = %if.end7.i.i.i
  %mul.i74 = mul i32 %prealloc, 176
  %size.i = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %call7.i.i.i69, i32 0, i32 1
  %72 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %mul.i74, ptr %size.i, align 4
  %bus_master.i = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 5
  %73 = ptrtoint ptr %bus_master.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bus_master.i, align 4
  %call.i.i75 = tail call ptr @dma_alloc_attrs(ptr noundef %74, i32 noundef %mul.i74, ptr noundef nonnull %call7.i.i.i69, i32 noundef 3264, i32 noundef 4) #8
  %mem.i = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %call7.i.i.i69, i32 0, i32 2
  %75 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i.i75, ptr %mem.i, align 8
  %tobool12.not.i = icmp eq ptr %call.i.i75, null
  br i1 %tobool12.not.i, label %if.then13.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end7.i
  br i1 %cmp93.not, label %vsp1_dl_cmd_pool_create.exit.thread84, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

vsp1_dl_cmd_pool_create.exit.thread84:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %cmdpool86 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %call.i, i32 0, i32 9
  %76 = ptrtoint ptr %cmdpool86 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i.i69, ptr %cmdpool86, align 4
  br label %cleanup36

if.then13.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cmds.i, align 4
  tail call void @kfree(ptr noundef %78) #8
  br label %cleanup.sink.split.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %79 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cmds.i, align 4
  %arrayidx17.i = getelementptr %struct.vsp1_dl_ext_cmd, ptr %80, i32 %i.012.i
  %mul18.i = mul i32 %i.012.i, 176
  %add19.i = add i32 %mul18.i, 16
  %81 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call7.i.i.i69, ptr %arrayidx17.i, align 4
  %opcode22.i = getelementptr %struct.vsp1_dl_ext_cmd, ptr %80, i32 %i.012.i, i32 2
  %82 = ptrtoint ptr %opcode22.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 3, ptr %opcode22.i, align 4
  %num_cmds23.i = getelementptr %struct.vsp1_dl_ext_cmd, ptr %80, i32 %i.012.i, i32 5
  %83 = ptrtoint ptr %num_cmds23.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %num_cmds23.i, align 4
  %84 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mem.i, align 8
  %add.ptr.i76 = getelementptr i8, ptr %85, i32 %mul18.i
  %cmds25.i = getelementptr %struct.vsp1_dl_ext_cmd, ptr %80, i32 %i.012.i, i32 4
  %86 = ptrtoint ptr %cmds25.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %add.ptr.i76, ptr %cmds25.i, align 4
  %87 = ptrtoint ptr %call7.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %call7.i.i.i69, align 8
  %add27.i = add i32 %88, %mul18.i
  %cmd_dma.i = getelementptr %struct.vsp1_dl_ext_cmd, ptr %80, i32 %i.012.i, i32 6
  %89 = ptrtoint ptr %cmd_dma.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add27.i, ptr %cmd_dma.i, align 4
  %90 = load ptr, ptr %mem.i, align 8
  %add.ptr29.i = getelementptr i8, ptr %90, i32 %add19.i
  %data.i = getelementptr %struct.vsp1_dl_ext_cmd, ptr %80, i32 %i.012.i, i32 7
  %91 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %add.ptr29.i, ptr %data.i, align 4
  %92 = load i32, ptr %call7.i.i.i69, align 8
  %add31.i = add i32 %92, %add19.i
  %data_dma.i = getelementptr %struct.vsp1_dl_ext_cmd, ptr %80, i32 %i.012.i, i32 8
  %93 = ptrtoint ptr %data_dma.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add31.i, ptr %data_dma.i, align 4
  %free32.i = getelementptr %struct.vsp1_dl_ext_cmd, ptr %80, i32 %i.012.i, i32 1
  %94 = ptrtoint ptr %prev.i.i71 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %prev.i.i71, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %free32.i, ptr noundef %95, ptr noundef %free.i) #8
  br i1 %call.i.i.i, label %if.end.i.i2.i, label %for.body.i.list_add_tail.exit.i_crit_edge

for.body.i.list_add_tail.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i2.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %prev.i.i71 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %free32.i, ptr %prev.i.i71, align 4
  %97 = ptrtoint ptr %free32.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %free.i, ptr %free32.i, align 4
  %prev3.i.i.i = getelementptr %struct.vsp1_dl_ext_cmd, ptr %80, i32 %i.012.i, i32 1, i32 1
  %98 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %95, ptr %prev3.i.i.i, align 4
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %free32.i, ptr %95, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i2.i, %for.body.i.list_add_tail.exit.i_crit_edge
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %prealloc
  br i1 %exitcond.not.i, label %vsp1_dl_cmd_pool_create.exit, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cleanup.sink.split.i:                             ; preds = %if.then13.i, %if.end7.i.i.i.cleanup.sink.split.i_crit_edge, %kcalloc.exit.thread.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i69) #8
  br label %vsp1_dl_cmd_pool_create.exit.thread

vsp1_dl_cmd_pool_create.exit.thread:              ; preds = %cleanup.sink.split.i, %if.then29.vsp1_dl_cmd_pool_create.exit.thread_crit_edge
  %cmdpool82 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %call.i, i32 0, i32 9
  %100 = ptrtoint ptr %cmdpool82 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %cmdpool82, align 4
  tail call void @vsp1_dlm_destroy(ptr noundef nonnull %call.i)
  br label %cleanup36

vsp1_dl_cmd_pool_create.exit:                     ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %cmdpool = getelementptr inbounds %struct.vsp1_dl_manager, ptr %call.i, i32 0, i32 9
  %101 = ptrtoint ptr %cmdpool to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call7.i.i.i69, ptr %cmdpool, align 4
  br label %cleanup36

cleanup36:                                        ; preds = %vsp1_dl_cmd_pool_create.exit, %vsp1_dl_cmd_pool_create.exit.thread, %vsp1_dl_cmd_pool_create.exit.thread84, %for.end.cleanup36_crit_edge, %if.then16, %if.end.cleanup36_crit_edge, %entry.cleanup36_crit_edge
  %retval.2 = phi ptr [ null, %vsp1_dl_cmd_pool_create.exit.thread ], [ null, %entry.cleanup36_crit_edge ], [ null, %if.end.cleanup36_crit_edge ], [ null, %if.then16 ], [ %call.i, %vsp1_dl_cmd_pool_create.exit ], [ %call.i, %for.end.cleanup36_crit_edge ], [ %call.i, %vsp1_dl_cmd_pool_create.exit.thread84 ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_dlm_destroy(ptr noundef readonly %dlm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dlm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %free = getelementptr inbounds %struct.vsp1_dl_manager, ptr %dlm, i32 0, i32 4
  %0 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free, align 4
  %cmp.not32 = icmp eq ptr %1, %free
  br i1 %cmp.not32, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %vsp1_dl_list_free.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %dl.033 = phi ptr [ %next.0, %vsp1_dl_list_free.exit.for.body_crit_edge ], [ %1, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %dl.033 to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.0 = load ptr, ptr %dl.033, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dl.033) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dl.033, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %dl.033 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dl.033, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %dl.033 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %dl.033, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dl.033, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %body0.i = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl.033, i32 0, i32 5
  %11 = ptrtoint ptr %body0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %body0.i, align 4
  tail call void @vsp1_dl_body_put(ptr noundef %12) #8
  %bodies.i.i = getelementptr inbounds %struct.vsp1_dl_list, ptr %dl.033, i32 0, i32 6
  %13 = ptrtoint ptr %bodies.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bodies.i.i, align 4
  %cmp.not19.i.i = icmp eq ptr %14, %bodies.i.i
  br i1 %cmp.not19.i.i, label %list_del.exit.vsp1_dl_list_free.exit_crit_edge, label %list_del.exit.for.body.i.i_crit_edge

list_del.exit.for.body.i.i_crit_edge:             ; preds = %list_del.exit
  br label %for.body.i.i

list_del.exit.vsp1_dl_list_free.exit_crit_edge:   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_dl_list_free.exit

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %list_del.exit.for.body.i.i_crit_edge
  %dlb.020.i.i = phi ptr [ %tmp.0.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %14, %list_del.exit.for.body.i.i_crit_edge ]
  %15 = ptrtoint ptr %dlb.020.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %tmp.0.i.i = load ptr, ptr %dlb.020.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dlb.020.i.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %dlb.020.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i.i, align 4
  %18 = ptrtoint ptr %dlb.020.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dlb.020.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %22 = ptrtoint ptr %dlb.020.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %dlb.020.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %dlb.020.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @vsp1_dl_body_put(ptr noundef %dlb.020.i.i) #8
  %cmp.not.i.i = icmp eq ptr %tmp.0.i.i, %bodies.i.i
  br i1 %cmp.not.i.i, label %list_del.exit.i.i.vsp1_dl_list_free.exit_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

list_del.exit.i.i.vsp1_dl_list_free.exit_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_dl_list_free.exit

vsp1_dl_list_free.exit:                           ; preds = %list_del.exit.i.i.vsp1_dl_list_free.exit_crit_edge, %list_del.exit.vsp1_dl_list_free.exit_crit_edge
  tail call void @kfree(ptr noundef %dl.033) #8
  %cmp.not = icmp eq ptr %next.0, %free
  br i1 %cmp.not, label %vsp1_dl_list_free.exit.for.end_crit_edge, label %vsp1_dl_list_free.exit.for.body_crit_edge

vsp1_dl_list_free.exit.for.body_crit_edge:        ; preds = %vsp1_dl_list_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

vsp1_dl_list_free.exit.for.end_crit_edge:         ; preds = %vsp1_dl_list_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %vsp1_dl_list_free.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %pool = getelementptr inbounds %struct.vsp1_dl_manager, ptr %dlm, i32 0, i32 8
  %24 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pool, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %for.end.vsp1_dl_body_pool_destroy.exit_crit_edge, label %if.end.i

for.end.vsp1_dl_body_pool_destroy.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_dl_body_pool_destroy.exit

if.end.i:                                         ; preds = %for.end
  %mem.i = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mem.i, align 4
  %tobool1.not.i = icmp eq ptr %27, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %vsp1.i = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %25, i32 0, i32 6
  %28 = ptrtoint ptr %vsp1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vsp1.i, align 4
  %bus_master.i = getelementptr inbounds %struct.vsp1_device, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %bus_master.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus_master.i, align 4
  %size.i = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %25, i32 0, i32 1
  %32 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size.i, align 4
  %34 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %25, align 4
  tail call void @dma_free_attrs(ptr noundef %31, i32 noundef %33, ptr noundef nonnull %27, i32 noundef %35, i32 noundef 4) #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %bodies.i = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %25, i32 0, i32 3
  %36 = ptrtoint ptr %bodies.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bodies.i, align 4
  tail call void @kfree(ptr noundef %37) #8
  tail call void @kfree(ptr noundef nonnull %25) #8
  br label %vsp1_dl_body_pool_destroy.exit

vsp1_dl_body_pool_destroy.exit:                   ; preds = %if.end4.i, %for.end.vsp1_dl_body_pool_destroy.exit_crit_edge
  %cmdpool = getelementptr inbounds %struct.vsp1_dl_manager, ptr %dlm, i32 0, i32 9
  %38 = ptrtoint ptr %cmdpool to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cmdpool, align 4
  %tobool.not.i23 = icmp eq ptr %39, null
  br i1 %tobool.not.i23, label %vsp1_dl_body_pool_destroy.exit.cleanup_crit_edge, label %if.end.i26

vsp1_dl_body_pool_destroy.exit.cleanup_crit_edge: ; preds = %vsp1_dl_body_pool_destroy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i26:                                       ; preds = %vsp1_dl_body_pool_destroy.exit
  %mem.i24 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %mem.i24 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mem.i24, align 4
  %tobool1.not.i25 = icmp eq ptr %41, null
  br i1 %tobool1.not.i25, label %if.end.i26.if.end4.i31_crit_edge, label %if.then2.i30

if.end.i26.if.end4.i31_crit_edge:                 ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i31

if.then2.i30:                                     ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #10
  %vsp1.i27 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %39, i32 0, i32 6
  %42 = ptrtoint ptr %vsp1.i27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vsp1.i27, align 4
  %bus_master.i28 = getelementptr inbounds %struct.vsp1_device, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %bus_master.i28 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus_master.i28, align 4
  %size.i29 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %39, i32 0, i32 1
  %46 = ptrtoint ptr %size.i29 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size.i29, align 4
  %48 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %39, align 4
  tail call void @dma_free_attrs(ptr noundef %45, i32 noundef %47, ptr noundef nonnull %41, i32 noundef %49, i32 noundef 4) #8
  br label %if.end4.i31

if.end4.i31:                                      ; preds = %if.then2.i30, %if.end.i26.if.end4.i31_crit_edge
  %cmds.i = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %39, i32 0, i32 3
  %50 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cmds.i, align 4
  tail call void @kfree(ptr noundef %51) #8
  tail call void @kfree(ptr noundef nonnull %39) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i31, %vsp1_dl_body_pool_destroy.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @vsp1_dl_body_pool_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/vsp1/vsp1_dl.c", i32 284, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/vsp1/vsp1_dl.c", i32 382, i32 6}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @vsp1_dlm_create.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/vsp1/vsp1_dl.c", i32 1105, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @vsp1_dl_cmd_pool_create.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/vsp1/vsp1_dl.c", i32 436, i32 2}
!12 = distinct !{null, !13, !"vsp1_extended_commands", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/vsp1/vsp1_dl.c", i32 405, i32 48}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2148582439}
!25 = !{i64 2148496903, i64 2148496935, i64 2148496964, i64 2148496998, i64 2148497029, i64 2148497052}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2149628409}
!28 = !{i8 0, i8 2}
!29 = !{i64 2148494438, i64 2148494470, i64 2148494499, i64 2148494533, i64 2148494564, i64 2148494587}
!30 = !{i64 2153787695}
!31 = !{i64 6245573}
!32 = !{i64 6245991}
!33 = !{i64 2153786340}
