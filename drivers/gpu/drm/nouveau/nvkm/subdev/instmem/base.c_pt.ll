; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_instmem = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.mutex, ptr, ptr, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_instobj = type { %struct.nvkm_memory, %struct.list_head, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_instmem_func = type { ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }

@nvkm_instobj_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 103, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: OOM: %08x %08x %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_instobj_new\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/instmem/base.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_instobj_new._entry_ptr = internal global ptr @nvkm_instobj_new._entry, section ".printk_index", align 4
@nvkm_instobj_new._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 108, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: new %08x %08x %d: %010llx %010llx\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nvkm_instobj_new._entry_ptr.8 = internal global ptr @nvkm_instobj_new._entry.5, section ".printk_index", align 4
@nvkm_instmem = internal constant { %struct.nvkm_subdev_func, [36 x i8] } { %struct.nvkm_subdev_func { ptr @nvkm_instmem_dtor, ptr null, ptr @nvkm_instmem_oneinit, ptr null, ptr @nvkm_instmem_init, ptr @nvkm_instmem_fini, ptr null }, [36 x i8] zeroinitializer }, align 32
@nvkm_instmem_ctor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&imem->lock\00", [20 x i8] zeroinitializer }, align 32
@nvkm_instmem_ctor.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&imem->mutex\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 103, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 107, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"nvkm_instmem\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 229, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 242, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/base.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 245, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @nvkm_instobj_new._entry, ptr @nvkm_instobj_new._entry.5, ptr @nvkm_instobj_new._entry_ptr, ptr @nvkm_instobj_new._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @nvkm_instmem, ptr @nvkm_instmem_ctor.__key, ptr @.str.9, ptr @nvkm_instmem_ctor.__key.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_instobj_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_instobj_new._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_instmem to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_instmem_ctor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_instmem_ctor.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_instobj_dtor(ptr noundef %imem, ptr noundef %iobj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.nvkm_instmem, ptr %imem, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %head = getelementptr inbounds %struct.nvkm_instobj, ptr %iobj, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.nvkm_instobj, ptr %iobj, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.nvkm_instobj, ptr %iobj, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_instobj_ctor(ptr noundef %func, ptr noundef %imem, ptr noundef %iobj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nvkm_memory_ctor(ptr noundef %func, ptr noundef %iobj) #5
  %suspend = getelementptr inbounds %struct.nvkm_instobj, ptr %iobj, i32 0, i32 2
  %0 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %suspend, align 4
  %lock = getelementptr inbounds %struct.nvkm_instmem, ptr %imem, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %head = getelementptr inbounds %struct.nvkm_instobj, ptr %iobj, i32 0, i32 1
  %list = getelementptr inbounds %struct.nvkm_instmem, ptr %imem, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.nvkm_instmem, ptr %imem, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %2, ptr noundef %list) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %prev.i, align 4
  %4 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvkm_instobj, ptr %iobj, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %head, ptr %2, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_ctor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_instobj_new(ptr noundef %imem, i32 noundef %size, i32 noundef %align, i1 noundef zeroext %zero, ptr nocapture noundef writeonly %pmemory) local_unnamed_addr #0 align 64 {
entry:
  %memory = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %memory) #5
  %0 = ptrtoint ptr %memory to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %memory, align 4
  %1 = ptrtoint ptr %imem to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %imem, align 4
  %memory_new = getelementptr inbounds %struct.nvkm_instmem_func, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %memory_new to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %memory_new, align 4
  %call = call i32 %4(ptr noundef %imem, i32 noundef %size, i32 noundef %align, i1 noundef zeroext %zero, ptr noundef nonnull %memory) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  %debug10 = getelementptr inbounds %struct.nvkm_instmem, ptr %imem, i32 0, i32 1, i32 5
  %5 = ptrtoint ptr %debug10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug10, align 4
  br i1 %tobool2.not, label %do.body8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %do.body.if.then49_crit_edge, label %do.end

