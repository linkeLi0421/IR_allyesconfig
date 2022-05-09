; ModuleID = '/llk/IR_all_yes/kernel/dma/coherent.c_pt.bc'
source_filename = "../kernel/dma/coherent.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reserved_mem_ops = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.dma_coherent_mem = type { ptr, i32, i32, i32, ptr, %struct.spinlock, i8 }
%struct.bus_dma_region = type { i32, i32, i64, i64 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.reserved_mem = type { ptr, i32, i32, ptr, i32, i32, ptr }

@__of_table_dma = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"shared-dma-pool\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rmem_dma_setup }, section "__reservedmem_of_table", align 4
@dma_init_coherent_memory.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&dma_mem->spinlock\00", [45 x i8] zeroinitializer }, align 32
@dma_init_coherent_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013Reserved memory: failed to init DMA memory pool at %pa, size %zd MiB\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dma_init_coherent_memory\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kernel/dma/coherent.c\00", [42 x i8] zeroinitializer }, align 32
@dma_init_coherent_memory._entry_ptr = internal global ptr @dma_init_coherent_memory._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reusable\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"no-map\00", [25 x i8] zeroinitializer }, align 32
@rmem_dma_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013Reserved memory: regions without no-map are not yet supported\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rmem_dma_setup\00", [17 x i8] zeroinitializer }, align 32
@rmem_dma_setup._entry_ptr = internal global ptr @rmem_dma_setup._entry, section ".printk_index", align 4
@rmem_dma_ops = internal constant { %struct.reserved_mem_ops, [24 x i8] } { %struct.reserved_mem_ops { ptr @rmem_dma_device_init, ptr @rmem_dma_device_release }, [24 x i8] zeroinitializer }, align 32
@rmem_dma_setup._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016Reserved memory: created DMA memory pool at %pa, size %ld MiB\0A\00", [63 x i8] zeroinitializer }, align 32
@rmem_dma_setup._entry_ptr.10 = internal global ptr @rmem_dma_setup._entry.8, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 64, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 72, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 359, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 363, i32 33 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 364, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [13 x i8] c"rmem_dma_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 350, i32 38 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [25 x i8] c"../kernel/dma/coherent.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 378, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__of_table_dma, ptr @dma_init_coherent_memory._entry, ptr @dma_init_coherent_memory._entry_ptr, ptr @rmem_dma_setup._entry, ptr @rmem_dma_setup._entry.8, ptr @rmem_dma_setup._entry_ptr, ptr @rmem_dma_setup._entry_ptr.10, ptr @dma_init_coherent_memory.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @rmem_dma_ops, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_init_coherent_memory.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_init_coherent_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmem_dma_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmem_dma_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmem_dma_setup._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_declare_coherent_memory(ptr noundef %dev, i32 noundef %phys_addr, i32 noundef %device_addr, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @dma_init_coherent_memory(i32 noundef %phys_addr, i32 noundef %device_addr, i32 noundef %size, i1 noundef zeroext false)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %if.end.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.end.i:                                         ; preds = %if.end
  %dma_mem.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 24
  %1 = ptrtoint ptr %dma_mem.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_mem.i, align 8
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %dma_assign_coherent_memory.exit, label %if.end.i.if.then4_crit_edge

if.end.i.if.then4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

dma_assign_coherent_memory.exit:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %dma_mem.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %dma_mem.i, align 8
  br label %cleanup

if.then4:                                         ; preds = %if.end.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %retval.0.i.ph = phi i32 [ -16, %if.end.i.if.then4_crit_edge ], [ -19, %if.end.if.then4_crit_edge ]
  %tobool.not.i11 = icmp eq ptr %call, null
  br i1 %tobool.not.i11, label %if.then4.cleanup_crit_edge, label %if.end.i12

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i12:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  tail call void @memunmap(ptr noundef %5) #7
  %bitmap.i = getelementptr inbounds %struct.dma_coherent_mem, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bitmap.i, align 4
  tail call void @bitmap_free(ptr noundef %7) #7
  tail call void @kfree(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i12, %if.then4.cleanup_crit_edge, %dma_assign_coherent_memory.exit, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %dma_assign_coherent_memory.exit ], [ %retval.0.i.ph, %if.then4.cleanup_crit_edge ], [ %retval.0.i.ph, %if.end.i12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dma_init_coherent_memory(i32 noundef %phys_addr, i32 noundef %device_addr, i32 noundef %size, i1 noundef zeroext %use_dma_pfn_offset) unnamed_addr #0 align 64 {
entry:
  %phys_addr.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phys_addr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %phys_addr, ptr %phys_addr.addr, align 4
  %frombool = zext i1 %use_dma_pfn_offset to i8
  %shr = lshr i32 %size, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @memremap(i32 noundef %phys_addr, i32 noundef %size, i32 noundef 4) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 68) #10
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.out_unmap_membase_crit_edge, label %if.end9

if.end5.out_unmap_membase_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unmap_membase

if.end9:                                          ; preds = %if.end5
  %call10 = tail call ptr @bitmap_zalloc(i32 noundef %shr, i32 noundef 3264) #7
  %bitmap = getelementptr inbounds %struct.dma_coherent_mem, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call10, ptr %bitmap, align 8
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %out_free_dma_mem, label %if.end14

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %call7.i.i, align 8
  %device_base = getelementptr inbounds %struct.dma_coherent_mem, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %device_base to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %device_addr, ptr %device_base, align 4
  %5 = ptrtoint ptr %phys_addr.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phys_addr.addr, align 4
  %shr15 = lshr i32 %6, 12
  %pfn_base = getelementptr inbounds %struct.dma_coherent_mem, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %pfn_base to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr15, ptr %pfn_base, align 8
  %size16 = getelementptr inbounds %struct.dma_coherent_mem, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %size16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr, ptr %size16, align 4
  %use_dev_dma_pfn_offset = getelementptr inbounds %struct.dma_coherent_mem, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %use_dev_dma_pfn_offset to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %use_dev_dma_pfn_offset, align 8
  %spinlock = getelementptr inbounds %struct.dma_coherent_mem, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str, ptr noundef nonnull @dma_init_coherent_memory.__key, i16 noundef signext 3) #7
  br label %cleanup

