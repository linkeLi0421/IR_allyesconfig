; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfpcore/nfp_hwinfo.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_hwinfo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfp_hwinfo = type { [0 x i8], i32, i32, i32, i32, [0 x i8] }
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

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@hwinfo_fetch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 223, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nfp_hwinfo: NFP access error\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hwinfo_fetch\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/ethernet/netronome/nfp/nfpcore/nfp_hwinfo.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hwinfo_fetch._entry_ptr = internal global ptr @hwinfo_fetch._entry, section ".printk_index", align 4
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nfp.info\00", [23 x i8] zeroinitializer }, align 32
@hwinfo_try_fetch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 195, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nfp_hwinfo: Unknown HWInfo version: 0x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hwinfo_try_fetch\00", [47 x i8] zeroinitializer }, align 32
@hwinfo_try_fetch._entry_ptr = internal global ptr @hwinfo_try_fetch._entry, section ".printk_index", align 4
@hwinfo_db_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 135, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"nfp_hwinfo: Unsupported hwinfo size %u > %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hwinfo_db_validate\00", [45 x i8] zeroinitializer }, align 32
@hwinfo_db_validate._entry_ptr = internal global ptr @hwinfo_db_validate._entry, section ".printk_index", align 4
@hwinfo_db_validate._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 143, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"nfp_hwinfo: Corrupt hwinfo table (CRC mismatch), calculated 0x%x, expected 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@hwinfo_db_validate._entry_ptr.12 = internal global ptr @hwinfo_db_validate._entry.10, section ".printk_index", align 4
@hwinfo_db_walk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 115, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nfp_hwinfo: Bad HWINFO - overflowing key\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hwinfo_db_walk\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hwinfo_db_walk._entry_ptr = internal global ptr @hwinfo_db_walk._entry, section ".printk_index", align 4
@hwinfo_db_walk._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.2, i32 120, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nfp_hwinfo: Bad HWINFO - overflowing value\0A\00", [52 x i8] zeroinitializer }, align 32
@hwinfo_db_walk._entry_ptr.18 = internal global ptr @hwinfo_db_walk._entry.16, section ".printk_index", align 4
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 223, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 161, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 194, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 135, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 142, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 115, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [59 x i8] c"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_hwinfo.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 120, i32 4 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @hwinfo_db_validate._entry, ptr @hwinfo_db_validate._entry.10, ptr @hwinfo_db_validate._entry_ptr, ptr @hwinfo_db_validate._entry_ptr.12, ptr @hwinfo_db_walk._entry, ptr @hwinfo_db_walk._entry.16, ptr @hwinfo_db_walk._entry_ptr, ptr @hwinfo_db_walk._entry_ptr.18, ptr @hwinfo_fetch._entry, ptr @hwinfo_fetch._entry_ptr, ptr @hwinfo_try_fetch._entry, ptr @hwinfo_try_fetch._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwinfo_fetch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwinfo_try_fetch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwinfo_db_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwinfo_db_validate._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwinfo_db_walk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwinfo_db_walk._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_hwinfo_read(ptr noundef %cpp) local_unnamed_addr #0 align 64 {
entry:
  %c.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %0, 2000
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %call.i.i = tail call ptr @nfp_resource_acquire(ptr noundef %cpp, ptr noundef nonnull @.str.5) #11
  %cmp.i56.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.cond.i
  %call2.i.i = tail call i32 @nfp_resource_cpp_id(ptr noundef %call.i.i) #11
  %call3.i.i = tail call i64 @nfp_resource_address(ptr noundef %call.i.i) #11
  %call4.i.i = tail call i64 @nfp_resource_size(ptr noundef %call.i.i) #11
  %conv.i.i = trunc i64 %call4.i.i to i32
  tail call void @nfp_resource_release(ptr noundef %call.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %conv.i.i)
  %cmp.i.i = icmp ult i32 %conv.i.i, 256
  br i1 %cmp.i.i, label %if.then.i.i.if.end.i_crit_edge, label %if.then.i.i.if.end8.i.i.i_crit_edge

if.then.i.i.if.end8.i.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i

if.then.i.i.if.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.else.i.i:                                      ; preds = %for.cond.i
  %cmp8.i.i = icmp eq ptr %call.i.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp8.i.i, label %if.else.i.i.if.end8.i.i.i_crit_edge, label %if.else.i.i.if.end.i_crit_edge

