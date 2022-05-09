; ModuleID = '/llk/IR_all_yes/kernel/irq/spurious.c_pt.bc'
source_filename = "../kernel/irq/spurious.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irqaction = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, [76 x i8] }

@irq_wait_for_poll.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@irq_poll_cpu = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kernel/irq/spurious.c\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"irq poll in progress on cpu %d for irq %d\0A\00", [53 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@note_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\010Disabling IRQ #%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"note_interrupt\00", [17 x i8] zeroinitializer }, align 32
@note_interrupt._entry_ptr = internal global ptr @note_interrupt._entry, section ".printk_index", align 4
@poll_spurious_irq_timer = internal global { %struct.timer_list, [48 x i8] } { %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @poll_spurious_irqs, i32 0, %struct.lockdep_map { ptr @.str.23, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [48 x i8] zeroinitializer }, align 32
@noirqdebug = dso_local global i8 0, section ".data..read_mostly", align 1
@noirqdebug_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016IRQ lockup detection disabled\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"noirqdebug_setup\00", [47 x i8] zeroinitializer }, align 32
@noirqdebug_setup._entry_ptr = internal global ptr @noirqdebug_setup._entry, section ".printk_index", align 4
@__setup_str_noirqdebug_setup = internal constant [11 x i8] c"noirqdebug\00", section ".init.rodata", align 1
@__setup_noirqdebug_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_noirqdebug_setup, ptr @noirqdebug_setup, i32 0 }, section ".init.setup", align 4
@__param_str_noirqdebug = internal constant [20 x i8] c"spurious.noirqdebug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_noirqdebug = internal constant %struct.kernel_param { ptr @__param_str_noirqdebug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @noirqdebug } }, section "__param", align 4
@__UNIQUE_ID_noirqdebugtype228 = internal constant [34 x i8] c"spurious.parmtype=noirqdebug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_noirqdebug229 = internal constant [64 x i8] c"spurious.parm=noirqdebug:Disable irq lockup detection when true\00", section ".modinfo", align 1
@__setup_str_irqfixup_setup = internal constant [9 x i8] c"irqfixup\00", section ".init.rodata", align 1
@__setup_irqfixup_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_irqfixup_setup, ptr @irqfixup_setup, i32 0 }, section ".init.setup", align 4
@__param_str_irqfixup = internal constant [18 x i8] c"spurious.irqfixup\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@irqfixup = internal global i32 0, section ".data..read_mostly", align 4
@__param_irqfixup = internal constant %struct.kernel_param { ptr @__param_str_irqfixup, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @irqfixup } }, section "__param", align 4
@__UNIQUE_ID_irqfixuptype230 = internal constant [31 x i8] c"spurious.parmtype=irqfixup:int\00", section ".modinfo", align 1
@__setup_str_irqpoll_setup = internal constant [8 x i8] c"irqpoll\00", section ".init.rodata", align 1
@__setup_irqpoll_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_irqpoll_setup, ptr @irqpoll_setup, i32 0 }, section ".init.setup", align 4
@report_bad_irq.count = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@irq_poll_active = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@__report_bad_irq._entry = internal constant %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 200, ptr null, ptr null }, align 1
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013irq event %d: bogus return value %x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__report_bad_irq\00", [47 x i8] zeroinitializer }, align 32
@__report_bad_irq._entry_ptr = internal global ptr @__report_bad_irq._entry, section ".printk_index", align 4
@__report_bad_irq._entry.8 = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str, i32 203, ptr null, ptr null }, align 1
@.str.9 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013irq %d: nobody cared (try booting with the \22irqpoll\22 option)\0A\00", [32 x i8] zeroinitializer }, align 32
@__report_bad_irq._entry_ptr.10 = internal global ptr @__report_bad_irq._entry.8, section ".printk_index", align 4
@__report_bad_irq._entry.11 = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str, i32 206, ptr null, ptr null }, align 1
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\013handlers:\0A\00", [19 x i8] zeroinitializer }, align 32
@__report_bad_irq._entry_ptr.13 = internal global ptr @__report_bad_irq._entry.11, section ".printk_index", align 4
@__report_bad_irq._entry.14 = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str, i32 216, ptr null, ptr null }, align 1
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\013[<%p>] %ps\00", [19 x i8] zeroinitializer }, align 32
@__report_bad_irq._entry_ptr.16 = internal global ptr @__report_bad_irq._entry.14, section ".printk_index", align 4
@__report_bad_irq._entry.17 = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str, i32 219, ptr null, ptr null }, align 1
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\01c threaded [<%p>] %ps\00", [41 x i8] zeroinitializer }, align 32
@__report_bad_irq._entry_ptr.19 = internal global ptr @__report_bad_irq._entry.17, section ".printk_index", align 4
@__report_bad_irq._entry.20 = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str, i32 220, ptr null, ptr null }, align 1
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@__report_bad_irq._entry_ptr.22 = internal global ptr @__report_bad_irq._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kernel/irq/spurious.c:21\00", [39 x i8] zeroinitializer }, align 32
@irqfixup_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014Misrouted IRQ fixup support enabled.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"irqfixup_setup\00", [17 x i8] zeroinitializer }, align 32
@irqfixup_setup._entry_ptr = internal global ptr @irqfixup_setup._entry, section ".printk_index", align 4
@irqfixup_setup._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014This may impact system performance.\0A\00", [57 x i8] zeroinitializer }, align 32
@irqfixup_setup._entry_ptr.28 = internal global ptr @irqfixup_setup._entry.26, section ".printk_index", align 4
@irqpoll_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014Misrouted IRQ fixup and polling support enabled\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"irqpoll_setup\00", [18 x i8] zeroinitializer }, align 32
@irqpoll_setup._entry_ptr = internal global ptr @irqpoll_setup._entry, section ".printk_index", align 4
@irqpoll_setup._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014This may significantly impact system performance\0A\00", [44 x i8] zeroinitializer }, align 32
@irqpoll_setup._entry_ptr.33 = internal global ptr @irqpoll_setup._entry.31, section ".printk_index", align 4
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"irq_poll_cpu\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 22, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 39, i32 6 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 423, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [24 x i8] c"poll_spurious_irq_timer\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 439, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 227, i32 13 }
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"irq_poll_active\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 23, i32 17 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 199, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 202, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 206, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 216, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 218, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 220, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 21, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 455, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 456, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 471, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [25 x i8] c"../kernel/irq/spurious.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 473, i32 2 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_irqfixuptype230, ptr @__UNIQUE_ID_noirqdebug229, ptr @__UNIQUE_ID_noirqdebugtype228, ptr @__param_irqfixup, ptr @__param_noirqdebug, ptr @__report_bad_irq._entry, ptr @__report_bad_irq._entry.11, ptr @__report_bad_irq._entry.14, ptr @__report_bad_irq._entry.17, ptr @__report_bad_irq._entry.20, ptr @__report_bad_irq._entry.8, ptr @__report_bad_irq._entry_ptr, ptr @__report_bad_irq._entry_ptr.10, ptr @__report_bad_irq._entry_ptr.13, ptr @__report_bad_irq._entry_ptr.16, ptr @__report_bad_irq._entry_ptr.19, ptr @__report_bad_irq._entry_ptr.22, ptr @__setup_irqfixup_setup, ptr @__setup_irqpoll_setup, ptr @__setup_noirqdebug_setup, ptr @irqfixup_setup._entry, ptr @irqfixup_setup._entry.26, ptr @irqfixup_setup._entry_ptr, ptr @irqfixup_setup._entry_ptr.28, ptr @irqpoll_setup._entry, ptr @irqpoll_setup._entry.31, ptr @irqpoll_setup._entry_ptr, ptr @irqpoll_setup._entry_ptr.33, ptr @noirqdebug_setup._entry, ptr @noirqdebug_setup._entry_ptr, ptr @note_interrupt._entry, ptr @note_interrupt._entry_ptr, ptr @irq_poll_cpu, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @poll_spurious_irq_timer, ptr @.str.4, ptr @.str.5, ptr @report_bad_irq.count, ptr @irq_poll_active, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_poll_cpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @note_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll_spurious_irq_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noirqdebug_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_bad_irq.count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_poll_active to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqfixup_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqfixup_setup._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqpoll_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqpoll_setup._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @irq_wait_for_poll(ptr noundef %desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @irq_poll_cpu, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !89) #6
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %4)
  %cmp = icmp eq i32 %0, %4
  br i1 %cmp, label %land.rhs, label %do.body40.preheader