out_free_dma_mem:                                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %out_unmap_membase

out_unmap_membase:                                ; preds = %out_free_dma_mem, %if.end5.out_unmap_membase_crit_edge
  tail call void @memunmap(ptr noundef nonnull %call1) #7
  %div43 = lshr i32 %size, 20
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %phys_addr.addr, i32 noundef %div43) #11
  br label %cleanup

cleanup:                                          ; preds = %out_unmap_membase, %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end14 ], [ inttoptr (i32 -12 to ptr), %out_unmap_membase ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_alloc_from_dev_coherent(ptr noundef readonly %dev, i32 noundef %size, ptr nocapture noundef writeonly %dma_handle, ptr nocapture noundef writeonly %ret) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %dma_mem.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %dma_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_mem.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.end

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i
  %spinlock.i = getelementptr inbounds %struct.dma_coherent_mem, ptr %1, i32 0, i32 5
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  %size6.i = getelementptr inbounds %struct.dma_coherent_mem, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %size6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size6.i, align 4
  %shl.i = shl i32 %3, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %size)
  %cmp7.i = icmp ult i32 %shl.i, %size
  br i1 %cmp7.i, label %if.end.err.i_crit_edge, label %get_order.exit.i, !prof !35

if.end.err.i_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

get_order.exit.i:                                 ; preds = %if.end
  %dec.i.i = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %shr.i.i = lshr i32 %dec.i.i, 12
  %4 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #7, !range !36
  %sub.i.i.i = sub nuw nsw i32 32, %4
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %bitmap.i = getelementptr inbounds %struct.dma_coherent_mem, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bitmap.i, align 4
  %call11.i = tail call i32 @bitmap_find_free_region(ptr noundef %6, i32 noundef %3, i32 noundef %cond.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %get_order.exit.i.err.i_crit_edge, label %if.end21.i, !prof !35

get_order.exit.i.err.i_crit_edge:                 ; preds = %get_order.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.end21.i:                                       ; preds = %get_order.exit.i
  %use_dev_dma_pfn_offset.i.i = getelementptr inbounds %struct.dma_coherent_mem, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %use_dev_dma_pfn_offset.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %use_dev_dma_pfn_offset.i.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i43.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i43.i, label %if.end.i45.i, label %land.lhs.true.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end21.i
  %pfn_base.i.i = getelementptr inbounds %struct.dma_coherent_mem, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %pfn_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pfn_base.i.i, align 4
  %shl.i.i = shl i32 %10, 12
  %shr.i.i.i = and i32 %10, 1048575
  %dma_range_map.i.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %11 = ptrtoint ptr %dma_range_map.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_range_map.i.i.i.i, align 8
  %tobool1.not.i.i.i.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i.i.i.i, label %land.lhs.true.i.i.i.i.phys_to_dma.exit.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true.i.i.i.i.phys_to_dma.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phys_to_dma.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i
  %size17.i.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %size17.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %size17.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool.not18.i.i.i.i.i = icmp eq i64 %14, 0
  br i1 %tobool.not18.i.i.i.i.i, label %if.then.i.i.i.i.phys_to_dma.exit.i.i_crit_edge, label %if.then.i.i.i.i.for.body.i.i.i.i.i_crit_edge

if.then.i.i.i.i.for.body.i.i.i.i.i_crit_edge:     ; preds = %if.then.i.i.i.i
  br label %for.body.i.i.i.i.i

if.then.i.i.i.i.phys_to_dma.exit.i.i_crit_edge:   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phys_to_dma.exit.i.i

for.body.i.i.i.i.i:                               ; preds = %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %if.then.i.i.i.i.for.body.i.i.i.i.i_crit_edge
  %15 = phi i64 [ %22, %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ %14, %if.then.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %m.019.i.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i.i, %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ %12, %if.then.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %16 = ptrtoint ptr %m.019.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %m.019.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %17)
  %cmp.not.i.i.i.i.i = icmp ult i32 %shl.i.i, %17
  br i1 %cmp.not.i.i.i.i.i, label %for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge:   ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %for.body.i.i.i.i.i
  %sub.i.i.i.i.i = sub i32 %shl.i.i, %17
  %conv.i.i.i.i.i = zext i32 %sub.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %conv.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp ugt i64 %15, %conv.i.i.i.i.i
  br i1 %cmp3.i.i.i.i.i, label %if.then.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %offset.i.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.019.i.i.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %offset.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %offset.i.i.i.i.i, align 8
  %20 = trunc i64 %19 to i32
  %conv7.i.i.i.i.i = sub i32 %shl.i.i, %20
  %phi.bo.i.i.i.i = lshr i32 %conv7.i.i.i.i.i, 12
  br label %phys_to_dma.exit.i.i

for.inc.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge, %for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge
  %incdec.ptr.i.i.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i.i.i.i, i32 1
  %size.i.i.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i.i.i.i, i32 1, i32 2
  %21 = ptrtoint ptr %size.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %size.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq i64 %22, 0
  br i1 %tobool.not.i.i.i.i.i, label %for.inc.i.i.i.i.i.phys_to_dma.exit.i.i_crit_edge, label %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:   ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.i.i

for.inc.i.i.i.i.i.phys_to_dma.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phys_to_dma.exit.i.i

phys_to_dma.exit.i.i:                             ; preds = %for.inc.i.i.i.i.i.phys_to_dma.exit.i.i_crit_edge, %if.then.i.i.i.i.i, %if.then.i.i.i.i.phys_to_dma.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.phys_to_dma.exit.i.i_crit_edge
  %pfn.addr.0.i.i.i.i = phi i32 [ %shr.i.i.i, %land.lhs.true.i.i.i.i.phys_to_dma.exit.i.i_crit_edge ], [ %phi.bo.i.i.i.i, %if.then.i.i.i.i.i ], [ 1048575, %if.then.i.i.i.i.phys_to_dma.exit.i.i_crit_edge ], [ 1048575, %for.inc.i.i.i.i.i.phys_to_dma.exit.i.i_crit_edge ]
  %shl2.i.i.i.i = shl nuw i32 %pfn.addr.0.i.i.i.i, 12
  br label %dma_get_device_base.exit.i

if.end.i45.i:                                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %device_base.i.i = getelementptr inbounds %struct.dma_coherent_mem, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %device_base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %device_base.i.i, align 4
  br label %dma_get_device_base.exit.i

dma_get_device_base.exit.i:                       ; preds = %if.end.i45.i, %phys_to_dma.exit.i.i
  %retval.0.i46.i = phi i32 [ %shl2.i.i.i.i, %phys_to_dma.exit.i.i ], [ %24, %if.end.i45.i ]
  %shl23.i = shl i32 %call11.i, 12
  %add.i = add i32 %retval.0.i46.i, %shl23.i
  %25 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %dma_handle, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 %shl23.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call3.i) #7
  %28 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %size)
  br label %__dma_alloc_from_coherent.exit

