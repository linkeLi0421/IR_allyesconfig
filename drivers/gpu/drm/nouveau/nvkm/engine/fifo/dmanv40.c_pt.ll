; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/fifo/dmanv40.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/dmanv40.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fifo_chan_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_fifo_chan_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.136 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.136 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nv03_channel_dma_v0 = type { i8, i8, [2 x i8], i32, i64 }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nv04_fifo_chan = type { %struct.nvkm_fifo_chan, ptr, i32, [16 x ptr] }
%struct.nvkm_instmem = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.mutex, ptr, ptr, ptr, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_gpuobj = type { %union.anon.3, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.3 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_fifo_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x ptr] }

@nv40_fifo_dma_oclass = dso_local constant { %struct.nvkm_fifo_chan_oclass, [40 x i8] } { %struct.nvkm_fifo_chan_oclass { ptr @nv40_fifo_dma_new, %struct.nvkm_sclass { i32 0, i32 0, i32 16494, ptr null, ptr null } }, [40 x i8] zeroinitializer }, align 32
@nv40_fifo_dma_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel dma size %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nv40_fifo_dma_new\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/dmanv40.c\00", [45 x i8] zeroinitializer }, align 32
@nv40_fifo_dma_new._entry_ptr = internal global ptr @nv40_fifo_dma_new._entry, section ".printk_index", align 4
@nv40_fifo_dma_new._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel dma vers %d pushbuf %llx offset %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@nv40_fifo_dma_new._entry_ptr.5 = internal global ptr @nv40_fifo_dma_new._entry.3, section ".printk_index", align 4
@nv40_fifo_dma_func = internal constant { %struct.nvkm_fifo_chan_func, [52 x i8] } { %struct.nvkm_fifo_chan_func { ptr @nv04_fifo_dma_dtor, ptr @nv04_fifo_dma_init, ptr @nv04_fifo_dma_fini, ptr null, ptr @nv40_fifo_dma_engine_ctor, ptr @nv40_fifo_dma_engine_dtor, ptr @nv40_fifo_dma_engine_init, ptr @nv40_fifo_dma_engine_fini, ptr @nv40_fifo_dma_object_ctor, ptr @nv04_fifo_dma_object_dtor, ptr null }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 31, i64 33, i64 36, i64 48]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 31, i64 33, i64 36, i64 48]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 32, i64 31, i64 33, i64 36, i64 48]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 31, i64 33, i64 36, i64 48]
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"nv40_fifo_dma_oclass\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 249, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 204, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 206, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"nv40_fifo_dma_func\00", align 1
@___asan_gen_.31 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/dmanv40.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 178, i32 1 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @nv40_fifo_dma_new._entry, ptr @nv40_fifo_dma_new._entry.3, ptr @nv40_fifo_dma_new._entry_ptr, ptr @nv40_fifo_dma_new._entry_ptr.5, ptr @nv40_fifo_dma_oclass, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @nv40_fifo_dma_func], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_fifo_dma_oclass to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_fifo_dma_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_fifo_dma_new._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_fifo_dma_func to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv40_fifo_dma_new(ptr noundef %base, ptr noundef %oclass, ptr nocapture noundef %data, i32 noundef %size, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 9
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 4
  %device3 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device3, align 4
  %imem4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %imem4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %imem4, align 4
  %client = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp = icmp ugt i32 %9, 4
  br i1 %cmp, label %do.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.nvkm_client, ptr %7, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %handle, align 8
  %oclass7 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %oclass7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %oclass7, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %11, i32 noundef %13, i32 noundef %size) #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %size)
  %cmp11 = icmp ugt i32 %size, 15
  br i1 %cmp11, label %land.lhs.true15, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true15:                                  ; preds = %land.lhs.true
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp18 = icmp eq i8 %15, 0
  br i1 %cmp18, label %if.then20, label %land.lhs.true15.cleanup_crit_edge

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then20:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size)
  %tobool.not = icmp eq i32 %size, 16
  br i1 %tobool.not, label %do.body28, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body28:                                        ; preds = %if.then20
  %16 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client, align 4
  %debug32 = getelementptr inbounds %struct.nvkm_client, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %debug32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp33 = icmp ugt i32 %19, 4
  br i1 %cmp33, label %do.end38, label %do.body28.if.end47_crit_edge

do.body28.if.end47_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