do.body.if.then49_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then49

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_instmem, ptr %imem, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_instmem, ptr %imem, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %size, i32 noundef %align, i32 noundef %call) #8
  br label %if.then49

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp11 = icmp ugt i32 %6, 4
  br i1 %cmp11, label %do.end15, label %do.body8.if.end26_crit_edge

do.body8.if.end26_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

do.end15:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  %device16 = getelementptr inbounds %struct.nvkm_instmem, ptr %imem, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %device16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device16, align 4
  %dev17 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev17, align 8
  %name18 = getelementptr inbounds %struct.nvkm_instmem, ptr %imem, i32 0, i32 1, i32 4
  %conv = zext i1 %zero to i32
  %15 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %memory, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %addr = getelementptr inbounds %struct.nvkm_memory_func, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %addr, align 4
  %call22 = call i64 %20(ptr noundef %16) #5
  %21 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %memory, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %size24 = getelementptr inbounds %struct.nvkm_memory_func, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %size24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %size24, align 4
  %call25 = call i64 %26(ptr noundef %22) #5
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.6, ptr noundef %name18, i32 noundef %size, i32 noundef %align, i32 noundef %conv, i64 noundef %call22, i64 noundef %call25) #8
  br label %if.end26

if.end26:                                         ; preds = %do.end15, %do.body8.if.end26_crit_edge
  %27 = ptrtoint ptr %imem to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %imem, align 4
  %zero30 = getelementptr inbounds %struct.nvkm_instmem_func, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %zero30 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %zero30, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool31.not = icmp eq i8 %30, 0
  %31 = and i1 %tobool31.not, %zero
  br i1 %31, label %if.then34, label %if.end26.if.end50_crit_edge

if.end26.if.end50_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then34:                                        ; preds = %if.end26
  %32 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %memory, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %acquire, align 4
  %call36 = call ptr %37(ptr noundef %33) #5
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %for.cond.preheader, label %if.else, !prof !31

for.cond.preheader:                               ; preds = %if.then34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp4274.not = icmp eq i32 %size, 0
  br i1 %cmp4274.not, label %for.cond.preheader.if.end45_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end45_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %offset.075 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %38 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wr32, align 4
  %conv44 = zext i32 %offset.075 to i64
  call void %43(ptr noundef %39, i64 noundef %conv44, i32 noundef 0) #5
  %add = add i32 %offset.075, 4
  %cmp42 = icmp ult i32 %add, %size
  br i1 %cmp42, label %for.body.for.body_crit_edge, label %for.body.if.end45_crit_edge

for.body.if.end45_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.else:                                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  call void @mmioset(ptr noundef nonnull %call36, i32 noundef 0, i32 noundef %size) #5
  br label %if.end45

if.end45:                                         ; preds = %if.else, %for.body.if.end45_crit_edge, %for.cond.preheader.if.end45_crit_edge
  %44 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %memory, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %release, align 4
  call void %49(ptr noundef %45) #5
  br label %if.end50

