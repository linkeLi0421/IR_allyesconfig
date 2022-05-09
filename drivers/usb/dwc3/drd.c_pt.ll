; ModuleID = '/llk/IR_all_yes/drivers/usb/dwc3/drd.c_pt.bc'
source_filename = "../drivers/usb/dwc3/drd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dwc3 = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dwc3_request, %struct.completion, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, [2 x %struct.resource], ptr, [32 x ptr], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, ptr, i8, ptr, i32, i32, i32, i32, ptr, %struct.notifier_block, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, %struct.dwc3_hwparams, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, [6 x i8], i16, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dwc3_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, i8, ptr, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dwc3_hwparams = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.usb_role_switch_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@dwc3_otg_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 385, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to initialize host\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dwc3_otg_update\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/usb/dwc3/drd.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwc3_otg_update._entry_ptr = internal global ptr @dwc3_otg_update._entry, section ".printk_index", align 4
@dwc3_otg_update._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 408, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize peripheral\0A\00", [63 x i8] zeroinitializer }, align 32
@dwc3_otg_update._entry_ptr.7 = internal global ptr @dwc3_otg_update._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb-role-switch\00", [16 x i8] zeroinitializer }, align 32
@dwc3_drd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 588, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"couldn't register cable notifier\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dwc3_drd_init\00", [18 x i8] zeroinitializer }, align 32
@dwc3_drd_init._entry_ptr = internal global ptr @dwc3_drd_init._entry, section ".printk_index", align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dwc3-otg\00", [23 x i8] zeroinitializer }, align 32
@dwc3_drd_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.2, i32 613, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to request irq #%d --> %d\0A\00", [62 x i8] zeroinitializer }, align 32
@dwc3_drd_init._entry_ptr.14 = internal global ptr @dwc3_drd_init._entry.12, section ".printk_index", align 4
@__tracepoint_dwc3_readl = external dso_local global %struct.tracepoint, align 4
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/dwc3/trace.h\00", [39 x i8] zeroinitializer }, align 32
@trace_dwc3_readl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_dwc3_writel = external dso_local global %struct.tracepoint, align 4
@trace_dwc3_writel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"extcon\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"linux,extcon-name\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"phys\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"otg\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dwc_usb3\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 385, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 408, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 579, i32 42 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 588, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 610, i32 22 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 612, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [28 x i8] c"../drivers/usb/dwc3/trace.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 41, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 108, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 448, i32 37 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 457, i32 39 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 472, i32 42 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 142, i32 52 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [26 x i8] c"../drivers/usb/dwc3/drd.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 149, i32 52 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @dwc3_drd_init._entry, ptr @dwc3_drd_init._entry.12, ptr @dwc3_drd_init._entry_ptr, ptr @dwc3_drd_init._entry_ptr.14, ptr @dwc3_otg_update._entry, ptr @dwc3_otg_update._entry.5, ptr @dwc3_otg_update._entry_ptr, ptr @dwc3_otg_update._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_otg_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_otg_update._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_drd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_drd_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc3_otg_init(ptr noundef %dwc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dwc3_set_prtcap(ptr noundef %dwc, i32 noundef 3) #7
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #7, !srcloc !56
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i = getelementptr i8, ptr %1, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 49664, i32 noundef %3) #7
  %and = and i32 %3, -65
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %add.ptr1.i7 = getelementptr i8, ptr %5, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7, i32 %6) #7, !srcloc !59
  %add.ptr2.i = getelementptr i8, ptr %5, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 49664, i32 noundef %and) #7
  tail call fastcc void @dwc3_otgregs_init(ptr noundef %dwc)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_set_prtcap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc3_otgregs_init(ptr nocapture noundef readonly %dwc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 2816
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #7, !srcloc !56
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i = getelementptr i8, ptr %1, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 52224, i32 noundef %3) #7
  %or = or i32 %3, 8
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr1.i33 = getelementptr i8, ptr %5, i32 2816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i33, i32 %6) #7, !srcloc !59
  %add.ptr2.i = getelementptr i8, ptr %5, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 52224, i32 noundef %or) #7
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr1.i35 = getelementptr i8, ptr %8, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i35) #7, !srcloc !56
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i36 = getelementptr i8, ptr %8, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i36, i32 noundef 49424, i32 noundef %10) #7
  %and = and i32 %10, -3
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %add.ptr1.i38 = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i38, i32 %13) #7, !srcloc !59
  %add.ptr2.i39 = getelementptr i8, ptr %12, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i39, i32 noundef 49424, i32 noundef %and) #7
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr1.i41 = getelementptr i8, ptr %15, i32 2816
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i41) #7, !srcloc !56
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i42 = getelementptr i8, ptr %15, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i42, i32 noundef 52224, i32 noundef %17) #7
  %and7 = and i32 %17, -4
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %and7) #7
  %add.ptr1.i44 = getelementptr i8, ptr %19, i32 2816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i44, i32 %20) #7, !srcloc !59
  %add.ptr2.i45 = getelementptr i8, ptr %19, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i45, i32 noundef 52224, i32 noundef %and7) #7
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %22, i32 2824
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #7, !srcloc !56
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i.i = getelementptr i8, ptr %22, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i, i32 noundef 52232, i32 noundef %24) #7
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %add.ptr1.i4.i = getelementptr i8, ptr %26, i32 2828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i4.i, i32 %23) #7, !srcloc !59
  %add.ptr2.i.i = getelementptr i8, ptr %26, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i, i32 noundef 52236, i32 noundef %24) #7
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr1.i.i47 = getelementptr i8, ptr %28, i32 2828
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i47) #7, !srcloc !56
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i.i48 = getelementptr i8, ptr %28, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i48, i32 noundef 52236, i32 noundef %30) #7
  %and.i = and i32 %30, -268373761
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %33 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %add.ptr1.i5.i = getelementptr i8, ptr %32, i32 2828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i5.i, i32 %33) #7, !srcloc !59
  %add.ptr2.i.i49 = getelementptr i8, ptr %32, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i49, i32 noundef 52236, i32 noundef %and.i) #7
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %add.ptr1.i.i51 = getelementptr i8, ptr %35, i32 2828
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i51) #7, !srcloc !56
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i.i52 = getelementptr i8, ptr %35, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i52, i32 noundef 52236, i32 noundef %37) #7
  %or.i = or i32 %37, 268373760
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %add.ptr1.i5.i53 = getelementptr i8, ptr %39, i32 2828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i5.i53, i32 %40) #7, !srcloc !59
  %add.ptr2.i.i54 = getelementptr i8, ptr %39, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i54, i32 noundef 52236, i32 noundef %or.i) #7
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  %add.ptr1.i56 = getelementptr i8, ptr %42, i32 2820
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i56) #7, !srcloc !56
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i57 = getelementptr i8, ptr %42, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i57, i32 noundef 52228, i32 noundef %44) #7
  %or11 = and i32 %44, -84
  %and12 = or i32 %or11, 64
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %47 = tail call i32 @llvm.bswap.i32(i32 %and12) #7
  %add.ptr1.i59 = getelementptr i8, ptr %46, i32 2820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i59, i32 %47) #7, !srcloc !59
  %add.ptr2.i60 = getelementptr i8, ptr %46, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i60, i32 noundef 52228, i32 noundef %and12) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc3_otg_exit(ptr nocapture noundef readonly %dwc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %1, i32 2828
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #7, !srcloc !56
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i.i = getelementptr i8, ptr %1, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i, i32 noundef 52236, i32 noundef %3) #7
  %and.i = and i32 %3, -268373761
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %add.ptr1.i5.i = getelementptr i8, ptr %5, i32 2828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i5.i, i32 %6) #7, !srcloc !59
  %add.ptr2.i.i = getelementptr i8, ptr %5, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i, i32 noundef 52236, i32 noundef %and.i) #7
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr1.i.i3 = getelementptr i8, ptr %8, i32 2824
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i3) #7, !srcloc !56
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i.i4 = getelementptr i8, ptr %8, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i4, i32 noundef 52232, i32 noundef %10) #7
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %add.ptr1.i4.i = getelementptr i8, ptr %12, i32 2828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i4.i, i32 %9) #7, !srcloc !59
  %add.ptr2.i.i5 = getelementptr i8, ptr %12, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i5, i32 noundef 52236, i32 noundef %10) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc3_otg_host_init(ptr nocapture noundef readonly %dwc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 2820
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #7, !srcloc !56
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i = getelementptr i8, ptr %1, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 52228, i32 noundef %3) #7
  %and = and i32 %3, -72
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %add.ptr1.i29 = getelementptr i8, ptr %5, i32 2820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i29, i32 %6) #7, !srcloc !59
  %add.ptr2.i = getelementptr i8, ptr %5, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 52228, i32 noundef %and) #7
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr1.i31 = getelementptr i8, ptr %8, i32 2816
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i31) #7, !srcloc !56
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i32 = getelementptr i8, ptr %8, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i32, i32 noundef 52224, i32 noundef %10) #7
  %and4 = and i32 %10, -33
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %and4) #7
  %add.ptr1.i34 = getelementptr i8, ptr %12, i32 2816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i34, i32 %13) #7, !srcloc !59
  %add.ptr2.i35 = getelementptr i8, ptr %12, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i35, i32 noundef 52224, i32 noundef %and4) #7
  %dis_u2_susphy_quirk = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %14 = ptrtoint ptr %dis_u2_susphy_quirk to i32
  call void @__asan_loadN_noabort(i32 %14, i32 6)
  %bf.load = load i48, ptr %dis_u2_susphy_quirk, align 4
  %15 = and i48 %bf.load, 524288
  %tobool.not = icmp eq i48 %15, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr1.i37 = getelementptr i8, ptr %17, i32 256
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i37) #7, !srcloc !56
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i38 = getelementptr i8, ptr %17, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i38, i32 noundef 49664, i32 noundef %19) #7
  %or = or i32 %19, 64
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr1.i40 = getelementptr i8, ptr %21, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i40, i32 %22) #7, !srcloc !59
  %add.ptr2.i41 = getelementptr i8, ptr %21, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i41, i32 noundef 49664, i32 noundef %or) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr1.i43 = getelementptr i8, ptr %24, i32 2820
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i43) #7, !srcloc !56
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i44 = getelementptr i8, ptr %24, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i44, i32 noundef 52228, i32 noundef %26) #7
  %or11 = or i32 %26, 32
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %or11) #7
  %add.ptr1.i46 = getelementptr i8, ptr %28, i32 2820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i46, i32 %29) #7, !srcloc !59
  %add.ptr2.i47 = getelementptr i8, ptr %28, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i47, i32 noundef 52228, i32 noundef %or11) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc3_otg_update(ptr noundef %dwc, i1 noundef zeroext %ignore_idstatus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dr_mode = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 32
  %0 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %current_dr_role = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 33
  %2 = ptrtoint ptr %current_dr_role to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_dr_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp1.not = icmp eq i32 %3, 3
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  br i1 %ignore_idstatus, label %if.end3.if.end8_crit_edge, label %if.then4

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %5, i32 2832
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #7, !srcloc !56
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i = getelementptr i8, ptr %5, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 52240, i32 noundef %7) #7
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool5.not, i32 1, i32 2
  %desired_otg_role = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 46
  %8 = ptrtoint ptr %desired_otg_role to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %desired_otg_role, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end3.if.end8_crit_edge
  %desired_otg_role9 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 46
  %9 = ptrtoint ptr %desired_otg_role9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %desired_otg_role9, align 4
  %current_otg_role = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 45
  %11 = ptrtoint ptr %current_otg_role to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %current_otg_role, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp10 = icmp eq i32 %10, %12
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %if.end12.do.body38_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb21
  ]