do.body40.preheader:                              ; preds = %entry
  %lock = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 15
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 3
  br label %do.body40

land.rhs:                                         ; preds = %entry
  %.b70 = load i1, ptr @irq_wait_for_poll.__already_done, align 1
  br i1 %.b70, label %land.rhs.return_crit_edge, label %if.then, !prof !99

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @irq_wait_for_poll.__already_done, align 1
  %irq = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %0, i32 noundef %6) #6
  br label %return

do.body40:                                        ; preds = %while.end.do.body40_crit_edge, %do.body40.preheader
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %7 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %common.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and.i7279 = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7279)
  %tobool.i.not80 = icmp eq i32 %and.i7279, 0
  br i1 %tobool.i.not80, label %do.body40.while.end_crit_edge, label %do.body40.do.end47_crit_edge

do.body40.do.end47_crit_edge:                     ; preds = %do.body40
  br label %do.end47

do.body40.while.end_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.end47:                                         ; preds = %do.end47.do.end47_crit_edge, %do.body40.do.end47_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !101
  %11 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %common.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and.i72 = and i32 %14, 262144
  %tobool.i.not = icmp eq i32 %and.i72, 0
  br i1 %tobool.i.not, label %do.end47.while.end_crit_edge, label %do.end47.do.end47_crit_edge

