; ModuleID = '/llk/IR_all_yes/drivers/media/platform/s5p-mfc/s5p_mfc_opr.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-mfc/s5p_mfc_opr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.s5p_mfc_dev = type { %struct.v4l2_device, ptr, ptr, ptr, [2 x ptr], ptr, i32, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.s5p_mfc_pm, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.mutex, i32, i32, i32, %struct.wait_queue_head, %struct.s5p_mfc_priv_buf, i32, i32, ptr, ptr, [2 x i32], i32, [4 x ptr], i32, i32, %struct.atomic_t, %struct.timer_list, ptr, %struct.work_struct, i32, %struct.s5p_mfc_priv_buf, i32, ptr, ptr, ptr, i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.s5p_mfc_pm = type { ptr, ptr, [4 x ptr], i32, i8, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.s5p_mfc_priv_buf = type { i32, ptr, i32, i32, i32 }

@s5p_mfc_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mfc_debug_level = external dso_local local_unnamed_addr global i32, align 4
@s5p_mfc_alloc_priv_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s:%d: Allocating priv: %zu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5p_mfc_alloc_priv_buf\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/s5p-mfc/s5p_mfc_opr.c\00", [51 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_priv_buf._entry_ptr = internal global ptr @s5p_mfc_alloc_priv_buf._entry, section ".printk_index", align 4
@s5p_mfc_alloc_priv_buf._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\013%s:%d: Invalid memory configuration - buffer (%pad) is below base memory address(%pad)\0A\00", [38 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_priv_buf._entry_ptr.5 = internal global ptr @s5p_mfc_alloc_priv_buf._entry.3, section ".printk_index", align 4
@s5p_mfc_alloc_priv_buf._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:%d: Allocated addr %p %pad\0A\00", [63 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_priv_buf._entry_ptr.8 = internal global ptr @s5p_mfc_alloc_priv_buf._entry.6, section ".printk_index", align 4
@s5p_mfc_alloc_priv_buf._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s:%d: Allocating private buffer of size %zu failed\0A\00", [41 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_priv_buf._entry_ptr.11 = internal global ptr @s5p_mfc_alloc_priv_buf._entry.9, section ".printk_index", align 4
@s5p_mfc_alloc_generic_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s:%d: Allocating generic buf: %zu\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s5p_mfc_alloc_generic_buf\00", [38 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_generic_buf._entry_ptr = internal global ptr @s5p_mfc_alloc_generic_buf._entry, section ".printk_index", align 4
@s5p_mfc_alloc_generic_buf._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.13, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_generic_buf._entry_ptr.15 = internal global ptr @s5p_mfc_alloc_generic_buf._entry.14, section ".printk_index", align 4
@s5p_mfc_alloc_generic_buf._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s:%d: Allocating generic buffer of size %zu failed\0A\00", [41 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_generic_buf._entry_ptr.18 = internal global ptr @s5p_mfc_alloc_generic_buf._entry.16, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant [12 x i8] c"s5p_mfc_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 17, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 45, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 65, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 72, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 75, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 84, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 91, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [48 x i8] c"../drivers/media/platform/s5p-mfc/s5p_mfc_opr.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 94, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @s5p_mfc_alloc_generic_buf._entry, ptr @s5p_mfc_alloc_generic_buf._entry.14, ptr @s5p_mfc_alloc_generic_buf._entry.16, ptr @s5p_mfc_alloc_generic_buf._entry_ptr, ptr @s5p_mfc_alloc_generic_buf._entry_ptr.15, ptr @s5p_mfc_alloc_generic_buf._entry_ptr.18, ptr @s5p_mfc_alloc_priv_buf._entry, ptr @s5p_mfc_alloc_priv_buf._entry.3, ptr @s5p_mfc_alloc_priv_buf._entry.6, ptr @s5p_mfc_alloc_priv_buf._entry.9, ptr @s5p_mfc_alloc_priv_buf._entry_ptr, ptr @s5p_mfc_alloc_priv_buf._entry_ptr.11, ptr @s5p_mfc_alloc_priv_buf._entry_ptr.5, ptr @s5p_mfc_alloc_priv_buf._entry_ptr.8, ptr @s5p_mfc_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.17], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_priv_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_priv_buf._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_priv_buf._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_priv_buf._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_generic_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_generic_buf._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_generic_buf._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s5p_mfc_init_hw_ops(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %3)
  %cmp = icmp ugt i32 %3, 95
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call ptr @s5p_mfc_init_hw_ops_v6() #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call ptr @s5p_mfc_init_hw_ops_v5() #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi ptr [ %call1, %if.else ], [ %call, %if.then ]
  %.sink = phi i32 [ 145, %if.else ], [ 160, %if.then ]
  store ptr %storemerge, ptr @s5p_mfc_ops, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 35
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %4, align 4
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 36
  %6 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %storemerge, ptr %mfc_ops, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @s5p_mfc_init_hw_ops_v6() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @s5p_mfc_init_hw_ops_v5() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s5p_mfc_init_regs(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %3)
  %cmp = icmp ugt i32 %3, 95
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call ptr @s5p_mfc_init_regs_v6_plus(ptr noundef %dev) #4
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 38
  %4 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %mfc_regs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @s5p_mfc_init_regs_v6_plus(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_alloc_priv_buf(ptr nocapture noundef readonly %dev, i32 noundef %mem_ctx, ptr noundef %b) local_unnamed_addr #0 align 64 {
entry:
  %base = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_size = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mem_size, align 4
  %shr = lshr i32 %1, 12
  %size = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 3
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %shr1 = lshr i32 %3, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %4 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp sgt i32 %4, 2
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 45, i32 noundef %3) #7
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %mem_virt = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 23
  %5 = ptrtoint ptr %mem_virt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mem_virt, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end5
  %mem_bitmap = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 22
  %7 = ptrtoint ptr %mem_bitmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem_bitmap, align 4
  %call.i = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %8, i32 noundef %shr, i32 noundef 0, i32 noundef %shr1, i32 noundef 15, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %shr)
  %cmp8 = icmp ugt i32 %call.i, %shr
  br i1 %cmp8, label %if.then6.do.end57_crit_edge, label %if.end10

