; ModuleID = '/llk/IR_all_yes/kernel/dma/direct.c_pt.bc'
source_filename = "../kernel/dma/direct.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.bus_dma_region = type { i32, i32, i64, i64 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@zone_dma_bits = dso_local local_unnamed_addr global i32 24, section ".data..ro_after_init", align 4
@max_pfn = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@dma_direct_alloc_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 383, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Rejecting highmem page from CMA.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dma_direct_alloc_pages\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/dma/direct.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dma_direct_alloc_pages._entry_ptr = internal global ptr @dma_direct_alloc_pages._entry, section ".printk_index", align 4
@dma_direct_map_resource.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@dma_direct_map_resource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 505, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"DMA addr %pad+%zu overflow (mask %llx, bus limit %llx).\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dma_direct_map_resource\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@dma_direct_map_resource._entry_ptr = internal global ptr @dma_direct_map_resource._entry, section ".printk_index", align 4
@dma_direct_map_resource.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dma_direct_set_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 615, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"attempt to add DMA range to existing map\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dma_direct_set_offset\00", [42 x i8] zeroinitializer }, align 32
@dma_direct_set_offset._entry_ptr = internal global ptr @dma_direct_set_offset._entry, section ".printk_index", align 4
@__dma_direct_alloc_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__func__.dma_set_encrypted = private unnamed_addr constant [18 x i8] c"dma_set_encrypted\00", align 1
@dma_set_encrypted._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.dma_set_encrypted, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014leaking DMA memory that can't be re-encrypted\0A\00", [47 x i8] zeroinitializer }, align 32
@dma_set_encrypted._entry_ptr = internal global ptr @dma_set_encrypted._entry, section ".printk_index", align 4
@dma_direct_map_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/dma/direct.h\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s %s: DMA addr %pad+%zu overflow (mask %llx, bus limit %llx).\0A\00", [32 x i8] zeroinitializer }, align 32
@min_low_pfn = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 383, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 503, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 615, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private constant [23 x i8] c"../kernel/dma/direct.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 93, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [23 x i8] c"../kernel/dma/direct.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 97, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @dma_direct_alloc_pages._entry, ptr @dma_direct_alloc_pages._entry_ptr, ptr @dma_direct_map_resource._entry, ptr @dma_direct_map_resource._entry_ptr, ptr @dma_direct_set_offset._entry, ptr @dma_direct_set_offset._entry_ptr, ptr @dma_set_encrypted._entry, ptr @dma_set_encrypted._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_direct_alloc_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_direct_map_resource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_direct_set_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_set_encrypted._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i64 @dma_direct_get_required_mask(ptr noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_pfn to i32))
  %0 = load i32, ptr @max_pfn, align 4
  %sub = shl i32 %0, 12
  %shl = add i32 %sub, -4096
  %tobool.not.i.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i.i, label %entry.phys_to_dma_direct.exit_crit_edge, label %land.lhs.true.i.i.i

entry.phys_to_dma_direct.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma_direct.exit

land.lhs.true.i.i.i:                              ; preds = %entry
  %dma_range_map.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %1 = ptrtoint ptr %dma_range_map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_range_map.i.i.i, align 8
  %tobool1.not.i.i.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.phys_to_dma_direct.exit_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.phys_to_dma_direct.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma_direct.exit

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %size17.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %size17.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %size17.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not18.i.i.i.i = icmp eq i64 %4, 0
  br i1 %tobool.not18.i.i.i.i, label %if.then.i.i.i.phys_to_dma_direct.exit.thread_crit_edge, label %if.then.i.i.i.for.body.i.i.i.i_crit_edge

if.then.i.i.i.for.body.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i
  br label %for.body.i.i.i.i

if.then.i.i.i.phys_to_dma_direct.exit.thread_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma_direct.exit.thread

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then.i.i.i.for.body.i.i.i.i_crit_edge
  %5 = phi i64 [ %12, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %4, %if.then.i.i.i.for.body.i.i.i.i_crit_edge ]
  %m.019.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %2, %if.then.i.i.i.for.body.i.i.i.i_crit_edge ]
  %6 = ptrtoint ptr %m.019.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m.019.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %7)
  %cmp.not.i.i.i.i = icmp ult i32 %shl, %7
  br i1 %cmp.not.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %sub.i.i.i.i = sub i32 %shl, %7
  %conv.i.i.i.i = zext i32 %sub.i.i.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv.i.i.i.i)
  %cmp3.i.i.i.i = icmp ugt i64 %5, %conv.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %if.then.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.019.i.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset.i.i.i.i, align 8
  %10 = trunc i64 %9 to i32
  %conv7.i.i.i.i = sub i32 %shl, %10
  br label %phys_to_dma_direct.exit

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %incdec.ptr.i.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i.i.i, i32 1
  %size.i.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i.i.i, i32 1, i32 2
  %11 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq i64 %12, 0
  br i1 %tobool.not.i.i.i.i, label %for.inc.i.i.i.i.phys_to_dma_direct.exit.thread_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.phys_to_dma_direct.exit.thread_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma_direct.exit.thread

phys_to_dma_direct.exit:                          ; preds = %if.then.i.i.i.i, %land.lhs.true.i.i.i.phys_to_dma_direct.exit_crit_edge, %entry.phys_to_dma_direct.exit_crit_edge
  %pfn.addr.0.i.i.i.in = phi i32 [ %shl, %land.lhs.true.i.i.i.phys_to_dma_direct.exit_crit_edge ], [ %shl, %entry.phys_to_dma_direct.exit_crit_edge ], [ %conv7.i.i.i.i, %if.then.i.i.i.i ]
  %shl2.i.i.i = and i32 %pfn.addr.0.i.i.i.in, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %pfn.addr.0.i.i.i.in)
  %tobool.not.i.i = icmp ult i32 %pfn.addr.0.i.i.i.in, 4096
  %13 = tail call i32 @llvm.ctlz.i32(i32 %shl2.i.i.i, i1 true) #10, !range !51
  %sub.i.i.op = xor i32 %13, 31
  %spec.select = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.i.op
  br label %phys_to_dma_direct.exit.thread

phys_to_dma_direct.exit.thread:                   ; preds = %phys_to_dma_direct.exit, %for.inc.i.i.i.i.phys_to_dma_direct.exit.thread_crit_edge, %if.then.i.i.i.phys_to_dma_direct.exit.thread_crit_edge
  %14 = phi i32 [ 31, %if.then.i.i.i.phys_to_dma_direct.exit.thread_crit_edge ], [ %spec.select, %phys_to_dma_direct.exit ], [ 31, %for.inc.i.i.i.i.phys_to_dma_direct.exit.thread_crit_edge ]
  %sh_prom = zext i32 %14 to i64
  %mul = shl i64 2, %sh_prom
  %sub4 = add i64 %mul, -1
  ret i64 %sub4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dma_direct_alloc(ptr noundef %dev, i32 noundef %size, ptr nocapture noundef writeonly %dma_handle, i32 noundef %gfp, i32 noundef %attrs) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %size, 4095
  %and = and i32 %add, -4096
  %and1 = shl i32 %attrs, 5
  %0 = and i32 %and1, 8192
  %and2 = and i32 %attrs, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %gfp.masked = and i32 %gfp, -257
  %and29 = or i32 %0, %gfp.masked
  br i1 %tobool3.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call.i = tail call fastcc ptr @__dma_direct_alloc_pages(ptr noundef %dev, i32 noundef %and, i32 noundef %and29) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %land.lhs.true.cleanup_crit_edge, label %if.end.i

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %1 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %2
  %shl.i = shl i32 %add.i, 12
  %shr.i.i.i = and i32 %add.i, 1048575
  %tobool.not.i.i.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.phys_to_dma_direct.exit.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.phys_to_dma_direct.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma_direct.exit.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i
  %dma_range_map.i.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %3 = ptrtoint ptr %dma_range_map.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma_range_map.i.i.i.i, align 8
  %tobool1.not.i.i.i.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i.i.i.i, label %land.lhs.true.i.i.i.i.phys_to_dma_direct.exit.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true.i.i.i.i.phys_to_dma_direct.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma_direct.exit.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i
  %size17.i.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %size17.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %size17.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not18.i.i.i.i.i = icmp eq i64 %6, 0
  br i1 %tobool.not18.i.i.i.i.i, label %if.then.i.i.i.i.phys_to_dma_direct.exit.i_crit_edge, label %if.then.i.i.i.i.for.body.i.i.i.i.i_crit_edge

if.then.i.i.i.i.for.body.i.i.i.i.i_crit_edge:     ; preds = %if.then.i.i.i.i
  br label %for.body.i.i.i.i.i

if.then.i.i.i.i.phys_to_dma_direct.exit.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma_direct.exit.i

for.body.i.i.i.i.i:                               ; preds = %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %if.then.i.i.i.i.for.body.i.i.i.i.i_crit_edge
  %7 = phi i64 [ %14, %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ %6, %if.then.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %m.019.i.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i.i, %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ %4, %if.then.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %8 = ptrtoint ptr %m.019.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %m.019.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %9)
  %cmp.not.i.i.i.i.i = icmp ult i32 %shl.i, %9
  br i1 %cmp.not.i.i.i.i.i, label %for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge:   ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %for.body.i.i.i.i.i
  %sub.i.i.i.i.i = sub i32 %shl.i, %9
  %conv.i.i.i.i.i = zext i32 %sub.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp ugt i64 %7, %conv.i.i.i.i.i
  br i1 %cmp3.i.i.i.i.i, label %if.then.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.019.i.i.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %offset.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %offset.i.i.i.i.i, align 8
  %12 = trunc i64 %11 to i32
  %conv7.i.i.i.i.i = sub i32 %shl.i, %12
  %phi.bo.i.i.i.i = lshr i32 %conv7.i.i.i.i.i, 12
  br label %phys_to_dma_direct.exit.i

for.inc.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge, %for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge
  %incdec.ptr.i.i.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i.i.i.i, i32 1
  %size.i.i.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i.i.i.i, i32 1, i32 2
  %13 = ptrtoint ptr %size.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %size.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq i64 %14, 0
  br i1 %tobool.not.i.i.i.i.i, label %for.inc.i.i.i.i.i.phys_to_dma_direct.exit.i_crit_edge, label %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:   ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i.i

for.inc.i.i.i.i.i.phys_to_dma_direct.exit.i_crit_edge: ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma_direct.exit.i