err.i:                                            ; preds = %get_order.exit.i.err.i_crit_edge, %if.end.err.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call3.i) #7
  br label %__dma_alloc_from_coherent.exit

__dma_alloc_from_coherent.exit:                   ; preds = %err.i, %dma_get_device_base.exit.i
  %retval.0.i5 = phi ptr [ null, %err.i ], [ %add.ptr.i, %dma_get_device_base.exit.i ]
  %29 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %retval.0.i5, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %__dma_alloc_from_coherent.exit, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %__dma_alloc_from_coherent.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_release_from_dev_coherent(ptr noundef readonly %dev, i32 noundef %order, ptr noundef %vaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.__dma_release_from_coherent.exit_crit_edge, label %land.lhs.true.i

entry.__dma_release_from_coherent.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__dma_release_from_coherent.exit

land.lhs.true.i:                                  ; preds = %entry
  %dma_mem.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %dma_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_mem.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.__dma_release_from_coherent.exit_crit_edge, label %land.lhs.true.i3

land.lhs.true.i.__dma_release_from_coherent.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__dma_release_from_coherent.exit

land.lhs.true.i3:                                 ; preds = %land.lhs.true.i
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp.not.i = icmp ugt ptr %3, %vaddr
  br i1 %cmp.not.i, label %land.lhs.true.i3.__dma_release_from_coherent.exit_crit_edge, label %land.lhs.true1.i

land.lhs.true.i3.__dma_release_from_coherent.exit_crit_edge: ; preds = %land.lhs.true.i3
  call void @__sanitizer_cov_trace_pc() #9
  br label %__dma_release_from_coherent.exit

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i3
  %size.i = getelementptr inbounds %struct.dma_coherent_mem, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  %shl.i = shl i32 %5, 12
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i
  %cmp3.i = icmp ugt ptr %add.ptr.i, %vaddr
  br i1 %cmp3.i, label %if.then.i, label %land.lhs.true1.i.__dma_release_from_coherent.exit_crit_edge

land.lhs.true1.i.__dma_release_from_coherent.exit_crit_edge: ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__dma_release_from_coherent.exit

if.then.i:                                        ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast.i = ptrtoint ptr %vaddr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %shr.i = ashr i32 %sub.ptr.sub.i, 12
  %spinlock.i = getelementptr inbounds %struct.dma_coherent_mem, ptr %1, i32 0, i32 5
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  %bitmap.i = getelementptr inbounds %struct.dma_coherent_mem, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bitmap.i, align 4
  tail call void @bitmap_release_region(ptr noundef %7, i32 noundef %shr.i, i32 noundef %order) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call7.i) #7
  br label %__dma_release_from_coherent.exit

