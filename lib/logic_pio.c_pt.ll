; ModuleID = '/llk/IR_all_yes/lib/logic_pio.c_pt.bc'
source_filename = "../lib/logic_pio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.logic_pio_hwaddr = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@io_range_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @io_range_mutex, i64 52), ptr getelementptr (i8, ptr @io_range_mutex, i64 52) }, ptr @io_range_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@io_range_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @io_range_list, ptr @io_range_list }, [24 x i8] zeroinitializer }, align 32
@logic_pio_register_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014LOGIC PIO: Requested IO range too big, new size set to 64K\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"logic_pio_register_range\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lib/logic_pio.c\00", [16 x i8] zeroinitializer }, align 32
@logic_pio_register_range._entry_ptr = internal global ptr @logic_pio_register_range._entry, section ".printk_index", align 4
@find_io_range_by_fwnode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@logic_pio_trans_hwaddr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013LOGIC PIO: IO range not found or invalid\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"logic_pio_trans_hwaddr\00", [41 x i8] zeroinitializer }, align 32
@logic_pio_trans_hwaddr._entry_ptr = internal global ptr @logic_pio_trans_hwaddr._entry, section ".printk_index", align 4
@logic_pio_trans_hwaddr._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013LOGIC PIO: resource size %pa cannot fit in IO range size %pa\0A\00", [32 x i8] zeroinitializer }, align 32
@logic_pio_trans_hwaddr._entry_ptr.8 = internal global ptr @logic_pio_trans_hwaddr._entry.6, section ".printk_index", align 4
@logic_pio_trans_cpuaddr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@logic_pio_trans_cpuaddr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013LOGIC PIO: addr %pa not registered in io_range_list\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"logic_pio_trans_cpuaddr\00", [40 x i8] zeroinitializer }, align 32
@logic_pio_trans_cpuaddr._entry_ptr = internal global ptr @logic_pio_trans_cpuaddr._entry, section ".printk_index", align 4
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"io_range_mutex.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"io_range_mutex\00", [17 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@find_io_range.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@find_io_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013LOGIC PIO: PIO entry token 0x%lx invalid\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"find_io_range\00", [18 x i8] zeroinitializer }, align 32
@find_io_range._entry_ptr = internal global ptr @find_io_range._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"io_range_mutex\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"io_range_list\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 20, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 84, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 133, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 199, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 203, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 229, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 21, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 695, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 723, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [19 x i8] c"../lib/logic_pio.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 159, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @find_io_range._entry, ptr @find_io_range._entry_ptr, ptr @logic_pio_register_range._entry, ptr @logic_pio_register_range._entry_ptr, ptr @logic_pio_trans_cpuaddr._entry, ptr @logic_pio_trans_cpuaddr._entry_ptr, ptr @logic_pio_trans_hwaddr._entry, ptr @logic_pio_trans_hwaddr._entry.6, ptr @logic_pio_trans_hwaddr._entry_ptr, ptr @logic_pio_trans_hwaddr._entry_ptr.8, ptr @io_range_mutex, ptr @io_range_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_range_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_range_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logic_pio_register_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logic_pio_trans_hwaddr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logic_pio_trans_hwaddr._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logic_pio_trans_cpuaddr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_io_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @logic_pio_register_range(ptr noundef %new_range) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %tobool.not = icmp eq ptr %new_range, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fwnode = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %new_range, i32 0, i32 1
  %0 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwnode, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %size = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %new_range, i32 0, i32 4
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %flags = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %new_range, i32 0, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false4.if.end_crit_edge

