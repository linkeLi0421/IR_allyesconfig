; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifonv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifonv50.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fifo_chan_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nv50_channel_gpfifo_v0 = type { i8, i8, [2 x i8], i32, i64, i64, i64 }
%struct.nv50_fifo_chan = type { ptr, %struct.nvkm_fifo_chan, ptr, ptr, ptr, ptr, ptr, [16 x ptr] }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_gpuobj = type { %union.anon.3, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.3 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.nvkm_ramht = type { ptr, ptr, ptr, i32, i32, [0 x %struct.nvkm_ramht_data] }
%struct.nvkm_ramht_data = type { ptr, i32, i32 }

@nv50_fifo_gpfifo_oclass = dso_local constant { %struct.nvkm_fifo_chan_oclass, [40 x i8] } { %struct.nvkm_fifo_chan_oclass { ptr @nv50_fifo_gpfifo_new, %struct.nvkm_sclass { i32 0, i32 0, i32 20591, ptr null, ptr null } }, [40 x i8] zeroinitializer }, align 32
@nv50_fifo_gpfifo_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel gpfifo size %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nv50_fifo_gpfifo_new\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifonv50.c\00", [42 x i8] zeroinitializer }, align 32
@nv50_fifo_gpfifo_new._entry_ptr = internal global ptr @nv50_fifo_gpfifo_new._entry, section ".printk_index", align 4
@nv50_fifo_gpfifo_new._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel gpfifo vers %d vmm %llx pushbuf %llx ioffset %016llx ilength %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@nv50_fifo_gpfifo_new._entry_ptr.5 = internal global ptr @nv50_fifo_gpfifo_new._entry.3, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.6 = private unnamed_addr constant [24 x i8] c"nv50_fifo_gpfifo_oclass\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 88, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 46, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [57 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifonv50.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 48, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @nv50_fifo_gpfifo_new._entry, ptr @nv50_fifo_gpfifo_new._entry.3, ptr @nv50_fifo_gpfifo_new._entry_ptr, ptr @nv50_fifo_gpfifo_new._entry_ptr.5, ptr @nv50_fifo_gpfifo_oclass, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_fifo_gpfifo_oclass to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_fifo_gpfifo_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_fifo_gpfifo_new._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_fifo_gpfifo_new(ptr noundef %base, ptr noundef %oclass, ptr nocapture noundef %data, i32 noundef %size, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 9
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 4
  %client = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ugt i32 %5, 4
  br i1 %cmp, label %do.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle, align 8
  %oclass4 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %oclass4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oclass4, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %7, i32 noundef %9, i32 noundef %size) #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %size)
  %cmp8 = icmp ugt i32 %size, 31
  br i1 %cmp8, label %land.lhs.true12, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true12:                                  ; preds = %land.lhs.true
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp15 = icmp eq i8 %11, 0
  br i1 %cmp15, label %if.then17, label %land.lhs.true12.cleanup_crit_edge

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %size)
  %tobool.not = icmp eq i32 %size, 32
  br i1 %tobool.not, label %do.body25, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body25:                                        ; preds = %if.then17
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client, align 4
  %debug29 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %debug29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp30 = icmp ugt i32 %15, 4
  br i1 %cmp30, label %do.end35, label %do.body25.if.end46_crit_edge

do.body25.if.end46_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

do.end35:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #7
  %name37 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 1
  %handle39 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %handle39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %handle39, align 8
  %oclass40 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %oclass40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %oclass40, align 4
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data, align 8
  %conv42 = zext i8 %21 to i32
  %vmm = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %data, i32 0, i32 6
  %22 = ptrtoint ptr %vmm to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %vmm, align 8
  %pushbuf = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %data, i32 0, i32 5
  %24 = ptrtoint ptr %pushbuf to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %pushbuf, align 8
  %ioffset43 = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %data, i32 0, i32 4
  %26 = ptrtoint ptr %ioffset43 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ioffset43, align 8
  %ilength44 = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %data, i32 0, i32 3
  %28 = ptrtoint ptr %ilength44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ilength44, align 4
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name37, i32 noundef %17, i32 noundef %19, i32 noundef %conv42, i64 noundef %23, i64 noundef %25, i64 noundef %27, i32 noundef %29) #8
  br label %if.end46

