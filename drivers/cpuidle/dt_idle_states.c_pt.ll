; ModuleID = '/llk/IR_all_yes/drivers/cpuidle/dt_idle_states.c_pt.bc'
source_filename = "../drivers/cpuidle/dt_idle_states.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dt_init_idle_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_dt_init_idle_driver\09\09\09\09"
module asm "\09.long\09__crc_dt_init_idle_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dt_init_idle_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22dt_init_idle_driver\22\09\09\09\09\09"
module asm "__kstrtabns_dt_init_idle_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@dt_init_idle_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014DT idle-states: %pOF idle state not valid, bailing out\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dt_init_idle_driver\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/cpuidle/dt_idle_states.c\00", [63 x i8] zeroinitializer }, align 32
@dt_init_idle_driver._entry_ptr = internal global ptr @dt_init_idle_driver._entry, section ".printk_index", align 4
@dt_init_idle_driver._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\014DT idle-states: State index reached static CPU idle driver states array size\0A\00", [48 x i8] zeroinitializer }, align 32
@dt_init_idle_driver._entry_ptr.5 = internal global ptr @dt_init_idle_driver._entry.3, section ".printk_index", align 4
@dt_init_idle_driver._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013DT idle-states: Parsing idle state node %pOF failed with err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dt_init_idle_driver._entry_ptr.8 = internal global ptr @dt_init_idle_driver._entry.6, section ".printk_index", align 4
@__kstrtab_dt_init_idle_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_dt_init_idle_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_dt_init_idle_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dt_init_idle_driver to i32), ptr @__kstrtab_dt_init_idle_driver, ptr @__kstrtabns_dt_init_idle_driver }, section "___ksymtab_gpl+dt_init_idle_driver", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wakeup-latency-us\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"entry-latency-us\00", [47 x i8] zeroinitializer }, align 32
@init_state_node.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dt_idle_states\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"init_state_node\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c" * %pOF missing entry-latency-us property\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"DT idle-states:  * %pOF missing entry-latency-us property\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"exit-latency-us\00", [16 x i8] zeroinitializer }, align 32
@init_state_node.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.16, i8 0, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c" * %pOF missing exit-latency-us property\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"DT idle-states:  * %pOF missing exit-latency-us property\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"min-residency-us\00", [47 x i8] zeroinitializer }, align 32
@init_state_node.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.19, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c" * %pOF missing min-residency-us property\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"DT idle-states:  * %pOF missing min-residency-us property\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"idle-state-name\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"local-timer-stop\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 188, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 195, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 202, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 41, i32 41 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 46, i32 42 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 49, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 54, i32 42 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 57, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 68, i32 41 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 71, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 76, i32 44 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [36 x i8] c"../drivers/cpuidle/dt_idle_states.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 81, i32 40 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab_dt_init_idle_driver, ptr @dt_init_idle_driver._entry, ptr @dt_init_idle_driver._entry.3, ptr @dt_init_idle_driver._entry.6, ptr @dt_init_idle_driver._entry_ptr, ptr @dt_init_idle_driver._entry_ptr.5, ptr @dt_init_idle_driver._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_init_idle_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_init_idle_driver._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_init_idle_driver._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dt_init_idle_driver(ptr noundef %drv, ptr noundef %matches, i32 noundef %start_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %start_idx)
  %cmp = icmp ugt i32 %start_idx, 9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cpumask1 = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 6
  %0 = ptrtoint ptr %cpumask1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpumask1, align 8
  %tobool.not = icmp eq ptr %1, null
  %.__cpu_possible_mask = select i1 %tobool.not, ptr @__cpu_possible_mask, ptr %1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %.__cpu_possible_mask, i32 noundef %2) #6
  %call.i73 = tail call ptr @get_cpu_device(i32 noundef %call.i) #6
  %tobool.not.i = icmp eq ptr %call.i73, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call ptr @of_get_cpu_node(i32 noundef %call.i, ptr noundef null) #6
  br label %of_cpu_device_node_get.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %of_node.i = getelementptr inbounds %struct.device, ptr %call.i73, i32 0, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  %call2.i = tail call ptr @of_node_get(ptr noundef %4) #6
  br label %of_cpu_device_node_get.exit