phys_to_dma_direct.exit.i:                        ; preds = %for.inc.i.i.i.i.i.phys_to_dma_direct.exit.i_crit_edge, %if.then.i.i.i.i.i, %if.then.i.i.i.i.phys_to_dma_direct.exit.i_crit_edge, %land.lhs.true.i.i.i.i.phys_to_dma_direct.exit.i_crit_edge, %if.end.i.phys_to_dma_direct.exit.i_crit_edge
  %pfn.addr.0.i.i.i.i = phi i32 [ %shr.i.i.i, %land.lhs.true.i.i.i.i.phys_to_dma_direct.exit.i_crit_edge ], [ %shr.i.i.i, %if.end.i.phys_to_dma_direct.exit.i_crit_edge ], [ %phi.bo.i.i.i.i, %if.then.i.i.i.i.i ], [ 1048575, %if.then.i.i.i.i.phys_to_dma_direct.exit.i_crit_edge ], [ 1048575, %for.inc.i.i.i.i.i.phys_to_dma_direct.exit.i_crit_edge ]
  %shl2.i.i.i.i = shl nuw i32 %pfn.addr.0.i.i.i.i, 12
  %15 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shl2.i.i.i.i, ptr %dma_handle, align 4
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call30 = tail call fastcc ptr @__dma_direct_alloc_pages(ptr noundef %dev, i32 noundef %and, i32 noundef %and29)
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end8.cleanup_crit_edge, label %if.end33

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %if.end8
  %16 = ptrtoint ptr %call30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call30, align 4
  %shr.i = lshr i32 %17, 30
  %18 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i, label %if.end33.if.else47_crit_edge [
    i32 2, label %if.end33.if.then40_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

if.end33.if.then40_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

if.end33.if.else47_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else47

is_highmem_idx.exit:                              ; preds = %if.end33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %19 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp2.i.not = icmp eq i32 %19, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.if.then40_crit_edge, label %is_highmem_idx.exit.if.else47_crit_edge

is_highmem_idx.exit.if.else47_crit_edge:          ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else47

is_highmem_idx.exit.if.then40_crit_edge:          ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

if.then40:                                        ; preds = %is_highmem_idx.exit.if.then40_crit_edge, %if.end33.if.then40_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %20 = load i32, ptr @pgprot_kernel, align 4
  %or41 = or i32 %20, 512
  %call42 = tail call i32 @dma_pgprot(ptr noundef %dev, i32 noundef %or41, i32 noundef %attrs) #10
  %21 = tail call ptr @llvm.returnaddress(i32 0)
  %call43 = tail call ptr @dma_common_contiguous_remap(ptr noundef nonnull %call30, i32 noundef %and, i32 noundef %call42, ptr noundef %21) #10
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %out_free_pages, label %if.then40.if.end53_crit_edge

if.then40.if.end53_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.else47:                                        ; preds = %is_highmem_idx.exit.if.else47_crit_edge, %if.end33.if.else47_crit_edge
  %call48 = tail call ptr @page_address(ptr noundef nonnull %call30) #10
  br label %if.end53

if.end53:                                         ; preds = %if.else47, %if.then40.if.end53_crit_edge
  %ret.0 = phi ptr [ %call43, %if.then40.if.end53_crit_edge ], [ %call48, %if.else47 ]
  %22 = call ptr @memset(ptr %ret.0, i32 0, i32 %and)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %23 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call30 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %23 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %24 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add61 = add i32 %sub.ptr.div, %24
  %shl = shl i32 %add61, 12
  %shr.i.i = and i32 %add61, 1048575
  %tobool.not.i.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i.i, label %if.end53.phys_to_dma_direct.exit_crit_edge, label %land.lhs.true.i.i.i

if.end53.phys_to_dma_direct.exit_crit_edge:       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma_direct.exit

land.lhs.true.i.i.i:                              ; preds = %if.end53
  %dma_range_map.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %25 = ptrtoint ptr %dma_range_map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_range_map.i.i.i, align 8
  %tobool1.not.i.i.i = icmp eq ptr %26, null
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.phys_to_dma_direct.exit_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.phys_to_dma_direct.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma_direct.exit

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %size17.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %size17.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %size17.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %tobool.not18.i.i.i.i = icmp eq i64 %28, 0
  br i1 %tobool.not18.i.i.i.i, label %if.then.i.i.i.phys_to_dma_direct.exit_crit_edge, label %if.then.i.i.i.for.body.i.i.i.i_crit_edge

if.then.i.i.i.for.body.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i
  br label %for.body.i.i.i.i

if.then.i.i.i.phys_to_dma_direct.exit_crit_edge:  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma_direct.exit

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then.i.i.i.for.body.i.i.i.i_crit_edge
  %29 = phi i64 [ %36, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %28, %if.then.i.i.i.for.body.i.i.i.i_crit_edge ]
  %m.019.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %26, %if.then.i.i.i.for.body.i.i.i.i_crit_edge ]
  %30 = ptrtoint ptr %m.019.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %m.019.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %31)
  %cmp.not.i.i.i.i = icmp ult i32 %shl, %31
  br i1 %cmp.not.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i128

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i128:                         ; preds = %for.body.i.i.i.i
  %sub.i.i.i.i = sub i32 %shl, %31
  %conv.i.i.i.i = zext i32 %sub.i.i.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %conv.i.i.i.i)
  %cmp3.i.i.i.i = icmp ugt i64 %29, %conv.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %if.then.i.i.i.i129, label %land.lhs.true.i.i.i.i128.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i128.for.inc.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i128
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

if.then.i.i.i.i129:                               ; preds = %land.lhs.true.i.i.i.i128
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.019.i.i.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %offset.i.i.i.i, align 8
  %34 = trunc i64 %33 to i32
  %conv7.i.i.i.i = sub i32 %shl, %34
  %phi.bo.i.i.i = lshr i32 %conv7.i.i.i.i, 12
  br label %phys_to_dma_direct.exit

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i128.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %incdec.ptr.i.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i.i.i, i32 1
  %size.i.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i.i.i, i32 1, i32 2
  %35 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %size.i.i.i.i, align 8
  %tobool.not.i.i.i.i130 = icmp eq i64 %36, 0
  br i1 %tobool.not.i.i.i.i130, label %for.inc.i.i.i.i.phys_to_dma_direct.exit_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.phys_to_dma_direct.exit_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma_direct.exit

phys_to_dma_direct.exit:                          ; preds = %for.inc.i.i.i.i.phys_to_dma_direct.exit_crit_edge, %if.then.i.i.i.i129, %if.then.i.i.i.phys_to_dma_direct.exit_crit_edge, %land.lhs.true.i.i.i.phys_to_dma_direct.exit_crit_edge, %if.end53.phys_to_dma_direct.exit_crit_edge
  %pfn.addr.0.i.i.i = phi i32 [ %shr.i.i, %land.lhs.true.i.i.i.phys_to_dma_direct.exit_crit_edge ], [ %shr.i.i, %if.end53.phys_to_dma_direct.exit_crit_edge ], [ %phi.bo.i.i.i, %if.then.i.i.i.i129 ], [ 1048575, %if.then.i.i.i.phys_to_dma_direct.exit_crit_edge ], [ 1048575, %for.inc.i.i.i.i.phys_to_dma_direct.exit_crit_edge ]
  %shl2.i.i.i = shl nuw i32 %pfn.addr.0.i.i.i, 12
  %37 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shl2.i.i.i, ptr %dma_handle, align 4
  br label %cleanup

out_free_pages:                                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_free_contiguous(ptr noundef %dev, ptr noundef nonnull %call30, i32 noundef %and) #10
  br label %cleanup

cleanup:                                          ; preds = %out_free_pages, %phys_to_dma_direct.exit, %if.end8.cleanup_crit_edge, %phys_to_dma_direct.exit.i, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out_free_pages ], [ %ret.0, %phys_to_dma_direct.exit ], [ null, %if.end8.cleanup_crit_edge ], [ null, %land.lhs.true.cleanup_crit_edge ], [ %call.i, %phys_to_dma_direct.exit.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__dma_direct_alloc_pages(ptr noundef %dev, i32 noundef %size, i32 noundef %gfp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %size, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b99 = load i1, ptr @__dma_direct_alloc_pages.__already_done, align 1
  br i1 %.b99, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !52

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__dma_direct_alloc_pages.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 124, i32 noundef 9, ptr noundef null) #10
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  %coherent_dma_mask = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %coherent_dma_mask to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %coherent_dma_mask, align 8
  %bus_dma_limit.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %bus_dma_limit.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bus_dma_limit.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.i100 = icmp eq i64 %1, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp1.i = icmp eq i64 %3, 0
  %4 = tail call i64 @llvm.umin.i64(i64 %3, i64 %1) #10
  %spec.select44.i = select i1 %cmp1.i, i64 %1, i64 %4
  %dma_mask.sink.i = select i1 %cmp.i100, i64 %3, i64 %spec.select44.i
  %extract.t35.i = trunc i64 %dma_mask.sink.i to i32
  %tobool.not.i.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i.i, label %if.end28.dma_to_phys.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end28.dma_to_phys.exit.i_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_to_phys.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end28
  %dma_range_map.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %5 = ptrtoint ptr %dma_range_map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma_range_map.i.i.i, align 8
  %tobool1.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.dma_to_phys.exit.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.dma_to_phys.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_to_phys.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %shl.i.i.i = and i32 %extract.t35.i, -4096
  %size16.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %size16.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %size16.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not17.i.i.i.i = icmp eq i64 %8, 0
  br i1 %tobool.not17.i.i.i.i, label %if.then.i.i.i.dma_to_phys.exit.i_crit_edge, label %if.then.i.i.i.for.body.i.i.i.i_crit_edge

if.then.i.i.i.for.body.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i
  br label %for.body.i.i.i.i

if.then.i.i.i.dma_to_phys.exit.i_crit_edge:       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_to_phys.exit.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then.i.i.i.for.body.i.i.i.i_crit_edge
  %9 = phi i64 [ %16, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %8, %if.then.i.i.i.for.body.i.i.i.i_crit_edge ]
  %m.018.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %6, %if.then.i.i.i.for.body.i.i.i.i_crit_edge ]
  %dma_start.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %dma_start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_start.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i.i, i32 %11)
  %cmp.not.i.i.i.i = icmp ult i32 %shl.i.i.i, %11
  br i1 %cmp.not.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %sub.i.i.i.i = sub i32 %shl.i.i.i, %11
  %conv.i.i.i.i = zext i32 %sub.i.i.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv.i.i.i.i)
  %cmp3.i.i.i.i = icmp ugt i64 %9, %conv.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %if.then.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %offset.i.i.i.i, align 8
  %14 = trunc i64 %13 to i32
  %conv6.i.i.i.i = add i32 %shl.i.i.i, %14
  br label %dma_to_phys.exit.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %incdec.ptr.i.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i.i.i, i32 1
  %size.i.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i.i.i, i32 1, i32 2
  %15 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %size.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq i64 %16, 0
  br i1 %tobool.not.i.i.i.i, label %for.inc.i.i.i.i.dma_to_phys.exit.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.dma_to_phys.exit.i_crit_edge:     ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_to_phys.exit.i