do.end47.do.end47_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47

do.end47.while.end_crit_edge:                     ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %do.end47.while.end_crit_edge, %do.body40.while.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %15 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %common.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %and.i74 = and i32 %18, 262144
  %tobool.i75.not = icmp eq i32 %and.i74, 0
  br i1 %tobool.i75.not, label %do.end56, label %while.end.do.body40_crit_edge

while.end.do.body40_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40

do.end56:                                         ; preds = %while.end
  %and.i77 = and i32 %18, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77)
  %tobool.i78.not = icmp eq i32 %and.i77, 0
  br i1 %tobool.i78.not, label %land.rhs59, label %do.end56.return_crit_edge

do.end56.return_crit_edge:                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.rhs59:                                       ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #8
  %action = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 4
  %19 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %action, align 64
  %tobool60 = icmp ne ptr %20, null
  br label %return

return:                                           ; preds = %land.rhs59, %do.end56.return_crit_edge, %if.then, %land.rhs.return_crit_edge
  %retval.0 = phi i1 [ false, %if.then ], [ false, %do.end56.return_crit_edge ], [ %tobool60, %land.rhs59 ], [ false, %land.rhs.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @note_interrupt(ptr noundef %desc, i32 noundef %action_ret) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 6
  %0 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup95_crit_edge

entry.cleanup95_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup95

lor.lhs.false:                                    ; preds = %entry
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 5
  %2 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status_use_accessors.i, align 4
  %and.i = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %lor.lhs.false.cleanup95_crit_edge

lor.lhs.false.cleanup95_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup95

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %action_ret)
  %cmp.i = icmp ult i32 %action_ret, 4
  br i1 %cmp.i, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr @report_bad_irq.count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i134 = icmp sgt i32 %4, 0
  br i1 %cmp.i134, label %if.then.i, label %if.then3.cleanup95_crit_edge

if.then3.cleanup95_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup95

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i = add nsw i32 %4, -1
  store i32 %dec.i, ptr @report_bad_irq.count, align 4
  tail call fastcc void @__report_bad_irq(ptr noundef %desc, i32 noundef %action_ret) #6
  br label %cleanup95

if.end4:                                          ; preds = %if.end
  %and5 = and i32 %action_ret, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end25, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %action_ret)
  %cmp = icmp eq i32 %action_ret, 2
  %threads_handled_last = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 14
  %5 = ptrtoint ptr %threads_handled_last to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %threads_handled_last, align 8
  br i1 %cmp, label %if.then8, label %if.end25.thread

if.then8:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool10.not = icmp sgt i32 %6, -1
  br i1 %tobool10.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.then8
  %threads_handled = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %threads_handled, i32 noundef 4) #6
  %7 = ptrtoint ptr %threads_handled to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %threads_handled, align 4
  %or15 = or i32 %8, -2147483648
  %9 = ptrtoint ptr %threads_handled_last to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %threads_handled_last, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %or15, i32 %10)
  %cmp17.not = icmp eq i32 %or15, %10
  br i1 %cmp17.not, label %if.end13.if.then29_crit_edge, label %if.end36.thread

if.end13.if.then29_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

cleanup:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %6, -2147483648
  %11 = ptrtoint ptr %threads_handled_last to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %threads_handled_last, align 8
  br label %cleanup95

if.end25.thread:                                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %and23 = and i32 %6, 2147483647
  %12 = ptrtoint ptr %threads_handled_last to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and23, ptr %threads_handled_last, align 8
  br label %if.end36

if.end25:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action_ret)
  %cmp26 = icmp eq i32 %action_ret, 0
  br i1 %cmp26, label %if.end25.if.then29_crit_edge, label %if.end25.if.end36_crit_edge, !prof !102

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end25.if.then29_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

if.then29:                                        ; preds = %if.end25.if.then29_crit_edge, %if.end13.if.then29_crit_edge
  %last_unhandled = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 11
  %13 = ptrtoint ptr %last_unhandled to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_unhandled, align 4
  %add = add i32 %14, 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp30 = icmp slt i32 %sub, 0
  %irqs_unhandled = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 12
  br i1 %cmp30, label %if.then29.if.end36.thread171_crit_edge, label %if.else32

if.then29.if.end36.thread171_crit_edge:           ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.thread171

if.else32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %irqs_unhandled to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irqs_unhandled, align 32
  %inc = add i32 %17, 1
  br label %if.end36.thread171

if.end36:                                         ; preds = %if.end25.if.end36_crit_edge, %if.end25.thread
  %irq.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq.i, align 4
  %20 = load i32, ptr @irqfixup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.end36.if.end53_crit_edge, label %if.end36.if.end2.i_crit_edge

if.end36.if.end2.i_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i