lor.lhs.false4.if.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %ops = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %new_range, i32 0, i32 7
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false4.if.end_crit_edge
  %hw_start = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %new_range, i32 0, i32 2
  %8 = ptrtoint ptr %hw_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw_start, align 4
  %add = add i32 %9, %3
  tail call void @mutex_lock_nested(ptr noundef nonnull @io_range_mutex, i32 noundef 0) #7
  %range.0118 = load ptr, ptr @io_range_list, align 4
  %cmp8.not119 = icmp eq ptr %range.0118, @io_range_list
  br i1 %cmp8.not119, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %10 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fwnode, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %range.0122 = phi ptr [ %range.0118, %for.body.lr.ph ], [ %range.0, %for.inc.for.body_crit_edge ]
  %mmio_end.0121 = phi i32 [ 0, %for.body.lr.ph ], [ %mmio_end.1, %for.inc.for.body_crit_edge ]
  %iio_sz.0120 = phi i32 [ 1048575, %for.body.lr.ph ], [ %iio_sz.1, %for.inc.for.body_crit_edge ]
  %fwnode9 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %range.0122, i32 0, i32 1
  %12 = ptrtoint ptr %fwnode9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fwnode9, align 4
  %cmp11 = icmp eq ptr %13, %11
  br i1 %cmp11, label %for.body.end_register_crit_edge, label %if.end13

for.body.end_register_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %end_register

if.end13:                                         ; preds = %for.body
  %flags14 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %range.0122, i32 0, i32 5
  %14 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags14, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %if.end13.for.inc_crit_edge [
    i32 1, label %land.lhs.true16
    i32 0, label %land.lhs.true34
  ]

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true16:                                  ; preds = %if.end13
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp18 = icmp eq i32 %18, 1
  br i1 %cmp18, label %if.then19, label %land.lhs.true16.for.inc_crit_edge

land.lhs.true16.for.inc_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then19:                                        ; preds = %land.lhs.true16
  %hw_start20 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %range.0122, i32 0, i32 2
  %19 = ptrtoint ptr %hw_start20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hw_start20, align 4
  %size21 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %range.0122, i32 0, i32 4
  %21 = ptrtoint ptr %size21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size21, align 4
  %add22 = add i32 %22, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add22)
  %cmp23.not = icmp uge i32 %9, %add22
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %20)
  %cmp26 = icmp ult i32 %add, %20
  %or.cond = select i1 %cmp23.not, i1 true, i1 %cmp26
  br i1 %or.cond, label %if.then27, label %if.then19.end_register_crit_edge

if.then19.end_register_crit_edge:                 ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %end_register

if.then27:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  %io_start = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %range.0122, i32 0, i32 3
  %23 = ptrtoint ptr %io_start to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %io_start, align 4
  %add29 = add i32 %24, %22
  br label %for.inc

land.lhs.true34:                                  ; preds = %if.end13
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp36 = icmp eq i32 %26, 0
  br i1 %cmp36, label %if.then37, label %land.lhs.true34.for.inc_crit_edge

land.lhs.true34.for.inc_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then37:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #6
  %size38 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %range.0122, i32 0, i32 4
  %27 = ptrtoint ptr %size38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size38, align 4
  %add39 = add i32 %28, %iio_sz.0120
  br label %for.inc

for.inc:                                          ; preds = %if.then37, %land.lhs.true34.for.inc_crit_edge, %if.then27, %land.lhs.true16.for.inc_crit_edge, %if.end13.for.inc_crit_edge
  %iio_sz.1 = phi i32 [ %iio_sz.0120, %if.then27 ], [ %add39, %if.then37 ], [ %iio_sz.0120, %land.lhs.true34.for.inc_crit_edge ], [ %iio_sz.0120, %land.lhs.true16.for.inc_crit_edge ], [ %iio_sz.0120, %if.end13.for.inc_crit_edge ]
  %mmio_end.1 = phi i32 [ %add29, %if.then27 ], [ %mmio_end.0121, %if.then37 ], [ %mmio_end.0121, %land.lhs.true34.for.inc_crit_edge ], [ %mmio_end.0121, %land.lhs.true16.for.inc_crit_edge ], [ %mmio_end.0121, %if.end13.for.inc_crit_edge ]
  %29 = ptrtoint ptr %range.0122 to i32
  call void @__asan_load4_noabort(i32 %29)
  %range.0 = load ptr, ptr %range.0122, align 4
  %cmp8.not = icmp eq ptr %range.0, @io_range_list
  br i1 %cmp8.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %iio_sz.0.lcssa = phi i32 [ 1048575, %if.end.for.end_crit_edge ], [ %iio_sz.1, %for.inc.for.end_crit_edge ]
  %mmio_end.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %mmio_end.1, %for.inc.for.end_crit_edge ]
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %31, label %for.end.end_register_crit_edge [
    i32 1, label %if.then48
    i32 0, label %if.then65
  ]