dma_to_phys.exit.i:                               ; preds = %for.inc.i.i.i.i.dma_to_phys.exit.i_crit_edge, %if.then.i.i.i.i, %if.then.i.i.i.dma_to_phys.exit.i_crit_edge, %land.lhs.true.i.i.i.dma_to_phys.exit.i_crit_edge, %if.end28.dma_to_phys.exit.i_crit_edge
  %pfn.0.in.i.i.i = phi i32 [ %extract.t35.i, %land.lhs.true.i.i.i.dma_to_phys.exit.i_crit_edge ], [ %extract.t35.i, %if.end28.dma_to_phys.exit.i_crit_edge ], [ %conv6.i.i.i.i, %if.then.i.i.i.i ], [ -1, %if.then.i.i.i.dma_to_phys.exit.i_crit_edge ], [ -1, %for.inc.i.i.i.i.dma_to_phys.exit.i_crit_edge ]
  %17 = load i32, ptr @zone_dma_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %17)
  %cmp13.i = icmp eq i32 %17, 64
  br i1 %cmp13.i, label %dma_to_phys.exit.i.dma_direct_optimal_gfp_mask.exit_crit_edge, label %cond.end17.i

dma_to_phys.exit.i.dma_direct_optimal_gfp_mask.exit_crit_edge: ; preds = %dma_to_phys.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_direct_optimal_gfp_mask.exit

cond.end17.i:                                     ; preds = %dma_to_phys.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %pfn.0.i.i.i = and i32 %pfn.0.in.i.i.i, -4096
  %and.i.i = and i32 %extract.t35.i, 4095
  %add.i.i = or i32 %pfn.0.i.i.i, %and.i.i
  %conv12.i = zext i32 %add.i.i to i64
  %sh_prom.i = zext i32 %17 to i64
  %conv12.highbits.i = lshr i64 %conv12.i, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv12.highbits.i)
  %cmp19.not.not.i = icmp eq i64 %conv12.highbits.i, 0
  %spec.select.i = select i1 %cmp19.not.not.i, i32 1, i32 4
  br label %dma_direct_optimal_gfp_mask.exit

dma_direct_optimal_gfp_mask.exit:                 ; preds = %cond.end17.i, %dma_to_phys.exit.i.dma_direct_optimal_gfp_mask.exit_crit_edge
  %retval.0.i101 = phi i32 [ 1, %dma_to_phys.exit.i.dma_direct_optimal_gfp_mask.exit_crit_edge ], [ %spec.select.i, %cond.end17.i ]
  %or = or i32 %retval.0.i101, %gfp
  %call41 = tail call ptr @dma_alloc_contiguous(ptr noundef %dev, i32 noundef %size, i32 noundef %or) #10
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %dma_direct_optimal_gfp_mask.exit.if.end45_crit_edge, label %land.lhs.true

dma_direct_optimal_gfp_mask.exit.if.end45_crit_edge: ; preds = %dma_direct_optimal_gfp_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = add i32 %size, -1
  br label %if.end45

land.lhs.true:                                    ; preds = %dma_direct_optimal_gfp_mask.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call41 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %19 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %19
  %shl = shl i32 %add, 12
  %shr.i.i.i = and i32 %add, 1048575
  br i1 %tobool.not.i.i.i, label %land.lhs.true.dma_coherent_ok.exit_crit_edge, label %land.lhs.true.i.i.i.i103

land.lhs.true.dma_coherent_ok.exit_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_coherent_ok.exit

land.lhs.true.i.i.i.i103:                         ; preds = %land.lhs.true
  %dma_range_map.i.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %20 = ptrtoint ptr %dma_range_map.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_range_map.i.i.i.i, align 8
  %tobool1.not.i.i.i.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i.i.i.i, label %land.lhs.true.i.i.i.i103.dma_coherent_ok.exit_crit_edge, label %if.then.i.i.i.i104

land.lhs.true.i.i.i.i103.dma_coherent_ok.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i103
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_coherent_ok.exit

if.then.i.i.i.i104:                               ; preds = %land.lhs.true.i.i.i.i103
  %size17.i.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %size17.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %size17.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool.not18.i.i.i.i.i = icmp eq i64 %23, 0
  br i1 %tobool.not18.i.i.i.i.i, label %if.then.i.i.i.i104.dma_coherent_ok.exit_crit_edge, label %if.then.i.i.i.i104.for.body.i.i.i.i.i_crit_edge

if.then.i.i.i.i104.for.body.i.i.i.i.i_crit_edge:  ; preds = %if.then.i.i.i.i104
  br label %for.body.i.i.i.i.i

if.then.i.i.i.i104.dma_coherent_ok.exit_crit_edge: ; preds = %if.then.i.i.i.i104
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_coherent_ok.exit

for.body.i.i.i.i.i:                               ; preds = %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %if.then.i.i.i.i104.for.body.i.i.i.i.i_crit_edge
  %24 = phi i64 [ %31, %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ %23, %if.then.i.i.i.i104.for.body.i.i.i.i.i_crit_edge ]
  %m.019.i.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i.i, %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ %21, %if.then.i.i.i.i104.for.body.i.i.i.i.i_crit_edge ]
  %25 = ptrtoint ptr %m.019.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %m.019.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %26)
  %cmp.not.i.i.i.i.i = icmp ult i32 %shl, %26
  br i1 %cmp.not.i.i.i.i.i, label %for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge:   ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %for.body.i.i.i.i.i
  %sub.i.i.i.i.i = sub i32 %shl, %26
  %conv.i.i.i.i.i = zext i32 %sub.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %conv.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp ugt i64 %24, %conv.i.i.i.i.i
  br i1 %cmp3.i.i.i.i.i, label %if.then.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.019.i.i.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %offset.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %offset.i.i.i.i.i, align 8
  %29 = trunc i64 %28 to i32
  %conv7.i.i.i.i.i = sub i32 %shl, %29
  %phi.bo.i.i.i.i = lshr i32 %conv7.i.i.i.i.i, 12
  br label %dma_coherent_ok.exit

for.inc.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge, %for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge
  %incdec.ptr.i.i.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i.i.i.i, i32 1
  %size.i.i.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i.i.i.i, i32 1, i32 2
  %30 = ptrtoint ptr %size.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %size.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq i64 %31, 0
  br i1 %tobool.not.i.i.i.i.i, label %for.inc.i.i.i.i.i.dma_coherent_ok.exit_crit_edge, label %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:   ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i.i

for.inc.i.i.i.i.i.dma_coherent_ok.exit_crit_edge: ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_coherent_ok.exit

dma_coherent_ok.exit:                             ; preds = %for.inc.i.i.i.i.i.dma_coherent_ok.exit_crit_edge, %if.then.i.i.i.i.i, %if.then.i.i.i.i104.dma_coherent_ok.exit_crit_edge, %land.lhs.true.i.i.i.i103.dma_coherent_ok.exit_crit_edge, %land.lhs.true.dma_coherent_ok.exit_crit_edge
  %pfn.addr.0.i.i.i.i = phi i32 [ %shr.i.i.i, %land.lhs.true.i.i.i.i103.dma_coherent_ok.exit_crit_edge ], [ %shr.i.i.i, %land.lhs.true.dma_coherent_ok.exit_crit_edge ], [ %phi.bo.i.i.i.i, %if.then.i.i.i.i.i ], [ 1048575, %if.then.i.i.i.i104.dma_coherent_ok.exit_crit_edge ], [ 1048575, %for.inc.i.i.i.i.i.dma_coherent_ok.exit_crit_edge ]
  %shl2.i.i.i.i = shl nuw i32 %pfn.addr.0.i.i.i.i, 12
  %add.i105 = add i32 %size, -1
  %sub.i106 = add i32 %add.i105, %shl2.i.i.i.i
  %conv.i = zext i32 %sub.i106 to i64
  %32 = ptrtoint ptr %coherent_dma_mask to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %coherent_dma_mask, align 8
  %34 = ptrtoint ptr %bus_dma_limit.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %bus_dma_limit.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %cmp1.i108 = icmp eq i64 %33, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %cmp3.i = icmp eq i64 %35, 0
  %36 = tail call i64 @llvm.umin.i64(i64 %33, i64 %35) #10
  %spec.select.i109 = select i1 %cmp3.i, i64 %33, i64 %36
  %cond15.i = select i1 %cmp1.i108, i64 %35, i64 %spec.select.i109
  call void @__sanitizer_cov_trace_cmp8(i64 %cond15.i, i64 %conv.i)
  %cmp16.i.not = icmp ult i64 %cond15.i, %conv.i
  br i1 %cmp16.i.not, label %if.then44, label %dma_coherent_ok.exit.if.end45_crit_edge

dma_coherent_ok.exit.if.end45_crit_edge:          ; preds = %dma_coherent_ok.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then44:                                        ; preds = %dma_coherent_ok.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_free_contiguous(ptr noundef %dev, ptr noundef nonnull %call41, i32 noundef %size) #10
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %dma_coherent_ok.exit.if.end45_crit_edge, %dma_direct_optimal_gfp_mask.exit.if.end45_crit_edge
  %dec.i.pre-phi = phi i32 [ %.pre, %dma_direct_optimal_gfp_mask.exit.if.end45_crit_edge ], [ %add.i105, %if.then44 ], [ %add.i105, %dma_coherent_ok.exit.if.end45_crit_edge ]
  %page.0 = phi ptr [ null, %dma_direct_optimal_gfp_mask.exit.if.end45_crit_edge ], [ null, %if.then44 ], [ %call41, %dma_coherent_ok.exit.if.end45_crit_edge ]
  %shr.i = lshr i32 %dec.i.pre-phi, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.pre-phi)
  %tobool.not.i.i = icmp ult i32 %dec.i.pre-phi, 4096
  %37 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #10, !range !53
  %sub.i.i = sub nuw nsw i32 32, %37
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %dma_range_map.i.i.i.i114 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  br label %again

again:                                            ; preds = %if.then63, %if.end45
  %page.1 = phi ptr [ %page.0, %if.end45 ], [ null, %if.then63 ]
  %gfp.addr.0 = phi i32 [ %or, %if.end45 ], [ %or65, %if.then63 ]
  %tobool46.not = icmp eq ptr %page.1, null
  br i1 %tobool46.not, label %if.end50, label %again.land.lhs.true52_crit_edge

again.land.lhs.true52_crit_edge:                  ; preds = %again
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true52

if.end50:                                         ; preds = %again
  %call38.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp.addr.0, i32 noundef %cond.i.i, i32 noundef 0, ptr noundef null) #10
  %tobool51.not = icmp eq ptr %call38.i.i, null
  br i1 %tobool51.not, label %if.end50.cleanup_crit_edge, label %if.end50.land.lhs.true52_crit_edge