__dma_release_from_coherent.exit:                 ; preds = %if.then.i, %land.lhs.true1.i.__dma_release_from_coherent.exit_crit_edge, %land.lhs.true.i3.__dma_release_from_coherent.exit_crit_edge, %land.lhs.true.i.__dma_release_from_coherent.exit_crit_edge, %entry.__dma_release_from_coherent.exit_crit_edge
  %retval.0.i4 = phi i32 [ 1, %if.then.i ], [ 0, %land.lhs.true1.i.__dma_release_from_coherent.exit_crit_edge ], [ 0, %land.lhs.true.i3.__dma_release_from_coherent.exit_crit_edge ], [ 0, %entry.__dma_release_from_coherent.exit_crit_edge ], [ 0, %land.lhs.true.i.__dma_release_from_coherent.exit_crit_edge ]
  ret i32 %retval.0.i4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_mmap_from_dev_coherent(ptr noundef readonly %dev, ptr noundef %vma, ptr noundef %vaddr, i32 noundef %size, ptr nocapture noundef writeonly %ret) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.__dma_mmap_from_coherent.exit_crit_edge, label %land.lhs.true.i

entry.__dma_mmap_from_coherent.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__dma_mmap_from_coherent.exit

land.lhs.true.i:                                  ; preds = %entry
  %dma_mem.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %dma_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_mem.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.__dma_mmap_from_coherent.exit_crit_edge, label %land.lhs.true.i3