for.end.end_register_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %end_register

if.then48:                                        ; preds = %for.end
  %33 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size, align 4
  %add50 = add i32 %mmio_end.0.lcssa, -1048577
  %35 = add i32 %add50, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048576, i32 %35)
  %cmp51 = icmp ult i32 %35, -1048576
  br i1 %cmp51, label %if.then52, label %if.then48.if.end75_crit_edge

if.then48.if.end75_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end75

if.then52:                                        ; preds = %if.then48
  %36 = add i32 %mmio_end.0.lcssa, -983041
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048576, i32 %36)
  %cmp55 = icmp ult i32 %36, -1048576
  br i1 %cmp55, label %if.then52.end_register_crit_edge, label %if.end57

if.then52.end_register_crit_edge:                 ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  br label %end_register

if.end57:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 65536, ptr %size, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %if.end75

if.then65:                                        ; preds = %for.end
  %38 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size, align 4
  %add67 = add i32 %iio_sz.0.lcssa, -1048577
  %40 = add i32 %add67, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048576, i32 %40)
  %cmp69 = icmp ult i32 %40, -1048576
  br i1 %cmp69, label %if.then65.end_register_crit_edge, label %if.then65.if.end75_crit_edge

if.then65.if.end75_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end75

if.then65.end_register_crit_edge:                 ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #6
  br label %end_register

if.end75:                                         ; preds = %if.then65.if.end75_crit_edge, %if.end57, %if.then48.if.end75_crit_edge
  %iio_sz.0.lcssa.sink = phi i32 [ %mmio_end.0.lcssa, %if.end57 ], [ %mmio_end.0.lcssa, %if.then48.if.end75_crit_edge ], [ %iio_sz.0.lcssa, %if.then65.if.end75_crit_edge ]
  %io_start72 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %new_range, i32 0, i32 3
  %41 = ptrtoint ptr %io_start72 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %iio_sz.0.lcssa.sink, ptr %io_start72, align 4
  %42 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @io_range_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %new_range, ptr noundef %42, ptr noundef nonnull @io_range_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end75.end_register_crit_edge

if.end75.end_register_crit_edge:                  ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  br label %end_register

if.end.i.i:                                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %new_range to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @io_range_list, ptr %new_range, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %new_range, i32 0, i32 1
  %44 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %42, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !54
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %new_range, ptr %42, align 4
  store ptr %new_range, ptr getelementptr inbounds (%struct.list_head, ptr @io_range_list, i32 0, i32 1), align 4
  br label %end_register

end_register:                                     ; preds = %if.end.i.i, %if.end75.end_register_crit_edge, %if.then65.end_register_crit_edge, %if.then52.end_register_crit_edge, %for.end.end_register_crit_edge, %if.then19.end_register_crit_edge, %for.body.end_register_crit_edge
  %ret.0 = phi i32 [ -7, %if.then52.end_register_crit_edge ], [ -7, %if.then65.end_register_crit_edge ], [ -22, %for.end.end_register_crit_edge ], [ 0, %if.end75.end_register_crit_edge ], [ 0, %if.end.i.i ], [ -14, %if.then19.end_register_crit_edge ], [ -17, %for.body.end_register_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @io_range_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %end_register, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %end_register ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @logic_pio_unregister_range(ptr noundef %range) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_lock_nested(ptr noundef nonnull @io_range_mutex, i32 noundef 0) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %range) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_rcu.exit_crit_edge

