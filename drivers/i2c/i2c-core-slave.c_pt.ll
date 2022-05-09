; ModuleID = '/llk/IR_all_yes/drivers/i2c/i2c-core-slave.c_pt.bc'
source_filename = "../drivers/i2c/i2c-core-slave.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+i2c_slave_register\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_slave_register\09\09\09\09"
module asm "\09.long\09__crc_i2c_slave_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_slave_register:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_slave_register\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_slave_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+i2c_slave_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_slave_unregister\09\09\09\09"
module asm "\09.long\09__crc_i2c_slave_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_slave_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_slave_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_slave_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+i2c_detect_slave_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_detect_slave_mode\09\09\09\09"
module asm "\09.long\09__crc_i2c_detect_slave_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_detect_slave_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_detect_slave_mode\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_detect_slave_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/i2c/i2c-core-slave.c\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"insufficient data\0A\00", [45 x i8] zeroinitializer }, align 32
@i2c_slave_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 26, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: client slave flag not set. You might see address collisions\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2c_slave_register\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i2c_slave_register._entry_ptr = internal global ptr @i2c_slave_register._entry, section ".printk_index", align 4
@i2c_slave_register._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str, i32 32, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: invalid address\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@i2c_slave_register._entry_ptr.9 = internal global ptr @i2c_slave_register._entry.6, section ".printk_index", align 4
@i2c_slave_register._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str, i32 38, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: not supported by adapter\0A\00", [34 x i8] zeroinitializer }, align 32
@i2c_slave_register._entry_ptr.12 = internal global ptr @i2c_slave_register._entry.10, section ".printk_index", align 4
@i2c_slave_register._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str, i32 50, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: adapter returned error %d\0A\00", [33 x i8] zeroinitializer }, align 32
@i2c_slave_register._entry_ptr.15 = internal global ptr @i2c_slave_register._entry.13, section ".printk_index", align 4
@__kstrtab_i2c_slave_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_slave_register = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_slave_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_slave_register to i32), ptr @__kstrtab_i2c_slave_register, ptr @__kstrtabns_i2c_slave_register }, section "___ksymtab_gpl+i2c_slave_register", align 4
@i2c_slave_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.16, ptr @.str, i32 65, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i2c_slave_unregister\00", [43 x i8] zeroinitializer }, align 32
@i2c_slave_unregister._entry_ptr = internal global ptr @i2c_slave_unregister._entry, section ".printk_index", align 4
@i2c_slave_unregister._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.16, ptr @.str, i32 76, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@i2c_slave_unregister._entry_ptr.18 = internal global ptr @i2c_slave_unregister._entry.17, section ".printk_index", align 4
@__kstrtab_i2c_slave_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_slave_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_slave_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_slave_unregister to i32), ptr @__kstrtab_i2c_slave_unregister, ptr @__kstrtabns_i2c_slave_unregister }, section "___ksymtab_gpl+i2c_slave_unregister", align 4
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@__kstrtab_i2c_detect_slave_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_detect_slave_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_detect_slave_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_detect_slave_mode to i32), ptr @__kstrtab_i2c_detect_slave_mode, ptr @__kstrtabns_i2c_detect_slave_mode }, section "___ksymtab_gpl+i2c_detect_slave_mode", align 4
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 21, i32 6 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 25, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 32, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 38, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 50, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 65, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 76, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [32 x i8] c"../drivers/i2c/i2c-core-slave.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 101, i32 32 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__ksymtab_i2c_detect_slave_mode, ptr @__ksymtab_i2c_slave_register, ptr @__ksymtab_i2c_slave_unregister, ptr @i2c_slave_register._entry, ptr @i2c_slave_register._entry.10, ptr @i2c_slave_register._entry.13, ptr @i2c_slave_register._entry.6, ptr @i2c_slave_register._entry_ptr, ptr @i2c_slave_register._entry_ptr.12, ptr @i2c_slave_register._entry_ptr.15, ptr @i2c_slave_register._entry_ptr.9, ptr @i2c_slave_unregister._entry, ptr @i2c_slave_unregister._entry.17, ptr @i2c_slave_unregister._entry_ptr, ptr @i2c_slave_unregister._entry_ptr.18, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.19], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_slave_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_slave_register._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_slave_register._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_slave_register._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_slave_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_slave_unregister._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i2c_slave_register(ptr noundef %client, ptr noundef %slave_cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %client, null
  %cmp.i = icmp ugt ptr %client, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  %tobool.not = icmp eq ptr %slave_cb, null
  %spec.select = or i1 %spec.select.i, %tobool.not
  br i1 %spec.select, label %do.end, label %if.end23, !prof !47

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 21, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %cleanup

if.end23:                                         ; preds = %entry
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %client, align 8
  %2 = and i16 %1, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool24.not = icmp eq i16 %2, 0
  br i1 %tobool24.not, label %do.end28, label %if.end23.if.end29_crit_edge

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

do.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #7
  br label %if.end29

if.end29:                                         ; preds = %do.end28, %if.end23.if.end29_crit_edge
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %client, align 8
  %5 = and i16 %4, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool33.not = icmp eq i16 %5, 0
  br i1 %tobool33.not, label %if.then34, label %if.end29.if.end43_crit_edge