if.then6.do.end57_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end57

if.end10:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %mem_bitmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mem_bitmap, align 4
  tail call void @__bitmap_set(ptr noundef %10, i32 noundef %call.i, i32 noundef %shr1) #4
  %shl = shl i32 %call.i, 12
  %11 = ptrtoint ptr %mem_virt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mem_virt, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %shl
  %virt = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 1
  %13 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %virt, align 4
  %mem_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 21
  %14 = ptrtoint ptr %mem_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mem_base, align 4
  %add = add i32 %15, %shl
  %dma = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 2
  %16 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %dma, align 4
  br label %do.body41

if.else:                                          ; preds = %do.end5
  %arrayidx = getelementptr %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 4, i32 %mem_ctx
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base) #4
  %arrayidx14 = getelementptr %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 24, i32 %mem_ctx
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx14, align 4
  %21 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %base, align 4
  %ctx = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 4
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mem_ctx, ptr %ctx, align 4
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  %dma16 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 2
  %call.i99 = tail call ptr @dma_alloc_attrs(ptr noundef %18, i32 noundef %24, ptr noundef %dma16, i32 noundef 3264, i32 noundef 0) #4
  %virt18 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 1
  %25 = ptrtoint ptr %virt18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i99, ptr %virt18, align 4
  %tobool20.not = icmp eq ptr %call.i99, null
  br i1 %tobool20.not, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.else
  %26 = ptrtoint ptr %dma16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma16, align 4
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp24 = icmp ult i32 %27, %29
  br i1 %cmp24, label %cleanup.thread, label %cleanup.thread101

cleanup.thread101:                                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base) #4
  br label %do.body41

cleanup.thread:                                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 66, ptr noundef %dma16, ptr noundef nonnull %base) #7
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size, align 4
  %32 = ptrtoint ptr %virt18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %virt18, align 4
  %34 = ptrtoint ptr %dma16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma16, align 4
  call void @dma_free_attrs(ptr noundef %18, i32 noundef %31, ptr noundef %33, i32 noundef %35, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base) #4
  br label %cleanup63

cleanup:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base) #4
  br label %do.end57

do.body41:                                        ; preds = %cleanup.thread101, %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %36 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp42 = icmp sgt i32 %36, 2
  br i1 %cmp42, label %do.end46, label %do.body41.cleanup63_crit_edge

do.body41.cleanup63_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup63

do.end46:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #6
  %virt48 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 1
  %37 = ptrtoint ptr %virt48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %virt48, align 4
  %dma49 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 2
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 72, ptr noundef %38, ptr noundef %dma49) #7
  br label %cleanup63