if.end12.do.body38_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body38

sw.bb:                                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dwc3_host_exit(ptr noundef %dwc) #7
  %lock = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 10
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %regs.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %15, i32 2820
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #7, !srcloc !56
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i.i = getelementptr i8, ptr %15, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i, i32 noundef 52228, i32 noundef %17) #7
  %and.i = and i32 %17, -34
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %add.ptr1.i5.i = getelementptr i8, ptr %19, i32 2820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i5.i, i32 %20) #7, !srcloc !59
  %add.ptr2.i.i = getelementptr i8, ptr %19, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i, i32 noundef 52228, i32 noundef %and.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #7
  br label %do.body38

sw.bb21:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dwc3_gadget_exit(ptr noundef %dwc) #7
  %lock29 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 10
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock29) #7
  tail call void @dwc3_event_buffers_cleanup(ptr noundef %dwc) #7
  %regs.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %21 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %22, i32 2828
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #7, !srcloc !56
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i.i.i = getelementptr i8, ptr %22, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i.i, i32 noundef 52236, i32 noundef %24) #7
  %and.i.i = and i32 %24, -3329
  %25 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #7
  %add.ptr1.i5.i.i = getelementptr i8, ptr %26, i32 2828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i5.i.i, i32 %27) #7, !srcloc !59
  %add.ptr2.i.i.i = getelementptr i8, ptr %26, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i.i, i32 noundef 52236, i32 noundef %and.i.i) #7
  %28 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i, align 4
  %add.ptr1.i.i181 = getelementptr i8, ptr %29, i32 2820
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i181) #7, !srcloc !56
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i.i182 = getelementptr i8, ptr %29, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i182, i32 noundef 52228, i32 noundef %31) #7
  %and.i183 = and i32 %31, -83
  %or.i = or i32 %and.i183, 64
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %34 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %add.ptr1.i7.i = getelementptr i8, ptr %33, i32 2820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i, i32 %34) #7, !srcloc !59
  %add.ptr2.i.i184 = getelementptr i8, ptr %33, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i184, i32 noundef 52228, i32 noundef %or.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock29, i32 noundef %call31) #7
  br label %do.body38