if.else.i.i.if.end.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.else.i.i.if.end8.i.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.else.i.i.if.end8.i.i.i_crit_edge, %if.then.i.i.if.end8.i.i.i_crit_edge
  %hwdb_size.1 = phi i32 [ %conv.i.i, %if.then.i.i.if.end8.i.i.i_crit_edge ], [ 57344, %if.else.i.i.if.end8.i.i.i_crit_edge ]
  %cpp_addr.0.i.i = phi i64 [ %call3.i.i, %if.then.i.i.if.end8.i.i.i_crit_edge ], [ 196608, %if.else.i.i.if.end8.i.i.i_crit_edge ]
  %cpp_id.0.i.i = phi i32 [ %call2.i.i, %if.then.i.i.if.end8.i.i.i_crit_edge ], [ 117448705, %if.else.i.i.if.end8.i.i.i_crit_edge ]
  %add.i.i = add i32 %hwdb_size.1, 1
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3264) #14
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.i.i.if.end.i_crit_edge, label %if.end16.i.i

if.end8.i.i.i.if.end.i_crit_edge:                 ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end16.i.i:                                     ; preds = %if.end8.i.i.i
  %call17.i.i = tail call i32 @nfp_cpp_read(ptr noundef %cpp, i32 noundef %cpp_id.0.i.i, i64 noundef %cpp_addr.0.i.i, ptr noundef nonnull %call9.i.i.i, i32 noundef %hwdb_size.1) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call17.i.i, i32 %hwdb_size.1)
  %cmp18.not.i.i = icmp eq i32 %call17.i.i, %hwdb_size.1
  br i1 %cmp18.not.i.i, label %if.end21.i.i, label %if.end16.i.i.exit_free.i.i_crit_edge

if.end16.i.i.exit_free.i.i_crit_edge:             ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_free.i.i

if.end21.i.i:                                     ; preds = %if.end16.i.i
  %version.i.i.i = getelementptr inbounds %struct.nfp_hwinfo, ptr %call9.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version.i.i.i, align 128
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i.i, label %if.end24.i.i, label %if.end21.i.i.exit_free.i.i_crit_edge

if.end21.i.i.exit_free.i.i_crit_edge:             ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_free.i.i

if.end24.i.i:                                     ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 149832, i32 %3)
  %cmp25.not.i.i = icmp eq i32 %3, 149832
  br i1 %cmp25.not.i.i, label %hwinfo_try_fetch.exit.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call28.i.i = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #11
  %parent.i.i = getelementptr inbounds %struct.device, ptr %call28.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i.i, align 8
  %7 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %version.i.i.i, align 128
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6, i32 noundef %9) #15
  br label %exit_free.i.i

exit_free.i.i:                                    ; preds = %do.end.i.i, %if.end21.i.i.exit_free.i.i_crit_edge, %if.end16.i.i.exit_free.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %if.end.i

hwinfo_try_fetch.exit.i:                          ; preds = %if.end24.i.i
  %arrayidx.i.i = getelementptr i8, ptr %call9.i.i.i, i32 %hwdb_size.1
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx.i.i, align 1
  %size1.i = getelementptr inbounds %struct.nfp_hwinfo, ptr %call9.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size1.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %hwdb_size.1)
  %cmp.i11 = icmp ugt i32 %13, %hwdb_size.1
  br i1 %cmp.i11, label %do.end.i13, label %if.end.i16

if.end.i:                                         ; preds = %exit_free.i.i, %if.end8.i.i.i.if.end.i_crit_edge, %if.else.i.i.if.end.i_crit_edge, %if.then.i.i.if.end.i_crit_edge
  %call1.i = tail call i32 @msleep_interruptible(i32 noundef 100) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp ne i32 %call1.i, 0
  %sub.i = sub i32 %add.i, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  %or.cond.i = select i1 %tobool2.not.i, i1 true, i1 %cmp.i
  br i1 %or.cond.i, label %hwinfo_fetch.exit.thread, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

hwinfo_fetch.exit.thread:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #11
  %parent.i = getelementptr inbounds %struct.device, ptr %call4.i, i32 0, i32 1
  %14 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str) #15
  br label %cleanup

do.end.i13:                                       ; preds = %hwinfo_try_fetch.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #11
  %parent.i12 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %parent.i12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.8, i32 noundef %13, i32 noundef %hwdb_size.1) #15
  br label %if.then3

if.end.i16:                                       ; preds = %hwinfo_try_fetch.exit.i
  %sub.i14 = add i32 %13, -4
  %call.i.i15 = tail call i32 @crc32_be(i32 noundef 0, ptr noundef nonnull %call9.i.i.i, i32 noundef %sub.i14) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i14)
  %cmp.not4.i.i.i = icmp eq i32 %sub.i14, 0
  br i1 %cmp.not4.i.i.i, label %if.end.i16.crc32_posix.exit.i_crit_edge, label %if.end.i16.while.body.i.i.i_crit_edge

