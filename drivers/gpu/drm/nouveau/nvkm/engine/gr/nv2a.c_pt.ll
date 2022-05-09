; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/nv2a.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv2a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.137 = type { ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nv20_gr_chan = type { %struct.nvkm_object, ptr, i32, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.84 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.84 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }

@nv04_gr_object = external dso_local constant %struct.nvkm_object_func, align 4
@nv2a_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.137, [16 x %struct.nvkm_sclass] }, [72 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.137, [16 x %struct.nvkm_sclass] } { ptr @nv20_gr_dtor, ptr @nv20_gr_oneinit, ptr @nv20_gr_init, ptr null, ptr @nv20_gr_intr, ptr @nv20_gr_tile, ptr null, ptr @nv2a_gr_chan_new, ptr null, ptr null, ptr null, %struct.anon.137 zeroinitializer, [16 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 18, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 25, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 48, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 57, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 67, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 68, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 74, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 98, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 114, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 137, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 138, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 150, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 158, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 159, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 1431, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [72 x i8] zeroinitializer }, align 32
@nv2a_gr_chan = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr @nv20_gr_chan_dtor, ptr @nv20_gr_chan_init, ptr @nv20_gr_chan_fini, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.2 = private unnamed_addr constant [8 x i8] c"nv2a_gr\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 95, i32 1 }
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"nv2a_gr_chan\00", align 1
@___asan_gen_.6 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv2a.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 14, i32 1 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @nv2a_gr, ptr @nv2a_gr_chan], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv2a_gr to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv2a_gr_chan to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv2a_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv20_gr_new_(ptr noundef nonnull @nv2a_gr, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv20_gr_dtor(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_gr_oneinit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_gr_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv20_gr_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv20_gr_tile(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv2a_gr_chan_new(ptr noundef %base, ptr nocapture noundef readonly %fifoch, ptr noundef %oclass, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 88) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv2a_gr_chan, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #3
  %gr1 = getelementptr inbounds %struct.nv20_gr_chan, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %gr1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %base, ptr %gr1, align 8
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %fifoch, i32 0, i32 5
  %2 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %chid, align 8
  %conv = zext i16 %3 to i32
  %chid2 = getelementptr inbounds %struct.nv20_gr_chan, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %chid2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %chid2, align 4
  %5 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %pobject, align 4
  %device = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %inst = getelementptr inbounds %struct.nv20_gr_chan, ptr %call7.i.i, i32 0, i32 3
  %call5 = tail call i32 @nvkm_memory_new(ptr noundef %7, i32 noundef 0, i64 noundef 14000, i32 noundef 16, i1 noundef zeroext true, ptr noundef %inst) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %8 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inst, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %acquire, align 4
  %call11 = tail call ptr %13(ptr noundef %9) #3
  %14 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %inst, align 8
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr32, align 4
  %20 = ptrtoint ptr %chid2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chid2, align 4
  %shl = shl i32 %21, 24
  %or = or i32 %shl, 1
  tail call void %19(ptr noundef %15, i64 noundef 0, i32 noundef %or) #3
  %22 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %inst, align 8
  %ptrs16 = getelementptr inbounds %struct.nvkm_memory, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %ptrs16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ptrs16, align 4
  %wr3217 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wr3217 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr3217, align 4
  tail call void %27(ptr noundef %23, i64 noundef 828, i32 noundef -65536) #3
  %28 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %inst, align 8
  %ptrs20 = getelementptr inbounds %struct.nvkm_memory, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %ptrs20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ptrs20, align 4
  %wr3221 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %wr3221 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wr3221, align 4
  tail call void %33(ptr noundef %29, i64 noundef 928, i32 noundef 268369920) #3
  %34 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %inst, align 8
  %ptrs24 = getelementptr inbounds %struct.nvkm_memory, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %ptrs24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ptrs24, align 4
  %wr3225 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wr3225 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wr3225, align 4
  tail call void %39(ptr noundef %35, i64 noundef 932, i32 noundef 268369920) #3
  %40 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %inst, align 8
  %ptrs28 = getelementptr inbounds %struct.nvkm_memory, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %ptrs28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ptrs28, align 4
  %wr3229 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %wr3229 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wr3229, align 4
  tail call void %45(ptr noundef %41, i64 noundef 1148, i32 noundef 257) #3
  %46 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %inst, align 8
  %ptrs32 = getelementptr inbounds %struct.nvkm_memory, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %ptrs32 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ptrs32, align 4
  %wr3233 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %wr3233 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wr3233, align 4
  tail call void %51(ptr noundef %47, i64 noundef 1168, i32 noundef 273) #3
  %52 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %inst, align 8
  %ptrs36 = getelementptr inbounds %struct.nvkm_memory, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %ptrs36 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ptrs36, align 4
  %wr3237 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %wr3237 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wr3237, align 4
  tail call void %57(ptr noundef %53, i64 noundef 1192, i32 noundef 1145044992) #3
  %58 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %inst, align 8
  %ptrs41 = getelementptr inbounds %struct.nvkm_memory, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %ptrs41 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ptrs41, align 4
  %wr3242 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %wr3242 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wr3242, align 4
  tail call void %63(ptr noundef %59, i64 noundef 1236, i32 noundef 197379) #3
  %64 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %inst, align 8
  %ptrs41.1 = getelementptr inbounds %struct.nvkm_memory, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %ptrs41.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ptrs41.1, align 4
  %wr3242.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %wr3242.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wr3242.1, align 4
  tail call void %69(ptr noundef %65, i64 noundef 1240, i32 noundef 197379) #3
  %70 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %inst, align 8
  %ptrs41.2 = getelementptr inbounds %struct.nvkm_memory, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %ptrs41.2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ptrs41.2, align 4
  %wr3242.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %wr3242.2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wr3242.2, align 4
  tail call void %75(ptr noundef %71, i64 noundef 1244, i32 noundef 197379) #3
  %76 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %inst, align 8
  %ptrs41.3 = getelementptr inbounds %struct.nvkm_memory, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %ptrs41.3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ptrs41.3, align 4
  %wr3242.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %wr3242.3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wr3242.3, align 4
  tail call void %81(ptr noundef %77, i64 noundef 1248, i32 noundef 197379) #3
  %82 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %inst, align 8
  %ptrs50 = getelementptr inbounds %struct.nvkm_memory, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %ptrs50 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ptrs50, align 4
  %wr3251 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %wr3251 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wr3251, align 4
  tail call void %87(ptr noundef %83, i64 noundef 1268, i32 noundef 524288) #3
  %88 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %inst, align 8
  %ptrs50.1 = getelementptr inbounds %struct.nvkm_memory, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %ptrs50.1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ptrs50.1, align 4
  %wr3251.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %wr3251.1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %wr3251.1, align 4
  tail call void %93(ptr noundef %89, i64 noundef 1272, i32 noundef 524288) #3
  %94 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %inst, align 8
  %ptrs50.2 = getelementptr inbounds %struct.nvkm_memory, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %ptrs50.2 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ptrs50.2, align 4
  %wr3251.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %wr3251.2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %wr3251.2, align 4
  tail call void %99(ptr noundef %95, i64 noundef 1276, i32 noundef 524288) #3
  %100 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %inst, align 8
  %ptrs50.3 = getelementptr inbounds %struct.nvkm_memory, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %ptrs50.3 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ptrs50.3, align 4
  %wr3251.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %wr3251.3 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %wr3251.3, align 4
  tail call void %105(ptr noundef %101, i64 noundef 1280, i32 noundef 524288) #3
  %106 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %inst, align 8
  %ptrs62 = getelementptr inbounds %struct.nvkm_memory, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %ptrs62 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ptrs62, align 4
  %wr3263 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %wr3263 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wr3263, align 4
  tail call void %111(ptr noundef %107, i64 noundef 1292, i32 noundef 16850944) #3
  %112 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %inst, align 8
  %ptrs62.1 = getelementptr inbounds %struct.nvkm_memory, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %ptrs62.1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ptrs62.1, align 4
  %wr3263.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %wr3263.1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %wr3263.1, align 4
  tail call void %117(ptr noundef %113, i64 noundef 1296, i32 noundef 16850944) #3
  %118 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %inst, align 8
  %ptrs62.2 = getelementptr inbounds %struct.nvkm_memory, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %ptrs62.2 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ptrs62.2, align 4
  %wr3263.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %wr3263.2 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %wr3263.2, align 4
  tail call void %123(ptr noundef %119, i64 noundef 1300, i32 noundef 16850944) #3
  %124 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %inst, align 8
  %ptrs62.3 = getelementptr inbounds %struct.nvkm_memory, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %ptrs62.3 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ptrs62.3, align 4
  %wr3263.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %wr3263.3 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %wr3263.3, align 4
  tail call void %129(ptr noundef %125, i64 noundef 1304, i32 noundef 16850944) #3
  %130 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %inst, align 8
  %ptrs74 = getelementptr inbounds %struct.nvkm_memory, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %ptrs74 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ptrs74, align 4
  %wr3275 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %wr3275 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %wr3275, align 4
  tail call void %135(ptr noundef %131, i64 noundef 1308, i32 noundef 67000) #3
  %136 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %inst, align 8
  %ptrs74.1 = getelementptr inbounds %struct.nvkm_memory, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %ptrs74.1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ptrs74.1, align 4
  %wr3275.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %wr3275.1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %wr3275.1, align 4
  tail call void %141(ptr noundef %137, i64 noundef 1312, i32 noundef 67000) #3
  %142 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %inst, align 8
  %ptrs74.2 = getelementptr inbounds %struct.nvkm_memory, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %ptrs74.2 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ptrs74.2, align 4
  %wr3275.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %wr3275.2 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %wr3275.2, align 4
  tail call void %147(ptr noundef %143, i64 noundef 1316, i32 noundef 67000) #3
  %148 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %inst, align 8
  %ptrs74.3 = getelementptr inbounds %struct.nvkm_memory, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %ptrs74.3 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ptrs74.3, align 4
  %wr3275.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %wr3275.3 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %wr3275.3, align 4
  tail call void %153(ptr noundef %149, i64 noundef 1320, i32 noundef 67000) #3
  %154 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %inst, align 8
  %ptrs86 = getelementptr inbounds %struct.nvkm_memory, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %ptrs86 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ptrs86, align 4
  %wr3287 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %wr3287 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %wr3287, align 4
  tail call void %159(ptr noundef %155, i64 noundef 1324, i32 noundef 524296) #3
  %160 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %inst, align 8
  %ptrs86.1 = getelementptr inbounds %struct.nvkm_memory, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %ptrs86.1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ptrs86.1, align 4
  %wr3287.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %wr3287.1 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %wr3287.1, align 4
  tail call void %165(ptr noundef %161, i64 noundef 1328, i32 noundef 524296) #3
  %166 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %inst, align 8
  %ptrs86.2 = getelementptr inbounds %struct.nvkm_memory, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %ptrs86.2 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ptrs86.2, align 4
  %wr3287.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %wr3287.2 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %wr3287.2, align 4
  tail call void %171(ptr noundef %167, i64 noundef 1332, i32 noundef 524296) #3
  %172 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %inst, align 8
  %ptrs86.3 = getelementptr inbounds %struct.nvkm_memory, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %ptrs86.3 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ptrs86.3, align 4
  %wr3287.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %wr3287.3 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %wr3287.3, align 4
  tail call void %177(ptr noundef %173, i64 noundef 1336, i32 noundef 524296) #3
  %178 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %inst, align 8
  %ptrs98 = getelementptr inbounds %struct.nvkm_memory, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %ptrs98 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ptrs98, align 4
  %wr3299 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %wr3299 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %wr3299, align 4
  tail call void %183(ptr noundef %179, i64 noundef 1372, i32 noundef 134152192) #3
  %184 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %inst, align 8
  %ptrs98.1 = getelementptr inbounds %struct.nvkm_memory, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %ptrs98.1 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ptrs98.1, align 4
  %wr3299.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %wr3299.1 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %wr3299.1, align 4
  tail call void %189(ptr noundef %185, i64 noundef 1376, i32 noundef 134152192) #3
  %190 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %inst, align 8
  %ptrs98.2 = getelementptr inbounds %struct.nvkm_memory, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %ptrs98.2 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ptrs98.2, align 4
  %wr3299.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %wr3299.2 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %wr3299.2, align 4
  tail call void %195(ptr noundef %191, i64 noundef 1380, i32 noundef 134152192) #3
  %196 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %inst, align 8
  %ptrs98.3 = getelementptr inbounds %struct.nvkm_memory, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %ptrs98.3 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ptrs98.3, align 4
  %wr3299.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %wr3299.3 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %wr3299.3, align 4
  tail call void %201(ptr noundef %197, i64 noundef 1384, i32 noundef 134152192) #3
  %202 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %inst, align 8
  %ptrs98.4 = getelementptr inbounds %struct.nvkm_memory, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %ptrs98.4 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ptrs98.4, align 4
  %wr3299.4 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %wr3299.4 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %wr3299.4, align 4
  tail call void %207(ptr noundef %203, i64 noundef 1388, i32 noundef 134152192) #3
  %208 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %inst, align 8
  %ptrs98.5 = getelementptr inbounds %struct.nvkm_memory, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %ptrs98.5 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ptrs98.5, align 4
  %wr3299.5 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %wr3299.5 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %wr3299.5, align 4
  tail call void %213(ptr noundef %209, i64 noundef 1392, i32 noundef 134152192) #3
  %214 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %inst, align 8
  %ptrs98.6 = getelementptr inbounds %struct.nvkm_memory, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %ptrs98.6 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ptrs98.6, align 4
  %wr3299.6 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %wr3299.6 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %wr3299.6, align 4
  tail call void %219(ptr noundef %215, i64 noundef 1396, i32 noundef 134152192) #3
  %220 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %inst, align 8
  %ptrs98.7 = getelementptr inbounds %struct.nvkm_memory, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %ptrs98.7 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %ptrs98.7, align 4
  %wr3299.7 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %wr3299.7 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %wr3299.7, align 4
  tail call void %225(ptr noundef %221, i64 noundef 1400, i32 noundef 134152192) #3
  %226 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %inst, align 8
  %ptrs98.8 = getelementptr inbounds %struct.nvkm_memory, ptr %227, i32 0, i32 1
  %228 = ptrtoint ptr %ptrs98.8 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %ptrs98.8, align 4
  %wr3299.8 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %wr3299.8 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %wr3299.8, align 4
  tail call void %231(ptr noundef %227, i64 noundef 1404, i32 noundef 134152192) #3
  %232 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %inst, align 8
  %ptrs98.9 = getelementptr inbounds %struct.nvkm_memory, ptr %233, i32 0, i32 1
  %234 = ptrtoint ptr %ptrs98.9 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %ptrs98.9, align 4
  %wr3299.9 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %wr3299.9 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %wr3299.9, align 4
  tail call void %237(ptr noundef %233, i64 noundef 1408, i32 noundef 134152192) #3
  %238 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %inst, align 8
  %ptrs98.10 = getelementptr inbounds %struct.nvkm_memory, ptr %239, i32 0, i32 1
  %240 = ptrtoint ptr %ptrs98.10 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %ptrs98.10, align 4
  %wr3299.10 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %wr3299.10 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %wr3299.10, align 4
  tail call void %243(ptr noundef %239, i64 noundef 1412, i32 noundef 134152192) #3
  %244 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %inst, align 8
  %ptrs98.11 = getelementptr inbounds %struct.nvkm_memory, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %ptrs98.11 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %ptrs98.11, align 4
  %wr3299.11 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %247, i32 0, i32 1
  %248 = ptrtoint ptr %wr3299.11 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %wr3299.11, align 4
  tail call void %249(ptr noundef %245, i64 noundef 1416, i32 noundef 134152192) #3
  %250 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %inst, align 8
  %ptrs98.12 = getelementptr inbounds %struct.nvkm_memory, ptr %251, i32 0, i32 1
  %252 = ptrtoint ptr %ptrs98.12 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %ptrs98.12, align 4
  %wr3299.12 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %253, i32 0, i32 1
  %254 = ptrtoint ptr %wr3299.12 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %wr3299.12, align 4
  tail call void %255(ptr noundef %251, i64 noundef 1420, i32 noundef 134152192) #3
  %256 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %inst, align 8
  %ptrs98.13 = getelementptr inbounds %struct.nvkm_memory, ptr %257, i32 0, i32 1
  %258 = ptrtoint ptr %ptrs98.13 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %ptrs98.13, align 4
  %wr3299.13 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %259, i32 0, i32 1
  %260 = ptrtoint ptr %wr3299.13 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %wr3299.13, align 4
  tail call void %261(ptr noundef %257, i64 noundef 1424, i32 noundef 134152192) #3
  %262 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %inst, align 8
  %ptrs98.14 = getelementptr inbounds %struct.nvkm_memory, ptr %263, i32 0, i32 1
  %264 = ptrtoint ptr %ptrs98.14 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %ptrs98.14, align 4
  %wr3299.14 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %265, i32 0, i32 1
  %266 = ptrtoint ptr %wr3299.14 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %wr3299.14, align 4
  tail call void %267(ptr noundef %263, i64 noundef 1428, i32 noundef 134152192) #3
  %268 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %inst, align 8
  %ptrs98.15 = getelementptr inbounds %struct.nvkm_memory, ptr %269, i32 0, i32 1
  %270 = ptrtoint ptr %ptrs98.15 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %ptrs98.15, align 4
  %wr3299.15 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %271, i32 0, i32 1
  %272 = ptrtoint ptr %wr3299.15 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %wr3299.15, align 4
  tail call void %273(ptr noundef %269, i64 noundef 1432, i32 noundef 134152192) #3
  %274 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %inst, align 8
  %ptrs106 = getelementptr inbounds %struct.nvkm_memory, ptr %275, i32 0, i32 1
  %276 = ptrtoint ptr %ptrs106 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %ptrs106, align 4
  %wr32107 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %277, i32 0, i32 1
  %278 = ptrtoint ptr %wr32107 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %wr32107, align 4
  tail call void %279(ptr noundef %275, i64 noundef 1444, i32 noundef 1266679807) #3
  %280 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %inst, align 8
  %ptrs110 = getelementptr inbounds %struct.nvkm_memory, ptr %281, i32 0, i32 1
  %282 = ptrtoint ptr %ptrs110 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %ptrs110, align 4
  %wr32111 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %283, i32 0, i32 1
  %284 = ptrtoint ptr %wr32111 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %wr32111, align 4
  tail call void %285(ptr noundef %281, i64 noundef 1532, i32 noundef 1) #3
  %286 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %inst, align 8
  %ptrs114 = getelementptr inbounds %struct.nvkm_memory, ptr %287, i32 0, i32 1
  %288 = ptrtoint ptr %ptrs114 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %ptrs114, align 4
  %wr32115 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %289, i32 0, i32 1
  %290 = ptrtoint ptr %wr32115 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %wr32115, align 4
  tail call void %291(ptr noundef %287, i64 noundef 1540, i32 noundef 16384) #3
  %292 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %inst, align 8
  %ptrs118 = getelementptr inbounds %struct.nvkm_memory, ptr %293, i32 0, i32 1
  %294 = ptrtoint ptr %ptrs118 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %ptrs118, align 4
  %wr32119 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %295, i32 0, i32 1
  %296 = ptrtoint ptr %wr32119 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %wr32119, align 4
  tail call void %297(ptr noundef %293, i64 noundef 1552, i32 noundef 1) #3
  %298 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %inst, align 8
  %ptrs122 = getelementptr inbounds %struct.nvkm_memory, ptr %299, i32 0, i32 1
  %300 = ptrtoint ptr %ptrs122 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %ptrs122, align 4
  %wr32123 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %301, i32 0, i32 1
  %302 = ptrtoint ptr %wr32123 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %wr32123, align 4
  tail call void %303(ptr noundef %299, i64 noundef 1560, i32 noundef 262144) #3
  %304 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %inst, align 8
  %ptrs126 = getelementptr inbounds %struct.nvkm_memory, ptr %305, i32 0, i32 1
  %306 = ptrtoint ptr %ptrs126 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %ptrs126, align 4
  %wr32127 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %307, i32 0, i32 1
  %308 = ptrtoint ptr %wr32127 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %wr32127, align 4
  tail call void %309(ptr noundef %305, i64 noundef 1564, i32 noundef 65536) #3
  br label %for.body132

for.body132:                                      ; preds = %for.body132.for.body132_crit_edge, %if.end8
  %i.6332 = phi i32 [ 6812, %if.end8 ], [ %add152, %for.body132.for.body132_crit_edge ]
  %310 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %inst, align 8
  %ptrs134 = getelementptr inbounds %struct.nvkm_memory, ptr %311, i32 0, i32 1
  %312 = ptrtoint ptr %ptrs134 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %ptrs134, align 4
  %wr32135 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %313, i32 0, i32 1
  %314 = ptrtoint ptr %wr32135 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %wr32135, align 4
  %conv138 = zext i32 %i.6332 to i64
  tail call void %315(ptr noundef %311, i64 noundef %conv138, i32 noundef 275779577) #3
  %316 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %inst, align 8
  %ptrs140 = getelementptr inbounds %struct.nvkm_memory, ptr %317, i32 0, i32 1
  %318 = ptrtoint ptr %ptrs140 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %ptrs140, align 4
  %wr32141 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %319, i32 0, i32 1
  %320 = ptrtoint ptr %wr32141 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %wr32141, align 4
  %add143 = add nuw nsw i32 %i.6332, 4
  %conv144 = zext i32 %add143 to i64
  tail call void %321(ptr noundef %317, i64 noundef %conv144, i32 noundef 70649964) #3
  %322 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %inst, align 8
  %ptrs146 = getelementptr inbounds %struct.nvkm_memory, ptr %323, i32 0, i32 1
  %324 = ptrtoint ptr %ptrs146 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %ptrs146, align 4
  %wr32147 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %325, i32 0, i32 1
  %326 = ptrtoint ptr %wr32147 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %wr32147, align 4
  %add149 = add nuw nsw i32 %i.6332, 8
  %conv150 = zext i32 %add149 to i64
  tail call void %327(ptr noundef %323, i64 noundef %conv150, i32 noundef 786459) #3
  %add152 = add nuw nsw i32 %i.6332, 16
  %cmp130 = icmp ult i32 %i.6332, 8941
  br i1 %cmp130, label %for.body132.for.body132_crit_edge, label %for.end153

for.body132.for.body132_crit_edge:                ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body132

for.end153:                                       ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #5
  %328 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %inst, align 8
  %ptrs155 = getelementptr inbounds %struct.nvkm_memory, ptr %329, i32 0, i32 1
  %330 = ptrtoint ptr %ptrs155 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %ptrs155, align 4
  %wr32156 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %331, i32 0, i32 1
  %332 = ptrtoint ptr %wr32156 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %wr32156, align 4
  tail call void %333(ptr noundef %329, i64 noundef 9884, i32 noundef 1065353216) #3
  %334 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %inst, align 8
  %ptrs159 = getelementptr inbounds %struct.nvkm_memory, ptr %335, i32 0, i32 1
  %336 = ptrtoint ptr %ptrs159 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %ptrs159, align 4
  %wr32160 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %337, i32 0, i32 1
  %338 = ptrtoint ptr %wr32160 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %wr32160, align 4
  tail call void %339(ptr noundef %335, i64 noundef 9904, i32 noundef 1065353216) #3
  %340 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %inst, align 8
  %ptrs163 = getelementptr inbounds %struct.nvkm_memory, ptr %341, i32 0, i32 1
  %342 = ptrtoint ptr %ptrs163 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %ptrs163, align 4
  %wr32164 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %343, i32 0, i32 1
  %344 = ptrtoint ptr %wr32164 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %wr32164, align 4
  tail call void %345(ptr noundef %341, i64 noundef 9948, i32 noundef 1073741824) #3
  %346 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %inst, align 8
  %ptrs167 = getelementptr inbounds %struct.nvkm_memory, ptr %347, i32 0, i32 1
  %348 = ptrtoint ptr %ptrs167 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %ptrs167, align 4
  %wr32168 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %349, i32 0, i32 1
  %350 = ptrtoint ptr %wr32168 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %wr32168, align 4
  tail call void %351(ptr noundef %347, i64 noundef 9952, i32 noundef 1065353216) #3
  %352 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %inst, align 8
  %ptrs171 = getelementptr inbounds %struct.nvkm_memory, ptr %353, i32 0, i32 1
  %354 = ptrtoint ptr %ptrs171 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %ptrs171, align 4
  %wr32172 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %355, i32 0, i32 1
  %356 = ptrtoint ptr %wr32172 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %wr32172, align 4
  tail call void %357(ptr noundef %353, i64 noundef 9956, i32 noundef 1056964608) #3
  %358 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %inst, align 8
  %ptrs175 = getelementptr inbounds %struct.nvkm_memory, ptr %359, i32 0, i32 1
  %360 = ptrtoint ptr %ptrs175 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %ptrs175, align 4
  %wr32176 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %361, i32 0, i32 1
  %362 = ptrtoint ptr %wr32176 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %wr32176, align 4
  tail call void %363(ptr noundef %359, i64 noundef 9964, i32 noundef 1073741824) #3
  %364 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %inst, align 8
  %ptrs179 = getelementptr inbounds %struct.nvkm_memory, ptr %365, i32 0, i32 1
  %366 = ptrtoint ptr %ptrs179 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %ptrs179, align 4
  %wr32180 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %367, i32 0, i32 1
  %368 = ptrtoint ptr %wr32180 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %wr32180, align 4
  tail call void %369(ptr noundef %365, i64 noundef 9968, i32 noundef 1065353216) #3
  %370 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %inst, align 8
  %ptrs183 = getelementptr inbounds %struct.nvkm_memory, ptr %371, i32 0, i32 1
  %372 = ptrtoint ptr %ptrs183 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %ptrs183, align 4
  %wr32184 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %373, i32 0, i32 1
  %374 = ptrtoint ptr %wr32184 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %wr32184, align 4
  tail call void %375(ptr noundef %371, i64 noundef 9976, i32 noundef -1082130432) #3
  %376 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %inst, align 8
  %ptrs187 = getelementptr inbounds %struct.nvkm_memory, ptr %377, i32 0, i32 1
  %378 = ptrtoint ptr %ptrs187 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %ptrs187, align 4
  %wr32188 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %379, i32 0, i32 1
  %380 = ptrtoint ptr %wr32188 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %wr32188, align 4
  tail call void %381(ptr noundef %377, i64 noundef 9984, i32 noundef -1082130432) #3
  %382 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %inst, align 8
  %ptrs191 = getelementptr inbounds %struct.nvkm_memory, ptr %383, i32 0, i32 1
  %384 = ptrtoint ptr %ptrs191 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %ptrs191, align 4
  %wr32192 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %385, i32 0, i32 1
  %386 = ptrtoint ptr %wr32192 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %wr32192, align 4
  tail call void %387(ptr noundef %383, i64 noundef 12324, i32 noundef 1040384) #3
  %388 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %inst, align 8
  %ptrs195 = getelementptr inbounds %struct.nvkm_memory, ptr %389, i32 0, i32 1
  %390 = ptrtoint ptr %ptrs195 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %ptrs195, align 4
  %wr32196 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %391, i32 0, i32 1
  %392 = ptrtoint ptr %wr32196 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %wr32196, align 4
  tail call void %393(ptr noundef %389, i64 noundef 12448, i32 noundef 1016) #3
  %394 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %inst, align 8
  %ptrs199 = getelementptr inbounds %struct.nvkm_memory, ptr %395, i32 0, i32 1
  %396 = ptrtoint ptr %ptrs199 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %ptrs199, align 4
  %wr32200 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %397, i32 0, i32 1
  %398 = ptrtoint ptr %wr32200 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %wr32200, align 4
  tail call void %399(ptr noundef %395, i64 noundef 13308, i32 noundef 3137536) #3
  %400 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %inst, align 8
  %ptrs207 = getelementptr inbounds %struct.nvkm_memory, ptr %401, i32 0, i32 1
  %402 = ptrtoint ptr %ptrs207 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %ptrs207, align 4
  %wr32208 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %403, i32 0, i32 1
  %404 = ptrtoint ptr %wr32208 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %wr32208, align 4
  tail call void %405(ptr noundef %401, i64 noundef 13340, i32 noundef 1856124) #3
  %406 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %inst, align 8
  %ptrs207.1 = getelementptr inbounds %struct.nvkm_memory, ptr %407, i32 0, i32 1
  %408 = ptrtoint ptr %ptrs207.1 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %ptrs207.1, align 4
  %wr32208.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %409, i32 0, i32 1
  %410 = ptrtoint ptr %wr32208.1 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %wr32208.1, align 4
  tail call void %411(ptr noundef %407, i64 noundef 13344, i32 noundef 1856124) #3
  %412 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %inst, align 8
  %ptrs207.2 = getelementptr inbounds %struct.nvkm_memory, ptr %413, i32 0, i32 1
  %414 = ptrtoint ptr %ptrs207.2 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %ptrs207.2, align 4
  %wr32208.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %415, i32 0, i32 1
  %416 = ptrtoint ptr %wr32208.2 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %wr32208.2, align 4
  tail call void %417(ptr noundef %413, i64 noundef 13348, i32 noundef 1856124) #3
  %418 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %inst, align 8
  %ptrs207.3 = getelementptr inbounds %struct.nvkm_memory, ptr %419, i32 0, i32 1
  %420 = ptrtoint ptr %ptrs207.3 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %ptrs207.3, align 4
  %wr32208.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %421, i32 0, i32 1
  %422 = ptrtoint ptr %wr32208.3 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %wr32208.3, align 4
  tail call void %423(ptr noundef %419, i64 noundef 13352, i32 noundef 1856124) #3
  %424 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %inst, align 8
  %ptrs207.4 = getelementptr inbounds %struct.nvkm_memory, ptr %425, i32 0, i32 1
  %426 = ptrtoint ptr %ptrs207.4 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %ptrs207.4, align 4
  %wr32208.4 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %427, i32 0, i32 1
  %428 = ptrtoint ptr %wr32208.4 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %wr32208.4, align 4
  tail call void %429(ptr noundef %425, i64 noundef 13356, i32 noundef 1856124) #3
  %430 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %inst, align 8
  %ptrs207.5 = getelementptr inbounds %struct.nvkm_memory, ptr %431, i32 0, i32 1
  %432 = ptrtoint ptr %ptrs207.5 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %ptrs207.5, align 4
  %wr32208.5 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %433, i32 0, i32 1
  %434 = ptrtoint ptr %wr32208.5 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %wr32208.5, align 4
  tail call void %435(ptr noundef %431, i64 noundef 13360, i32 noundef 1856124) #3
  %436 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %inst, align 8
  %ptrs207.6 = getelementptr inbounds %struct.nvkm_memory, ptr %437, i32 0, i32 1
  %438 = ptrtoint ptr %ptrs207.6 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %ptrs207.6, align 4
  %wr32208.6 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %439, i32 0, i32 1
  %440 = ptrtoint ptr %wr32208.6 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %wr32208.6, align 4
  tail call void %441(ptr noundef %437, i64 noundef 13364, i32 noundef 1856124) #3
  %442 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %inst, align 8
  %ptrs207.7 = getelementptr inbounds %struct.nvkm_memory, ptr %443, i32 0, i32 1
  %444 = ptrtoint ptr %ptrs207.7 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %ptrs207.7, align 4
  %wr32208.7 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %445, i32 0, i32 1
  %446 = ptrtoint ptr %wr32208.7 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %wr32208.7, align 4
  tail call void %447(ptr noundef %443, i64 noundef 13368, i32 noundef 1856124) #3
  %448 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %inst, align 8
  %450 = ptrtoint ptr %449 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %449, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %451, i32 0, i32 8
  %452 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %release, align 4
  tail call void %453(ptr noundef %449) #3
  br label %cleanup

cleanup:                                          ; preds = %for.end153, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end153 ], [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv20_gr_chan_dtor(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_gr_chan_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_gr_chan_fini(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @nv2a_gr, !1, !"nv2a_gr", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv2a.c", i32 95, i32 1}
!2 = !{ptr @nv2a_gr_chan, !3, !"nv2a_gr_chan", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv2a.c", i32 14, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