do.body38:                                        ; preds = %sw.bb21, %sw.bb, %if.end12.do.body38_crit_edge
  %lock44 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 10
  %call46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock44) #7
  %35 = ptrtoint ptr %desired_otg_role9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %desired_otg_role9, align 4
  %37 = ptrtoint ptr %current_otg_role to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %current_otg_role, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock44, i32 noundef %call46) #7
  %38 = ptrtoint ptr %desired_otg_role9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %desired_otg_role9, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %39, label %do.body38.cleanup_crit_edge [
    i32 1, label %do.body57
    i32 2, label %do.body90
  ]

do.body38.cleanup_crit_edge:                      ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body57:                                        ; preds = %do.body38
  %call65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock44) #7
  tail call fastcc void @dwc3_otgregs_init(ptr noundef %dwc)
  tail call void @dwc3_otg_host_init(ptr noundef %dwc)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock44, i32 noundef %call65) #7
  %call71 = tail call i32 @dwc3_host_init(ptr noundef %dwc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.else, label %do.end76

do.end76:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 12
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str) #10
  br label %cleanup

if.else:                                          ; preds = %do.body57
  %usb2_phy = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 23
  %43 = ptrtoint ptr %usb2_phy to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %usb2_phy, align 4
  %tobool77.not = icmp eq ptr %44, null
  br i1 %tobool77.not, label %if.else.if.end81_crit_edge, label %if.then78

if.else.if.end81_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then78:                                        ; preds = %if.else
  %otg = getelementptr inbounds %struct.usb_phy, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %otg, align 4
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %if.then78.if.end81_crit_edge, label %land.lhs.true.i

if.then78.if.end81_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

land.lhs.true.i:                                  ; preds = %if.then78
  %set_vbus.i = getelementptr inbounds %struct.usb_otg, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %set_vbus.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_vbus.i, align 4
  %tobool1.not.i = icmp eq ptr %48, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end81_crit_edge, label %if.then.i

land.lhs.true.i.if.end81_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %48(ptr noundef nonnull %46, i1 noundef zeroext true) #7
  br label %if.end81

if.end81:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end81_crit_edge, %if.then78.if.end81_crit_edge, %if.else.if.end81_crit_edge
  %usb2_generic_phy = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 25
  %49 = ptrtoint ptr %usb2_generic_phy to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %usb2_generic_phy, align 4
  %tobool82.not = icmp eq ptr %50, null
  br i1 %tobool82.not, label %if.end81.cleanup_crit_edge, label %if.then83

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  %call85 = tail call i32 @phy_set_mode_ext(ptr noundef nonnull %50, i32 noundef 1, i32 noundef 0) #7
  br label %cleanup