do.end38:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #6
  %name40 = getelementptr inbounds %struct.nvkm_client, ptr %17, i32 0, i32 1
  %handle42 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %handle42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %handle42, align 8
  %oclass43 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %oclass43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %oclass43, align 4
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data, align 8
  %conv45 = zext i8 %25 to i32
  %pushbuf = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %data, i32 0, i32 4
  %26 = ptrtoint ptr %pushbuf to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pushbuf, align 8
  %offset = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %data, i32 0, i32 3
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name40, i32 noundef %21, i32 noundef %23, i32 noundef %conv45, i64 noundef %27, i32 noundef %29) #7
  br label %if.end47

if.end47:                                         ; preds = %do.end38, %do.body28.if.end47_crit_edge
  %pushbuf50 = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %data, i32 0, i32 4
  %30 = ptrtoint ptr %pushbuf50 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %pushbuf50, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool51.not = icmp eq i64 %31, 0
  br i1 %tobool51.not, label %if.end47.cleanup_crit_edge, label %if.end54

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end54:                                         ; preds = %if.end47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 400) #8
  %tobool56.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool56.not, label %if.end54.cleanup_crit_edge, label %if.end58

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end58:                                         ; preds = %if.end54
  %object = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call7.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %object, ptr %pobject, align 4
  %34 = ptrtoint ptr %pushbuf50 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %pushbuf50, align 8
  %call63 = tail call i32 @nvkm_fifo_chan_ctor(ptr noundef nonnull @nv40_fifo_dma_func, ptr noundef %base, i32 noundef 4096, i32 noundef 4096, i1 noundef zeroext false, i64 noundef 0, i64 noundef %35, i32 noundef 15, i32 noundef 0, i32 noundef 12582912, i32 noundef 4096, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #4
  %fifo64 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %call7.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %fifo64 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %base, ptr %fifo64, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool65.not = icmp eq i32 %call63, 0
  br i1 %tobool65.not, label %if.end67, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end67:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call7.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %chid, align 8
  %conv69 = trunc i16 %38 to i8
  %chid70 = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %data, i32 0, i32 1
  %39 = ptrtoint ptr %chid70 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv69, ptr %chid70, align 1
  %conv73 = zext i16 %38 to i32
  %mul = shl nuw nsw i32 %conv73, 7
  %ramfc = getelementptr inbounds %struct.nv04_fifo_chan, ptr %call7.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %ramfc to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul, ptr %ramfc, align 4
  %ramfc74 = getelementptr inbounds %struct.nvkm_instmem, ptr %5, i32 0, i32 10
  %41 = ptrtoint ptr %ramfc74 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ramfc74, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %acquire, align 4
  %call76 = tail call ptr %46(ptr noundef %42) #4
  %47 = ptrtoint ptr %ramfc74 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ramfc74, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wr32, align 4
  %53 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ramfc, align 4
  %conv80 = zext i32 %54 to i64
  %offset81 = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %data, i32 0, i32 3
  %55 = ptrtoint ptr %offset81 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %offset81, align 4
  tail call void %52(ptr noundef %48, i64 noundef %conv80, i32 noundef %56) #4
  %57 = ptrtoint ptr %ramfc74 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ramfc74, align 4
  %ptrs83 = getelementptr inbounds %struct.nvkm_memory, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %ptrs83 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ptrs83, align 4
  %wr3284 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %wr3284 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wr3284, align 4
  %63 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ramfc, align 4
  %add87 = add i32 %64, 4
  %conv88 = zext i32 %add87 to i64
  %65 = ptrtoint ptr %offset81 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %offset81, align 4
  tail call void %62(ptr noundef %58, i64 noundef %conv88, i32 noundef %66) #4
  %67 = ptrtoint ptr %ramfc74 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ramfc74, align 4
  %ptrs91 = getelementptr inbounds %struct.nvkm_memory, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %ptrs91 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ptrs91, align 4
  %wr3292 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %wr3292 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %wr3292, align 4
  %73 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ramfc, align 4
  %add95 = add i32 %74, 12
  %conv96 = zext i32 %add95 to i64
  %push = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call7.i.i, i32 0, i32 7
  %75 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %push, align 8
  %addr = getelementptr inbounds %struct.nvkm_gpuobj, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %addr, align 8
  %shr = lshr i64 %78, 4
  %conv98 = trunc i64 %shr to i32
  tail call void %72(ptr noundef %68, i64 noundef %conv96, i32 noundef %conv98) #4
  %79 = ptrtoint ptr %ramfc74 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ramfc74, align 4
  %ptrs100 = getelementptr inbounds %struct.nvkm_memory, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %ptrs100 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ptrs100, align 4
  %wr32101 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %wr32101 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %wr32101, align 4
  %85 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ramfc, align 4
  %add104 = add i32 %86, 24
  %conv105 = zext i32 %add104 to i64
  tail call void %84(ptr noundef %80, i64 noundef %conv105, i32 noundef -1341628296) #4
  %87 = ptrtoint ptr %ramfc74 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ramfc74, align 4
  %ptrs107 = getelementptr inbounds %struct.nvkm_memory, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %ptrs107 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ptrs107, align 4
  %wr32108 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %wr32108 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %wr32108, align 4
  %93 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ramfc, align 4
  %add111 = add i32 %94, 60
  %conv112 = zext i32 %add111 to i64
  tail call void %92(ptr noundef %88, i64 noundef %conv112, i32 noundef 131071) #4
  %95 = ptrtoint ptr %ramfc74 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ramfc74, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %98, i32 0, i32 8
  %99 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %release, align 4
  tail call void %100(ptr noundef %96) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.end58.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end67 ], [ -22, %if.end47.cleanup_crit_edge ], [ -12, %if.end54.cleanup_crit_edge ], [ %call63, %if.end58.cleanup_crit_edge ], [ -38, %land.lhs.true.cleanup_crit_edge ], [ -38, %land.lhs.true15.cleanup_crit_edge ], [ -7, %if.then20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_chan_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv04_fifo_dma_dtor(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_fifo_dma_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_fifo_dma_fini(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv40_fifo_dma_engine_ctor(ptr noundef %base, ptr noundef %engine, ptr noundef %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end.i [
    i32 31, label %entry.cleanup_crit_edge
    i32 48, label %entry.cleanup_crit_edge9
    i32 33, label %entry.if.end_crit_edge
    i32 36, label %sw.bb2.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.cleanup_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb2.i:                                         ; preds = %entry
  %device.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device.i, align 4
  %chipset.i = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chipset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %6)
  %cmp.i = icmp ult i32 %6, 68
  br i1 %cmp.i, label %sw.bb2.i.cleanup_crit_edge, label %sw.bb2.i.if.end_crit_edge

sw.bb2.i.if.end_crit_edge:                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 53, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %sw.bb2.i.if.end_crit_edge, %entry.if.end_crit_edge
  %fifo.i = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 1
  %7 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fifo.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %engine_id.i = getelementptr inbounds %struct.nvkm_fifo_func, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %engine_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %engine_id.i, align 4
  %call.i = tail call i32 %12(ptr noundef %8, ptr noundef %engine) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i6 = icmp sgt i32 %call.i, -1
  %arrayidx.i = getelementptr %struct.nv04_fifo_chan, ptr %base, i32 0, i32 3, i32 %call.i
  %retval.0.i7 = select i1 %cmp.i6, ptr %arrayidx.i, ptr null
  %call2 = tail call i32 @nvkm_object_bind(ptr noundef %object, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end.i, %sw.bb2.i.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge9
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %do.end.i ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge9 ], [ 0, %sw.bb2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv40_fifo_dma_engine_dtor(ptr noundef %base, ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo.i = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %engine_id.i = getelementptr inbounds %struct.nvkm_fifo_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %engine_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %engine_id.i, align 4
  %call.i = tail call i32 %5(ptr noundef %1, ptr noundef %engine) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  %arrayidx.i = getelementptr %struct.nv04_fifo_chan, ptr %base, i32 0, i32 3, i32 %call.i
  %retval.0.i = select i1 %cmp.i, ptr %arrayidx.i, ptr null
  tail call void @nvkm_gpuobj_del(ptr noundef %retval.0.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv40_fifo_dma_engine_init(ptr nocapture noundef readonly %base, ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo1 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %fifo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo1, align 8
  %device4 = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device4, align 4
  %imem5 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %imem5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %imem5, align 4
  %type.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %7, label %do.end.i [
    i32 31, label %entry.cleanup_crit_edge
    i32 48, label %entry.cleanup_crit_edge106
    i32 33, label %entry.if.end_crit_edge
    i32 36, label %sw.bb2.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.cleanup_crit_edge106:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb2.i:                                         ; preds = %entry
  %device.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device.i, align 4
  %chipset.i = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chipset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %12)
  %cmp.i = icmp ult i32 %12, 68
  br i1 %cmp.i, label %sw.bb2.i.cleanup_crit_edge, label %sw.bb2.i.if.end_crit_edge

sw.bb2.i.if.end_crit_edge:                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 53, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %sw.bb2.i.if.end_crit_edge, %entry.if.end_crit_edge
  %reg.0 = phi i32 [ 13024, %entry.if.end_crit_edge ], [ 13068, %sw.bb2.i.if.end_crit_edge ]
  %ctx.0 = phi i32 [ 56, %entry.if.end_crit_edge ], [ 84, %sw.bb2.i.if.end_crit_edge ]
  %fifo.i = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 1
  %13 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fifo.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %engine_id.i = getelementptr inbounds %struct.nvkm_fifo_func, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %engine_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %engine_id.i, align 4
  %call.i = tail call i32 %18(ptr noundef %14, ptr noundef %engine) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i101 = icmp sgt i32 %call.i, -1
  %arrayidx.i = getelementptr %struct.nv04_fifo_chan, ptr %base, i32 0, i32 3, i32 %call.i
  %retval.0.i102 = select i1 %cmp.i101, ptr %arrayidx.i, ptr null
  %19 = ptrtoint ptr %retval.0.i102 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %retval.0.i102, align 4
  %addr = getelementptr inbounds %struct.nvkm_gpuobj, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %addr, align 8
  %shr = lshr i64 %22, 4
  %conv = trunc i64 %shr to i32
  %lock = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 5
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr15 = getelementptr i8, ptr %24, i32 9472
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %and = and i32 %25, -2
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr22 = getelementptr i8, ptr %27, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %and) #4, !srcloc !26
  %28 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %29, i32 12804
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  %nr = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr, align 4
  %sub = add i32 %32, -1
  %and30 = and i32 %sub, %30
  %chid32 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 5
  %33 = ptrtoint ptr %chid32 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %chid32, align 8
  %conv33 = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and30, i32 %conv33)
  %cmp34 = icmp eq i32 %and30, %conv33
  br i1 %cmp34, label %do.body37, label %if.end.if.end42_crit_edge

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

do.body37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  %add.ptr41 = getelementptr i8, ptr %36, i32 %reg.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %conv) #4, !srcloc !26
  br label %if.end42

if.end42:                                         ; preds = %do.body37, %if.end.if.end42_crit_edge
  %ramfc = getelementptr inbounds %struct.nvkm_instmem, ptr %5, i32 0, i32 10
  %37 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ramfc, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %acquire, align 4
  %call44 = tail call ptr %42(ptr noundef %38) #4
  %43 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ramfc, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wr32, align 4
  %ramfc47 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %base, i32 0, i32 2
  %49 = ptrtoint ptr %ramfc47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ramfc47, align 4
  %add = add i32 %50, %ctx.0
  %conv48 = zext i32 %add to i64
  tail call void %48(ptr noundef %44, i64 noundef %conv48, i32 noundef %conv) #4
  %51 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ramfc, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %release, align 4
  tail call void %56(ptr noundef %52) #4
  %57 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pri, align 4
  %add.ptr57 = getelementptr i8, ptr %58, i32 9472
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %or64 = or i32 %59, 1
  %60 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pri, align 4
  %add.ptr66 = getelementptr i8, ptr %61, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %or64) #4, !srcloc !26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.end.i, %sw.bb2.i.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge106
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv40_fifo_dma_engine_fini(ptr nocapture noundef readonly %base, ptr nocapture noundef readonly %engine, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo1 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %fifo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo1, align 8
  %device4 = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device4, align 4
  %imem5 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %imem5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %imem5, align 4
  %type.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %7, label %do.end.i [
    i32 31, label %entry.cleanup_crit_edge
    i32 48, label %entry.cleanup_crit_edge98
    i32 33, label %entry.do.body6_crit_edge
    i32 36, label %sw.bb2.i
  ]

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body6

entry.cleanup_crit_edge98:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb2.i:                                         ; preds = %entry
  %device.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device.i, align 4
  %chipset.i = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chipset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %12)
  %cmp.i = icmp ult i32 %12, 68
  br i1 %cmp.i, label %sw.bb2.i.cleanup_crit_edge, label %sw.bb2.i.do.body6_crit_edge

sw.bb2.i.do.body6_crit_edge:                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body6

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 53, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

do.body6:                                         ; preds = %sw.bb2.i.do.body6_crit_edge, %entry.do.body6_crit_edge
  %reg.0 = phi i32 [ 13024, %entry.do.body6_crit_edge ], [ 13068, %sw.bb2.i.do.body6_crit_edge ]
  %ctx.0 = phi i32 [ 56, %entry.do.body6_crit_edge ], [ 84, %sw.bb2.i.do.body6_crit_edge ]
  %lock = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 5
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %14, i32 9472
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %and = and i32 %15, -2
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr20 = getelementptr i8, ptr %17, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %and) #4, !srcloc !26
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr24 = getelementptr i8, ptr %19, i32 12804
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %nr = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr, align 4
  %sub = add i32 %22, -1
  %and28 = and i32 %sub, %20
  %chid30 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 5
  %23 = ptrtoint ptr %chid30 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %chid30, align 8
  %conv31 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and28, i32 %conv31)
  %cmp32 = icmp eq i32 %and28, %conv31
  br i1 %cmp32, label %do.body35, label %do.body6.if.end40_crit_edge

do.body6.if.end40_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

do.body35:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr39 = getelementptr i8, ptr %26, i32 %reg.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 0) #4, !srcloc !26
  br label %if.end40

if.end40:                                         ; preds = %do.body35, %do.body6.if.end40_crit_edge
  %ramfc = getelementptr inbounds %struct.nvkm_instmem, ptr %5, i32 0, i32 10
  %27 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ramfc, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %acquire, align 4
  %call42 = tail call ptr %32(ptr noundef %28) #4
  %33 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ramfc, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wr32, align 4
  %ramfc45 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %base, i32 0, i32 2
  %39 = ptrtoint ptr %ramfc45 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ramfc45, align 4
  %add = add i32 %40, %ctx.0
  %conv46 = zext i32 %add to i64
  tail call void %38(ptr noundef %34, i64 noundef %conv46, i32 noundef 0) #4
  %41 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ramfc, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %release, align 4
  tail call void %46(ptr noundef %42) #4
  %47 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri, align 4
  %add.ptr55 = getelementptr i8, ptr %48, i32 9472
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %or62 = or i32 %49, 1
  %50 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri, align 4
  %add.ptr64 = getelementptr i8, ptr %51, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %or62) #4, !srcloc !26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end.i, %sw.bb2.i.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge98
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv40_fifo_dma_object_ctor(ptr nocapture noundef readonly %base, ptr noundef %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo = getelementptr inbounds %struct.nv04_fifo_chan, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo, align 8
  %device = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %imem2 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %imem2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %imem2, align 4
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 5
  %6 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %chid, align 8
  %conv = zext i16 %7 to i32
  %shl = shl i32 %conv, 23
  %handle4 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %8 = ptrtoint ptr %handle4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %handle4, align 8
  %engine5 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 2
  %10 = ptrtoint ptr %engine5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %engine5, align 8
  %type = getelementptr inbounds %struct.nvkm_engine, ptr %11, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %13, label %do.end [
    i32 31, label %entry.sw.epilog_crit_edge
    i32 48, label %entry.sw.epilog_crit_edge48
    i32 33, label %sw.bb7
    i32 36, label %sw.bb9
  ]

entry.sw.epilog_crit_edge48:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or8 = or i32 %shl, 1048576
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or10 = or i32 %shl, 2097152
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 166, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb7, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge48
  %context.0 = phi i32 [ %or10, %sw.bb9 ], [ %or8, %sw.bb7 ], [ %shl, %entry.sw.epilog_crit_edge ], [ %shl, %entry.sw.epilog_crit_edge48 ]
  %mutex = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %ramht = getelementptr inbounds %struct.nvkm_instmem, ptr %5, i32 0, i32 8
  %15 = ptrtoint ptr %ramht to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ramht, align 4
  %17 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %chid, align 8
  %conv30 = zext i16 %18 to i32
  %call = tail call i32 @nvkm_ramht_insert(ptr noundef %16, ptr noundef %object, i32 noundef %conv30, i32 noundef 4, i32 noundef %9, i32 noundef %context.0) #4
  %19 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fifo, align 8
  %mutex33 = getelementptr inbounds %struct.nvkm_fifo, ptr %20, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %mutex33) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_fifo_dma_object_dtor(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_bind(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_gpuobj_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ramht_insert(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @nv40_fifo_dma_oclass, !1, !"nv40_fifo_dma_oclass", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/dmanv40.c", i32 249, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/dmanv40.c", i32 204, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nv40_fifo_dma_new._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @nv40_fifo_dma_new._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/dmanv40.c", i32 206, i32 3}
!10 = !{ptr @nv40_fifo_dma_new._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nv40_fifo_dma_new._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @nv40_fifo_dma_func, !13, !"nv40_fifo_dma_func", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/dmanv40.c", i32 178, i32 1}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 5397114}
!24 = !{i64 2156285760}
!25 = !{i64 2156286162}
!26 = !{i64 5396696}
!27 = !{i64 2156286650}
!28 = !{i64 2156286970}
!29 = !{i64 2156287975}
!30 = !{i64 2156288377}
!31 = !{i64 2156280597}
!32 = !{i64 2156280999}
!33 = !{i64 2156281487}
!34 = !{i64 2156281819}
!35 = !{i64 2156282836}
!36 = !{i64 2156283238}
