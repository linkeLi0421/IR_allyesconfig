; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/dma/usergf119.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/dma/usergf119.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_dmaobj_func = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
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
%struct.gf119_dma_v0 = type { i8, i8, i8, [5 x i8] }
%struct.nvkm_dmaobj = type { ptr, ptr, %struct.nvkm_object, i32, i32, i64, i64 }
%struct.gf119_dmaobj = type { %struct.nvkm_dmaobj, i32 }
%struct.nvkm_dma = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.150 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.150 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }

@gf119_dmaobj_func = internal constant { %struct.nvkm_dmaobj_func, [28 x i8] } { %struct.nvkm_dmaobj_func { ptr @gf119_dmaobj_bind }, [28 x i8] zeroinitializer }, align 32
@gf119_dmaobj_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create gf119 dma size %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gf119_dmaobj_new\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/dma/usergf119.c\00", [44 x i8] zeroinitializer }, align 32
@gf119_dmaobj_new._entry_ptr = internal global ptr @gf119_dmaobj_new._entry, section ".printk_index", align 4
@gf119_dmaobj_new._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create gf100 dma vers %d page %d kind %02x\0A\00", [52 x i8] zeroinitializer }, align 32
@gf119_dmaobj_new._entry_ptr.5 = internal global ptr @gf119_dmaobj_new._entry.3, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.6 = private unnamed_addr constant [18 x i8] c"gf119_dmaobj_func\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 63, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 91, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [55 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/dma/usergf119.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 93, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @gf119_dmaobj_new._entry, ptr @gf119_dmaobj_new._entry.3, ptr @gf119_dmaobj_new._entry_ptr, ptr @gf119_dmaobj_new._entry_ptr.5, ptr @gf119_dmaobj_func, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_dmaobj_func to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_dmaobj_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_dmaobj_new._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf119_dmaobj_new(ptr noundef %dma, ptr noundef %oclass, ptr noundef %data, i32 noundef %size, ptr nocapture noundef writeonly %pdmaobj) local_unnamed_addr #0 align 64 {
entry:
  %data.addr = alloca ptr, align 4
  %size.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %data.addr, align 4
  %1 = ptrtoint ptr %size.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %size, ptr %size.addr, align 4
  %parent1 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 9
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 112) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %pdmaobj to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %pdmaobj, align 4
  %call3 = call i32 @nvkm_dmaobj_ctor(ptr noundef nonnull @gf119_dmaobj_func, ptr noundef %dma, ptr noundef %oclass, ptr noundef nonnull %data.addr, ptr noundef nonnull %size.addr, ptr noundef nonnull %call7.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %data.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.addr, align 4
  %client = getelementptr inbounds %struct.nvkm_object, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp = icmp ugt i32 %11, 4
  br i1 %cmp, label %do.end, label %if.end6.land.lhs.true_crit_edge

if.end6.land.lhs.true_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.nvkm_client, ptr %9, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %handle, align 8
  %oclass9 = getelementptr inbounds %struct.nvkm_object, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %oclass9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %oclass9, align 4
  %16 = ptrtoint ptr %size.addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.addr, align 4
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %13, i32 noundef %15, i32 noundef %17) #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %if.end6.land.lhs.true_crit_edge
  %18 = ptrtoint ptr %size.addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %19)
  %cmp15 = icmp ugt i32 %19, 7
  br i1 %cmp15, label %land.lhs.true19, label %if.else

land.lhs.true19:                                  ; preds = %land.lhs.true
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp22 = icmp eq i8 %21, 0
  br i1 %cmp22, label %if.then24, label %land.lhs.true19.cleanup_crit_edge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then24:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %tobool26.not = icmp eq i32 %19, 8
  %22 = ptrtoint ptr %data.addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %data.addr, align 4
  %23 = ptrtoint ptr %size.addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %size.addr, align 4
  br i1 %tobool26.not, label %do.body32, label %if.then24.if.end73.thread_crit_edge

if.then24.if.end73.thread_crit_edge:              ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end73.thread

do.body32:                                        ; preds = %if.then24
  %24 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client, align 4
  %debug36 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %debug36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp37 = icmp ugt i32 %27, 4
  br i1 %cmp37, label %do.end42, label %do.body32.if.end73_crit_edge

do.body32.if.end73_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end73

do.end42:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  %name44 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 1
  %handle46 = getelementptr inbounds %struct.nvkm_object, ptr %3, i32 0, i32 4
  %28 = ptrtoint ptr %handle46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %handle46, align 8
  %oclass47 = getelementptr inbounds %struct.nvkm_object, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %oclass47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %oclass47, align 4
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %7, align 1
  %conv49 = zext i8 %33 to i32
  %page50 = getelementptr inbounds %struct.gf119_dma_v0, ptr %7, i32 0, i32 1
  %34 = ptrtoint ptr %page50 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %page50, align 1
  %conv51 = zext i8 %35 to i32
  %kind52 = getelementptr inbounds %struct.gf119_dma_v0, ptr %7, i32 0, i32 2
  %36 = ptrtoint ptr %kind52 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %kind52, align 1
  %conv53 = zext i8 %37 to i32
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name44, i32 noundef %29, i32 noundef %31, i32 noundef %conv49, i32 noundef %conv51, i32 noundef %conv53) #8
  br label %if.end73

if.else:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp62 = icmp eq i32 %19, 0
  br i1 %cmp62, label %if.else.if.end73.thread_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else.if.end73.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end73.thread