if.then49:                                        ; preds = %do.end, %do.body.if.then49_crit_edge
  call void @nvkm_memory_unref(ptr noundef nonnull %memory) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end45, %if.end26.if.end50_crit_edge
  %50 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %memory, align 4
  %52 = ptrtoint ptr %pmemory to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %pmemory, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %memory) #5
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_instmem_rd32(ptr noundef %imem, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %imem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem, align 4
  %rd32 = getelementptr inbounds %struct.nvkm_instmem_func, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rd32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rd32, align 4
  %call = tail call i32 %3(ptr noundef %imem, i32 noundef %addr) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_instmem_wr32(ptr noundef %imem, i32 noundef %addr, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %imem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_instmem_func, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr32, align 4
  tail call void %3(ptr noundef %imem, i32 noundef %addr, i32 noundef %data) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_instmem_boot(ptr noundef %imem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.nvkm_instmem, ptr %imem, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %list = getelementptr inbounds %struct.nvkm_instmem, ptr %imem, i32 0, i32 3
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp.not21 = icmp eq ptr %1, %list
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %boot = getelementptr inbounds %struct.nvkm_instmem, ptr %imem, i32 0, i32 4
  %prev.i2.i = getelementptr inbounds %struct.nvkm_instmem, ptr %imem, i32 0, i32 4, i32 1
  br label %for.body

for.body:                                         ; preds = %list_move_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %2 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn, %list_move_tail.exit.for.body_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %2, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.__list_del_entry.exit.i_crit_edge

for.body.__list_del_entry.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %for.body.__list_del_entry.exit.i_crit_edge
  %10 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %11, ptr noundef %boot) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %prev.i2.i, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %boot, ptr %2, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %2, ptr %11, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %list_move_tail.exit.for.end_crit_edge, label %list_move_tail.exit.for.body_crit_edge

list_move_tail.exit.for.body_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_move_tail.exit.for.end_crit_edge:            ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_move_tail.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_instmem_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %imem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.nvkm_instmem, ptr %imem, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_instmem, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %subdev) #5
  %0 = ptrtoint ptr %imem to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %func, ptr %imem, align 4
  %lock = getelementptr inbounds %struct.nvkm_instmem, ptr %imem, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @nvkm_instmem_ctor.__key, i16 noundef signext 3) #5
  %list = getelementptr inbounds %struct.nvkm_instmem, ptr %imem, i32 0, i32 3
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.nvkm_instmem, ptr %imem, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 4
  %boot = getelementptr inbounds %struct.nvkm_instmem, ptr %imem, i32 0, i32 4
  %3 = ptrtoint ptr %boot to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %boot, ptr %boot, align 4
  %prev.i9 = getelementptr inbounds %struct.nvkm_instmem, ptr %imem, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %boot, ptr %prev.i9, align 4
  %mutex = getelementptr inbounds %struct.nvkm_instmem, ptr %imem, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @nvkm_instmem_ctor.__key.10) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_instmem_dtor(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call ptr %3(ptr noundef %add.ptr) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data.0 = phi ptr [ %call, %if.then ], [ %add.ptr, %entry.if.end_crit_edge ]
  %mutex = getelementptr i8, ptr %subdev, i32 116
  tail call void @mutex_destroy(ptr noundef %mutex) #5
  ret ptr %data.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_instmem_oneinit(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %oneinit = getelementptr inbounds %struct.nvkm_instmem_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %oneinit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oneinit, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %3(ptr noundef %add.ptr) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_instmem_init(ptr noundef readonly %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %boot = getelementptr i8, ptr %subdev, i32 104
  %0 = ptrtoint ptr %boot to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn68 = load ptr, ptr %boot, align 4
  %cmp.not70 = icmp eq ptr %.pn68, %boot
  br i1 %cmp.not70, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn71 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn68, %entry.for.body_crit_edge ]
  %iobj.072 = getelementptr i8, ptr %.pn71, i32 -16
  %suspend = getelementptr i8, ptr %.pn71, i32 8
  %1 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %suspend, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  %3 = ptrtoint ptr %iobj.072 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iobj.072, align 4
  %size2.i = getelementptr inbounds %struct.nvkm_memory_func, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %size2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %size2.i, align 4
  %call.i = tail call i64 %6(ptr noundef %iobj.072) #5
  %7 = ptrtoint ptr %iobj.072 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobj.072, align 4
  %acquire.i = getelementptr inbounds %struct.nvkm_memory_func, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %acquire.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %acquire.i, align 4
  %call4.i = tail call ptr %10(ptr noundef %iobj.072) #5
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.else.i

for.cond.preheader.i:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %cmp27.not.i = icmp eq i64 %call.i, 0
  br i1 %cmp27.not.i, label %for.cond.preheader.i.nvkm_instobj_load.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.nvkm_instobj_load.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_instobj_load.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %ptrs.i = getelementptr i8, ptr %.pn71, i32 -12
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv29.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %conv.i, %for.body.i.for.body.i_crit_edge ]
  %indvars.i = trunc i64 %conv29.i to i32
  %11 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptrs.i, align 4
  %wr32.i = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %wr32.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wr32.i, align 4
  %15 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %suspend, align 4
  %div.i = sdiv i32 %indvars.i, 4
  %arrayidx.i = getelementptr i32, ptr %16, i32 %div.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  tail call void %14(ptr noundef %iobj.072, i64 noundef %conv29.i, i32 noundef %18) #5
  %add.i = add i32 %indvars.i, 4
  %conv.i = sext i32 %add.i to i64
  %cmp.i = icmp ugt i64 %call.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.nvkm_instobj_load.exit_crit_edge

for.body.i.nvkm_instobj_load.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_instobj_load.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %suspend, align 4
  %conv8.i = trunc i64 %call.i to i32
  tail call void @mmiocpy(ptr noundef nonnull %call4.i, ptr noundef %20, i32 noundef %conv8.i) #5
  br label %nvkm_instobj_load.exit

nvkm_instobj_load.exit:                           ; preds = %if.else.i, %for.body.i.nvkm_instobj_load.exit_crit_edge, %for.cond.preheader.i.nvkm_instobj_load.exit_crit_edge
  %21 = ptrtoint ptr %iobj.072 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iobj.072, align 4
  %release.i = getelementptr inbounds %struct.nvkm_memory_func, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %release.i, align 4
  tail call void %24(ptr noundef %iobj.072) #5
  %25 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %suspend, align 4
  tail call void @kvfree(ptr noundef %26) #5
  %27 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %suspend, align 4
  br label %for.inc

for.inc:                                          ; preds = %nvkm_instobj_load.exit, %for.body.for.inc_crit_edge
  %28 = ptrtoint ptr %.pn71 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn71, align 4
  %cmp.not = icmp eq ptr %.pn, %boot
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device, align 4
  tail call void @nvkm_bar_bar2_init(ptr noundef %30) #5
  %list = getelementptr i8, ptr %subdev, i32 96
  %31 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn4274 = load ptr, ptr %list, align 4
  %cmp17.not76 = icmp eq ptr %.pn4274, %list
  br i1 %cmp17.not76, label %for.end.for.end30_crit_edge, label %for.end.for.body19_crit_edge

for.end.for.body19_crit_edge:                     ; preds = %for.end
  br label %for.body19

for.end.for.end30_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end30

for.body19:                                       ; preds = %for.inc24.for.body19_crit_edge, %for.end.for.body19_crit_edge
  %.pn4277 = phi ptr [ %.pn42, %for.inc24.for.body19_crit_edge ], [ %.pn4274, %for.end.for.body19_crit_edge ]
  %iobj.178 = getelementptr i8, ptr %.pn4277, i32 -16
  %suspend20 = getelementptr i8, ptr %.pn4277, i32 8
  %32 = ptrtoint ptr %suspend20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %suspend20, align 4
  %tobool21.not = icmp eq ptr %33, null
  br i1 %tobool21.not, label %for.body19.for.inc24_crit_edge, label %if.then22

for.body19.for.inc24_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24

if.then22:                                        ; preds = %for.body19
  %34 = ptrtoint ptr %iobj.178 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iobj.178, align 4
  %size2.i43 = getelementptr inbounds %struct.nvkm_memory_func, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %size2.i43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %size2.i43, align 4
  %call.i44 = tail call i64 %37(ptr noundef %iobj.178) #5
  %38 = ptrtoint ptr %iobj.178 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iobj.178, align 4
  %acquire.i45 = getelementptr inbounds %struct.nvkm_memory_func, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %acquire.i45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %acquire.i45, align 4
  %call4.i46 = tail call ptr %41(ptr noundef %iobj.178) #5
  %tobool.not.i47 = icmp eq ptr %call4.i46, null
  br i1 %tobool.not.i47, label %for.cond.preheader.i49, label %if.else.i64

for.cond.preheader.i49:                           ; preds = %if.then22
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i44)
  %cmp27.not.i48 = icmp eq i64 %call.i44, 0
  br i1 %cmp27.not.i48, label %for.cond.preheader.i49.nvkm_instobj_load.exit67_crit_edge, label %for.body.lr.ph.i52