do.body90:                                        ; preds = %do.body38
  %call98 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock44) #7
  tail call fastcc void @dwc3_otgregs_init(ptr noundef %dwc)
  %regs.i185 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %51 = ptrtoint ptr %regs.i185 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i185, align 4
  %add.ptr1.i.i186 = getelementptr i8, ptr %52, i32 2816
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i186) #7, !srcloc !56
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i.i187 = getelementptr i8, ptr %52, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i187, i32 noundef 52224, i32 noundef %54) #7
  %or.i188 = or i32 %54, 8
  %55 = ptrtoint ptr %regs.i185 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i185, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %57 = tail call i32 @llvm.bswap.i32(i32 %or.i188) #7
  %add.ptr1.i24.i = getelementptr i8, ptr %56, i32 2816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i24.i, i32 %57) #7, !srcloc !59
  %add.ptr2.i.i189 = getelementptr i8, ptr %56, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i189, i32 noundef 52224, i32 noundef %or.i188) #7
  %58 = ptrtoint ptr %regs.i185 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i185, align 4
  %add.ptr1.i26.i = getelementptr i8, ptr %59, i32 2820
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i26.i) #7, !srcloc !56
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i27.i = getelementptr i8, ptr %59, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i27.i, i32 noundef 52228, i32 noundef %61) #7
  %or4.i = and i32 %61, -88
  %and.i190 = or i32 %or4.i, 64
  %62 = ptrtoint ptr %regs.i185 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i185, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %64 = tail call i32 @llvm.bswap.i32(i32 %and.i190) #7
  %add.ptr1.i29.i = getelementptr i8, ptr %63, i32 2820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i29.i, i32 %64) #7, !srcloc !59
  %add.ptr2.i30.i = getelementptr i8, ptr %63, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i30.i, i32 noundef 52228, i32 noundef %and.i190) #7
  %65 = ptrtoint ptr %regs.i185 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i185, align 4
  %add.ptr1.i.i.i191 = getelementptr i8, ptr %66, i32 2828
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i191) #7, !srcloc !56
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i.i.i192 = getelementptr i8, ptr %66, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i.i192, i32 noundef 52236, i32 noundef %68) #7
  %or.i.i = or i32 %68, 512
  %69 = ptrtoint ptr %regs.i185 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i185, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %71 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %add.ptr1.i5.i.i193 = getelementptr i8, ptr %70, i32 2828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i5.i.i193, i32 %71) #7, !srcloc !59
  %add.ptr2.i.i.i194 = getelementptr i8, ptr %70, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i.i194, i32 noundef 52236, i32 noundef %or.i.i) #7
  %dis_u2_susphy_quirk.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %72 = ptrtoint ptr %dis_u2_susphy_quirk.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 6)
  %bf.load.i = load i48, ptr %dis_u2_susphy_quirk.i, align 4
  %73 = and i48 %bf.load.i, 524288
  %tobool.not.i195 = icmp eq i48 %73, 0
  br i1 %tobool.not.i195, label %if.then.i196, label %do.body90.dwc3_otg_device_init.exit_crit_edge

do.body90.dwc3_otg_device_init.exit_crit_edge:    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc3_otg_device_init.exit

if.then.i196:                                     ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %regs.i185 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i185, align 4
  %add.ptr1.i32.i = getelementptr i8, ptr %75, i32 256
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i32.i) #7, !srcloc !56
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i33.i = getelementptr i8, ptr %75, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i33.i, i32 noundef 49664, i32 noundef %77) #7
  %or8.i = or i32 %77, 64
  %78 = ptrtoint ptr %regs.i185 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i185, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %80 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #7
  %add.ptr1.i35.i = getelementptr i8, ptr %79, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i35.i, i32 %80) #7, !srcloc !59
  %add.ptr2.i36.i = getelementptr i8, ptr %79, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i36.i, i32 noundef 49664, i32 noundef %or8.i) #7
  br label %dwc3_otg_device_init.exit

dwc3_otg_device_init.exit:                        ; preds = %if.then.i196, %do.body90.dwc3_otg_device_init.exit_crit_edge
  %call103 = tail call i32 @dwc3_event_buffers_setup(ptr noundef %dwc) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock44, i32 noundef %call98) #7
  %usb2_phy105 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 23
  %81 = ptrtoint ptr %usb2_phy105 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %usb2_phy105, align 4
  %tobool106.not = icmp eq ptr %82, null
  br i1 %tobool106.not, label %dwc3_otg_device_init.exit.if.end111_crit_edge, label %if.then107

dwc3_otg_device_init.exit.if.end111_crit_edge:    ; preds = %dwc3_otg_device_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then107:                                       ; preds = %dwc3_otg_device_init.exit
  %otg109 = getelementptr inbounds %struct.usb_phy, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %otg109 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %otg109, align 4
  %tobool.not.i197 = icmp eq ptr %84, null
  br i1 %tobool.not.i197, label %if.then107.if.end111_crit_edge, label %land.lhs.true.i200

if.then107.if.end111_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

land.lhs.true.i200:                               ; preds = %if.then107
  %set_vbus.i198 = getelementptr inbounds %struct.usb_otg, ptr %84, i32 0, i32 8
  %85 = ptrtoint ptr %set_vbus.i198 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %set_vbus.i198, align 4
  %tobool1.not.i199 = icmp eq ptr %86, null
  br i1 %tobool1.not.i199, label %land.lhs.true.i200.if.end111_crit_edge, label %if.then.i202

land.lhs.true.i200.if.end111_crit_edge:           ; preds = %land.lhs.true.i200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then.i202:                                     ; preds = %land.lhs.true.i200
  call void @__sanitizer_cov_trace_pc() #9
  %call.i201 = tail call i32 %86(ptr noundef nonnull %84, i1 noundef zeroext false) #7
  br label %if.end111

if.end111:                                        ; preds = %if.then.i202, %land.lhs.true.i200.if.end111_crit_edge, %if.then107.if.end111_crit_edge, %dwc3_otg_device_init.exit.if.end111_crit_edge
  %usb2_generic_phy112 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 25
  %87 = ptrtoint ptr %usb2_generic_phy112 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %usb2_generic_phy112, align 4
  %tobool113.not = icmp eq ptr %88, null
  br i1 %tobool113.not, label %if.end111.if.end117_crit_edge, label %if.then114

if.end111.if.end117_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.then114:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  %call116 = tail call i32 @phy_set_mode_ext(ptr noundef nonnull %88, i32 noundef 6, i32 noundef 0) #7
  br label %if.end117

if.end117:                                        ; preds = %if.then114, %if.end111.if.end117_crit_edge
  %call118 = tail call i32 @dwc3_gadget_init(ptr noundef %dwc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end117.cleanup_crit_edge, label %do.end123

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end123:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  %dev124 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 12
  %89 = ptrtoint ptr %dev124 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev124, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.6) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end123, %if.end117.cleanup_crit_edge, %if.then83, %if.end81.cleanup_crit_edge, %do.end76, %do.body38.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_host_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_gadget_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_event_buffers_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_host_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_event_buffers_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_gadget_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc3_drd_init(ptr noundef %dwc) local_unnamed_addr #0 align 64 {