if.end29.if.end43_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then34:                                        ; preds = %if.end29
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr, align 2
  %call35 = tail call i32 @i2c_check_7bit_addr_validity_strict(i16 noundef zeroext %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then34.if.end43_crit_edge, label %do.end40

if.then34.if.end43_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

do.end40:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  %dev41 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end43:                                         ; preds = %if.then34.if.end43_crit_edge, %if.end29.if.end43_crit_edge
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %algo, align 8
  %reg_slave = getelementptr inbounds %struct.i2c_algorithm, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %reg_slave to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_slave, align 4
  %tobool44.not = icmp eq ptr %13, null
  br i1 %tobool44.not, label %do.end48, label %if.end50

do.end48:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %dev49 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end50:                                         ; preds = %if.end43
  %slave_cb51 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 8
  %14 = ptrtoint ptr %slave_cb51 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %slave_cb, ptr %slave_cb51, align 8
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 4
  %15 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock_ops.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  tail call void %18(ptr noundef %9, i32 noundef 1) #4
  %19 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter, align 8
  %algo54 = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %algo54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %algo54, align 8
  %reg_slave55 = getelementptr inbounds %struct.i2c_algorithm, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %reg_slave55 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_slave55, align 4
  %call56 = tail call i32 %24(ptr noundef nonnull %client) #4
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter, align 8
  %lock_ops.i86 = getelementptr inbounds %struct.i2c_adapter, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %lock_ops.i86 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lock_ops.i86, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %unlock_bus.i, align 4
  tail call void %30(ptr noundef %26, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool58.not = icmp eq i32 %call56, 0
  br i1 %tobool58.not, label %if.end50.cleanup_crit_edge, label %if.then59

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then59:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %slave_cb51 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %slave_cb51, align 8
  %dev64 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev64, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.3, i32 noundef %call56) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %if.end50.cleanup_crit_edge, %do.end48, %do.end40, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -95, %do.end48 ], [ %call35, %do.end40 ], [ %call56, %if.then59 ], [ 0, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_check_7bit_addr_validity_strict(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i2c_slave_unregister(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %client, null
  %cmp.i = icmp ugt ptr %client, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo, align 8
  %unreg_slave = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %unreg_slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unreg_slave, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void %9(ptr noundef %1, i32 noundef 1) #4
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %algo5 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %algo5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %algo5, align 8
  %unreg_slave6 = getelementptr inbounds %struct.i2c_algorithm, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %unreg_slave6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unreg_slave6, align 4
  %call7 = tail call i32 %15(ptr noundef nonnull %client) #4
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter, align 8
  %lock_ops.i25 = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %lock_ops.i25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lock_ops.i25, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %unlock_bus.i, align 4
  tail call void %21(ptr noundef %17, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.then9, label %do.end12

if.then9:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  %slave_cb = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 8
  %22 = ptrtoint ptr %slave_cb to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %slave_cb, align 8
  br label %cleanup

do.end12:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  %dev13 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef %call7) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.then9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %call7, %do.end12 ], [ 0, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @i2c_detect_slave_mode(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #4
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !48
  %call = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef null) #4
  %cmp.not15 = icmp eq ptr %call, null
  br i1 %cmp.not15, label %if.then.cleanup.thread_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %for.inc.cleanup.thread_crit_edge, %if.then.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #4
  br label %return

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %child.016 = phi ptr [ %call6, %for.inc.for.body_crit_edge ], [ %call, %if.then.for.body_crit_edge ]
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.016, ptr noundef nonnull @.str.19, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #4
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %and = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %for.body
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call6 = call ptr @of_get_next_child(ptr noundef %6, ptr noundef nonnull %child.016) #4
  %cmp.not = icmp eq ptr %call6, null
  br i1 %cmp.not, label %for.inc.cleanup.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @of_node_put(ptr noundef nonnull %child.016) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #4
  br label %return

return:                                           ; preds = %cleanup, %cleanup.thread, %entry.return_crit_edge
  %retval.1 = phi i1 [ true, %cleanup ], [ false, %cleanup.thread ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !27, !28, !29, !31, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/i2c/i2c-core-slave.c", i32 21, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/i2c/i2c-core-slave.c", i32 25, i32 3}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @i2c_slave_register._entry, !4, !"_entry", i1 false, i1 false}
!9 = !{ptr @i2c_slave_register._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/i2c-core-slave.c", i32 32, i32 4}
!12 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @i2c_slave_register._entry.6, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @i2c_slave_register._entry_ptr.9, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/i2c/i2c-core-slave.c", i32 38, i32 3}
!17 = !{ptr @i2c_slave_register._entry.10, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @i2c_slave_register._entry_ptr.12, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/i2c-core-slave.c", i32 50, i32 3}
!21 = !{ptr @i2c_slave_register._entry.13, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @i2c_slave_register._entry_ptr.15, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__ksymtab_i2c_slave_register, !24, !"__ksymtab_i2c_slave_register", i1 false, i1 false}
!24 = !{!"../drivers/i2c/i2c-core-slave.c", i32 55, i32 1}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/i2c/i2c-core-slave.c", i32 65, i32 3}
!27 = !{ptr @i2c_slave_unregister._entry, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @i2c_slave_unregister._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @i2c_slave_unregister._entry.17, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../drivers/i2c/i2c-core-slave.c", i32 76, i32 3}
!31 = !{ptr @i2c_slave_unregister._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @__ksymtab_i2c_slave_unregister, !33, !"__ksymtab_i2c_slave_unregister", i1 false, i1 false}
!33 = !{!"../drivers/i2c/i2c-core-slave.c", i32 80, i32 1}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/i2c-core-slave.c", i32 101, i32 32}
!36 = !{ptr @__ksymtab_i2c_detect_slave_mode, !37, !"__ksymtab_i2c_detect_slave_mode", i1 false, i1 false}
!37 = !{!"../drivers/i2c/i2c-core-slave.c", i32 112, i32 1}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{!"auto-init"}