if.end50.land.lhs.true52_crit_edge:               ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true52

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true52:                                  ; preds = %if.end50.land.lhs.true52_crit_edge, %again.land.lhs.true52_crit_edge
  %page.2154 = phi ptr [ %call38.i.i, %if.end50.land.lhs.true52_crit_edge ], [ %page.1, %again.land.lhs.true52_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %38 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast53 = ptrtoint ptr %page.2154 to i32
  %sub.ptr.rhs.cast54 = ptrtoint ptr %38 to i32
  %sub.ptr.sub55 = sub i32 %sub.ptr.lhs.cast53, %sub.ptr.rhs.cast54
  %sub.ptr.div56 = sdiv exact i32 %sub.ptr.sub55, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %39 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add57 = add i32 %sub.ptr.div56, %39
  %shl58 = shl i32 %add57, 12
  %shr.i.i.i112 = and i32 %add57, 1048575
  br i1 %tobool.not.i.i.i, label %land.lhs.true52.dma_coherent_ok.exit151_crit_edge, label %land.lhs.true.i.i.i.i116

land.lhs.true52.dma_coherent_ok.exit151_crit_edge: ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_coherent_ok.exit151

land.lhs.true.i.i.i.i116:                         ; preds = %land.lhs.true52
  %40 = ptrtoint ptr %dma_range_map.i.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dma_range_map.i.i.i.i114, align 8
  %tobool1.not.i.i.i.i115 = icmp eq ptr %41, null
  br i1 %tobool1.not.i.i.i.i115, label %land.lhs.true.i.i.i.i116.dma_coherent_ok.exit151_crit_edge, label %if.then.i.i.i.i119

land.lhs.true.i.i.i.i116.dma_coherent_ok.exit151_crit_edge: ; preds = %land.lhs.true.i.i.i.i116
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_coherent_ok.exit151

if.then.i.i.i.i119:                               ; preds = %land.lhs.true.i.i.i.i116
  %size17.i.i.i.i.i117 = getelementptr inbounds %struct.bus_dma_region, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %size17.i.i.i.i.i117 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %size17.i.i.i.i.i117, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %tobool.not18.i.i.i.i.i118 = icmp eq i64 %43, 0
  br i1 %tobool.not18.i.i.i.i.i118, label %if.then.i.i.i.i119.dma_coherent_ok.exit151_crit_edge, label %if.then.i.i.i.i119.for.body.i.i.i.i.i122_crit_edge

if.then.i.i.i.i119.for.body.i.i.i.i.i122_crit_edge: ; preds = %if.then.i.i.i.i119
  br label %for.body.i.i.i.i.i122

if.then.i.i.i.i119.dma_coherent_ok.exit151_crit_edge: ; preds = %if.then.i.i.i.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_coherent_ok.exit151

for.body.i.i.i.i.i122:                            ; preds = %for.inc.i.i.i.i.i134.for.body.i.i.i.i.i122_crit_edge, %if.then.i.i.i.i119.for.body.i.i.i.i.i122_crit_edge
  %44 = phi i64 [ %51, %for.inc.i.i.i.i.i134.for.body.i.i.i.i.i122_crit_edge ], [ %43, %if.then.i.i.i.i119.for.body.i.i.i.i.i122_crit_edge ]
  %m.019.i.i.i.i.i120 = phi ptr [ %incdec.ptr.i.i.i.i.i131, %for.inc.i.i.i.i.i134.for.body.i.i.i.i.i122_crit_edge ], [ %41, %if.then.i.i.i.i119.for.body.i.i.i.i.i122_crit_edge ]
  %45 = ptrtoint ptr %m.019.i.i.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %m.019.i.i.i.i.i120, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl58, i32 %46)
  %cmp.not.i.i.i.i.i121 = icmp ult i32 %shl58, %46
  br i1 %cmp.not.i.i.i.i.i121, label %for.body.i.i.i.i.i122.for.inc.i.i.i.i.i134_crit_edge, label %land.lhs.true.i.i.i.i.i126

for.body.i.i.i.i.i122.for.inc.i.i.i.i.i134_crit_edge: ; preds = %for.body.i.i.i.i.i122
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i.i134

land.lhs.true.i.i.i.i.i126:                       ; preds = %for.body.i.i.i.i.i122
  %sub.i.i.i.i.i123 = sub i32 %shl58, %46
  %conv.i.i.i.i.i124 = zext i32 %sub.i.i.i.i.i123 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %conv.i.i.i.i.i124)
  %cmp3.i.i.i.i.i125 = icmp ugt i64 %44, %conv.i.i.i.i.i124
  br i1 %cmp3.i.i.i.i.i125, label %if.then.i.i.i.i.i130, label %land.lhs.true.i.i.i.i.i126.for.inc.i.i.i.i.i134_crit_edge

land.lhs.true.i.i.i.i.i126.for.inc.i.i.i.i.i134_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i126
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i.i134

if.then.i.i.i.i.i130:                             ; preds = %land.lhs.true.i.i.i.i.i126
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.i.i.i.i127 = getelementptr inbounds %struct.bus_dma_region, ptr %m.019.i.i.i.i.i120, i32 0, i32 3
  %47 = ptrtoint ptr %offset.i.i.i.i.i127 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %offset.i.i.i.i.i127, align 8
  %49 = trunc i64 %48 to i32
  %conv7.i.i.i.i.i128 = sub i32 %shl58, %49
  %phi.bo.i.i.i.i129 = lshr i32 %conv7.i.i.i.i.i128, 12
  br label %dma_coherent_ok.exit151

for.inc.i.i.i.i.i134:                             ; preds = %land.lhs.true.i.i.i.i.i126.for.inc.i.i.i.i.i134_crit_edge, %for.body.i.i.i.i.i122.for.inc.i.i.i.i.i134_crit_edge
  %incdec.ptr.i.i.i.i.i131 = getelementptr %struct.bus_dma_region, ptr %m.019.i.i.i.i.i120, i32 1
  %size.i.i.i.i.i132 = getelementptr %struct.bus_dma_region, ptr %m.019.i.i.i.i.i120, i32 1, i32 2
  %50 = ptrtoint ptr %size.i.i.i.i.i132 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %size.i.i.i.i.i132, align 8
  %tobool.not.i.i.i.i.i133 = icmp eq i64 %51, 0
  br i1 %tobool.not.i.i.i.i.i133, label %for.inc.i.i.i.i.i134.dma_coherent_ok.exit151_crit_edge, label %for.inc.i.i.i.i.i134.for.body.i.i.i.i.i122_crit_edge

for.inc.i.i.i.i.i134.for.body.i.i.i.i.i122_crit_edge: ; preds = %for.inc.i.i.i.i.i134
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i.i122

for.inc.i.i.i.i.i134.dma_coherent_ok.exit151_crit_edge: ; preds = %for.inc.i.i.i.i.i134
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_coherent_ok.exit151

dma_coherent_ok.exit151:                          ; preds = %for.inc.i.i.i.i.i134.dma_coherent_ok.exit151_crit_edge, %if.then.i.i.i.i.i130, %if.then.i.i.i.i119.dma_coherent_ok.exit151_crit_edge, %land.lhs.true.i.i.i.i116.dma_coherent_ok.exit151_crit_edge, %land.lhs.true52.dma_coherent_ok.exit151_crit_edge
  %pfn.addr.0.i.i.i.i135 = phi i32 [ %shr.i.i.i112, %land.lhs.true.i.i.i.i116.dma_coherent_ok.exit151_crit_edge ], [ %shr.i.i.i112, %land.lhs.true52.dma_coherent_ok.exit151_crit_edge ], [ %phi.bo.i.i.i.i129, %if.then.i.i.i.i.i130 ], [ 1048575, %if.then.i.i.i.i119.dma_coherent_ok.exit151_crit_edge ], [ 1048575, %for.inc.i.i.i.i.i134.dma_coherent_ok.exit151_crit_edge ]
  %shl2.i.i.i.i137 = shl nuw i32 %pfn.addr.0.i.i.i.i135, 12
  %sub.i140 = add i32 %dec.i.pre-phi, %shl2.i.i.i.i137
  %conv.i141 = zext i32 %sub.i140 to i64
  %52 = ptrtoint ptr %coherent_dma_mask to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %coherent_dma_mask, align 8
  %54 = ptrtoint ptr %bus_dma_limit.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %bus_dma_limit.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %53)
  %cmp1.i144 = icmp eq i64 %53, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %55)
  %cmp3.i145 = icmp eq i64 %55, 0
  %56 = tail call i64 @llvm.umin.i64(i64 %53, i64 %55) #10
  %spec.select.i146 = select i1 %cmp3.i145, i64 %53, i64 %56
  %cond15.i147 = select i1 %cmp1.i144, i64 %55, i64 %spec.select.i146
  call void @__sanitizer_cov_trace_cmp8(i64 %cond15.i147, i64 %conv.i141)
  %cmp16.i148.not = icmp ult i64 %cond15.i147, %conv.i141
  br i1 %cmp16.i148.not, label %if.then60, label %dma_coherent_ok.exit151.cleanup_crit_edge

dma_coherent_ok.exit151.cleanup_crit_edge:        ; preds = %dma_coherent_ok.exit151
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then60:                                        ; preds = %dma_coherent_ok.exit151
  tail call void @dma_free_contiguous(ptr noundef %dev, ptr noundef nonnull %page.2154, i32 noundef %size) #10
  %and61 = and i32 %gfp.addr.0, 1
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.then63, label %if.then60.cleanup_crit_edge

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then63:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  %and64 = and i32 %gfp.addr.0, -6
  %or65 = or i32 %and64, 1
  br label %again

cleanup:                                          ; preds = %if.then60.cleanup_crit_edge, %dma_coherent_ok.exit151.cleanup_crit_edge, %if.end50.cleanup_crit_edge
  %page.3 = phi ptr [ %page.2154, %dma_coherent_ok.exit151.cleanup_crit_edge ], [ null, %if.then60.cleanup_crit_edge ], [ null, %if.end50.cleanup_crit_edge ]
  ret ptr %page.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_common_contiguous_remap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_pgprot(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_direct_free(ptr noundef %dev, i32 noundef %size, ptr noundef %cpu_addr, i32 noundef %dma_addr, i32 noundef %attrs) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %attrs, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call9 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %cpu_addr) #10
  br i1 %call9, label %if.then10, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @vunmap(ptr noundef %cpu_addr) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end.if.end15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %tobool.not.i.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i.i, label %if.end15.dma_direct_to_page.exit_crit_edge, label %land.lhs.true.i.i.i

if.end15.dma_direct_to_page.exit_crit_edge:       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_direct_to_page.exit

land.lhs.true.i.i.i:                              ; preds = %if.end15
  %dma_range_map.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %1 = ptrtoint ptr %dma_range_map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_range_map.i.i.i, align 8
  %tobool1.not.i.i.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.dma_direct_to_page.exit_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.dma_direct_to_page.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_direct_to_page.exit

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %shl.i.i.i = and i32 %dma_addr, -4096
  %size16.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %size16.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %size16.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not17.i.i.i.i = icmp eq i64 %4, 0
  br i1 %tobool.not17.i.i.i.i, label %if.then.i.i.i.dma_direct_to_page.exit_crit_edge, label %if.then.i.i.i.for.body.i.i.i.i_crit_edge