if.end36.if.end53_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.end36.thread171:                               ; preds = %if.else32, %if.then29.if.end36.thread171_crit_edge
  %.sink = phi i32 [ %inc, %if.else32 ], [ 1, %if.then29.if.end36.thread171_crit_edge ]
  %21 = ptrtoint ptr %irqs_unhandled to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %irqs_unhandled, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %23 = ptrtoint ptr %last_unhandled to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %last_unhandled, align 4
  %irq.i174 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %irq.i174 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq.i174, align 4
  %26 = load i32, ptr @irqfixup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i175 = icmp eq i32 %26, 0
  br i1 %tobool.not.i175, label %if.end36.thread171.if.end53_crit_edge, label %if.then49

if.end36.thread171.if.end53_crit_edge:            ; preds = %if.end36.thread171
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.end36.thread:                                  ; preds = %if.end13
  %27 = ptrtoint ptr %threads_handled_last to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or15, ptr %threads_handled_last, align 8
  %irq.i162 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %irq.i162 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq.i162, align 4
  %30 = load i32, ptr @irqfixup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i163 = icmp eq i32 %30, 0
  br i1 %tobool.not.i163, label %if.end36.thread.if.end53_crit_edge, label %if.end36.thread.if.end2.i_crit_edge

if.end36.thread.if.end2.i_crit_edge:              ; preds = %if.end36.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i

if.end36.thread.if.end53_crit_edge:               ; preds = %if.end36.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.end2.i:                                        ; preds = %if.end36.thread.if.end2.i_crit_edge, %if.end36.if.end2.i_crit_edge
  %action_ret.addr.2140166170 = phi i32 [ 1, %if.end36.thread.if.end2.i_crit_edge ], [ %action_ret, %if.end36.if.end2.i_crit_edge ]
  %31 = phi i32 [ %29, %if.end36.thread.if.end2.i_crit_edge ], [ %19, %if.end36.if.end2.i_crit_edge ]
  %32 = phi i32 [ %30, %if.end36.thread.if.end2.i_crit_edge ], [ %20, %if.end36.if.end2.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp3.i = icmp slt i32 %32, 2
  br i1 %cmp3.i, label %if.end2.i.if.end53_crit_edge, label %if.end5.i

if.end2.i.if.end53_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.end5.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool6.not.i = icmp eq i32 %31, 0
  br i1 %tobool6.not.i, label %if.then46, label %if.end8.i

if.end8.i:                                        ; preds = %if.end5.i
  %action9.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 4
  %33 = ptrtoint ptr %action9.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %action9.i, align 64
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !103
  %tobool10.not.i = icmp eq ptr %34, null
  br i1 %tobool10.not.i, label %if.end8.i.if.end53_crit_edge, label %try_misrouted_irq.exit

if.end8.i.if.end53_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

try_misrouted_irq.exit:                           ; preds = %if.end8.i
  %flags.i = getelementptr inbounds %struct.irqaction, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 32
  %37 = and i32 %36, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool39.not = icmp eq i32 %37, 0
  br i1 %tobool39.not, label %try_misrouted_irq.exit.if.end53_crit_edge, label %if.then46.thread, !prof !99

try_misrouted_irq.exit.if.end53_crit_edge:        ; preds = %try_misrouted_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then46.thread:                                 ; preds = %try_misrouted_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call47148 = tail call fastcc i32 @misrouted_irq(i32 noundef %31)
  br label %if.end53

if.then46:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = tail call fastcc i32 @misrouted_irq(i32 noundef 0)
  br label %if.end53

if.then49:                                        ; preds = %if.end36.thread171
  call void @__sanitizer_cov_trace_pc() #8
  %call47150 = tail call fastcc i32 @misrouted_irq(i32 noundef %25)
  %irqs_unhandled50 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 12
  %38 = ptrtoint ptr %irqs_unhandled50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irqs_unhandled50, align 32
  %sub51 = sub i32 %39, %call47150
  store i32 %sub51, ptr %irqs_unhandled50, align 32
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.then46, %if.then46.thread, %try_misrouted_irq.exit.if.end53_crit_edge, %if.end8.i.if.end53_crit_edge, %if.end2.i.if.end53_crit_edge, %if.end36.thread.if.end53_crit_edge, %if.end36.thread171.if.end53_crit_edge, %if.end36.if.end53_crit_edge
  %40 = phi i32 [ 0, %if.then46 ], [ %31, %if.then46.thread ], [ %25, %if.then49 ], [ %31, %try_misrouted_irq.exit.if.end53_crit_edge ], [ %29, %if.end36.thread.if.end53_crit_edge ], [ %31, %if.end8.i.if.end53_crit_edge ], [ %31, %if.end2.i.if.end53_crit_edge ], [ %19, %if.end36.if.end53_crit_edge ], [ %25, %if.end36.thread171.if.end53_crit_edge ]
  %action_ret.addr.2140165 = phi i32 [ %action_ret.addr.2140166170, %if.then46 ], [ %action_ret.addr.2140166170, %if.then46.thread ], [ 0, %if.then49 ], [ %action_ret.addr.2140166170, %try_misrouted_irq.exit.if.end53_crit_edge ], [ 1, %if.end36.thread.if.end53_crit_edge ], [ %action_ret.addr.2140166170, %if.end8.i.if.end53_crit_edge ], [ %action_ret.addr.2140166170, %if.end2.i.if.end53_crit_edge ], [ %action_ret, %if.end36.if.end53_crit_edge ], [ 0, %if.end36.thread171.if.end53_crit_edge ]
  %irqs_unhandled54 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 12
  %41 = ptrtoint ptr %irqs_unhandled54 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irqs_unhandled54, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool55.not = icmp eq i32 %42, 0
  br i1 %tobool55.not, label %if.end53.cleanup95_crit_edge, label %if.end65, !prof !99

if.end53.cleanup95_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup95

if.end65:                                         ; preds = %if.end53
  %irq_count = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 10
  %43 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq_count, align 8
  %inc66 = add i32 %44, 1
  store i32 %inc66, ptr %irq_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %inc66)
  %cmp68 = icmp ult i32 %inc66, 100000
  br i1 %cmp68, label %if.end65.cleanup95_crit_edge, label %if.end76, !prof !99