land.lhs.true.i.__dma_mmap_from_coherent.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__dma_mmap_from_coherent.exit

land.lhs.true.i3:                                 ; preds = %land.lhs.true.i
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp.not.i = icmp ugt ptr %3, %vaddr
  br i1 %cmp.not.i, label %land.lhs.true.i3.__dma_mmap_from_coherent.exit_crit_edge, label %land.lhs.true1.i

land.lhs.true.i3.__dma_mmap_from_coherent.exit_crit_edge: ; preds = %land.lhs.true.i3
  call void @__sanitizer_cov_trace_pc() #9
  br label %__dma_mmap_from_coherent.exit

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i3
  %add.ptr.i = getelementptr i8, ptr %vaddr, i32 %size
  %size3.i = getelementptr inbounds %struct.dma_coherent_mem, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %size3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size3.i, align 4
  %shl.i = shl i32 %5, 12
  %add.ptr4.i = getelementptr i8, ptr %3, i32 %shl.i
  %cmp5.not.i = icmp ugt ptr %add.ptr.i, %add.ptr4.i
  br i1 %cmp5.not.i, label %land.lhs.true1.i.__dma_mmap_from_coherent.exit_crit_edge, label %if.then.i

land.lhs.true1.i.__dma_mmap_from_coherent.exit_crit_edge: ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__dma_mmap_from_coherent.exit

if.then.i:                                        ; preds = %land.lhs.true1.i
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %6 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_pgoff.i, align 4
  %vm_end.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %8 = ptrtoint ptr %vm_end.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_end.i.i, align 4
  %10 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vma, align 4
  %sub.i.i = sub i32 %9, %11
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.i = add i32 %size, 4095
  %shr7.i = lshr i32 %add.i, 12
  %12 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -6, ptr %ret, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr7.i, i32 %7)
  %cmp8.i = icmp ule i32 %shr7.i, %7
  %sub.i = sub i32 %shr7.i, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %sub.i)
  %cmp10.not.i = icmp ugt i32 %shr.i.i, %sub.i
  %or.cond.i = select i1 %cmp8.i, i1 true, i1 %cmp10.not.i
  br i1 %or.cond.i, label %if.then.i.__dma_mmap_from_coherent.exit_crit_edge, label %if.then11.i

if.then.i.__dma_mmap_from_coherent.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__dma_mmap_from_coherent.exit

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast.i = ptrtoint ptr %vaddr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %shr.i = ashr i32 %sub.ptr.sub.i, 12
  %pfn_base.i = getelementptr inbounds %struct.dma_coherent_mem, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %pfn_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pfn_base.i, align 4
  %add12.i = add i32 %7, %shr.i
  %add13.i = add i32 %add12.i, %14
  %15 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vma, align 4
  %shl14.i = and i32 %sub.i.i, -4096
  %vm_page_prot.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %17 = ptrtoint ptr %vm_page_prot.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vm_page_prot.i, align 4
  %call15.i = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %16, i32 noundef %add13.i, i32 noundef %shl14.i, i32 noundef %18) #7
  %19 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call15.i, ptr %ret, align 4
  br label %__dma_mmap_from_coherent.exit