do.end57:                                         ; preds = %cleanup, %if.then6.do.end57_crit_edge
  %39 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size, align 4
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 75, i32 noundef %40) #7
  br label %cleanup63

cleanup63:                                        ; preds = %do.end57, %do.end46, %do.body41.cleanup63_crit_edge, %cleanup.thread
  %retval.1 = phi i32 [ -12, %do.end57 ], [ 0, %do.end46 ], [ 0, %do.body41.cleanup63_crit_edge ], [ -12, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_alloc_generic_buf(ptr nocapture noundef readonly %dev, i32 noundef %mem_ctx, ptr noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 4, i32 %mem_ctx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %2 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %size = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 3
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 84, i32 noundef %4) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %ctx = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 4
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mem_ctx, ptr %ctx, align 4
  %size5 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 3
  %6 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size5, align 4
  %dma = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %1, i32 noundef %7, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #4
  %virt = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 1
  %8 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %virt, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end26, label %do.body10

do.body10:                                        ; preds = %do.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %9 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp11 = icmp sgt i32 %9, 2
  br i1 %cmp11, label %do.end15, label %do.body10.cleanup_crit_edge

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end15:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.13, i32 noundef 91, ptr noundef nonnull %call.i, ptr noundef %dma) #7
  br label %cleanup

do.end26:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size5, align 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.13, i32 noundef 94, i32 noundef %11) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %do.end15, %do.body10.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end26 ], [ 0, %do.end15 ], [ 0, %do.body10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s5p_mfc_release_priv_buf(ptr nocapture noundef readonly %dev, ptr nocapture noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_virt = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %mem_virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_virt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dma = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 2
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma, align 4
  %mem_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 21
  %4 = ptrtoint ptr %mem_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mem_base, align 4
  %sub = sub i32 %3, %5
  %shr = lshr i32 %sub, 12
  %size = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 3
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %shr1 = lshr i32 %7, 12
  %mem_bitmap = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 22
  %8 = ptrtoint ptr %mem_bitmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mem_bitmap, align 4
  tail call void @__bitmap_clear(ptr noundef %9, i32 noundef %shr, i32 noundef %shr1) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ctx = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 4
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx, align 4
  %arrayidx = getelementptr %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 4, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %size3 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 3
  %14 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size3, align 4
  %virt = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 1
  %16 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %virt, align 4
  %dma4 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 2
  %18 = ptrtoint ptr %dma4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma4, align 4
  tail call void @dma_free_attrs(ptr noundef %13, i32 noundef %15, ptr noundef %17, i32 noundef %19, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %virt5 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 1
  %20 = ptrtoint ptr %virt5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %virt5, align 4
  %dma6 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 2
  %21 = ptrtoint ptr %dma6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %dma6, align 4
  %size7 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 3
  %22 = ptrtoint ptr %size7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %size7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s5p_mfc_release_generic_buf(ptr nocapture noundef readonly %dev, ptr nocapture noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 4
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctx, align 4
  %arrayidx = getelementptr %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 4, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %size = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 3
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %virt = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 1
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt, align 4
  %dma = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %b, i32 0, i32 2
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef 0) #4
  %10 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %virt, align 4
  %11 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %dma, align 4
  %12 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %size, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !28, !29, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr.c", i32 45, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @s5p_mfc_alloc_priv_buf._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @s5p_mfc_alloc_priv_buf._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr.c", i32 65, i32 4}
!8 = !{ptr @s5p_mfc_alloc_priv_buf._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @s5p_mfc_alloc_priv_buf._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr.c", i32 72, i32 2}
!12 = !{ptr @s5p_mfc_alloc_priv_buf._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @s5p_mfc_alloc_priv_buf._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr.c", i32 75, i32 2}
!16 = !{ptr @s5p_mfc_alloc_priv_buf._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @s5p_mfc_alloc_priv_buf._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr.c", i32 84, i32 2}
!20 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @s5p_mfc_alloc_generic_buf._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @s5p_mfc_alloc_generic_buf._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @s5p_mfc_alloc_generic_buf._entry.14, !24, !"_entry", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr.c", i32 91, i32 2}
!25 = !{ptr @s5p_mfc_alloc_generic_buf._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr.c", i32 94, i32 2}
!28 = !{ptr @s5p_mfc_alloc_generic_buf._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @s5p_mfc_alloc_generic_buf._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @s5p_mfc_ops, !31, !"s5p_mfc_ops", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr.c", i32 17, i32 31}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