if.end46:                                         ; preds = %do.end35, %do.body25.if.end46_crit_edge
  %pushbuf49 = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %data, i32 0, i32 5
  %30 = ptrtoint ptr %pushbuf49 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %pushbuf49, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool50.not = icmp eq i64 %31, 0
  br i1 %tobool50.not, label %if.end46.cleanup_crit_edge, label %if.end53

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end53:                                         ; preds = %if.end46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 424) #9
  %tobool55.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool55.not, label %if.end53.cleanup_crit_edge, label %if.end57

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end57:                                         ; preds = %if.end53
  %object = getelementptr inbounds %struct.nv50_fifo_chan, ptr %call7.i.i, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %object, ptr %pobject, align 4
  %vmm59 = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %data, i32 0, i32 6
  %34 = ptrtoint ptr %vmm59 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %vmm59, align 8
  %36 = ptrtoint ptr %pushbuf49 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %pushbuf49, align 8
  %call61 = tail call i32 @nv50_fifo_chan_ctor(ptr noundef %base, i64 noundef %35, i64 noundef %37, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %chid = getelementptr inbounds %struct.nv50_fifo_chan, ptr %call7.i.i, i32 0, i32 1, i32 5
  %38 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %chid, align 8
  %conv66 = trunc i16 %39 to i8
  %chid67 = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %data, i32 0, i32 1
  %40 = ptrtoint ptr %chid67 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv66, ptr %chid67, align 1
  %ioffset68 = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %data, i32 0, i32 4
  %41 = ptrtoint ptr %ioffset68 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %ioffset68, align 8
  %ilength69 = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %data, i32 0, i32 3
  %43 = ptrtoint ptr %ilength69 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ilength69, align 4
  %div232 = lshr i32 %44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %44)
  %cmp.i = icmp ugt i32 %44, 15
  %sub.i233 = add nsw i32 %div232, -1
  %45 = tail call i32 @llvm.ctlz.i32(i32 %sub.i233, i1 false) #5, !range !21
  %add.i = sub nuw nsw i32 32, %45
  %cond110 = select i1 %cmp.i, i32 %add.i, i32 0
  %conv111 = sext i32 %cond110 to i64
  %ramfc = getelementptr inbounds %struct.nv50_fifo_chan, ptr %call7.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ramfc, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %call113 = tail call ptr %51(ptr noundef %47) #5
  %52 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ramfc, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wr32, align 4
  tail call void %57(ptr noundef %53, i32 noundef 60, i32 noundef 1077895288) #5
  %58 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ramfc, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 8
  %wr32117 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %wr32117 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wr32117, align 4
  tail call void %63(ptr noundef %59, i32 noundef 68, i32 noundef 16793599) #5
  %64 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ramfc, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 8
  %wr32120 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %wr32120 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wr32120, align 4
  %push = getelementptr inbounds %struct.nv50_fifo_chan, ptr %call7.i.i, i32 0, i32 1, i32 7
  %70 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %push, align 8
  %node = getelementptr inbounds %struct.nvkm_gpuobj, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %node, align 4
  %offset = getelementptr inbounds %struct.nvkm_mm_node, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %offset, align 4
  %shr = lshr i32 %75, 4
  tail call void %69(ptr noundef %65, i32 noundef 72, i32 noundef %shr) #5
  %76 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ramfc, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 8
  %wr32124 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %wr32124 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wr32124, align 4
  %conv126 = trunc i64 %42 to i32
  tail call void %81(ptr noundef %77, i32 noundef 80, i32 noundef %conv126) #5
  %82 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ramfc, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 8
  %wr32128 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %wr32128 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wr32128, align 4
  %shr130 = lshr i64 %42, 32
  %shl = shl nsw i64 %conv111, 16
  %or = or i64 %shl, %shr130
  %conv134 = trunc i64 %or to i32
  tail call void %87(ptr noundef %83, i32 noundef 84, i32 noundef %conv134) #5
  %88 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ramfc, align 8
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 8
  %wr32136 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %wr32136 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %wr32136, align 4
  tail call void %93(ptr noundef %89, i32 noundef 96, i32 noundef 2147483647) #5
  %94 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ramfc, align 8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 8
  %wr32139 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %wr32139 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %wr32139, align 4
  tail call void %99(ptr noundef %95, i32 noundef 120, i32 noundef 0) #5
  %100 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ramfc, align 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 8
  %wr32142 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %wr32142 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %wr32142, align 4
  tail call void %105(ptr noundef %101, i32 noundef 124, i32 noundef 805306369) #5
  %106 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ramfc, align 8
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 8
  %wr32145 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %wr32145 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wr32145, align 4
  %ramht = getelementptr inbounds %struct.nv50_fifo_chan, ptr %call7.i.i, i32 0, i32 6
  %112 = ptrtoint ptr %ramht to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ramht, align 8
  %bits = getelementptr inbounds %struct.nvkm_ramht, ptr %113, i32 0, i32 4
  %114 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %bits, align 4
  %sub147 = shl i32 %115, 27
  %shl148 = add i32 %sub147, -1207959552
  %gpuobj = getelementptr inbounds %struct.nvkm_ramht, ptr %113, i32 0, i32 2
  %116 = ptrtoint ptr %gpuobj to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %gpuobj, align 4
  %node151 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %node151 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %node151, align 4
  %offset152 = getelementptr inbounds %struct.nvkm_mm_node, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %offset152 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %offset152, align 4
  %shr153 = lshr i32 %121, 4
  %or149 = or i32 %shl148, %shr153
  %or154 = or i32 %or149, 67108864
  tail call void %111(ptr noundef %107, i32 noundef 128, i32 noundef %or154) #5
  %122 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ramfc, align 8
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %release, align 4
  tail call void %127(ptr noundef %123) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end57.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %land.lhs.true12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end64 ], [ -22, %if.end46.cleanup_crit_edge ], [ -12, %if.end53.cleanup_crit_edge ], [ %call61, %if.end57.cleanup_crit_edge ], [ -38, %land.lhs.true.cleanup_crit_edge ], [ -38, %land.lhs.true12.cleanup_crit_edge ], [ -7, %if.then17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_fifo_chan_ctor(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @nv50_fifo_gpfifo_oclass, !1, !"nv50_fifo_gpfifo_oclass", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifonv50.c", i32 88, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifonv50.c", i32 46, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nv50_fifo_gpfifo_new._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @nv50_fifo_gpfifo_new._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifonv50.c", i32 48, i32 3}
!10 = !{ptr @nv50_fifo_gpfifo_new._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nv50_fifo_gpfifo_new._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i32 0, i32 33}
