; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/dma/user.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/dma/user.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_dmaobj = type { ptr, ptr, %struct.nvkm_object, i32, i32, i64, i64 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nv_dma_v0 = type { i8, i8, i8, [5 x i8], i64, i64 }

@nvkm_dmaobj_func = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr @nvkm_dmaobj_dtor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvkm_dmaobj_bind, ptr null }, [36 x i8] zeroinitializer }, align 32
@nvkm_dmaobj_ctor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create dma size %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_dmaobj_ctor\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/dma/user.c\00", [49 x i8] zeroinitializer }, align 32
@nvkm_dmaobj_ctor._entry_ptr = internal global ptr @nvkm_dmaobj_ctor._entry, section ".printk_index", align 4
@nvkm_dmaobj_ctor._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create dma vers %d target %d access %d start %016llx limit %016llx\0A\00", [60 x i8] zeroinitializer }, align 32
@nvkm_dmaobj_ctor._entry_ptr.5 = internal global ptr @nvkm_dmaobj_ctor._entry.3, section ".printk_index", align 4
@switch.table.nvkm_dmaobj_ctor = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 3, i32 0, i32 1, i32 2, i32 2], [44 x i8] zeroinitializer }, align 32
@switch.table.nvkm_dmaobj_ctor.6 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"nvkm_dmaobj_func\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 61, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 83, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/dma/user.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 85, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [30 x i8] c"switch.table.nvkm_dmaobj_ctor\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [32 x i8] c"switch.table.nvkm_dmaobj_ctor.6\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @nvkm_dmaobj_ctor._entry, ptr @nvkm_dmaobj_ctor._entry.3, ptr @nvkm_dmaobj_ctor._entry_ptr, ptr @nvkm_dmaobj_ctor._entry_ptr.5, ptr @nvkm_dmaobj_func, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @switch.table.nvkm_dmaobj_ctor, ptr @switch.table.nvkm_dmaobj_ctor.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dmaobj_func to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dmaobj_ctor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dmaobj_ctor._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvkm_dmaobj_ctor to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvkm_dmaobj_ctor.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_dmaobj_search(ptr noundef %client, i64 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nvkm_object_search(ptr noundef %client, i64 noundef %handle, ptr noundef nonnull @nvkm_dmaobj_func) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %retval.0.idx = select i1 %cmp.i, i32 0, i32 -8
  %retval.0 = getelementptr i8, ptr %call, i32 %retval.0.idx
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_object_search(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_dmaobj_ctor(ptr noundef %func, ptr noundef %dma, ptr noundef %oclass, ptr nocapture noundef %pdata, ptr nocapture noundef %psize, ptr noundef %dmaobj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %parent1 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 9
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 4
  %4 = ptrtoint ptr %psize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %psize, align 4
  %object = getelementptr inbounds %struct.nvkm_dmaobj, ptr %dmaobj, i32 0, i32 2
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_dmaobj_func, ptr noundef %oclass, ptr noundef %object) #4
  %6 = ptrtoint ptr %dmaobj to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %func, ptr %dmaobj, align 8
  %dma3 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %dmaobj, i32 0, i32 1
  %7 = ptrtoint ptr %dma3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dma, ptr %dma3, align 4
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
  br i1 %cmp, label %do.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.nvkm_client, ptr %9, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %handle, align 8
  %oclass5 = getelementptr inbounds %struct.nvkm_object, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %oclass5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %oclass5, align 4
  %16 = ptrtoint ptr %psize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %psize, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %13, i32 noundef %15, i32 noundef %17) #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %5)
  %cmp9 = icmp ugt i32 %5, 23
  br i1 %cmp9, label %land.lhs.true13, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true13:                                  ; preds = %land.lhs.true
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp16 = icmp eq i8 %19, 0
  br i1 %cmp16, label %do.body25, label %land.lhs.true13.cleanup_crit_edge

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body25:                                        ; preds = %land.lhs.true13
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %sub = add i32 %5, -24
  %20 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client, align 4
  %debug29 = getelementptr inbounds %struct.nvkm_client, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %debug29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp30 = icmp ugt i32 %23, 4
  br i1 %cmp30, label %do.end35, label %do.body25.if.end46_crit_edge

do.body25.if.end46_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