for.cond.preheader.i49.nvkm_instobj_load.exit67_crit_edge: ; preds = %for.cond.preheader.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_instobj_load.exit67

for.body.lr.ph.i52:                               ; preds = %for.cond.preheader.i49
  %ptrs.i50 = getelementptr i8, ptr %.pn4277, i32 -12
  br label %for.body.i61

for.body.i61:                                     ; preds = %for.body.i61.for.body.i61_crit_edge, %for.body.lr.ph.i52
  %conv29.i53 = phi i64 [ 0, %for.body.lr.ph.i52 ], [ %conv.i59, %for.body.i61.for.body.i61_crit_edge ]
  %indvars.i54 = trunc i64 %conv29.i53 to i32
  %42 = ptrtoint ptr %ptrs.i50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ptrs.i50, align 4
  %wr32.i55 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %wr32.i55 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wr32.i55, align 4
  %46 = ptrtoint ptr %suspend20 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %suspend20, align 4
  %div.i56 = sdiv i32 %indvars.i54, 4
  %arrayidx.i57 = getelementptr i32, ptr %47, i32 %div.i56
  %48 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i57, align 4
  tail call void %45(ptr noundef %iobj.178, i64 noundef %conv29.i53, i32 noundef %49) #5
  %add.i58 = add i32 %indvars.i54, 4
  %conv.i59 = sext i32 %add.i58 to i64
  %cmp.i60 = icmp ugt i64 %call.i44, %conv.i59
  br i1 %cmp.i60, label %for.body.i61.for.body.i61_crit_edge, label %for.body.i61.nvkm_instobj_load.exit67_crit_edge