entry:
  %dwc3_role_switch.i = alloca %struct.usb_role_switch_desc, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %name.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 12
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name.i) #7
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %name.i, align 4, !annotation !60
  %call.i.i = tail call zeroext i1 @device_property_present(ptr noundef %1, ptr noundef nonnull @.str.18) #7
  br i1 %call.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call ptr @extcon_get_edev_by_phandle(ptr noundef %1, i32 noundef 0) #7
  br label %dwc3_get_extcon.exit

if.end.i:                                         ; preds = %entry
  %call3.i = call i32 @device_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull %name.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp eq i32 %call3.i, 0
  br i1 %cmp.i, label %if.then4.i, label %if.end9.i

if.then4.i:                                       ; preds = %if.end.i
  %3 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name.i, align 4
  %call5.i = call ptr @extcon_get_extcon_dev(ptr noundef %4) #7
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %dwc3_get_extcon.exit.thread, label %if.then4.i.dwc3_get_extcon.exit_crit_edge

if.then4.i.dwc3_get_extcon.exit_crit_edge:        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc3_get_extcon.exit

if.end9.i:                                        ; preds = %if.end.i
  %of_node.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %5 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %7 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i31.i = call i32 @__of_parse_phandle_with_args(ptr noundef %6, ptr noundef nonnull @.str.20, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %tobool.not.i.i = icmp eq i32 %call.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end9.i.of_parse_phandle.exit.i_crit_edge

if.end9.i.of_parse_phandle.exit.i_crit_edge:      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_parse_phandle.exit.i

if.end.i.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args.i.i, align 4
  br label %of_parse_phandle.exit.i

of_parse_phandle.exit.i:                          ; preds = %if.end.i.i, %if.end9.i.of_parse_phandle.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ null, %if.end9.i.of_parse_phandle.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  %call11.i = call zeroext i1 @of_graph_is_present(ptr noundef %retval.0.i.i) #7
  br i1 %call11.i, label %if.then12.i, label %of_parse_phandle.exit.i.if.end18.i_crit_edge

of_parse_phandle.exit.i.if.end18.i_crit_edge:     ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then12.i:                                      ; preds = %of_parse_phandle.exit.i
  %call13.i = call ptr @of_graph_get_remote_node(ptr noundef %retval.0.i.i, i32 noundef -1, i32 noundef -1) #7
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %if.then12.i.if.end17.i_crit_edge, label %if.then15.i

if.then12.i.if.end17.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  %call16.i = call ptr @extcon_find_edev_by_node(ptr noundef nonnull %call13.i) #7
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.then12.i.if.end17.i_crit_edge
  %edev.0.i = phi ptr [ %call16.i, %if.then15.i ], [ null, %if.then12.i.if.end17.i_crit_edge ]
  call void @of_node_put(ptr noundef %call13.i) #7
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end17.i, %of_parse_phandle.exit.i.if.end18.i_crit_edge
  %edev.1.i = phi ptr [ %edev.0.i, %if.end17.i ], [ null, %of_parse_phandle.exit.i.if.end18.i_crit_edge ]
  call void @of_node_put(ptr noundef %retval.0.i.i) #7
  br label %dwc3_get_extcon.exit

dwc3_get_extcon.exit.thread:                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #7
  %edev92 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 35
  %10 = ptrtoint ptr %edev92 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -517 to ptr), ptr %edev92, align 4
  br label %if.then

dwc3_get_extcon.exit:                             ; preds = %if.end18.i, %if.then4.i.dwc3_get_extcon.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %call2.i, %if.then.i ], [ %edev.1.i, %if.end18.i ], [ %call5.i, %if.then4.i.dwc3_get_extcon.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #7
  %edev = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 35
  %11 = ptrtoint ptr %edev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %retval.0.i, ptr %edev, align 4
  %cmp.i67 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %dwc3_get_extcon.exit.if.then_crit_edge, label %if.end

dwc3_get_extcon.exit.if.then_crit_edge:           ; preds = %dwc3_get_extcon.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %dwc3_get_extcon.exit.if.then_crit_edge, %dwc3_get_extcon.exit.thread
  %retval.0.i94 = phi ptr [ inttoptr (i32 -517 to ptr), %dwc3_get_extcon.exit.thread ], [ %retval.0.i, %dwc3_get_extcon.exit.if.then_crit_edge ]
  %12 = ptrtoint ptr %retval.0.i94 to i32
  br label %cleanup

if.end:                                           ; preds = %dwc3_get_extcon.exit
  %13 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1.i, align 4
  %call.i = call zeroext i1 @device_property_present(ptr noundef %14, ptr noundef nonnull @.str.8) #7
  br i1 %call.i, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %dwc3_role_switch.i) #7
  %15 = getelementptr inbounds i8, ptr %dwc3_role_switch.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 32)
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i, align 4
  %call.i68 = call i32 @usb_get_role_switch_default_mode(ptr noundef %18) #7
  %role_switch_default_mode.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 39
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i68)
  %cmp.i69 = icmp eq i32 %call.i68, 1
  %spec.store.select.i = select i1 %cmp.i69, i32 1, i32 2
  %19 = ptrtoint ptr %role_switch_default_mode.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.store.select.i, ptr %role_switch_default_mode.i, align 4
  %20 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1.i, align 4
  %call4.i = call ptr @dev_fwnode(ptr noundef %21) #7
  %22 = ptrtoint ptr %dwc3_role_switch.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call4.i, ptr %dwc3_role_switch.i, align 4
  %set.i = getelementptr inbounds %struct.usb_role_switch_desc, ptr %dwc3_role_switch.i, i32 0, i32 4
  %23 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @dwc3_usb_role_switch_set, ptr %set.i, align 4
  %get.i = getelementptr inbounds %struct.usb_role_switch_desc, ptr %dwc3_role_switch.i, i32 0, i32 5
  %24 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @dwc3_usb_role_switch_get, ptr %get.i, align 4
  %driver_data.i = getelementptr inbounds %struct.usb_role_switch_desc, ptr %dwc3_role_switch.i, i32 0, i32 7
  %25 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dwc, ptr %driver_data.i, align 4
  %26 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1.i, align 4
  %call6.i = call ptr @usb_role_switch_register(ptr noundef %27, ptr noundef nonnull %dwc3_role_switch.i) #7
  %role_sw.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 38
  %28 = ptrtoint ptr %role_sw.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call6.i, ptr %role_sw.i, align 4
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %dwc3_setup_role_switch.exit, label %dwc3_setup_role_switch.exit.thread