of_cpu_device_node_get.exit:                      ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call2.i, %if.end.i ], [ %call1.i, %if.then.i ]
  %call387 = tail call ptr @of_get_cpu_state_node(ptr noundef %retval.0.i, i32 noundef 0) #6
  %tobool4.not88 = icmp eq ptr %call387, null
  br i1 %tobool4.not88, label %of_cpu_device_node_get.exit.for.end_crit_edge, label %of_cpu_device_node_get.exit.if.end6_crit_edge

of_cpu_device_node_get.exit.if.end6_crit_edge:    ; preds = %of_cpu_device_node_get.exit
  br label %if.end6

of_cpu_device_node_get.exit.for.end_crit_edge:    ; preds = %of_cpu_device_node_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end6:                                          ; preds = %for.inc.if.end6_crit_edge, %of_cpu_device_node_get.exit.if.end6_crit_edge
  %call393 = phi ptr [ %call3, %for.inc.if.end6_crit_edge ], [ %call387, %of_cpu_device_node_get.exit.if.end6_crit_edge ]
  %state_idx.091 = phi i32 [ %state_idx.1, %for.inc.if.end6_crit_edge ], [ %start_idx, %of_cpu_device_node_get.exit.if.end6_crit_edge ]
  %i.089 = phi i32 [ %inc35, %for.inc.if.end6_crit_edge ], [ 0, %of_cpu_device_node_get.exit.if.end6_crit_edge ]
  %call7 = tail call ptr @of_match_node(ptr noundef %matches, ptr noundef nonnull %call393) #6
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.for.end.loopexit_crit_edge, label %if.end10

if.end6.for.end.loopexit_crit_edge:               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.loopexit

if.end10:                                         ; preds = %if.end6
  %call11 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call393) #6
  br i1 %call11, label %if.end13, label %if.end10.for.inc_crit_edge

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end13:                                         ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %.__cpu_possible_mask, i32 noundef %5) #6
  %call1.i74 = tail call i32 @cpumask_next(i32 noundef %call.i.i, ptr noundef %.__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i74, i32 %6)
  %cmp20.i = icmp ult i32 %call1.i74, %6
  br i1 %cmp20.i, label %if.end13.for.body.i_crit_edge, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end13.for.body.i_crit_edge:                    ; preds = %if.end13
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end13.for.body.i_crit_edge
  %cpu.021.i = phi i32 [ %call7.i, %for.inc.i.for.body.i_crit_edge ], [ %call1.i74, %if.end13.for.body.i_crit_edge ]
  %call.i19.i = tail call ptr @get_cpu_device(i32 noundef %cpu.021.i) #6
  %tobool.not.i.i = icmp eq ptr %call.i19.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i = tail call ptr @of_get_cpu_node(i32 noundef %cpu.021.i, ptr noundef null) #6
  br label %of_cpu_device_node_get.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %call.i19.i, i32 0, i32 27
  %7 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i.i, align 8
  %call2.i.i = tail call ptr @of_node_get(ptr noundef %8) #6
  br label %of_cpu_device_node_get.exit.i

of_cpu_device_node_get.exit.i:                    ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %call2.i.i, %if.end.i.i ], [ %call1.i.i, %if.then.i.i ]
  %call3.i = tail call ptr @of_get_cpu_state_node(ptr noundef %retval.0.i.i, i32 noundef %i.089) #6
  %cmp4.not.i = icmp eq ptr %call3.i, %call393
  tail call void @of_node_put(ptr noundef %call3.i) #6
  tail call void @of_node_put(ptr noundef %retval.0.i.i) #6
  br i1 %cmp4.not.i, label %for.inc.i, label %do.end

