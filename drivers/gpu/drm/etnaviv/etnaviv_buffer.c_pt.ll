; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/etnaviv/etnaviv_buffer.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_buffer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.etnaviv_gpu = type { ptr, ptr, ptr, %struct.mutex, %struct.etnaviv_chip_identity, i32, ptr, %struct.drm_gpu_scheduler, i8, i8, %struct.etnaviv_cmdbuf, i32, [1 x i32], [30 x %struct.etnaviv_event], %struct.completion, %struct.spinlock, i32, %struct.mutex, %struct.idr, i32, i32, %struct.wait_queue_head, i64, %struct.spinlock, %struct.work_struct, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.etnaviv_chip_identity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_event = type { ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.etnaviv_iommu_context = type { %struct.kref, ptr, %struct.mutex, %struct.list_head, %struct.drm_mm, i32, %struct.etnaviv_vram_mapping }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.etnaviv_vram_mapping = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.drm_mm_node, i32, i32 }
%struct.etnaviv_iommu_global = type { ptr, i32, ptr, i32, %struct.mutex, ptr, i32, i32, %union.anon.90 }
%union.anon.90 = type { %struct.anon.92 }
%struct.anon.92 = type { ptr, i32, %struct.spinlock, [16 x i32] }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/etnaviv/etnaviv_buffer.c\00", [55 x i8] zeroinitializer }, align 32
@etnaviv_buffer_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016stream link to 0x%08x @ 0x%08x %p\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"etnaviv_buffer_queue\00", [43 x i8] zeroinitializer }, align 32
@etnaviv_buffer_queue._entry_ptr = internal global ptr @etnaviv_buffer_queue._entry, section ".printk_index", align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cmd \00", [27 x i8] zeroinitializer }, align 32
@etnaviv_buffer_queue._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016link op: %p\0A\00", [17 x i8] zeroinitializer }, align 32
@etnaviv_buffer_queue._entry_ptr.7 = internal global ptr @etnaviv_buffer_queue._entry.5, section ".printk_index", align 4
@etnaviv_buffer_queue._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016addr: 0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@etnaviv_buffer_queue._entry_ptr.10 = internal global ptr @etnaviv_buffer_queue._entry.8, section ".printk_index", align 4
@etnaviv_buffer_queue._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016back: 0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@etnaviv_buffer_queue._entry_ptr.13 = internal global ptr @etnaviv_buffer_queue._entry.11, section ".printk_index", align 4
@etnaviv_buffer_queue._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016event: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@etnaviv_buffer_queue._entry_ptr.16 = internal global ptr @etnaviv_buffer_queue._entry.14, section ".printk_index", align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@etnaviv_buffer_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 124, ptr @.str.3, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"virt %p phys 0x%08x free 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"etnaviv_buffer_dump\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@etnaviv_buffer_dump._entry_ptr = internal global ptr @etnaviv_buffer_dump._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 166, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 512, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 518, i32 18 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 518, i32 29 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 521, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 522, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 523, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 524, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [44 x i8] c"../drivers/gpu/drm/etnaviv/etnaviv_buffer.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 121, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @etnaviv_buffer_dump._entry, ptr @etnaviv_buffer_dump._entry_ptr, ptr @etnaviv_buffer_queue._entry, ptr @etnaviv_buffer_queue._entry.11, ptr @etnaviv_buffer_queue._entry.14, ptr @etnaviv_buffer_queue._entry.5, ptr @etnaviv_buffer_queue._entry.8, ptr @etnaviv_buffer_queue._entry_ptr, ptr @etnaviv_buffer_queue._entry_ptr.10, ptr @etnaviv_buffer_queue._entry_ptr.13, ptr @etnaviv_buffer_queue._entry_ptr.16, ptr @etnaviv_buffer_queue._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_buffer_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_buffer_queue._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_buffer_queue._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_buffer_queue._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_buffer_queue._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_buffer_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @etnaviv_buffer_init(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 3, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !42

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 166, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %user_size.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 4
  %1 = ptrtoint ptr %user_size.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %user_size.i, align 4
  %size.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 3
  %2 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i.i.not = icmp eq i32 %3, 0
  br i1 %cmp.not.i.i.not, label %do.body3.i.i, label %CMD_WAIT.exit, !prof !42

do.body3.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_WAIT.exit:                                    ; preds = %if.end
  %buffer1 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10
  %vaddr1.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 2
  %4 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vaddr1.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 939524296, ptr %5, align 4
  %7 = ptrtoint ptr %user_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %user_size.i, align 4
  %add.i.i = add i32 %8, 4
  store i32 %add.i.i, ptr %user_size.i, align 4
  %mmu_context = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 30
  %9 = ptrtoint ptr %mmu_context to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmu_context, align 4
  %cmdbuf_mapping = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %10, i32 0, i32 6
  %call25 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %buffer1, ptr noundef %cmdbuf_mapping) #4
  %11 = ptrtoint ptr %user_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %user_size.i, align 4
  %add.i38 = add i32 %12, 7
  %and.i39 = and i32 %add.i38, -8
  store i32 %and.i39, ptr %user_size.i, align 4
  %13 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i39, i32 %14)
  %cmp.not.i.i41 = icmp ult i32 %and.i39, %14
  br i1 %cmp.not.i.i41, label %OUT.exit.i, label %do.body3.i.i42, !prof !44

do.body3.i.i42:                                   ; preds = %CMD_WAIT.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i:                                       ; preds = %CMD_WAIT.exit
  %15 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vaddr1.i.i, align 4
  %div15.i.i44 = lshr exact i32 %and.i39, 2
  %arrayidx.i.i45 = getelementptr i32, ptr %16, i32 %div15.i.i44
  %17 = ptrtoint ptr %arrayidx.i.i45 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1073741826, ptr %arrayidx.i.i45, align 4
  %18 = ptrtoint ptr %user_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %user_size.i, align 4
  %add.i.i46 = add i32 %19, 4
  store i32 %add.i.i46, ptr %user_size.i, align 4
  %20 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i46, i32 %21)
  %cmp.not.i8.i = icmp ult i32 %add.i.i46, %21
  br i1 %cmp.not.i8.i, label %CMD_LINK.exit, label %do.body3.i9.i, !prof !44

do.body3.i9.i:                                    ; preds = %OUT.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LINK.exit:                                    ; preds = %OUT.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i32 %call25, -4
  %sub = add i32 %add, %12
  %22 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vaddr1.i.i, align 4
  %div15.i11.i = lshr i32 %add.i.i46, 2
  %arrayidx.i12.i = getelementptr i32, ptr %23, i32 %div15.i11.i
  %24 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %arrayidx.i12.i, align 4
  %25 = ptrtoint ptr %user_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %user_size.i, align 4
  %add.i13.i = add i32 %26, 4
  store i32 %add.i13.i, ptr %user_size.i, align 4
  %div36 = lshr i32 %add.i13.i, 3
  %conv = trunc i32 %div36 to i16
  ret i16 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_cmdbuf_get_va(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @etnaviv_buffer_config_mmuv2(ptr noundef %gpu, i32 noundef %mtlb_addr, i32 noundef %safe_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 3, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !42

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 183, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %user_size = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 4
  %1 = ptrtoint ptr %user_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %user_size, align 4
  %features = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 5
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end.if.end27_crit_edge, label %if.then26

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then26:                                        ; preds = %if.end
  %4 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %user_size, align 4
  %add.i = add i32 %5, 7
  %and.i = and i32 %add.i, -8
  store i32 %and.i, ptr %user_size, align 4
  %size.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 3
  %6 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %7)
  %cmp.not.i.i = icmp ult i32 %and.i, %7
  br i1 %cmp.not.i.i, label %OUT.exit.i, label %do.body3.i.i, !prof !44

do.body3.i.i:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i:                                       ; preds = %if.then26
  %vaddr1.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 2
  %8 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vaddr1.i.i, align 4
  %div15.i.i = lshr exact i32 %and.i, 2
  %arrayidx.i.i = getelementptr i32, ptr %9, i32 %div15.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 134286848, ptr %arrayidx.i.i, align 4
  %11 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %user_size, align 4
  %add.i.i = add i32 %12, 4
  store i32 %add.i.i, ptr %user_size, align 4
  %13 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %14)
  %cmp.not.i8.i = icmp ult i32 %add.i.i, %14
  br i1 %cmp.not.i8.i, label %CMD_LOAD_STATE.exit, label %do.body3.i9.i, !prof !44

do.body3.i9.i:                                    ; preds = %OUT.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit:                              ; preds = %OUT.exit.i
  %15 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vaddr1.i.i, align 4
  %div15.i11.i = lshr i32 %add.i.i, 2
  %arrayidx.i12.i = getelementptr i32, ptr %16, i32 %div15.i11.i
  %17 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx.i12.i, align 4
  %18 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %user_size, align 4
  %add.i61 = add i32 %19, 11
  %and.i62 = and i32 %add.i61, -8
  store i32 %and.i62, ptr %user_size, align 4
  %20 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i62, i32 %21)
  %cmp.not.i.i64 = icmp ult i32 %and.i62, %21
  br i1 %cmp.not.i.i64, label %OUT.exit.i71, label %do.body3.i.i65, !prof !44

do.body3.i.i65:                                   ; preds = %CMD_LOAD_STATE.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i71:                                     ; preds = %CMD_LOAD_STATE.exit
  %22 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vaddr1.i.i, align 4
  %div15.i.i67 = lshr exact i32 %and.i62, 2
  %arrayidx.i.i68 = getelementptr i32, ptr %23, i32 %div15.i.i67
  %24 = ptrtoint ptr %arrayidx.i.i68 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 134283361, ptr %arrayidx.i.i68, align 4
  %25 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %user_size, align 4
  %add.i.i69 = add i32 %26, 4
  store i32 %add.i.i69, ptr %user_size, align 4
  %27 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i69, i32 %28)
  %cmp.not.i8.i70 = icmp ult i32 %add.i.i69, %28
  br i1 %cmp.not.i8.i70, label %CMD_LOAD_STATE.exit76, label %do.body3.i9.i72, !prof !44

do.body3.i9.i72:                                  ; preds = %OUT.exit.i71
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit76:                            ; preds = %OUT.exit.i71
  %29 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vaddr1.i.i, align 4
  %div15.i11.i73 = lshr i32 %add.i.i69, 2
  %arrayidx.i12.i74 = getelementptr i32, ptr %30, i32 %div15.i11.i73
  %31 = ptrtoint ptr %arrayidx.i12.i74 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mtlb_addr, ptr %arrayidx.i12.i74, align 4
  %32 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %user_size, align 4
  %add.i78 = add i32 %33, 11
  %and.i79 = and i32 %add.i78, -8
  store i32 %and.i79, ptr %user_size, align 4
  %34 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i79, i32 %35)
  %cmp.not.i.i81 = icmp ult i32 %and.i79, %35
  br i1 %cmp.not.i.i81, label %OUT.exit.i88, label %do.body3.i.i82, !prof !44

do.body3.i.i82:                                   ; preds = %CMD_LOAD_STATE.exit76
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i88:                                     ; preds = %CMD_LOAD_STATE.exit76
  %36 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vaddr1.i.i, align 4
  %div15.i.i84 = lshr exact i32 %and.i79, 2
  %arrayidx.i.i85 = getelementptr i32, ptr %37, i32 %div15.i.i84
  %38 = ptrtoint ptr %arrayidx.i.i85 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 134283360, ptr %arrayidx.i.i85, align 4
  %39 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %user_size, align 4
  %add.i.i86 = add i32 %40, 4
  store i32 %add.i.i86, ptr %user_size, align 4
  %41 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i86, i32 %42)
  %cmp.not.i8.i87 = icmp ult i32 %add.i.i86, %42
  br i1 %cmp.not.i8.i87, label %CMD_LOAD_STATE.exit93, label %do.body3.i9.i89, !prof !44

do.body3.i9.i89:                                  ; preds = %OUT.exit.i88
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit93:                            ; preds = %OUT.exit.i88
  %43 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vaddr1.i.i, align 4
  %div15.i11.i90 = lshr i32 %add.i.i86, 2
  %arrayidx.i12.i91 = getelementptr i32, ptr %44, i32 %div15.i11.i90
  %45 = ptrtoint ptr %arrayidx.i12.i91 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %safe_addr, ptr %arrayidx.i12.i91, align 4
  %46 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %user_size, align 4
  %add.i.i94 = add i32 %47, 11
  %and.i.i = and i32 %add.i.i94, -8
  store i32 %and.i.i, ptr %user_size, align 4
  %48 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %49)
  %cmp.not.i.i.i = icmp ult i32 %and.i.i, %49
  br i1 %cmp.not.i.i.i, label %OUT.exit.i.i, label %do.body3.i.i.i, !prof !44

do.body3.i.i.i:                                   ; preds = %CMD_LOAD_STATE.exit93
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i.i:                                     ; preds = %CMD_LOAD_STATE.exit93
  %50 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vaddr1.i.i, align 4
  %div15.i.i.i = lshr exact i32 %and.i.i, 2
  %arrayidx.i.i.i = getelementptr i32, ptr %51, i32 %div15.i.i.i
  %52 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 134286850, ptr %arrayidx.i.i.i, align 4
  %53 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %user_size, align 4
  %add.i.i.i = add i32 %54, 4
  store i32 %add.i.i.i, ptr %user_size, align 4
  %55 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %56)
  %cmp.not.i8.i.i = icmp ult i32 %add.i.i.i, %56
  br i1 %cmp.not.i8.i.i, label %CMD_SEM.exit, label %do.body3.i9.i.i, !prof !44

do.body3.i9.i.i:                                  ; preds = %OUT.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_SEM.exit:                                     ; preds = %OUT.exit.i.i
  %57 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vaddr1.i.i, align 4
  %div15.i11.i.i = lshr i32 %add.i.i.i, 2
  %arrayidx.i12.i.i = getelementptr i32, ptr %58, i32 %div15.i11.i.i
  %59 = ptrtoint ptr %arrayidx.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1793, ptr %arrayidx.i12.i.i, align 4
  %60 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %user_size, align 4
  %add.i96 = add i32 %61, 11
  %and.i97 = and i32 %add.i96, -8
  store i32 %and.i97, ptr %user_size, align 4
  %62 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i97, i32 %63)
  %cmp.not.i.i99 = icmp ult i32 %and.i97, %63
  br i1 %cmp.not.i.i99, label %OUT.exit.i105, label %do.body3.i.i100, !prof !44

do.body3.i.i100:                                  ; preds = %CMD_SEM.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i105:                                    ; preds = %CMD_SEM.exit
  %64 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vaddr1.i.i, align 4
  %div15.i.i102 = lshr exact i32 %and.i97, 2
  %arrayidx.i.i103 = getelementptr i32, ptr %65, i32 %div15.i.i102
  %66 = ptrtoint ptr %arrayidx.i.i103 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1207959552, ptr %arrayidx.i.i103, align 4
  %67 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %user_size, align 4
  %add.i.i104 = add i32 %68, 4
  store i32 %add.i.i104, ptr %user_size, align 4
  %69 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i104, i32 %70)
  %cmp.not.i3.i = icmp ult i32 %add.i.i104, %70
  br i1 %cmp.not.i3.i, label %CMD_STALL.exit, label %do.body3.i4.i, !prof !44

do.body3.i4.i:                                    ; preds = %OUT.exit.i105
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_STALL.exit:                                   ; preds = %OUT.exit.i105
  call void @__sanitizer_cov_trace_pc() #6
  %71 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vaddr1.i.i, align 4
  %div15.i6.i = lshr i32 %add.i.i104, 2
  %arrayidx.i7.i = getelementptr i32, ptr %72, i32 %div15.i6.i
  %73 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1793, ptr %arrayidx.i7.i, align 4
  %74 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %user_size, align 4
  %add.i8.i = add i32 %75, 4
  store i32 %add.i8.i, ptr %user_size, align 4
  br label %if.end27

if.end27:                                         ; preds = %CMD_STALL.exit, %if.end.if.end27_crit_edge
  %76 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %features, align 4
  %and30 = and i32 %77, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end27.if.end34_crit_edge, label %if.then32

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then32:                                        ; preds = %if.end27
  %78 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %user_size, align 4
  %add.i107 = add i32 %79, 7
  %and.i108 = and i32 %add.i107, -8
  store i32 %and.i108, ptr %user_size, align 4
  %size.i.i109 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 3
  %80 = ptrtoint ptr %size.i.i109 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %size.i.i109, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i108, i32 %81)
  %cmp.not.i.i110 = icmp ult i32 %and.i108, %81
  br i1 %cmp.not.i.i110, label %OUT.exit.i117, label %do.body3.i.i111, !prof !44

do.body3.i.i111:                                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i117:                                    ; preds = %if.then32
  %vaddr1.i.i112 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 2
  %82 = ptrtoint ptr %vaddr1.i.i112 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %vaddr1.i.i112, align 4
  %div15.i.i113 = lshr exact i32 %and.i108, 2
  %arrayidx.i.i114 = getelementptr i32, ptr %83, i32 %div15.i.i113
  %84 = ptrtoint ptr %arrayidx.i.i114 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 134286848, ptr %arrayidx.i.i114, align 4
  %85 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %user_size, align 4
  %add.i.i115 = add i32 %86, 4
  store i32 %add.i.i115, ptr %user_size, align 4
  %87 = ptrtoint ptr %size.i.i109 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %size.i.i109, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i115, i32 %88)
  %cmp.not.i8.i116 = icmp ult i32 %add.i.i115, %88
  br i1 %cmp.not.i8.i116, label %CMD_LOAD_STATE.exit122, label %do.body3.i9.i118, !prof !44

do.body3.i9.i118:                                 ; preds = %OUT.exit.i117
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit122:                           ; preds = %OUT.exit.i117
  %89 = ptrtoint ptr %vaddr1.i.i112 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %vaddr1.i.i112, align 4
  %div15.i11.i119 = lshr i32 %add.i.i115, 2
  %arrayidx.i12.i120 = getelementptr i32, ptr %90, i32 %div15.i11.i119
  %91 = ptrtoint ptr %arrayidx.i12.i120 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %arrayidx.i12.i120, align 4
  %92 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %user_size, align 4
  %add.i124 = add i32 %93, 11
  %and.i125 = and i32 %add.i124, -8
  store i32 %and.i125, ptr %user_size, align 4
  %94 = ptrtoint ptr %size.i.i109 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %size.i.i109, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i125, i32 %95)
  %cmp.not.i.i127 = icmp ult i32 %and.i125, %95
  br i1 %cmp.not.i.i127, label %OUT.exit.i134, label %do.body3.i.i128, !prof !44

do.body3.i.i128:                                  ; preds = %CMD_LOAD_STATE.exit122
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i134:                                    ; preds = %CMD_LOAD_STATE.exit122
  %96 = ptrtoint ptr %vaddr1.i.i112 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %vaddr1.i.i112, align 4
  %div15.i.i130 = lshr exact i32 %and.i125, 2
  %arrayidx.i.i131 = getelementptr i32, ptr %97, i32 %div15.i.i130
  %98 = ptrtoint ptr %arrayidx.i.i131 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 134283361, ptr %arrayidx.i.i131, align 4
  %99 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %user_size, align 4
  %add.i.i132 = add i32 %100, 4
  store i32 %add.i.i132, ptr %user_size, align 4
  %101 = ptrtoint ptr %size.i.i109 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %size.i.i109, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i132, i32 %102)
  %cmp.not.i8.i133 = icmp ult i32 %add.i.i132, %102
  br i1 %cmp.not.i8.i133, label %CMD_LOAD_STATE.exit139, label %do.body3.i9.i135, !prof !44