if.end65.cleanup95_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup95

if.end76:                                         ; preds = %if.end65
  %45 = ptrtoint ptr %irq_count to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %irq_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 99900, i32 %42)
  %cmp79 = icmp ugt i32 %42, 99900
  br i1 %cmp79, label %if.then86, label %if.end76.if.end93_crit_edge, !prof !102

if.end76.if.end93_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.then86:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @__report_bad_irq(ptr noundef %desc, i32 noundef %action_ret.addr.2140165)
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %40) #9
  %46 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %or89 = or i32 %47, 2
  store i32 %or89, ptr %core_internal_state__do_not_mess_with_it, align 8
  %depth = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 7
  %48 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %depth, align 4
  %inc90 = add i32 %49, 1
  store i32 %inc90, ptr %depth, align 4
  tail call void @irq_disable(ptr noundef %desc) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %add91 = add i32 %50, 10
  %call92 = tail call i32 @mod_timer(ptr noundef nonnull @poll_spurious_irq_timer, i32 noundef %add91) #6
  br label %if.end93

if.end93:                                         ; preds = %if.then86, %if.end76.if.end93_crit_edge
  %51 = ptrtoint ptr %irqs_unhandled54 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %irqs_unhandled54, align 32
  br label %cleanup95

cleanup95:                                        ; preds = %if.end93, %if.end65.cleanup95_crit_edge, %if.end53.cleanup95_crit_edge, %cleanup, %if.then.i, %if.then3.cleanup95_crit_edge, %lor.lhs.false.cleanup95_crit_edge, %entry.cleanup95_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @misrouted_irq(i32 noundef %irq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @irq_poll_active, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr nonnull @irq_poll_active, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @irq_poll_active, ptr nonnull @irq_poll_active, i32 1, ptr nonnull elementtype(i32) @irq_poll_active) #6, !srcloc !105
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp.not = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !89) #6
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  store i32 %4, ptr @irq_poll_cpu, align 4
  %call2 = tail call ptr @irq_to_desc(i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %5 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp325 = icmp sgt i32 %5, 0
  br i1 %cmp325, label %if.end.for.body_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %ok.028 = phi i32 [ %ok.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %i.027 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %desc.026 = phi ptr [ %call16, %for.inc.for.body_crit_edge ], [ %call2, %if.end.for.body_crit_edge ]
  %tobool.not = icmp eq ptr %desc.026, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.027)
  %tobool5.not = icmp eq i32 %i.027, 0
  %or.cond = or i1 %tobool.not, %tobool5.not
  call void @__sanitizer_cov_trace_cmp4(i32 %i.027, i32 %irq)
  %cmp8 = icmp eq i32 %i.027, %irq
  %or.cond23 = or i1 %cmp8, %or.cond
  br i1 %or.cond23, label %for.body.for.inc_crit_edge, label %if.end10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end10:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call fastcc i32 @try_one_irq(ptr noundef nonnull %desc.026, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %spec.select = select i1 %tobool12.not, i32 %ok.028, i32 1
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %for.body.for.inc_crit_edge
  %ok.1 = phi i32 [ %ok.028, %for.body.for.inc_crit_edge ], [ %spec.select, %if.end10 ]
  %inc = add nuw nsw i32 %i.027, 1
  %call16 = tail call ptr @irq_to_desc(i32 noundef %inc) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %6 = load i32, ptr @nr_irqs, align 4
  %cmp3 = icmp slt i32 %inc, %6
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

out:                                              ; preds = %for.inc.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ok.2 = phi i32 [ 0, %entry.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ %ok.1, %for.inc.out_crit_edge ]
  %call.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @irq_poll_active, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull @irq_poll_active, i32 1, i32 3, i32 1) #6
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @irq_poll_active, ptr nonnull @irq_poll_active, i32 1, ptr nonnull elementtype(i32) @irq_poll_active) #6, !srcloc !107
  ret i32 %ok.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__report_bad_irq(ptr noundef %desc, i32 noundef %action_ret) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %action_ret)
  %cmp.i = icmp ult i32 %action_ret, 4
  br i1 %cmp.i, label %do.end5, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %1, i32 noundef %action_ret) #9
  br label %if.end

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %do.end5, %do.end
  tail call void @dump_stack() #9
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  %lock = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 15
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %action18 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 4
  %2 = ptrtoint ptr %action18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %action.061 = load ptr, ptr %action18, align 4
  %tobool19.not62 = icmp eq ptr %action.061, null
  br i1 %tobool19.not62, label %if.end.do.body41_crit_edge, label %if.end.do.end22_crit_edge