if.end73.thread:                                  ; preds = %if.else.if.end73.thread_crit_edge, %if.then24.if.end73.thread_crit_edge
  %target = getelementptr inbounds %struct.nvkm_dmaobj, ptr %call7.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %target, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp66.not = icmp eq i32 %39, 3
  %. = select i1 %cmp66.not, i32 267386880, i32 0
  %not.cmp66.not = xor i1 %cmp66.not, true
  %.119 = zext i1 %not.cmp66.not to i32
  br label %if.end77

if.end73:                                         ; preds = %do.end42, %do.body32.if.end73_crit_edge
  %kind58 = getelementptr inbounds %struct.gf119_dma_v0, ptr %7, i32 0, i32 2
  %40 = ptrtoint ptr %kind58 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %kind58, align 1
  %conv59 = zext i8 %41 to i32
  %page60 = getelementptr inbounds %struct.gf119_dma_v0, ptr %7, i32 0, i32 1
  %42 = ptrtoint ptr %page60 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %page60, align 1
  %conv61 = zext i8 %43 to i32
  %phi.bo = shl nuw nsw i32 %conv59, 20
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %43)
  %cmp74 = icmp ugt i8 %43, 1
  br i1 %cmp74, label %if.end73.cleanup_crit_edge, label %if.end73.if.end77_crit_edge

if.end73.if.end77_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end77:                                         ; preds = %if.end73.if.end77_crit_edge, %if.end73.thread
  %page.0132 = phi i32 [ %.119, %if.end73.thread ], [ %conv61, %if.end73.if.end77_crit_edge ]
  %kind.0131 = phi i32 [ %., %if.end73.thread ], [ %phi.bo, %if.end73.if.end77_crit_edge ]
  %shl78 = shl nuw nsw i32 %page.0132, 6
  %or = or i32 %kind.0131, %shl78
  %flags0 = getelementptr inbounds %struct.gf119_dmaobj, ptr %call7.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %flags0 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or, ptr %flags0, align 8
  %target80 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %call7.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %target80 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %target80, align 8
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i32 %46, label %if.end77.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %if.end77.sw.epilog_crit_edge
    i32 1, label %if.end77.sw.epilog_crit_edge133
    i32 2, label %if.end77.sw.epilog_crit_edge134
  ]

if.end77.sw.epilog_crit_edge134:                  ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end77.sw.epilog_crit_edge133:                  ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end77.sw.epilog_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  %or82 = or i32 %or, 9
  %48 = ptrtoint ptr %flags0 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or82, ptr %flags0, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end77.sw.epilog_crit_edge, %if.end77.sw.epilog_crit_edge133, %if.end77.sw.epilog_crit_edge134
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end77.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %if.else.cleanup_crit_edge, %land.lhs.true19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ -38, %if.else.cleanup_crit_edge ], [ -22, %if.end73.cleanup_crit_edge ], [ -22, %if.end77.cleanup_crit_edge ], [ -38, %land.lhs.true19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_dmaobj_ctor(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf119_dmaobj_bind(ptr nocapture noundef readonly %base, ptr noundef %parent, i32 noundef %align, ptr noundef %pgpuobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dma = getelementptr inbounds %struct.nvkm_dmaobj, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma, align 4
  %device2 = getelementptr inbounds %struct.nvkm_dma, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %call = tail call i32 @nvkm_gpuobj_new(ptr noundef %3, i32 noundef 24, i32 noundef %align, i1 noundef zeroext false, ptr noundef %parent, ptr noundef %pgpuobj) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pgpuobj, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call3 = tail call ptr %9(ptr noundef %5) #4
  %10 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pgpuobj, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr32, align 4
  %flags0 = getelementptr inbounds %struct.gf119_dmaobj, ptr %base, i32 0, i32 1
  %16 = ptrtoint ptr %flags0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags0, align 8
  tail call void %15(ptr noundef %11, i32 noundef 0, i32 noundef %17) #4
  %18 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pgpuobj, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %wr324 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %wr324 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wr324, align 4
  %start = getelementptr inbounds %struct.nvkm_dmaobj, ptr %base, i32 0, i32 5
  %24 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %start, align 8
  %shr = lshr i64 %25, 8
  %conv = trunc i64 %shr to i32
  tail call void %23(ptr noundef %19, i32 noundef 4, i32 noundef %conv) #4
  %26 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pgpuobj, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %wr326 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %wr326 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr326, align 4
  %limit = getelementptr inbounds %struct.nvkm_dmaobj, ptr %base, i32 0, i32 6
  %32 = ptrtoint ptr %limit to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %limit, align 8
  %shr8 = lshr i64 %33, 8
  %conv9 = trunc i64 %shr8 to i32
  tail call void %31(ptr noundef %27, i32 noundef 8, i32 noundef %conv9) #4
  %34 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pgpuobj, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %wr3210 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %wr3210 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wr3210, align 4
  tail call void %39(ptr noundef %35, i32 noundef 12, i32 noundef 0) #4
  %40 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pgpuobj, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %wr3211 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %wr3211 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wr3211, align 4
  tail call void %45(ptr noundef %41, i32 noundef 16, i32 noundef 0) #4
  %46 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pgpuobj, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %wr3212 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %wr3212 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wr3212, align 4
  tail call void %51(ptr noundef %47, i32 noundef 20, i32 noundef 0) #4
  %52 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pgpuobj, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %release, align 4
  tail call void %57(ptr noundef %53) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/dma/usergf119.c", i32 91, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @gf119_dmaobj_new._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @gf119_dmaobj_new._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/dma/usergf119.c", i32 93, i32 3}
!8 = !{ptr @gf119_dmaobj_new._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @gf119_dmaobj_new._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @gf119_dmaobj_func, !11, !"gf119_dmaobj_func", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/dma/usergf119.c", i32 63, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