do.body3.i9.i135:                                 ; preds = %OUT.exit.i134
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit139:                           ; preds = %OUT.exit.i134
  %103 = ptrtoint ptr %vaddr1.i.i112 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %vaddr1.i.i112, align 4
  %div15.i11.i136 = lshr i32 %add.i.i132, 2
  %arrayidx.i12.i137 = getelementptr i32, ptr %104, i32 %div15.i11.i136
  %105 = ptrtoint ptr %arrayidx.i12.i137 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %mtlb_addr, ptr %arrayidx.i12.i137, align 4
  %106 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %user_size, align 4
  %add.i141 = add i32 %107, 11
  %and.i142 = and i32 %add.i141, -8
  store i32 %and.i142, ptr %user_size, align 4
  %108 = ptrtoint ptr %size.i.i109 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %size.i.i109, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i142, i32 %109)
  %cmp.not.i.i144 = icmp ult i32 %and.i142, %109
  br i1 %cmp.not.i.i144, label %OUT.exit.i151, label %do.body3.i.i145, !prof !44

do.body3.i.i145:                                  ; preds = %CMD_LOAD_STATE.exit139
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i151:                                    ; preds = %CMD_LOAD_STATE.exit139
  %110 = ptrtoint ptr %vaddr1.i.i112 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %vaddr1.i.i112, align 4
  %div15.i.i147 = lshr exact i32 %and.i142, 2
  %arrayidx.i.i148 = getelementptr i32, ptr %111, i32 %div15.i.i147
  %112 = ptrtoint ptr %arrayidx.i.i148 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 134283360, ptr %arrayidx.i.i148, align 4
  %113 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %user_size, align 4
  %add.i.i149 = add i32 %114, 4
  store i32 %add.i.i149, ptr %user_size, align 4
  %115 = ptrtoint ptr %size.i.i109 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %size.i.i109, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i149, i32 %116)
  %cmp.not.i8.i150 = icmp ult i32 %add.i.i149, %116
  br i1 %cmp.not.i8.i150, label %CMD_LOAD_STATE.exit156, label %do.body3.i9.i152, !prof !44

do.body3.i9.i152:                                 ; preds = %OUT.exit.i151
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit156:                           ; preds = %OUT.exit.i151
  %117 = ptrtoint ptr %vaddr1.i.i112 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %vaddr1.i.i112, align 4
  %div15.i11.i153 = lshr i32 %add.i.i149, 2
  %arrayidx.i12.i154 = getelementptr i32, ptr %118, i32 %div15.i11.i153
  %119 = ptrtoint ptr %arrayidx.i12.i154 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %safe_addr, ptr %arrayidx.i12.i154, align 4
  %120 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %user_size, align 4
  %add.i.i158 = add i32 %121, 11
  %and.i.i159 = and i32 %add.i.i158, -8
  store i32 %and.i.i159, ptr %user_size, align 4
  %122 = ptrtoint ptr %size.i.i109 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %size.i.i109, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i159, i32 %123)
  %cmp.not.i.i.i161 = icmp ult i32 %and.i.i159, %123
  br i1 %cmp.not.i.i.i161, label %OUT.exit.i.i168, label %do.body3.i.i.i162, !prof !44

do.body3.i.i.i162:                                ; preds = %CMD_LOAD_STATE.exit156
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i.i168:                                  ; preds = %CMD_LOAD_STATE.exit156
  %124 = ptrtoint ptr %vaddr1.i.i112 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %vaddr1.i.i112, align 4
  %div15.i.i.i164 = lshr exact i32 %and.i.i159, 2
  %arrayidx.i.i.i165 = getelementptr i32, ptr %125, i32 %div15.i.i.i164
  %126 = ptrtoint ptr %arrayidx.i.i.i165 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 134286850, ptr %arrayidx.i.i.i165, align 4
  %127 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %user_size, align 4
  %add.i.i.i166 = add i32 %128, 4
  store i32 %add.i.i.i166, ptr %user_size, align 4
  %129 = ptrtoint ptr %size.i.i109 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %size.i.i109, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i166, i32 %130)
  %cmp.not.i8.i.i167 = icmp ult i32 %add.i.i.i166, %130
  br i1 %cmp.not.i8.i.i167, label %CMD_SEM.exit173, label %do.body3.i9.i.i169, !prof !44

do.body3.i9.i.i169:                               ; preds = %OUT.exit.i.i168
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_SEM.exit173:                                  ; preds = %OUT.exit.i.i168
  %131 = ptrtoint ptr %vaddr1.i.i112 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %vaddr1.i.i112, align 4
  %div15.i11.i.i170 = lshr i32 %add.i.i.i166, 2
  %arrayidx.i12.i.i171 = getelementptr i32, ptr %132, i32 %div15.i11.i.i170
  %133 = ptrtoint ptr %arrayidx.i12.i.i171 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 1793, ptr %arrayidx.i12.i.i171, align 4
  %134 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %user_size, align 4
  %add.i175 = add i32 %135, 11
  %and.i176 = and i32 %add.i175, -8
  store i32 %and.i176, ptr %user_size, align 4
  %136 = ptrtoint ptr %size.i.i109 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %size.i.i109, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i176, i32 %137)
  %cmp.not.i.i178 = icmp ult i32 %and.i176, %137
  br i1 %cmp.not.i.i178, label %OUT.exit.i185, label %do.body3.i.i179, !prof !44

do.body3.i.i179:                                  ; preds = %CMD_SEM.exit173
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i185:                                    ; preds = %CMD_SEM.exit173
  %138 = ptrtoint ptr %vaddr1.i.i112 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %vaddr1.i.i112, align 4
  %div15.i.i181 = lshr exact i32 %and.i176, 2
  %arrayidx.i.i182 = getelementptr i32, ptr %139, i32 %div15.i.i181
  %140 = ptrtoint ptr %arrayidx.i.i182 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 1207959552, ptr %arrayidx.i.i182, align 4
  %141 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %user_size, align 4
  %add.i.i183 = add i32 %142, 4
  store i32 %add.i.i183, ptr %user_size, align 4
  %143 = ptrtoint ptr %size.i.i109 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %size.i.i109, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i183, i32 %144)
  %cmp.not.i3.i184 = icmp ult i32 %add.i.i183, %144
  br i1 %cmp.not.i3.i184, label %CMD_STALL.exit190, label %do.body3.i4.i186, !prof !44

do.body3.i4.i186:                                 ; preds = %OUT.exit.i185
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_STALL.exit190:                                ; preds = %OUT.exit.i185
  call void @__sanitizer_cov_trace_pc() #6
  %145 = ptrtoint ptr %vaddr1.i.i112 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %vaddr1.i.i112, align 4
  %div15.i6.i187 = lshr i32 %add.i.i183, 2
  %arrayidx.i7.i188 = getelementptr i32, ptr %146, i32 %div15.i6.i187
  %147 = ptrtoint ptr %arrayidx.i7.i188 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 1793, ptr %arrayidx.i7.i188, align 4
  %148 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %user_size, align 4
  %add.i8.i189 = add i32 %149, 4
  store i32 %add.i8.i189, ptr %user_size, align 4
  br label %if.end34

if.end34:                                         ; preds = %CMD_STALL.exit190, %if.end27.if.end34_crit_edge
  %150 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %user_size, align 4
  %add.i192 = add i32 %151, 7
  %and.i193 = and i32 %add.i192, -8
  store i32 %and.i193, ptr %user_size, align 4
  %size.i.i194 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 3
  %152 = ptrtoint ptr %size.i.i194 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %size.i.i194, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i193, i32 %153)
  %cmp.not.i.i195 = icmp ult i32 %and.i193, %153
  br i1 %cmp.not.i.i195, label %CMD_END.exit, label %do.body3.i.i196, !prof !44

do.body3.i.i196:                                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_END.exit:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %vaddr1.i.i197 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 2
  %154 = ptrtoint ptr %vaddr1.i.i197 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %vaddr1.i.i197, align 4
  %div15.i.i198 = lshr exact i32 %and.i193, 2
  %arrayidx.i.i199 = getelementptr i32, ptr %155, i32 %div15.i.i198
  %156 = ptrtoint ptr %arrayidx.i.i199 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 268435456, ptr %arrayidx.i.i199, align 4
  %157 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %user_size, align 4
  %add = add i32 %158, 11
  %and36 = and i32 %add, -8
  store i32 %and36, ptr %user_size, align 4
  %div59 = lshr i32 %add, 3
  %conv = trunc i32 %div59 to i16
  ret i16 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @etnaviv_buffer_config_pta(ptr noundef %gpu, i16 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 3, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !42

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 218, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %conv = zext i16 %id to i32
  %user_size.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 4
  %1 = ptrtoint ptr %user_size.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %user_size.i, align 4
  %size.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 3
  %2 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i.i.not = icmp eq i32 %3, 0
  br i1 %cmp.not.i.i.not, label %do.body3.i.i, label %OUT.exit.i, !prof !42

do.body3.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i:                                       ; preds = %if.end
  %vaddr1.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 2
  %4 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vaddr1.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 134283371, ptr %5, align 4
  %7 = ptrtoint ptr %user_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %user_size.i, align 4
  %add.i.i = add i32 %8, 4
  store i32 %add.i.i, ptr %user_size.i, align 4
  %9 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %10)
  %cmp.not.i8.i = icmp ult i32 %add.i.i, %10
  br i1 %cmp.not.i8.i, label %CMD_LOAD_STATE.exit, label %do.body3.i9.i, !prof !44

do.body3.i9.i:                                    ; preds = %OUT.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit:                              ; preds = %OUT.exit.i
  %11 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vaddr1.i.i, align 4
  %div15.i11.i = lshr i32 %add.i.i, 2
  %arrayidx.i12.i = getelementptr i32, ptr %12, i32 %div15.i11.i
  %13 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %arrayidx.i12.i, align 4
  %14 = ptrtoint ptr %user_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %user_size.i, align 4
  %add.i39 = add i32 %15, 11
  %and.i40 = and i32 %add.i39, -8
  store i32 %and.i40, ptr %user_size.i, align 4
  %16 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i40, i32 %17)
  %cmp.not.i.i42 = icmp ult i32 %and.i40, %17
  br i1 %cmp.not.i.i42, label %CMD_END.exit, label %do.body3.i.i43, !prof !44

do.body3.i.i43:                                   ; preds = %CMD_LOAD_STATE.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_END.exit:                                     ; preds = %CMD_LOAD_STATE.exit
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vaddr1.i.i, align 4
  %div15.i.i45 = lshr exact i32 %and.i40, 2
  %arrayidx.i.i46 = getelementptr i32, ptr %19, i32 %div15.i.i45
  %20 = ptrtoint ptr %arrayidx.i.i46 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 268435456, ptr %arrayidx.i.i46, align 4
  %21 = ptrtoint ptr %user_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %user_size.i, align 4
  %add = add i32 %22, 11
  %and26 = and i32 %add, -8
  store i32 %and26, ptr %user_size.i, align 4
  %div37 = lshr i32 %add, 3
  %conv29 = trunc i32 %div37 to i16
  ret i16 %conv29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_buffer_end(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer1 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10
  %user_size = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 4
  %0 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %user_size, align 4
  %sub = add i32 %1, -16
  %minor_features5 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 11
  %2 = ptrtoint ptr %minor_features5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %minor_features5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 3, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !42

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %exec_state = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 11
  %5 = ptrtoint ptr %exec_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %exec_state, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.else56 [
    i32 1, label %if.end.if.then36_crit_edge
    i32 0, label %if.then32
  ]

if.end.if.then36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then36

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then36

if.then36:                                        ; preds = %if.then32, %if.end.if.then36_crit_edge
  %flush.0.ph = phi i32 [ 8, %if.end.if.then36_crit_edge ], [ 87, %if.then32 ]
  %spec.select = select i1 %tobool.not, i32 7, i32 17
  %8 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %user_size, align 4
  %mul.i = shl nuw nsw i32 %spec.select, 3
  %add.i = add i32 %9, %mul.i
  %size.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 3
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %11)
  %cmp.i = icmp ugt i32 %add.i, %11
  br i1 %cmp.i, label %if.then.i, label %if.then36.etnaviv_buffer_reserve.exit_crit_edge

if.then36.etnaviv_buffer_reserve.exit_crit_edge:  ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  br label %etnaviv_buffer_reserve.exit

if.then.i:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %user_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %user_size, align 4
  br label %etnaviv_buffer_reserve.exit

etnaviv_buffer_reserve.exit:                      ; preds = %if.then.i, %if.then36.etnaviv_buffer_reserve.exit_crit_edge
  %mmu_context.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 30
  %13 = ptrtoint ptr %mmu_context.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmu_context.i, align 4
  %cmdbuf_mapping.i = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %14, i32 0, i32 6
  %call.i93 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %buffer1, ptr noundef %cmdbuf_mapping.i) #4
  %15 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %user_size, align 4
  %add3.i = add i32 %16, %call.i93
  %add.i.i = add i32 %16, 7
  %and.i.i = and i32 %add.i.i, -8
  store i32 %and.i.i, ptr %user_size, align 4
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %18)
  %cmp.not.i.i.i = icmp ult i32 %and.i.i, %18
  br i1 %cmp.not.i.i.i, label %OUT.exit.i.i, label %do.body3.i.i.i, !prof !44

do.body3.i.i.i:                                   ; preds = %etnaviv_buffer_reserve.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i.i:                                     ; preds = %etnaviv_buffer_reserve.exit
  %vaddr1.i.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 2
  %19 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i.i.i = lshr exact i32 %and.i.i, 2
  %arrayidx.i.i.i = getelementptr i32, ptr %20, i32 %div15.i.i.i
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 134286850, ptr %arrayidx.i.i.i, align 4
  %22 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %user_size, align 4
  %add.i.i.i = add i32 %23, 4
  store i32 %add.i.i.i, ptr %user_size, align 4
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %25)
  %cmp.not.i8.i.i = icmp ult i32 %add.i.i.i, %25
  br i1 %cmp.not.i8.i.i, label %CMD_SEM.exit, label %do.body3.i9.i.i, !prof !44

do.body3.i9.i.i:                                  ; preds = %OUT.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_SEM.exit:                                     ; preds = %OUT.exit.i.i
  %26 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i11.i.i = lshr i32 %add.i.i.i, 2
  %arrayidx.i12.i.i = getelementptr i32, ptr %27, i32 %div15.i11.i.i
  %28 = ptrtoint ptr %arrayidx.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1793, ptr %arrayidx.i12.i.i, align 4
  %29 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %user_size, align 4
  %add.i95 = add i32 %30, 11
  %and.i = and i32 %add.i95, -8
  store i32 %and.i, ptr %user_size, align 4
  %31 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %32)
  %cmp.not.i.i = icmp ult i32 %and.i, %32
  br i1 %cmp.not.i.i, label %OUT.exit.i, label %do.body3.i.i, !prof !44

do.body3.i.i:                                     ; preds = %CMD_SEM.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i:                                       ; preds = %CMD_SEM.exit
  %33 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i.i = lshr exact i32 %and.i, 2
  %arrayidx.i.i = getelementptr i32, ptr %34, i32 %div15.i.i
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1207959552, ptr %arrayidx.i.i, align 4
  %36 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %user_size, align 4
  %add.i.i96 = add i32 %37, 4
  store i32 %add.i.i96, ptr %user_size, align 4
  %38 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i96, i32 %39)
  %cmp.not.i3.i = icmp ult i32 %add.i.i96, %39
  br i1 %cmp.not.i3.i, label %CMD_STALL.exit, label %do.body3.i4.i, !prof !44

do.body3.i4.i:                                    ; preds = %OUT.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_STALL.exit:                                   ; preds = %OUT.exit.i
  %40 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i6.i = lshr i32 %add.i.i96, 2
  %arrayidx.i7.i = getelementptr i32, ptr %41, i32 %div15.i6.i
  %42 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1793, ptr %arrayidx.i7.i, align 4
  %43 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %user_size, align 4
  %add.i8.i = add i32 %44, 4
  store i32 %add.i8.i, ptr %user_size, align 4
  br i1 %tobool.not, label %CMD_STALL.exit.if.end43_crit_edge, label %if.then42

CMD_STALL.exit.if.end43_crit_edge:                ; preds = %CMD_STALL.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then42:                                        ; preds = %CMD_STALL.exit
  %add.i98 = add i32 %44, 11
  %and.i99 = and i32 %add.i98, -8
  %45 = ptrtoint ptr %user_size to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and.i99, ptr %user_size, align 4
  %46 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i99, i32 %47)
  %cmp.not.i.i101 = icmp ult i32 %and.i99, %47
  br i1 %cmp.not.i.i101, label %OUT.exit.i107, label %do.body3.i.i102, !prof !44

do.body3.i.i102:                                  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i107:                                    ; preds = %if.then42
  %48 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i.i104 = lshr exact i32 %and.i99, 2
  %arrayidx.i.i105 = getelementptr i32, ptr %49, i32 %div15.i.i104
  %50 = ptrtoint ptr %arrayidx.i.i105 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 134303790, ptr %arrayidx.i.i105, align 4
  %51 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %user_size, align 4
  %add.i.i106 = add i32 %52, 4
  store i32 %add.i.i106, ptr %user_size, align 4
  %53 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i106, i32 %54)
  %cmp.not.i8.i = icmp ult i32 %add.i.i106, %54
  br i1 %cmp.not.i8.i, label %CMD_LOAD_STATE.exit, label %do.body3.i9.i, !prof !44

do.body3.i9.i:                                    ; preds = %OUT.exit.i107
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit:                              ; preds = %OUT.exit.i107
  %55 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i11.i = lshr i32 %add.i.i106, 2
  %arrayidx.i12.i = getelementptr i32, ptr %56, i32 %div15.i11.i
  %57 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %arrayidx.i12.i, align 4
  %58 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %user_size, align 4
  %add.i.i109 = add i32 %59, 11
  %and.i.i110 = and i32 %add.i.i109, -8
  store i32 %and.i.i110, ptr %user_size, align 4
  %60 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i110, i32 %61)
  %cmp.not.i.i.i112 = icmp ult i32 %and.i.i110, %61
  br i1 %cmp.not.i.i.i112, label %OUT.exit.i.i119, label %do.body3.i.i.i113, !prof !44

do.body3.i.i.i113:                                ; preds = %CMD_LOAD_STATE.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i.i119:                                  ; preds = %CMD_LOAD_STATE.exit
  %62 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i.i.i115 = lshr exact i32 %and.i.i110, 2
  %arrayidx.i.i.i116 = getelementptr i32, ptr %63, i32 %div15.i.i.i115
  %64 = ptrtoint ptr %arrayidx.i.i.i116 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 134286850, ptr %arrayidx.i.i.i116, align 4
  %65 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %user_size, align 4
  %add.i.i.i117 = add i32 %66, 4
  store i32 %add.i.i.i117, ptr %user_size, align 4
  %67 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i117, i32 %68)
  %cmp.not.i8.i.i118 = icmp ult i32 %add.i.i.i117, %68
  br i1 %cmp.not.i8.i.i118, label %CMD_SEM.exit124, label %do.body3.i9.i.i120, !prof !44

do.body3.i9.i.i120:                               ; preds = %OUT.exit.i.i119
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_SEM.exit124:                                  ; preds = %OUT.exit.i.i119
  %69 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i11.i.i121 = lshr i32 %add.i.i.i117, 2
  %arrayidx.i12.i.i122 = getelementptr i32, ptr %70, i32 %div15.i11.i.i121
  %71 = ptrtoint ptr %arrayidx.i12.i.i122 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 4097, ptr %arrayidx.i12.i.i122, align 4
  %72 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %user_size, align 4
  %add.i126 = add i32 %73, 11
  %and.i127 = and i32 %add.i126, -8
  store i32 %and.i127, ptr %user_size, align 4
  %74 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i127, i32 %75)
  %cmp.not.i.i129 = icmp ult i32 %and.i127, %75
  br i1 %cmp.not.i.i129, label %OUT.exit.i136, label %do.body3.i.i130, !prof !44