for.body.i61.nvkm_instobj_load.exit67_crit_edge:  ; preds = %for.body.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_instobj_load.exit67

for.body.i61.for.body.i61_crit_edge:              ; preds = %for.body.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i61

if.else.i64:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %suspend20 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %suspend20, align 4
  %conv8.i63 = trunc i64 %call.i44 to i32
  tail call void @mmiocpy(ptr noundef nonnull %call4.i46, ptr noundef %51, i32 noundef %conv8.i63) #5
  br label %nvkm_instobj_load.exit67

nvkm_instobj_load.exit67:                         ; preds = %if.else.i64, %for.body.i61.nvkm_instobj_load.exit67_crit_edge, %for.cond.preheader.i49.nvkm_instobj_load.exit67_crit_edge
  %52 = ptrtoint ptr %iobj.178 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iobj.178, align 4
  %release.i65 = getelementptr inbounds %struct.nvkm_memory_func, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %release.i65 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %release.i65, align 4
  tail call void %55(ptr noundef %iobj.178) #5
  %56 = ptrtoint ptr %suspend20 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %suspend20, align 4
  tail call void @kvfree(ptr noundef %57) #5
  %58 = ptrtoint ptr %suspend20 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %suspend20, align 4
  br label %for.inc24

for.inc24:                                        ; preds = %nvkm_instobj_load.exit67, %for.body19.for.inc24_crit_edge
  %59 = ptrtoint ptr %.pn4277 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn42 = load ptr, ptr %.pn4277, align 4
  %cmp17.not = icmp eq ptr %.pn42, %list
  br i1 %cmp17.not, label %for.inc24.for.end30_crit_edge, label %for.inc24.for.body19_crit_edge