entry.list_del_rcu.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %range, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %range, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %entry.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %range, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @io_range_mutex) #7
  tail call void @synchronize_rcu() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_io_range_by_fwnode(ptr noundef readnone %fwnode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.for.cond.preheader_crit_edge

rcu_read_lock.exit.for.cond.preheader_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true3

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.preheader

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b24 = load i1, ptr @find_io_range_by_fwnode.__warned, align 1
  br i1 %.b24, label %land.lhs.true3.for.cond.preheader_crit_edge, label %if.then

land.lhs.true3.for.cond.preheader_crit_edge:      ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.preheader

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @find_io_range_by_fwnode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 133, ptr noundef nonnull @.str.3) #7
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %land.lhs.true3.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %rcu_read_lock.exit.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %range.0.in = phi ptr [ %range.0, %for.body.for.cond_crit_edge ], [ @io_range_list, %for.cond.preheader ]
  %4 = ptrtoint ptr %range.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %range.0 = load volatile ptr, ptr %range.0.in, align 4
  %cmp.not = icmp eq ptr %range.0, @io_range_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.cond
  %fwnode9 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %range.0, i32 0, i32 1
  %5 = ptrtoint ptr %fwnode9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fwnode9, align 4
  %cmp10 = icmp eq ptr %6, %fwnode
  br i1 %cmp10, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %found_range.0 = phi ptr [ null, %for.cond.for.end_crit_edge ], [ %range.0, %for.body.for.end_crit_edge ]
  %call.i25 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i25, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i28

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_unlock.exit

land.lhs.true.i28:                                ; preds = %for.end
  %call1.i26 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool.not.i27 = icmp eq i32 %call1.i26, 0
  br i1 %tobool.not.i27, label %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i30

land.lhs.true.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_unlock.exit

land.lhs.true2.i30:                               ; preds = %land.lhs.true.i28
  %.b4.i29 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29, label %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, label %if.then.i31

land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_unlock.exit

if.then.i31:                                      ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i31, %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !56
  %7 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i.i.i32 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i32 to ptr
  %preempt_count.i.i.i.i33 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i33, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i33, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret ptr %found_range.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @logic_pio_to_hwaddr(i32 noundef %pio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b39.i = load i1, ptr @find_io_range.__warned, align 1
  br i1 %.b39.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @find_io_range.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 150, ptr noundef nonnull @.str.3) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %range.049.i = load volatile ptr, ptr @io_range_list, align 4
  %cmp.not50.i = icmp eq ptr %range.049.i, @io_range_list
  br i1 %cmp.not50.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %range.051.i = phi ptr [ %range.0.i, %for.inc.i.for.body.i_crit_edge ], [ %range.049.i, %do.end.i.for.body.i_crit_edge ]
  %io_start.i = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %range.051.i, i32 0, i32 3
  %4 = ptrtoint ptr %io_start.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_start.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %pio)
  %cmp9.not.i = icmp ugt i32 %5, %pio
  br i1 %cmp9.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true10.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true10.i:                                ; preds = %for.body.i
  %size.i = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %range.051.i, i32 0, i32 4
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  %add.i = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %pio)
  %cmp12.i = icmp ugt i32 %add.i, %pio
  br i1 %cmp12.i, label %land.lhs.true10.i.for.end.i_crit_edge, label %land.lhs.true10.i.for.inc.i_crit_edge

land.lhs.true10.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true10.i.for.end.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.inc.i:                                        ; preds = %land.lhs.true10.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %8 = ptrtoint ptr %range.051.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %range.0.i = load volatile ptr, ptr %range.051.i, align 4
  %cmp.not.i = icmp eq ptr %range.0.i, @io_range_list
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %land.lhs.true10.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %found_range.0.i = phi ptr [ null, %do.end.i.for.end.i_crit_edge ], [ null, %for.inc.i.for.end.i_crit_edge ], [ %range.051.i, %land.lhs.true10.i.for.end.i_crit_edge ]
  %call.i40.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i40.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i43.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_unlock.exit.i