do.body3.i.i130:                                  ; preds = %CMD_SEM.exit124
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i136:                                    ; preds = %CMD_SEM.exit124
  %76 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i.i132 = lshr exact i32 %and.i127, 2
  %arrayidx.i.i133 = getelementptr i32, ptr %77, i32 %div15.i.i132
  %78 = ptrtoint ptr %arrayidx.i.i133 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1207959552, ptr %arrayidx.i.i133, align 4
  %79 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %user_size, align 4
  %add.i.i134 = add i32 %80, 4
  store i32 %add.i.i134, ptr %user_size, align 4
  %81 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i134, i32 %82)
  %cmp.not.i3.i135 = icmp ult i32 %add.i.i134, %82
  br i1 %cmp.not.i3.i135, label %CMD_STALL.exit141, label %do.body3.i4.i137, !prof !44

do.body3.i4.i137:                                 ; preds = %OUT.exit.i136
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_STALL.exit141:                                ; preds = %OUT.exit.i136
  %83 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i6.i138 = lshr i32 %add.i.i134, 2
  %arrayidx.i7.i139 = getelementptr i32, ptr %84, i32 %div15.i6.i138
  %85 = ptrtoint ptr %arrayidx.i7.i139 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 4097, ptr %arrayidx.i7.i139, align 4
  %86 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %user_size, align 4
  %add.i143 = add i32 %87, 11
  %and.i144 = and i32 %add.i143, -8
  store i32 %and.i144, ptr %user_size, align 4
  %88 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i144, i32 %89)
  %cmp.not.i.i146 = icmp ult i32 %and.i144, %89
  br i1 %cmp.not.i.i146, label %OUT.exit.i153, label %do.body3.i.i147, !prof !44

do.body3.i.i147:                                  ; preds = %CMD_STALL.exit141
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i153:                                    ; preds = %CMD_STALL.exit141
  %90 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i.i149 = lshr exact i32 %and.i144, 2
  %arrayidx.i.i150 = getelementptr i32, ptr %91, i32 %div15.i.i149
  %92 = ptrtoint ptr %arrayidx.i.i150 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 134303790, ptr %arrayidx.i.i150, align 4
  %93 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %user_size, align 4
  %add.i.i151 = add i32 %94, 4
  store i32 %add.i.i151, ptr %user_size, align 4
  %95 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i151, i32 %96)
  %cmp.not.i8.i152 = icmp ult i32 %add.i.i151, %96
  br i1 %cmp.not.i8.i152, label %CMD_LOAD_STATE.exit158, label %do.body3.i9.i154, !prof !44

do.body3.i9.i154:                                 ; preds = %OUT.exit.i153
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit158:                           ; preds = %OUT.exit.i153
  call void @__sanitizer_cov_trace_pc() #6
  %97 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i11.i155 = lshr i32 %add.i.i151, 2
  %arrayidx.i12.i156 = getelementptr i32, ptr %98, i32 %div15.i11.i155
  %99 = ptrtoint ptr %arrayidx.i12.i156 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %arrayidx.i12.i156, align 4
  %100 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %user_size, align 4
  %add.i13.i157 = add i32 %101, 4
  store i32 %add.i13.i157, ptr %user_size, align 4
  br label %if.end43

if.end43:                                         ; preds = %CMD_LOAD_STATE.exit158, %CMD_STALL.exit.if.end43_crit_edge
  %102 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %user_size, align 4
  %add.i160 = add i32 %103, 7
  %and.i161 = and i32 %add.i160, -8
  store i32 %and.i161, ptr %user_size, align 4
  %104 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i161, i32 %105)
  %cmp.not.i.i163 = icmp ult i32 %and.i161, %105
  br i1 %cmp.not.i.i163, label %OUT.exit.i170, label %do.body3.i.i164, !prof !44

do.body3.i.i164:                                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i170:                                    ; preds = %if.end43
  %106 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i.i166 = lshr exact i32 %and.i161, 2
  %arrayidx.i.i167 = getelementptr i32, ptr %107, i32 %div15.i.i166
  %108 = ptrtoint ptr %arrayidx.i.i167 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 134286851, ptr %arrayidx.i.i167, align 4
  %109 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %user_size, align 4
  %add.i.i168 = add i32 %110, 4
  store i32 %add.i.i168, ptr %user_size, align 4
  %111 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i168, i32 %112)
  %cmp.not.i8.i169 = icmp ult i32 %add.i.i168, %112
  br i1 %cmp.not.i8.i169, label %CMD_LOAD_STATE.exit175, label %do.body3.i9.i171, !prof !44

do.body3.i9.i171:                                 ; preds = %OUT.exit.i170
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit175:                           ; preds = %OUT.exit.i170
  %113 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i11.i172 = lshr i32 %add.i.i168, 2
  %arrayidx.i12.i173 = getelementptr i32, ptr %114, i32 %div15.i11.i172
  %115 = ptrtoint ptr %arrayidx.i12.i173 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %flush.0.ph, ptr %arrayidx.i12.i173, align 4
  %116 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %user_size, align 4
  %118 = ptrtoint ptr %exec_state to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %exec_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp45 = icmp eq i32 %119, 0
  %add.i262 = add i32 %117, 11
  %and.i263 = and i32 %add.i262, -8
  %120 = ptrtoint ptr %user_size to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %and.i263, ptr %user_size, align 4
  %121 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i263, i32 %122)
  %cmp.not.i.i265 = icmp ult i32 %and.i263, %122
  br i1 %cmp45, label %if.then46, label %if.end51

if.then46:                                        ; preds = %CMD_LOAD_STATE.exit175
  br i1 %tobool.not, label %if.else49, label %if.then48

if.then48:                                        ; preds = %if.then46
  br i1 %cmp.not.i.i265, label %OUT.exit.i187, label %do.body3.i.i181, !prof !44

do.body3.i.i181:                                  ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i187:                                    ; preds = %if.then48
  %123 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i.i183 = lshr exact i32 %and.i263, 2
  %arrayidx.i.i184 = getelementptr i32, ptr %124, i32 %div15.i.i183
  %125 = ptrtoint ptr %arrayidx.i.i184 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 134303790, ptr %arrayidx.i.i184, align 4
  %126 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %user_size, align 4
  %add.i.i185 = add i32 %127, 4
  store i32 %add.i.i185, ptr %user_size, align 4
  %128 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i185, i32 %129)
  %cmp.not.i8.i186 = icmp ult i32 %add.i.i185, %129
  br i1 %cmp.not.i8.i186, label %CMD_LOAD_STATE.exit192, label %do.body3.i9.i188, !prof !44

do.body3.i9.i188:                                 ; preds = %OUT.exit.i187
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit192:                           ; preds = %OUT.exit.i187
  %130 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i11.i189 = lshr i32 %add.i.i185, 2
  %arrayidx.i12.i190 = getelementptr i32, ptr %131, i32 %div15.i11.i189
  %132 = ptrtoint ptr %arrayidx.i12.i190 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1, ptr %arrayidx.i12.i190, align 4
  %133 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %user_size, align 4
  %add.i194 = add i32 %134, 11
  %and.i195 = and i32 %add.i194, -8
  store i32 %and.i195, ptr %user_size, align 4
  %135 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i195, i32 %136)
  %cmp.not.i.i197 = icmp ult i32 %and.i195, %136
  br i1 %cmp.not.i.i197, label %OUT.exit.i204, label %do.body3.i.i198, !prof !44

do.body3.i.i198:                                  ; preds = %CMD_LOAD_STATE.exit192
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i204:                                    ; preds = %CMD_LOAD_STATE.exit192
  %137 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i.i200 = lshr exact i32 %and.i195, 2
  %arrayidx.i.i201 = getelementptr i32, ptr %138, i32 %div15.i.i200
  %139 = ptrtoint ptr %arrayidx.i.i201 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 134303787, ptr %arrayidx.i.i201, align 4
  %140 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %user_size, align 4
  %add.i.i202 = add i32 %141, 4
  store i32 %add.i.i202, ptr %user_size, align 4
  %142 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i202, i32 %143)
  %cmp.not.i8.i203 = icmp ult i32 %add.i.i202, %143
  br i1 %cmp.not.i8.i203, label %CMD_LOAD_STATE.exit209, label %do.body3.i9.i205, !prof !44

do.body3.i9.i205:                                 ; preds = %OUT.exit.i204
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit209:                           ; preds = %OUT.exit.i204
  %144 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i11.i206 = lshr i32 %add.i.i202, 2
  %arrayidx.i12.i207 = getelementptr i32, ptr %145, i32 %div15.i11.i206
  %146 = ptrtoint ptr %arrayidx.i12.i207 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 1, ptr %arrayidx.i12.i207, align 4
  %147 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %user_size, align 4
  %add.i211 = add i32 %148, 11
  %and.i212 = and i32 %add.i211, -8
  store i32 %and.i212, ptr %user_size, align 4
  %149 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i212, i32 %150)
  %cmp.not.i.i214 = icmp ult i32 %and.i212, %150
  br i1 %cmp.not.i.i214, label %OUT.exit.i221, label %do.body3.i.i215, !prof !44

do.body3.i.i215:                                  ; preds = %CMD_LOAD_STATE.exit209
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i221:                                    ; preds = %CMD_LOAD_STATE.exit209
  %151 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i.i217 = lshr exact i32 %and.i212, 2
  %arrayidx.i.i218 = getelementptr i32, ptr %152, i32 %div15.i.i217
  %153 = ptrtoint ptr %arrayidx.i.i218 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 134303790, ptr %arrayidx.i.i218, align 4
  %154 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %user_size, align 4
  %add.i.i219 = add i32 %155, 4
  store i32 %add.i.i219, ptr %user_size, align 4
  %156 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i219, i32 %157)
  %cmp.not.i8.i220 = icmp ult i32 %add.i.i219, %157
  br i1 %cmp.not.i8.i220, label %CMD_LOAD_STATE.exit226, label %do.body3.i9.i222, !prof !44

do.body3.i9.i222:                                 ; preds = %OUT.exit.i221
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit226:                           ; preds = %OUT.exit.i221
  %158 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i11.i223 = lshr i32 %add.i.i219, 2
  %arrayidx.i12.i224 = getelementptr i32, ptr %159, i32 %div15.i11.i223
  %160 = ptrtoint ptr %arrayidx.i12.i224 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %arrayidx.i12.i224, align 4
  %161 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %user_size, align 4
  %add.i.i228 = add i32 %162, 11
  %and.i.i229 = and i32 %add.i.i228, -8
  store i32 %and.i.i229, ptr %user_size, align 4
  %163 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i229, i32 %164)
  %cmp.not.i.i.i231 = icmp ult i32 %and.i.i229, %164
  br i1 %cmp.not.i.i.i231, label %OUT.exit.i.i238, label %do.body3.i.i.i232, !prof !44

do.body3.i.i.i232:                                ; preds = %CMD_LOAD_STATE.exit226
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i.i238:                                  ; preds = %CMD_LOAD_STATE.exit226
  %165 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i.i.i234 = lshr exact i32 %and.i.i229, 2
  %arrayidx.i.i.i235 = getelementptr i32, ptr %166, i32 %div15.i.i.i234
  %167 = ptrtoint ptr %arrayidx.i.i.i235 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 134286850, ptr %arrayidx.i.i.i235, align 4
  %168 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %user_size, align 4
  %add.i.i.i236 = add i32 %169, 4
  store i32 %add.i.i.i236, ptr %user_size, align 4
  %170 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i236, i32 %171)
  %cmp.not.i8.i.i237 = icmp ult i32 %add.i.i.i236, %171
  br i1 %cmp.not.i8.i.i237, label %CMD_SEM.exit243, label %do.body3.i9.i.i239, !prof !44

do.body3.i9.i.i239:                               ; preds = %OUT.exit.i.i238
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_SEM.exit243:                                  ; preds = %OUT.exit.i.i238
  %172 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i11.i.i240 = lshr i32 %add.i.i.i236, 2
  %arrayidx.i12.i.i241 = getelementptr i32, ptr %173, i32 %div15.i11.i.i240
  %174 = ptrtoint ptr %arrayidx.i12.i.i241 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 1793, ptr %arrayidx.i12.i.i241, align 4
  %175 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %user_size, align 4
  %add.i245 = add i32 %176, 11
  %and.i246 = and i32 %add.i245, -8
  store i32 %and.i246, ptr %user_size, align 4
  %177 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i246, i32 %178)
  %cmp.not.i.i248 = icmp ult i32 %and.i246, %178
  br i1 %cmp.not.i.i248, label %OUT.exit.i255, label %do.body3.i.i249, !prof !44

do.body3.i.i249:                                  ; preds = %CMD_SEM.exit243
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i255:                                    ; preds = %CMD_SEM.exit243
  %179 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i.i251 = lshr exact i32 %and.i246, 2
  %arrayidx.i.i252 = getelementptr i32, ptr %180, i32 %div15.i.i251
  %181 = ptrtoint ptr %arrayidx.i.i252 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 1207959552, ptr %arrayidx.i.i252, align 4
  %182 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %user_size, align 4
  %add.i.i253 = add i32 %183, 4
  store i32 %add.i.i253, ptr %user_size, align 4
  %184 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i253, i32 %185)
  %cmp.not.i3.i254 = icmp ult i32 %add.i.i253, %185
  br i1 %cmp.not.i3.i254, label %CMD_STALL.exit260, label %do.body3.i4.i256, !prof !44

do.body3.i4.i256:                                 ; preds = %OUT.exit.i255
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_STALL.exit260:                                ; preds = %OUT.exit.i255
  call void @__sanitizer_cov_trace_pc() #6
  %186 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i6.i257 = lshr i32 %add.i.i253, 2
  %arrayidx.i7.i258 = getelementptr i32, ptr %187, i32 %div15.i6.i257
  %188 = ptrtoint ptr %arrayidx.i7.i258 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 1793, ptr %arrayidx.i7.i258, align 4
  %189 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %user_size, align 4
  %add.i8.i259 = add i32 %190, 4
  store i32 %add.i8.i259, ptr %user_size, align 4
  br label %if.then53

if.else49:                                        ; preds = %if.then46
  br i1 %cmp.not.i.i265, label %OUT.exit.i272, label %do.body3.i.i266, !prof !44

do.body3.i.i266:                                  ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i272:                                    ; preds = %if.else49
  %191 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i.i268 = lshr exact i32 %and.i263, 2
  %arrayidx.i.i269 = getelementptr i32, ptr %192, i32 %div15.i.i268
  %193 = ptrtoint ptr %arrayidx.i.i269 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 134284692, ptr %arrayidx.i.i269, align 4
  %194 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %user_size, align 4
  %add.i.i270 = add i32 %195, 4
  store i32 %add.i.i270, ptr %user_size, align 4
  %196 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i270, i32 %197)
  %cmp.not.i8.i271 = icmp ult i32 %add.i.i270, %197
  br i1 %cmp.not.i8.i271, label %CMD_LOAD_STATE.exit277, label %do.body3.i9.i273, !prof !44

do.body3.i9.i273:                                 ; preds = %OUT.exit.i272
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit277:                           ; preds = %OUT.exit.i272
  %198 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i11.i274 = lshr i32 %add.i.i270, 2
  %arrayidx.i12.i275 = getelementptr i32, ptr %199, i32 %div15.i11.i274
  %200 = ptrtoint ptr %arrayidx.i12.i275 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 1, ptr %arrayidx.i12.i275, align 4
  %201 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %user_size, align 4
  %add.i.i279 = add i32 %202, 11
  %and.i.i280 = and i32 %add.i.i279, -8
  store i32 %and.i.i280, ptr %user_size, align 4
  %203 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i280, i32 %204)
  %cmp.not.i.i.i282 = icmp ult i32 %and.i.i280, %204
  br i1 %cmp.not.i.i.i282, label %OUT.exit.i.i289, label %do.body3.i.i.i283, !prof !44

do.body3.i.i.i283:                                ; preds = %CMD_LOAD_STATE.exit277
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i.i289:                                  ; preds = %CMD_LOAD_STATE.exit277
  %205 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i.i.i285 = lshr exact i32 %and.i.i280, 2
  %arrayidx.i.i.i286 = getelementptr i32, ptr %206, i32 %div15.i.i.i285
  %207 = ptrtoint ptr %arrayidx.i.i.i286 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 134286850, ptr %arrayidx.i.i.i286, align 4
  %208 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %user_size, align 4
  %add.i.i.i287 = add i32 %209, 4
  store i32 %add.i.i.i287, ptr %user_size, align 4
  %210 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i287, i32 %211)
  %cmp.not.i8.i.i288 = icmp ult i32 %add.i.i.i287, %211
  br i1 %cmp.not.i8.i.i288, label %CMD_SEM.exit294, label %do.body3.i9.i.i290, !prof !44

do.body3.i9.i.i290:                               ; preds = %OUT.exit.i.i289
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_SEM.exit294:                                  ; preds = %OUT.exit.i.i289
  %212 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i11.i.i291 = lshr i32 %add.i.i.i287, 2
  %arrayidx.i12.i.i292 = getelementptr i32, ptr %213, i32 %div15.i11.i.i291
  %214 = ptrtoint ptr %arrayidx.i12.i.i292 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 1793, ptr %arrayidx.i12.i.i292, align 4
  %215 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %user_size, align 4
  %add.i296 = add i32 %216, 11
  %and.i297 = and i32 %add.i296, -8
  store i32 %and.i297, ptr %user_size, align 4
  %217 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i297, i32 %218)
  %cmp.not.i.i299 = icmp ult i32 %and.i297, %218
  br i1 %cmp.not.i.i299, label %OUT.exit.i306, label %do.body3.i.i300, !prof !44

do.body3.i.i300:                                  ; preds = %CMD_SEM.exit294
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i306:                                    ; preds = %CMD_SEM.exit294
  %219 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i.i302 = lshr exact i32 %and.i297, 2
  %arrayidx.i.i303 = getelementptr i32, ptr %220, i32 %div15.i.i302
  %221 = ptrtoint ptr %arrayidx.i.i303 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 1207959552, ptr %arrayidx.i.i303, align 4
  %222 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %user_size, align 4
  %add.i.i304 = add i32 %223, 4
  store i32 %add.i.i304, ptr %user_size, align 4
  %224 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i304, i32 %225)
  %cmp.not.i3.i305 = icmp ult i32 %add.i.i304, %225
  br i1 %cmp.not.i3.i305, label %OUT.exit.i306.if.end54.sink.split_crit_edge, label %do.body3.i4.i307, !prof !44

OUT.exit.i306.if.end54.sink.split_crit_edge:      ; preds = %OUT.exit.i306
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54.sink.split

do.body3.i4.i307:                                 ; preds = %OUT.exit.i306
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

if.end51:                                         ; preds = %CMD_LOAD_STATE.exit175
  br i1 %cmp.not.i.i265, label %OUT.exit.i.i323, label %do.body3.i.i.i317, !prof !44

do.body3.i.i.i317:                                ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i.i323:                                  ; preds = %if.end51
  %226 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i.i.i319 = lshr exact i32 %and.i263, 2
  %arrayidx.i.i.i320 = getelementptr i32, ptr %227, i32 %div15.i.i.i319
  %228 = ptrtoint ptr %arrayidx.i.i.i320 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 134286850, ptr %arrayidx.i.i.i320, align 4
  %229 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %user_size, align 4
  %add.i.i.i321 = add i32 %230, 4
  store i32 %add.i.i.i321, ptr %user_size, align 4
  %231 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i321, i32 %232)
  %cmp.not.i8.i.i322 = icmp ult i32 %add.i.i.i321, %232
  br i1 %cmp.not.i8.i.i322, label %CMD_SEM.exit328, label %do.body3.i9.i.i324, !prof !44