for.inc24.for.body19_crit_edge:                   ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body19

for.inc24.for.end30_crit_edge:                    ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end30

for.end30:                                        ; preds = %for.inc24.for.end30_crit_edge, %for.end.for.end30_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_instmem_fini(ptr noundef %subdev, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  br i1 %suspend, label %if.then, label %entry.if.end37_crit_edge

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then:                                          ; preds = %entry
  %list = getelementptr i8, ptr %subdev, i32 96
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn97 = load ptr, ptr %list, align 4
  %cmp.not98 = icmp eq ptr %.pn97, %list
  br i1 %cmp.not98, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %nvkm_instobj_save.exit.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn99 = phi ptr [ %.pn, %nvkm_instobj_save.exit.for.body_crit_edge ], [ %.pn97, %if.then.for.body_crit_edge ]
  %iobj.0 = getelementptr i8, ptr %.pn99, i32 -16
  %1 = ptrtoint ptr %iobj.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iobj.0, align 4
  %size2.i = getelementptr inbounds %struct.nvkm_memory_func, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %size2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %size2.i, align 4
  %call.i = tail call i64 %4(ptr noundef %iobj.0) #5
  %conv.i = trunc i64 %call.i to i32
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %conv.i, i32 noundef 3264, i32 noundef -1) #9
  %suspend.i = getelementptr i8, ptr %.pn99, i32 8
  %5 = ptrtoint ptr %suspend.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i, ptr %suspend.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.body.cleanup43_crit_edge, label %if.end.i

for.body.cleanup43_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup43

if.end.i:                                         ; preds = %for.body
  %6 = ptrtoint ptr %iobj.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobj.0, align 4
  %acquire.i = getelementptr inbounds %struct.nvkm_memory_func, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %acquire.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %acquire.i, align 4
  %call6.i = tail call ptr %9(ptr noundef %iobj.0) #5
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %for.cond.preheader.i, label %if.else.i

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %cmp37.not.i = icmp eq i64 %call.i, 0
  br i1 %cmp37.not.i, label %for.cond.preheader.i.nvkm_instobj_save.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.nvkm_instobj_save.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_instobj_save.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %ptrs.i = getelementptr i8, ptr %.pn99, i32 -12
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv939.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %conv9.i, %for.body.i.for.body.i_crit_edge ]
  %indvars.i = trunc i64 %conv939.i to i32
  %10 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptrs.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call12.i = tail call i32 %13(ptr noundef %iobj.0, i64 noundef %conv939.i) #5
  %14 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %suspend.i, align 4
  %div.i = sdiv i32 %indvars.i, 4
  %arrayidx.i = getelementptr i32, ptr %15, i32 %div.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call12.i, ptr %arrayidx.i, align 4
  %add.i = add i32 %indvars.i, 4
  %conv9.i = sext i32 %add.i to i64
  %cmp.i = icmp ugt i64 %call.i, %conv9.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.nvkm_instobj_save.exit_crit_edge

for.body.i.nvkm_instobj_save.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_instobj_save.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %suspend.i, align 4
  tail call void @mmiocpy(ptr noundef %18, ptr noundef nonnull %call6.i, i32 noundef %conv.i) #5
  br label %nvkm_instobj_save.exit

nvkm_instobj_save.exit:                           ; preds = %if.else.i, %for.body.i.nvkm_instobj_save.exit_crit_edge, %for.cond.preheader.i.nvkm_instobj_save.exit_crit_edge
  %19 = ptrtoint ptr %iobj.0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobj.0, align 4
  %release.i = getelementptr inbounds %struct.nvkm_memory_func, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %release.i, align 4
  tail call void %22(ptr noundef %iobj.0) #5
  %23 = ptrtoint ptr %.pn99 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load ptr, ptr %.pn99, align 4
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %nvkm_instobj_save.exit.for.end_crit_edge, label %nvkm_instobj_save.exit.for.body_crit_edge