if.then.i.i.i.for.body.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i
  br label %for.body.i.i.i.i

if.then.i.i.i.dma_direct_to_page.exit_crit_edge:  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_direct_to_page.exit

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then.i.i.i.for.body.i.i.i.i_crit_edge
  %5 = phi i64 [ %12, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %4, %if.then.i.i.i.for.body.i.i.i.i_crit_edge ]
  %m.018.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %2, %if.then.i.i.i.for.body.i.i.i.i_crit_edge ]
  %dma_start.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %dma_start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_start.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i.i, i32 %7)
  %cmp.not.i.i.i.i = icmp ult i32 %shl.i.i.i, %7
  br i1 %cmp.not.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %sub.i.i.i.i = sub i32 %shl.i.i.i, %7
  %conv.i.i.i.i = zext i32 %sub.i.i.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv.i.i.i.i)
  %cmp3.i.i.i.i = icmp ugt i64 %5, %conv.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %if.then.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset.i.i.i.i, align 8
  %10 = trunc i64 %9 to i32
  %conv6.i.i.i.i = add i32 %shl.i.i.i, %10
  br label %dma_direct_to_page.exit

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %incdec.ptr.i.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i.i.i, i32 1
  %size.i.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i.i.i, i32 1, i32 2
  %11 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq i64 %12, 0
  br i1 %tobool.not.i.i.i.i, label %for.inc.i.i.i.i.dma_direct_to_page.exit_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.dma_direct_to_page.exit_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_direct_to_page.exit

dma_direct_to_page.exit:                          ; preds = %for.inc.i.i.i.i.dma_direct_to_page.exit_crit_edge, %if.then.i.i.i.i, %if.then.i.i.i.dma_direct_to_page.exit_crit_edge, %land.lhs.true.i.i.i.dma_direct_to_page.exit_crit_edge, %if.end15.dma_direct_to_page.exit_crit_edge
  %pfn.0.in.i.i.i = phi i32 [ %dma_addr, %land.lhs.true.i.i.i.dma_direct_to_page.exit_crit_edge ], [ %dma_addr, %if.end15.dma_direct_to_page.exit_crit_edge ], [ %conv6.i.i.i.i, %if.then.i.i.i.i ], [ -1, %if.then.i.i.i.dma_direct_to_page.exit_crit_edge ], [ -1, %for.inc.i.i.i.i.dma_direct_to_page.exit_crit_edge ]
  %shr.i = lshr i32 %pfn.0.in.i.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i, %13
  %add.ptr.i = getelementptr %struct.page, ptr %0, i32 %sub.i
  br label %cleanup

cleanup:                                          ; preds = %dma_direct_to_page.exit, %entry.cleanup_crit_edge
  %add.ptr.i.sink = phi ptr [ %add.ptr.i, %dma_direct_to_page.exit ], [ %cpu_addr, %entry.cleanup_crit_edge ]
  tail call void @dma_free_contiguous(ptr noundef %dev, ptr noundef %add.ptr.i.sink, i32 noundef %size) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_contiguous(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dma_direct_alloc_pages(ptr noundef %dev, i32 noundef %size, ptr nocapture noundef writeonly %dma_handle, i32 noundef %dir, i32 noundef %gfp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call fastcc ptr @__dma_direct_alloc_pages(ptr noundef %dev, i32 noundef %size, i32 noundef %gfp)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  %0 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call3, align 4
  %shr.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %shr.i, label %if.end5.if.end10_crit_edge [
    i32 2, label %if.end5.do.end_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

is_highmem_idx.exit:                              ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not = icmp eq i32 %3, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.do.end_crit_edge, label %is_highmem_idx.exit.if.end10_crit_edge

is_highmem_idx.exit.if.end10_crit_edge:           ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

is_highmem_idx.exit.do.end_crit_edge:             ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %is_highmem_idx.exit.do.end_crit_edge, %if.end5.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str) #13
  tail call void @dma_free_contiguous(ptr noundef %dev, ptr noundef nonnull %call3, i32 noundef %size) #10
  br label %cleanup

if.end10:                                         ; preds = %is_highmem_idx.exit.if.end10_crit_edge, %if.end5.if.end10_crit_edge
  %call11 = tail call ptr @page_address(ptr noundef nonnull %call3) #10
  %4 = call ptr @memset(ptr %call11, i32 0, i32 %size)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %5 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %6 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %6
  %shl = shl i32 %add, 12
  %shr.i.i = and i32 %add, 1048575
  %tobool.not.i.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i.i, label %if.end10.phys_to_dma_direct.exit_crit_edge, label %land.lhs.true.i.i.i

if.end10.phys_to_dma_direct.exit_crit_edge:       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma_direct.exit

land.lhs.true.i.i.i:                              ; preds = %if.end10
  %dma_range_map.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %7 = ptrtoint ptr %dma_range_map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_range_map.i.i.i, align 8
  %tobool1.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.phys_to_dma_direct.exit_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.phys_to_dma_direct.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma_direct.exit

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %size17.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %size17.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %size17.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.not18.i.i.i.i = icmp eq i64 %10, 0
  br i1 %tobool.not18.i.i.i.i, label %if.then.i.i.i.phys_to_dma_direct.exit_crit_edge, label %if.then.i.i.i.for.body.i.i.i.i_crit_edge

if.then.i.i.i.for.body.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i
  br label %for.body.i.i.i.i

if.then.i.i.i.phys_to_dma_direct.exit_crit_edge:  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma_direct.exit

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then.i.i.i.for.body.i.i.i.i_crit_edge
  %11 = phi i64 [ %18, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %10, %if.then.i.i.i.for.body.i.i.i.i_crit_edge ]
  %m.019.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %8, %if.then.i.i.i.for.body.i.i.i.i_crit_edge ]
  %12 = ptrtoint ptr %m.019.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m.019.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %13)
  %cmp.not.i.i.i.i = icmp ult i32 %shl, %13
  br i1 %cmp.not.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %sub.i.i.i.i = sub i32 %shl, %13
  %conv.i.i.i.i = zext i32 %sub.i.i.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %conv.i.i.i.i)
  %cmp3.i.i.i.i = icmp ugt i64 %11, %conv.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %if.then.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.019.i.i.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %offset.i.i.i.i, align 8
  %16 = trunc i64 %15 to i32
  %conv7.i.i.i.i = sub i32 %shl, %16
  %phi.bo.i.i.i = lshr i32 %conv7.i.i.i.i, 12
  br label %phys_to_dma_direct.exit

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %incdec.ptr.i.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i.i.i, i32 1
  %size.i.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i.i.i, i32 1, i32 2
  %17 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %size.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq i64 %18, 0
  br i1 %tobool.not.i.i.i.i, label %for.inc.i.i.i.i.phys_to_dma_direct.exit_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.phys_to_dma_direct.exit_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma_direct.exit

phys_to_dma_direct.exit:                          ; preds = %for.inc.i.i.i.i.phys_to_dma_direct.exit_crit_edge, %if.then.i.i.i.i, %if.then.i.i.i.phys_to_dma_direct.exit_crit_edge, %land.lhs.true.i.i.i.phys_to_dma_direct.exit_crit_edge, %if.end10.phys_to_dma_direct.exit_crit_edge
  %pfn.addr.0.i.i.i = phi i32 [ %shr.i.i, %land.lhs.true.i.i.i.phys_to_dma_direct.exit_crit_edge ], [ %shr.i.i, %if.end10.phys_to_dma_direct.exit_crit_edge ], [ %phi.bo.i.i.i, %if.then.i.i.i.i ], [ 1048575, %if.then.i.i.i.phys_to_dma_direct.exit_crit_edge ], [ 1048575, %for.inc.i.i.i.i.phys_to_dma_direct.exit_crit_edge ]
  %shl2.i.i.i = shl nuw i32 %pfn.addr.0.i.i.i, 12
  %19 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shl2.i.i.i, ptr %dma_handle, align 4
  br label %cleanup

cleanup:                                          ; preds = %phys_to_dma_direct.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ %call3, %phys_to_dma_direct.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_direct_free_pages(ptr noundef %dev, i32 noundef %size, ptr noundef %page, i32 noundef %dma_addr, i32 noundef %dir) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @page_address(ptr noundef %page) #10
  tail call void @dma_free_contiguous(ptr noundef %dev, ptr noundef %page, i32 noundef %size) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_direct_map_sg(ptr noundef %dev, ptr noundef %sgl, i32 noundef %nents, i32 noundef %dir, i32 noundef %attrs) local_unnamed_addr #2 align 64 {
entry:
  %dma_addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nents)
  %cmp29 = icmp sgt i32 %nents, 0
  br i1 %cmp29, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not.i.i.i = icmp eq ptr %dev, null
  %dma_range_map.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %dma_mask.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 18
  %bus_dma_limit.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %sg.031 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call5, %if.end.for.body_crit_edge ]
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %sg.031 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sg.031, align 4
  %and.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !52

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !54
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %1, -4
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.031, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.031, i32 0, i32 2
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %and.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %7
  %shl.i = shl i32 %add.i, 12
  %add1.i = add i32 %shl.i, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr.i) #10
  %shr.i.i = lshr i32 %add1.i, 12
  br i1 %tobool.not.i.i.i, label %sg_page.exit.phys_to_dma.exit.i_crit_edge, label %land.lhs.true.i.i.i

sg_page.exit.phys_to_dma.exit.i_crit_edge:        ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma.exit.i

land.lhs.true.i.i.i:                              ; preds = %sg_page.exit
  %8 = ptrtoint ptr %dma_range_map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_range_map.i.i.i, align 8
  %tobool1.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.phys_to_dma.exit.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.phys_to_dma.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %shl.i.i.i = and i32 %add1.i, -4096
  %size17.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %size17.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %size17.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not18.i.i.i.i = icmp eq i64 %11, 0
  br i1 %tobool.not18.i.i.i.i, label %if.then.i.i.i.phys_to_dma.exit.i_crit_edge, label %if.then.i.i.i.for.body.i.i.i.i_crit_edge

if.then.i.i.i.for.body.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i
  br label %for.body.i.i.i.i