do.body3.i9.i.i324:                               ; preds = %OUT.exit.i.i323
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_SEM.exit328:                                  ; preds = %OUT.exit.i.i323
  %233 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i11.i.i325 = lshr i32 %add.i.i.i321, 2
  %arrayidx.i12.i.i326 = getelementptr i32, ptr %234, i32 %div15.i11.i.i325
  %235 = ptrtoint ptr %arrayidx.i12.i.i326 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 1793, ptr %arrayidx.i12.i.i326, align 4
  %236 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %user_size, align 4
  %add.i330 = add i32 %237, 11
  %and.i331 = and i32 %add.i330, -8
  store i32 %and.i331, ptr %user_size, align 4
  %238 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i331, i32 %239)
  %cmp.not.i.i333 = icmp ult i32 %and.i331, %239
  br i1 %cmp.not.i.i333, label %OUT.exit.i340, label %do.body3.i.i334, !prof !44

do.body3.i.i334:                                  ; preds = %CMD_SEM.exit328
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i340:                                    ; preds = %CMD_SEM.exit328
  %240 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i.i336 = lshr exact i32 %and.i331, 2
  %arrayidx.i.i337 = getelementptr i32, ptr %241, i32 %div15.i.i336
  %242 = ptrtoint ptr %arrayidx.i.i337 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 1207959552, ptr %arrayidx.i.i337, align 4
  %243 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %user_size, align 4
  %add.i.i338 = add i32 %244, 4
  store i32 %add.i.i338, ptr %user_size, align 4
  %245 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i338, i32 %246)
  %cmp.not.i3.i339 = icmp ult i32 %add.i.i338, %246
  br i1 %cmp.not.i3.i339, label %CMD_STALL.exit345, label %do.body3.i4.i341, !prof !44

do.body3.i4.i341:                                 ; preds = %OUT.exit.i340
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_STALL.exit345:                                ; preds = %OUT.exit.i340
  %247 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i6.i342 = lshr i32 %add.i.i338, 2
  %arrayidx.i7.i343 = getelementptr i32, ptr %248, i32 %div15.i6.i342
  %249 = ptrtoint ptr %arrayidx.i7.i343 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 1793, ptr %arrayidx.i7.i343, align 4
  %250 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %user_size, align 4
  %add.i8.i344 = add i32 %251, 4
  store i32 %add.i8.i344, ptr %user_size, align 4
  br i1 %tobool.not, label %CMD_STALL.exit345.if.end54_crit_edge, label %CMD_STALL.exit345.if.then53_crit_edge

CMD_STALL.exit345.if.then53_crit_edge:            ; preds = %CMD_STALL.exit345
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then53

CMD_STALL.exit345.if.end54_crit_edge:             ; preds = %CMD_STALL.exit345
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.then53:                                        ; preds = %CMD_STALL.exit345.if.then53_crit_edge, %CMD_STALL.exit260
  %252 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %user_size, align 4
  %add.i347 = add i32 %253, 7
  %and.i348 = and i32 %add.i347, -8
  store i32 %and.i348, ptr %user_size, align 4
  %254 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i348, i32 %255)
  %cmp.not.i.i350 = icmp ult i32 %and.i348, %255
  br i1 %cmp.not.i.i350, label %OUT.exit.i357, label %do.body3.i.i351, !prof !44

do.body3.i.i351:                                  ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i357:                                    ; preds = %if.then53
  %256 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i.i353 = lshr exact i32 %and.i348, 2
  %arrayidx.i.i354 = getelementptr i32, ptr %257, i32 %div15.i.i353
  %258 = ptrtoint ptr %arrayidx.i.i354 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 134303790, ptr %arrayidx.i.i354, align 4
  %259 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %user_size, align 4
  %add.i.i355 = add i32 %260, 4
  store i32 %add.i.i355, ptr %user_size, align 4
  %261 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i355, i32 %262)
  %cmp.not.i8.i356 = icmp ult i32 %add.i.i355, %262
  br i1 %cmp.not.i8.i356, label %CMD_LOAD_STATE.exit362, label %do.body3.i9.i358, !prof !44

do.body3.i9.i358:                                 ; preds = %OUT.exit.i357
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit362:                           ; preds = %OUT.exit.i357
  %263 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i11.i359 = lshr i32 %add.i.i355, 2
  %arrayidx.i12.i360 = getelementptr i32, ptr %264, i32 %div15.i11.i359
  %265 = ptrtoint ptr %arrayidx.i12.i360 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 1, ptr %arrayidx.i12.i360, align 4
  %266 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %user_size, align 4
  %add.i.i364 = add i32 %267, 11
  %and.i.i365 = and i32 %add.i.i364, -8
  store i32 %and.i.i365, ptr %user_size, align 4
  %268 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i365, i32 %269)
  %cmp.not.i.i.i367 = icmp ult i32 %and.i.i365, %269
  br i1 %cmp.not.i.i.i367, label %OUT.exit.i.i374, label %do.body3.i.i.i368, !prof !44

do.body3.i.i.i368:                                ; preds = %CMD_LOAD_STATE.exit362
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i.i374:                                  ; preds = %CMD_LOAD_STATE.exit362
  %270 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i.i.i370 = lshr exact i32 %and.i.i365, 2
  %arrayidx.i.i.i371 = getelementptr i32, ptr %271, i32 %div15.i.i.i370
  %272 = ptrtoint ptr %arrayidx.i.i.i371 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 134286850, ptr %arrayidx.i.i.i371, align 4
  %273 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %user_size, align 4
  %add.i.i.i372 = add i32 %274, 4
  store i32 %add.i.i.i372, ptr %user_size, align 4
  %275 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i372, i32 %276)
  %cmp.not.i8.i.i373 = icmp ult i32 %add.i.i.i372, %276
  br i1 %cmp.not.i8.i.i373, label %CMD_SEM.exit379, label %do.body3.i9.i.i375, !prof !44

do.body3.i9.i.i375:                               ; preds = %OUT.exit.i.i374
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_SEM.exit379:                                  ; preds = %OUT.exit.i.i374
  %277 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i11.i.i376 = lshr i32 %add.i.i.i372, 2
  %arrayidx.i12.i.i377 = getelementptr i32, ptr %278, i32 %div15.i11.i.i376
  %279 = ptrtoint ptr %arrayidx.i12.i.i377 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 4097, ptr %arrayidx.i12.i.i377, align 4
  %280 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %user_size, align 4
  %add.i381 = add i32 %281, 11
  %and.i382 = and i32 %add.i381, -8
  store i32 %and.i382, ptr %user_size, align 4
  %282 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i382, i32 %283)
  %cmp.not.i.i384 = icmp ult i32 %and.i382, %283
  br i1 %cmp.not.i.i384, label %OUT.exit.i391, label %do.body3.i.i385, !prof !44

do.body3.i.i385:                                  ; preds = %CMD_SEM.exit379
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i391:                                    ; preds = %CMD_SEM.exit379
  %284 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i.i387 = lshr exact i32 %and.i382, 2
  %arrayidx.i.i388 = getelementptr i32, ptr %285, i32 %div15.i.i387
  %286 = ptrtoint ptr %arrayidx.i.i388 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 1207959552, ptr %arrayidx.i.i388, align 4
  %287 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %user_size, align 4
  %add.i.i389 = add i32 %288, 4
  store i32 %add.i.i389, ptr %user_size, align 4
  %289 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i389, i32 %290)
  %cmp.not.i3.i390 = icmp ult i32 %add.i.i389, %290
  br i1 %cmp.not.i3.i390, label %CMD_STALL.exit396, label %do.body3.i4.i392, !prof !44

do.body3.i4.i392:                                 ; preds = %OUT.exit.i391
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_STALL.exit396:                                ; preds = %OUT.exit.i391
  %291 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i6.i393 = lshr i32 %add.i.i389, 2
  %arrayidx.i7.i394 = getelementptr i32, ptr %292, i32 %div15.i6.i393
  %293 = ptrtoint ptr %arrayidx.i7.i394 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 4097, ptr %arrayidx.i7.i394, align 4
  %294 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %user_size, align 4
  %add.i398 = add i32 %295, 11
  %and.i399 = and i32 %add.i398, -8
  store i32 %and.i399, ptr %user_size, align 4
  %296 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i399, i32 %297)
  %cmp.not.i.i401 = icmp ult i32 %and.i399, %297
  br i1 %cmp.not.i.i401, label %OUT.exit.i408, label %do.body3.i.i402, !prof !44

do.body3.i.i402:                                  ; preds = %CMD_STALL.exit396
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i408:                                    ; preds = %CMD_STALL.exit396
  %298 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i.i404 = lshr exact i32 %and.i399, 2
  %arrayidx.i.i405 = getelementptr i32, ptr %299, i32 %div15.i.i404
  %300 = ptrtoint ptr %arrayidx.i.i405 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 134303790, ptr %arrayidx.i.i405, align 4
  %301 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %user_size, align 4
  %add.i.i406 = add i32 %302, 4
  store i32 %add.i.i406, ptr %user_size, align 4
  %303 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i406, i32 %304)
  %cmp.not.i8.i407 = icmp ult i32 %add.i.i406, %304
  br i1 %cmp.not.i8.i407, label %OUT.exit.i408.if.end54.sink.split_crit_edge, label %do.body3.i9.i409, !prof !44

OUT.exit.i408.if.end54.sink.split_crit_edge:      ; preds = %OUT.exit.i408
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54.sink.split

do.body3.i9.i409:                                 ; preds = %OUT.exit.i408
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

if.end54.sink.split:                              ; preds = %OUT.exit.i408.if.end54.sink.split_crit_edge, %OUT.exit.i306.if.end54.sink.split_crit_edge
  %add.i.i304.sink = phi i32 [ %add.i.i304, %OUT.exit.i306.if.end54.sink.split_crit_edge ], [ %add.i.i406, %OUT.exit.i408.if.end54.sink.split_crit_edge ]
  %.sink = phi i32 [ 1793, %OUT.exit.i306.if.end54.sink.split_crit_edge ], [ 0, %OUT.exit.i408.if.end54.sink.split_crit_edge ]
  %305 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i6.i308 = lshr i32 %add.i.i304.sink, 2
  %arrayidx.i7.i309 = getelementptr i32, ptr %306, i32 %div15.i6.i308
  %307 = ptrtoint ptr %arrayidx.i7.i309 to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %.sink, ptr %arrayidx.i7.i309, align 4
  %308 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %user_size, align 4
  %add.i8.i310 = add i32 %309, 4
  store i32 %add.i8.i310, ptr %user_size, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.end54.sink.split, %CMD_STALL.exit345.if.end54_crit_edge
  %310 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %user_size, align 4
  %add.i415 = add i32 %311, 7
  %and.i416 = and i32 %add.i415, -8
  store i32 %and.i416, ptr %user_size, align 4
  %312 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i416, i32 %313)
  %cmp.not.i.i418 = icmp ult i32 %and.i416, %313
  br i1 %cmp.not.i.i418, label %CMD_END.exit, label %do.body3.i.i419, !prof !44

do.body3.i.i419:                                  ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_END.exit:                                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  %314 = ptrtoint ptr %vaddr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %vaddr1.i.i.i, align 4
  %div15.i.i421 = lshr exact i32 %and.i416, 2
  %arrayidx.i.i422 = getelementptr i32, ptr %315, i32 %div15.i.i421
  %316 = ptrtoint ptr %arrayidx.i.i422 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 268435456, ptr %arrayidx.i.i422, align 4
  %317 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %user_size, align 4
  %add.i.i423 = add i32 %318, 4
  store i32 %add.i.i423, ptr %user_size, align 4
  %or = or i32 %spec.select, 1073741824
  %319 = load ptr, ptr %vaddr1.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %319, i32 %sub
  %arrayidx.i = getelementptr i32, ptr %add.ptr.i, i32 1
  %320 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %add3.i, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %321 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %or, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  br label %if.end57

if.else56:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %vaddr.i425 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 2
  %322 = ptrtoint ptr %vaddr.i425 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %vaddr.i425, align 4
  %add.ptr.i426 = getelementptr i8, ptr %323, i32 %sub
  %arrayidx.i427 = getelementptr i32, ptr %add.ptr.i426, i32 1
  %324 = ptrtoint ptr %arrayidx.i427 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 0, ptr %arrayidx.i427, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %325 = ptrtoint ptr %add.ptr.i426 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 268435456, ptr %add.ptr.i426, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  br label %if.end57

if.end57:                                         ; preds = %if.else56, %CMD_END.exit
  tail call void @arm_heavy_mb() #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_sync_point_queue(ptr noundef %gpu, i32 noundef %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %user_size = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 4
  %0 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %user_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 3, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !42

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 306, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %buffer1 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10
  %3 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %user_size, align 4
  %add.i = add i32 %4, 32
  %size.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 3
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %6)
  %cmp.i = icmp ugt i32 %add.i, %6
  br i1 %cmp.i, label %if.then.i, label %if.end.etnaviv_buffer_reserve.exit_crit_edge

if.end.etnaviv_buffer_reserve.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %etnaviv_buffer_reserve.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %user_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %user_size, align 4
  br label %etnaviv_buffer_reserve.exit

etnaviv_buffer_reserve.exit:                      ; preds = %if.then.i, %if.end.etnaviv_buffer_reserve.exit_crit_edge
  %mmu_context.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 30
  %8 = ptrtoint ptr %mmu_context.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmu_context.i, align 4
  %cmdbuf_mapping.i = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %9, i32 0, i32 6
  %call.i45 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %buffer1, ptr noundef %cmdbuf_mapping.i) #4
  %10 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %user_size, align 4
  %and = and i32 %event, 31
  %or = or i32 %and, 64
  %add.i47 = add i32 %11, 7
  %and.i = and i32 %add.i47, -8
  store i32 %and.i, ptr %user_size, align 4
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %13)
  %cmp.not.i.i = icmp ult i32 %and.i, %13
  br i1 %cmp.not.i.i, label %OUT.exit.i, label %do.body3.i.i, !prof !44

do.body3.i.i:                                     ; preds = %etnaviv_buffer_reserve.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i:                                       ; preds = %etnaviv_buffer_reserve.exit
  %vaddr1.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 2
  %14 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vaddr1.i.i, align 4
  %div15.i.i = lshr exact i32 %and.i, 2
  %arrayidx.i.i = getelementptr i32, ptr %15, i32 %div15.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 134286849, ptr %arrayidx.i.i, align 4
  %17 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %user_size, align 4
  %add.i.i = add i32 %18, 4
  store i32 %add.i.i, ptr %user_size, align 4
  %19 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %20)
  %cmp.not.i8.i = icmp ult i32 %add.i.i, %20
  br i1 %cmp.not.i8.i, label %CMD_LOAD_STATE.exit, label %do.body3.i9.i, !prof !44

do.body3.i9.i:                                    ; preds = %OUT.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit:                              ; preds = %OUT.exit.i
  %21 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vaddr1.i.i, align 4
  %div15.i11.i = lshr i32 %add.i.i, 2
  %arrayidx.i12.i = getelementptr i32, ptr %22, i32 %div15.i11.i
  %23 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or, ptr %arrayidx.i12.i, align 4
  %24 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %user_size, align 4
  %add.i49 = add i32 %25, 11
  %and.i50 = and i32 %add.i49, -8
  store i32 %and.i50, ptr %user_size, align 4
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i50, i32 %27)
  %cmp.not.i.i52 = icmp ult i32 %and.i50, %27
  br i1 %cmp.not.i.i52, label %CMD_END.exit, label %do.body3.i.i53, !prof !44

do.body3.i.i53:                                   ; preds = %CMD_LOAD_STATE.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_END.exit:                                     ; preds = %CMD_LOAD_STATE.exit
  %28 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vaddr1.i.i, align 4
  %div15.i.i55 = lshr exact i32 %and.i50, 2
  %arrayidx.i.i56 = getelementptr i32, ptr %29, i32 %div15.i.i55
  %30 = ptrtoint ptr %arrayidx.i.i56 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 268435456, ptr %arrayidx.i.i56, align 4
  %31 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %user_size, align 4
  %add.i60 = add i32 %32, 11
  %and.i61 = and i32 %add.i60, -8
  store i32 %and.i61, ptr %user_size, align 4
  %33 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i61, i32 %34)
  %cmp.not.i.i63 = icmp ult i32 %and.i61, %34
  br i1 %cmp.not.i.i63, label %CMD_WAIT.exit, label %do.body3.i.i64, !prof !44

do.body3.i.i64:                                   ; preds = %CMD_END.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_WAIT.exit:                                    ; preds = %CMD_END.exit
  %35 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vaddr1.i.i, align 4
  %div15.i.i66 = lshr exact i32 %and.i61, 2
  %arrayidx.i.i67 = getelementptr i32, ptr %36, i32 %div15.i.i66
  %37 = ptrtoint ptr %arrayidx.i.i67 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 939524296, ptr %arrayidx.i.i67, align 4
  %38 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %user_size, align 4
  %add.i.i68 = add i32 %39, 4
  store i32 %add.i.i68, ptr %user_size, align 4
  %40 = ptrtoint ptr %mmu_context.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmu_context.i, align 4
  %cmdbuf_mapping = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %41, i32 0, i32 6
  %call26 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %buffer1, ptr noundef %cmdbuf_mapping) #4
  %42 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %user_size, align 4
  %add.i71 = add i32 %43, 7
  %and.i72 = and i32 %add.i71, -8
  store i32 %and.i72, ptr %user_size, align 4
  %44 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i72, i32 %45)
  %cmp.not.i.i74 = icmp ult i32 %and.i72, %45
  br i1 %cmp.not.i.i74, label %OUT.exit.i81, label %do.body3.i.i75, !prof !44

do.body3.i.i75:                                   ; preds = %CMD_WAIT.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i81:                                     ; preds = %CMD_WAIT.exit
  %46 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vaddr1.i.i, align 4
  %div15.i.i77 = lshr exact i32 %and.i72, 2
  %arrayidx.i.i78 = getelementptr i32, ptr %47, i32 %div15.i.i77
  %48 = ptrtoint ptr %arrayidx.i.i78 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1073741826, ptr %arrayidx.i.i78, align 4
  %49 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %user_size, align 4
  %add.i.i79 = add i32 %50, 4
  store i32 %add.i.i79, ptr %user_size, align 4
  %51 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i79, i32 %52)
  %cmp.not.i8.i80 = icmp ult i32 %add.i.i79, %52
  br i1 %cmp.not.i8.i80, label %CMD_LINK.exit, label %do.body3.i9.i82, !prof !44

