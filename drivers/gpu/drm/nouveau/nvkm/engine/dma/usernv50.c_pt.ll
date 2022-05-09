; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/dma/usernv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/dma/usernv50.c"
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
%struct.nv50_dma_v0 = type { i8, i8, i8, i8, i8, [3 x i8] }
%struct.nvkm_dmaobj = type { ptr, ptr, %struct.nvkm_object, i32, i32, i64, i64 }
%struct.nv50_dmaobj = type { %struct.nvkm_dmaobj, i32, i32 }
%struct.nvkm_dma = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.150 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.150 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }

@nv50_dmaobj_func = internal constant { %struct.nvkm_dmaobj_func, [28 x i8] } { %struct.nvkm_dmaobj_func { ptr @nv50_dmaobj_bind }, [28 x i8] zeroinitializer }, align 32
@nv50_dmaobj_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create nv50 dma size %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nv50_dmaobj_new\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/dma/usernv50.c\00", [45 x i8] zeroinitializer }, align 32
@nv50_dmaobj_new._entry_ptr = internal global ptr @nv50_dmaobj_new._entry, section ".printk_index", align 4
@nv50_dmaobj_new._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create nv50 dma vers %d priv %d part %d comp %d kind %02x\0A\00", [37 x i8] zeroinitializer }, align 32
@nv50_dmaobj_new._entry_ptr.5 = internal global ptr @nv50_dmaobj_new._entry.3, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 8]
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"nv50_dmaobj_func\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 65, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 93, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/dma/usernv50.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 95, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @nv50_dmaobj_new._entry, ptr @nv50_dmaobj_new._entry.3, ptr @nv50_dmaobj_new._entry_ptr, ptr @nv50_dmaobj_new._entry_ptr.5, ptr @nv50_dmaobj_func, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_dmaobj_func to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_dmaobj_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_dmaobj_new._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_dmaobj_new(ptr noundef %dma, ptr noundef %oclass, ptr noundef %data, i32 noundef %size, ptr nocapture noundef writeonly %pdmaobj) local_unnamed_addr #0 align 64 {
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
  %call3 = call i32 @nvkm_dmaobj_ctor(ptr noundef nonnull @nv50_dmaobj_func, ptr noundef %dma, ptr noundef %oclass, ptr noundef nonnull %data.addr, ptr noundef nonnull %size.addr, ptr noundef nonnull %call7.i.i) #4
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
  br i1 %tobool26.not, label %do.body32, label %if.then24.if.then71_crit_edge

if.then24.if.then71_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then71

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
  br i1 %cmp37, label %do.end42, label %do.body32.if.end58_crit_edge

do.body32.if.end58_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

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
  %priv = getelementptr inbounds %struct.nv50_dma_v0, ptr %7, i32 0, i32 1
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %priv, align 1
  %conv50 = zext i8 %35 to i32
  %part51 = getelementptr inbounds %struct.nv50_dma_v0, ptr %7, i32 0, i32 2
  %36 = ptrtoint ptr %part51 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %part51, align 1
  %conv52 = zext i8 %37 to i32
  %comp53 = getelementptr inbounds %struct.nv50_dma_v0, ptr %7, i32 0, i32 3
  %38 = ptrtoint ptr %comp53 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %comp53, align 1
  %conv54 = zext i8 %39 to i32
  %kind55 = getelementptr inbounds %struct.nv50_dma_v0, ptr %7, i32 0, i32 4
  %40 = ptrtoint ptr %kind55 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %kind55, align 1
  %conv56 = zext i8 %41 to i32
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name44, i32 noundef %29, i32 noundef %31, i32 noundef %conv49, i32 noundef %conv50, i32 noundef %conv52, i32 noundef %conv54, i32 noundef %conv56) #8
  br label %if.end58