if.then.i.i.i.phys_to_dma.exit.i_crit_edge:       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma.exit.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then.i.i.i.for.body.i.i.i.i_crit_edge
  %12 = phi i64 [ %19, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %11, %if.then.i.i.i.for.body.i.i.i.i_crit_edge ]
  %m.019.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %9, %if.then.i.i.i.for.body.i.i.i.i_crit_edge ]
  %13 = ptrtoint ptr %m.019.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %m.019.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i.i, i32 %14)
  %cmp.not.i.i.i.i = icmp ult i32 %shl.i.i.i, %14
  br i1 %cmp.not.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %sub.i.i.i.i = sub i32 %shl.i.i.i, %14
  %conv.i.i.i.i = zext i32 %sub.i.i.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %conv.i.i.i.i)
  %cmp3.i.i.i.i = icmp ugt i64 %12, %conv.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %if.then.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.019.i.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %offset.i.i.i.i, align 8
  %17 = trunc i64 %16 to i32
  %conv7.i.i.i.i = sub i32 %shl.i.i.i, %17
  %phi.bo.i.i.i = lshr i32 %conv7.i.i.i.i, 12
  br label %phys_to_dma.exit.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %incdec.ptr.i.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i.i.i, i32 1
  %size.i.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i.i.i, i32 1, i32 2
  %18 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %size.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq i64 %19, 0
  br i1 %tobool.not.i.i.i.i, label %for.inc.i.i.i.i.phys_to_dma.exit.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.phys_to_dma.exit.i_crit_edge:     ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma.exit.i

phys_to_dma.exit.i:                               ; preds = %for.inc.i.i.i.i.phys_to_dma.exit.i_crit_edge, %if.then.i.i.i.i, %if.then.i.i.i.phys_to_dma.exit.i_crit_edge, %land.lhs.true.i.i.i.phys_to_dma.exit.i_crit_edge, %sg_page.exit.phys_to_dma.exit.i_crit_edge
  %pfn.addr.0.i.i.i = phi i32 [ %shr.i.i, %land.lhs.true.i.i.i.phys_to_dma.exit.i_crit_edge ], [ %shr.i.i, %sg_page.exit.phys_to_dma.exit.i_crit_edge ], [ %phi.bo.i.i.i, %if.then.i.i.i.i ], [ 1048575, %if.then.i.i.i.phys_to_dma.exit.i_crit_edge ], [ 1048575, %for.inc.i.i.i.i.phys_to_dma.exit.i_crit_edge ]
  %and.i.i21 = and i32 %add1.i, 4095
  %shl2.i.i.i = shl nuw i32 %pfn.addr.0.i.i.i, 12
  %add.i.i = or i32 %shl2.i.i.i, %and.i.i21
  %20 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add.i.i, ptr %dma_addr.i, align 4
  %add.i2.i = add i32 %5, -1
  %sub.i.i = add i32 %add.i2.i, %add.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i.i)
  %cmp.i.i = icmp eq i32 %add.i.i, -1
  br i1 %cmp.i.i, label %phys_to_dma.exit.i.land.end.i_crit_edge, label %if.end.i.i, !prof !55

phys_to_dma.exit.i.land.end.i_crit_edge:          ; preds = %phys_to_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i

if.end.i.i:                                       ; preds = %phys_to_dma.exit.i
  %21 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %add.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @min_low_pfn to i32))
  %22 = load i32, ptr @min_low_pfn, align 4
  %shl.i.i = shl i32 %22, 12
  %shr.i.i.i = and i32 %22, 1048575
  br i1 %tobool.not.i.i.i, label %if.end.i.i.phys_to_dma.exit.i.i_crit_edge, label %land.lhs.true.i.i.i4.i

if.end.i.i.phys_to_dma.exit.i.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma.exit.i.i

land.lhs.true.i.i.i4.i:                           ; preds = %if.end.i.i
  %23 = ptrtoint ptr %dma_range_map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_range_map.i.i.i, align 8
  %tobool1.not.i.i.i.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i.i.i.i, label %land.lhs.true.i.i.i4.i.phys_to_dma.exit.i.i_crit_edge, label %if.then.i.i.i5.i

land.lhs.true.i.i.i4.i.phys_to_dma.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma.exit.i.i

if.then.i.i.i5.i:                                 ; preds = %land.lhs.true.i.i.i4.i
  %size17.i.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %size17.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %size17.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %tobool.not18.i.i.i.i.i = icmp eq i64 %26, 0
  br i1 %tobool.not18.i.i.i.i.i, label %if.then.i.i.i5.i.phys_to_dma.exit.i.i_crit_edge, label %if.then.i.i.i5.i.for.body.i.i.i.i.i_crit_edge

if.then.i.i.i5.i.for.body.i.i.i.i.i_crit_edge:    ; preds = %if.then.i.i.i5.i
  br label %for.body.i.i.i.i.i

if.then.i.i.i5.i.phys_to_dma.exit.i.i_crit_edge:  ; preds = %if.then.i.i.i5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma.exit.i.i

for.body.i.i.i.i.i:                               ; preds = %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %if.then.i.i.i5.i.for.body.i.i.i.i.i_crit_edge
  %27 = phi i64 [ %34, %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ %26, %if.then.i.i.i5.i.for.body.i.i.i.i.i_crit_edge ]
  %m.019.i.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i.i, %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ %24, %if.then.i.i.i5.i.for.body.i.i.i.i.i_crit_edge ]
  %28 = ptrtoint ptr %m.019.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %m.019.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %29)
  %cmp.not.i.i.i.i.i = icmp ult i32 %shl.i.i, %29
  br i1 %cmp.not.i.i.i.i.i, label %for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge:   ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %for.body.i.i.i.i.i
  %sub.i.i.i.i.i = sub i32 %shl.i.i, %29
  %conv.i.i.i.i.i = zext i32 %sub.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %conv.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp ugt i64 %27, %conv.i.i.i.i.i
  br i1 %cmp3.i.i.i.i.i, label %if.then.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.019.i.i.i.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %offset.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %offset.i.i.i.i.i, align 8
  %32 = trunc i64 %31 to i32
  %conv7.i.i.i.i.i = sub i32 %shl.i.i, %32
  %phi.bo.i.i.i.i = lshr i32 %conv7.i.i.i.i.i, 12
  br label %phys_to_dma.exit.i.i

for.inc.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge, %for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge
  %incdec.ptr.i.i.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i.i.i.i, i32 1
  %size.i.i.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i.i.i.i, i32 1, i32 2
  %33 = ptrtoint ptr %size.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %size.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq i64 %34, 0
  br i1 %tobool.not.i.i.i.i.i, label %for.inc.i.i.i.i.i.phys_to_dma.exit.i.i_crit_edge, label %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:   ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i.i

for.inc.i.i.i.i.i.phys_to_dma.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma.exit.i.i

phys_to_dma.exit.i.i:                             ; preds = %for.inc.i.i.i.i.i.phys_to_dma.exit.i.i_crit_edge, %if.then.i.i.i.i.i, %if.then.i.i.i5.i.phys_to_dma.exit.i.i_crit_edge, %land.lhs.true.i.i.i4.i.phys_to_dma.exit.i.i_crit_edge, %if.end.i.i.phys_to_dma.exit.i.i_crit_edge
  %pfn.addr.0.i.i.i.i = phi i32 [ %shr.i.i.i, %land.lhs.true.i.i.i4.i.phys_to_dma.exit.i.i_crit_edge ], [ %shr.i.i.i, %if.end.i.i.phys_to_dma.exit.i.i_crit_edge ], [ %phi.bo.i.i.i.i, %if.then.i.i.i.i.i ], [ 1048575, %if.then.i.i.i5.i.phys_to_dma.exit.i.i_crit_edge ], [ 1048575, %for.inc.i.i.i.i.i.phys_to_dma.exit.i.i_crit_edge ]
  %shl2.i.i.i.i = shl nuw i32 %pfn.addr.0.i.i.i.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %shl2.i.i.i.i)
  %cmp2.i.i = icmp ult i32 %21, %shl2.i.i.i.i
  br i1 %cmp2.i.i, label %phys_to_dma.exit.i.i.land.end.i_crit_edge, label %dma_capable.exit.i, !prof !55

phys_to_dma.exit.i.i.land.end.i_crit_edge:        ; preds = %phys_to_dma.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i

dma_capable.exit.i:                               ; preds = %phys_to_dma.exit.i.i
  %conv.i.i = zext i32 %sub.i.i to i64
  %35 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dma_mask.i.i, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %36, align 8
  %39 = ptrtoint ptr %bus_dma_limit.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %bus_dma_limit.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %cmp6.i.i = icmp eq i64 %38, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %cmp10.i.i = icmp eq i64 %40, 0
  %41 = tail call i64 @llvm.umin.i64(i64 %38, i64 %40) #10
  %spec.select.i.i = select i1 %cmp10.i.i, i64 %38, i64 %41
  %cond24.i.i = select i1 %cmp6.i.i, i64 %40, i64 %spec.select.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %cond24.i.i, i64 %conv.i.i)
  %cmp25.i.not.i = icmp ult i64 %cond24.i.i, %conv.i.i
  br i1 %cmp25.i.not.i, label %dma_capable.exit.i.land.end.i_crit_edge, label %if.end, !prof !56

dma_capable.exit.i.land.end.i_crit_edge:          ; preds = %dma_capable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i

land.end.i:                                       ; preds = %dma_capable.exit.i.land.end.i_crit_edge, %phys_to_dma.exit.i.i.land.end.i_crit_edge, %phys_to_dma.exit.i.land.end.i_crit_edge
  %.b1.i = load i1, ptr @dma_direct_map_page.__already_done, align 1
  br i1 %.b1.i, label %land.end.i.dma_direct_map_page.exit.thread_crit_edge, label %if.then18.i, !prof !52

land.end.i.dma_direct_map_page.exit.thread_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_direct_map_page.exit.thread

if.then18.i:                                      ; preds = %land.end.i
  store i1 true, ptr @dma_direct_map_page.__already_done, align 1
  %call28.i = tail call ptr @dev_driver_string(ptr noundef %dev) #10
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %42 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i, label %if.end.i6.i, label %if.then18.i.dev_name.exit.i_crit_edge

if.then18.i.dev_name.exit.i_crit_edge:            ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i6.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i6.i, %if.then18.i.dev_name.exit.i_crit_edge
  %retval.0.i7.i = phi ptr [ %45, %if.end.i6.i ], [ %43, %if.then18.i.dev_name.exit.i_crit_edge ]
  %46 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_mask.i.i, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %47, align 8
  %50 = ptrtoint ptr %bus_dma_limit.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %bus_dma_limit.i.i, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 99, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %call28.i, ptr noundef %retval.0.i7.i, ptr noundef nonnull %dma_addr.i, i32 noundef %5, i64 noundef %49, i64 noundef %51) #10
  br label %dma_direct_map_page.exit.thread

dma_direct_map_page.exit.thread:                  ; preds = %dev_name.exit.i, %land.end.i.dma_direct_map_page.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr.i) #10
  %dma_address23 = getelementptr inbounds %struct.scatterlist, ptr %sg.031, i32 0, i32 3
  %52 = ptrtoint ptr %dma_address23 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %dma_address23, align 4
  br label %cleanup

