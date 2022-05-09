; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/nv35.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv35.c"
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
@nv35_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.137, [19 x %struct.nvkm_sclass] }, [108 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.137, [19 x %struct.nvkm_sclass] } { ptr @nv20_gr_dtor, ptr @nv20_gr_oneinit, ptr @nv30_gr_init, ptr null, ptr @nv20_gr_intr, ptr @nv20_gr_tile, ptr null, ptr @nv35_gr_chan_new, ptr null, ptr null, ptr null, %struct.anon.137 zeroinitializer, [19 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 18, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 25, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 48, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 57, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 67, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 68, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 74, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 98, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 114, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 137, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 138, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 159, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 866, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 905, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 906, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 926, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 1175, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 1431, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [108 x i8] zeroinitializer }, align 32
@nv35_gr_chan = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr @nv20_gr_chan_dtor, ptr @nv20_gr_chan_init, ptr @nv20_gr_chan_fini, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.2 = private unnamed_addr constant [8 x i8] c"nv35_gr\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 103, i32 1 }
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"nv35_gr_chan\00", align 1
@___asan_gen_.6 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv35.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 14, i32 1 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @nv35_gr, ptr @nv35_gr_chan], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv35_gr to i32), i32 436, i32 544, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv35_gr_chan to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv35_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv20_gr_new_(ptr noundef nonnull @nv35_gr, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv20_gr_dtor(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_gr_oneinit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv30_gr_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv20_gr_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv20_gr_tile(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv35_gr_chan_new(ptr noundef %base, ptr nocapture noundef readonly %fifoch, ptr noundef %oclass, ptr nocapture noundef writeonly %pobject) #0 align 64 {
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
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv35_gr_chan, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #3
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
  %call5 = tail call i32 @nvkm_memory_new(ptr noundef %7, i32 noundef 0, i64 noundef 22396, i32 noundef 16, i1 noundef zeroext true, ptr noundef %inst) #3
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
  tail call void %19(ptr noundef %15, i64 noundef 40, i32 noundef %or) #3
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
  tail call void %27(ptr noundef %23, i64 noundef 1036, i32 noundef 257) #3
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
  tail call void %33(ptr noundef %29, i64 noundef 1056, i32 noundef 273) #3
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
  tail call void %39(ptr noundef %35, i64 noundef 1060, i32 noundef 96) #3
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
  tail call void %45(ptr noundef %41, i64 noundef 1088, i32 noundef 128) #3
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
  tail call void %51(ptr noundef %47, i64 noundef 1092, i32 noundef -65536) #3
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
  tail call void %57(ptr noundef %53, i64 noundef 1096, i32 noundef 1) #3
  %58 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %inst, align 8
  %ptrs40 = getelementptr inbounds %struct.nvkm_memory, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %ptrs40 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ptrs40, align 4
  %wr3241 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %wr3241 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wr3241, align 4
  tail call void %63(ptr noundef %59, i64 noundef 1116, i32 noundef 1145044992) #3
  %64 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %inst, align 8
  %ptrs44 = getelementptr inbounds %struct.nvkm_memory, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %ptrs44 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ptrs44, align 4
  %wr3245 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %wr3245 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wr3245, align 4
  tail call void %69(ptr noundef %65, i64 noundef 1160, i32 noundef -65536) #3
  %70 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %inst, align 8
  %ptrs49 = getelementptr inbounds %struct.nvkm_memory, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %ptrs49 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ptrs49, align 4
  %wr3250 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %wr3250 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wr3250, align 4
  tail call void %75(ptr noundef %71, i64 noundef 1244, i32 noundef 268369920) #3
  %76 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %inst, align 8
  %ptrs49.1 = getelementptr inbounds %struct.nvkm_memory, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %ptrs49.1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ptrs49.1, align 4
  %wr3250.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %wr3250.1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wr3250.1, align 4
  tail call void %81(ptr noundef %77, i64 noundef 1248, i32 noundef 268369920) #3
  %82 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %inst, align 8
  %ptrs54 = getelementptr inbounds %struct.nvkm_memory, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %ptrs54 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ptrs54, align 4
  %wr3255 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %wr3255 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wr3255, align 4
  tail call void %87(ptr noundef %83, i64 noundef 1256, i32 noundef 69888) #3
  %88 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %inst, align 8
  %ptrs62 = getelementptr inbounds %struct.nvkm_memory, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %ptrs62 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ptrs62, align 4
  %wr3263 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %wr3263 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %wr3263, align 4
  tail call void %93(ptr noundef %89, i64 noundef 1284, i32 noundef 134152192) #3
  %94 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %inst, align 8
  %ptrs62.1 = getelementptr inbounds %struct.nvkm_memory, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %ptrs62.1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ptrs62.1, align 4
  %wr3263.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %wr3263.1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %wr3263.1, align 4
  tail call void %99(ptr noundef %95, i64 noundef 1288, i32 noundef 134152192) #3
  %100 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %inst, align 8
  %ptrs62.2 = getelementptr inbounds %struct.nvkm_memory, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %ptrs62.2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ptrs62.2, align 4
  %wr3263.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %wr3263.2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %wr3263.2, align 4
  tail call void %105(ptr noundef %101, i64 noundef 1292, i32 noundef 134152192) #3
  %106 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %inst, align 8
  %ptrs62.3 = getelementptr inbounds %struct.nvkm_memory, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %ptrs62.3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ptrs62.3, align 4
  %wr3263.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %wr3263.3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wr3263.3, align 4
  tail call void %111(ptr noundef %107, i64 noundef 1296, i32 noundef 134152192) #3
  %112 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %inst, align 8
  %ptrs62.4 = getelementptr inbounds %struct.nvkm_memory, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %ptrs62.4 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ptrs62.4, align 4
  %wr3263.4 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %wr3263.4 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %wr3263.4, align 4
  tail call void %117(ptr noundef %113, i64 noundef 1300, i32 noundef 134152192) #3
  %118 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %inst, align 8
  %ptrs62.5 = getelementptr inbounds %struct.nvkm_memory, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %ptrs62.5 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ptrs62.5, align 4
  %wr3263.5 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %wr3263.5 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %wr3263.5, align 4
  tail call void %123(ptr noundef %119, i64 noundef 1304, i32 noundef 134152192) #3
  %124 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %inst, align 8
  %ptrs62.6 = getelementptr inbounds %struct.nvkm_memory, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %ptrs62.6 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ptrs62.6, align 4
  %wr3263.6 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %wr3263.6 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %wr3263.6, align 4
  tail call void %129(ptr noundef %125, i64 noundef 1308, i32 noundef 134152192) #3
  %130 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %inst, align 8
  %ptrs62.7 = getelementptr inbounds %struct.nvkm_memory, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %ptrs62.7 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ptrs62.7, align 4
  %wr3263.7 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %wr3263.7 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %wr3263.7, align 4
  tail call void %135(ptr noundef %131, i64 noundef 1312, i32 noundef 134152192) #3
  %136 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %inst, align 8
  %ptrs62.8 = getelementptr inbounds %struct.nvkm_memory, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %ptrs62.8 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ptrs62.8, align 4
  %wr3263.8 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %wr3263.8 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %wr3263.8, align 4
  tail call void %141(ptr noundef %137, i64 noundef 1316, i32 noundef 134152192) #3
  %142 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %inst, align 8
  %ptrs62.9 = getelementptr inbounds %struct.nvkm_memory, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %ptrs62.9 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ptrs62.9, align 4
  %wr3263.9 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %wr3263.9 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %wr3263.9, align 4
  tail call void %147(ptr noundef %143, i64 noundef 1320, i32 noundef 134152192) #3
  %148 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %inst, align 8
  %ptrs62.10 = getelementptr inbounds %struct.nvkm_memory, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %ptrs62.10 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ptrs62.10, align 4
  %wr3263.10 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %wr3263.10 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %wr3263.10, align 4
  tail call void %153(ptr noundef %149, i64 noundef 1324, i32 noundef 134152192) #3
  %154 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %inst, align 8
  %ptrs62.11 = getelementptr inbounds %struct.nvkm_memory, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %ptrs62.11 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ptrs62.11, align 4
  %wr3263.11 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %wr3263.11 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %wr3263.11, align 4
  tail call void %159(ptr noundef %155, i64 noundef 1328, i32 noundef 134152192) #3
  %160 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %inst, align 8
  %ptrs62.12 = getelementptr inbounds %struct.nvkm_memory, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %ptrs62.12 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ptrs62.12, align 4
  %wr3263.12 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %wr3263.12 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %wr3263.12, align 4
  tail call void %165(ptr noundef %161, i64 noundef 1332, i32 noundef 134152192) #3
  %166 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %inst, align 8
  %ptrs62.13 = getelementptr inbounds %struct.nvkm_memory, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %ptrs62.13 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ptrs62.13, align 4
  %wr3263.13 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %wr3263.13 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %wr3263.13, align 4
  tail call void %171(ptr noundef %167, i64 noundef 1336, i32 noundef 134152192) #3
  %172 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %inst, align 8
  %ptrs62.14 = getelementptr inbounds %struct.nvkm_memory, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %ptrs62.14 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ptrs62.14, align 4
  %wr3263.14 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %wr3263.14 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %wr3263.14, align 4
  tail call void %177(ptr noundef %173, i64 noundef 1340, i32 noundef 134152192) #3
  %178 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %inst, align 8
  %ptrs62.15 = getelementptr inbounds %struct.nvkm_memory, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %ptrs62.15 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ptrs62.15, align 4
  %wr3263.15 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %wr3263.15 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %wr3263.15, align 4
  tail call void %183(ptr noundef %179, i64 noundef 1344, i32 noundef 134152192) #3
  %184 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %inst, align 8
  %ptrs70 = getelementptr inbounds %struct.nvkm_memory, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %ptrs70 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ptrs70, align 4
  %wr3271 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %wr3271 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %wr3271, align 4
  tail call void %189(ptr noundef %185, i64 noundef 1356, i32 noundef 1266679807) #3
  %190 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %inst, align 8
  %ptrs74 = getelementptr inbounds %struct.nvkm_memory, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %ptrs74 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ptrs74, align 4
  %wr3275 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %wr3275 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %wr3275, align 4
  tail call void %195(ptr noundef %191, i64 noundef 1416, i32 noundef 128) #3
  %196 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %inst, align 8
  %ptrs78 = getelementptr inbounds %struct.nvkm_memory, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %ptrs78 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ptrs78, align 4
  %wr3279 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %wr3279 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %wr3279, align 4
  tail call void %201(ptr noundef %197, i64 noundef 1420, i32 noundef 807407616) #3
  %202 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %inst, align 8
  %ptrs82 = getelementptr inbounds %struct.nvkm_memory, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %ptrs82 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ptrs82, align 4
  %wr3283 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %wr3283 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %wr3283, align 4
  tail call void %207(ptr noundef %203, i64 noundef 1424, i32 noundef 1885360192) #3
  %208 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %inst, align 8
  %ptrs86 = getelementptr inbounds %struct.nvkm_memory, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %ptrs86 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ptrs86, align 4
  %wr3287 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %wr3287 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %wr3287, align 4
  tail call void %213(ptr noundef %209, i64 noundef 1428, i32 noundef -1196910456) #3
  %214 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %inst, align 8
  %ptrs90 = getelementptr inbounds %struct.nvkm_memory, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %ptrs90 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ptrs90, align 4
  %wr3291 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %wr3291 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %wr3291, align 4
  tail call void %219(ptr noundef %215, i64 noundef 1432, i32 noundef -118957880) #3
  %220 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %inst, align 8
  %ptrs94 = getelementptr inbounds %struct.nvkm_memory, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %ptrs94 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %ptrs94, align 4
  %wr3295 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %wr3295 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %wr3295, align 4
  tail call void %225(ptr noundef %221, i64 noundef 1452, i32 noundef -1342177280) #3
  %226 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %inst, align 8
  %ptrs102 = getelementptr inbounds %struct.nvkm_memory, ptr %227, i32 0, i32 1
  %228 = ptrtoint ptr %ptrs102 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %ptrs102, align 4
  %wr32103 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %wr32103 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %wr32103, align 4
  tail call void %231(ptr noundef %227, i64 noundef 1540, i32 noundef 66952) #3
  %232 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %inst, align 8
  %ptrs102.1 = getelementptr inbounds %struct.nvkm_memory, ptr %233, i32 0, i32 1
  %234 = ptrtoint ptr %ptrs102.1 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %ptrs102.1, align 4
  %wr32103.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %wr32103.1 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %wr32103.1, align 4
  tail call void %237(ptr noundef %233, i64 noundef 1544, i32 noundef 66952) #3
  %238 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %inst, align 8
  %ptrs102.2 = getelementptr inbounds %struct.nvkm_memory, ptr %239, i32 0, i32 1
  %240 = ptrtoint ptr %ptrs102.2 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %ptrs102.2, align 4
  %wr32103.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %wr32103.2 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %wr32103.2, align 4
  tail call void %243(ptr noundef %239, i64 noundef 1548, i32 noundef 66952) #3
  %244 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %inst, align 8
  %ptrs102.3 = getelementptr inbounds %struct.nvkm_memory, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %ptrs102.3 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %ptrs102.3, align 4
  %wr32103.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %247, i32 0, i32 1
  %248 = ptrtoint ptr %wr32103.3 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %wr32103.3, align 4
  tail call void %249(ptr noundef %245, i64 noundef 1552, i32 noundef 66952) #3
  %250 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %inst, align 8
  %ptrs102.4 = getelementptr inbounds %struct.nvkm_memory, ptr %251, i32 0, i32 1
  %252 = ptrtoint ptr %ptrs102.4 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %ptrs102.4, align 4
  %wr32103.4 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %253, i32 0, i32 1
  %254 = ptrtoint ptr %wr32103.4 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %wr32103.4, align 4
  tail call void %255(ptr noundef %251, i64 noundef 1556, i32 noundef 66952) #3
  %256 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %inst, align 8
  %ptrs102.5 = getelementptr inbounds %struct.nvkm_memory, ptr %257, i32 0, i32 1
  %258 = ptrtoint ptr %ptrs102.5 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %ptrs102.5, align 4
  %wr32103.5 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %259, i32 0, i32 1
  %260 = ptrtoint ptr %wr32103.5 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %wr32103.5, align 4
  tail call void %261(ptr noundef %257, i64 noundef 1560, i32 noundef 66952) #3
  %262 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %inst, align 8
  %ptrs102.6 = getelementptr inbounds %struct.nvkm_memory, ptr %263, i32 0, i32 1
  %264 = ptrtoint ptr %ptrs102.6 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %ptrs102.6, align 4
  %wr32103.6 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %265, i32 0, i32 1
  %266 = ptrtoint ptr %wr32103.6 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %wr32103.6, align 4
  tail call void %267(ptr noundef %263, i64 noundef 1564, i32 noundef 66952) #3
  %268 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %inst, align 8
  %ptrs102.7 = getelementptr inbounds %struct.nvkm_memory, ptr %269, i32 0, i32 1
  %270 = ptrtoint ptr %ptrs102.7 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %ptrs102.7, align 4
  %wr32103.7 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %271, i32 0, i32 1
  %272 = ptrtoint ptr %wr32103.7 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %wr32103.7, align 4
  tail call void %273(ptr noundef %269, i64 noundef 1568, i32 noundef 66952) #3
  %274 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %inst, align 8
  %ptrs102.8 = getelementptr inbounds %struct.nvkm_memory, ptr %275, i32 0, i32 1
  %276 = ptrtoint ptr %ptrs102.8 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %ptrs102.8, align 4
  %wr32103.8 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %277, i32 0, i32 1
  %278 = ptrtoint ptr %wr32103.8 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %wr32103.8, align 4
  tail call void %279(ptr noundef %275, i64 noundef 1572, i32 noundef 66952) #3
  %280 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %inst, align 8
  %ptrs102.9 = getelementptr inbounds %struct.nvkm_memory, ptr %281, i32 0, i32 1
  %282 = ptrtoint ptr %ptrs102.9 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %ptrs102.9, align 4
  %wr32103.9 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %283, i32 0, i32 1
  %284 = ptrtoint ptr %wr32103.9 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %wr32103.9, align 4
  tail call void %285(ptr noundef %281, i64 noundef 1576, i32 noundef 66952) #3
  %286 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %inst, align 8
  %ptrs102.10 = getelementptr inbounds %struct.nvkm_memory, ptr %287, i32 0, i32 1
  %288 = ptrtoint ptr %ptrs102.10 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %ptrs102.10, align 4
  %wr32103.10 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %289, i32 0, i32 1
  %290 = ptrtoint ptr %wr32103.10 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %wr32103.10, align 4
  tail call void %291(ptr noundef %287, i64 noundef 1580, i32 noundef 66952) #3
  %292 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %inst, align 8
  %ptrs102.11 = getelementptr inbounds %struct.nvkm_memory, ptr %293, i32 0, i32 1
  %294 = ptrtoint ptr %ptrs102.11 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %ptrs102.11, align 4
  %wr32103.11 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %295, i32 0, i32 1
  %296 = ptrtoint ptr %wr32103.11 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %wr32103.11, align 4
  tail call void %297(ptr noundef %293, i64 noundef 1584, i32 noundef 66952) #3
  %298 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %inst, align 8
  %ptrs102.12 = getelementptr inbounds %struct.nvkm_memory, ptr %299, i32 0, i32 1
  %300 = ptrtoint ptr %ptrs102.12 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %ptrs102.12, align 4
  %wr32103.12 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %301, i32 0, i32 1
  %302 = ptrtoint ptr %wr32103.12 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %wr32103.12, align 4
  tail call void %303(ptr noundef %299, i64 noundef 1588, i32 noundef 66952) #3
  %304 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %inst, align 8
  %ptrs102.13 = getelementptr inbounds %struct.nvkm_memory, ptr %305, i32 0, i32 1
  %306 = ptrtoint ptr %ptrs102.13 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %ptrs102.13, align 4
  %wr32103.13 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %307, i32 0, i32 1
  %308 = ptrtoint ptr %wr32103.13 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %wr32103.13, align 4
  tail call void %309(ptr noundef %305, i64 noundef 1592, i32 noundef 66952) #3
  %310 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %inst, align 8
  %ptrs102.14 = getelementptr inbounds %struct.nvkm_memory, ptr %311, i32 0, i32 1
  %312 = ptrtoint ptr %ptrs102.14 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %ptrs102.14, align 4
  %wr32103.14 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %313, i32 0, i32 1
  %314 = ptrtoint ptr %wr32103.14 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %wr32103.14, align 4
  tail call void %315(ptr noundef %311, i64 noundef 1596, i32 noundef 66952) #3
  %316 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %inst, align 8
  %ptrs102.15 = getelementptr inbounds %struct.nvkm_memory, ptr %317, i32 0, i32 1
  %318 = ptrtoint ptr %ptrs102.15 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %ptrs102.15, align 4
  %wr32103.15 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %319, i32 0, i32 1
  %320 = ptrtoint ptr %wr32103.15 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %wr32103.15, align 4
  tail call void %321(ptr noundef %317, i64 noundef 1600, i32 noundef 66952) #3
  %322 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %inst, align 8
  %ptrs114 = getelementptr inbounds %struct.nvkm_memory, ptr %323, i32 0, i32 1
  %324 = ptrtoint ptr %ptrs114 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %ptrs114, align 4
  %wr32115 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %325, i32 0, i32 1
  %326 = ptrtoint ptr %wr32115 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %wr32115, align 4
  tail call void %327(ptr noundef %323, i64 noundef 1604, i32 noundef 197379) #3
  %328 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %inst, align 8
  %ptrs114.1 = getelementptr inbounds %struct.nvkm_memory, ptr %329, i32 0, i32 1
  %330 = ptrtoint ptr %ptrs114.1 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %ptrs114.1, align 4
  %wr32115.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %331, i32 0, i32 1
  %332 = ptrtoint ptr %wr32115.1 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %wr32115.1, align 4
  tail call void %333(ptr noundef %329, i64 noundef 1608, i32 noundef 197379) #3
  %334 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %inst, align 8
  %ptrs114.2 = getelementptr inbounds %struct.nvkm_memory, ptr %335, i32 0, i32 1
  %336 = ptrtoint ptr %ptrs114.2 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %ptrs114.2, align 4
  %wr32115.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %337, i32 0, i32 1
  %338 = ptrtoint ptr %wr32115.2 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %wr32115.2, align 4
  tail call void %339(ptr noundef %335, i64 noundef 1612, i32 noundef 197379) #3
  %340 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %inst, align 8
  %ptrs114.3 = getelementptr inbounds %struct.nvkm_memory, ptr %341, i32 0, i32 1
  %342 = ptrtoint ptr %ptrs114.3 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %ptrs114.3, align 4
  %wr32115.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %343, i32 0, i32 1
  %344 = ptrtoint ptr %wr32115.3 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %wr32115.3, align 4
  tail call void %345(ptr noundef %341, i64 noundef 1616, i32 noundef 197379) #3
  %346 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %inst, align 8
  %ptrs114.4 = getelementptr inbounds %struct.nvkm_memory, ptr %347, i32 0, i32 1
  %348 = ptrtoint ptr %ptrs114.4 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %ptrs114.4, align 4
  %wr32115.4 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %349, i32 0, i32 1
  %350 = ptrtoint ptr %wr32115.4 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %wr32115.4, align 4
  tail call void %351(ptr noundef %347, i64 noundef 1620, i32 noundef 197379) #3
  %352 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %inst, align 8
  %ptrs114.5 = getelementptr inbounds %struct.nvkm_memory, ptr %353, i32 0, i32 1
  %354 = ptrtoint ptr %ptrs114.5 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %ptrs114.5, align 4
  %wr32115.5 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %355, i32 0, i32 1
  %356 = ptrtoint ptr %wr32115.5 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %wr32115.5, align 4
  tail call void %357(ptr noundef %353, i64 noundef 1624, i32 noundef 197379) #3
  %358 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %inst, align 8
  %ptrs114.6 = getelementptr inbounds %struct.nvkm_memory, ptr %359, i32 0, i32 1
  %360 = ptrtoint ptr %ptrs114.6 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %ptrs114.6, align 4
  %wr32115.6 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %361, i32 0, i32 1
  %362 = ptrtoint ptr %wr32115.6 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %wr32115.6, align 4
  tail call void %363(ptr noundef %359, i64 noundef 1628, i32 noundef 197379) #3
  %364 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %inst, align 8
  %ptrs114.7 = getelementptr inbounds %struct.nvkm_memory, ptr %365, i32 0, i32 1
  %366 = ptrtoint ptr %ptrs114.7 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %ptrs114.7, align 4
  %wr32115.7 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %367, i32 0, i32 1
  %368 = ptrtoint ptr %wr32115.7 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %wr32115.7, align 4
  tail call void %369(ptr noundef %365, i64 noundef 1632, i32 noundef 197379) #3
  %370 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %inst, align 8
  %ptrs114.8 = getelementptr inbounds %struct.nvkm_memory, ptr %371, i32 0, i32 1
  %372 = ptrtoint ptr %ptrs114.8 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %ptrs114.8, align 4
  %wr32115.8 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %373, i32 0, i32 1
  %374 = ptrtoint ptr %wr32115.8 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %wr32115.8, align 4
  tail call void %375(ptr noundef %371, i64 noundef 1636, i32 noundef 197379) #3
  %376 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %inst, align 8
  %ptrs114.9 = getelementptr inbounds %struct.nvkm_memory, ptr %377, i32 0, i32 1
  %378 = ptrtoint ptr %ptrs114.9 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %ptrs114.9, align 4
  %wr32115.9 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %379, i32 0, i32 1
  %380 = ptrtoint ptr %wr32115.9 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %wr32115.9, align 4
  tail call void %381(ptr noundef %377, i64 noundef 1640, i32 noundef 197379) #3
  %382 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %inst, align 8
  %ptrs114.10 = getelementptr inbounds %struct.nvkm_memory, ptr %383, i32 0, i32 1
  %384 = ptrtoint ptr %ptrs114.10 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %ptrs114.10, align 4
  %wr32115.10 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %385, i32 0, i32 1
  %386 = ptrtoint ptr %wr32115.10 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %wr32115.10, align 4
  tail call void %387(ptr noundef %383, i64 noundef 1644, i32 noundef 197379) #3
  %388 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %inst, align 8
  %ptrs114.11 = getelementptr inbounds %struct.nvkm_memory, ptr %389, i32 0, i32 1
  %390 = ptrtoint ptr %ptrs114.11 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %ptrs114.11, align 4
  %wr32115.11 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %391, i32 0, i32 1
  %392 = ptrtoint ptr %wr32115.11 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %wr32115.11, align 4
  tail call void %393(ptr noundef %389, i64 noundef 1648, i32 noundef 197379) #3
  %394 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %inst, align 8
  %ptrs114.12 = getelementptr inbounds %struct.nvkm_memory, ptr %395, i32 0, i32 1
  %396 = ptrtoint ptr %ptrs114.12 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %ptrs114.12, align 4
  %wr32115.12 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %397, i32 0, i32 1
  %398 = ptrtoint ptr %wr32115.12 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %wr32115.12, align 4
  tail call void %399(ptr noundef %395, i64 noundef 1652, i32 noundef 197379) #3
  %400 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %inst, align 8
  %ptrs114.13 = getelementptr inbounds %struct.nvkm_memory, ptr %401, i32 0, i32 1
  %402 = ptrtoint ptr %ptrs114.13 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %ptrs114.13, align 4
  %wr32115.13 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %403, i32 0, i32 1
  %404 = ptrtoint ptr %wr32115.13 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %wr32115.13, align 4
  tail call void %405(ptr noundef %401, i64 noundef 1656, i32 noundef 197379) #3
  %406 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %inst, align 8
  %ptrs114.14 = getelementptr inbounds %struct.nvkm_memory, ptr %407, i32 0, i32 1
  %408 = ptrtoint ptr %ptrs114.14 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %ptrs114.14, align 4
  %wr32115.14 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %409, i32 0, i32 1
  %410 = ptrtoint ptr %wr32115.14 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %wr32115.14, align 4
  tail call void %411(ptr noundef %407, i64 noundef 1660, i32 noundef 197379) #3
  %412 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %inst, align 8
  %ptrs114.15 = getelementptr inbounds %struct.nvkm_memory, ptr %413, i32 0, i32 1
  %414 = ptrtoint ptr %ptrs114.15 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %ptrs114.15, align 4
  %wr32115.15 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %415, i32 0, i32 1
  %416 = ptrtoint ptr %wr32115.15 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %wr32115.15, align 4
  tail call void %417(ptr noundef %413, i64 noundef 1664, i32 noundef 197379) #3
  %418 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %inst, align 8
  %ptrs126 = getelementptr inbounds %struct.nvkm_memory, ptr %419, i32 0, i32 1
  %420 = ptrtoint ptr %ptrs126 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %ptrs126, align 4
  %wr32127 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %421, i32 0, i32 1
  %422 = ptrtoint ptr %wr32127 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %wr32127, align 4
  tail call void %423(ptr noundef %419, i64 noundef 1732, i32 noundef 568036) #3
  %424 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %inst, align 8
  %ptrs126.1 = getelementptr inbounds %struct.nvkm_memory, ptr %425, i32 0, i32 1
  %426 = ptrtoint ptr %ptrs126.1 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %ptrs126.1, align 4
  %wr32127.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %427, i32 0, i32 1
  %428 = ptrtoint ptr %wr32127.1 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %wr32127.1, align 4
  tail call void %429(ptr noundef %425, i64 noundef 1736, i32 noundef 568036) #3
  %430 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %inst, align 8
  %ptrs126.2 = getelementptr inbounds %struct.nvkm_memory, ptr %431, i32 0, i32 1
  %432 = ptrtoint ptr %ptrs126.2 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %ptrs126.2, align 4
  %wr32127.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %433, i32 0, i32 1
  %434 = ptrtoint ptr %wr32127.2 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %wr32127.2, align 4
  tail call void %435(ptr noundef %431, i64 noundef 1740, i32 noundef 568036) #3
  %436 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %inst, align 8
  %ptrs126.3 = getelementptr inbounds %struct.nvkm_memory, ptr %437, i32 0, i32 1
  %438 = ptrtoint ptr %ptrs126.3 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %ptrs126.3, align 4
  %wr32127.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %439, i32 0, i32 1
  %440 = ptrtoint ptr %wr32127.3 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %wr32127.3, align 4
  tail call void %441(ptr noundef %437, i64 noundef 1744, i32 noundef 568036) #3
  %442 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %inst, align 8
  %ptrs126.4 = getelementptr inbounds %struct.nvkm_memory, ptr %443, i32 0, i32 1
  %444 = ptrtoint ptr %ptrs126.4 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %ptrs126.4, align 4
  %wr32127.4 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %445, i32 0, i32 1
  %446 = ptrtoint ptr %wr32127.4 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %wr32127.4, align 4
  tail call void %447(ptr noundef %443, i64 noundef 1748, i32 noundef 568036) #3
  %448 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %inst, align 8
  %ptrs126.5 = getelementptr inbounds %struct.nvkm_memory, ptr %449, i32 0, i32 1
  %450 = ptrtoint ptr %ptrs126.5 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %ptrs126.5, align 4
  %wr32127.5 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %451, i32 0, i32 1
  %452 = ptrtoint ptr %wr32127.5 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %wr32127.5, align 4
  tail call void %453(ptr noundef %449, i64 noundef 1752, i32 noundef 568036) #3
  %454 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %inst, align 8
  %ptrs126.6 = getelementptr inbounds %struct.nvkm_memory, ptr %455, i32 0, i32 1
  %456 = ptrtoint ptr %ptrs126.6 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %ptrs126.6, align 4
  %wr32127.6 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %457, i32 0, i32 1
  %458 = ptrtoint ptr %wr32127.6 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %wr32127.6, align 4
  tail call void %459(ptr noundef %455, i64 noundef 1756, i32 noundef 568036) #3
  %460 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %inst, align 8
  %ptrs126.7 = getelementptr inbounds %struct.nvkm_memory, ptr %461, i32 0, i32 1
  %462 = ptrtoint ptr %ptrs126.7 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %ptrs126.7, align 4
  %wr32127.7 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %463, i32 0, i32 1
  %464 = ptrtoint ptr %wr32127.7 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %wr32127.7, align 4
  tail call void %465(ptr noundef %461, i64 noundef 1760, i32 noundef 568036) #3
  %466 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %inst, align 8
  %ptrs126.8 = getelementptr inbounds %struct.nvkm_memory, ptr %467, i32 0, i32 1
  %468 = ptrtoint ptr %ptrs126.8 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %ptrs126.8, align 4
  %wr32127.8 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %469, i32 0, i32 1
  %470 = ptrtoint ptr %wr32127.8 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %wr32127.8, align 4
  tail call void %471(ptr noundef %467, i64 noundef 1764, i32 noundef 568036) #3
  %472 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %inst, align 8
  %ptrs126.9 = getelementptr inbounds %struct.nvkm_memory, ptr %473, i32 0, i32 1
  %474 = ptrtoint ptr %ptrs126.9 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %ptrs126.9, align 4
  %wr32127.9 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %475, i32 0, i32 1
  %476 = ptrtoint ptr %wr32127.9 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %wr32127.9, align 4
  tail call void %477(ptr noundef %473, i64 noundef 1768, i32 noundef 568036) #3
  %478 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %inst, align 8
  %ptrs126.10 = getelementptr inbounds %struct.nvkm_memory, ptr %479, i32 0, i32 1
  %480 = ptrtoint ptr %ptrs126.10 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %ptrs126.10, align 4
  %wr32127.10 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %481, i32 0, i32 1
  %482 = ptrtoint ptr %wr32127.10 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %wr32127.10, align 4
  tail call void %483(ptr noundef %479, i64 noundef 1772, i32 noundef 568036) #3
  %484 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %inst, align 8
  %ptrs126.11 = getelementptr inbounds %struct.nvkm_memory, ptr %485, i32 0, i32 1
  %486 = ptrtoint ptr %ptrs126.11 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %ptrs126.11, align 4
  %wr32127.11 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %487, i32 0, i32 1
  %488 = ptrtoint ptr %wr32127.11 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %wr32127.11, align 4
  tail call void %489(ptr noundef %485, i64 noundef 1776, i32 noundef 568036) #3
  %490 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %inst, align 8
  %ptrs126.12 = getelementptr inbounds %struct.nvkm_memory, ptr %491, i32 0, i32 1
  %492 = ptrtoint ptr %ptrs126.12 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %ptrs126.12, align 4
  %wr32127.12 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %493, i32 0, i32 1
  %494 = ptrtoint ptr %wr32127.12 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %wr32127.12, align 4
  tail call void %495(ptr noundef %491, i64 noundef 1780, i32 noundef 568036) #3
  %496 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %inst, align 8
  %ptrs126.13 = getelementptr inbounds %struct.nvkm_memory, ptr %497, i32 0, i32 1
  %498 = ptrtoint ptr %ptrs126.13 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %ptrs126.13, align 4
  %wr32127.13 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %499, i32 0, i32 1
  %500 = ptrtoint ptr %wr32127.13 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %wr32127.13, align 4
  tail call void %501(ptr noundef %497, i64 noundef 1784, i32 noundef 568036) #3
  %502 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %inst, align 8
  %ptrs126.14 = getelementptr inbounds %struct.nvkm_memory, ptr %503, i32 0, i32 1
  %504 = ptrtoint ptr %ptrs126.14 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %ptrs126.14, align 4
  %wr32127.14 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %505, i32 0, i32 1
  %506 = ptrtoint ptr %wr32127.14 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %wr32127.14, align 4
  tail call void %507(ptr noundef %503, i64 noundef 1788, i32 noundef 568036) #3
  %508 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %inst, align 8
  %ptrs126.15 = getelementptr inbounds %struct.nvkm_memory, ptr %509, i32 0, i32 1
  %510 = ptrtoint ptr %ptrs126.15 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %ptrs126.15, align 4
  %wr32127.15 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %511, i32 0, i32 1
  %512 = ptrtoint ptr %wr32127.15 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %wr32127.15, align 4
  tail call void %513(ptr noundef %509, i64 noundef 1792, i32 noundef 568036) #3
  %514 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %inst, align 8
  %ptrs138 = getelementptr inbounds %struct.nvkm_memory, ptr %515, i32 0, i32 1
  %516 = ptrtoint ptr %ptrs138 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %ptrs138, align 4
  %wr32139 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %517, i32 0, i32 1
  %518 = ptrtoint ptr %wr32139 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %wr32139, align 4
  tail call void %519(ptr noundef %515, i64 noundef 1796, i32 noundef 16850944) #3
  %520 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %inst, align 8
  %ptrs138.1 = getelementptr inbounds %struct.nvkm_memory, ptr %521, i32 0, i32 1
  %522 = ptrtoint ptr %ptrs138.1 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %ptrs138.1, align 4
  %wr32139.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %523, i32 0, i32 1
  %524 = ptrtoint ptr %wr32139.1 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %wr32139.1, align 4
  tail call void %525(ptr noundef %521, i64 noundef 1800, i32 noundef 16850944) #3
  %526 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %inst, align 8
  %ptrs138.2 = getelementptr inbounds %struct.nvkm_memory, ptr %527, i32 0, i32 1
  %528 = ptrtoint ptr %ptrs138.2 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %ptrs138.2, align 4
  %wr32139.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %529, i32 0, i32 1
  %530 = ptrtoint ptr %wr32139.2 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %wr32139.2, align 4
  tail call void %531(ptr noundef %527, i64 noundef 1804, i32 noundef 16850944) #3
  %532 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %inst, align 8
  %ptrs138.3 = getelementptr inbounds %struct.nvkm_memory, ptr %533, i32 0, i32 1
  %534 = ptrtoint ptr %ptrs138.3 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %ptrs138.3, align 4
  %wr32139.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %535, i32 0, i32 1
  %536 = ptrtoint ptr %wr32139.3 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %wr32139.3, align 4
  tail call void %537(ptr noundef %533, i64 noundef 1808, i32 noundef 16850944) #3
  %538 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %inst, align 8
  %ptrs138.4 = getelementptr inbounds %struct.nvkm_memory, ptr %539, i32 0, i32 1
  %540 = ptrtoint ptr %ptrs138.4 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %ptrs138.4, align 4
  %wr32139.4 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %541, i32 0, i32 1
  %542 = ptrtoint ptr %wr32139.4 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %wr32139.4, align 4
  tail call void %543(ptr noundef %539, i64 noundef 1812, i32 noundef 16850944) #3
  %544 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %inst, align 8
  %ptrs138.5 = getelementptr inbounds %struct.nvkm_memory, ptr %545, i32 0, i32 1
  %546 = ptrtoint ptr %ptrs138.5 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %ptrs138.5, align 4
  %wr32139.5 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %547, i32 0, i32 1
  %548 = ptrtoint ptr %wr32139.5 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %wr32139.5, align 4
  tail call void %549(ptr noundef %545, i64 noundef 1816, i32 noundef 16850944) #3
  %550 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %inst, align 8
  %ptrs138.6 = getelementptr inbounds %struct.nvkm_memory, ptr %551, i32 0, i32 1
  %552 = ptrtoint ptr %ptrs138.6 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %ptrs138.6, align 4
  %wr32139.6 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %553, i32 0, i32 1
  %554 = ptrtoint ptr %wr32139.6 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %wr32139.6, align 4
  tail call void %555(ptr noundef %551, i64 noundef 1820, i32 noundef 16850944) #3
  %556 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %inst, align 8
  %ptrs138.7 = getelementptr inbounds %struct.nvkm_memory, ptr %557, i32 0, i32 1
  %558 = ptrtoint ptr %ptrs138.7 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %ptrs138.7, align 4
  %wr32139.7 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %559, i32 0, i32 1
  %560 = ptrtoint ptr %wr32139.7 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %wr32139.7, align 4
  tail call void %561(ptr noundef %557, i64 noundef 1824, i32 noundef 16850944) #3
  %562 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %inst, align 8
  %ptrs138.8 = getelementptr inbounds %struct.nvkm_memory, ptr %563, i32 0, i32 1
  %564 = ptrtoint ptr %ptrs138.8 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %ptrs138.8, align 4
  %wr32139.8 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %565, i32 0, i32 1
  %566 = ptrtoint ptr %wr32139.8 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %wr32139.8, align 4
  tail call void %567(ptr noundef %563, i64 noundef 1828, i32 noundef 16850944) #3
  %568 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %inst, align 8
  %ptrs138.9 = getelementptr inbounds %struct.nvkm_memory, ptr %569, i32 0, i32 1
  %570 = ptrtoint ptr %ptrs138.9 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %ptrs138.9, align 4
  %wr32139.9 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %571, i32 0, i32 1
  %572 = ptrtoint ptr %wr32139.9 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %wr32139.9, align 4
  tail call void %573(ptr noundef %569, i64 noundef 1832, i32 noundef 16850944) #3
  %574 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %inst, align 8
  %ptrs138.10 = getelementptr inbounds %struct.nvkm_memory, ptr %575, i32 0, i32 1
  %576 = ptrtoint ptr %ptrs138.10 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %ptrs138.10, align 4
  %wr32139.10 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %577, i32 0, i32 1
  %578 = ptrtoint ptr %wr32139.10 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %wr32139.10, align 4
  tail call void %579(ptr noundef %575, i64 noundef 1836, i32 noundef 16850944) #3
  %580 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %inst, align 8
  %ptrs138.11 = getelementptr inbounds %struct.nvkm_memory, ptr %581, i32 0, i32 1
  %582 = ptrtoint ptr %ptrs138.11 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %ptrs138.11, align 4
  %wr32139.11 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %583, i32 0, i32 1
  %584 = ptrtoint ptr %wr32139.11 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %wr32139.11, align 4
  tail call void %585(ptr noundef %581, i64 noundef 1840, i32 noundef 16850944) #3
  %586 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %inst, align 8
  %ptrs138.12 = getelementptr inbounds %struct.nvkm_memory, ptr %587, i32 0, i32 1
  %588 = ptrtoint ptr %ptrs138.12 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %ptrs138.12, align 4
  %wr32139.12 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %589, i32 0, i32 1
  %590 = ptrtoint ptr %wr32139.12 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %wr32139.12, align 4
  tail call void %591(ptr noundef %587, i64 noundef 1844, i32 noundef 16850944) #3
  %592 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %inst, align 8
  %ptrs138.13 = getelementptr inbounds %struct.nvkm_memory, ptr %593, i32 0, i32 1
  %594 = ptrtoint ptr %ptrs138.13 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %ptrs138.13, align 4
  %wr32139.13 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %595, i32 0, i32 1
  %596 = ptrtoint ptr %wr32139.13 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %wr32139.13, align 4
  tail call void %597(ptr noundef %593, i64 noundef 1848, i32 noundef 16850944) #3
  %598 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %inst, align 8
  %ptrs138.14 = getelementptr inbounds %struct.nvkm_memory, ptr %599, i32 0, i32 1
  %600 = ptrtoint ptr %ptrs138.14 to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %ptrs138.14, align 4
  %wr32139.14 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %601, i32 0, i32 1
  %602 = ptrtoint ptr %wr32139.14 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %wr32139.14, align 4
  tail call void %603(ptr noundef %599, i64 noundef 1852, i32 noundef 16850944) #3
  %604 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %inst, align 8
  %ptrs138.15 = getelementptr inbounds %struct.nvkm_memory, ptr %605, i32 0, i32 1
  %606 = ptrtoint ptr %ptrs138.15 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %ptrs138.15, align 4
  %wr32139.15 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %607, i32 0, i32 1
  %608 = ptrtoint ptr %wr32139.15 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %wr32139.15, align 4
  tail call void %609(ptr noundef %605, i64 noundef 1856, i32 noundef 16850944) #3
  %610 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %inst, align 8
  %ptrs150 = getelementptr inbounds %struct.nvkm_memory, ptr %611, i32 0, i32 1
  %612 = ptrtoint ptr %ptrs150 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %ptrs150, align 4
  %wr32151 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %613, i32 0, i32 1
  %614 = ptrtoint ptr %wr32151 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %wr32151, align 4
  tail call void %615(ptr noundef %611, i64 noundef 1860, i32 noundef 524296) #3
  %616 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %inst, align 8
  %ptrs150.1 = getelementptr inbounds %struct.nvkm_memory, ptr %617, i32 0, i32 1
  %618 = ptrtoint ptr %ptrs150.1 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %ptrs150.1, align 4
  %wr32151.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %619, i32 0, i32 1
  %620 = ptrtoint ptr %wr32151.1 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %wr32151.1, align 4
  tail call void %621(ptr noundef %617, i64 noundef 1864, i32 noundef 524296) #3
  %622 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %inst, align 8
  %ptrs150.2 = getelementptr inbounds %struct.nvkm_memory, ptr %623, i32 0, i32 1
  %624 = ptrtoint ptr %ptrs150.2 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %ptrs150.2, align 4
  %wr32151.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %625, i32 0, i32 1
  %626 = ptrtoint ptr %wr32151.2 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %wr32151.2, align 4
  tail call void %627(ptr noundef %623, i64 noundef 1868, i32 noundef 524296) #3
  %628 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %inst, align 8
  %ptrs150.3 = getelementptr inbounds %struct.nvkm_memory, ptr %629, i32 0, i32 1
  %630 = ptrtoint ptr %ptrs150.3 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %ptrs150.3, align 4
  %wr32151.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %631, i32 0, i32 1
  %632 = ptrtoint ptr %wr32151.3 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %wr32151.3, align 4
  tail call void %633(ptr noundef %629, i64 noundef 1872, i32 noundef 524296) #3
  %634 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %inst, align 8
  %ptrs150.4 = getelementptr inbounds %struct.nvkm_memory, ptr %635, i32 0, i32 1
  %636 = ptrtoint ptr %ptrs150.4 to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %ptrs150.4, align 4
  %wr32151.4 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %637, i32 0, i32 1
  %638 = ptrtoint ptr %wr32151.4 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %wr32151.4, align 4
  tail call void %639(ptr noundef %635, i64 noundef 1876, i32 noundef 524296) #3
  %640 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %inst, align 8
  %ptrs150.5 = getelementptr inbounds %struct.nvkm_memory, ptr %641, i32 0, i32 1
  %642 = ptrtoint ptr %ptrs150.5 to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %ptrs150.5, align 4
  %wr32151.5 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %643, i32 0, i32 1
  %644 = ptrtoint ptr %wr32151.5 to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %wr32151.5, align 4
  tail call void %645(ptr noundef %641, i64 noundef 1880, i32 noundef 524296) #3
  %646 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %inst, align 8
  %ptrs150.6 = getelementptr inbounds %struct.nvkm_memory, ptr %647, i32 0, i32 1
  %648 = ptrtoint ptr %ptrs150.6 to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %ptrs150.6, align 4
  %wr32151.6 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %649, i32 0, i32 1
  %650 = ptrtoint ptr %wr32151.6 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %wr32151.6, align 4
  tail call void %651(ptr noundef %647, i64 noundef 1884, i32 noundef 524296) #3
  %652 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %inst, align 8
  %ptrs150.7 = getelementptr inbounds %struct.nvkm_memory, ptr %653, i32 0, i32 1
  %654 = ptrtoint ptr %ptrs150.7 to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %ptrs150.7, align 4
  %wr32151.7 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %655, i32 0, i32 1
  %656 = ptrtoint ptr %wr32151.7 to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %wr32151.7, align 4
  tail call void %657(ptr noundef %653, i64 noundef 1888, i32 noundef 524296) #3
  %658 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %inst, align 8
  %ptrs150.8 = getelementptr inbounds %struct.nvkm_memory, ptr %659, i32 0, i32 1
  %660 = ptrtoint ptr %ptrs150.8 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %ptrs150.8, align 4
  %wr32151.8 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %661, i32 0, i32 1
  %662 = ptrtoint ptr %wr32151.8 to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %wr32151.8, align 4
  tail call void %663(ptr noundef %659, i64 noundef 1892, i32 noundef 524296) #3
  %664 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %inst, align 8
  %ptrs150.9 = getelementptr inbounds %struct.nvkm_memory, ptr %665, i32 0, i32 1
  %666 = ptrtoint ptr %ptrs150.9 to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %ptrs150.9, align 4
  %wr32151.9 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %667, i32 0, i32 1
  %668 = ptrtoint ptr %wr32151.9 to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %wr32151.9, align 4
  tail call void %669(ptr noundef %665, i64 noundef 1896, i32 noundef 524296) #3
  %670 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %inst, align 8
  %ptrs150.10 = getelementptr inbounds %struct.nvkm_memory, ptr %671, i32 0, i32 1
  %672 = ptrtoint ptr %ptrs150.10 to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %ptrs150.10, align 4
  %wr32151.10 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %673, i32 0, i32 1
  %674 = ptrtoint ptr %wr32151.10 to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %wr32151.10, align 4
  tail call void %675(ptr noundef %671, i64 noundef 1900, i32 noundef 524296) #3
  %676 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %inst, align 8
  %ptrs150.11 = getelementptr inbounds %struct.nvkm_memory, ptr %677, i32 0, i32 1
  %678 = ptrtoint ptr %ptrs150.11 to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %ptrs150.11, align 4
  %wr32151.11 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %679, i32 0, i32 1
  %680 = ptrtoint ptr %wr32151.11 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %wr32151.11, align 4
  tail call void %681(ptr noundef %677, i64 noundef 1904, i32 noundef 524296) #3
  %682 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %inst, align 8
  %ptrs150.12 = getelementptr inbounds %struct.nvkm_memory, ptr %683, i32 0, i32 1
  %684 = ptrtoint ptr %ptrs150.12 to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %ptrs150.12, align 4
  %wr32151.12 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %685, i32 0, i32 1
  %686 = ptrtoint ptr %wr32151.12 to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %wr32151.12, align 4
  tail call void %687(ptr noundef %683, i64 noundef 1908, i32 noundef 524296) #3
  %688 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %inst, align 8
  %ptrs150.13 = getelementptr inbounds %struct.nvkm_memory, ptr %689, i32 0, i32 1
  %690 = ptrtoint ptr %ptrs150.13 to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %ptrs150.13, align 4
  %wr32151.13 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %691, i32 0, i32 1
  %692 = ptrtoint ptr %wr32151.13 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %wr32151.13, align 4
  tail call void %693(ptr noundef %689, i64 noundef 1912, i32 noundef 524296) #3
  %694 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %inst, align 8
  %ptrs150.14 = getelementptr inbounds %struct.nvkm_memory, ptr %695, i32 0, i32 1
  %696 = ptrtoint ptr %ptrs150.14 to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %ptrs150.14, align 4
  %wr32151.14 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %697, i32 0, i32 1
  %698 = ptrtoint ptr %wr32151.14 to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %wr32151.14, align 4
  tail call void %699(ptr noundef %695, i64 noundef 1916, i32 noundef 524296) #3
  %700 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %inst, align 8
  %ptrs150.15 = getelementptr inbounds %struct.nvkm_memory, ptr %701, i32 0, i32 1
  %702 = ptrtoint ptr %ptrs150.15 to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %ptrs150.15, align 4
  %wr32151.15 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %703, i32 0, i32 1
  %704 = ptrtoint ptr %wr32151.15 to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %wr32151.15, align 4
  tail call void %705(ptr noundef %701, i64 noundef 1920, i32 noundef 524296) #3
  %706 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %inst, align 8
  %ptrs158 = getelementptr inbounds %struct.nvkm_memory, ptr %707, i32 0, i32 1
  %708 = ptrtoint ptr %ptrs158 to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %ptrs158, align 4
  %wr32159 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %709, i32 0, i32 1
  %710 = ptrtoint ptr %wr32159 to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %wr32159, align 4
  tail call void %711(ptr noundef %707, i64 noundef 2144, i32 noundef 262144) #3
  %712 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %inst, align 8
  %ptrs162 = getelementptr inbounds %struct.nvkm_memory, ptr %713, i32 0, i32 1
  %714 = ptrtoint ptr %ptrs162 to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %ptrs162, align 4
  %wr32163 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %715, i32 0, i32 1
  %716 = ptrtoint ptr %wr32163 to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %wr32163, align 4
  tail call void %717(ptr noundef %713, i64 noundef 2148, i32 noundef 65536) #3
  %718 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %inst, align 8
  %ptrs170 = getelementptr inbounds %struct.nvkm_memory, ptr %719, i32 0, i32 1
  %720 = ptrtoint ptr %ptrs170 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %ptrs170, align 4
  %wr32171 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %721, i32 0, i32 1
  %722 = ptrtoint ptr %wr32171 to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %wr32171, align 4
  tail call void %723(ptr noundef %719, i64 noundef 2152, i32 noundef 262148) #3
  %724 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %inst, align 8
  %ptrs170.1 = getelementptr inbounds %struct.nvkm_memory, ptr %725, i32 0, i32 1
  %726 = ptrtoint ptr %ptrs170.1 to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %ptrs170.1, align 4
  %wr32171.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %727, i32 0, i32 1
  %728 = ptrtoint ptr %wr32171.1 to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %wr32171.1, align 4
  tail call void %729(ptr noundef %725, i64 noundef 2156, i32 noundef 262148) #3
  %730 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %inst, align 8
  %ptrs170.2 = getelementptr inbounds %struct.nvkm_memory, ptr %731, i32 0, i32 1
  %732 = ptrtoint ptr %ptrs170.2 to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %ptrs170.2, align 4
  %wr32171.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %733, i32 0, i32 1
  %734 = ptrtoint ptr %wr32171.2 to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %wr32171.2, align 4
  tail call void %735(ptr noundef %731, i64 noundef 2160, i32 noundef 262148) #3
  %736 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %inst, align 8
  %ptrs170.3 = getelementptr inbounds %struct.nvkm_memory, ptr %737, i32 0, i32 1
  %738 = ptrtoint ptr %ptrs170.3 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %ptrs170.3, align 4
  %wr32171.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %739, i32 0, i32 1
  %740 = ptrtoint ptr %wr32171.3 to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %wr32171.3, align 4
  tail call void %741(ptr noundef %737, i64 noundef 2164, i32 noundef 262148) #3
  br label %for.body180

for.body180:                                      ; preds = %for.body180.for.body180_crit_edge, %if.end8
  %i.8392 = phi i32 [ %add200, %for.body180.for.body180_crit_edge ], [ 7964, %if.end8 ]
  %742 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %inst, align 8
  %ptrs182 = getelementptr inbounds %struct.nvkm_memory, ptr %743, i32 0, i32 1
  %744 = ptrtoint ptr %ptrs182 to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load ptr, ptr %ptrs182, align 4
  %wr32183 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %745, i32 0, i32 1
  %746 = ptrtoint ptr %wr32183 to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load ptr, ptr %wr32183, align 4
  %conv186 = zext i32 %i.8392 to i64
  tail call void %747(ptr noundef %743, i64 noundef %conv186, i32 noundef 275779577) #3
  %748 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %inst, align 8
  %ptrs188 = getelementptr inbounds %struct.nvkm_memory, ptr %749, i32 0, i32 1
  %750 = ptrtoint ptr %ptrs188 to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %ptrs188, align 4
  %wr32189 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %751, i32 0, i32 1
  %752 = ptrtoint ptr %wr32189 to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %wr32189, align 4
  %add191 = add nuw nsw i32 %i.8392, 4
  %conv192 = zext i32 %add191 to i64
  tail call void %753(ptr noundef %749, i64 noundef %conv192, i32 noundef 70649964) #3
  %754 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load ptr, ptr %inst, align 8
  %ptrs194 = getelementptr inbounds %struct.nvkm_memory, ptr %755, i32 0, i32 1
  %756 = ptrtoint ptr %ptrs194 to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %ptrs194, align 4
  %wr32195 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %757, i32 0, i32 1
  %758 = ptrtoint ptr %wr32195 to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load ptr, ptr %wr32195, align 4
  %add197 = add nuw nsw i32 %i.8392, 8
  %conv198 = zext i32 %add197 to i64
  tail call void %759(ptr noundef %755, i64 noundef %conv198, i32 noundef 786459) #3
  %add200 = add nuw nsw i32 %i.8392, 16
  %cmp178 = icmp ult i32 %i.8392, 12413
  br i1 %cmp178, label %for.body180.for.body180_crit_edge, label %for.body205.preheader

for.body180.for.body180_crit_edge:                ; preds = %for.body180
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body180

for.body205.preheader:                            ; preds = %for.body180
  call void @__sanitizer_cov_trace_pc() #5
  %760 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %inst, align 8
  %ptrs207 = getelementptr inbounds %struct.nvkm_memory, ptr %761, i32 0, i32 1
  %762 = ptrtoint ptr %ptrs207 to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %ptrs207, align 4
  %wr32208 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %763, i32 0, i32 1
  %764 = ptrtoint ptr %wr32208 to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %wr32208, align 4
  tail call void %765(ptr noundef %761, i64 noundef 12476, i32 noundef 65535) #3
  %766 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load ptr, ptr %inst, align 8
  %ptrs207.1 = getelementptr inbounds %struct.nvkm_memory, ptr %767, i32 0, i32 1
  %768 = ptrtoint ptr %ptrs207.1 to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load ptr, ptr %ptrs207.1, align 4
  %wr32208.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %769, i32 0, i32 1
  %770 = ptrtoint ptr %wr32208.1 to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %wr32208.1, align 4
  tail call void %771(ptr noundef %767, i64 noundef 12480, i32 noundef 65535) #3
  %772 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %inst, align 8
  %ptrs207.2 = getelementptr inbounds %struct.nvkm_memory, ptr %773, i32 0, i32 1
  %774 = ptrtoint ptr %ptrs207.2 to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load ptr, ptr %ptrs207.2, align 4
  %wr32208.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %775, i32 0, i32 1
  %776 = ptrtoint ptr %wr32208.2 to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load ptr, ptr %wr32208.2, align 4
  tail call void %777(ptr noundef %773, i64 noundef 12484, i32 noundef 65535) #3
  %778 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load ptr, ptr %inst, align 8
  %ptrs207.3 = getelementptr inbounds %struct.nvkm_memory, ptr %779, i32 0, i32 1
  %780 = ptrtoint ptr %ptrs207.3 to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load ptr, ptr %ptrs207.3, align 4
  %wr32208.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %781, i32 0, i32 1
  %782 = ptrtoint ptr %wr32208.3 to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load ptr, ptr %wr32208.3, align 4
  tail call void %783(ptr noundef %779, i64 noundef 12488, i32 noundef 65535) #3
  %784 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load ptr, ptr %inst, align 8
  %ptrs215 = getelementptr inbounds %struct.nvkm_memory, ptr %785, i32 0, i32 1
  %786 = ptrtoint ptr %ptrs215 to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %ptrs215, align 4
  %wr32216 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %787, i32 0, i32 1
  %788 = ptrtoint ptr %wr32216 to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load ptr, ptr %wr32216, align 4
  tail call void %789(ptr noundef %785, i64 noundef 13392, i32 noundef 1065353216) #3
  %790 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %inst, align 8
  %ptrs219 = getelementptr inbounds %struct.nvkm_memory, ptr %791, i32 0, i32 1
  %792 = ptrtoint ptr %ptrs219 to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load ptr, ptr %ptrs219, align 4
  %wr32220 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %793, i32 0, i32 1
  %794 = ptrtoint ptr %wr32220 to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %wr32220, align 4
  tail call void %795(ptr noundef %791, i64 noundef 14348, i32 noundef 1065353216) #3
  %796 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %inst, align 8
  %ptrs223 = getelementptr inbounds %struct.nvkm_memory, ptr %797, i32 0, i32 1
  %798 = ptrtoint ptr %ptrs223 to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load ptr, ptr %ptrs223, align 4
  %wr32224 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %799, i32 0, i32 1
  %800 = ptrtoint ptr %wr32224 to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %wr32224, align 4
  tail call void %801(ptr noundef %797, i64 noundef 14368, i32 noundef 1065353216) #3
  %802 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %inst, align 8
  %ptrs227 = getelementptr inbounds %struct.nvkm_memory, ptr %803, i32 0, i32 1
  %804 = ptrtoint ptr %ptrs227 to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %ptrs227, align 4
  %wr32228 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %805, i32 0, i32 1
  %806 = ptrtoint ptr %wr32228 to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %wr32228, align 4
  tail call void %807(ptr noundef %803, i64 noundef 14412, i32 noundef 1073741824) #3
  %808 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %inst, align 8
  %ptrs231 = getelementptr inbounds %struct.nvkm_memory, ptr %809, i32 0, i32 1
  %810 = ptrtoint ptr %ptrs231 to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %ptrs231, align 4
  %wr32232 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %811, i32 0, i32 1
  %812 = ptrtoint ptr %wr32232 to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %wr32232, align 4
  tail call void %813(ptr noundef %809, i64 noundef 14416, i32 noundef 1065353216) #3
  %814 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load ptr, ptr %inst, align 8
  %ptrs235 = getelementptr inbounds %struct.nvkm_memory, ptr %815, i32 0, i32 1
  %816 = ptrtoint ptr %ptrs235 to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %ptrs235, align 4
  %wr32236 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %817, i32 0, i32 1
  %818 = ptrtoint ptr %wr32236 to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load ptr, ptr %wr32236, align 4
  tail call void %819(ptr noundef %815, i64 noundef 14420, i32 noundef 1056964608) #3
  %820 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %inst, align 8
  %ptrs239 = getelementptr inbounds %struct.nvkm_memory, ptr %821, i32 0, i32 1
  %822 = ptrtoint ptr %ptrs239 to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load ptr, ptr %ptrs239, align 4
  %wr32240 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %823, i32 0, i32 1
  %824 = ptrtoint ptr %wr32240 to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %wr32240, align 4
  tail call void %825(ptr noundef %821, i64 noundef 14428, i32 noundef 1073741824) #3
  %826 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load ptr, ptr %inst, align 8
  %ptrs243 = getelementptr inbounds %struct.nvkm_memory, ptr %827, i32 0, i32 1
  %828 = ptrtoint ptr %ptrs243 to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %ptrs243, align 4
  %wr32244 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %829, i32 0, i32 1
  %830 = ptrtoint ptr %wr32244 to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %wr32244, align 4
  tail call void %831(ptr noundef %827, i64 noundef 14432, i32 noundef 1065353216) #3
  %832 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %inst, align 8
  %ptrs247 = getelementptr inbounds %struct.nvkm_memory, ptr %833, i32 0, i32 1
  %834 = ptrtoint ptr %ptrs247 to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load ptr, ptr %ptrs247, align 4
  %wr32248 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %835, i32 0, i32 1
  %836 = ptrtoint ptr %wr32248 to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load ptr, ptr %wr32248, align 4
  tail call void %837(ptr noundef %833, i64 noundef 14440, i32 noundef -1082130432) #3
  %838 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %inst, align 8
  %ptrs251 = getelementptr inbounds %struct.nvkm_memory, ptr %839, i32 0, i32 1
  %840 = ptrtoint ptr %ptrs251 to i32
  call void @__asan_load4_noabort(i32 %840)
  %841 = load ptr, ptr %ptrs251, align 4
  %wr32252 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %841, i32 0, i32 1
  %842 = ptrtoint ptr %wr32252 to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load ptr, ptr %wr32252, align 4
  tail call void %843(ptr noundef %839, i64 noundef 14448, i32 noundef -1082130432) #3
  %844 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load ptr, ptr %inst, align 8
  %846 = ptrtoint ptr %845 to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load ptr, ptr %845, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %847, i32 0, i32 8
  %848 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load ptr, ptr %release, align 4
  tail call void %849(ptr noundef %845) #3
  br label %cleanup

cleanup:                                          ; preds = %for.body205.preheader, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body205.preheader ], [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
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

!0 = !{ptr @nv35_gr, !1, !"nv35_gr", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv35.c", i32 103, i32 1}
!2 = !{ptr @nv35_gr_chan, !3, !"nv35_gr_chan", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv35.c", i32 14, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