do.body3.i9.i82:                                  ; preds = %OUT.exit.i81
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LINK.exit:                                    ; preds = %OUT.exit.i81
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i32 %call26, -4
  %sub28 = add i32 %add, %43
  %add3.i = add i32 %11, %call.i45
  %sub = add i32 %1, -16
  %53 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vaddr1.i.i, align 4
  %div15.i11.i83 = lshr i32 %add.i.i79, 2
  %arrayidx.i12.i84 = getelementptr i32, ptr %54, i32 %div15.i11.i83
  %55 = ptrtoint ptr %arrayidx.i12.i84 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub28, ptr %arrayidx.i12.i84, align 4
  %56 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %user_size, align 4
  %add.i13.i85 = add i32 %57, 4
  store i32 %add.i13.i85, ptr %user_size, align 4
  %58 = load ptr, ptr %vaddr1.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %58, i32 %sub
  %arrayidx.i = getelementptr i32, ptr %add.ptr.i, i32 1
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add3.i, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1073741828, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  tail call void @arm_heavy_mb() #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_buffer_queue(ptr noundef %gpu, i32 noundef %exec_state, ptr noundef %mmu_context, i32 noundef %event, ptr noundef %cmdbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer1 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10
  %user_size = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 4
  %0 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %user_size, align 4
  %sub = add i32 %1, -16
  %exec_state2 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 11
  %2 = ptrtoint ptr %exec_state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %exec_state2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %exec_state)
  %cmp.not = icmp eq i32 %3, %exec_state
  %mmu_context3 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 30
  %4 = ptrtoint ptr %mmu_context3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmu_context3, align 4
  %cmp4.not = icmp eq ptr %5, %mmu_context
  %flush_seq = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %flush_seq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flush_seq, align 8
  br i1 %cmp4.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %flush_seq7 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 31
  %8 = ptrtoint ptr %flush_seq7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flush_seq7, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp8 = icmp ne i32 %9, %7
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %10 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %cmp8, %lor.rhs ]
  %minor_features5 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 11
  %11 = ptrtoint ptr %minor_features5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %minor_features5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool10.not = icmp sgt i32 %12, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool14.not = icmp eq i32 %13, 0
  br i1 %tobool14.not, label %lor.end.if.end_crit_edge, label %land.rhs

lor.end.if.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %lor.end
  %dep_map = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 3, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp15.not = icmp eq i32 %call.i, 0
  br i1 %cmp15.not, label %do.end28, label %land.rhs.if.end_crit_edge, !prof !42

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end28:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 354, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end28, %land.rhs.if.end_crit_edge, %lor.end.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %14 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end45_crit_edge, label %if.then44

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then44:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %size1.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 3
  %15 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size1.i, align 4
  %vaddr.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 2
  %17 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vaddr.i, align 4
  %dev.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 2
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  %21 = ptrtoint ptr %mmu_context3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmu_context3, align 4
  %cmdbuf_mapping.i = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %22, i32 0, i32 6
  %call.i279 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %buffer1, ptr noundef %cmdbuf_mapping.i) #4
  %sub.i = add i32 %16, -320
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.17, ptr noundef %18, i32 noundef %call.i279, i32 noundef %sub.i) #7
  tail call void @print_hex_dump(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 2, i32 noundef 16, i32 noundef 4, ptr noundef %18, i32 noundef 320, i1 noundef zeroext false) #4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end.if.end45_crit_edge
  %23 = ptrtoint ptr %mmu_context3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmu_context3, align 4
  %cmdbuf_mapping = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %24, i32 0, i32 6
  %call47 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %cmdbuf, ptr noundef %cmdbuf_mapping) #4
  %size = getelementptr inbounds %struct.etnaviv_cmdbuf, ptr %cmdbuf, i32 0, i32 3
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  %div276 = lshr i32 %26, 3
  %cmp.not.not = xor i1 %cmp.not, true
  %brmerge = select i1 %10, i1 true, i1 %cmp.not.not
  br i1 %brmerge, label %if.then50, label %if.end45.if.end111_crit_edge

if.end45.if.end111_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111

if.then50:                                        ; preds = %if.end45
  br i1 %10, label %if.then52, label %if.then50.if.end58_crit_edge

if.then50.if.end58_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.then52:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %mmu_context3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmu_context3, align 4
  %global = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %global, align 4
  %version = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp54 = icmp eq i32 %32, 0
  %. = select i1 %cmp54, i32 2, i32 4
  br label %if.end58

if.end58:                                         ; preds = %if.then52, %if.then50.if.end58_crit_edge
  %extra_dwords.0 = phi i32 [ 1, %if.then50.if.end58_crit_edge ], [ %., %if.then52 ]
  %add61 = add nuw nsw i32 %extra_dwords.0, 4
  %spec.select = select i1 %cmp.not, i32 %extra_dwords.0, i32 %add61
  br i1 %cmp4.not, label %if.end58.if.end67_crit_edge, label %land.lhs.true

if.end58.if.end67_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67

land.lhs.true:                                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  %sec_mode = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 5
  %33 = ptrtoint ptr %sec_mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sec_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp64 = icmp eq i32 %34, 1
  %add66 = zext i1 %cmp64 to i32
  %spec.select277 = add nuw nsw i32 %spec.select, %add66
  br label %if.end67

if.end67:                                         ; preds = %land.lhs.true, %if.end58.if.end67_crit_edge
  %extra_dwords.2 = phi i32 [ %spec.select, %if.end58.if.end67_crit_edge ], [ %spec.select277, %land.lhs.true ]
  %35 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %user_size, align 4
  %mul.i = shl nuw nsw i32 %extra_dwords.2, 3
  %add.i = add i32 %36, %mul.i
  %size.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 3
  %37 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %38)
  %cmp.i = icmp ugt i32 %add.i, %38
  br i1 %cmp.i, label %if.then.i, label %if.end67.etnaviv_buffer_reserve.exit_crit_edge

if.end67.etnaviv_buffer_reserve.exit_crit_edge:   ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %etnaviv_buffer_reserve.exit

if.then.i:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %user_size to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %user_size, align 4
  br label %etnaviv_buffer_reserve.exit

etnaviv_buffer_reserve.exit:                      ; preds = %if.then.i, %if.end67.etnaviv_buffer_reserve.exit_crit_edge
  %40 = ptrtoint ptr %mmu_context3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmu_context3, align 4
  %cmdbuf_mapping.i281 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %41, i32 0, i32 6
  %call.i282 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %buffer1, ptr noundef %cmdbuf_mapping.i281) #4
  %42 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %user_size, align 4
  %add3.i = add i32 %43, %call.i282
  br i1 %cmp4.not, label %etnaviv_buffer_reserve.exit.if.end74_crit_edge, label %if.then70

etnaviv_buffer_reserve.exit.if.end74_crit_edge:   ; preds = %etnaviv_buffer_reserve.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end74

if.then70:                                        ; preds = %etnaviv_buffer_reserve.exit
  %44 = ptrtoint ptr %mmu_context3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmu_context3, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mmu_context, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %mmu_context, i32 1, i32 3, i32 1) #4
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mmu_context, ptr %mmu_context, i32 1, ptr elementtype(i32) %mmu_context) #4, !srcloc !47
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then70.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !42

if.then70.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then70
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %47 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %.not.i.i.i.i.i = icmp sgt i32 %47, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.etnaviv_iommu_context_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !44

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.etnaviv_iommu_context_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %etnaviv_iommu_context_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then70.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then70.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %mmu_context, i32 noundef %.sink.i.i.i.i.i) #4
  br label %etnaviv_iommu_context_get.exit

etnaviv_iommu_context_get.exit:                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.etnaviv_iommu_context_get.exit_crit_edge
  %48 = ptrtoint ptr %mmu_context3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %mmu_context, ptr %mmu_context3, align 4
  tail call void @etnaviv_iommu_context_put(ptr noundef %45) #4
  br label %if.end74

if.end74:                                         ; preds = %etnaviv_iommu_context_get.exit, %etnaviv_buffer_reserve.exit.if.end74_crit_edge
  br i1 %10, label %if.then76, label %if.end74.if.end101_crit_edge

if.end74.if.end101_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end101

if.then76:                                        ; preds = %if.end74
  %49 = ptrtoint ptr %mmu_context3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmu_context3, align 4
  %global78 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %global78 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %global78, align 4
  %version79 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %version79 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %version79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp80 = icmp eq i32 %54, 0
  br i1 %cmp80, label %if.then81, label %if.else82

if.then81:                                        ; preds = %if.then76
  %55 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %user_size, align 4
  %add.i284 = add i32 %56, 7
  %and.i285 = and i32 %add.i284, -8
  store i32 %and.i285, ptr %user_size, align 4
  %57 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i285, i32 %58)
  %cmp.not.i.i = icmp ult i32 %and.i285, %58
  br i1 %cmp.not.i.i, label %OUT.exit.i, label %do.body3.i.i, !prof !44

do.body3.i.i:                                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i:                                       ; preds = %if.then81
  %vaddr1.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 2
  %59 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vaddr1.i.i, align 4
  %div15.i.i = lshr exact i32 %and.i285, 2
  %arrayidx.i.i = getelementptr i32, ptr %60, i32 %div15.i.i
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 134286852, ptr %arrayidx.i.i, align 4
  %62 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %user_size, align 4
  %add.i.i = add i32 %63, 4
  store i32 %add.i.i, ptr %user_size, align 4
  %64 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %65)
  %cmp.not.i8.i = icmp ult i32 %add.i.i, %65
  br i1 %cmp.not.i8.i, label %OUT.exit.i.if.end99_crit_edge, label %do.body3.i9.i, !prof !44

OUT.exit.i.if.end99_crit_edge:                    ; preds = %OUT.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end99

do.body3.i9.i:                                    ; preds = %OUT.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

if.else82:                                        ; preds = %if.then76
  br i1 %cmp4.not, label %if.else82.if.end91_crit_edge, label %land.lhs.true84

if.else82.if.end91_crit_edge:                     ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end91

land.lhs.true84:                                  ; preds = %if.else82
  %sec_mode85 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 5
  %66 = ptrtoint ptr %sec_mode85 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sec_mode85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp86 = icmp eq i32 %67, 1
  br i1 %cmp86, label %if.then87, label %land.lhs.true84.if.end91_crit_edge

land.lhs.true84.if.end91_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end91

if.then87:                                        ; preds = %land.lhs.true84
  %call89 = tail call zeroext i16 @etnaviv_iommuv2_get_pta_id(ptr noundef %50) #4
  %conv = zext i16 %call89 to i32
  %68 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %user_size, align 4
  %add.i287 = add i32 %69, 7
  %and.i288 = and i32 %add.i287, -8
  store i32 %and.i288, ptr %user_size, align 4
  %70 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i288, i32 %71)
  %cmp.not.i.i290 = icmp ult i32 %and.i288, %71
  br i1 %cmp.not.i.i290, label %OUT.exit.i297, label %do.body3.i.i291, !prof !44

do.body3.i.i291:                                  ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i297:                                    ; preds = %if.then87
  %vaddr1.i.i292 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 2
  %72 = ptrtoint ptr %vaddr1.i.i292 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %vaddr1.i.i292, align 4
  %div15.i.i293 = lshr exact i32 %and.i288, 2
  %arrayidx.i.i294 = getelementptr i32, ptr %73, i32 %div15.i.i293
  %74 = ptrtoint ptr %arrayidx.i.i294 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 134283371, ptr %arrayidx.i.i294, align 4
  %75 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %user_size, align 4
  %add.i.i295 = add i32 %76, 4
  store i32 %add.i.i295, ptr %user_size, align 4
  %77 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i295, i32 %78)
  %cmp.not.i8.i296 = icmp ult i32 %add.i.i295, %78
  br i1 %cmp.not.i8.i296, label %CMD_LOAD_STATE.exit302, label %do.body3.i9.i298, !prof !44

do.body3.i9.i298:                                 ; preds = %OUT.exit.i297
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit302:                           ; preds = %OUT.exit.i297
  call void @__sanitizer_cov_trace_pc() #6
  %79 = ptrtoint ptr %vaddr1.i.i292 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %vaddr1.i.i292, align 4
  %div15.i11.i299 = lshr i32 %add.i.i295, 2
  %arrayidx.i12.i300 = getelementptr i32, ptr %80, i32 %div15.i11.i299
  %81 = ptrtoint ptr %arrayidx.i12.i300 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv, ptr %arrayidx.i12.i300, align 4
  %82 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %user_size, align 4
  %add.i13.i301 = add i32 %83, 4
  store i32 %add.i13.i301, ptr %user_size, align 4
  br label %if.end91

if.end91:                                         ; preds = %CMD_LOAD_STATE.exit302, %land.lhs.true84.if.end91_crit_edge, %if.else82.if.end91_crit_edge
  %sec_mode92 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 5
  %84 = ptrtoint ptr %sec_mode92 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sec_mode92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp93 = icmp eq i32 %85, 0
  br i1 %cmp93, label %if.then95, label %if.end91.if.end98_crit_edge

if.end91.if.end98_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end98

if.then95:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #6
  %86 = ptrtoint ptr %mmu_context3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmu_context3, align 4
  %call97 = tail call i32 @etnaviv_iommuv2_get_mtlb_addr(ptr noundef %87) #4
  %or = or i32 %call97, 24
  br label %if.end98

if.end98:                                         ; preds = %if.then95, %if.end91.if.end98_crit_edge
  %flush.0 = phi i32 [ %or, %if.then95 ], [ 24, %if.end91.if.end98_crit_edge ]
  %88 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %user_size, align 4
  %add.i304 = add i32 %89, 7
  %and.i305 = and i32 %add.i304, -8
  store i32 %and.i305, ptr %user_size, align 4
  %90 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i305, i32 %91)
  %cmp.not.i.i307 = icmp ult i32 %and.i305, %91
  br i1 %cmp.not.i.i307, label %OUT.exit.i314, label %do.body3.i.i308, !prof !44

do.body3.i.i308:                                  ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i314:                                    ; preds = %if.end98
  %vaddr1.i.i309 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 2
  %92 = ptrtoint ptr %vaddr1.i.i309 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %vaddr1.i.i309, align 4
  %div15.i.i310 = lshr exact i32 %and.i305, 2
  %arrayidx.i.i311 = getelementptr i32, ptr %93, i32 %div15.i.i310
  %94 = ptrtoint ptr %arrayidx.i.i311 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 134283361, ptr %arrayidx.i.i311, align 4
  %95 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %user_size, align 4
  %add.i.i312 = add i32 %96, 4
  store i32 %add.i.i312, ptr %user_size, align 4
  %97 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i312, i32 %98)
  %cmp.not.i8.i313 = icmp ult i32 %add.i.i312, %98
  br i1 %cmp.not.i8.i313, label %CMD_LOAD_STATE.exit319, label %do.body3.i9.i315, !prof !44

do.body3.i9.i315:                                 ; preds = %OUT.exit.i314
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit319:                           ; preds = %OUT.exit.i314
  %99 = ptrtoint ptr %vaddr1.i.i309 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %vaddr1.i.i309, align 4
  %div15.i11.i316 = lshr i32 %add.i.i312, 2
  %arrayidx.i12.i317 = getelementptr i32, ptr %100, i32 %div15.i11.i316
  %101 = ptrtoint ptr %arrayidx.i12.i317 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %flush.0, ptr %arrayidx.i12.i317, align 4
  %102 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %user_size, align 4
  %add.i.i320 = add i32 %103, 11
  %and.i.i = and i32 %add.i.i320, -8
  store i32 %and.i.i, ptr %user_size, align 4
  %104 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %105)
  %cmp.not.i.i.i = icmp ult i32 %and.i.i, %105
  br i1 %cmp.not.i.i.i, label %OUT.exit.i.i, label %do.body3.i.i.i, !prof !44

do.body3.i.i.i:                                   ; preds = %CMD_LOAD_STATE.exit319
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i.i:                                     ; preds = %CMD_LOAD_STATE.exit319
  %106 = ptrtoint ptr %vaddr1.i.i309 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %vaddr1.i.i309, align 4
  %div15.i.i.i = lshr exact i32 %and.i.i, 2
  %arrayidx.i.i.i = getelementptr i32, ptr %107, i32 %div15.i.i.i
  %108 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 134286850, ptr %arrayidx.i.i.i, align 4
  %109 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %user_size, align 4
  %add.i.i.i = add i32 %110, 4
  store i32 %add.i.i.i, ptr %user_size, align 4
  %111 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %112)
  %cmp.not.i8.i.i = icmp ult i32 %add.i.i.i, %112
  br i1 %cmp.not.i8.i.i, label %CMD_SEM.exit, label %do.body3.i9.i.i, !prof !44

do.body3.i9.i.i:                                  ; preds = %OUT.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_SEM.exit:                                     ; preds = %OUT.exit.i.i
  %113 = ptrtoint ptr %vaddr1.i.i309 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %vaddr1.i.i309, align 4
  %div15.i11.i.i = lshr i32 %add.i.i.i, 2
  %arrayidx.i12.i.i = getelementptr i32, ptr %114, i32 %div15.i11.i.i
  %115 = ptrtoint ptr %arrayidx.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1793, ptr %arrayidx.i12.i.i, align 4
  %116 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %user_size, align 4
  %add.i322 = add i32 %117, 11
  %and.i323 = and i32 %add.i322, -8
  store i32 %and.i323, ptr %user_size, align 4
  %118 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i323, i32 %119)
  %cmp.not.i.i325 = icmp ult i32 %and.i323, %119
  br i1 %cmp.not.i.i325, label %OUT.exit.i331, label %do.body3.i.i326, !prof !44

do.body3.i.i326:                                  ; preds = %CMD_SEM.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i331:                                    ; preds = %CMD_SEM.exit
  %120 = ptrtoint ptr %vaddr1.i.i309 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %vaddr1.i.i309, align 4
  %div15.i.i328 = lshr exact i32 %and.i323, 2
  %arrayidx.i.i329 = getelementptr i32, ptr %121, i32 %div15.i.i328
  %122 = ptrtoint ptr %arrayidx.i.i329 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1207959552, ptr %arrayidx.i.i329, align 4
  %123 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %user_size, align 4
  %add.i.i330 = add i32 %124, 4
  store i32 %add.i.i330, ptr %user_size, align 4
  %125 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i330, i32 %126)
  %cmp.not.i3.i = icmp ult i32 %add.i.i330, %126
  br i1 %cmp.not.i3.i, label %OUT.exit.i331.if.end99_crit_edge, label %do.body3.i4.i, !prof !44

OUT.exit.i331.if.end99_crit_edge:                 ; preds = %OUT.exit.i331
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end99

do.body3.i4.i:                                    ; preds = %OUT.exit.i331
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

if.end99:                                         ; preds = %OUT.exit.i331.if.end99_crit_edge, %OUT.exit.i.if.end99_crit_edge
  %vaddr1.i.i309.sink = phi ptr [ %vaddr1.i.i, %OUT.exit.i.if.end99_crit_edge ], [ %vaddr1.i.i309, %OUT.exit.i331.if.end99_crit_edge ]
  %add.i.i330.sink = phi i32 [ %add.i.i, %OUT.exit.i.if.end99_crit_edge ], [ %add.i.i330, %OUT.exit.i331.if.end99_crit_edge ]
  %.sink = phi i32 [ 31, %OUT.exit.i.if.end99_crit_edge ], [ 1793, %OUT.exit.i331.if.end99_crit_edge ]
  %127 = ptrtoint ptr %vaddr1.i.i309.sink to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %vaddr1.i.i309.sink, align 4
  %div15.i6.i = lshr i32 %add.i.i330.sink, 2
  %arrayidx.i7.i = getelementptr i32, ptr %128, i32 %div15.i6.i
  %129 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %.sink, ptr %arrayidx.i7.i, align 4
  %130 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %130)
  %storemerge.in = load i32, ptr %user_size, align 4
  %storemerge = add i32 %storemerge.in, 4
  store i32 %storemerge, ptr %user_size, align 4
  %flush_seq100 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 31
  %131 = ptrtoint ptr %flush_seq100 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %7, ptr %flush_seq100, align 8
  br label %if.end101

if.end101:                                        ; preds = %if.end99, %if.end74.if.end101_crit_edge
  br i1 %cmp.not, label %if.end101.if.end106_crit_edge, label %if.then103

if.end101.if.end106_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end106

if.then103:                                       ; preds = %if.end101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %132 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.not.i = icmp eq i32 %132, 0
  br i1 %tobool.not.i, label %if.then103.if.end.i_crit_edge, label %land.rhs.i