if.end.do.end22_crit_edge:                        ; preds = %if.end
  br label %do.end22

if.end.do.body41_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body41

do.end22:                                         ; preds = %do.end38.do.end22_crit_edge, %if.end.do.end22_crit_edge
  %action.063 = phi ptr [ %action.0, %do.end38.do.end22_crit_edge ], [ %action.061, %if.end.do.end22_crit_edge ]
  %3 = ptrtoint ptr %action.063 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %action.063, align 128
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %4, ptr noundef %4) #9
  %thread_fn = getelementptr inbounds %struct.irqaction, ptr %action.063, i32 0, i32 4
  %5 = ptrtoint ptr %thread_fn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %thread_fn, align 16
  %tobool26.not = icmp eq ptr %6, null
  br i1 %tobool26.not, label %do.end22.do.end38_crit_edge, label %do.end30

do.end22.do.end38_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end38

do.end30:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %6, ptr noundef nonnull %6) #9
  br label %do.end38

do.end38:                                         ; preds = %do.end30, %do.end22.do.end38_crit_edge
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #9
  %next = getelementptr inbounds %struct.irqaction, ptr %action.063, i32 0, i32 3
  %7 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %7)
  %action.0 = load ptr, ptr %next, align 4
  %tobool19.not = icmp eq ptr %action.0, null
  br i1 %tobool19.not, label %do.end38.do.body41_crit_edge, label %do.end38.do.end22_crit_edge

do.end38.do.end22_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

do.end38.do.body41_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body41

do.body41:                                        ; preds = %do.end38.do.body41_crit_edge, %if.end.do.body41_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call15) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @noirqdebug_setup(ptr nocapture readnone %str) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store i8 1, ptr @noirqdebug, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @irqfixup_setup(ptr nocapture noundef readnone %str) #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 1, ptr @irqfixup, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #9
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @irqpoll_setup(ptr nocapture noundef readnone %str) #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 2, ptr @irqfixup, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #9
  ret i32 1
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @try_one_irq(ptr noundef %desc, i1 noundef zeroext %force) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 5
  %0 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status_use_accessors.i, align 4
  %2 = and i32 %1, 295424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %common.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %and.i57 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57)
  %tobool.i58.not = icmp eq i32 %and.i57, 0
  %brmerge = or i1 %tobool.i58.not, %force
  br i1 %brmerge, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end6:                                          ; preds = %if.end
  %action7 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 4
  %7 = ptrtoint ptr %action7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %action7, align 64
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %if.end6.out_crit_edge, label %lor.lhs.false9

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.lhs.false9:                                   ; preds = %if.end6
  %flags = getelementptr inbounds %struct.irqaction, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 32
  %11 = and i32 %10, 640
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %11)
  %12 = icmp eq i32 %11, 128
  br i1 %12, label %if.end16, label %lor.lhs.false9.out_crit_edge

lor.lhs.false9.out_crit_edge:                     ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end16:                                         ; preds = %lor.lhs.false9
  %and.i60 = and i32 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool.i61.not = icmp eq i32 %and.i60, 0
  %core_internal_state__do_not_mess_with_it21 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 6
  %13 = ptrtoint ptr %core_internal_state__do_not_mess_with_it21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %core_internal_state__do_not_mess_with_it21, align 8
  br i1 %tobool.i61.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %14, 512
  %15 = ptrtoint ptr %core_internal_state__do_not_mess_with_it21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %core_internal_state__do_not_mess_with_it21, align 8
  br label %out