if.end.i16.while.body.i.i.i_crit_edge:            ; preds = %if.end.i16
  br label %while.body.i.i.i

if.end.i16.crc32_posix.exit.i_crit_edge:          ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #13
  br label %crc32_posix.exit.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.end.i16.while.body.i.i.i_crit_edge
  %total_len.addr.06.i.i.i = phi i32 [ %shr.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %sub.i14, %if.end.i16.while.body.i.i.i_crit_edge ]
  %crc.addr.05.i.i.i = phi i32 [ %call.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %call.i.i15, %if.end.i16.while.body.i.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i.i.i) #11
  %conv.i.i.i = trunc i32 %total_len.addr.06.i.i.i to i8
  %18 = ptrtoint ptr %c.i.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i.i.i, ptr %c.i.i.i, align 1
  %call.i.i.i = call i32 @crc32_be(i32 noundef %crc.addr.05.i.i.i, ptr noundef nonnull %c.i.i.i, i32 noundef 1) #16
  %shr.i.i.i = lshr i32 %total_len.addr.06.i.i.i, 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i.i.i) #11
  %cmp.not.i.i.i = icmp ult i32 %total_len.addr.06.i.i.i, 256
  br i1 %cmp.not.i.i.i, label %while.body.i.i.i.crc32_posix.exit.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i.i

while.body.i.i.i.crc32_posix.exit.i_crit_edge:    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %crc32_posix.exit.i

crc32_posix.exit.i:                               ; preds = %while.body.i.i.i.crc32_posix.exit.i_crit_edge, %if.end.i16.crc32_posix.exit.i_crit_edge
  %crc.addr.0.lcssa.i.i.i = phi i32 [ %call.i.i15, %if.end.i16.crc32_posix.exit.i_crit_edge ], [ %call.i.i.i, %while.body.i.i.i.crc32_posix.exit.i_crit_edge ]
  %neg.i.i.i = xor i32 %crc.addr.0.lcssa.i.i.i, -1
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 %sub.i14
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %add.ptr.i, align 1
  %21 = call i32 @llvm.bswap.i32(i32 %20) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %neg.i.i.i)
  %cmp4.not.i = icmp eq i32 %21, %neg.i.i.i
  br i1 %cmp4.not.i, label %if.end15.i, label %do.end8.i

do.end8.i:                                        ; preds = %crc32_posix.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i = call ptr @nfp_cpp_device(ptr noundef %cpp) #11
  %parent10.i = getelementptr inbounds %struct.device, ptr %call9.i, i32 0, i32 1
  %22 = ptrtoint ptr %parent10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent10.i, align 8
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %add.ptr.i, align 1
  %26 = call i32 @llvm.bswap.i32(i32 %25) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.11, i32 noundef %neg.i.i.i, i32 noundef %26) #15
  br label %if.then3

if.end15.i:                                       ; preds = %crc32_posix.exit.i
  %data.i.i = getelementptr inbounds %struct.nfp_hwinfo, ptr %call9.i.i.i, i32 0, i32 5
  %add.ptr.i.i = getelementptr i8, ptr %data.i.i, i32 %sub.i14
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.end.i.i.for.cond.i.i_crit_edge, %if.end15.i
  %key.0.i.i = phi ptr [ %data.i.i, %if.end15.i ], [ %add.ptr11.i.i, %if.end.i.i.for.cond.i.i_crit_edge ]
  %27 = ptrtoint ptr %key.0.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %key.0.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i17 = icmp ne i8 %28, 0
  %cmp.i.i18 = icmp ult ptr %key.0.i.i, %add.ptr.i.i
  %or.cond.i.i = select i1 %tobool.not.i.i17, i1 %cmp.i.i18, i1 false
  br i1 %or.cond.i.i, label %for.body.i.i, label %for.cond.i.i.cleanup_crit_edge

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i.i:                                     ; preds = %for.cond.i.i
  %call.i32.i = call i32 @strlen(ptr noundef %key.0.i.i) #17
  %add.ptr4.i.i = getelementptr i8, ptr %key.0.i.i, i32 1
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 %call.i32.i
  %cmp6.not.i.i = icmp ult ptr %add.ptr5.i.i, %add.ptr.i.i
  br i1 %cmp6.not.i.i, label %if.end.i.i, label %for.body.i.i.cleanup.sink.split.i.i_crit_edge