do.end35:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #6
  %name37 = getelementptr inbounds %struct.nvkm_client, ptr %21, i32 0, i32 1
  %handle39 = getelementptr inbounds %struct.nvkm_object, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %handle39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %handle39, align 8
  %oclass40 = getelementptr inbounds %struct.nvkm_object, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %oclass40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %oclass40, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %1, align 8
  %conv42 = zext i8 %29 to i32
  %target = getelementptr inbounds %struct.nv_dma_v0, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %target to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %target, align 1
  %conv43 = zext i8 %31 to i32
  %access = getelementptr inbounds %struct.nv_dma_v0, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %access to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %access, align 2
  %conv44 = zext i8 %33 to i32
  %start = getelementptr inbounds %struct.nv_dma_v0, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %start, align 8
  %limit = getelementptr inbounds %struct.nv_dma_v0, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %limit to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %limit, align 8
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name37, i32 noundef %25, i32 noundef %27, i32 noundef %conv42, i32 noundef %conv43, i32 noundef %conv44, i64 noundef %35, i64 noundef %37) #7
  br label %if.end46

if.end46:                                         ; preds = %do.end35, %do.body25.if.end46_crit_edge
  %target49 = getelementptr inbounds %struct.nv_dma_v0, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %target49 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %target49, align 1
  %conv50 = zext i8 %39 to i32
  %target51 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %dmaobj, i32 0, i32 3
  %40 = ptrtoint ptr %target51 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv50, ptr %target51, align 8
  %access52 = getelementptr inbounds %struct.nv_dma_v0, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %access52 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %access52, align 2
  %conv53 = zext i8 %42 to i32
  %access54 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %dmaobj, i32 0, i32 4
  %43 = ptrtoint ptr %access54 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv53, ptr %access54, align 4
  %start55 = getelementptr inbounds %struct.nv_dma_v0, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %start55 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %start55, align 8
  %start56 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %dmaobj, i32 0, i32 5
  %46 = ptrtoint ptr %start56 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %start56, align 8
  %limit57 = getelementptr inbounds %struct.nv_dma_v0, ptr %1, i32 0, i32 5
  %47 = ptrtoint ptr %limit57 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %limit57, align 8
  %limit58 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %dmaobj, i32 0, i32 6
  %49 = ptrtoint ptr %limit58 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %limit58, align 8
  %50 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr, ptr %pdata, align 4
  %51 = ptrtoint ptr %psize to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub, ptr %psize, align 4
  %52 = load i64, ptr %start56, align 8
  %53 = load i64, ptr %limit58, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %53)
  %cmp62 = icmp ugt i64 %52, %53
  br i1 %cmp62, label %if.end46.cleanup_crit_edge, label %if.end65

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end65:                                         ; preds = %if.end46
  %54 = ptrtoint ptr %target51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %target51, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %55)
  %56 = icmp ult i32 %55, 5
  br i1 %56, label %switch.lookup, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %if.end65
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.nvkm_dmaobj_ctor, i32 0, i32 %55
  %57 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %57)
  %switch.load = load i32, ptr %switch.gep, align 4
  %58 = ptrtoint ptr %target51 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %switch.load, ptr %target51, align 8
  %59 = ptrtoint ptr %access54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %access54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %60)
  %61 = icmp ult i32 %60, 4
  br i1 %61, label %switch.lookup143, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup143:                                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep144 = getelementptr inbounds [4 x i32], ptr @switch.table.nvkm_dmaobj_ctor.6, i32 0, i32 %60
  %62 = ptrtoint ptr %switch.gep144 to i32
  call void @__asan_load4_noabort(i32 %62)
  %switch.load145 = load i32, ptr %switch.gep144, align 4
  %63 = ptrtoint ptr %access54 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %switch.load145, ptr %access54, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup143, %switch.lookup.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %land.lhs.true13.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end46.cleanup_crit_edge ], [ -22, %if.end65.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -38, %land.lhs.true13.cleanup_crit_edge ], [ -38, %land.lhs.true.cleanup_crit_edge ], [ 0, %switch.lookup143 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @nvkm_dmaobj_dtor(ptr noundef readnone %base) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -8
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_dmaobj_bind(ptr noundef %base, ptr noundef %gpuobj, i32 noundef %align, ptr noundef %pgpuobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 %3(ptr noundef %add.ptr, ptr noundef %gpuobj, i32 noundef %align, ptr noundef %pgpuobj) #4
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/dma/user.c", i32 83, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nvkm_dmaobj_ctor._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nvkm_dmaobj_ctor._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/dma/user.c", i32 85, i32 3}
!8 = !{ptr @nvkm_dmaobj_ctor._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @nvkm_dmaobj_ctor._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @nvkm_dmaobj_func, !11, !"nvkm_dmaobj_func", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/dma/user.c", i32 61, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
