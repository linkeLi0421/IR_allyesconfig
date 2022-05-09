; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/xtensa.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/xtensa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.141, %struct.anon.142, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon.141 = type { ptr }
%struct.anon.142 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_xtensa = type { ptr, i32, %struct.nvkm_engine, ptr }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.133 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.133 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.nvkm_xtensa_func = type { i32, i32, [0 x %struct.nvkm_sclass] }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }

@nvkm_xtensa = internal constant { %struct.nvkm_engine_func, [44 x i8] } { %struct.nvkm_engine_func { ptr @nvkm_xtensa_dtor, ptr null, ptr null, ptr null, ptr @nvkm_xtensa_init, ptr @nvkm_xtensa_fini, ptr @nvkm_xtensa_intr, ptr null, ptr null, %struct.anon.141 zeroinitializer, %struct.anon.142 { ptr null, ptr @nvkm_xtensa_oclass_get }, ptr @nvkm_xtensa_cclass, [0 x %struct.nvkm_sclass] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvkm_xtensa_cclass = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvkm_xtensa_cclass_bind, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nouveau/nv84_xuc%03x\00", [43 x i8] zeroinitializer }, align 32
@nvkm_xtensa_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: unable to load firmware %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_xtensa_init\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/xtensa.c\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_xtensa_init._entry_ptr = internal global ptr @nvkm_xtensa_init._entry, section ".printk_index", align 4
@nvkm_xtensa_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 117, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: firmware %s too large\0A\00", [37 x i8] zeroinitializer }, align 32
@nvkm_xtensa_init._entry_ptr.8 = internal global ptr @nvkm_xtensa_init._entry.6, section ".printk_index", align 4
@nvkm_xtensa_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 69, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Watchdog interrupt, engine hung.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_xtensa_intr\00", [47 x i8] zeroinitializer }, align 32
@nvkm_xtensa_intr._entry_ptr = internal global ptr @nvkm_xtensa_intr._entry, section ".printk_index", align 4
@nvkm_xtensa_intr._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 73, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Enabling FIFO_CTRL\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nvkm_xtensa_intr._entry_ptr.14 = internal global ptr @nvkm_xtensa_intr._entry.11, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant [12 x i8] c"nvkm_xtensa\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 168, i32 1 }
@___asan_gen_.18 = private unnamed_addr constant [19 x i8] c"nvkm_xtensa_cclass\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 52, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 107, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 112, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 117, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 69, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [48 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/xtensa.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 73, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @nvkm_xtensa_init._entry, ptr @nvkm_xtensa_init._entry.6, ptr @nvkm_xtensa_init._entry_ptr, ptr @nvkm_xtensa_init._entry_ptr.8, ptr @nvkm_xtensa_intr._entry, ptr @nvkm_xtensa_intr._entry.11, ptr @nvkm_xtensa_intr._entry_ptr, ptr @nvkm_xtensa_intr._entry_ptr.14, ptr @nvkm_xtensa, ptr @nvkm_xtensa_cclass, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_xtensa to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_xtensa_cclass to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_xtensa_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_xtensa_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_xtensa_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_xtensa_intr._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_xtensa_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext %enable, i32 noundef %addr, ptr nocapture noundef writeonly %pengine) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 212) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %func, ptr %call7.i.i, align 8
  %addr2 = getelementptr inbounds %struct.nvkm_xtensa, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %addr2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %addr, ptr %addr2, align 4
  %engine = getelementptr inbounds %struct.nvkm_xtensa, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %pengine to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %engine, ptr %pengine, align 4
  %call5 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nvkm_xtensa, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext %enable, ptr noundef %engine) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @nvkm_xtensa_dtor(ptr noundef readnone %engine) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -8
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_xtensa_init(ptr noundef %engine) #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -8
  %device3 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %addr = getelementptr i8, ptr %engine, i32 -4
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #8
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !37
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #8
  %gpu_fw = getelementptr i8, ptr %engine, i32 200
  %5 = call ptr @memset(ptr %name, i32 255, i32 32)
  %6 = ptrtoint ptr %gpu_fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpu_fw, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %entry.if.end57_crit_edge

entry.if.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then:                                          ; preds = %entry
  %shr = lshr i32 %3, 12
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %shr)
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %call8 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %name, ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end20, label %do.body