if.end58:                                         ; preds = %do.end42, %do.body32.if.end58_crit_edge
  %priv61 = getelementptr inbounds %struct.nv50_dma_v0, ptr %7, i32 0, i32 1
  %42 = ptrtoint ptr %priv61 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %priv61, align 1
  %conv62 = zext i8 %43 to i32
  %part63 = getelementptr inbounds %struct.nv50_dma_v0, ptr %7, i32 0, i32 2
  %44 = ptrtoint ptr %part63 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %part63, align 1
  %conv64 = zext i8 %45 to i32
  %comp65 = getelementptr inbounds %struct.nv50_dma_v0, ptr %7, i32 0, i32 3
  %46 = ptrtoint ptr %comp65 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %comp65, align 1
  %conv66 = zext i8 %47 to i32
  %kind67 = getelementptr inbounds %struct.nv50_dma_v0, ptr %7, i32 0, i32 4
  %48 = ptrtoint ptr %kind67 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %kind67, align 1
  %conv68 = zext i8 %49 to i32
  br label %if.end80

if.else:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp69 = icmp eq i32 %19, 0
  br i1 %cmp69, label %if.else.if.then71_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else.if.then71_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then71

if.then71:                                        ; preds = %if.else.if.then71_crit_edge, %if.then24.if.then71_crit_edge
  %target = getelementptr inbounds %struct.nvkm_dmaobj, ptr %call7.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %target, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %cmp73.not = icmp eq i32 %51, 3
  %not.cmp73.not = xor i1 %cmp73.not, true
  %. = zext i1 %not.cmp73.not to i32
  %.174 = select i1 %cmp73.not, i32 3, i32 0
  %.175 = select i1 %cmp73.not, i32 127, i32 0
  br label %if.end80

if.end80:                                         ; preds = %if.then71, %if.end58
  %user.0 = phi i32 [ %conv62, %if.end58 ], [ %., %if.then71 ]
  %part.0 = phi i32 [ %conv64, %if.end58 ], [ %., %if.then71 ]
  %comp.0 = phi i32 [ %conv66, %if.end58 ], [ %.174, %if.then71 ]
  %kind.0 = phi i32 [ %conv68, %if.end58 ], [ %.175, %if.then71 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %user.0)
  %cmp81 = icmp ugt i32 %user.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %part.0)
  %cmp83 = icmp ugt i32 %part.0, 2
  %or.cond = select i1 %cmp81, i1 true, i1 %cmp83
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %comp.0)
  %cmp86 = icmp ugt i32 %comp.0, 3
  %or.cond176 = select i1 %or.cond, i1 true, i1 %cmp86
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %kind.0)
  %cmp89 = icmp ugt i32 %kind.0, 127
  %or.cond177 = select i1 %or.cond176, i1 true, i1 %cmp89
  br i1 %or.cond177, label %if.end80.cleanup_crit_edge, label %if.end92

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end92:                                         ; preds = %if.end80
  %shl = shl nuw nsw i32 %comp.0, 29
  %shl93 = shl nuw nsw i32 %kind.0, 22
  %shl94 = shl nuw nsw i32 %user.0, 20
  %oclass97 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 2
  %52 = ptrtoint ptr %oclass97 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %oclass97, align 4
  %or = or i32 %shl, %shl94
  %or95 = or i32 %or, %shl93
  %or98 = or i32 %or95, %53
  %flags0 = getelementptr inbounds %struct.nv50_dmaobj, ptr %call7.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %flags0 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or98, ptr %flags0, align 8
  %shl99 = shl nuw nsw i32 %part.0, 16
  %flags5 = getelementptr inbounds %struct.nv50_dmaobj, ptr %call7.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %shl99, ptr %flags5, align 4
  %target101 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %call7.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %target101 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %target101, align 8
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i32 %57, label %if.end92.cleanup_crit_edge [
    i32 3, label %if.end92.sw.epilog_crit_edge
    i32 0, label %if.end92.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb107
    i32 2, label %sw.bb110
  ]

if.end92.sw.epilog.sink.split_crit_edge:          ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

if.end92.sw.epilog_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb107:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