if.end:                                           ; preds = %dma_capable.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr.i) #10
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.031, i32 0, i32 3
  %53 = ptrtoint ptr %dma_address to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add.i.i, ptr %dma_address, align 4
  %54 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %length, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.031, i32 0, i32 4
  %56 = ptrtoint ptr %dma_length to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %dma_length, align 4
  %inc = add nuw nsw i32 %i.030, 1
  %call5 = tail call ptr @sg_next(ptr noundef %sg.031) #10
  %exitcond.not = icmp eq i32 %inc, %nents
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %dma_direct_map_page.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %dma_direct_map_page.exit.thread ], [ %nents, %entry.cleanup_crit_edge ], [ %nents, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_direct_map_resource(ptr noundef %dev, i32 noundef %paddr, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) local_unnamed_addr #2 align 64 {
entry:
  %dma_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr) #10
  %0 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %paddr, ptr %dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %paddr)
  %cmp.i = icmp eq i32 %paddr, -1
  br i1 %cmp.i, label %entry.do.body_crit_edge, label %dma_capable.exit, !prof !55

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

dma_capable.exit:                                 ; preds = %entry
  %add.i = add i32 %paddr, -1
  %sub.i = add i32 %add.i, %size
  %conv.i = zext i32 %sub.i to i64
  %dma_mask.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 18
  %1 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_mask.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  %bus_dma_limit.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 20
  %5 = ptrtoint ptr %bus_dma_limit.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %bus_dma_limit.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp6.i = icmp eq i64 %4, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp10.i = icmp eq i64 %6, 0
  %7 = tail call i64 @llvm.umin.i64(i64 %4, i64 %6) #10
  %spec.select.i = select i1 %cmp10.i, i64 %4, i64 %7
  %cond24.i = select i1 %cmp6.i, i64 %6, i64 %spec.select.i
  call void @__sanitizer_cov_trace_cmp8(i64 %cond24.i, i64 %conv.i)
  %cmp25.i.not = icmp ult i64 %cond24.i, %conv.i
  br i1 %cmp25.i.not, label %dma_capable.exit.do.body_crit_edge, label %dma_capable.exit.cleanup_crit_edge, !prof !56

dma_capable.exit.cleanup_crit_edge:               ; preds = %dma_capable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

dma_capable.exit.do.body_crit_edge:               ; preds = %dma_capable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %dma_capable.exit.do.body_crit_edge, %entry.do.body_crit_edge
  %.b59 = load i1, ptr @dma_direct_map_resource.__print_once, align 1
  br i1 %.b59, label %do.body.land.end_crit_edge, label %if.then4

do.body.land.end_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dma_direct_map_resource.__print_once, align 1
  %dma_mask = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 18
  %8 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_mask, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  %bus_dma_limit = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 20
  %12 = ptrtoint ptr %bus_dma_limit to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bus_dma_limit, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull %dma_addr, i32 noundef %size, i64 noundef %11, i64 noundef %13) #13
  br label %land.end

land.end:                                         ; preds = %if.then4, %do.body.land.end_crit_edge
  %.b5860 = load i1, ptr @dma_direct_map_resource.__already_done, align 1
  br i1 %.b5860, label %land.end.cleanup_crit_edge, label %if.then18, !prof !52

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dma_direct_map_resource.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 506, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %land.end.cleanup_crit_edge, %dma_capable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then18 ], [ -1, %land.end.cleanup_crit_edge ], [ %paddr, %dma_capable.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_direct_get_sgtable(ptr noundef readonly %dev, ptr noundef %sgt, ptr nocapture noundef readnone %cpu_addr, i32 noundef %dma_addr, i32 noundef %size, i32 noundef %attrs) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %tobool.not.i.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i.i, label %entry.dma_direct_to_page.exit_crit_edge, label %land.lhs.true.i.i.i

entry.dma_direct_to_page.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_direct_to_page.exit

land.lhs.true.i.i.i:                              ; preds = %entry
  %dma_range_map.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %1 = ptrtoint ptr %dma_range_map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_range_map.i.i.i, align 8
  %tobool1.not.i.i.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.dma_direct_to_page.exit_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.dma_direct_to_page.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_direct_to_page.exit

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %shl.i.i.i = and i32 %dma_addr, -4096
  %size16.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %size16.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %size16.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not17.i.i.i.i = icmp eq i64 %4, 0
  br i1 %tobool.not17.i.i.i.i, label %if.then.i.i.i.dma_direct_to_page.exit_crit_edge, label %if.then.i.i.i.for.body.i.i.i.i_crit_edge

if.then.i.i.i.for.body.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i
  br label %for.body.i.i.i.i

if.then.i.i.i.dma_direct_to_page.exit_crit_edge:  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_direct_to_page.exit

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then.i.i.i.for.body.i.i.i.i_crit_edge
  %5 = phi i64 [ %12, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %4, %if.then.i.i.i.for.body.i.i.i.i_crit_edge ]
  %m.018.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %2, %if.then.i.i.i.for.body.i.i.i.i_crit_edge ]
  %dma_start.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %dma_start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_start.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i.i, i32 %7)
  %cmp.not.i.i.i.i = icmp ult i32 %shl.i.i.i, %7
  br i1 %cmp.not.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %sub.i.i.i.i = sub i32 %shl.i.i.i, %7
  %conv.i.i.i.i = zext i32 %sub.i.i.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv.i.i.i.i)
  %cmp3.i.i.i.i = icmp ugt i64 %5, %conv.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %if.then.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset.i.i.i.i, align 8
  %10 = trunc i64 %9 to i32
  %conv6.i.i.i.i = add i32 %shl.i.i.i, %10
  br label %dma_direct_to_page.exit

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %incdec.ptr.i.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i.i.i, i32 1
  %size.i.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i.i.i, i32 1, i32 2
  %11 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq i64 %12, 0
  br i1 %tobool.not.i.i.i.i, label %for.inc.i.i.i.i.dma_direct_to_page.exit_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.dma_direct_to_page.exit_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_direct_to_page.exit

dma_direct_to_page.exit:                          ; preds = %for.inc.i.i.i.i.dma_direct_to_page.exit_crit_edge, %if.then.i.i.i.i, %if.then.i.i.i.dma_direct_to_page.exit_crit_edge, %land.lhs.true.i.i.i.dma_direct_to_page.exit_crit_edge, %entry.dma_direct_to_page.exit_crit_edge
  %pfn.0.in.i.i.i = phi i32 [ %dma_addr, %land.lhs.true.i.i.i.dma_direct_to_page.exit_crit_edge ], [ %dma_addr, %entry.dma_direct_to_page.exit_crit_edge ], [ %conv6.i.i.i.i, %if.then.i.i.i.i ], [ -1, %if.then.i.i.i.dma_direct_to_page.exit_crit_edge ], [ -1, %for.inc.i.i.i.i.dma_direct_to_page.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %call1 = tail call i32 @sg_alloc_table(ptr noundef %sgt, i32 noundef 1, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %dma_direct_to_page.exit.if.end_crit_edge

dma_direct_to_page.exit.if.end_crit_edge:         ; preds = %dma_direct_to_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %dma_direct_to_page.exit
  %shr.i = lshr i32 %pfn.0.in.i.i.i, 12
  %sub.i = sub i32 %shr.i, %13
  %add.ptr.i = getelementptr %struct.page, ptr %0, i32 %sub.i
  %14 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sgt, align 4
  %add = add i32 %size, 4095
  %and = and i32 %add, -4096
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i = and i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !52

do.body5.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !57
  unreachable

do.body11.i.i:                                    ; preds = %if.then
  %and.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !52

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !58
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i = and i32 %17, 3
  %or.i.i = or i32 %and.i.i, %18
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i.i, ptr %15, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 2
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and, ptr %length.i, align 4
  br label %if.end

if.end:                                           ; preds = %sg_set_page.exit, %dma_direct_to_page.exit.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dma_direct_can_mmap(ptr nocapture noundef readnone %dev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_direct_mmap(ptr noundef %dev, ptr noundef %vma, ptr noundef %cpu_addr, i32 noundef %dma_addr, i32 noundef %size, i32 noundef %attrs) local_unnamed_addr #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %0 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_end.i, align 4
  %2 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vma, align 4
  %sub.i = sub i32 %1, %3
  %shr.i = lshr i32 %sub.i, 12
  %add = add i32 %size, 4095
  %shr = lshr i32 %add, 12
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %entry.dma_to_phys.exit_crit_edge, label %land.lhs.true.i.i

entry.dma_to_phys.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_to_phys.exit

land.lhs.true.i.i:                                ; preds = %entry
  %dma_range_map.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %4 = ptrtoint ptr %dma_range_map.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_range_map.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.dma_to_phys.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.dma_to_phys.exit_crit_edge:     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_to_phys.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %shl.i.i = and i32 %dma_addr, -4096
  %size16.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %size16.i.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %size16.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not17.i.i.i = icmp eq i64 %7, 0
  br i1 %tobool.not17.i.i.i, label %if.then.i.i.dma_to_phys.exit_crit_edge, label %if.then.i.i.for.body.i.i.i_crit_edge

if.then.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %for.body.i.i.i

if.then.i.i.dma_to_phys.exit_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_to_phys.exit

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i.for.body.i.i.i_crit_edge
  %8 = phi i64 [ %15, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %7, %if.then.i.i.for.body.i.i.i_crit_edge ]
  %m.018.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %5, %if.then.i.i.for.body.i.i.i_crit_edge ]
  %dma_start.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %dma_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_start.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %10)
  %cmp.not.i.i.i = icmp ult i32 %shl.i.i, %10
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %sub.i.i.i = sub i32 %shl.i.i, %10
  %conv.i.i.i = zext i32 %sub.i.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %conv.i.i.i)
  %cmp3.i.i.i = icmp ugt i64 %8, %conv.i.i.i
  br i1 %cmp3.i.i.i, label %if.then.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %offset.i.i.i, align 8
  %13 = trunc i64 %12 to i32
  %conv6.i.i.i = add i32 %shl.i.i, %13
  br label %dma_to_phys.exit

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %incdec.ptr.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i.i, i32 1
  %size.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i.i, i32 1, i32 2
  %14 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %size.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq i64 %15, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i.dma_to_phys.exit_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.dma_to_phys.exit_crit_edge:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_to_phys.exit

dma_to_phys.exit:                                 ; preds = %for.inc.i.i.i.dma_to_phys.exit_crit_edge, %if.then.i.i.i, %if.then.i.i.dma_to_phys.exit_crit_edge, %land.lhs.true.i.i.dma_to_phys.exit_crit_edge, %entry.dma_to_phys.exit_crit_edge
  %pfn.0.in.i.i = phi i32 [ %dma_addr, %land.lhs.true.i.i.dma_to_phys.exit_crit_edge ], [ %dma_addr, %entry.dma_to_phys.exit_crit_edge ], [ %conv6.i.i.i, %if.then.i.i.i ], [ -1, %if.then.i.i.dma_to_phys.exit_crit_edge ], [ -1, %for.inc.i.i.i.dma_to_phys.exit_crit_edge ]
  %shr2 = lshr i32 %pfn.0.in.i.i, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #10
  %16 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -6, ptr %ret, align 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %17 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vm_page_prot, align 4
  %call3 = tail call i32 @dma_pgprot(ptr noundef %dev, i32 noundef %18, i32 noundef %attrs) #10
  %19 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call3, ptr %vm_page_prot, align 4
  %call5 = call i32 @dma_mmap_from_dev_coherent(ptr noundef %dev, ptr noundef %vma, ptr noundef %cpu_addr, i32 noundef %size, ptr noundef nonnull %ret) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %dma_to_phys.exit
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ret, align 4
  br label %cleanup