__dma_mmap_from_coherent.exit:                    ; preds = %if.then11.i, %if.then.i.__dma_mmap_from_coherent.exit_crit_edge, %land.lhs.true1.i.__dma_mmap_from_coherent.exit_crit_edge, %land.lhs.true.i3.__dma_mmap_from_coherent.exit_crit_edge, %land.lhs.true.i.__dma_mmap_from_coherent.exit_crit_edge, %entry.__dma_mmap_from_coherent.exit_crit_edge
  %retval.0.i4 = phi i32 [ 1, %if.then11.i ], [ 1, %if.then.i.__dma_mmap_from_coherent.exit_crit_edge ], [ 0, %land.lhs.true1.i.__dma_mmap_from_coherent.exit_crit_edge ], [ 0, %land.lhs.true.i3.__dma_mmap_from_coherent.exit_crit_edge ], [ 0, %entry.__dma_mmap_from_coherent.exit_crit_edge ], [ 0, %land.lhs.true.i.__dma_mmap_from_coherent.exit_crit_edge ]
  ret i32 %retval.0.i4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rmem_dma_setup(ptr noundef %rmem) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fdt_node = getelementptr inbounds %struct.reserved_mem, ptr %rmem, i32 0, i32 1
  %0 = ptrtoint ptr %fdt_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fdt_node, align 4
  %call = tail call ptr @of_get_flat_dt_prop(i32 noundef %1, ptr noundef nonnull @.str.4, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_get_flat_dt_prop(i32 noundef %1, ptr noundef nonnull @.str.5, ptr noundef null) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ops = getelementptr inbounds %struct.reserved_mem, ptr %rmem, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @rmem_dma_ops, ptr %ops, align 4
  %base = getelementptr inbounds %struct.reserved_mem, ptr %rmem, i32 0, i32 4
  %size = getelementptr inbounds %struct.reserved_mem, ptr %rmem, i32 0, i32 5
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  %div15 = lshr i32 %4, 20
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %base, i32 noundef %div15) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_flat_dt_prop(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmem_dma_device_init(ptr nocapture noundef %rmem, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.reserved_mem, ptr %rmem, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %base = getelementptr inbounds %struct.reserved_mem, ptr %rmem, i32 0, i32 4
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %size = getelementptr inbounds %struct.reserved_mem, ptr %rmem, i32 0, i32 5
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %call = tail call fastcc ptr @dma_init_coherent_memory(i32 noundef %3, i32 noundef %3, i32 noundef %5, i1 noundef zeroext true)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %priv, align 4
  br label %if.end6

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call to i32
  br label %return

if.end6:                                          ; preds = %cleanup.thread, %entry.if.end6_crit_edge
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %if.end6.return_crit_edge, label %if.end.i

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i:                                         ; preds = %if.end6
  %dma_mem.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 24
  %10 = ptrtoint ptr %dma_mem.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_mem.i, align 8
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %dma_mem.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %dma_mem.i, align 8
  br label %return

return:                                           ; preds = %if.end3.i, %if.end.i.return_crit_edge, %if.end6.return_crit_edge, %cleanup
  %retval.1 = phi i32 [ %7, %cleanup ], [ 0, %if.end6.return_crit_edge ], [ 0, %if.end.i.return_crit_edge ], [ 0, %if.end3.i ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @rmem_dma_device_release(ptr nocapture noundef readnone %rmem, ptr noundef writeonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dma_mem = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %dma_mem to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %dma_mem, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !15, !17, !18, !19, !20, !22, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__of_table_dma, !1, !"__of_table_dma", i1 false, i1 false}
!1 = !{!"../kernel/dma/coherent.c", i32 394, i32 1}
!2 = !{ptr @dma_init_coherent_memory.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../kernel/dma/coherent.c", i32 64, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../kernel/dma/coherent.c", i32 72, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dma_init_coherent_memory._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @dma_init_coherent_memory._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/dma/coherent.c", i32 359, i32 32}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../kernel/dma/coherent.c", i32 363, i32 33}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../kernel/dma/coherent.c", i32 364, i32 3}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rmem_dma_setup._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @rmem_dma_setup._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/dma/coherent.c", i32 378, i32 2}
!22 = !{ptr @rmem_dma_setup._entry.8, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @rmem_dma_setup._entry_ptr.10, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @rmem_dma_ops, !25, !"rmem_dma_ops", i1 false, i1 false}
!25 = !{!"../kernel/dma/coherent.c", i32 350, i32 38}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i32 0, i32 33}
!37 = !{i8 0, i8 2}