land.lhs.true.i43.i:                              ; preds = %for.end.i
  %call1.i41.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41.i)
  %tobool.not.i42.i = icmp eq i32 %call1.i41.i, 0
  br i1 %tobool.not.i42.i, label %land.lhs.true.i43.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i45.i

land.lhs.true.i43.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i45.i:                             ; preds = %land.lhs.true.i43.i
  %.b4.i44.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44.i, label %land.lhs.true2.i45.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i46.i

land.lhs.true2.i45.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i45.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_unlock.exit.i

if.then.i46.i:                                    ; preds = %land.lhs.true2.i45.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #7
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i46.i, %land.lhs.true2.i45.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i43.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !56
  %9 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i.i.i47.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i47.i to ptr
  %preempt_count.i.i.i.i48.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i48.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i48.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %tobool23.not.i = icmp eq ptr %found_range.0.i, null
  br i1 %tobool23.not.i, label %find_io_range.exit.thread, label %if.then

find_io_range.exit.thread:                        ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %pio) #8
  br label %cleanup

if.then:                                          ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %hw_start = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %found_range.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %hw_start to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw_start, align 4
  %add = add i32 %14, %pio
  %io_start = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %found_range.0.i, i32 0, i32 3
  %15 = ptrtoint ptr %io_start to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_start, align 4
  %sub = sub i32 %add, %16
  br label %cleanup

cleanup:                                          ; preds = %if.then, %find_io_range.exit.thread
  %retval.0 = phi i32 [ %sub, %if.then ], [ -1, %find_io_range.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @logic_pio_trans_hwaddr(ptr noundef %fwnode, i32 noundef %addr, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %size.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %size.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %size, ptr %size.addr, align 4
  %call = tail call ptr @find_io_range_by_fwnode(ptr noundef %fwnode)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %size2 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size2, align 4
  %5 = ptrtoint ptr %size.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp3 = icmp ult i32 %4, %6
  br i1 %cmp3, label %do.end7, label %if.end11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %size.addr, ptr noundef %size2) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %hw_start = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %hw_start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_start, align 4
  %sub = sub i32 %addr, %8
  %io_start = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %io_start to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_start, align 4
  %add = add i32 %sub, %10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end7, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end7 ], [ %add, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @logic_pio_trans_cpuaddr(i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  %addr.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %addr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %addr, ptr %addr.addr, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b41 = load i1, ptr @logic_pio_trans_cpuaddr.__warned, align 1
  br i1 %.b41, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @logic_pio_trans_cpuaddr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 215, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %range.064 = load volatile ptr, ptr @io_range_list, align 4
  %cmp.not65 = icmp eq ptr %range.064, @io_range_list
  br i1 %cmp.not65, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %range.066 = phi ptr [ %range.0, %for.inc.for.body_crit_edge ], [ %range.064, %do.end.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %range.066, i32 0, i32 5
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp9.not = icmp eq i32 %6, 1
  br i1 %cmp9.not, label %if.end11, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end11:                                         ; preds = %for.body
  %7 = ptrtoint ptr %addr.addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.addr, align 4
  %hw_start = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %range.066, i32 0, i32 2
  %9 = ptrtoint ptr %hw_start to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp12.not = icmp ult i32 %8, %10
  br i1 %cmp12.not, label %if.end11.for.inc_crit_edge, label %land.lhs.true13

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true13:                                  ; preds = %if.end11
  %size = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %range.066, i32 0, i32 4
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  %add = add i32 %12, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add)
  %cmp15 = icmp ult i32 %8, %add
  br i1 %cmp15, label %if.then16, label %land.lhs.true13.for.inc_crit_edge

land.lhs.true13.for.inc_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then16:                                        ; preds = %land.lhs.true13
  %sub = sub i32 %8, %10
  %io_start = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %range.066, i32 0, i32 3
  %13 = ptrtoint ptr %io_start to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_start, align 4
  %add18 = add i32 %sub, %14
  %call.i42 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i42, label %if.then16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i45

if.then16.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_unlock.exit

land.lhs.true.i45:                                ; preds = %if.then16
  %call1.i43 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43)
  %tobool.not.i44 = icmp eq i32 %call1.i43, 0
  br i1 %tobool.not.i44, label %land.lhs.true.i45.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i47

land.lhs.true.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_unlock.exit

land.lhs.true2.i47:                               ; preds = %land.lhs.true.i45
  %.b4.i46 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i46, label %land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge, label %if.then.i48

land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_unlock.exit

if.then.i48:                                      ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i48, %land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i45.rcu_read_unlock.exit_crit_edge, %if.then16.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !56
  %15 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i.i.i49 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i49 to ptr
  %preempt_count.i.i.i.i50 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i50, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i50, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true13.for.inc_crit_edge, %if.end11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %19 = ptrtoint ptr %range.066 to i32
  call void @__asan_load4_noabort(i32 %19)
  %range.0 = load volatile ptr, ptr %range.066, align 4
  %cmp.not = icmp eq ptr %range.0, @io_range_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i51 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i51, label %for.end.rcu_read_unlock.exit61_crit_edge, label %land.lhs.true.i54

for.end.rcu_read_unlock.exit61_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_unlock.exit61

land.lhs.true.i54:                                ; preds = %for.end
  %call1.i52 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52)
  %tobool.not.i53 = icmp eq i32 %call1.i52, 0
  br i1 %tobool.not.i53, label %land.lhs.true.i54.rcu_read_unlock.exit61_crit_edge, label %land.lhs.true2.i56