if.end:                                           ; preds = %dma_to_phys.exit
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %22 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vm_pgoff, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %23)
  %cmp.not = icmp ule i32 %shr, %23
  %sub = sub i32 %shr, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %sub)
  %cmp11 = icmp ugt i32 %shr.i, %sub
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp11
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vma, align 4
  %add15 = add i32 %23, %shr2
  %shl = and i32 %sub.i, -4096
  %26 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vm_page_prot, align 4
  %call17 = call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %25, i32 noundef %add15, i32 noundef %shl, i32 noundef %27) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %21, %if.then ], [ %call17, %if.end13 ], [ -6, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_from_dev_coherent(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_direct_supported(ptr noundef readonly %dev, i64 noundef %mask) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_pfn to i32))
  %0 = load i32, ptr @max_pfn, align 4
  %sub = shl i32 %0, 12
  %shl = add i32 %sub, -4096
  %conv = zext i32 %shl to i64
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967294, i64 %mask)
  %cmp = icmp ugt i64 %mask, 4294967294
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @zone_dma_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp2 = icmp eq i32 %1, 64
  br i1 %cmp2, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sh_prom = zext i32 %1 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub5 = xor i64 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i64 [ %sub5, %cond.false ], [ -1, %if.end.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %cond, i64 %conv)
  %cmp6 = icmp ugt i64 %cond, %conv
  %extract.t20 = trunc i64 %cond to i32
  %cond11.off0 = select i1 %cmp6, i32 %shl, i32 %extract.t20
  %shr.i = lshr i32 %cond11.off0, 12
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %cond.end.phys_to_dma.exit_crit_edge, label %land.lhs.true.i.i

cond.end.phys_to_dma.exit_crit_edge:              ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma.exit

land.lhs.true.i.i:                                ; preds = %cond.end
  %dma_range_map.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %2 = ptrtoint ptr %dma_range_map.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_range_map.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.phys_to_dma.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.phys_to_dma.exit_crit_edge:     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %shl.i.i = and i32 %cond11.off0, -4096
  %size17.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %size17.i.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %size17.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not18.i.i.i = icmp eq i64 %5, 0
  br i1 %tobool.not18.i.i.i, label %if.then.i.i.phys_to_dma.exit_crit_edge, label %if.then.i.i.for.body.i.i.i_crit_edge

if.then.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %for.body.i.i.i

if.then.i.i.phys_to_dma.exit_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma.exit

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i.for.body.i.i.i_crit_edge
  %6 = phi i64 [ %13, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %5, %if.then.i.i.for.body.i.i.i_crit_edge ]
  %m.019.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %3, %if.then.i.i.for.body.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %m.019.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m.019.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %8)
  %cmp.not.i.i.i = icmp ult i32 %shl.i.i, %8
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %sub.i.i.i = sub i32 %shl.i.i, %8
  %conv.i.i.i = zext i32 %sub.i.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %conv.i.i.i)
  %cmp3.i.i.i = icmp ugt i64 %6, %conv.i.i.i
  br i1 %cmp3.i.i.i, label %if.then.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.019.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %offset.i.i.i, align 8
  %11 = trunc i64 %10 to i32
  %conv7.i.i.i = sub i32 %shl.i.i, %11
  %phi.bo.i.i = lshr i32 %conv7.i.i.i, 12
  br label %phys_to_dma.exit

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %incdec.ptr.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i.i, i32 1
  %size.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i.i, i32 1, i32 2
  %12 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %size.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq i64 %13, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i.phys_to_dma.exit_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.phys_to_dma.exit_crit_edge:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phys_to_dma.exit

phys_to_dma.exit:                                 ; preds = %for.inc.i.i.i.phys_to_dma.exit_crit_edge, %if.then.i.i.i, %if.then.i.i.phys_to_dma.exit_crit_edge, %land.lhs.true.i.i.phys_to_dma.exit_crit_edge, %cond.end.phys_to_dma.exit_crit_edge
  %pfn.addr.0.i.i = phi i32 [ %shr.i, %land.lhs.true.i.i.phys_to_dma.exit_crit_edge ], [ %shr.i, %cond.end.phys_to_dma.exit_crit_edge ], [ %phi.bo.i.i, %if.then.i.i.i ], [ 1048575, %if.then.i.i.phys_to_dma.exit_crit_edge ], [ 1048575, %for.inc.i.i.i.phys_to_dma.exit_crit_edge ]
  %and.i = and i32 %cond11.off0, 4095
  %shl2.i.i = shl nuw i32 %pfn.addr.0.i.i, 12
  %add.i = or i32 %shl2.i.i, %and.i
  %conv13 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv13, i64 %mask)
  %cmp14 = icmp ule i64 %conv13, %mask
  %conv15 = zext i1 %cmp14 to i32
  br label %cleanup

cleanup:                                          ; preds = %phys_to_dma.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv15, %phys_to_dma.exit ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dma_direct_max_mapping_size(ptr nocapture noundef readnone %dev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -1
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dma_direct_need_sync(ptr noundef readonly %dev, i32 noundef %dma_addr) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %entry.dma_to_phys.exit_crit_edge, label %land.lhs.true.i.i

entry.dma_to_phys.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_to_phys.exit

land.lhs.true.i.i:                                ; preds = %entry
  %dma_range_map.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %dma_range_map.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_range_map.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.dma_to_phys.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.dma_to_phys.exit_crit_edge:     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_to_phys.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %shl.i.i = and i32 %dma_addr, -4096
  %size16.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %size16.i.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %size16.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not17.i.i.i = icmp eq i64 %3, 0
  br i1 %tobool.not17.i.i.i, label %if.then.i.i.dma_to_phys.exit_crit_edge, label %if.then.i.i.for.body.i.i.i_crit_edge

if.then.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %for.body.i.i.i

if.then.i.i.dma_to_phys.exit_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_to_phys.exit

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i.for.body.i.i.i_crit_edge
  %4 = phi i64 [ %8, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %3, %if.then.i.i.for.body.i.i.i_crit_edge ]
  %m.018.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %1, %if.then.i.i.for.body.i.i.i_crit_edge ]
  %dma_start.i.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %dma_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_start.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %6)
  %cmp.not.i.i.i = icmp ult i32 %shl.i.i, %6
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %sub.i.i.i = sub i32 %shl.i.i, %6
  %conv.i.i.i = zext i32 %sub.i.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %conv.i.i.i)
  %cmp3.i.i.i = icmp ugt i64 %4, %conv.i.i.i
  br i1 %cmp3.i.i.i, label %land.lhs.true.i.i.i.dma_to_phys.exit_crit_edge, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

land.lhs.true.i.i.i.dma_to_phys.exit_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_to_phys.exit

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %incdec.ptr.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i.i, i32 1
  %size.i.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i.i, i32 1, i32 2
  %7 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %size.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq i64 %8, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i.dma_to_phys.exit_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.dma_to_phys.exit_crit_edge:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_to_phys.exit

dma_to_phys.exit:                                 ; preds = %for.inc.i.i.i.dma_to_phys.exit_crit_edge, %land.lhs.true.i.i.i.dma_to_phys.exit_crit_edge, %if.then.i.i.dma_to_phys.exit_crit_edge, %land.lhs.true.i.i.dma_to_phys.exit_crit_edge, %entry.dma_to_phys.exit_crit_edge
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_direct_set_offset(ptr noundef %dev, i32 noundef %cpu_start, i32 noundef %dma_start, i64 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %cpu_start to i64
  %conv1 = zext i32 %dma_start to i64
  %sub = sub nsw i64 %conv, %conv1
  %dma_range_map = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %dma_range_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_range_map, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %cpu_start, i32 %dma_start)
  %tobool2.not = icmp eq i32 %cpu_start, %dma_start
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 48) #14
  %tobool5.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cpu_start, ptr %call7.i.i.i, align 8
  %dma_start10 = getelementptr inbounds %struct.bus_dma_region, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %dma_start10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dma_start, ptr %dma_start10, align 4
  %offset12 = getelementptr inbounds %struct.bus_dma_region, ptr %call7.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %offset12 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %sub, ptr %offset12, align 8
  %size14 = getelementptr inbounds %struct.bus_dma_region, ptr %call7.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %size14 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %size, ptr %size14, align 8
  %7 = ptrtoint ptr %dma_range_map to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i, ptr %dma_range_map, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end7 ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_contiguous(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !19, !21, !22, !23, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !39, !40}
!llvm.named.register.sp = !{!41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @zone_dma_bits, !1, !"zone_dma_bits", i1 false, i1 false}
!1 = !{!"../kernel/dma/direct.c", i32 23, i32 14}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/dma/direct.c", i32 383, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @dma_direct_alloc_pages._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @dma_direct_alloc_pages._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"__print_once", i1 false, i1 false}
!11 = !{!"../kernel/dma/direct.c", i32 503, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @dma_direct_map_resource._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @dma_direct_map_resource._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../kernel/dma/direct.c", i32 506, i32 3}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../kernel/dma/direct.c", i32 615, i32 3}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dma_direct_set_offset._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @dma_direct_set_offset._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../kernel/dma/direct.c", i32 175, i32 6}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../kernel/dma/direct.c", i32 124, i32 2}
!28 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/dma/direct.c", i32 93, i32 3}
!32 = distinct !{null, !31, !"_rs", i1 false, i1 false}
!33 = !{ptr @__func__.dma_set_encrypted, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @dma_set_encrypted._entry, !31, !"_entry", i1 false, i1 false}
!36 = !{ptr @dma_set_encrypted._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../kernel/dma/direct.h", i32 97, i32 3}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!41 = !{!"sp"}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i32 0, i32 33}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i32 12, i32 33}
!54 = !{i64 2153835944, i64 2153836436, i64 2153835981, i64 2153836037, i64 2153836071, i64 2153836095, i64 2153836136, i64 2153836157, i64 2153836185, i64 2153836219}
!55 = !{!"branch_weights", i32 1073205, i32 2146410443}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{i64 2153832386, i64 2153832878, i64 2153832423, i64 2153832479, i64 2153832513, i64 2153832537, i64 2153832578, i64 2153832599, i64 2153832627, i64 2153832661}
!58 = !{i64 2153833996, i64 2153834488, i64 2153834033, i64 2153834089, i64 2153834123, i64 2153834147, i64 2153834188, i64 2153834209, i64 2153834237, i64 2153834271}