do.body:                                          ; preds = %if.then
  %debug = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp ugt i32 %11, 1
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device3, align 4
  %dev14 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev14, align 8
  %name15 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %15, ptr noundef nonnull @.str.1, ptr noundef %name15, ptr noundef nonnull %name) #12
  br label %cleanup

if.end20:                                         ; preds = %if.then
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %19)
  %cmp22 = icmp ugt i32 %19, 262144
  br i1 %cmp22, label %do.body24, label %if.end40

do.body24:                                        ; preds = %if.end20
  %debug26 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 5
  %20 = ptrtoint ptr %debug26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp27 = icmp ugt i32 %21, 1
  br i1 %cmp27, label %do.end31, label %do.body24.if.end37_crit_edge

do.body24.if.end37_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

do.end31:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device3, align 4
  %dev33 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev33, align 8
  %name34 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %25, ptr noundef nonnull @.str.7, ptr noundef %name34, ptr noundef nonnull %name) #12
  br label %if.end37

if.end37:                                         ; preds = %do.end31, %do.body24.if.end37_crit_edge
  %26 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %27) #8
  br label %cleanup

if.end40:                                         ; preds = %if.end20
  %call42 = call i32 @nvkm_memory_new(ptr noundef %1, i32 noundef 0, i64 noundef 262144, i32 noundef 4096, i1 noundef zeroext false, ptr noundef %gpu_fw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %29) #8
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  %30 = ptrtoint ptr %gpu_fw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gpu_fw, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %acquire, align 4
  %call48 = call ptr %35(ptr noundef %31) #8
  %36 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fw, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp50211.not = icmp ult i32 %39, 4
  br i1 %cmp50211.not, label %if.end45.for.end_crit_edge, label %if.end45.for.body_crit_edge

if.end45.for.body_crit_edge:                      ; preds = %if.end45
  br label %for.body

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end45.for.body_crit_edge
  %40 = phi ptr [ %52, %for.body.for.body_crit_edge ], [ %37, %if.end45.for.body_crit_edge ]
  %i.0212 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end45.for.body_crit_edge ]
  %41 = ptrtoint ptr %gpu_fw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %gpu_fw, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wr32, align 4
  %mul = shl i32 %i.0212, 2
  %conv = sext i32 %mul to i64
  %data = getelementptr inbounds %struct.firmware, ptr %40, i32 0, i32 1
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  %add.ptr53 = getelementptr i32, ptr %48, i32 %i.0212
  %49 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr53, align 4
  call void %46(ptr noundef %42, i64 noundef %conv, i32 noundef %50) #8
  %inc = add nuw nsw i32 %i.0212, 1
  %51 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fw, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %div209 = lshr i32 %54, 2
  %cmp50 = icmp ult i32 %inc, %div209
  br i1 %cmp50, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end45.for.end_crit_edge
  %55 = ptrtoint ptr %gpu_fw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %gpu_fw, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %release, align 4
  call void %60(ptr noundef %56) #8
  %61 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %62) #8
  br label %if.end57