for.inc.i:                                        ; preds = %of_cpu_device_node_get.exit.i
  %call7.i = tail call i32 @cpumask_next(i32 noundef %cpu.021.i, ptr noundef %.__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call7.i, %9
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end17_crit_edge

for.inc.i.if.end17_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.end:                                           ; preds = %of_cpu_device_node_get.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %call393) #10
  br label %for.end

if.end17:                                         ; preds = %for.inc.i.if.end17_crit_edge, %if.end13.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %state_idx.091)
  %cmp18 = icmp eq i32 %state_idx.091, 10
  br i1 %cmp18, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %for.end

if.end25:                                         ; preds = %if.end17
  %inc = add i32 %state_idx.091, 1
  %arrayidx = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %state_idx.091
  %call26 = tail call fastcc i32 @init_state_node(ptr noundef %arrayidx, ptr noundef nonnull %call7, ptr noundef nonnull %call393)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end25.for.inc_crit_edge, label %do.end31

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %call393, i32 noundef %call26) #10
  br label %for.end

for.inc:                                          ; preds = %if.end25.for.inc_crit_edge, %if.end10.for.inc_crit_edge
  %state_idx.1 = phi i32 [ %state_idx.091, %if.end10.for.inc_crit_edge ], [ %inc, %if.end25.for.inc_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %call393) #6
  %inc35 = add i32 %i.089, 1
  %call3 = tail call ptr @of_get_cpu_state_node(ptr noundef %retval.0.i, i32 noundef %inc35) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %for.inc.for.end.loopexit_crit_edge, label %for.inc.if.end6_crit_edge

for.inc.if.end6_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