dwc3_setup_role_switch.exit.thread:               ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  call void @dwc3_set_mode(ptr noundef %dwc, i32 noundef %spec.store.select.i) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %dwc3_role_switch.i) #7
  br label %if.end35

dwc3_setup_role_switch.exit:                      ; preds = %if.then6
  %29 = ptrtoint ptr %call6.i to i32
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %dwc3_role_switch.i) #7
  %cmp = icmp slt ptr %call6.i, null
  br i1 %cmp, label %dwc3_setup_role_switch.exit.cleanup_crit_edge, label %dwc3_setup_role_switch.exit.if.end35_crit_edge

dwc3_setup_role_switch.exit.if.end35_crit_edge:   ; preds = %dwc3_setup_role_switch.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

dwc3_setup_role_switch.exit.cleanup_crit_edge:    ; preds = %dwc3_setup_role_switch.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  %30 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %edev, align 4
  %tobool.not = icmp eq ptr %31, null
  br i1 %tobool.not, label %if.else19, label %if.then11

if.then11:                                        ; preds = %if.else
  %edev_nb = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 36
  %32 = ptrtoint ptr %edev_nb to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @dwc3_drd_notifier, ptr %edev_nb, align 4
  %call14 = call i32 @extcon_register_notifier(ptr noundef nonnull %31, i32 noundef 2, ptr noundef %edev_nb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end, label %if.end18

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end18:                                         ; preds = %if.then11
  %35 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %edev, align 4
  %tobool.not.i71 = icmp eq ptr %36, null
  br i1 %tobool.not.i71, label %if.end18.if.end35_crit_edge, label %if.then.i73

if.end18.if.end35_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then.i73:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %call.i72 = call i32 @extcon_get_state(ptr noundef nonnull %36, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i72)
  %tobool3.not.i = icmp slt i32 %call.i72, 1
  %cond.i = select i1 %tobool3.not.i, i32 2, i32 1
  call void @dwc3_set_mode(ptr noundef %dwc, i32 noundef %cond.i) #7
  br label %if.end35

if.else19:                                        ; preds = %if.else
  call void @dwc3_set_prtcap(ptr noundef %dwc, i32 noundef 3) #7
  %37 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 -16
  %call.i75 = call i32 @platform_get_irq_byname_optional(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %cmp.i76 = icmp sgt i32 %call.i75, 0
  br i1 %cmp.i76, label %if.else19.if.end23_crit_edge, label %if.end.i77

if.else19.if.end23_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end.i77:                                       ; preds = %if.else19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call.i75)
  %cmp1.i = icmp eq i32 %call.i75, -517
  br i1 %cmp1.i, label %if.end.i77.cleanup_crit_edge, label %if.end3.i

if.end.i77.cleanup_crit_edge:                     ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i77
  %call4.i78 = call i32 @platform_get_irq_byname_optional(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i78)
  %cmp5.i = icmp sgt i32 %call4.i78, 0
  br i1 %cmp5.i, label %if.end3.i.if.end23_crit_edge, label %if.end7.i

if.end3.i.if.end23_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end7.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call4.i78)
  %cmp8.i = icmp eq i32 %call4.i78, -517
  br i1 %cmp8.i, label %if.end7.i.cleanup_crit_edge, label %if.end10.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10.i:                                       ; preds = %if.end7.i
  %call11.i79 = call i32 @platform_get_irq(ptr noundef %add.ptr.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i79)
  %cmp12.i = icmp sgt i32 %call11.i79, 0
  br i1 %cmp12.i, label %if.end10.i.if.end23_crit_edge, label %if.end14.i

if.end10.i.if.end23_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end14.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i79)
  %tobool.not.i80 = icmp eq i32 %call11.i79, 0
  %spec.select = select i1 %tobool.not.i80, i32 -22, i32 %call11.i79
  br label %cleanup