if.end20:                                         ; preds = %if.end16
  %or22 = or i32 %14, 8
  %16 = ptrtoint ptr %core_internal_state__do_not_mess_with_it21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or22, ptr %core_internal_state__do_not_mess_with_it21, align 8
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end20
  %ret.0 = phi i32 [ 0, %if.end20 ], [ %spec.select, %land.rhs.do.body_crit_edge ]
  %call23 = tail call i32 @handle_irq_event(ptr noundef %desc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call23)
  %cmp = icmp eq i32 %call23, 1
  %spec.select = select i1 %cmp, i32 1, i32 %ret.0
  %17 = ptrtoint ptr %core_internal_state__do_not_mess_with_it21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %core_internal_state__do_not_mess_with_it21, align 8
  %and28 = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body.do.end_crit_edge, label %land.rhs

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.rhs:                                         ; preds = %do.body
  %19 = ptrtoint ptr %action7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %action7, align 64
  %tobool30.not = icmp eq ptr %20, null
  br i1 %tobool30.not, label %land.rhs.do.end_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %do.body.do.end_crit_edge
  %and32 = and i32 %18, -9
  %21 = ptrtoint ptr %core_internal_state__do_not_mess_with_it21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and32, ptr %core_internal_state__do_not_mess_with_it21, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select)
  %phi.cmp = icmp eq i32 %spec.select, 1
  %phi.cast = zext i1 %phi.cmp to i32
  br label %out

out:                                              ; preds = %do.end, %if.then19, %lor.lhs.false9.out_crit_edge, %if.end6.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.2 = phi i32 [ 0, %entry.out_crit_edge ], [ 0, %if.then19 ], [ %phi.cast, %do.end ], [ 0, %lor.lhs.false9.out_crit_edge ], [ 0, %if.end6.out_crit_edge ], [ 0, %if.end.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @handle_irq_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @poll_spurious_irqs(ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @irq_poll_active, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr nonnull @irq_poll_active, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @irq_poll_active, ptr nonnull @irq_poll_active, i32 1, ptr nonnull elementtype(i32) @irq_poll_active) #6, !srcloc !105
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp.not = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !89) #6
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  store i32 %4, ptr @irq_poll_cpu, align 4
  %call2 = tail call ptr @irq_to_desc(i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %5 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp330 = icmp sgt i32 %5, 0
  br i1 %cmp330, label %if.end.for.body_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %desc.032 = phi ptr [ %call21, %for.inc.for.body_crit_edge ], [ %call2, %if.end.for.body_crit_edge ]
  %i.031 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %tobool.not = icmp eq ptr %desc.032, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.031)
  %tobool5.not = icmp eq i32 %i.031, 0
  %or.cond = or i1 %tobool5.not, %tobool.not
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.end7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %desc.032, i32 0, i32 6
  %6 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !108
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end7.for.inc_crit_edge, label %do.body

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body:                                          ; preds = %if.end7
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !109
  %and.i.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool12.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #6, !srcloc !110
  br i1 %tobool12.not, label %if.then14, label %do.body.if.end15_crit_edge

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %do.body.if.end15_crit_edge
  %call16 = tail call fastcc i32 @try_one_irq(ptr noundef nonnull %desc.032, i1 noundef zeroext true)
  tail call void @trace_hardirqs_on() #6
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !111
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %if.end7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.031, 1
  %call21 = tail call ptr @irq_to_desc(i32 noundef %inc) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %9 = load i32, ptr @nr_irqs, align 4
  %cmp3 = icmp slt i32 %inc, %9
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

out:                                              ; preds = %for.inc.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %call.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @irq_poll_active, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull @irq_poll_active, i32 1, i32 3, i32 1) #6
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @irq_poll_active, ptr nonnull @irq_poll_active, i32 1, ptr nonnull elementtype(i32) @irq_poll_active) #6, !srcloc !107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %11, 10
  %call22 = tail call i32 @mod_timer(ptr noundef nonnull @poll_spurious_irq_timer, i32 noundef %add) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !11, !12, !13, !14, !16, !18, !19, !21, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88}