nvkm_instobj_save.exit.for.body_crit_edge:        ; preds = %nvkm_instobj_save.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

nvkm_instobj_save.exit.for.end_crit_edge:         ; preds = %nvkm_instobj_save.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %nvkm_instobj_save.exit.for.end_crit_edge, %if.then.for.end_crit_edge
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device, align 4
  tail call void @nvkm_bar_bar2_fini(ptr noundef %25) #5
  %boot = getelementptr i8, ptr %subdev, i32 104
  %26 = ptrtoint ptr %boot to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn61100 = load ptr, ptr %boot, align 4
  %cmp19.not101 = icmp eq ptr %.pn61100, %boot
  br i1 %cmp19.not101, label %for.end.if.end37_crit_edge, label %for.end.for.body21_crit_edge

for.end.for.body21_crit_edge:                     ; preds = %for.end
  br label %for.body21

for.end.if.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

for.body21:                                       ; preds = %nvkm_instobj_save.exit89.for.body21_crit_edge, %for.end.for.body21_crit_edge
  %.pn61102 = phi ptr [ %.pn61, %nvkm_instobj_save.exit89.for.body21_crit_edge ], [ %.pn61100, %for.end.for.body21_crit_edge ]
  %iobj.1 = getelementptr i8, ptr %.pn61102, i32 -16
  %27 = ptrtoint ptr %iobj.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iobj.1, align 4
  %size2.i62 = getelementptr inbounds %struct.nvkm_memory_func, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %size2.i62 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %size2.i62, align 4
  %call.i63 = tail call i64 %30(ptr noundef %iobj.1) #5
  %conv.i64 = trunc i64 %call.i63 to i32
  %call.i.i65 = tail call noalias ptr @kvmalloc_node(i32 noundef %conv.i64, i32 noundef 3264, i32 noundef -1) #9
  %suspend.i66 = getelementptr i8, ptr %.pn61102, i32 8
  %31 = ptrtoint ptr %suspend.i66 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i65, ptr %suspend.i66, align 4
  %tobool.not.i67 = icmp eq ptr %call.i.i65, null
  br i1 %tobool.not.i67, label %for.body21.cleanup43_crit_edge, label %if.end.i71

for.body21.cleanup43_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup43

if.end.i71:                                       ; preds = %for.body21
  %32 = ptrtoint ptr %iobj.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iobj.1, align 4
  %acquire.i68 = getelementptr inbounds %struct.nvkm_memory_func, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %acquire.i68 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %acquire.i68, align 4
  %call6.i69 = tail call ptr %35(ptr noundef %iobj.1) #5
  %tobool7.not.i70 = icmp eq ptr %call6.i69, null
  br i1 %tobool7.not.i70, label %for.cond.preheader.i73, label %if.else.i85

for.cond.preheader.i73:                           ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i63)
  %cmp37.not.i72 = icmp eq i64 %call.i63, 0
  br i1 %cmp37.not.i72, label %for.cond.preheader.i73.nvkm_instobj_save.exit89_crit_edge, label %for.body.lr.ph.i75

for.cond.preheader.i73.nvkm_instobj_save.exit89_crit_edge: ; preds = %for.cond.preheader.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_instobj_save.exit89

for.body.lr.ph.i75:                               ; preds = %for.cond.preheader.i73
  %ptrs.i74 = getelementptr i8, ptr %.pn61102, i32 -12
  br label %for.body.i84