sw.bb110:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb110, %sw.bb107, %if.end92.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 196608, %sw.bb110 ], [ 131072, %sw.bb107 ], [ 65536, %if.end92.sw.epilog.sink.split_crit_edge ]
  %or112 = or i32 %or98, %.sink
  %59 = ptrtoint ptr %flags0 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or112, ptr %flags0, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end92.sw.epilog_crit_edge
  %access = getelementptr inbounds %struct.nvkm_dmaobj, ptr %call7.i.i, i32 0, i32 4
  %60 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %access, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %61, label %sw.epilog.cleanup_crit_edge [
    i32 8, label %sw.epilog.sw.epilog121_crit_edge
    i32 1, label %sw.epilog.sw.epilog121.sink.split_crit_edge
    i32 2, label %sw.epilog.sw.bb117_crit_edge
    i32 3, label %sw.epilog.sw.bb117_crit_edge188
  ]

sw.epilog.sw.bb117_crit_edge188:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb117

sw.epilog.sw.bb117_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb117

sw.epilog.sw.epilog121.sink.split_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog121.sink.split

sw.epilog.sw.epilog121_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog121

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb117:                                         ; preds = %sw.epilog.sw.bb117_crit_edge, %sw.epilog.sw.bb117_crit_edge188
  br label %sw.epilog121.sink.split

sw.epilog121.sink.split:                          ; preds = %sw.bb117, %sw.epilog.sw.epilog121.sink.split_crit_edge
  %.sink187 = phi i32 [ 524288, %sw.bb117 ], [ 262144, %sw.epilog.sw.epilog121.sink.split_crit_edge ]
  %63 = ptrtoint ptr %flags0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags0, align 8
  %or119 = or i32 %64, %.sink187
  store i32 %or119, ptr %flags0, align 8
  br label %sw.epilog121

sw.epilog121:                                     ; preds = %sw.epilog121.sink.split, %sw.epilog.sw.epilog121_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog121, %sw.epilog.cleanup_crit_edge, %if.end92.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %if.else.cleanup_crit_edge, %land.lhs.true19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog121 ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ -38, %if.else.cleanup_crit_edge ], [ -22, %if.end80.cleanup_crit_edge ], [ -22, %if.end92.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -38, %land.lhs.true19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_dmaobj_ctor(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_dmaobj_bind(ptr nocapture noundef readonly %base, ptr noundef %parent, i32 noundef %align, ptr noundef %pgpuobj) #0 align 64 {
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
  %flags0 = getelementptr inbounds %struct.nv50_dmaobj, ptr %base, i32 0, i32 1
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
  %limit = getelementptr inbounds %struct.nvkm_dmaobj, ptr %base, i32 0, i32 6
  %24 = ptrtoint ptr %limit to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %limit, align 8
  %conv = trunc i64 %25 to i32
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
  %start = getelementptr inbounds %struct.nvkm_dmaobj, ptr %base, i32 0, i32 5
  %32 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %start, align 8
  %conv9 = trunc i64 %33 to i32
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
  %40 = ptrtoint ptr %limit to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %limit, align 8
  %sh.diff = lshr i64 %41, 8
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %shl = and i32 %tr.sh.diff, -16777216
  %42 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %start, align 8
  %shr17 = lshr i64 %43, 32
  %conv19 = trunc i64 %shr17 to i32
  %or = or i32 %shl, %conv19
  tail call void %39(ptr noundef %35, i32 noundef 12, i32 noundef %or) #4
  %44 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pgpuobj, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  %wr3220 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %wr3220 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wr3220, align 4
  tail call void %49(ptr noundef %45, i32 noundef 16, i32 noundef 0) #4
  %50 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pgpuobj, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  %wr3221 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %wr3221 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wr3221, align 4
  %flags5 = getelementptr inbounds %struct.nv50_dmaobj, ptr %base, i32 0, i32 2
  %56 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags5, align 4
  tail call void %55(ptr noundef %51, i32 noundef 20, i32 noundef %57) #4
  %58 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pgpuobj, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %release, align 4
  tail call void %63(ptr noundef %59) #4
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
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/dma/usernv50.c", i32 93, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nv50_dmaobj_new._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nv50_dmaobj_new._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/dma/usernv50.c", i32 95, i32 3}
!8 = !{ptr @nv50_dmaobj_new._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @nv50_dmaobj_new._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @nv50_dmaobj_func, !11, !"nv50_dmaobj_func", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/dma/usernv50.c", i32 65, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