if.then103.if.end.i_crit_edge:                    ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then103
  %dep_map.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 3, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !42

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then103.if.end.i_crit_edge
  %133 = ptrtoint ptr %exec_state2 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %exec_state2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %switch.selectcmp.i = icmp eq i32 %134, 0
  %switch.select.i = select i1 %switch.selectcmp.i, i32 3, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %134)
  %switch.selectcmp37.i = icmp eq i32 %134, 1
  %switch.select38.i = select i1 %switch.selectcmp37.i, i32 8, i32 %switch.select.i
  %135 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %user_size, align 4
  %add.i.i333 = add i32 %136, 7
  %and.i.i334 = and i32 %add.i.i333, -8
  store i32 %and.i.i334, ptr %user_size, align 4
  %137 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i334, i32 %138)
  %cmp.not.i.i.i336 = icmp ult i32 %and.i.i334, %138
  br i1 %cmp.not.i.i.i336, label %OUT.exit.i.i343, label %do.body3.i.i.i337, !prof !44

do.body3.i.i.i337:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i.i343:                                  ; preds = %if.end.i
  %vaddr1.i.i.i338 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 2
  %139 = ptrtoint ptr %vaddr1.i.i.i338 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %vaddr1.i.i.i338, align 4
  %div15.i.i.i339 = lshr exact i32 %and.i.i334, 2
  %arrayidx.i.i.i340 = getelementptr i32, ptr %140, i32 %div15.i.i.i339
  %141 = ptrtoint ptr %arrayidx.i.i.i340 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 134286851, ptr %arrayidx.i.i.i340, align 4
  %142 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %user_size, align 4
  %add.i.i.i341 = add i32 %143, 4
  store i32 %add.i.i.i341, ptr %user_size, align 4
  %144 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i341, i32 %145)
  %cmp.not.i8.i.i342 = icmp ult i32 %add.i.i.i341, %145
  br i1 %cmp.not.i8.i.i342, label %CMD_LOAD_STATE.exit.i, label %do.body3.i9.i.i344, !prof !44

do.body3.i9.i.i344:                               ; preds = %OUT.exit.i.i343
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit.i:                            ; preds = %OUT.exit.i.i343
  %146 = ptrtoint ptr %vaddr1.i.i.i338 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %vaddr1.i.i.i338, align 4
  %div15.i11.i.i345 = lshr i32 %add.i.i.i341, 2
  %arrayidx.i12.i.i346 = getelementptr i32, ptr %147, i32 %div15.i11.i.i345
  %148 = ptrtoint ptr %arrayidx.i12.i.i346 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %switch.select38.i, ptr %arrayidx.i12.i.i346, align 4
  %149 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %user_size, align 4
  %add.i.i39.i = add i32 %150, 11
  %and.i.i.i = and i32 %add.i.i39.i, -8
  store i32 %and.i.i.i, ptr %user_size, align 4
  %151 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i, i32 %152)
  %cmp.not.i.i.i.i = icmp ult i32 %and.i.i.i, %152
  br i1 %cmp.not.i.i.i.i, label %OUT.exit.i.i.i, label %do.body3.i.i.i.i, !prof !44

do.body3.i.i.i.i:                                 ; preds = %CMD_LOAD_STATE.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i.i.i:                                   ; preds = %CMD_LOAD_STATE.exit.i
  %153 = ptrtoint ptr %vaddr1.i.i.i338 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %vaddr1.i.i.i338, align 4
  %div15.i.i.i.i = lshr exact i32 %and.i.i.i, 2
  %arrayidx.i.i.i.i = getelementptr i32, ptr %154, i32 %div15.i.i.i.i
  %155 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 134286850, ptr %arrayidx.i.i.i.i, align 4
  %156 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %user_size, align 4
  %add.i.i.i.i = add i32 %157, 4
  store i32 %add.i.i.i.i, ptr %user_size, align 4
  %158 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %159)
  %cmp.not.i8.i.i.i = icmp ult i32 %add.i.i.i.i, %159
  br i1 %cmp.not.i8.i.i.i, label %CMD_SEM.exit.i, label %do.body3.i9.i.i.i, !prof !44

do.body3.i9.i.i.i:                                ; preds = %OUT.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_SEM.exit.i:                                   ; preds = %OUT.exit.i.i.i
  %160 = ptrtoint ptr %vaddr1.i.i.i338 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %vaddr1.i.i.i338, align 4
  %div15.i11.i.i.i = lshr i32 %add.i.i.i.i, 2
  %arrayidx.i12.i.i.i = getelementptr i32, ptr %161, i32 %div15.i11.i.i.i
  %162 = ptrtoint ptr %arrayidx.i12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 1793, ptr %arrayidx.i12.i.i.i, align 4
  %163 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %user_size, align 4
  %add.i41.i = add i32 %164, 11
  %and.i42.i = and i32 %add.i41.i, -8
  store i32 %and.i42.i, ptr %user_size, align 4
  %165 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i42.i, i32 %166)
  %cmp.not.i.i44.i = icmp ult i32 %and.i42.i, %166
  br i1 %cmp.not.i.i44.i, label %OUT.exit.i50.i, label %do.body3.i.i45.i, !prof !44

do.body3.i.i45.i:                                 ; preds = %CMD_SEM.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i50.i:                                   ; preds = %CMD_SEM.exit.i
  %167 = ptrtoint ptr %vaddr1.i.i.i338 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %vaddr1.i.i.i338, align 4
  %div15.i.i47.i = lshr exact i32 %and.i42.i, 2
  %arrayidx.i.i48.i = getelementptr i32, ptr %168, i32 %div15.i.i47.i
  %169 = ptrtoint ptr %arrayidx.i.i48.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 1207959552, ptr %arrayidx.i.i48.i, align 4
  %170 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %user_size, align 4
  %add.i.i49.i = add i32 %171, 4
  store i32 %add.i.i49.i, ptr %user_size, align 4
  %172 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i49.i, i32 %173)
  %cmp.not.i3.i.i = icmp ult i32 %add.i.i49.i, %173
  br i1 %cmp.not.i3.i.i, label %CMD_STALL.exit.i, label %do.body3.i4.i.i, !prof !44

do.body3.i4.i.i:                                  ; preds = %OUT.exit.i50.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_STALL.exit.i:                                 ; preds = %OUT.exit.i50.i
  %174 = ptrtoint ptr %vaddr1.i.i.i338 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %vaddr1.i.i.i338, align 4
  %div15.i6.i.i = lshr i32 %add.i.i49.i, 2
  %arrayidx.i7.i.i = getelementptr i32, ptr %175, i32 %div15.i6.i.i
  %176 = ptrtoint ptr %arrayidx.i7.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 1793, ptr %arrayidx.i7.i.i, align 4
  %177 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %user_size, align 4
  %add.i52.i = add i32 %178, 11
  %and.i53.i = and i32 %add.i52.i, -8
  store i32 %and.i53.i, ptr %user_size, align 4
  %179 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i53.i, i32 %180)
  %cmp.not.i.i55.i = icmp ult i32 %and.i53.i, %180
  br i1 %cmp.not.i.i55.i, label %OUT.exit.i62.i, label %do.body3.i.i56.i, !prof !44

do.body3.i.i56.i:                                 ; preds = %CMD_STALL.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i62.i:                                   ; preds = %CMD_STALL.exit.i
  %181 = ptrtoint ptr %vaddr1.i.i.i338 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %vaddr1.i.i.i338, align 4
  %div15.i.i58.i = lshr exact i32 %and.i53.i, 2
  %arrayidx.i.i59.i = getelementptr i32, ptr %182, i32 %div15.i.i58.i
  %183 = ptrtoint ptr %arrayidx.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 134286848, ptr %arrayidx.i.i59.i, align 4
  %184 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %user_size, align 4
  %add.i.i60.i = add i32 %185, 4
  store i32 %add.i.i60.i, ptr %user_size, align 4
  %186 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i60.i, i32 %187)
  %cmp.not.i8.i61.i = icmp ult i32 %add.i.i60.i, %187
  br i1 %cmp.not.i8.i61.i, label %etnaviv_cmd_select_pipe.exit, label %do.body3.i9.i63.i, !prof !44

do.body3.i9.i63.i:                                ; preds = %OUT.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

etnaviv_cmd_select_pipe.exit:                     ; preds = %OUT.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #6
  %188 = and i32 %exec_state, 1
  %189 = ptrtoint ptr %vaddr1.i.i.i338 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %vaddr1.i.i.i338, align 4
  %div15.i11.i64.i = lshr i32 %add.i.i60.i, 2
  %arrayidx.i12.i65.i = getelementptr i32, ptr %190, i32 %div15.i11.i64.i
  %191 = ptrtoint ptr %arrayidx.i12.i65.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %188, ptr %arrayidx.i12.i65.i, align 4
  %192 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %user_size, align 4
  %add.i13.i66.i = add i32 %193, 4
  store i32 %add.i13.i66.i, ptr %user_size, align 4
  %194 = ptrtoint ptr %exec_state2 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %exec_state, ptr %exec_state2, align 8
  br label %if.end106

if.end106:                                        ; preds = %etnaviv_cmd_select_pipe.exit, %if.end101.if.end106_crit_edge
  %195 = ptrtoint ptr %mmu_context3 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %mmu_context3, align 4
  %cmdbuf_mapping108 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %196, i32 0, i32 6
  %call109 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %cmdbuf, ptr noundef %cmdbuf_mapping108) #4
  %197 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %user_size, align 4
  %add.i349 = add i32 %198, 7
  %and.i350 = and i32 %add.i349, -8
  store i32 %and.i350, ptr %user_size, align 4
  %199 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i350, i32 %200)
  %cmp.not.i.i352 = icmp ult i32 %and.i350, %200
  br i1 %cmp.not.i.i352, label %OUT.exit.i359, label %do.body3.i.i353, !prof !44

do.body3.i.i353:                                  ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i359:                                    ; preds = %if.end106
  %conv.i = and i32 %div276, 65535
  %or.i = or i32 %conv.i, 1073741824
  %vaddr1.i.i354 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 2
  %201 = ptrtoint ptr %vaddr1.i.i354 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %vaddr1.i.i354, align 4
  %div15.i.i355 = lshr exact i32 %and.i350, 2
  %arrayidx.i.i356 = getelementptr i32, ptr %202, i32 %div15.i.i355
  %203 = ptrtoint ptr %arrayidx.i.i356 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %or.i, ptr %arrayidx.i.i356, align 4
  %204 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %user_size, align 4
  %add.i.i357 = add i32 %205, 4
  store i32 %add.i.i357, ptr %user_size, align 4
  %206 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i357, i32 %207)
  %cmp.not.i8.i358 = icmp ult i32 %add.i.i357, %207
  br i1 %cmp.not.i8.i358, label %CMD_LINK.exit, label %do.body3.i9.i360, !prof !44

do.body3.i9.i360:                                 ; preds = %OUT.exit.i359
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LINK.exit:                                    ; preds = %OUT.exit.i359
  call void @__sanitizer_cov_trace_pc() #6
  %208 = ptrtoint ptr %vaddr1.i.i354 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %vaddr1.i.i354, align 4
  %div15.i11.i361 = lshr i32 %add.i.i357, 2
  %arrayidx.i12.i362 = getelementptr i32, ptr %209, i32 %div15.i11.i361
  %210 = ptrtoint ptr %arrayidx.i12.i362 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %call109, ptr %arrayidx.i12.i362, align 4
  %211 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %user_size, align 4
  %add.i13.i363 = add i32 %212, 4
  store i32 %add.i13.i363, ptr %user_size, align 4
  br label %if.end111

if.end111:                                        ; preds = %CMD_LINK.exit, %if.end45.if.end111_crit_edge
  %link_dwords.0 = phi i32 [ %extra_dwords.2, %CMD_LINK.exit ], [ %div276, %if.end45.if.end111_crit_edge ]
  %link_target.0 = phi i32 [ %add3.i, %CMD_LINK.exit ], [ %call47, %if.end45.if.end111_crit_edge ]
  %spec.select278 = select i1 %tobool10.not, i32 7, i32 13
  %213 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %user_size, align 4
  %mul.i365 = shl nuw nsw i32 %spec.select278, 3
  %add.i366 = add i32 %214, %mul.i365
  %size.i367 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 3
  %215 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i366, i32 %216)
  %cmp.i368 = icmp ugt i32 %add.i366, %216
  br i1 %cmp.i368, label %if.then.i369, label %if.end111.etnaviv_buffer_reserve.exit375_crit_edge

if.end111.etnaviv_buffer_reserve.exit375_crit_edge: ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #6
  br label %etnaviv_buffer_reserve.exit375

if.then.i369:                                     ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #6
  %217 = ptrtoint ptr %user_size to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 0, ptr %user_size, align 4
  br label %etnaviv_buffer_reserve.exit375

etnaviv_buffer_reserve.exit375:                   ; preds = %if.then.i369, %if.end111.etnaviv_buffer_reserve.exit375_crit_edge
  %218 = ptrtoint ptr %mmu_context3 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %mmu_context3, align 4
  %cmdbuf_mapping.i371 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %219, i32 0, i32 6
  %call.i372 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %buffer1, ptr noundef %cmdbuf_mapping.i371) #4
  %220 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %user_size, align 4
  %add3.i373 = add i32 %221, %call.i372
  %user_size.i376 = getelementptr inbounds %struct.etnaviv_cmdbuf, ptr %cmdbuf, i32 0, i32 4
  %222 = ptrtoint ptr %user_size.i376 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %user_size.i376, align 4
  %add.i377 = add i32 %223, 7
  %and.i378 = and i32 %add.i377, -8
  store i32 %and.i378, ptr %user_size.i376, align 4
  %224 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i378, i32 %225)
  %cmp.not.i.i380 = icmp ult i32 %and.i378, %225
  br i1 %cmp.not.i.i380, label %OUT.exit.i389, label %do.body3.i.i381, !prof !44

do.body3.i.i381:                                  ; preds = %etnaviv_buffer_reserve.exit375
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i389:                                    ; preds = %etnaviv_buffer_reserve.exit375
  %or.i383 = or i32 %spec.select278, 1073741824
  %vaddr1.i.i384 = getelementptr inbounds %struct.etnaviv_cmdbuf, ptr %cmdbuf, i32 0, i32 2
  %226 = ptrtoint ptr %vaddr1.i.i384 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %vaddr1.i.i384, align 4
  %div15.i.i385 = lshr exact i32 %and.i378, 2
  %arrayidx.i.i386 = getelementptr i32, ptr %227, i32 %div15.i.i385
  %228 = ptrtoint ptr %arrayidx.i.i386 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %or.i383, ptr %arrayidx.i.i386, align 4
  %229 = ptrtoint ptr %user_size.i376 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %user_size.i376, align 4
  %add.i.i387 = add i32 %230, 4
  store i32 %add.i.i387, ptr %user_size.i376, align 4
  %231 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i387, i32 %232)
  %cmp.not.i8.i388 = icmp ult i32 %add.i.i387, %232
  br i1 %cmp.not.i8.i388, label %CMD_LINK.exit394, label %do.body3.i9.i390, !prof !44

do.body3.i9.i390:                                 ; preds = %OUT.exit.i389
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LINK.exit394:                                 ; preds = %OUT.exit.i389
  %233 = ptrtoint ptr %vaddr1.i.i384 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %vaddr1.i.i384, align 4
  %div15.i11.i391 = lshr i32 %add.i.i387, 2
  %arrayidx.i12.i392 = getelementptr i32, ptr %234, i32 %div15.i11.i391
  %235 = ptrtoint ptr %arrayidx.i12.i392 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %add3.i373, ptr %arrayidx.i12.i392, align 4
  %236 = ptrtoint ptr %user_size.i376 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %user_size.i376, align 4
  %add.i13.i393 = add i32 %237, 4
  store i32 %add.i13.i393, ptr %user_size.i376, align 4
  %238 = ptrtoint ptr %exec_state2 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %exec_state2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %239)
  %cmp119 = icmp eq i32 %239, 1
  %240 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %user_size, align 4
  %add.i396 = add i32 %241, 7
  %and.i397 = and i32 %add.i396, -8
  store i32 %and.i397, ptr %user_size, align 4
  %242 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i397, i32 %243)
  %cmp.not.i.i399 = icmp ult i32 %and.i397, %243
  br i1 %cmp119, label %if.then121, label %if.else122

if.then121:                                       ; preds = %CMD_LINK.exit394
  br i1 %cmp.not.i.i399, label %OUT.exit.i406, label %do.body3.i.i400, !prof !44

do.body3.i.i400:                                  ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i406:                                    ; preds = %if.then121
  %vaddr1.i.i401 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 2
  %244 = ptrtoint ptr %vaddr1.i.i401 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %vaddr1.i.i401, align 4
  %div15.i.i402 = lshr exact i32 %and.i397, 2
  %arrayidx.i.i403 = getelementptr i32, ptr %245, i32 %div15.i.i402
  %246 = ptrtoint ptr %arrayidx.i.i403 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 134286851, ptr %arrayidx.i.i403, align 4
  %247 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %user_size, align 4
  %add.i.i404 = add i32 %248, 4
  store i32 %add.i.i404, ptr %user_size, align 4
  %249 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i404, i32 %250)
  %cmp.not.i8.i405 = icmp ult i32 %add.i.i404, %250
  br i1 %cmp.not.i8.i405, label %CMD_LOAD_STATE.exit411, label %do.body3.i9.i407, !prof !44

do.body3.i9.i407:                                 ; preds = %OUT.exit.i406
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit411:                           ; preds = %OUT.exit.i406
  %251 = ptrtoint ptr %vaddr1.i.i401 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %vaddr1.i.i401, align 4
  %div15.i11.i408 = lshr i32 %add.i.i404, 2
  %arrayidx.i12.i409 = getelementptr i32, ptr %252, i32 %div15.i11.i408
  %253 = ptrtoint ptr %arrayidx.i12.i409 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 8, ptr %arrayidx.i12.i409, align 4
  %254 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %user_size, align 4
  %add.i.i413 = add i32 %255, 11
  %and.i.i414 = and i32 %add.i.i413, -8
  store i32 %and.i.i414, ptr %user_size, align 4
  %256 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i414, i32 %257)
  %cmp.not.i.i.i416 = icmp ult i32 %and.i.i414, %257
  br i1 %cmp.not.i.i.i416, label %OUT.exit.i.i423, label %do.body3.i.i.i417, !prof !44

do.body3.i.i.i417:                                ; preds = %CMD_LOAD_STATE.exit411
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i.i423:                                  ; preds = %CMD_LOAD_STATE.exit411
  %258 = ptrtoint ptr %vaddr1.i.i401 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %vaddr1.i.i401, align 4
  %div15.i.i.i419 = lshr exact i32 %and.i.i414, 2
  %arrayidx.i.i.i420 = getelementptr i32, ptr %259, i32 %div15.i.i.i419
  %260 = ptrtoint ptr %arrayidx.i.i.i420 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 134286850, ptr %arrayidx.i.i.i420, align 4
  %261 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %user_size, align 4
  %add.i.i.i421 = add i32 %262, 4
  store i32 %add.i.i.i421, ptr %user_size, align 4
  %263 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i421, i32 %264)
  %cmp.not.i8.i.i422 = icmp ult i32 %add.i.i.i421, %264
  br i1 %cmp.not.i8.i.i422, label %CMD_SEM.exit429, label %do.body3.i9.i.i424, !prof !44

do.body3.i9.i.i424:                               ; preds = %OUT.exit.i.i423
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_SEM.exit429:                                  ; preds = %OUT.exit.i.i423
  %265 = ptrtoint ptr %vaddr1.i.i401 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %vaddr1.i.i401, align 4
  %div15.i11.i.i425 = lshr i32 %add.i.i.i421, 2
  %arrayidx.i12.i.i426 = getelementptr i32, ptr %266, i32 %div15.i11.i.i425
  %267 = ptrtoint ptr %arrayidx.i12.i.i426 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 1793, ptr %arrayidx.i12.i.i426, align 4
  %268 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %user_size, align 4
  %add.i431 = add i32 %269, 11
  %and.i432 = and i32 %add.i431, -8
  store i32 %and.i432, ptr %user_size, align 4
  %270 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i432, i32 %271)
  %cmp.not.i.i434 = icmp ult i32 %and.i432, %271
  br i1 %cmp.not.i.i434, label %OUT.exit.i441, label %do.body3.i.i435, !prof !44