for.inc.for.end.loopexit_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.inc.for.end.loopexit_crit_edge, %if.end6.for.end.loopexit_crit_edge
  %i.086.ph = phi i32 [ %i.089, %if.end6.for.end.loopexit_crit_edge ], [ %inc35, %for.inc.for.end.loopexit_crit_edge ]
  %call379.ph = phi ptr [ %call393, %if.end6.for.end.loopexit_crit_edge ], [ null, %for.inc.for.end.loopexit_crit_edge ]
  %err.2.ph = phi i32 [ -19, %if.end6.for.end.loopexit_crit_edge ], [ 0, %for.inc.for.end.loopexit_crit_edge ]
  %state_idx.2.ph = phi i32 [ %state_idx.091, %if.end6.for.end.loopexit_crit_edge ], [ %state_idx.1, %for.inc.for.end.loopexit_crit_edge ]
  %10 = xor i1 %tobool8.not, true
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %do.end31, %do.end22, %do.end, %of_cpu_device_node_get.exit.for.end_crit_edge
  %i.086 = phi i32 [ %i.089, %do.end31 ], [ %i.089, %do.end22 ], [ %i.089, %do.end ], [ 0, %of_cpu_device_node_get.exit.for.end_crit_edge ], [ %i.086.ph, %for.end.loopexit ]
  %call379 = phi ptr [ %call393, %do.end31 ], [ %call393, %do.end22 ], [ %call393, %do.end ], [ null, %of_cpu_device_node_get.exit.for.end_crit_edge ], [ %call379.ph, %for.end.loopexit ]
  %tobool36.not = phi i1 [ false, %do.end31 ], [ true, %do.end22 ], [ false, %do.end ], [ true, %of_cpu_device_node_get.exit.for.end_crit_edge ], [ %10, %for.end.loopexit ]
  %err.2 = phi i32 [ -22, %do.end31 ], [ 0, %do.end22 ], [ -22, %do.end ], [ 0, %of_cpu_device_node_get.exit.for.end_crit_edge ], [ %err.2.ph, %for.end.loopexit ]
  %state_idx.2 = phi i32 [ %inc, %do.end31 ], [ 10, %do.end22 ], [ %state_idx.091, %do.end ], [ %start_idx, %of_cpu_device_node_get.exit.for.end_crit_edge ], [ %state_idx.2.ph, %for.end.loopexit ]
  tail call void @of_node_put(ptr noundef %call379) #6
  tail call void @of_node_put(ptr noundef %retval.0.i) #6
  br i1 %tobool36.not, label %if.end38, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.086)
  %tobool39.not = icmp eq i32 %i.086, 0
  br i1 %tobool39.not, label %if.end38.cleanup_crit_edge, label %if.then40

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %state_count = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 4
  %11 = ptrtoint ptr %state_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %state_idx.2, ptr %state_count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end38.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %err.2, %for.end.cleanup_crit_edge ], [ %i.086, %if.then40 ], [ 0, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_state_node(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_state_node(ptr noundef %idle_state, ptr nocapture noundef readonly %match_id, ptr noundef %state_node) unnamed_addr #0 align 64 {
entry:
  %desc = alloca ptr, align 4
  %entry_latency = alloca i32, align 4
  %exit_latency2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc) #6
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %desc, align 4, !annotation !51
  %data = getelementptr inbounds %struct.of_device_id, ptr %match_id, i32 0, i32 3
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %enter = getelementptr inbounds %struct.cpuidle_state, ptr %idle_state, i32 0, i32 8
  %3 = ptrtoint ptr %enter to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %enter, align 8
  %4 = load ptr, ptr %data, align 4
  %enter_s2idle = getelementptr inbounds %struct.cpuidle_state, ptr %idle_state, i32 0, i32 10
  %5 = ptrtoint ptr %enter_s2idle to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %enter_s2idle, align 8
  %exit_latency = getelementptr inbounds %struct.cpuidle_state, ptr %idle_state, i32 0, i32 5
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %state_node, ptr noundef nonnull @.str.9, ptr noundef %exit_latency, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %entry.if.end34_crit_edge, label %if.then

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entry_latency) #6
  %6 = ptrtoint ptr %entry_latency to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %entry_latency, align 4, !annotation !51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %exit_latency2) #6
  %7 = ptrtoint ptr %exit_latency2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %exit_latency2, align 4, !annotation !51
  %call.i.i100 = call i32 @of_property_read_variable_u32_array(ptr noundef %state_node, ptr noundef nonnull @.str.10, ptr noundef nonnull %entry_latency, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i100)
  %tobool4.not = icmp sgt i32 %call.i.i100, -1
  br i1 %tobool4.not, label %if.end11, label %do.body

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_state_node.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_state_node, %if.then10)) #6
          to label %cleanup [label %if.then10], !srcloc !52

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_state_node.__UNIQUE_ID_ddebug170, ptr noundef nonnull @.str.14, ptr noundef %state_node) #6
  br label %cleanup

if.end11:                                         ; preds = %if.then
  %call.i.i101 = call i32 @of_property_read_variable_u32_array(ptr noundef %state_node, ptr noundef nonnull @.str.15, ptr noundef nonnull %exit_latency2, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i101)
  %tobool13.not = icmp sgt i32 %call.i.i101, -1
  br i1 %tobool13.not, label %if.end31, label %do.body15

do.body15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_state_node.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_state_node, %if.then27)) #6
          to label %cleanup [label %if.then27], !srcloc !52

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_state_node.__UNIQUE_ID_ddebug171, ptr noundef nonnull @.str.17, ptr noundef %state_node) #6
  br label %cleanup

if.end31:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %entry_latency to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %entry_latency, align 4
  %10 = ptrtoint ptr %exit_latency2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %exit_latency2, align 4
  %add = add i32 %11, %9
  %12 = ptrtoint ptr %exit_latency to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %exit_latency, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %exit_latency2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry_latency) #6
  br label %if.end34

cleanup:                                          ; preds = %if.then27, %do.body15, %if.then10, %do.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %exit_latency2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry_latency) #6
  br label %cleanup69