land.lhs.true.i54.rcu_read_unlock.exit61_crit_edge: ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_unlock.exit61

land.lhs.true2.i56:                               ; preds = %land.lhs.true.i54
  %.b4.i55 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i55, label %land.lhs.true2.i56.rcu_read_unlock.exit61_crit_edge, label %if.then.i57

land.lhs.true2.i56.rcu_read_unlock.exit61_crit_edge: ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_unlock.exit61

if.then.i57:                                      ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #7
  br label %rcu_read_unlock.exit61

rcu_read_unlock.exit61:                           ; preds = %if.then.i57, %land.lhs.true2.i56.rcu_read_unlock.exit61_crit_edge, %land.lhs.true.i54.rcu_read_unlock.exit61_crit_edge, %for.end.rcu_read_unlock.exit61_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !56
  %20 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i.i.i58 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i58 to ptr
  %preempt_count.i.i.i.i59 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i59, align 4
  %sub.i.i.i60 = add i32 %23, -1
  store volatile i32 %sub.i.i.i60, ptr %preempt_count.i.i.i.i59, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %addr.addr) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit61, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %add18, %rcu_read_unlock.exit ], [ -1, %rcu_read_unlock.exit61 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind uwtable(sync) }
attributes #6 = { nomerge }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !37, !38, !40, !42, !43, !44}
!llvm.named.register.sp = !{!45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/logic_pio.c", i32 84, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @logic_pio_register_range._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @logic_pio_register_range._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../lib/logic_pio.c", i32 133, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../lib/logic_pio.c", i32 199, i32 3}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @logic_pio_trans_hwaddr._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @logic_pio_trans_hwaddr._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../lib/logic_pio.c", i32 203, i32 3}
!16 = !{ptr @logic_pio_trans_hwaddr._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @logic_pio_trans_hwaddr._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../lib/logic_pio.c", i32 215, i32 2}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../lib/logic_pio.c", i32 229, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @logic_pio_trans_cpuaddr._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @logic_pio_trans_cpuaddr._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../lib/logic_pio.c", i32 21, i32 8}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @io_range_mutex, !26, !"io_range_mutex", i1 false, i1 false}
!29 = !{ptr @io_range_list, !30, !"io_range_list", i1 false, i1 false}
!30 = !{!"../lib/logic_pio.c", i32 20, i32 8}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../lib/logic_pio.c", i32 150, i32 2}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../lib/logic_pio.c", i32 159, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @find_io_range._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @find_io_range._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{!"sp"}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2151904396}
!55 = !{i64 2150015860}
!56 = !{i64 2150016126}