!llvm.named.register.sp = !{!89}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../kernel/irq/spurious.c", i32 39, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/irq/spurious.c", i32 423, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @note_interrupt._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @note_interrupt._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../kernel/irq/spurious.c", i32 439, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @noirqdebug_setup._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @noirqdebug_setup._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__setup_noirqdebug_setup, !15, !"__setup_noirqdebug_setup", i1 false, i1 false}
!15 = !{!"../kernel/irq/spurious.c", i32 444, i32 1}
!16 = !{ptr @__param_noirqdebug, !17, !"__param_noirqdebug", i1 false, i1 false}
!17 = !{!"../kernel/irq/spurious.c", i32 445, i32 1}
!18 = !{ptr @__UNIQUE_ID_noirqdebugtype228, !17, !"__UNIQUE_ID_noirqdebugtype228", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_noirqdebug229, !20, !"__UNIQUE_ID_noirqdebug229", i1 false, i1 false}
!20 = !{!"../kernel/irq/spurious.c", i32 446, i32 1}
!21 = !{ptr @__setup_irqfixup_setup, !22, !"__setup_irqfixup_setup", i1 false, i1 false}
!22 = !{!"../kernel/irq/spurious.c", i32 461, i32 1}
!23 = !{ptr @__param_irqfixup, !24, !"__param_irqfixup", i1 false, i1 false}
!24 = !{!"../kernel/irq/spurious.c", i32 462, i32 1}
!25 = !{ptr @__UNIQUE_ID_irqfixuptype230, !24, !"__UNIQUE_ID_irqfixuptype230", i1 false, i1 false}
!26 = !{ptr @__setup_irqpoll_setup, !27, !"__setup_irqpoll_setup", i1 false, i1 false}
!27 = !{!"../kernel/irq/spurious.c", i32 478, i32 1}
!28 = !{ptr @irqfixup, !29, !"irqfixup", i1 false, i1 false}
!29 = !{!"../kernel/irq/spurious.c", i32 17, i32 12}
!30 = !{ptr @irq_poll_cpu, !31, !"irq_poll_cpu", i1 false, i1 false}
!31 = !{!"../kernel/irq/spurious.c", i32 22, i32 12}
!32 = !{ptr @noirqdebug, !33, !"noirqdebug", i1 false, i1 false}
!33 = !{!"../kernel/irq/spurious.c", i32 434, i32 6}
!34 = !{ptr @report_bad_irq.count, !35, !"count", i1 false, i1 false}
!35 = !{!"../kernel/irq/spurious.c", i32 227, i32 13}
!36 = !{ptr @irq_poll_active, !37, !"irq_poll_active", i1 false, i1 false}
!37 = !{!"../kernel/irq/spurious.c", i32 23, i32 17}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../kernel/irq/spurious.c", i32 199, i32 3}
!40 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__report_bad_irq._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @__report_bad_irq._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../kernel/irq/spurious.c", i32 202, i32 3}
!45 = !{ptr @__report_bad_irq._entry.8, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @__report_bad_irq._entry_ptr.10, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../kernel/irq/spurious.c", i32 206, i32 2}
!49 = !{ptr @__report_bad_irq._entry.11, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @__report_bad_irq._entry_ptr.13, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/irq/spurious.c", i32 216, i32 3}
!53 = !{ptr @__report_bad_irq._entry.14, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @__report_bad_irq._entry_ptr.16, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../kernel/irq/spurious.c", i32 218, i32 4}
!57 = !{ptr @__report_bad_irq._entry.17, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @__report_bad_irq._entry_ptr.19, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../kernel/irq/spurious.c", i32 220, i32 3}
!61 = !{ptr @__report_bad_irq._entry.20, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @__report_bad_irq._entry_ptr.22, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../kernel/irq/spurious.c", i32 21, i32 8}
!65 = !{ptr @poll_spurious_irq_timer, !64, !"poll_spurious_irq_timer", i1 false, i1 false}
!66 = !{ptr @__setup_str_noirqdebug_setup, !15, !"__setup_str_noirqdebug_setup", i1 false, i1 false}
!67 = !{ptr @__param_str_noirqdebug, !17, !"__param_str_noirqdebug", i1 false, i1 false}
!68 = !{ptr @__setup_str_irqfixup_setup, !22, !"__setup_str_irqfixup_setup", i1 false, i1 false}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../kernel/irq/spurious.c", i32 455, i32 2}
!71 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @irqfixup_setup._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @irqfixup_setup._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../kernel/irq/spurious.c", i32 456, i32 2}
!76 = !{ptr @irqfixup_setup._entry.26, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @irqfixup_setup._entry_ptr.28, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @__param_str_irqfixup, !24, !"__param_str_irqfixup", i1 false, i1 false}
!79 = !{ptr @__setup_str_irqpoll_setup, !27, !"__setup_str_irqpoll_setup", i1 false, i1 false}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../kernel/irq/spurious.c", i32 471, i32 2}
!82 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @irqpoll_setup._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @irqpoll_setup._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../kernel/irq/spurious.c", i32 473, i32 2}
!87 = !{ptr @irqpoll_setup._entry.31, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @irqpoll_setup._entry_ptr.33, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{!"sp"}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{i64 2153847373}
!101 = !{i64 2153847215}
!102 = !{!"branch_weights", i32 1, i32 2000}
!103 = !{i64 2153858288}
!104 = !{i64 2148310460}
!105 = !{i64 2148225769, i64 2148225801, i64 2148225830, i64 2148225864, i64 2148225895, i64 2148225918}
!106 = !{i64 2148310689}
!107 = !{i64 2148227514, i64 2148227540, i64 2148227569, i64 2148227603, i64 2148227634, i64 2148227657}
!108 = !{i64 2153848261}
!109 = !{i64 621059}
!110 = !{i64 618762}
!111 = !{i64 618572}