if.end34:                                         ; preds = %if.end31, %entry.if.end34_crit_edge
  %target_residency = getelementptr inbounds %struct.cpuidle_state, ptr %idle_state, i32 0, i32 7
  %call.i.i102 = call i32 @of_property_read_variable_u32_array(ptr noundef %state_node, ptr noundef nonnull @.str.18, ptr noundef %target_residency, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i102)
  %tobool36.not = icmp sgt i32 %call.i.i102, -1
  br i1 %tobool36.not, label %if.end54, label %do.body38

do.body38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_state_node.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_state_node, %if.then50)) #6
          to label %cleanup69 [label %if.then50], !srcloc !52

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_state_node.__UNIQUE_ID_ddebug172, ptr noundef nonnull @.str.20, ptr noundef %state_node) #6
  br label %cleanup69

if.end54:                                         ; preds = %if.end34
  %call55 = call i32 @of_property_read_string(ptr noundef %state_node, ptr noundef nonnull @.str.21, ptr noundef nonnull %desc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end54.if.end58_crit_edge, label %if.then57

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %state_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state_node, align 4
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %desc, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end54.if.end58_crit_edge
  %flags = getelementptr inbounds %struct.cpuidle_state, ptr %idle_state, i32 0, i32 4
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %flags, align 8
  %call.i = call ptr @of_find_property(ptr noundef %state_node, ptr noundef nonnull @.str.22, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end58.if.end62_crit_edge, label %if.then60

if.end58.if.end62_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 8
  %or = or i32 %18, 4
  store i32 %or, ptr %flags, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end58.if.end62_crit_edge
  %19 = ptrtoint ptr %state_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state_node, align 4
  %call65 = call ptr @strncpy(ptr noundef %idle_state, ptr noundef %20, i32 noundef 15)
  %desc66 = getelementptr inbounds %struct.cpuidle_state, ptr %idle_state, i32 0, i32 1
  %21 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %desc, align 4
  %call68 = call ptr @strncpy(ptr noundef %desc66, ptr noundef %22, i32 noundef 31)
  br label %cleanup69

cleanup69:                                        ; preds = %if.end62, %if.then50, %do.body38, %cleanup
  %retval.1 = phi i32 [ 0, %if.end62 ], [ -22, %cleanup ], [ -22, %if.then50 ], [ -22, %do.body38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc) #6
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/cpuidle/dt_idle_states.c", i32 188, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dt_init_idle_driver._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dt_init_idle_driver._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/cpuidle/dt_idle_states.c", i32 195, i32 4}
!8 = !{ptr @dt_init_idle_driver._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @dt_init_idle_driver._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/cpuidle/dt_idle_states.c", i32 202, i32 4}
!12 = !{ptr @dt_init_idle_driver._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @dt_init_idle_driver._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_dt_init_idle_driver, !15, !"__ksymtab_dt_init_idle_driver", i1 false, i1 false}
!15 = !{!"../drivers/cpuidle/dt_idle_states.c", i32 228, i32 1}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/cpuidle/dt_idle_states.c", i32 41, i32 41}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/cpuidle/dt_idle_states.c", i32 46, i32 42}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/cpuidle/dt_idle_states.c", i32 49, i32 4}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @init_state_node.__UNIQUE_ID_ddebug170, !21, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!25 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/cpuidle/dt_idle_states.c", i32 54, i32 42}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/cpuidle/dt_idle_states.c", i32 57, i32 4}
!30 = !{ptr @init_state_node.__UNIQUE_ID_ddebug171, !29, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!31 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/cpuidle/dt_idle_states.c", i32 68, i32 41}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/cpuidle/dt_idle_states.c", i32 71, i32 3}
!36 = !{ptr @init_state_node.__UNIQUE_ID_ddebug172, !35, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!37 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/cpuidle/dt_idle_states.c", i32 76, i32 44}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/cpuidle/dt_idle_states.c", i32 81, i32 40}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"auto-init"}
!52 = !{i64 2148169545, i64 2148169550, i64 2148169563, i64 2148169607, i64 2148169641, i64 2148169662}