if.end57:                                         ; preds = %for.end, %entry.if.end57_crit_edge
  %63 = ptrtoint ptr %gpu_fw to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %gpu_fw, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %addr60 = getelementptr inbounds %struct.nvkm_memory_func, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %addr60 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %addr60, align 4
  %call62 = call i64 %68(ptr noundef %64) #8
  %69 = ptrtoint ptr %gpu_fw to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %gpu_fw, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %size65 = getelementptr inbounds %struct.nvkm_memory_func, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %size65 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %size65, align 4
  %call67 = call i64 %74(ptr noundef %70) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !38
  call void @arm_heavy_mb() #8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %75 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pri, align 4
  %add = add i32 %3, 3344
  %add.ptr71 = getelementptr i8, ptr %76, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 536870911) #8, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  call void @arm_heavy_mb() #8
  %77 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pri, align 4
  %add76 = add i32 %3, 3336
  %add.ptr77 = getelementptr i8, ptr %78, i32 %add76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 268435455) #8, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  call void @arm_heavy_mb() #8
  %79 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr, align 4
  %unkd28 = getelementptr inbounds %struct.nvkm_xtensa_func, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %unkd28 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %unkd28, align 4
  %83 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pri, align 4
  %add83 = add i32 %3, 3368
  %add.ptr84 = getelementptr i8, ptr %84, i32 %add83
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %82) #8, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  call void @arm_heavy_mb() #8
  %85 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pri, align 4
  %add89 = add i32 %3, 3104
  %add.ptr90 = getelementptr i8, ptr %86, i32 %add89
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 63) #8, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !43
  call void @arm_heavy_mb() #8
  %87 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pri, align 4
  %add95 = add i32 %3, 3460
  %add.ptr96 = getelementptr i8, ptr %88, i32 %add95
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 63) #8, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  call void @arm_heavy_mb() #8
  %shr100 = lshr i64 %call62, 8
  %conv101 = trunc i64 %shr100 to i32
  %89 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pri, align 4
  %add103 = add i32 %3, 3264
  %add.ptr104 = getelementptr i8, ptr %90, i32 %add103
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 %conv101) #8, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !45
  call void @arm_heavy_mb() #8
  %91 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pri, align 4
  %add109 = add i32 %3, 3268
  %add.ptr110 = getelementptr i8, ptr %92, i32 %add109
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 28) #8, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  call void @arm_heavy_mb() #8
  %shr114 = lshr i64 %call67, 8
  %conv115 = trunc i64 %shr114 to i32
  %93 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pri, align 4
  %add117 = add i32 %3, 3272
  %add.ptr118 = getelementptr i8, ptr %94, i32 %add117
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %conv115) #8, !srcloc !39
  %95 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pri, align 4
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #8, !srcloc !47
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  call void @arm_heavy_mb() #8
  %98 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pri, align 4
  %add127 = add i32 %3, 3552
  %add.ptr128 = getelementptr i8, ptr %99, i32 %add127
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 %97) #8, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  call void @arm_heavy_mb() #8
  %100 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pri, align 4
  %add133 = add i32 %3, 3304
  %add.ptr134 = getelementptr i8, ptr %101, i32 %add133
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 15) #8, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @arm_heavy_mb() #8
  %102 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pri, align 4
  %add.ptr140 = getelementptr i8, ptr %103, i32 %add89
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140, i32 63) #8, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  call void @arm_heavy_mb() #8
  %104 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pri, align 4
  %add.ptr146 = getelementptr i8, ptr %105, i32 %add95
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr146, i32 63) #8, !srcloc !39
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then44, %if.end37, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end57 ], [ -22, %if.end37 ], [ %call42, %if.then44 ], [ %call8, %do.end ], [ %call8, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_xtensa_fini(ptr noundef %engine, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %addr = getelementptr i8, ptr %engine, i32 -4
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add = add i32 %3, 3460
  %add.ptr3 = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add8 = add i32 %3, 3476
  %add.ptr9 = getelementptr i8, ptr %7, i32 %add8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 0) #8, !srcloc !39
  br i1 %suspend, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %gpu_fw = getelementptr i8, ptr %engine, i32 200
  tail call void @nvkm_memory_unref(ptr noundef %gpu_fw) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_xtensa_intr(ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -8
  %device3 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %addr = getelementptr i8, ptr %engine, i32 -4
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add = add i32 %3, 3332
  %add.ptr4 = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add8 = add i32 %3, 3104
  %add.ptr9 = getelementptr i8, ptr %8, i32 %add8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !56
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add14 = add i32 %3, 3112
  %add.ptr15 = getelementptr i8, ptr %11, i32 %add14
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add20 = add i32 %3, 3340
  %add.ptr21 = getelementptr i8, ptr %14, i32 %add20
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body30_crit_edge, label %do.body

entry.do.body30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp = icmp ugt i32 %17, 1
  br i1 %cmp, label %do.end, label %do.body.do.body30_crit_edge

do.body.do.body30_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %21, ptr noundef nonnull @.str.9, ptr noundef %name) #12
  br label %do.body30

do.body30:                                        ; preds = %do.end, %do.body.do.body30_crit_edge, %entry.do.body30_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr35 = getelementptr i8, ptr %23, i32 %add8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %9) #8, !srcloc !39
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %add.ptr39 = getelementptr i8, ptr %25, i32 %add8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %6)
  %cmp42 = icmp eq i32 %6, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %15)
  %cmp43 = icmp eq i32 %15, 512
  %or.cond = select i1 %cmp42, i1 %cmp43, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool45.not = icmp ne i32 %12, 0
  %or.cond104 = select i1 %or.cond, i1 %tobool45.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool47.not = icmp eq i32 %26, 0
  %or.cond105 = select i1 %or.cond104, i1 %tobool47.not, i1 false
  br i1 %or.cond105, label %do.body49, label %do.body30.if.end78_crit_edge