for.body.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %call9.i.i = call i32 @strlen(ptr noundef %add.ptr5.i.i) #17
  %add.ptr10.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 1
  %add.ptr11.i.i = getelementptr i8, ptr %add.ptr10.i.i, i32 %call9.i.i
  %cmp12.i.i = icmp ugt ptr %add.ptr11.i.i, %add.ptr.i.i
  br i1 %cmp12.i.i, label %if.end.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end.i.i.for.cond.i.i_crit_edge

if.end.i.i.for.cond.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

if.end.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end.i.i.cleanup.sink.split.i.i_crit_edge, %for.body.i.i.cleanup.sink.split.i.i_crit_edge
  %.str.17.sink.i.i = phi ptr [ @.str.13, %for.body.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.17, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ]
  %call18.i.i = call ptr @nfp_cpp_device(ptr noundef %cpp) #11
  %parent19.i.i = getelementptr inbounds %struct.device, ptr %call18.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %parent19.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent19.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull %.str.17.sink.i.i) #15
  br label %if.then3

if.then3:                                         ; preds = %cleanup.sink.split.i.i, %do.end8.i, %do.end.i13
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %for.cond.i.i.cleanup_crit_edge, %hwinfo_fetch.exit.thread
  %retval.0 = phi ptr [ null, %if.then3 ], [ null, %hwinfo_fetch.exit.thread ], [ %call9.i.i.i, %for.cond.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_hwinfo_lookup(ptr noundef readonly %hwinfo, ptr noundef readonly %lookup) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hwinfo, null
  %tobool1.not = icmp eq ptr %lookup, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.nfp_hwinfo, ptr %hwinfo, i32 0, i32 5
  %size = getelementptr inbounds %struct.nfp_hwinfo, ptr %hwinfo, i32 0, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %add.ptr = getelementptr i8, ptr %data, i32 %2
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 -4
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not30 = icmp ne i8 %4, 0
  %cmp31 = icmp ult ptr %data, %add.ptr2
  %or.cond2932 = select i1 %tobool5.not30, i1 %cmp31, i1 false
  br i1 %or.cond2932, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %key.033 = phi ptr [ %add.ptr16, %for.inc.for.body_crit_edge ], [ %data, %if.end.for.body_crit_edge ]
  %call = tail call i32 @strlen(ptr noundef %key.033) #18
  %add.ptr7 = getelementptr i8, ptr %key.033, i32 1
  %add.ptr8 = getelementptr i8, ptr %add.ptr7, i32 %call
  %call9 = tail call i32 @strcmp(ptr noundef %key.033, ptr noundef nonnull %lookup) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %call14 = tail call i32 @strlen(ptr noundef %add.ptr8) #18
  %add.ptr15 = getelementptr i8, ptr %add.ptr8, i32 1
  %add.ptr16 = getelementptr i8, ptr %add.ptr15, i32 %call14
  %5 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp ne i8 %6, 0
  %cmp = icmp ult ptr %add.ptr16, %add.ptr2
  %or.cond29 = select i1 %tobool5.not, i1 %cmp, i1 false
  br i1 %or.cond29, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %add.ptr8, %for.body.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @nfp_hwinfo_get_packed_strings(ptr noundef readnone %hwinfo) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.nfp_hwinfo, ptr %hwinfo, i32 0, i32 5
  ret ptr %data
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nfp_hwinfo_get_packed_str_size(ptr nocapture noundef readonly %hwinfo) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.nfp_hwinfo, ptr %hwinfo, i32 0, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %sub = add i32 %2, -4
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_resource_acquire(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_resource_cpp_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nfp_resource_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nfp_resource_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_resource_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_read(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_hwinfo.c", i32 223, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hwinfo_fetch._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hwinfo_fetch._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_hwinfo.c", i32 161, i32 34}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_hwinfo.c", i32 194, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @hwinfo_try_fetch._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @hwinfo_try_fetch._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_hwinfo.c", i32 135, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @hwinfo_db_validate._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @hwinfo_db_validate._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_hwinfo.c", i32 142, i32 3}
!22 = !{ptr @hwinfo_db_validate._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @hwinfo_db_validate._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_hwinfo.c", i32 115, i32 4}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @hwinfo_db_walk._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @hwinfo_db_walk._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_hwinfo.c", i32 120, i32 4}
!32 = !{ptr @hwinfo_db_walk._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @hwinfo_db_walk._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