for.body.i84:                                     ; preds = %for.body.i84.for.body.i84_crit_edge, %for.body.lr.ph.i75
  %conv939.i76 = phi i64 [ 0, %for.body.lr.ph.i75 ], [ %conv9.i82, %for.body.i84.for.body.i84_crit_edge ]
  %indvars.i77 = trunc i64 %conv939.i76 to i32
  %36 = ptrtoint ptr %ptrs.i74 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ptrs.i74, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %call12.i78 = tail call i32 %39(ptr noundef %iobj.1, i64 noundef %conv939.i76) #5
  %40 = ptrtoint ptr %suspend.i66 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %suspend.i66, align 4
  %div.i79 = sdiv i32 %indvars.i77, 4
  %arrayidx.i80 = getelementptr i32, ptr %41, i32 %div.i79
  %42 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call12.i78, ptr %arrayidx.i80, align 4
  %add.i81 = add i32 %indvars.i77, 4
  %conv9.i82 = sext i32 %add.i81 to i64
  %cmp.i83 = icmp ugt i64 %call.i63, %conv9.i82
  br i1 %cmp.i83, label %for.body.i84.for.body.i84_crit_edge, label %for.body.i84.nvkm_instobj_save.exit89_crit_edge

for.body.i84.nvkm_instobj_save.exit89_crit_edge:  ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_instobj_save.exit89

for.body.i84.for.body.i84_crit_edge:              ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i84

if.else.i85:                                      ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %suspend.i66 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %suspend.i66, align 4
  tail call void @mmiocpy(ptr noundef %44, ptr noundef nonnull %call6.i69, i32 noundef %conv.i64) #5
  br label %nvkm_instobj_save.exit89

nvkm_instobj_save.exit89:                         ; preds = %if.else.i85, %for.body.i84.nvkm_instobj_save.exit89_crit_edge, %for.cond.preheader.i73.nvkm_instobj_save.exit89_crit_edge
  %45 = ptrtoint ptr %iobj.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iobj.1, align 4
  %release.i86 = getelementptr inbounds %struct.nvkm_memory_func, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %release.i86 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %release.i86, align 4
  tail call void %48(ptr noundef %iobj.1) #5
  %49 = ptrtoint ptr %.pn61102 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn61 = load ptr, ptr %.pn61102, align 4
  %cmp19.not = icmp eq ptr %.pn61, %boot
  br i1 %cmp19.not, label %nvkm_instobj_save.exit89.if.end37_crit_edge, label %nvkm_instobj_save.exit89.for.body21_crit_edge

nvkm_instobj_save.exit89.for.body21_crit_edge:    ; preds = %nvkm_instobj_save.exit89
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body21

nvkm_instobj_save.exit89.if.end37_crit_edge:      ; preds = %nvkm_instobj_save.exit89
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.end37:                                         ; preds = %nvkm_instobj_save.exit89.if.end37_crit_edge, %for.end.if.end37_crit_edge, %entry.if.end37_crit_edge
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr, align 4
  %fini = getelementptr inbounds %struct.nvkm_instmem_func, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fini, align 4
  %tobool38.not = icmp eq ptr %53, null
  br i1 %tobool38.not, label %if.end37.cleanup43_crit_edge, label %if.then39

if.end37.cleanup43_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup43

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %53(ptr noundef %add.ptr) #5
  br label %cleanup43

cleanup43:                                        ; preds = %if.then39, %if.end37.cleanup43_crit_edge, %for.body21.cleanup43_crit_edge, %for.body.cleanup43_crit_edge
  %retval.4 = phi i32 [ 0, %if.then39 ], [ 0, %if.end37.cleanup43_crit_edge ], [ -12, %for.body21.cleanup43_crit_edge ], [ -12, %for.body.cleanup43_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_bar2_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_bar2_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !18, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/base.c", i32 103, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_instobj_new._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_instobj_new._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/base.c", i32 107, i32 2}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nvkm_instobj_new._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @nvkm_instobj_new._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @nvkm_instmem_ctor.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/base.c", i32 242, i32 2}
!15 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nvkm_instmem_ctor.__key.10, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/base.c", i32 245, i32 2}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nvkm_instmem, !20, !"nvkm_instmem", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/base.c", i32 229, i32 1}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i8 0, i8 2}
!31 = !{!"branch_weights", i32 1, i32 2000}