do.body3.i.i435:                                  ; preds = %CMD_SEM.exit429
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i441:                                    ; preds = %CMD_SEM.exit429
  %272 = ptrtoint ptr %vaddr1.i.i401 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %vaddr1.i.i401, align 4
  %div15.i.i437 = lshr exact i32 %and.i432, 2
  %arrayidx.i.i438 = getelementptr i32, ptr %273, i32 %div15.i.i437
  %274 = ptrtoint ptr %arrayidx.i.i438 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 1207959552, ptr %arrayidx.i.i438, align 4
  %275 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %user_size, align 4
  %add.i.i439 = add i32 %276, 4
  store i32 %add.i.i439, ptr %user_size, align 4
  %277 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i439, i32 %278)
  %cmp.not.i3.i440 = icmp ult i32 %add.i.i439, %278
  br i1 %cmp.not.i3.i440, label %CMD_STALL.exit446, label %do.body3.i4.i442, !prof !44

do.body3.i4.i442:                                 ; preds = %OUT.exit.i441
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_STALL.exit446:                                ; preds = %OUT.exit.i441
  %279 = ptrtoint ptr %vaddr1.i.i401 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %vaddr1.i.i401, align 4
  %div15.i6.i443 = lshr i32 %add.i.i439, 2
  %arrayidx.i7.i444 = getelementptr i32, ptr %280, i32 %div15.i6.i443
  %281 = ptrtoint ptr %arrayidx.i7.i444 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 1793, ptr %arrayidx.i7.i444, align 4
  %282 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %user_size, align 4
  %add.i8.i445 = add i32 %283, 4
  store i32 %add.i8.i445, ptr %user_size, align 4
  br i1 %tobool10.not, label %CMD_STALL.exit446.if.end130_crit_edge, label %CMD_STALL.exit446.if.then129_crit_edge

CMD_STALL.exit446.if.then129_crit_edge:           ; preds = %CMD_STALL.exit446
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then129

CMD_STALL.exit446.if.end130_crit_edge:            ; preds = %CMD_STALL.exit446
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end130

if.else122:                                       ; preds = %CMD_LINK.exit394
  br i1 %cmp.not.i.i399, label %OUT.exit.i458, label %do.body3.i.i452, !prof !44

do.body3.i.i452:                                  ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i458:                                    ; preds = %if.else122
  %vaddr1.i.i453 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 2
  %284 = ptrtoint ptr %vaddr1.i.i453 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %vaddr1.i.i453, align 4
  %div15.i.i454 = lshr exact i32 %and.i397, 2
  %arrayidx.i.i455 = getelementptr i32, ptr %285, i32 %div15.i.i454
  %286 = ptrtoint ptr %arrayidx.i.i455 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 134286851, ptr %arrayidx.i.i455, align 4
  %287 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %user_size, align 4
  %add.i.i456 = add i32 %288, 4
  store i32 %add.i.i456, ptr %user_size, align 4
  %289 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i456, i32 %290)
  %cmp.not.i8.i457 = icmp ult i32 %add.i.i456, %290
  br i1 %cmp.not.i8.i457, label %CMD_LOAD_STATE.exit463, label %do.body3.i9.i459, !prof !44

do.body3.i9.i459:                                 ; preds = %OUT.exit.i458
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit463:                           ; preds = %OUT.exit.i458
  %291 = ptrtoint ptr %vaddr1.i.i453 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %vaddr1.i.i453, align 4
  %div15.i11.i460 = lshr i32 %add.i.i456, 2
  %arrayidx.i12.i461 = getelementptr i32, ptr %292, i32 %div15.i11.i460
  %293 = ptrtoint ptr %arrayidx.i12.i461 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 3, ptr %arrayidx.i12.i461, align 4
  %294 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %user_size, align 4
  %add.i551 = add i32 %295, 11
  %and.i552 = and i32 %add.i551, -8
  store i32 %and.i552, ptr %user_size, align 4
  %296 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i552, i32 %297)
  %cmp.not.i.i554 = icmp ult i32 %and.i552, %297
  br i1 %tobool10.not, label %if.else125, label %if.then124

if.then124:                                       ; preds = %CMD_LOAD_STATE.exit463
  br i1 %cmp.not.i.i554, label %OUT.exit.i475, label %do.body3.i.i469, !prof !44

do.body3.i.i469:                                  ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i475:                                    ; preds = %if.then124
  %298 = ptrtoint ptr %vaddr1.i.i453 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %vaddr1.i.i453, align 4
  %div15.i.i471 = lshr exact i32 %and.i552, 2
  %arrayidx.i.i472 = getelementptr i32, ptr %299, i32 %div15.i.i471
  %300 = ptrtoint ptr %arrayidx.i.i472 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 134303790, ptr %arrayidx.i.i472, align 4
  %301 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %user_size, align 4
  %add.i.i473 = add i32 %302, 4
  store i32 %add.i.i473, ptr %user_size, align 4
  %303 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i473, i32 %304)
  %cmp.not.i8.i474 = icmp ult i32 %add.i.i473, %304
  br i1 %cmp.not.i8.i474, label %CMD_LOAD_STATE.exit480, label %do.body3.i9.i476, !prof !44

do.body3.i9.i476:                                 ; preds = %OUT.exit.i475
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit480:                           ; preds = %OUT.exit.i475
  %305 = ptrtoint ptr %vaddr1.i.i453 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %vaddr1.i.i453, align 4
  %div15.i11.i477 = lshr i32 %add.i.i473, 2
  %arrayidx.i12.i478 = getelementptr i32, ptr %306, i32 %div15.i11.i477
  %307 = ptrtoint ptr %arrayidx.i12.i478 to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 1, ptr %arrayidx.i12.i478, align 4
  %308 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %user_size, align 4
  %add.i482 = add i32 %309, 11
  %and.i483 = and i32 %add.i482, -8
  store i32 %and.i483, ptr %user_size, align 4
  %310 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i483, i32 %311)
  %cmp.not.i.i485 = icmp ult i32 %and.i483, %311
  br i1 %cmp.not.i.i485, label %OUT.exit.i492, label %do.body3.i.i486, !prof !44

do.body3.i.i486:                                  ; preds = %CMD_LOAD_STATE.exit480
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i492:                                    ; preds = %CMD_LOAD_STATE.exit480
  %312 = ptrtoint ptr %vaddr1.i.i453 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %vaddr1.i.i453, align 4
  %div15.i.i488 = lshr exact i32 %and.i483, 2
  %arrayidx.i.i489 = getelementptr i32, ptr %313, i32 %div15.i.i488
  %314 = ptrtoint ptr %arrayidx.i.i489 to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 134303787, ptr %arrayidx.i.i489, align 4
  %315 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %user_size, align 4
  %add.i.i490 = add i32 %316, 4
  store i32 %add.i.i490, ptr %user_size, align 4
  %317 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i490, i32 %318)
  %cmp.not.i8.i491 = icmp ult i32 %add.i.i490, %318
  br i1 %cmp.not.i8.i491, label %CMD_LOAD_STATE.exit497, label %do.body3.i9.i493, !prof !44

do.body3.i9.i493:                                 ; preds = %OUT.exit.i492
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit497:                           ; preds = %OUT.exit.i492
  %319 = ptrtoint ptr %vaddr1.i.i453 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %vaddr1.i.i453, align 4
  %div15.i11.i494 = lshr i32 %add.i.i490, 2
  %arrayidx.i12.i495 = getelementptr i32, ptr %320, i32 %div15.i11.i494
  %321 = ptrtoint ptr %arrayidx.i12.i495 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 1, ptr %arrayidx.i12.i495, align 4
  %322 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %user_size, align 4
  %add.i499 = add i32 %323, 11
  %and.i500 = and i32 %add.i499, -8
  store i32 %and.i500, ptr %user_size, align 4
  %324 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i500, i32 %325)
  %cmp.not.i.i502 = icmp ult i32 %and.i500, %325
  br i1 %cmp.not.i.i502, label %OUT.exit.i509, label %do.body3.i.i503, !prof !44

do.body3.i.i503:                                  ; preds = %CMD_LOAD_STATE.exit497
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i509:                                    ; preds = %CMD_LOAD_STATE.exit497
  %326 = ptrtoint ptr %vaddr1.i.i453 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %vaddr1.i.i453, align 4
  %div15.i.i505 = lshr exact i32 %and.i500, 2
  %arrayidx.i.i506 = getelementptr i32, ptr %327, i32 %div15.i.i505
  %328 = ptrtoint ptr %arrayidx.i.i506 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 134303790, ptr %arrayidx.i.i506, align 4
  %329 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %user_size, align 4
  %add.i.i507 = add i32 %330, 4
  store i32 %add.i.i507, ptr %user_size, align 4
  %331 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i507, i32 %332)
  %cmp.not.i8.i508 = icmp ult i32 %add.i.i507, %332
  br i1 %cmp.not.i8.i508, label %CMD_LOAD_STATE.exit514, label %do.body3.i9.i510, !prof !44

do.body3.i9.i510:                                 ; preds = %OUT.exit.i509
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit514:                           ; preds = %OUT.exit.i509
  %333 = ptrtoint ptr %vaddr1.i.i453 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %vaddr1.i.i453, align 4
  %div15.i11.i511 = lshr i32 %add.i.i507, 2
  %arrayidx.i12.i512 = getelementptr i32, ptr %334, i32 %div15.i11.i511
  %335 = ptrtoint ptr %arrayidx.i12.i512 to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 0, ptr %arrayidx.i12.i512, align 4
  %336 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %user_size, align 4
  %add.i.i516 = add i32 %337, 11
  %and.i.i517 = and i32 %add.i.i516, -8
  store i32 %and.i.i517, ptr %user_size, align 4
  %338 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i517, i32 %339)
  %cmp.not.i.i.i519 = icmp ult i32 %and.i.i517, %339
  br i1 %cmp.not.i.i.i519, label %OUT.exit.i.i526, label %do.body3.i.i.i520, !prof !44

do.body3.i.i.i520:                                ; preds = %CMD_LOAD_STATE.exit514
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i.i526:                                  ; preds = %CMD_LOAD_STATE.exit514
  %340 = ptrtoint ptr %vaddr1.i.i453 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %vaddr1.i.i453, align 4
  %div15.i.i.i522 = lshr exact i32 %and.i.i517, 2
  %arrayidx.i.i.i523 = getelementptr i32, ptr %341, i32 %div15.i.i.i522
  %342 = ptrtoint ptr %arrayidx.i.i.i523 to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 134286850, ptr %arrayidx.i.i.i523, align 4
  %343 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %user_size, align 4
  %add.i.i.i524 = add i32 %344, 4
  store i32 %add.i.i.i524, ptr %user_size, align 4
  %345 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i524, i32 %346)
  %cmp.not.i8.i.i525 = icmp ult i32 %add.i.i.i524, %346
  br i1 %cmp.not.i8.i.i525, label %CMD_SEM.exit532, label %do.body3.i9.i.i527, !prof !44

do.body3.i9.i.i527:                               ; preds = %OUT.exit.i.i526
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_SEM.exit532:                                  ; preds = %OUT.exit.i.i526
  %347 = ptrtoint ptr %vaddr1.i.i453 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %vaddr1.i.i453, align 4
  %div15.i11.i.i528 = lshr i32 %add.i.i.i524, 2
  %arrayidx.i12.i.i529 = getelementptr i32, ptr %348, i32 %div15.i11.i.i528
  %349 = ptrtoint ptr %arrayidx.i12.i.i529 to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 1793, ptr %arrayidx.i12.i.i529, align 4
  %350 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %user_size, align 4
  %add.i534 = add i32 %351, 11
  %and.i535 = and i32 %add.i534, -8
  store i32 %and.i535, ptr %user_size, align 4
  %352 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i535, i32 %353)
  %cmp.not.i.i537 = icmp ult i32 %and.i535, %353
  br i1 %cmp.not.i.i537, label %OUT.exit.i544, label %do.body3.i.i538, !prof !44

do.body3.i.i538:                                  ; preds = %CMD_SEM.exit532
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i544:                                    ; preds = %CMD_SEM.exit532
  %354 = ptrtoint ptr %vaddr1.i.i453 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %vaddr1.i.i453, align 4
  %div15.i.i540 = lshr exact i32 %and.i535, 2
  %arrayidx.i.i541 = getelementptr i32, ptr %355, i32 %div15.i.i540
  %356 = ptrtoint ptr %arrayidx.i.i541 to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 1207959552, ptr %arrayidx.i.i541, align 4
  %357 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %user_size, align 4
  %add.i.i542 = add i32 %358, 4
  store i32 %add.i.i542, ptr %user_size, align 4
  %359 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i542, i32 %360)
  %cmp.not.i3.i543 = icmp ult i32 %add.i.i542, %360
  br i1 %cmp.not.i3.i543, label %CMD_STALL.exit549, label %do.body3.i4.i545, !prof !44

do.body3.i4.i545:                                 ; preds = %OUT.exit.i544
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_STALL.exit549:                                ; preds = %OUT.exit.i544
  call void @__sanitizer_cov_trace_pc() #6
  %361 = ptrtoint ptr %vaddr1.i.i453 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %vaddr1.i.i453, align 4
  %div15.i6.i546 = lshr i32 %add.i.i542, 2
  %arrayidx.i7.i547 = getelementptr i32, ptr %362, i32 %div15.i6.i546
  %363 = ptrtoint ptr %arrayidx.i7.i547 to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 1793, ptr %arrayidx.i7.i547, align 4
  %364 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %user_size, align 4
  %add.i8.i548 = add i32 %365, 4
  store i32 %add.i8.i548, ptr %user_size, align 4
  br label %if.then129

if.else125:                                       ; preds = %CMD_LOAD_STATE.exit463
  br i1 %cmp.not.i.i554, label %OUT.exit.i561, label %do.body3.i.i555, !prof !44

do.body3.i.i555:                                  ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i561:                                    ; preds = %if.else125
  %366 = ptrtoint ptr %vaddr1.i.i453 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %vaddr1.i.i453, align 4
  %div15.i.i557 = lshr exact i32 %and.i552, 2
  %arrayidx.i.i558 = getelementptr i32, ptr %367, i32 %div15.i.i557
  %368 = ptrtoint ptr %arrayidx.i.i558 to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 134284692, ptr %arrayidx.i.i558, align 4
  %369 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %user_size, align 4
  %add.i.i559 = add i32 %370, 4
  store i32 %add.i.i559, ptr %user_size, align 4
  %371 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i559, i32 %372)
  %cmp.not.i8.i560 = icmp ult i32 %add.i.i559, %372
  br i1 %cmp.not.i8.i560, label %CMD_LOAD_STATE.exit566, label %do.body3.i9.i562, !prof !44

do.body3.i9.i562:                                 ; preds = %OUT.exit.i561
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit566:                           ; preds = %OUT.exit.i561
  %373 = ptrtoint ptr %vaddr1.i.i453 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %vaddr1.i.i453, align 4
  %div15.i11.i563 = lshr i32 %add.i.i559, 2
  %arrayidx.i12.i564 = getelementptr i32, ptr %374, i32 %div15.i11.i563
  %375 = ptrtoint ptr %arrayidx.i12.i564 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 1, ptr %arrayidx.i12.i564, align 4
  %376 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %user_size, align 4
  %add.i.i568 = add i32 %377, 11
  %and.i.i569 = and i32 %add.i.i568, -8
  store i32 %and.i.i569, ptr %user_size, align 4
  %378 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i569, i32 %379)
  %cmp.not.i.i.i571 = icmp ult i32 %and.i.i569, %379
  br i1 %cmp.not.i.i.i571, label %OUT.exit.i.i578, label %do.body3.i.i.i572, !prof !44

do.body3.i.i.i572:                                ; preds = %CMD_LOAD_STATE.exit566
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i.i578:                                  ; preds = %CMD_LOAD_STATE.exit566
  %380 = ptrtoint ptr %vaddr1.i.i453 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %vaddr1.i.i453, align 4
  %div15.i.i.i574 = lshr exact i32 %and.i.i569, 2
  %arrayidx.i.i.i575 = getelementptr i32, ptr %381, i32 %div15.i.i.i574
  %382 = ptrtoint ptr %arrayidx.i.i.i575 to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 134286850, ptr %arrayidx.i.i.i575, align 4
  %383 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %user_size, align 4
  %add.i.i.i576 = add i32 %384, 4
  store i32 %add.i.i.i576, ptr %user_size, align 4
  %385 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i576, i32 %386)
  %cmp.not.i8.i.i577 = icmp ult i32 %add.i.i.i576, %386
  br i1 %cmp.not.i8.i.i577, label %CMD_SEM.exit584, label %do.body3.i9.i.i579, !prof !44

do.body3.i9.i.i579:                               ; preds = %OUT.exit.i.i578
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_SEM.exit584:                                  ; preds = %OUT.exit.i.i578
  %387 = ptrtoint ptr %vaddr1.i.i453 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %vaddr1.i.i453, align 4
  %div15.i11.i.i580 = lshr i32 %add.i.i.i576, 2
  %arrayidx.i12.i.i581 = getelementptr i32, ptr %388, i32 %div15.i11.i.i580
  %389 = ptrtoint ptr %arrayidx.i12.i.i581 to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 1793, ptr %arrayidx.i12.i.i581, align 4
  %390 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %user_size, align 4
  %add.i586 = add i32 %391, 11
  %and.i587 = and i32 %add.i586, -8
  store i32 %and.i587, ptr %user_size, align 4
  %392 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i587, i32 %393)
  %cmp.not.i.i589 = icmp ult i32 %and.i587, %393
  br i1 %cmp.not.i.i589, label %OUT.exit.i596, label %do.body3.i.i590, !prof !44

do.body3.i.i590:                                  ; preds = %CMD_SEM.exit584
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i596:                                    ; preds = %CMD_SEM.exit584
  %394 = ptrtoint ptr %vaddr1.i.i453 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %vaddr1.i.i453, align 4
  %div15.i.i592 = lshr exact i32 %and.i587, 2
  %arrayidx.i.i593 = getelementptr i32, ptr %395, i32 %div15.i.i592
  %396 = ptrtoint ptr %arrayidx.i.i593 to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 1207959552, ptr %arrayidx.i.i593, align 4
  %397 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %user_size, align 4
  %add.i.i594 = add i32 %398, 4
  store i32 %add.i.i594, ptr %user_size, align 4
  %399 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i594, i32 %400)
  %cmp.not.i3.i595 = icmp ult i32 %add.i.i594, %400
  br i1 %cmp.not.i3.i595, label %OUT.exit.i596.if.end130.sink.split_crit_edge, label %do.body3.i4.i597, !prof !44

OUT.exit.i596.if.end130.sink.split_crit_edge:     ; preds = %OUT.exit.i596
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end130.sink.split

do.body3.i4.i597:                                 ; preds = %OUT.exit.i596
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

if.then129:                                       ; preds = %CMD_STALL.exit549, %CMD_STALL.exit446.if.then129_crit_edge
  %401 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %user_size, align 4
  %add.i603 = add i32 %402, 7
  %and.i604 = and i32 %add.i603, -8
  store i32 %and.i604, ptr %user_size, align 4
  %403 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i604, i32 %404)
  %cmp.not.i.i606 = icmp ult i32 %and.i604, %404
  br i1 %cmp.not.i.i606, label %OUT.exit.i613, label %do.body3.i.i607, !prof !44