if.end23:                                         ; preds = %if.end10.i.if.end23_crit_edge, %if.end3.i.if.end23_crit_edge, %if.else19.if.end23_crit_edge
  %irq.0.i = phi i32 [ %call.i75, %if.else19.if.end23_crit_edge ], [ %call4.i78, %if.end3.i.if.end23_crit_edge ], [ %call11.i79, %if.end10.i.if.end23_crit_edge ]
  %otg_irq = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 44
  %39 = ptrtoint ptr %otg_irq to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %irq.0.i, ptr %otg_irq, align 4
  %regs.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %41, i32 2828
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #7, !srcloc !56
  %43 = call i32 @llvm.bswap.i32(i32 %42) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i.i = getelementptr i8, ptr %41, i32 -49408
  call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i, i32 noundef 52236, i32 noundef %43) #7
  %and.i = and i32 %43, -268373761
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  call void @arm_heavy_mb() #7
  %46 = call i32 @llvm.bswap.i32(i32 %and.i) #7
  %add.ptr1.i5.i = getelementptr i8, ptr %45, i32 2828
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i5.i, i32 %46) #7, !srcloc !59
  %add.ptr2.i.i = getelementptr i8, ptr %45, i32 -49408
  call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i, i32 noundef 52236, i32 noundef %and.i) #7
  %47 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i, align 4
  %add.ptr1.i.i83 = getelementptr i8, ptr %48, i32 2824
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i83) #7, !srcloc !56
  %50 = call i32 @llvm.bswap.i32(i32 %49) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i.i84 = getelementptr i8, ptr %48, i32 -49408
  call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i84, i32 noundef 52232, i32 noundef %50) #7
  %51 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  call void @arm_heavy_mb() #7
  %add.ptr1.i4.i = getelementptr i8, ptr %52, i32 2828
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i4.i, i32 %49) #7, !srcloc !59
  %add.ptr2.i.i85 = getelementptr i8, ptr %52, i32 -49408
  call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i85, i32 noundef 52236, i32 noundef %50) #7
  %53 = ptrtoint ptr %otg_irq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %otg_irq, align 4
  %call25 = call i32 @request_threaded_irq(i32 noundef %54, ptr noundef nonnull @dwc3_otg_irq, ptr noundef nonnull @dwc3_otg_thread_irq, i32 noundef 128, ptr noundef nonnull @.str.11, ptr noundef %dwc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end33, label %do.end30

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev1.i, align 4
  %57 = ptrtoint ptr %otg_irq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %otg_irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.13, i32 noundef %58, i32 noundef %call25) #10
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void @dwc3_set_prtcap(ptr noundef %dwc, i32 noundef 3) #7
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 4
  %add.ptr1.i.i87 = getelementptr i8, ptr %60, i32 256
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i87) #7, !srcloc !56
  %62 = call i32 @llvm.bswap.i32(i32 %61) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i.i88 = getelementptr i8, ptr %60, i32 -49408
  call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i88, i32 noundef 49664, i32 noundef %62) #7
  %and.i89 = and i32 %62, -65
  %63 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  call void @arm_heavy_mb() #7
  %65 = call i32 @llvm.bswap.i32(i32 %and.i89) #7
  %add.ptr1.i7.i = getelementptr i8, ptr %64, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i, i32 %65) #7, !srcloc !59
  %add.ptr2.i.i90 = getelementptr i8, ptr %64, i32 -49408
  call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i90, i32 noundef 49664, i32 noundef %and.i89) #7
  call fastcc void @dwc3_otgregs_init(ptr noundef %dwc) #7
  call void @dwc3_set_mode(ptr noundef %dwc, i32 noundef 3) #7
  br label %if.end35

if.end35:                                         ; preds = %if.end33, %if.then.i73, %if.end18.if.end35_crit_edge, %dwc3_setup_role_switch.exit.if.end35_crit_edge, %dwc3_setup_role_switch.exit.thread
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end30, %if.end14.i, %if.end7.i.cleanup_crit_edge, %if.end.i77.cleanup_crit_edge, %do.end, %dwc3_setup_role_switch.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %12, %if.then ], [ 0, %if.end35 ], [ %call14, %do.end ], [ -19, %do.end30 ], [ %29, %dwc3_setup_role_switch.exit.cleanup_crit_edge ], [ -517, %if.end7.i.cleanup_crit_edge ], [ -517, %if.end.i77.cleanup_crit_edge ], [ %spec.select, %if.end14.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_drd_notifier(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -656
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %tobool.not = icmp eq i32 %event, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  tail call void @dwc3_set_mode(ptr noundef %add.ptr, i32 noundef %cond) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_register_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_otg_irq(i32 noundef %irq, ptr nocapture noundef %_dwc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dwc3, ptr %_dwc, i32 0, i32 30
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 2824
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #7, !srcloc !56
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i = getelementptr i8, ptr %1, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 52232, i32 noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %and = and i32 %3, 268373760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %add.ptr1.i21 = getelementptr i8, ptr %5, i32 2824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i21, i32 %2) #7, !srcloc !59
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.then
  %current_otg_role = getelementptr inbounds %struct.dwc3, ptr %_dwc, i32 0, i32 45
  %6 = ptrtoint ptr %current_otg_role to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %current_otg_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool5.not = icmp sgt i32 %3, -1
  %or.cond = select i1 %cmp, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %otg_restart_host = getelementptr inbounds %struct.dwc3, ptr %_dwc, i32 0, i32 47
  %8 = ptrtoint ptr %otg_restart_host to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %otg_restart_host, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %add.ptr1.i23 = getelementptr i8, ptr %10, i32 2824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i23, i32 %2) #7, !srcloc !59
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end7, %if.then2
  %.sink = phi ptr [ %10, %if.end7 ], [ %5, %if.then2 ]
  %retval.0.ph = phi i32 [ 2, %if.end7 ], [ 0, %if.then2 ]
  %add.ptr2.i24 = getelementptr i8, ptr %.sink, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i24, i32 noundef 52232, i32 noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_otg_thread_irq(i32 noundef %irq, ptr noundef %_dwc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.dwc3, ptr %_dwc, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %otg_restart_host = getelementptr inbounds %struct.dwc3, ptr %_dwc, i32 0, i32 47
  %0 = ptrtoint ptr %otg_restart_host to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %otg_restart_host, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dwc3_otg_host_init(ptr noundef %_dwc)
  %2 = ptrtoint ptr %otg_restart_host to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %otg_restart_host, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  tail call void @dwc3_set_mode(ptr noundef %_dwc, i32 noundef 3) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc3_drd_exit(ptr noundef %dwc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %role_sw = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 38
  %0 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %role_sw, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_role_switch_unregister(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %edev = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 35
  %2 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edev, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %edev_nb = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 36
  %call = tail call i32 @extcon_unregister_notifier(ptr noundef nonnull %3, i32 noundef 2, ptr noundef %edev_nb) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %call6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %dwc) #7
  %current_dr_role = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 33
  %4 = ptrtoint ptr %current_dr_role to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_dr_role, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %5, label %if.end5.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 3, label %sw.bb8
  ]

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dwc3_host_exit(ptr noundef %dwc) #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dwc3_gadget_exit(ptr noundef %dwc) #7
  tail call void @dwc3_event_buffers_cleanup(ptr noundef %dwc) #7
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %regs.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %8, i32 2828
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #7, !srcloc !56
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i.i.i = getelementptr i8, ptr %8, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i.i, i32 noundef 52236, i32 noundef %10) #7
  %and.i.i = and i32 %10, -268373761
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #7
  %add.ptr1.i5.i.i = getelementptr i8, ptr %12, i32 2828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i5.i.i, i32 %13) #7, !srcloc !59
  %add.ptr2.i.i.i = getelementptr i8, ptr %12, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i.i, i32 noundef 52236, i32 noundef %and.i.i) #7
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr1.i.i3.i = getelementptr i8, ptr %15, i32 2824
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i3.i) #7, !srcloc !56
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add.ptr3.i.i4.i = getelementptr i8, ptr %15, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i4.i, i32 noundef 52232, i32 noundef %17) #7
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %add.ptr1.i4.i.i = getelementptr i8, ptr %19, i32 2828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i4.i.i, i32 %16) #7, !srcloc !59
  %add.ptr2.i.i5.i = getelementptr i8, ptr %19, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i5.i, i32 noundef 52236, i32 noundef %17) #7
  %lock = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 10
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %desired_otg_role = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 46
  %20 = ptrtoint ptr %desired_otg_role to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %desired_otg_role, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #7
  tail call void @dwc3_otg_update(ptr noundef %dwc, i1 noundef zeroext true)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb, %if.end5.sw.epilog_crit_edge
  %otg_irq = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 44
  %21 = ptrtoint ptr %otg_irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %otg_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool15.not = icmp eq i32 %22, 0
  br i1 %tobool15.not, label %sw.epilog.if.end19_crit_edge, label %if.then16