do.body30.if.end78_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

do.body49:                                        ; preds = %do.body30
  %debug51 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %debug51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp52 = icmp ugt i32 %28, 3
  br i1 %cmp52, label %do.end56, label %do.body49.if.end61_crit_edge

do.body49.if.end61_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

do.end56:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device3, align 4
  %dev58 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev58, align 8
  %name59 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.12, ptr noundef %name59) #12
  br label %if.end61

if.end61:                                         ; preds = %do.end56, %do.body49.if.end61_crit_edge
  %33 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr, align 4
  %add65 = add i32 %34, 3476
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  %add.ptr68 = getelementptr i8, ptr %36, i32 %add65
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %or = or i32 %41, %37
  %42 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri, align 4
  %add.ptr76 = getelementptr i8, ptr %43, i32 %add65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %or) #8, !srcloc !39
  br label %if.end78

if.end78:                                         ; preds = %if.end61, %do.body30.if.end78_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_xtensa_oclass_get(ptr nocapture noundef %oclass, i32 noundef %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 10
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %c.0 = phi i32 [ 0, %entry ], [ %inc, %while.body.while.cond_crit_edge ]
  %oclass1 = getelementptr %struct.nvkm_xtensa_func, ptr %3, i32 0, i32 2, i32 %c.0, i32 2
  %4 = ptrtoint ptr %oclass1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oclass1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %inc = add i32 %c.0, 1
  %cmp = icmp eq i32 %c.0, %index
  br i1 %cmp, label %if.then, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %base = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1
  %arrayidx4 = getelementptr %struct.nvkm_xtensa_func, ptr %3, i32 0, i32 2, i32 %index
  %6 = call ptr @memcpy(ptr %base, ptr %arrayidx4, i32 20)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %index, %if.then ], [ %c.0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_xtensa_cclass_bind(ptr nocapture noundef readonly %object, ptr noundef %parent, i32 noundef %align, ptr noundef %pgpuobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 2
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %device = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %call = tail call i32 @nvkm_gpuobj_new(ptr noundef %3, i32 noundef 65536, i32 noundef %align, i1 noundef zeroext true, ptr noundef %parent, ptr noundef %pgpuobj) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @nvkm_xtensa, !1, !"nvkm_xtensa", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/xtensa.c", i32 168, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/xtensa.c", i32 107, i32 32}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/xtensa.c", i32 112, i32 4}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nvkm_xtensa_init._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @nvkm_xtensa_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/xtensa.c", i32 117, i32 4}
!14 = !{ptr @nvkm_xtensa_init._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @nvkm_xtensa_init._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/xtensa.c", i32 69, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nvkm_xtensa_intr._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @nvkm_xtensa_intr._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/xtensa.c", i32 73, i32 3}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nvkm_xtensa_intr._entry.11, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @nvkm_xtensa_intr._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @nvkm_xtensa_cclass, !27, !"nvkm_xtensa_cclass", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/xtensa.c", i32 52, i32 1}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"auto-init"}
!38 = !{i64 2156262168}
!39 = !{i64 5387564}
!40 = !{i64 2156262589}
!41 = !{i64 2156263030}
!42 = !{i64 2156263449}
!43 = !{i64 2156263852}
!44 = !{i64 2156264265}
!45 = !{i64 2156264673}
!46 = !{i64 2156265086}
!47 = !{i64 5387982}
!48 = !{i64 2156265526}
!49 = !{i64 2156265862}
!50 = !{i64 2156266262}
!51 = !{i64 2156266664}
!52 = !{i64 2156267067}
!53 = !{i64 2156255182}
!54 = !{i64 2156255576}
!55 = !{i64 2156245705}
!56 = !{i64 2156246102}
!57 = !{i64 2156246499}
!58 = !{i64 2156246896}
!59 = !{i64 2156249602}
!60 = !{i64 2156250064}
!61 = !{i64 2156253039}
!62 = !{i64 2156253447}