do.body3.i.i607:                                  ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i613:                                    ; preds = %if.then129
  %vaddr1.i.i608 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 2
  %405 = ptrtoint ptr %vaddr1.i.i608 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %vaddr1.i.i608, align 4
  %div15.i.i609 = lshr exact i32 %and.i604, 2
  %arrayidx.i.i610 = getelementptr i32, ptr %406, i32 %div15.i.i609
  %407 = ptrtoint ptr %arrayidx.i.i610 to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 134303790, ptr %arrayidx.i.i610, align 4
  %408 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %user_size, align 4
  %add.i.i611 = add i32 %409, 4
  store i32 %add.i.i611, ptr %user_size, align 4
  %410 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i611, i32 %411)
  %cmp.not.i8.i612 = icmp ult i32 %add.i.i611, %411
  br i1 %cmp.not.i8.i612, label %CMD_LOAD_STATE.exit618, label %do.body3.i9.i614, !prof !44

do.body3.i9.i614:                                 ; preds = %OUT.exit.i613
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit618:                           ; preds = %OUT.exit.i613
  %412 = ptrtoint ptr %vaddr1.i.i608 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %vaddr1.i.i608, align 4
  %div15.i11.i615 = lshr i32 %add.i.i611, 2
  %arrayidx.i12.i616 = getelementptr i32, ptr %413, i32 %div15.i11.i615
  %414 = ptrtoint ptr %arrayidx.i12.i616 to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 1, ptr %arrayidx.i12.i616, align 4
  %415 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %user_size, align 4
  %add.i.i620 = add i32 %416, 11
  %and.i.i621 = and i32 %add.i.i620, -8
  store i32 %and.i.i621, ptr %user_size, align 4
  %417 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i621, i32 %418)
  %cmp.not.i.i.i623 = icmp ult i32 %and.i.i621, %418
  br i1 %cmp.not.i.i.i623, label %OUT.exit.i.i630, label %do.body3.i.i.i624, !prof !44

do.body3.i.i.i624:                                ; preds = %CMD_LOAD_STATE.exit618
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i.i630:                                  ; preds = %CMD_LOAD_STATE.exit618
  %419 = ptrtoint ptr %vaddr1.i.i608 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %vaddr1.i.i608, align 4
  %div15.i.i.i626 = lshr exact i32 %and.i.i621, 2
  %arrayidx.i.i.i627 = getelementptr i32, ptr %420, i32 %div15.i.i.i626
  %421 = ptrtoint ptr %arrayidx.i.i.i627 to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 134286850, ptr %arrayidx.i.i.i627, align 4
  %422 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %user_size, align 4
  %add.i.i.i628 = add i32 %423, 4
  store i32 %add.i.i.i628, ptr %user_size, align 4
  %424 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i628, i32 %425)
  %cmp.not.i8.i.i629 = icmp ult i32 %add.i.i.i628, %425
  br i1 %cmp.not.i8.i.i629, label %CMD_SEM.exit636, label %do.body3.i9.i.i631, !prof !44

do.body3.i9.i.i631:                               ; preds = %OUT.exit.i.i630
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_SEM.exit636:                                  ; preds = %OUT.exit.i.i630
  %426 = ptrtoint ptr %vaddr1.i.i608 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %vaddr1.i.i608, align 4
  %div15.i11.i.i632 = lshr i32 %add.i.i.i628, 2
  %arrayidx.i12.i.i633 = getelementptr i32, ptr %427, i32 %div15.i11.i.i632
  %428 = ptrtoint ptr %arrayidx.i12.i.i633 to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 4097, ptr %arrayidx.i12.i.i633, align 4
  %429 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %user_size, align 4
  %add.i638 = add i32 %430, 11
  %and.i639 = and i32 %add.i638, -8
  store i32 %and.i639, ptr %user_size, align 4
  %431 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i639, i32 %432)
  %cmp.not.i.i641 = icmp ult i32 %and.i639, %432
  br i1 %cmp.not.i.i641, label %OUT.exit.i648, label %do.body3.i.i642, !prof !44

do.body3.i.i642:                                  ; preds = %CMD_SEM.exit636
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i648:                                    ; preds = %CMD_SEM.exit636
  %433 = ptrtoint ptr %vaddr1.i.i608 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %vaddr1.i.i608, align 4
  %div15.i.i644 = lshr exact i32 %and.i639, 2
  %arrayidx.i.i645 = getelementptr i32, ptr %434, i32 %div15.i.i644
  %435 = ptrtoint ptr %arrayidx.i.i645 to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 1207959552, ptr %arrayidx.i.i645, align 4
  %436 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %user_size, align 4
  %add.i.i646 = add i32 %437, 4
  store i32 %add.i.i646, ptr %user_size, align 4
  %438 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i646, i32 %439)
  %cmp.not.i3.i647 = icmp ult i32 %add.i.i646, %439
  br i1 %cmp.not.i3.i647, label %CMD_STALL.exit653, label %do.body3.i4.i649, !prof !44

do.body3.i4.i649:                                 ; preds = %OUT.exit.i648
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_STALL.exit653:                                ; preds = %OUT.exit.i648
  %440 = ptrtoint ptr %vaddr1.i.i608 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %vaddr1.i.i608, align 4
  %div15.i6.i650 = lshr i32 %add.i.i646, 2
  %arrayidx.i7.i651 = getelementptr i32, ptr %441, i32 %div15.i6.i650
  %442 = ptrtoint ptr %arrayidx.i7.i651 to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 4097, ptr %arrayidx.i7.i651, align 4
  %443 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %user_size, align 4
  %add.i655 = add i32 %444, 11
  %and.i656 = and i32 %add.i655, -8
  store i32 %and.i656, ptr %user_size, align 4
  %445 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i656, i32 %446)
  %cmp.not.i.i658 = icmp ult i32 %and.i656, %446
  br i1 %cmp.not.i.i658, label %OUT.exit.i665, label %do.body3.i.i659, !prof !44

do.body3.i.i659:                                  ; preds = %CMD_STALL.exit653
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i665:                                    ; preds = %CMD_STALL.exit653
  %447 = ptrtoint ptr %vaddr1.i.i608 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %vaddr1.i.i608, align 4
  %div15.i.i661 = lshr exact i32 %and.i656, 2
  %arrayidx.i.i662 = getelementptr i32, ptr %448, i32 %div15.i.i661
  %449 = ptrtoint ptr %arrayidx.i.i662 to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 134303790, ptr %arrayidx.i.i662, align 4
  %450 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %user_size, align 4
  %add.i.i663 = add i32 %451, 4
  store i32 %add.i.i663, ptr %user_size, align 4
  %452 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i663, i32 %453)
  %cmp.not.i8.i664 = icmp ult i32 %add.i.i663, %453
  br i1 %cmp.not.i8.i664, label %OUT.exit.i665.if.end130.sink.split_crit_edge, label %do.body3.i9.i666, !prof !44

OUT.exit.i665.if.end130.sink.split_crit_edge:     ; preds = %OUT.exit.i665
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end130.sink.split

do.body3.i9.i666:                                 ; preds = %OUT.exit.i665
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

if.end130.sink.split:                             ; preds = %OUT.exit.i665.if.end130.sink.split_crit_edge, %OUT.exit.i596.if.end130.sink.split_crit_edge
  %vaddr1.i.i453.sink = phi ptr [ %vaddr1.i.i453, %OUT.exit.i596.if.end130.sink.split_crit_edge ], [ %vaddr1.i.i608, %OUT.exit.i665.if.end130.sink.split_crit_edge ]
  %add.i.i594.sink = phi i32 [ %add.i.i594, %OUT.exit.i596.if.end130.sink.split_crit_edge ], [ %add.i.i663, %OUT.exit.i665.if.end130.sink.split_crit_edge ]
  %.sink732 = phi i32 [ 1793, %OUT.exit.i596.if.end130.sink.split_crit_edge ], [ 0, %OUT.exit.i665.if.end130.sink.split_crit_edge ]
  %454 = ptrtoint ptr %vaddr1.i.i453.sink to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %vaddr1.i.i453.sink, align 4
  %div15.i6.i598 = lshr i32 %add.i.i594.sink, 2
  %arrayidx.i7.i599 = getelementptr i32, ptr %455, i32 %div15.i6.i598
  %456 = ptrtoint ptr %arrayidx.i7.i599 to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 %.sink732, ptr %arrayidx.i7.i599, align 4
  %457 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %user_size, align 4
  %add.i8.i600 = add i32 %458, 4
  store i32 %add.i8.i600, ptr %user_size, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.end130.sink.split, %CMD_STALL.exit446.if.end130_crit_edge
  %and132 = and i32 %event, 31
  %or133 = or i32 %and132, 64
  %459 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %user_size, align 4
  %add.i672 = add i32 %460, 7
  %and.i673 = and i32 %add.i672, -8
  store i32 %and.i673, ptr %user_size, align 4
  %461 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i673, i32 %462)
  %cmp.not.i.i675 = icmp ult i32 %and.i673, %462
  br i1 %cmp.not.i.i675, label %OUT.exit.i682, label %do.body3.i.i676, !prof !44

do.body3.i.i676:                                  ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i682:                                    ; preds = %if.end130
  %vaddr1.i.i677 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 2
  %463 = ptrtoint ptr %vaddr1.i.i677 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %vaddr1.i.i677, align 4
  %div15.i.i678 = lshr exact i32 %and.i673, 2
  %arrayidx.i.i679 = getelementptr i32, ptr %464, i32 %div15.i.i678
  %465 = ptrtoint ptr %arrayidx.i.i679 to i32
  call void @__asan_store4_noabort(i32 %465)
  store i32 134286849, ptr %arrayidx.i.i679, align 4
  %466 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %user_size, align 4
  %add.i.i680 = add i32 %467, 4
  store i32 %add.i.i680, ptr %user_size, align 4
  %468 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i680, i32 %469)
  %cmp.not.i8.i681 = icmp ult i32 %add.i.i680, %469
  br i1 %cmp.not.i8.i681, label %CMD_LOAD_STATE.exit687, label %do.body3.i9.i683, !prof !44

do.body3.i9.i683:                                 ; preds = %OUT.exit.i682
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LOAD_STATE.exit687:                           ; preds = %OUT.exit.i682
  %470 = ptrtoint ptr %vaddr1.i.i677 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %vaddr1.i.i677, align 4
  %div15.i11.i684 = lshr i32 %add.i.i680, 2
  %arrayidx.i12.i685 = getelementptr i32, ptr %471, i32 %div15.i11.i684
  %472 = ptrtoint ptr %arrayidx.i12.i685 to i32
  call void @__asan_store4_noabort(i32 %472)
  store i32 %or133, ptr %arrayidx.i12.i685, align 4
  %473 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %user_size, align 4
  %add.i689 = add i32 %474, 11
  %and.i690 = and i32 %add.i689, -8
  store i32 %and.i690, ptr %user_size, align 4
  %475 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i690, i32 %476)
  %cmp.not.i.i692 = icmp ult i32 %and.i690, %476
  br i1 %cmp.not.i.i692, label %CMD_WAIT.exit, label %do.body3.i.i693, !prof !44

do.body3.i.i693:                                  ; preds = %CMD_LOAD_STATE.exit687
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_WAIT.exit:                                    ; preds = %CMD_LOAD_STATE.exit687
  %477 = ptrtoint ptr %vaddr1.i.i677 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %vaddr1.i.i677, align 4
  %div15.i.i695 = lshr exact i32 %and.i690, 2
  %arrayidx.i.i696 = getelementptr i32, ptr %478, i32 %div15.i.i695
  %479 = ptrtoint ptr %arrayidx.i.i696 to i32
  call void @__asan_store4_noabort(i32 %479)
  store i32 939524296, ptr %arrayidx.i.i696, align 4
  %480 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %user_size, align 4
  %add.i.i697 = add i32 %481, 4
  store i32 %add.i.i697, ptr %user_size, align 4
  %482 = ptrtoint ptr %mmu_context3 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %mmu_context3, align 4
  %cmdbuf_mapping135 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %483, i32 0, i32 6
  %call136 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %buffer1, ptr noundef %cmdbuf_mapping135) #4
  %484 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %user_size, align 4
  %add138 = add i32 %call136, -4
  %sub139 = add i32 %add138, %485
  %add.i700 = add i32 %485, 7
  %and.i701 = and i32 %add.i700, -8
  store i32 %and.i701, ptr %user_size, align 4
  %486 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i701, i32 %487)
  %cmp.not.i.i703 = icmp ult i32 %and.i701, %487
  br i1 %cmp.not.i.i703, label %OUT.exit.i710, label %do.body3.i.i704, !prof !44

do.body3.i.i704:                                  ; preds = %CMD_WAIT.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

OUT.exit.i710:                                    ; preds = %CMD_WAIT.exit
  %488 = ptrtoint ptr %vaddr1.i.i677 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %vaddr1.i.i677, align 4
  %div15.i.i706 = lshr exact i32 %and.i701, 2
  %arrayidx.i.i707 = getelementptr i32, ptr %489, i32 %div15.i.i706
  %490 = ptrtoint ptr %arrayidx.i.i707 to i32
  call void @__asan_store4_noabort(i32 %490)
  store i32 1073741826, ptr %arrayidx.i.i707, align 4
  %491 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load i32, ptr %user_size, align 4
  %add.i.i708 = add i32 %492, 4
  store i32 %add.i.i708, ptr %user_size, align 4
  %493 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %size.i367, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i708, i32 %494)
  %cmp.not.i8.i709 = icmp ult i32 %add.i.i708, %494
  br i1 %cmp.not.i8.i709, label %CMD_LINK.exit715, label %do.body3.i9.i711, !prof !44

do.body3.i9.i711:                                 ; preds = %OUT.exit.i710
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

CMD_LINK.exit715:                                 ; preds = %OUT.exit.i710
  %495 = ptrtoint ptr %vaddr1.i.i677 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %vaddr1.i.i677, align 4
  %div15.i11.i712 = lshr i32 %add.i.i708, 2
  %arrayidx.i12.i713 = getelementptr i32, ptr %496, i32 %div15.i11.i712
  %497 = ptrtoint ptr %arrayidx.i12.i713 to i32
  call void @__asan_store4_noabort(i32 %497)
  store i32 %sub139, ptr %arrayidx.i12.i713, align 4
  %498 = ptrtoint ptr %user_size to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %user_size, align 4
  %add.i13.i714 = add i32 %499, 4
  store i32 %add.i13.i714, ptr %user_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %500 = load i32, ptr @__drm_debug, align 4
  %and.i716 = and i32 %500, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i716)
  %tobool.i717.not = icmp eq i32 %and.i716, 0
  br i1 %tobool.i717.not, label %CMD_LINK.exit715.if.end150_crit_edge, label %do.end144

CMD_LINK.exit715.if.end150_crit_edge:             ; preds = %CMD_LINK.exit715
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end150

do.end144:                                        ; preds = %CMD_LINK.exit715
  call void @__sanitizer_cov_trace_pc() #6
  %501 = ptrtoint ptr %mmu_context3 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %mmu_context3, align 4
  %cmdbuf_mapping147 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %502, i32 0, i32 6
  %call148 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %cmdbuf, ptr noundef %cmdbuf_mapping147) #4
  %503 = ptrtoint ptr %vaddr1.i.i384 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %vaddr1.i.i384, align 4
  %call149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %add3.i373, i32 noundef %call148, ptr noundef %504) #7
  br label %if.end150

if.end150:                                        ; preds = %do.end144, %CMD_LINK.exit715.if.end150_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %505 = load i32, ptr @__drm_debug, align 4
  %and.i718 = and i32 %505, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i718)
  %tobool.i719.not = icmp eq i32 %and.i718, 0
  br i1 %tobool.i719.not, label %if.end150.if.end176_crit_edge, label %if.then152

if.end150.if.end176_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end176

if.then152:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #6
  %506 = ptrtoint ptr %vaddr1.i.i384 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %vaddr1.i.i384, align 4
  %508 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %size, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 2, i32 noundef 16, i32 noundef 4, ptr noundef %507, i32 noundef %509, i1 noundef zeroext false) #4
  %510 = ptrtoint ptr %vaddr1.i.i677 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %vaddr1.i.i677, align 4
  %add.ptr = getelementptr i8, ptr %511, i32 %sub
  %call160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %add.ptr) #7
  %call165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %link_target.0) #7
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %add3.i373) #7
  %call175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %event) #7
  br label %if.end176

if.end176:                                        ; preds = %if.then152, %if.end150.if.end176_crit_edge
  %and178 = and i32 %link_dwords.0, 65535
  %or179 = or i32 %and178, 1073741824
  %512 = ptrtoint ptr %vaddr1.i.i677 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %vaddr1.i.i677, align 4
  %add.ptr.i = getelementptr i8, ptr %513, i32 %sub
  %arrayidx.i = getelementptr i32, ptr %add.ptr.i, i32 1
  %514 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %514)
  store i32 %link_target.0, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %515 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %515)
  store i32 %or179, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  tail call void @arm_heavy_mb() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %516 = load i32, ptr @__drm_debug, align 4
  %and.i721 = and i32 %516, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i721)
  %tobool.i722.not = icmp eq i32 %and.i721, 0
  br i1 %tobool.i722.not, label %if.end176.if.end182_crit_edge, label %if.then181

if.end176.if.end182_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end182

if.then181:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #6
  %517 = ptrtoint ptr %size.i367 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %size.i367, align 4
  %519 = ptrtoint ptr %vaddr1.i.i677 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %vaddr1.i.i677, align 4
  %dev.i725 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 2
  %521 = ptrtoint ptr %dev.i725 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %dev.i725, align 8
  %523 = ptrtoint ptr %mmu_context3 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %mmu_context3, align 4
  %cmdbuf_mapping.i727 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %524, i32 0, i32 6
  %call.i728 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %buffer1, ptr noundef %cmdbuf_mapping.i727) #4
  %sub.i729 = add i32 %518, -320
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %522, ptr noundef nonnull @.str.17, ptr noundef %520, i32 noundef %call.i728, i32 noundef %sub.i729) #7
  tail call void @print_hex_dump(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 2, i32 noundef 16, i32 noundef 4, ptr noundef %520, i32 noundef 320, i1 noundef zeroext false) #4
  br label %if.end182

if.end182:                                        ; preds = %if.then181, %if.end176.if.end182_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_context_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @etnaviv_iommuv2_get_pta_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_iommuv2_get_mtlb_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_buffer.c", i32 166, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_buffer.c", i32 512, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @etnaviv_buffer_queue._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @etnaviv_buffer_queue._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_buffer.c", i32 518, i32 18}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_buffer.c", i32 518, i32 29}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_buffer.c", i32 521, i32 3}
!13 = !{ptr @etnaviv_buffer_queue._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @etnaviv_buffer_queue._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_buffer.c", i32 522, i32 3}
!17 = !{ptr @etnaviv_buffer_queue._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @etnaviv_buffer_queue._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_buffer.c", i32 523, i32 3}
!21 = !{ptr @etnaviv_buffer_queue._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @etnaviv_buffer_queue._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_buffer.c", i32 524, i32 3}
!25 = !{ptr @etnaviv_buffer_queue._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @etnaviv_buffer_queue._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_buffer.c", i32 121, i32 2}
!29 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @etnaviv_buffer_dump._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @etnaviv_buffer_dump._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{i64 2156775856, i64 2156776360, i64 2156775893, i64 2156775949, i64 2156775983, i64 2156776007, i64 2156776048, i64 2156776069, i64 2156776097, i64 2156776131}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{i64 2156783329}
!46 = !{i64 2156783472}
!47 = !{i64 2148524591, i64 2148524623, i64 2148524652, i64 2148524686, i64 2148524717, i64 2148524740}