sw.epilog.if.end19_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then16:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call ptr @free_irq(i32 noundef %22, ptr noundef %dwc) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %sw.epilog.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_unregister_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dwc3_readl(ptr noundef %base, i32 noundef %offset, i32 noundef %value) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), ptr blockaddress(@trace_dwc3_readl, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !62

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !63

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !64
  %call42 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %base, i32 noundef %offset, i32 noundef %value) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !65
  %13 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !63

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dwc3_readl.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_dwc3_readl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 44, ptr noundef nonnull @.str.16) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !67
  %31 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dwc3_writel(ptr noundef %base, i32 noundef %offset, i32 noundef %value) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), ptr blockaddress(@trace_dwc3_writel, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !62

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !63

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !68
  %call42 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %base, i32 noundef %offset, i32 noundef %value) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !69
  %13 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !63

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dwc3_writel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_dwc3_writel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 49, ptr noundef nonnull @.str.16) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !67
  %31 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_edev_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_extcon_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_graph_is_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_find_edev_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_role_switch_default_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_usb_role_switch_set(ptr noundef %sw, i32 noundef %role) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %sw) #7
  %0 = zext i32 %role to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %role, label %sw.default [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %role_switch_default_mode = getelementptr inbounds %struct.dwc3, ptr %call, i32 0, i32 39
  %1 = ptrtoint ptr %role_switch_default_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %role_switch_default_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  %. = select i1 %cmp, i32 1, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %entry.sw.epilog_crit_edge
  %mode.0 = phi i32 [ 2, %sw.bb1 ], [ %role, %entry.sw.epilog_crit_edge ], [ %., %sw.default ]
  tail call void @dwc3_set_mode(ptr noundef %call, i32 noundef %mode.0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_usb_role_switch_get(ptr noundef %sw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %sw) #7
  %lock = getelementptr inbounds %struct.dwc3, ptr %call, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %current_dr_role = getelementptr inbounds %struct.dwc3, ptr %call, i32 0, i32 33
  %0 = ptrtoint ptr %current_dr_role to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_dr_role, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %1, label %sw.default [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb6
    i32 3, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %current_otg_role = getelementptr inbounds %struct.dwc3, ptr %call, i32 0, i32 45
  %3 = ptrtoint ptr %current_otg_role to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %current_otg_role, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %role_switch_default_mode = getelementptr inbounds %struct.dwc3, ptr %call, i32 0, i32 39
  %5 = ptrtoint ptr %role_switch_default_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %role_switch_default_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp8 = icmp eq i32 %6, 1
  %. = select i1 %cmp8, i32 1, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb6, %entry.sw.epilog_crit_edge
  %role.0 = phi i32 [ %4, %sw.bb7 ], [ 2, %sw.bb6 ], [ %1, %entry.sw.epilog_crit_edge ], [ %., %sw.default ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret i32 %role.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !19, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !35, !36, !38, !40, !42, !44}
!llvm.named.register.sp = !{!46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/dwc3/drd.c", i32 385, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dwc3_otg_update._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @dwc3_otg_update._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/dwc3/drd.c", i32 408, i32 4}
!10 = !{ptr @dwc3_otg_update._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @dwc3_otg_update._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/dwc3/drd.c", i32 579, i32 42}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/dwc3/drd.c", i32 588, i32 4}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @dwc3_drd_init._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @dwc3_drd_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/dwc3/drd.c", i32 610, i32 22}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/dwc3/drd.c", i32 612, i32 4}
!23 = !{ptr @dwc3_drd_init._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @dwc3_drd_init._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/usb/dwc3/trace.h", i32 41, i32 1}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!29 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/usb/dwc3/trace.h", i32 46, i32 1}
!35 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/dwc3/drd.c", i32 448, i32 37}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/dwc3/drd.c", i32 457, i32 39}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/dwc3/drd.c", i32 472, i32 42}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/dwc3/drd.c", i32 142, i32 52}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/dwc3/drd.c", i32 149, i32 52}
!46 = !{!"sp"}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 6352378}
!57 = !{i64 2155796886}
!58 = !{i64 2155797290}
!59 = !{i64 6351960}
!60 = !{!"auto-init"}
!61 = !{i8 0, i8 2}
!62 = !{i64 2148302550, i64 2148302555, i64 2148302568, i64 2148302612, i64 2148302646, i64 2148302667}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i64 2155535725}
!65 = !{i64 2155535946}
!66 = !{i64 2149325230}
!67 = !{i64 2149326266}
!68 = !{i64 2155551899}
!69 = !{i64 2155552122}
