; ModuleID = '/llk/IR_all_yes/drivers/usb/dwc3/ep0.c_pt.bc'
source_filename = "../drivers/usb/dwc3/ep0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dwc3_ep = type { %struct.usb_ep, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, i8, i8, i32, i32, [20 x i8], i8, i8, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.dwc3 = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dwc3_request, %struct.completion, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, [2 x %struct.resource], ptr, [32 x ptr], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, ptr, i8, ptr, i32, i32, i32, i32, ptr, %struct.notifier_block, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, %struct.dwc3_hwparams, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, [6 x i8], i16, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.dwc3_gadget_ep_cmd_params = type { i32, i32, i32 }
%struct.dwc3_trb = type { i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@dwc3_gadget_ep0_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 202, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: can't queue to disabled endpoint\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dwc3_gadget_ep0_queue\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/usb/dwc3/ep0.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwc3_gadget_ep0_queue._entry_ptr = internal global ptr @dwc3_gadget_ep0_queue._entry, section ".printk_index", align 4
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s %s: Unexpected pending request\0A\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_dwc3_prepare_trb = external dso_local global %struct.tracepoint, align 4
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/dwc3/trace.h\00", [39 x i8] zeroinitializer }, align 32
@trace_dwc3_prepare_trb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"UNKNOWN ep0state %d\0A\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_dwc3_ctrl_req = external dso_local global %struct.tracepoint, align 4
@trace_dwc3_ctrl_req.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dwc3_readl = external dso_local global %struct.tracepoint, align 4
@trace_dwc3_readl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dwc3_writel = external dso_local global %struct.tracepoint, align 4
@trace_dwc3_writel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dwc3_ep0_set_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 576, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid device address %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dwc3_ep0_set_address\00", [43 x i8] zeroinitializer }, align 32
@dwc3_ep0_set_address._entry_ptr = internal global ptr @dwc3_ep0_set_address._entry, section ".printk_index", align 4
@dwc3_ep0_set_address._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 581, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"can't SetAddress() from Configured State\0A\00", [54 x i8] zeroinitializer }, align 32
@dwc3_ep0_set_address._entry_ptr.14 = internal global ptr @dwc3_ep0_set_address._entry.12, section ".printk_index", align 4
@dwc3_ep0_set_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 722, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Set SEL should be 6 bytes, got %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dwc3_ep0_set_sel\00", [47 x i8] zeroinitializer }, align 32
@dwc3_ep0_set_sel._entry_ptr = internal global ptr @dwc3_ep0_set_sel._entry, section ".printk_index", align 4
@__tracepoint_dwc3_complete_trb = external dso_local global %struct.tracepoint, align 4
@trace_dwc3_complete_trb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dwc3_ep0_complete_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 914, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid test #%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dwc3_ep0_complete_status\00", [39 x i8] zeroinitializer }, align 32
@dwc3_ep0_complete_status._entry_ptr = internal global ptr @dwc3_ep0_complete_status._entry, section ".printk_index", align 4
@dwc3_ep0_xfernotready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 1111, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unexpected direction for Data Phase\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dwc3_ep0_xfernotready\00", [42 x i8] zeroinitializer }, align 32
@dwc3_ep0_xfernotready._entry_ptr = internal global ptr @dwc3_ep0_xfernotready._entry, section ".printk_index", align 4
@dwc3_ep0_xfernotready.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dwc3_ep0_end_control_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 3, i64 5, i64 9, i64 48, i64 49]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32767]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 48, i64 49, i64 50]
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 201, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 113, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [28 x i8] c"../drivers/usb/dwc3/trace.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 280, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 108, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 950, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 576, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 581, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 721, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 913, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [26 x i8] c"../drivers/usb/dwc3/ep0.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1111, i32 4 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @dwc3_ep0_complete_status._entry, ptr @dwc3_ep0_complete_status._entry_ptr, ptr @dwc3_ep0_set_address._entry, ptr @dwc3_ep0_set_address._entry.12, ptr @dwc3_ep0_set_address._entry_ptr, ptr @dwc3_ep0_set_address._entry_ptr.14, ptr @dwc3_ep0_set_sel._entry, ptr @dwc3_ep0_set_sel._entry_ptr, ptr @dwc3_ep0_xfernotready._entry, ptr @dwc3_ep0_xfernotready._entry_ptr, ptr @dwc3_gadget_ep0_queue._entry, ptr @dwc3_gadget_ep0_queue._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_gadget_ep0_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_ep0_set_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_ep0_set_address._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_ep0_set_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_ep0_complete_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_ep0_xfernotready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc3_gadget_ep0_queue(ptr noundef %ep, ptr noundef %request, i32 noundef %gfp_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dwc4 = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 7
  %0 = ptrtoint ptr %dwc4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc4, align 4
  %lock = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 10
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %desc = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %lor.lhs.false

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

lor.lhs.false:                                    ; preds = %entry
  %pullups_connected = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 79
  %4 = ptrtoint ptr %pullups_connected to i32
  call void @__asan_loadN_noabort(i32 %4, i32 6)
  %bf.load = load i48, ptr %pullups_connected, align 4
  %5 = and i48 %bf.load, 34359738368
  %tobool10.not = icmp eq i48 %5, 0
  br i1 %tobool10.not, label %lor.lhs.false.do.end13_crit_edge, label %if.end

lor.lhs.false.do.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

do.end13:                                         ; preds = %lor.lhs.false.do.end13_crit_edge, %entry.do.end13_crit_edge
  %dev = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef %name) #11
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %pending_list = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 2
  %8 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not = icmp eq ptr %9, %pending_list
  br i1 %cmp.i.not, label %if.end17, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @__dwc3_gadget_ep0_queue(ptr noundef %ep, ptr noundef %request)
  br label %out

out:                                              ; preds = %if.end17, %if.end.out_crit_edge, %do.end13
  %ret.0 = phi i32 [ 0, %if.end17 ], [ -108, %do.end13 ], [ -16, %if.end.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #8
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dwc3_gadget_ep0_queue(ptr noundef %dep, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dwc1 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 7
  %0 = ptrtoint ptr %dwc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc1, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %2 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %actual, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -115, ptr %status, align 4
  %number = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 12
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %number, align 2
  %epnum = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 9
  %6 = ptrtoint ptr %epnum to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %epnum, align 4
  %list = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 1
  %pending_list = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %8, ptr noundef %pending_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i, align 4
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pending_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %flags = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 9
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end32, label %if.then

if.then:                                          ; preds = %list_add_tail.exit
  %ep0state = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 58
  %15 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ep0state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.not = icmp eq i32 %16, 2
  br i1 %cmp.not, label %if.end29, label %do.end

do.end:                                           ; preds = %if.then
  %dev = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %call = tail call ptr @dev_driver_string(ptr noundef %18) #8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %24, %if.end.i ], [ %22, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 113, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call, ptr noundef %retval.0.i) #8
  br label %cleanup72

if.end29:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %.lobit = lshr i32 %14, 31
  %arrayidx = getelementptr %struct.dwc3, ptr %1, i32 0, i32 17, i32 %.lobit
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @__dwc3_ep0_do_control_data(ptr noundef %1, ptr noundef %26, ptr noundef %req)
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and31 = and i32 %28, 2147483615
  store i32 %and31, ptr %flags, align 4
  br label %cleanup72

if.end32:                                         ; preds = %list_add_tail.exit
  %delayed_status = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 79
  %29 = ptrtoint ptr %delayed_status to i32
  call void @__asan_loadN_noabort(i32 %29, i32 6)
  %bf.load = load i48, ptr %delayed_status, align 4
  %30 = and i48 %bf.load, 35184372088832
  %tobool33.not = icmp eq i48 %30, 0
  br i1 %tobool33.not, label %if.end53, label %if.then34

if.then34:                                        ; preds = %if.end32
  %bf.clear45 = and i48 %bf.load, -35184372088833
  %31 = ptrtoint ptr %delayed_status to i32
  call void @__asan_storeN_noabort(i32 %31, i32 6)
  store i48 %bf.clear45, ptr %delayed_status, align 4
  %gadget = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 18
  %32 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %gadget, align 4
  tail call void @usb_gadget_set_state(ptr noundef %33, i32 noundef 7) #8
  %ep0state46 = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 58
  %34 = ptrtoint ptr %ep0state46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ep0state46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp47 = icmp eq i32 %35, 3
  br i1 %cmp47, label %if.then48, label %if.then34.cleanup72_crit_edge

if.then34.cleanup72_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup72

if.then48:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %36 = lshr i48 %bf.load, 43
  %37 = trunc i48 %36 to i32
  %38 = and i32 %37, 1
  %39 = xor i32 %38, 1
  %arrayidx50 = getelementptr %struct.dwc3, ptr %1, i32 0, i32 17, i32 %39
  %40 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx50, align 4
  tail call fastcc void @__dwc3_ep0_do_control_status(ptr noundef %41)
  br label %cleanup72

if.end53:                                         ; preds = %if.end32
  %42 = and i48 %bf.load, 8589934592
  %tobool58.not = icmp eq i48 %42, 0
  br i1 %tobool58.not, label %if.end53.cleanup72_crit_edge, label %if.then59

if.end53.cleanup72_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup72

if.then59:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %bf.lshr63 = lshr i48 %bf.load, 43
  %43 = trunc i48 %bf.lshr63 to i32
  %bf.cast65 = and i32 %43, 1
  %ep0state66 = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 58
  %44 = ptrtoint ptr %ep0state66 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %ep0state66, align 4
  %arrayidx68 = getelementptr %struct.dwc3, ptr %1, i32 0, i32 17, i32 %bf.cast65
  %45 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx68, align 4
  tail call fastcc void @__dwc3_ep0_do_control_data(ptr noundef %1, ptr noundef %46, ptr noundef %req)
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags, align 4
  %and70 = and i32 %48, 2147483647
  store i32 %and70, ptr %flags, align 4
  br label %cleanup72

cleanup72:                                        ; preds = %if.then59, %if.end53.cleanup72_crit_edge, %if.then48, %if.then34.cleanup72_crit_edge, %if.end29, %dev_name.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__dwc3_gadget_ep0_set_halt(ptr nocapture noundef readonly %ep, i32 %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dwc1 = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 7
  %0 = ptrtoint ptr %dwc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc1, align 4
  %eps.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 17
  %arrayidx.i = getelementptr %struct.dwc3, ptr %1, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %flags.i = getelementptr inbounds %struct.dwc3_ep, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %flags.i, align 4
  %5 = ptrtoint ptr %eps.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eps.i, align 4
  %call.i = tail call i32 @__dwc3_gadget_ep_set_halt(ptr noundef %6, i32 noundef 1, i32 noundef 0) #8
  %flags3.i = getelementptr inbounds %struct.dwc3_ep, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %flags3.i, align 4
  %delayed_status.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 79
  %8 = ptrtoint ptr %delayed_status.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 6)
  %bf.load.i = load i48, ptr %delayed_status.i, align 4
  %bf.clear.i = and i48 %bf.load.i, -35184372088833
  store i48 %bf.clear.i, ptr %delayed_status.i, align 4
  %pending_list.i = getelementptr inbounds %struct.dwc3_ep, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %pending_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %pending_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %10, %pending_list.i
  br i1 %cmp.i.not.i, label %entry.dwc3_ep0_stall_and_restart.exit_crit_edge, label %if.then.i

entry.dwc3_ep0_stall_and_restart.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc3_ep0_stall_and_restart.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %pending_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %pending_list.i, align 4
  %cmp.not.i.i = icmp eq ptr %12, %pending_list.i
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 -56
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %add.ptr.i.i
  tail call void @dwc3_gadget_giveback(ptr noundef %6, ptr noundef %spec.select.i.i, i32 noundef -104) #8
  br label %dwc3_ep0_stall_and_restart.exit

dwc3_ep0_stall_and_restart.exit:                  ; preds = %if.then.i, %entry.dwc3_ep0_stall_and_restart.exit_crit_edge
  %ep0state.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 58
  %13 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %ep0state.i, align 4
  tail call void @dwc3_ep0_out_start(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc3_ep0_stall_and_restart(ptr noundef %dwc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %eps = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 17
  %arrayidx = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 17, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %flags = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %flags, align 4
  %3 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %eps, align 4
  %call = tail call i32 @__dwc3_gadget_ep_set_halt(ptr noundef %4, i32 noundef 1, i32 noundef 0) #8
  %flags3 = getelementptr inbounds %struct.dwc3_ep, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %flags3, align 4
  %delayed_status = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %6 = ptrtoint ptr %delayed_status to i32
  call void @__asan_loadN_noabort(i32 %6, i32 6)
  %bf.load = load i48, ptr %delayed_status, align 4
  %bf.clear = and i48 %bf.load, -35184372088833
  store i48 %bf.clear, ptr %delayed_status, align 4
  %pending_list = getelementptr inbounds %struct.dwc3_ep, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not = icmp eq ptr %8, %pending_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %pending_list, align 4
  %cmp.not.i = icmp eq ptr %10, %pending_list
  %add.ptr.i = getelementptr i8, ptr %10, i32 -56
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  tail call void @dwc3_gadget_giveback(ptr noundef %4, ptr noundef %spec.select.i, i32 noundef -104) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ep0state = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 58
  %11 = ptrtoint ptr %ep0state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %ep0state, align 4
  tail call void @dwc3_ep0_out_start(ptr noundef %dwc)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc3_gadget_ep0_set_halt(ptr nocapture noundef readonly %ep, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dwc1 = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 7
  %0 = ptrtoint ptr %dwc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc1, align 4
  %lock = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 10
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %2 = ptrtoint ptr %dwc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dwc1, align 4
  %eps.i.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 17
  %arrayidx.i.i = getelementptr %struct.dwc3, ptr %3, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %flags.i.i, align 4
  %7 = ptrtoint ptr %eps.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %eps.i.i, align 4
  %call.i.i = tail call i32 @__dwc3_gadget_ep_set_halt(ptr noundef %8, i32 noundef 1, i32 noundef 0) #8
  %flags3.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %flags3.i.i, align 4
  %delayed_status.i.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 79
  %10 = ptrtoint ptr %delayed_status.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 6)
  %bf.load.i.i = load i48, ptr %delayed_status.i.i, align 4
  %bf.clear.i.i = and i48 %bf.load.i.i, -35184372088833
  store i48 %bf.clear.i.i, ptr %delayed_status.i.i, align 4
  %pending_list.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %pending_list.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %pending_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %12, %pending_list.i.i
  br i1 %cmp.i.not.i.i, label %entry.__dwc3_gadget_ep0_set_halt.exit_crit_edge, label %if.then.i.i

entry.__dwc3_gadget_ep0_set_halt.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__dwc3_gadget_ep0_set_halt.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %pending_list.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %pending_list.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %14, %pending_list.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 -56
  %spec.select.i.i.i = select i1 %cmp.not.i.i.i, ptr null, ptr %add.ptr.i.i.i
  tail call void @dwc3_gadget_giveback(ptr noundef %8, ptr noundef %spec.select.i.i.i, i32 noundef -104) #8
  br label %__dwc3_gadget_ep0_set_halt.exit

__dwc3_gadget_ep0_set_halt.exit:                  ; preds = %if.then.i.i, %entry.__dwc3_gadget_ep0_set_halt.exit_crit_edge
  %ep0state.i.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 58
  %15 = ptrtoint ptr %ep0state.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %ep0state.i.i, align 4
  tail call void @dwc3_ep0_out_start(ptr noundef %3) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc3_ep0_out_start(ptr noundef %dwc) local_unnamed_addr #0 align 64 {
entry:
  %params.i = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ep0_in_setup = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 9
  tail call void @complete(ptr noundef %ep0_in_setup) #8
  %eps = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 17
  %0 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eps, align 4
  %ep0_trb_addr = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 5
  %2 = ptrtoint ptr %ep0_trb_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ep0_trb_addr, align 4
  %dwc1.i = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %dwc1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dwc1.i, align 4
  %ep0_trb.i = getelementptr inbounds %struct.dwc3, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ep0_trb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep0_trb.i, align 4
  %trb_enqueue.i = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %trb_enqueue.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %trb_enqueue.i, align 4
  %idxprom.i = zext i8 %9 to i32
  %arrayidx.i = getelementptr %struct.dwc3_trb, ptr %7, i32 %idxprom.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %3, ptr %arrayidx.i, align 1
  %bph.i = getelementptr %struct.dwc3_trb, ptr %7, i32 %idxprom.i, i32 1
  %11 = ptrtoint ptr %bph.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %bph.i, align 1
  %size.i = getelementptr %struct.dwc3_trb, ptr %7, i32 %idxprom.i, i32 2
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 8, ptr %size.i, align 1
  %ctrl.i = getelementptr %struct.dwc3_trb, ptr %7, i32 %idxprom.i, i32 3
  %13 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 3107, ptr %ctrl.i, align 1
  tail call fastcc void @trace_dwc3_prepare_trb(ptr noundef %1, ptr noundef %arrayidx.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i) #8
  %flags.i = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.dwc3_ep0_start_trans.exit.thread_crit_edge

entry.dwc3_ep0_start_trans.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc3_ep0_start_trans.exit.thread

if.end.i:                                         ; preds = %entry
  %16 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %params.i, i32 0, i32 1
  %17 = ptrtoint ptr %dwc1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dwc1.i, align 4
  %ep0_trb_addr.i = getelementptr inbounds %struct.dwc3, ptr %18, i32 0, i32 5
  %19 = call ptr @memset(ptr %params.i, i32 0, i32 12)
  %20 = ptrtoint ptr %ep0_trb_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ep0_trb_addr.i, align 4
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %16, align 4
  %call.i = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %1, i32 noundef 6, ptr noundef nonnull %params.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %ep0_next_event.i = getelementptr inbounds %struct.dwc3, ptr %18, i32 0, i32 57
  %23 = ptrtoint ptr %ep0_next_event.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %ep0_next_event.i, align 4
  br label %dwc3_ep0_start_trans.exit.thread

dwc3_ep0_start_trans.exit.thread:                 ; preds = %if.end6.i, %entry.dwc3_ep0_start_trans.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i) #8
  br label %if.end

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i) #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 281, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %dwc3_ep0_start_trans.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc3_ep0_send_delayed_status(ptr nocapture noundef %dwc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ep0_expect_in = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %0 = ptrtoint ptr %ep0_expect_in to i32
  call void @__asan_loadN_noabort(i32 %0, i32 6)
  %bf.load = load i48, ptr %ep0_expect_in, align 4
  %bf.clear2 = and i48 %bf.load, -35184372088833
  store i48 %bf.clear2, ptr %ep0_expect_in, align 4
  %ep0state = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 58
  %1 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ep0state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp.not = icmp eq i32 %2, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = lshr i48 %bf.load, 43
  %4 = trunc i48 %3 to i32
  %5 = and i32 %4, 1
  %6 = xor i32 %5, 1
  %arrayidx = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 17, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @__dwc3_ep0_do_control_status(ptr noundef %8)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dwc3_ep0_do_control_status(ptr noundef %dep) unnamed_addr #0 align 64 {
entry:
  %params.i.i = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dwc1.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 7
  %0 = ptrtoint ptr %dwc1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc1.i, align 4
  %three_stage_setup.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 79
  %2 = ptrtoint ptr %three_stage_setup.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 6)
  %bf.load.i = load i48, ptr %three_stage_setup.i, align 4
  %3 = and i48 %bf.load.i, 8589934592
  %tobool.not.i = icmp eq i48 %3, 0
  %ep0_trb_addr.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %ep0_trb_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ep0_trb_addr.i, align 4
  %ep0_trb.i.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ep0_trb.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep0_trb.i.i, align 4
  %trb_enqueue.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 10
  %8 = ptrtoint ptr %trb_enqueue.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %trb_enqueue.i.i, align 4
  %idxprom.i.i = zext i8 %9 to i32
  %arrayidx.i.i = getelementptr %struct.dwc3_trb, ptr %7, i32 %idxprom.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %5, ptr %arrayidx.i.i, align 1
  %bph.i.i = getelementptr %struct.dwc3_trb, ptr %7, i32 %idxprom.i.i, i32 1
  %11 = ptrtoint ptr %bph.i.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %bph.i.i, align 1
  %size.i.i = getelementptr %struct.dwc3_trb, ptr %7, i32 %idxprom.i.i, i32 2
  %12 = ptrtoint ptr %size.i.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 0, ptr %size.i.i, align 1
  %ctrl.i.i = getelementptr %struct.dwc3_trb, ptr %7, i32 %idxprom.i.i, i32 3
  %storemerge.i.i = select i1 %tobool.not.i, i32 3123, i32 3139
  %13 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %storemerge.i.i, ptr %ctrl.i.i, align 1
  tail call fastcc void @trace_dwc3_prepare_trb(ptr noundef %dep, ptr noundef %arrayidx.i.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i.i) #8
  %flags.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 9
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.dwc3_ep0_start_control_status.exit.thread_crit_edge

entry.dwc3_ep0_start_control_status.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc3_ep0_start_control_status.exit.thread

if.end.i.i:                                       ; preds = %entry
  %16 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %params.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %dwc1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dwc1.i, align 4
  %ep0_trb_addr.i.i = getelementptr inbounds %struct.dwc3, ptr %18, i32 0, i32 5
  %19 = call ptr @memset(ptr %params.i.i, i32 0, i32 12)
  %20 = ptrtoint ptr %ep0_trb_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ep0_trb_addr.i.i, align 4
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %16, align 4
  %call.i.i = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %dep, i32 noundef 6, ptr noundef nonnull %params.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end, label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %ep0_next_event.i.i = getelementptr inbounds %struct.dwc3, ptr %18, i32 0, i32 57
  %23 = ptrtoint ptr %ep0_next_event.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %ep0_next_event.i.i, align 4
  br label %dwc3_ep0_start_control_status.exit.thread

dwc3_ep0_start_control_status.exit.thread:        ; preds = %if.end6.i.i, %entry.dwc3_ep0_start_control_status.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i.i) #8
  br label %if.end

do.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i.i) #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1053, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %dwc3_ep0_start_control_status.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc3_ep0_interrupt(ptr noundef %dwc, ptr nocapture noundef readonly %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %bf.load = load i32, ptr %event, align 1
  %bf.lshr = lshr i32 %bf.load, 26
  %bf.clear = and i32 %bf.lshr, 31
  %arrayidx = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 17, i32 %bf.clear
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %bf.lshr2 = lshr i32 %bf.load, 22
  %bf.clear3 = and i32 %bf.lshr2, 15
  %3 = zext i32 %bf.clear3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.clear3, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb4
    i32 7, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %flags.i = getelementptr inbounds %struct.dwc3_ep, ptr %2, i32 0, i32 9
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, -9
  store i32 %and.i, ptr %flags.i, align 4
  %resource_index.i = getelementptr inbounds %struct.dwc3_ep, ptr %2, i32 0, i32 14
  %6 = ptrtoint ptr %resource_index.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %resource_index.i, align 4
  %setup_packet_pending.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %7 = ptrtoint ptr %setup_packet_pending.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 6)
  %bf.load1.i = load i48, ptr %setup_packet_pending.i, align 4
  %bf.clear2.i = and i48 %bf.load1.i, -17179869185
  store i48 %bf.clear2.i, ptr %setup_packet_pending.i, align 4
  %ep0state.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 58
  %8 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ep0state.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %9, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %sw.bb
  %ep0_trb.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 1
  %11 = ptrtoint ptr %ep0_trb.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ep0_trb.i.i, align 4
  %gadget_driver.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 19
  %13 = ptrtoint ptr %gadget_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gadget_driver.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %sw.bb.i.if.then36.i.i_crit_edge, label %if.end.i.i

sw.bb.i.if.then36.i.i_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i.i

if.end.i.i:                                       ; preds = %sw.bb.i
  tail call fastcc void @trace_dwc3_ctrl_req(ptr noundef %12) #8
  %wLength.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %wLength.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %wLength.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool1.not.i.i = icmp eq i16 %16, 0
  %17 = ptrtoint ptr %setup_packet_pending.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 6)
  %bf.load.i.i = load i48, ptr %setup_packet_pending.i, align 4
  br i1 %tobool1.not.i.i, label %if.then2.i.i, label %if.else.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear4.i.i = and i48 %bf.load.i.i, -8804682956801
  br label %if.end18.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set9.i.i = or i48 %bf.load.i.i, 8589934592
  %18 = ptrtoint ptr %setup_packet_pending.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 6)
  store i48 %bf.set9.i.i, ptr %setup_packet_pending.i, align 4
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %12, align 1
  %.lobit.i.i = lshr i8 %20, 7
  %21 = zext i8 %.lobit.i.i to i48
  %bf.shl.i.i = shl nuw nsw i48 %21, 43
  %bf.clear15.i.i = and i48 %bf.set9.i.i, -8796093022209
  %bf.set16.i.i = or i48 %bf.shl.i.i, %bf.clear15.i.i
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.else.i.i, %if.then2.i.i
  %bf.set16.sink.i.i = phi i48 [ %bf.set16.i.i, %if.else.i.i ], [ %bf.clear4.i.i, %if.then2.i.i ]
  %.sink.i.i = phi i32 [ 2, %if.else.i.i ], [ 3, %if.then2.i.i ]
  %22 = ptrtoint ptr %setup_packet_pending.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 6)
  store i48 %bf.set16.sink.i.i, ptr %setup_packet_pending.i, align 4
  %23 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 57
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink.i.i, ptr %23, align 4
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %12, align 1
  %27 = and i8 %26, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp.i.i = icmp eq i8 %27, 0
  br i1 %cmp.i.i, label %if.then23.i.i, label %if.else24.i.i

if.then23.i.i:                                    ; preds = %if.end18.i.i
  %bRequest.i.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %12, i32 0, i32 1
  %28 = ptrtoint ptr %bRequest.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bRequest.i.i.i, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %29, label %sw.default.i.i.i [
    i8 0, label %sw.bb.i.i.i
    i8 1, label %sw.bb1.i.i.i
    i8 3, label %sw.bb3.i.i.i
    i8 5, label %sw.bb5.i.i.i
    i8 9, label %sw.bb7.i.i.i
    i8 48, label %sw.bb9.i.i.i
    i8 49, label %sw.bb11.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.then23.i.i
  %wValue.i.i.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %12, i32 0, i32 2
  %31 = ptrtoint ptr %wValue.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %wValue.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp.not.i.i.i.i = icmp eq i16 %32, 0
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %sw.bb.i.i.i.if.then36.i.i_crit_edge

sw.bb.i.i.i.if.then36.i.i_crit_edge:              ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i.i

if.end.i.i.i.i:                                   ; preds = %sw.bb.i.i.i
  %33 = and i8 %26, 31
  %and.i.i.i.i = zext i8 %33 to i32
  %34 = zext i32 %and.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %and.i.i.i.i, label %if.end.i.i.i.i.if.then36.i.i_crit_edge [
    i32 0, label %sw.bb.i.i.i.i
    i32 1, label %if.end.i.i.i.i.sw.epilog.i.i.i.i_crit_edge
    i32 2, label %sw.bb27.i.i.i.i
  ]

if.end.i.i.i.i.sw.epilog.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i.i.i

if.end.i.i.i.i.if.then36.i.i_crit_edge:           ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i.i

sw.bb.i.i.i.i:                                    ; preds = %if.end.i.i.i.i
  %gadget.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 18
  %35 = ptrtoint ptr %gadget.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gadget.i.i.i.i, align 4
  %is_selfpowered.i.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %36, i32 0, i32 17
  %37 = ptrtoint ptr %is_selfpowered.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load.i.i.i.i = load i32, ptr %is_selfpowered.i.i.i.i, align 4
  %bf.lshr.i.i.i.i = lshr i32 %bf.load.i.i.i.i, 18
  %38 = trunc i32 %bf.lshr.i.i.i.i to i16
  %conv4.i.i.i.i = and i16 %38, 1
  %speed.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 64
  %39 = ptrtoint ptr %speed.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %speed.i.i.i.i, align 2
  %41 = and i8 %40, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %41)
  %switch.i.i.i.i = icmp eq i8 %41, 4
  br i1 %switch.i.i.i.i, label %if.then12.i.i.i.i, label %sw.bb.i.i.i.i.sw.epilog.i.i.i.i_crit_edge

sw.bb.i.i.i.i.sw.epilog.i.i.i.i_crit_edge:        ; preds = %sw.bb.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i.i.i

if.then12.i.i.i.i:                                ; preds = %sw.bb.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %regs.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %42 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %43, i32 1540
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i.i.i) #8, !srcloc !70
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %add.ptr3.i.i.i.i.i = getelementptr i8, ptr %43, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i.i.i.i, i32 noundef 50948, i32 noundef %45) #8
  %46 = trunc i32 %45 to i16
  %47 = lshr i16 %46, 8
  %48 = and i16 %47, 4
  %49 = or i16 %48, %conv4.i.i.i.i
  %50 = lshr i16 %46, 9
  %51 = and i16 %50, 8
  %52 = or i16 %49, %51
  br label %sw.epilog.i.i.i.i

sw.bb27.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %wIndex.i.i.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %12, i32 0, i32 3
  %53 = ptrtoint ptr %wIndex.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %wIndex.i.i.i.i, align 1
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #8
  %conv.i.i.i.i.i = zext i16 %55 to i32
  %and.i.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i.i, 1
  %shl.i.i.i.i.i = and i32 %and.i.i.i.i.i, 30
  %and1.i.i.i.i.i = lshr i32 %conv.i.i.i.i.i, 7
  %56 = and i32 %and1.i.i.i.i.i, 1
  %57 = or i32 %56, %shl.i.i.i.i.i
  %arrayidx.i.i.i.i.i = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 17, i32 %57
  %58 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %cmp3.i.i.i.i.i = icmp eq ptr %59, null
  br i1 %cmp3.i.i.i.i.i, label %sw.bb27.i.i.i.i.if.then36.i.i_crit_edge, label %if.end6.i.i.i.i.i

sw.bb27.i.i.i.i.if.then36.i.i_crit_edge:          ; preds = %sw.bb27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i.i

if.end6.i.i.i.i.i:                                ; preds = %sw.bb27.i.i.i.i
  %flags.i.i.i.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %59, i32 0, i32 9
  %60 = ptrtoint ptr %flags.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags.i.i.i.i.i, align 4
  %and7.i.i.i.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and7.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end6.i.i.i.i.i.if.then36.i.i_crit_edge, label %if.end31.i.i.i.i

if.end6.i.i.i.i.i.if.then36.i.i_crit_edge:        ; preds = %if.end6.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i.i

if.end31.i.i.i.i:                                 ; preds = %if.end6.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = trunc i32 %61 to i16
  %63 = lshr i16 %62, 1
  %64 = and i16 %63, 1
  br label %sw.epilog.i.i.i.i

sw.epilog.i.i.i.i:                                ; preds = %if.end31.i.i.i.i, %if.then12.i.i.i.i, %sw.bb.i.i.i.i.sw.epilog.i.i.i.i_crit_edge, %if.end.i.i.i.i.sw.epilog.i.i.i.i_crit_edge
  %usb_status.1.i.i.i.i = phi i16 [ 0, %if.end.i.i.i.i.sw.epilog.i.i.i.i_crit_edge ], [ %conv4.i.i.i.i, %sw.bb.i.i.i.i.sw.epilog.i.i.i.i_crit_edge ], [ %64, %if.end31.i.i.i.i ], [ %52, %if.then12.i.i.i.i ]
  %setup_buf.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 4
  %65 = ptrtoint ptr %setup_buf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %setup_buf.i.i.i.i, align 4
  %67 = tail call i16 @llvm.bswap.i16(i16 %usb_status.1.i.i.i.i) #8
  %68 = ptrtoint ptr %66 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %66, align 2
  %eps.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 17
  %69 = ptrtoint ptr %eps.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %eps.i.i.i.i, align 4
  %ep0_usb_req.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 8
  %dep36.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 8, i32 2
  %71 = ptrtoint ptr %dep36.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %dep36.i.i.i.i, align 4
  %length.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 8, i32 0, i32 1
  %72 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %length.i.i.i.i, align 4
  %73 = ptrtoint ptr %setup_buf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %setup_buf.i.i.i.i, align 4
  %75 = ptrtoint ptr %ep0_usb_req.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %ep0_usb_req.i.i.i.i, align 4
  %complete.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 8, i32 0, i32 7
  %76 = ptrtoint ptr %complete.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @dwc3_ep0_status_cmpl, ptr %complete.i.i.i.i, align 4
  tail call fastcc void @__dwc3_gadget_ep0_queue(ptr noundef %70, ptr noundef %ep0_usb_req.i.i.i.i) #8
  br label %sw.epilog

sw.bb1.i.i.i:                                     ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i.i = tail call fastcc i32 @dwc3_ep0_handle_feature(ptr noundef %dwc, ptr noundef %12, i32 noundef 0) #8
  br label %if.end26.i.i

sw.bb3.i.i.i:                                     ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i.i = tail call fastcc i32 @dwc3_ep0_handle_feature(ptr noundef %dwc, ptr noundef %12, i32 noundef 1) #8
  br label %if.end26.i.i

sw.bb5.i.i.i:                                     ; preds = %if.then23.i.i
  %gadget.i29.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 18
  %wValue.i30.i.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %12, i32 0, i32 2
  %77 = ptrtoint ptr %wValue.i30.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %wValue.i30.i.i.i, align 1
  %79 = tail call i16 @llvm.bswap.i16(i16 %78) #8
  %conv.i.i.i.i = zext i16 %79 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %79)
  %cmp.i.i.i.i = icmp ugt i16 %79, 127
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i31.i.i.i

do.end.i.i.i.i:                                   ; preds = %sw.bb5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 12
  %80 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.10, i32 noundef %conv.i.i.i.i) #11
  br label %if.then36.i.i

if.end.i31.i.i.i:                                 ; preds = %sw.bb5.i.i.i
  %82 = ptrtoint ptr %gadget.i29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %gadget.i29.i.i.i, align 4
  %state1.i.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %83, i32 0, i32 9
  %84 = ptrtoint ptr %state1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %state1.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %85)
  %cmp3.i.i.i.i = icmp eq i32 %85, 7
  br i1 %cmp3.i.i.i.i, label %do.end8.i.i.i.i, label %if.end10.i.i.i.i

do.end8.i.i.i.i:                                  ; preds = %if.end.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev9.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 12
  %86 = ptrtoint ptr %dev9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev9.i.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.13) #11
  br label %if.then36.i.i

if.end10.i.i.i.i:                                 ; preds = %if.end.i31.i.i.i
  %regs.i32.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %88 = ptrtoint ptr %regs.i32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs.i32.i.i.i, align 4
  %add.ptr1.i.i33.i.i.i = getelementptr i8, ptr %89, i32 1536
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i33.i.i.i) #8, !srcloc !70
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %add.ptr3.i.i34.i.i.i = getelementptr i8, ptr %89, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i34.i.i.i, i32 noundef 50944, i32 noundef %91) #8
  %and.i35.i.i.i = and i32 %91, -1017
  %shl.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 3
  %or.i.i.i.i = or i32 %and.i35.i.i.i, %shl.i.i.i.i
  %92 = ptrtoint ptr %regs.i32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i32.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  tail call void @arm_heavy_mb() #8
  %94 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i) #8
  %add.ptr1.i30.i.i.i.i = getelementptr i8, ptr %93, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30.i.i.i.i, i32 %94) #8, !srcloc !73
  %add.ptr2.i.i.i.i.i = getelementptr i8, ptr %93, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i.i.i.i, i32 noundef 50944, i32 noundef %or.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool.not.i.i.i.i = icmp eq i16 %78, 0
  %95 = ptrtoint ptr %gadget.i29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %gadget.i29.i.i.i, align 4
  br i1 %tobool.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then12.i36.i.i.i

if.then12.i36.i.i.i:                              ; preds = %if.end10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_gadget_set_state(ptr noundef %96, i32 noundef 6) #8
  br label %sw.epilog

if.else.i.i.i.i:                                  ; preds = %if.end10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_gadget_set_state(ptr noundef %96, i32 noundef 5) #8
  br label %sw.epilog

sw.bb7.i.i.i:                                     ; preds = %if.then23.i.i
  %gadget.i38.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 18
  %97 = ptrtoint ptr %gadget.i38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %gadget.i38.i.i.i, align 4
  %state1.i39.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %98, i32 0, i32 9
  %99 = ptrtoint ptr %state1.i39.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %state1.i39.i.i.i, align 8
  %wValue.i40.i.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %12, i32 0, i32 2
  %101 = ptrtoint ptr %wValue.i40.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %wValue.i40.i.i.i, align 1
  %103 = zext i32 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %100, label %sw.bb7.i.i.i.if.then36.i.i_crit_edge [
    i32 7, label %sw.bb23.i.i.i.i
    i32 6, label %sw.bb2.i.i.i.i
  ]

sw.bb7.i.i.i.if.then36.i.i_crit_edge:             ; preds = %sw.bb7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i.i

sw.bb2.i.i.i.i:                                   ; preds = %sw.bb7.i.i.i
  tail call void @dwc3_gadget_clear_tx_fifos(ptr noundef %dwc) #8
  %104 = ptrtoint ptr %setup_packet_pending.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 6)
  %bf.load.i.i.i.i.i = load i48, ptr %setup_packet_pending.i, align 4
  %105 = and i48 %bf.load.i.i.i.i.i, 32
  %tobool.not.i.i41.i.i.i = icmp eq i48 %105, 0
  br i1 %tobool.not.i.i41.i.i.i, label %sw.bb2.i.i.i.i.dwc3_ep0_delegate_req.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

sw.bb2.i.i.i.i.dwc3_ep0_delegate_req.exit.i.i.i.i_crit_edge: ; preds = %sw.bb2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc3_ep0_delegate_req.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %sw.bb2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %lock.i.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i.i.i.i) #8
  %106 = ptrtoint ptr %gadget_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %gadget_driver.i.i, align 4
  %setup.i.i.i.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %setup.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %setup.i.i.i.i.i, align 4
  %110 = ptrtoint ptr %gadget.i38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %gadget.i38.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %109(ptr noundef %111, ptr noundef %12) #8
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i.i.i.i) #8
  br label %dwc3_ep0_delegate_req.exit.i.i.i.i

dwc3_ep0_delegate_req.exit.i.i.i.i:               ; preds = %if.then.i.i.i.i.i, %sw.bb2.i.i.i.i.dwc3_ep0_delegate_req.exit.i.i.i.i_crit_edge
  %ret.0.i.i.i.i.i = phi i32 [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ], [ -22, %sw.bb2.i.i.i.i.dwc3_ep0_delegate_req.exit.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %tobool.not.i42.i.i.i = icmp eq i16 %102, 0
  br i1 %tobool.not.i42.i.i.i, label %dwc3_ep0_delegate_req.exit.i.i.i.i.if.end26.i.i_crit_edge, label %land.lhs.true.i.i.i.i

dwc3_ep0_delegate_req.exit.i.i.i.i.if.end26.i.i_crit_edge: ; preds = %dwc3_ep0_delegate_req.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i.i

land.lhs.true.i.i.i.i:                            ; preds = %dwc3_ep0_delegate_req.exit.i.i.i.i
  %112 = zext i32 %ret.0.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %ret.0.i.i.i.i.i, label %land.lhs.true.i.i.i.i.out.i.i_crit_edge [
    i32 0, label %if.then7.i.i.i.i
    i32 32767, label %land.lhs.true.i.i.i.i.if.end.i49.i.i.i_crit_edge
  ]

land.lhs.true.i.i.i.i.if.end.i49.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i49.i.i.i

land.lhs.true.i.i.i.i.out.i.i_crit_edge:          ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i.i

if.then7.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %gadget.i38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %gadget.i38.i.i.i, align 4
  tail call void @usb_gadget_set_state(ptr noundef %114, i32 noundef 7) #8
  br label %if.end.i49.i.i.i

if.end.i49.i.i.i:                                 ; preds = %if.then7.i.i.i.i, %land.lhs.true.i.i.i.i.if.end.i49.i.i.i_crit_edge
  %regs.i43.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %115 = ptrtoint ptr %regs.i43.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs.i43.i.i.i, align 4
  %add.ptr1.i.i44.i.i.i = getelementptr i8, ptr %116, i32 1540
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i44.i.i.i) #8, !srcloc !70
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %add.ptr3.i.i45.i.i.i = getelementptr i8, ptr %116, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i45.i.i.i, i32 noundef 50948, i32 noundef %118) #8
  %119 = ptrtoint ptr %setup_packet_pending.i to i32
  call void @__asan_loadN_noabort(i32 %119, i32 6)
  %bf.load.i46.i.i.i = load i48, ptr %setup_packet_pending.i, align 4
  %120 = and i48 %bf.load.i46.i.i.i, 131072
  %tobool10.not.i.i.i.i = icmp eq i48 %120, 0
  %or.i47.i.i.i = or i32 %118, 512
  %spec.select.i.i.i.i = select i1 %tobool10.not.i.i.i.i, i32 %or.i47.i.i.i, i32 %118
  %121 = and i48 %bf.load.i46.i.i.i, 65536
  %tobool17.not.i.i.i.i = icmp eq i48 %121, 0
  %or19.i.i.i.i = or i32 %spec.select.i.i.i.i, 2048
  %reg.1.i.i.i.i = select i1 %tobool17.not.i.i.i.i, i32 %or19.i.i.i.i, i32 %spec.select.i.i.i.i
  %122 = ptrtoint ptr %regs.i43.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs.i43.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  tail call void @arm_heavy_mb() #8
  %124 = tail call i32 @llvm.bswap.i32(i32 %reg.1.i.i.i.i) #8
  %add.ptr1.i53.i.i.i.i = getelementptr i8, ptr %123, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i53.i.i.i.i, i32 %124) #8, !srcloc !73
  %add.ptr2.i.i48.i.i.i = getelementptr i8, ptr %123, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i48.i.i.i, i32 noundef 50948, i32 noundef %reg.1.i.i.i.i) #8
  br label %if.end26.i.i

sw.bb23.i.i.i.i:                                  ; preds = %sw.bb7.i.i.i
  %125 = and i48 %bf.set16.sink.i.i, 32
  %tobool.not.i56.i.i.i.i = icmp eq i48 %125, 0
  br i1 %tobool.not.i56.i.i.i.i, label %sw.bb23.i.i.i.i.if.then36.i.i_crit_edge, label %dwc3_ep0_delegate_req.exit64.i.i.i.i

sw.bb23.i.i.i.i.if.then36.i.i_crit_edge:          ; preds = %sw.bb23.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i.i

dwc3_ep0_delegate_req.exit64.i.i.i.i:             ; preds = %sw.bb23.i.i.i.i
  %lock.i57.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %lock.i57.i.i.i.i) #8
  %126 = ptrtoint ptr %gadget_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %gadget_driver.i.i, align 4
  %setup.i59.i.i.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %127, i32 0, i32 4
  %128 = ptrtoint ptr %setup.i59.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %setup.i59.i.i.i.i, align 4
  %130 = ptrtoint ptr %gadget.i38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %gadget.i38.i.i.i, align 4
  %call.i61.i.i.i.i = tail call i32 %129(ptr noundef %131, ptr noundef %12) #8
  tail call void @_raw_spin_lock(ptr noundef %lock.i57.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %tobool25.not.i.i.i.i = icmp eq i16 %102, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i.i.i.i)
  %tobool27.not.i.i.i.i = icmp eq i32 %call.i61.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %tobool25.not.i.i.i.i, i1 %tobool27.not.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %if.then28.i.i.i.i, label %dwc3_ep0_delegate_req.exit64.i.i.i.i.if.end26.i.i_crit_edge

dwc3_ep0_delegate_req.exit64.i.i.i.i.if.end26.i.i_crit_edge: ; preds = %dwc3_ep0_delegate_req.exit64.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i.i

if.then28.i.i.i.i:                                ; preds = %dwc3_ep0_delegate_req.exit64.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %132 = ptrtoint ptr %gadget.i38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %gadget.i38.i.i.i, align 4
  tail call void @usb_gadget_set_state(ptr noundef %133, i32 noundef 6) #8
  br label %sw.epilog

sw.bb9.i.i.i:                                     ; preds = %if.then23.i.i
  %gadget.i51.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 18
  %134 = ptrtoint ptr %gadget.i51.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %gadget.i51.i.i.i, align 4
  %state1.i52.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %135, i32 0, i32 9
  %136 = ptrtoint ptr %state1.i52.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %state1.i52.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %137)
  %cmp.i53.i.i.i = icmp eq i32 %137, 5
  br i1 %cmp.i53.i.i.i, label %sw.bb9.i.i.i.if.then36.i.i_crit_edge, label %if.end.i54.i.i.i

sw.bb9.i.i.i.if.then36.i.i_crit_edge:             ; preds = %sw.bb9.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i.i

if.end.i54.i.i.i:                                 ; preds = %sw.bb9.i.i.i
  %138 = ptrtoint ptr %wLength.i.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 2)
  %139 = load i16, ptr %wLength.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %139)
  %cmp3.not.i.i.i.i = icmp eq i16 %139, 1536
  br i1 %cmp3.not.i.i.i.i, label %if.end7.i.i.i.i, label %do.end.i57.i.i.i

do.end.i57.i.i.i:                                 ; preds = %if.end.i54.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %140 = tail call i16 @llvm.bswap.i16(i16 %139) #8
  %conv.i55.i.i.i = zext i16 %140 to i32
  %dev.i56.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 12
  %141 = ptrtoint ptr %dev.i56.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev.i56.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.15, i32 noundef %conv.i55.i.i.i) #11
  br label %if.then36.i.i

if.end7.i.i.i.i:                                  ; preds = %if.end.i54.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %eps.i58.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 17
  %143 = ptrtoint ptr %eps.i58.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %eps.i58.i.i.i, align 4
  %ep0_usb_req.i59.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 8
  %dep8.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 8, i32 2
  %145 = ptrtoint ptr %dep8.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %144, ptr %dep8.i.i.i.i, align 4
  %maxpacket.i.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %144, i32 0, i32 7
  %146 = ptrtoint ptr %maxpacket.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 7)
  %bf.load.i60.i.i.i = load i56, ptr %maxpacket.i.i.i.i, align 2
  %bf.lshr.i61.i.i.i = lshr i56 %bf.load.i60.i.i.i, 40
  %bf.cast.i.i.i.i = trunc i56 %bf.lshr.i61.i.i.i to i32
  %length.i62.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 8, i32 0, i32 1
  %147 = ptrtoint ptr %length.i62.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %bf.cast.i.i.i.i, ptr %length.i62.i.i.i, align 4
  %setup_buf.i63.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 4
  %148 = ptrtoint ptr %setup_buf.i63.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %setup_buf.i63.i.i.i, align 4
  %150 = ptrtoint ptr %ep0_usb_req.i59.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %149, ptr %ep0_usb_req.i59.i.i.i, align 4
  %complete.i64.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 8, i32 0, i32 7
  %151 = ptrtoint ptr %complete.i64.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @dwc3_ep0_set_sel_cmpl, ptr %complete.i64.i.i.i, align 4
  tail call fastcc void @__dwc3_gadget_ep0_queue(ptr noundef %144, ptr noundef %ep0_usb_req.i59.i.i.i) #8
  br label %sw.epilog

sw.bb11.i.i.i:                                    ; preds = %if.then23.i.i
  %wValue1.i.i.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %12, i32 0, i32 2
  %152 = ptrtoint ptr %wValue1.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %152, i32 2)
  %153 = load i16, ptr %wValue1.i.i.i.i, align 1
  %154 = tail call i16 @llvm.bswap.i16(i16 %153) #8
  %wIndex3.i.i.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %12, i32 0, i32 3
  %155 = ptrtoint ptr %wIndex3.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %155, i32 2)
  %156 = load i16, ptr %wIndex3.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %156)
  %tobool.not.i66.i.i.i = icmp eq i16 %156, 0
  br i1 %tobool.not.i66.i.i.i, label %lor.lhs.false.i.i.i.i, label %sw.bb11.i.i.i.if.then36.i.i_crit_edge

sw.bb11.i.i.i.if.then36.i.i_crit_edge:            ; preds = %sw.bb11.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %sw.bb11.i.i.i
  %157 = ptrtoint ptr %wLength.i.i to i32
  call void @__asan_loadN_noabort(i32 %157, i32 2)
  %158 = load i16, ptr %wLength.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %158)
  %tobool5.not.i.i.i.i = icmp eq i16 %158, 0
  br i1 %tobool5.not.i.i.i.i, label %if.end.i69.i.i.i, label %lor.lhs.false.i.i.i.i.if.then36.i.i_crit_edge

lor.lhs.false.i.i.i.i.if.then36.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i.i

if.end.i69.i.i.i:                                 ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i.i.i.i = zext i16 %154 to i32
  %gadget.i68.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 18
  %159 = ptrtoint ptr %gadget.i68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %gadget.i68.i.i.i, align 4
  %isoch_delay.i.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %160, i32 0, i32 12
  %161 = ptrtoint ptr %isoch_delay.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %conv6.i.i.i.i, ptr %isoch_delay.i.i.i.i, align 8
  br label %sw.epilog

sw.default.i.i.i:                                 ; preds = %if.then23.i.i
  %162 = and i48 %bf.set16.sink.i.i, 32
  %tobool.not.i72.i.i.i = icmp eq i48 %162, 0
  br i1 %tobool.not.i72.i.i.i, label %sw.default.i.i.i.if.then36.i.i_crit_edge, label %if.then.i.i.i.i

sw.default.i.i.i.if.then36.i.i_crit_edge:         ; preds = %sw.default.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i.i

if.then.i.i.i.i:                                  ; preds = %sw.default.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %lock.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i.i.i) #8
  %163 = ptrtoint ptr %gadget_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %gadget_driver.i.i, align 4
  %setup.i.i.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %164, i32 0, i32 4
  %165 = ptrtoint ptr %setup.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %setup.i.i.i.i, align 4
  %gadget.i73.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 18
  %167 = ptrtoint ptr %gadget.i73.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %gadget.i73.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %166(ptr noundef %168, ptr noundef %12) #8
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i.i.i) #8
  br label %if.end26.i.i

if.else24.i.i:                                    ; preds = %if.end18.i.i
  %169 = and i48 %bf.set16.sink.i.i, 32
  %tobool.not.i.i.i = icmp eq i48 %169, 0
  br i1 %tobool.not.i.i.i, label %if.else24.i.i.if.then36.i.i_crit_edge, label %if.then.i.i.i

if.else24.i.i.if.then36.i.i_crit_edge:            ; preds = %if.else24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i.i

if.then.i.i.i:                                    ; preds = %if.else24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %lock.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i.i) #8
  %170 = ptrtoint ptr %gadget_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %gadget_driver.i.i, align 4
  %setup.i.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %171, i32 0, i32 4
  %172 = ptrtoint ptr %setup.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %setup.i.i.i, align 4
  %gadget.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 18
  %174 = ptrtoint ptr %gadget.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %gadget.i.i.i, align 4
  %call.i.i.i = tail call i32 %173(ptr noundef %175, ptr noundef %12) #8
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i.i) #8
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then.i.i.i, %if.then.i.i.i.i, %dwc3_ep0_delegate_req.exit64.i.i.i.i.if.end26.i.i_crit_edge, %if.end.i49.i.i.i, %dwc3_ep0_delegate_req.exit.i.i.i.i.if.end26.i.i_crit_edge, %sw.bb3.i.i.i, %sw.bb1.i.i.i
  %ret.0.i.i = phi i32 [ %call4.i.i.i, %sw.bb3.i.i.i ], [ %call2.i.i.i, %sw.bb1.i.i.i ], [ %call.i61.i.i.i.i, %dwc3_ep0_delegate_req.exit64.i.i.i.i.if.end26.i.i_crit_edge ], [ %ret.0.i.i.i.i.i, %if.end.i49.i.i.i ], [ %ret.0.i.i.i.i.i, %dwc3_ep0_delegate_req.exit.i.i.i.i.if.end26.i.i_crit_edge ], [ %call.i.i.i.i, %if.then.i.i.i.i ], [ %call.i.i.i, %if.then.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %ret.0.i.i)
  %cmp27.i.i = icmp eq i32 %ret.0.i.i, 32767
  br i1 %cmp27.i.i, label %out.thread11.i.i, label %if.end26.i.i.out.i.i_crit_edge

if.end26.i.i.out.i.i_crit_edge:                   ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i.i

out.thread11.i.i:                                 ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %176 = ptrtoint ptr %setup_packet_pending.i to i32
  call void @__asan_loadN_noabort(i32 %176, i32 6)
  %bf.load30.i.i = load i48, ptr %setup_packet_pending.i, align 4
  %bf.set32.i.i = or i48 %bf.load30.i.i, 35184372088832
  store i48 %bf.set32.i.i, ptr %setup_packet_pending.i, align 4
  br label %sw.epilog

out.i.i:                                          ; preds = %if.end26.i.i.out.i.i_crit_edge, %land.lhs.true.i.i.i.i.out.i.i_crit_edge
  %ret.1.i.i = phi i32 [ %ret.0.i.i, %if.end26.i.i.out.i.i_crit_edge ], [ %ret.0.i.i.i.i.i, %land.lhs.true.i.i.i.i.out.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i)
  %cmp34.i.i = icmp slt i32 %ret.1.i.i, 0
  br i1 %cmp34.i.i, label %out.i.i.if.then36.i.i_crit_edge, label %out.i.i.sw.epilog_crit_edge

out.i.i.sw.epilog_crit_edge:                      ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

out.i.i.if.then36.i.i_crit_edge:                  ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i.i

if.then36.i.i:                                    ; preds = %out.i.i.if.then36.i.i_crit_edge, %if.else24.i.i.if.then36.i.i_crit_edge, %sw.default.i.i.i.if.then36.i.i_crit_edge, %lor.lhs.false.i.i.i.i.if.then36.i.i_crit_edge, %sw.bb11.i.i.i.if.then36.i.i_crit_edge, %do.end.i57.i.i.i, %sw.bb9.i.i.i.if.then36.i.i_crit_edge, %sw.bb23.i.i.i.i.if.then36.i.i_crit_edge, %sw.bb7.i.i.i.if.then36.i.i_crit_edge, %do.end8.i.i.i.i, %do.end.i.i.i.i, %if.end6.i.i.i.i.i.if.then36.i.i_crit_edge, %sw.bb27.i.i.i.i.if.then36.i.i_crit_edge, %if.end.i.i.i.i.if.then36.i.i_crit_edge, %sw.bb.i.i.i.if.then36.i.i_crit_edge, %sw.bb.i.if.then36.i.i_crit_edge
  %eps.i.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 17
  %arrayidx.i.i.i = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 17, i32 1
  %177 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %178, i32 0, i32 9
  %179 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 1, ptr %flags.i.i.i, align 4
  %180 = ptrtoint ptr %eps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %eps.i.i.i, align 4
  %call.i2.i.i = tail call i32 @__dwc3_gadget_ep_set_halt(ptr noundef %181, i32 noundef 1, i32 noundef 0) #8
  %flags3.i.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %181, i32 0, i32 9
  %182 = ptrtoint ptr %flags3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 1, ptr %flags3.i.i.i, align 4
  %183 = ptrtoint ptr %setup_packet_pending.i to i32
  call void @__asan_loadN_noabort(i32 %183, i32 6)
  %bf.load.i3.i.i = load i48, ptr %setup_packet_pending.i, align 4
  %bf.clear.i.i.i = and i48 %bf.load.i3.i.i, -35184372088833
  store i48 %bf.clear.i.i.i, ptr %setup_packet_pending.i, align 4
  %pending_list.i.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %181, i32 0, i32 2
  %184 = ptrtoint ptr %pending_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile ptr, ptr %pending_list.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %185, %pending_list.i.i.i
  br i1 %cmp.i.not.i.i.i, label %if.then36.i.i.dwc3_ep0_stall_and_restart.exit.i.i_crit_edge, label %if.then.i6.i.i

if.then36.i.i.dwc3_ep0_stall_and_restart.exit.i.i_crit_edge: ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc3_ep0_stall_and_restart.exit.i.i

if.then.i6.i.i:                                   ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %186 = ptrtoint ptr %pending_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load volatile ptr, ptr %pending_list.i.i.i, align 4
  %cmp.not.i.i4.i.i = icmp eq ptr %187, %pending_list.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %187, i32 -56
  %spec.select.i.i5.i.i = select i1 %cmp.not.i.i4.i.i, ptr null, ptr %add.ptr.i.i.i.i
  tail call void @dwc3_gadget_giveback(ptr noundef %181, ptr noundef %spec.select.i.i5.i.i, i32 noundef -104) #8
  br label %dwc3_ep0_stall_and_restart.exit.i.i

dwc3_ep0_stall_and_restart.exit.i.i:              ; preds = %if.then.i6.i.i, %if.then36.i.i.dwc3_ep0_stall_and_restart.exit.i.i_crit_edge
  %188 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 1, ptr %ep0state.i, align 4
  tail call void @dwc3_ep0_out_start(ptr noundef %dwc) #8
  br label %sw.epilog

sw.bb3.i:                                         ; preds = %sw.bb
  %189 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %189, i32 4)
  %bf.load.i31.i = load i32, ptr %event, align 1
  %eps.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 17
  %190 = ptrtoint ptr %eps.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %eps.i.i, align 4
  %ep0_next_event.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 57
  %192 = ptrtoint ptr %ep0_next_event.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 3, ptr %ep0_next_event.i.i, align 4
  %ep0_trb.i32.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 1
  %193 = ptrtoint ptr %ep0_trb.i32.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %ep0_trb.i32.i, align 4
  tail call fastcc void @trace_dwc3_complete_trb(ptr noundef %191, ptr noundef %194) #8
  %pending_list.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %191, i32 0, i32 2
  %195 = ptrtoint ptr %pending_list.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load volatile ptr, ptr %pending_list.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %196, %pending_list.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %196, i32 -56
  %tobool.not98.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool.not.i33.i = or i1 %cmp.not.i.i.i, %tobool.not98.i.i
  br i1 %tobool.not.i33.i, label %sw.bb3.i.sw.epilog_crit_edge, label %if.end.i35.i

sw.bb3.i.sw.epilog_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i35.i:                                     ; preds = %sw.bb3.i
  %size.i.i = getelementptr inbounds %struct.dwc3_trb, ptr %194, i32 0, i32 2
  %197 = ptrtoint ptr %size.i.i to i32
  call void @__asan_loadN_noabort(i32 %197, i32 4)
  %198 = load i32, ptr %size.i.i, align 1
  %shr.mask.i.i = and i32 %198, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %shr.mask.i.i)
  %cmp.i34.i = icmp eq i32 %shr.mask.i.i, 536870912
  br i1 %cmp.i34.i, label %if.then2.i36.i, label %if.end8.i.i

if.then2.i36.i:                                   ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #10
  %199 = ptrtoint ptr %setup_packet_pending.i to i32
  call void @__asan_loadN_noabort(i32 %199, i32 6)
  %bf.load3.i.i = load i48, ptr %setup_packet_pending.i, align 4
  %bf.set.i.i = or i48 %bf.load3.i.i, 17179869184
  store i48 %bf.set.i.i, ptr %setup_packet_pending.i, align 4
  tail call void @dwc3_gadget_giveback(ptr noundef %191, ptr noundef nonnull %add.ptr.i.i.i, i32 noundef -104) #8
  br label %sw.epilog

if.end8.i.i:                                      ; preds = %if.end.i35.i
  %and10.i.i = and i32 %198, 16777215
  %length11.i.i = getelementptr i8, ptr %196, i32 -52
  %200 = ptrtoint ptr %length11.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %length11.i.i, align 4
  %sub.i.i = sub i32 %201, %and10.i.i
  %actual.i.i = getelementptr i8, ptr %196, i32 -4
  %202 = ptrtoint ptr %actual.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %actual.i.i, align 4
  %add.i.i = add i32 %sub.i.i, %203
  store i32 %add.i.i, ptr %actual.i.i, align 4
  %maxpacket.i.i = getelementptr inbounds %struct.usb_ep, ptr %191, i32 0, i32 7
  %204 = ptrtoint ptr %maxpacket.i.i to i32
  call void @__asan_loadN_noabort(i32 %204, i32 7)
  %bf.load13.i.i = load i56, ptr %maxpacket.i.i, align 2
  %bf.lshr14.i.i = lshr i56 %bf.load13.i.i, 40
  %bf.cast.i.i = trunc i56 %bf.lshr14.i.i to i32
  %sub15.i.i = add nsw i32 %bf.cast.i.i, -1
  %and16.i.i = and i32 %sub15.i.i, %201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %cmp17.i.i = icmp ne i32 %and16.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool20.not.i.i = icmp eq i32 %201, 0
  %or.cond.i.i = or i1 %tobool20.not.i.i, %cmp17.i.i
  br i1 %or.cond.i.i, label %if.end8.i.i.lor.lhs.false.i.i_crit_edge, label %land.lhs.true21.i.i

if.end8.i.i.lor.lhs.false.i.i_crit_edge:          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i.i

land.lhs.true21.i.i:                              ; preds = %if.end8.i.i
  %zero.i.i = getelementptr i8, ptr %196, i32 -32
  %205 = ptrtoint ptr %zero.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %bf.load22.i.i = load i32, ptr %zero.i.i, align 4
  %206 = and i32 %bf.load22.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool25.not.i.i = icmp eq i32 %206, 0
  br i1 %tobool25.not.i.i, label %land.lhs.true21.i.i.lor.lhs.false.i.i_crit_edge, label %land.lhs.true21.i.i.if.then31.i.i_crit_edge

land.lhs.true21.i.i.if.then31.i.i_crit_edge:      ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31.i.i

land.lhs.true21.i.i.lor.lhs.false.i.i_crit_edge:  ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true21.i.i.lor.lhs.false.i.i_crit_edge, %if.end8.i.i.lor.lhs.false.i.i_crit_edge
  %207 = ptrtoint ptr %setup_packet_pending.i to i32
  call void @__asan_loadN_noabort(i32 %207, i32 6)
  %bf.load26.i.i = load i48, ptr %setup_packet_pending.i, align 4
  %208 = and i48 %bf.load26.i.i, 17592186044416
  %tobool30.not.i.i = icmp eq i48 %208, 0
  br i1 %tobool30.not.i.i, label %lor.lhs.false.i.i.if.end49.i.i_crit_edge, label %lor.lhs.false.i.i.if.then31.i.i_crit_edge

lor.lhs.false.i.i.if.then31.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31.i.i

lor.lhs.false.i.i.if.end49.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i.i

if.then31.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then31.i.i_crit_edge, %land.lhs.true21.i.i.if.then31.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.dwc3_trb, ptr %194, i32 1
  %ctrl.i.i = getelementptr %struct.dwc3_trb, ptr %194, i32 1, i32 3
  %209 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_loadN_noabort(i32 %209, i32 4)
  %210 = load i32, ptr %ctrl.i.i, align 1
  %and32.i.i = and i32 %210, -2
  store i32 %and32.i.i, ptr %ctrl.i.i, align 1
  tail call fastcc void @trace_dwc3_complete_trb(ptr noundef %191, ptr noundef %incdec.ptr.i.i) #8
  %direction.i.i = getelementptr i8, ptr %196, i32 52
  %211 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %bf.load33.i.i = load i8, ptr %direction.i.i, align 4
  %212 = and i8 %bf.load33.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool37.not.i.i = icmp eq i8 %212, 0
  %arrayidx40.i.i = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 17, i32 1
  %eps.sink.i.i = select i1 %tobool37.not.i.i, ptr %eps.i.i, ptr %arrayidx40.i.i
  %213 = ptrtoint ptr %eps.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %eps.sink.i.i, align 4
  %trb_enqueue43.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %214, i32 0, i32 10
  %215 = ptrtoint ptr %trb_enqueue43.i.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 0, ptr %trb_enqueue43.i.i, align 4
  %216 = ptrtoint ptr %setup_packet_pending.i to i32
  call void @__asan_loadN_noabort(i32 %216, i32 6)
  %bf.load46.i.i = load i48, ptr %setup_packet_pending.i, align 4
  %bf.clear47.i.i = and i48 %bf.load46.i.i, -17592186044417
  store i48 %bf.clear47.i.i, ptr %setup_packet_pending.i, align 4
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %if.then31.i.i, %lor.lhs.false.i.i.if.end49.i.i_crit_edge
  %217 = and i32 %bf.load.i31.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool52.not.i.i = icmp eq i32 %217, 0
  br i1 %tobool52.not.i.i, label %if.end49.i.i.if.else59.i.i_crit_edge, label %land.lhs.true53.i.i

if.end49.i.i.if.else59.i.i_crit_edge:             ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else59.i.i

land.lhs.true53.i.i:                              ; preds = %if.end49.i.i
  %218 = ptrtoint ptr %actual.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %actual.i.i, align 4
  %220 = ptrtoint ptr %length11.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %length11.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %219, i32 %221)
  %cmp56.i.i = icmp ult i32 %219, %221
  br i1 %cmp56.i.i, label %if.then58.i.i, label %land.lhs.true53.i.i.if.else59.i.i_crit_edge

land.lhs.true53.i.i.if.else59.i.i_crit_edge:      ; preds = %land.lhs.true53.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else59.i.i

if.then58.i.i:                                    ; preds = %land.lhs.true53.i.i
  %arrayidx.i.i37.i = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 17, i32 1
  %222 = ptrtoint ptr %arrayidx.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %arrayidx.i.i37.i, align 4
  %flags.i.i38.i = getelementptr inbounds %struct.dwc3_ep, ptr %223, i32 0, i32 9
  %224 = ptrtoint ptr %flags.i.i38.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 1, ptr %flags.i.i38.i, align 4
  %225 = ptrtoint ptr %eps.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %eps.i.i, align 4
  %call.i.i39.i = tail call i32 @__dwc3_gadget_ep_set_halt(ptr noundef %226, i32 noundef 1, i32 noundef 0) #8
  %flags3.i.i40.i = getelementptr inbounds %struct.dwc3_ep, ptr %226, i32 0, i32 9
  %227 = ptrtoint ptr %flags3.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 1, ptr %flags3.i.i40.i, align 4
  %228 = ptrtoint ptr %setup_packet_pending.i to i32
  call void @__asan_loadN_noabort(i32 %228, i32 6)
  %bf.load.i.i42.i = load i48, ptr %setup_packet_pending.i, align 4
  %bf.clear.i.i43.i = and i48 %bf.load.i.i42.i, -35184372088833
  store i48 %bf.clear.i.i43.i, ptr %setup_packet_pending.i, align 4
  %pending_list.i.i44.i = getelementptr inbounds %struct.dwc3_ep, ptr %226, i32 0, i32 2
  %229 = ptrtoint ptr %pending_list.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load volatile ptr, ptr %pending_list.i.i44.i, align 4
  %cmp.i.not.i.i45.i = icmp eq ptr %230, %pending_list.i.i44.i
  br i1 %cmp.i.not.i.i45.i, label %if.then58.i.i.dwc3_ep0_stall_and_restart.exit.i51.i_crit_edge, label %if.then.i.i49.i

if.then58.i.i.dwc3_ep0_stall_and_restart.exit.i51.i_crit_edge: ; preds = %if.then58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc3_ep0_stall_and_restart.exit.i51.i

if.then.i.i49.i:                                  ; preds = %if.then58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %231 = ptrtoint ptr %pending_list.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load volatile ptr, ptr %pending_list.i.i44.i, align 4
  %cmp.not.i.i.i46.i = icmp eq ptr %232, %pending_list.i.i44.i
  %add.ptr.i.i.i47.i = getelementptr i8, ptr %232, i32 -56
  %spec.select.i.i.i48.i = select i1 %cmp.not.i.i.i46.i, ptr null, ptr %add.ptr.i.i.i47.i
  tail call void @dwc3_gadget_giveback(ptr noundef %226, ptr noundef %spec.select.i.i.i48.i, i32 noundef -104) #8
  br label %dwc3_ep0_stall_and_restart.exit.i51.i

dwc3_ep0_stall_and_restart.exit.i51.i:            ; preds = %if.then.i.i49.i, %if.then58.i.i.dwc3_ep0_stall_and_restart.exit.i51.i_crit_edge
  %233 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 1, ptr %ep0state.i, align 4
  tail call void @dwc3_ep0_out_start(ptr noundef %dwc) #8
  br label %sw.epilog

if.else59.i.i:                                    ; preds = %land.lhs.true53.i.i.if.else59.i.i_crit_edge, %if.end49.i.i.if.else59.i.i_crit_edge
  tail call void @dwc3_gadget_giveback(ptr noundef %191, ptr noundef nonnull %add.ptr.i.i.i, i32 noundef 0) #8
  br label %sw.epilog

sw.bb4.i:                                         ; preds = %sw.bb
  %eps.i52.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 17
  %234 = ptrtoint ptr %eps.i52.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %eps.i52.i, align 4
  %ep0_trb.i53.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 1
  %236 = ptrtoint ptr %ep0_trb.i53.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %ep0_trb.i53.i, align 4
  tail call fastcc void @trace_dwc3_complete_trb(ptr noundef %235, ptr noundef %237) #8
  %pending_list.i54.i = getelementptr inbounds %struct.dwc3_ep, ptr %235, i32 0, i32 2
  %238 = ptrtoint ptr %pending_list.i54.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load volatile ptr, ptr %pending_list.i54.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %239, %pending_list.i54.i
  br i1 %cmp.i.not.i.i, label %sw.bb4.i.if.end.i57.i_crit_edge, label %if.then.i.i

sw.bb4.i.if.end.i57.i_crit_edge:                  ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i57.i

if.then.i.i:                                      ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #10
  %240 = ptrtoint ptr %pending_list.i54.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load volatile ptr, ptr %pending_list.i54.i, align 4
  %cmp.not.i.i55.i = icmp eq ptr %241, %pending_list.i54.i
  %add.ptr.i.i56.i = getelementptr i8, ptr %241, i32 -56
  %spec.select.i.i.i = select i1 %cmp.not.i.i55.i, ptr null, ptr %add.ptr.i.i56.i
  tail call void @dwc3_gadget_giveback(ptr noundef %235, ptr noundef %spec.select.i.i.i, i32 noundef 0) #8
  br label %if.end.i57.i

if.end.i57.i:                                     ; preds = %if.then.i.i, %sw.bb4.i.if.end.i57.i_crit_edge
  %test_mode.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 69
  %242 = ptrtoint ptr %test_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %test_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %tobool3.not.i.i = icmp eq i8 %243, 0
  br i1 %tobool3.not.i.i, label %if.end.i57.i.if.end11.i.i_crit_edge, label %if.then4.i.i

if.end.i57.i.if.end11.i.i_crit_edge:              ; preds = %if.end.i57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i

if.then4.i.i:                                     ; preds = %if.end.i57.i
  %test_mode_nr.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 70
  %244 = ptrtoint ptr %test_mode_nr.i.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %test_mode_nr.i.i, align 1
  %conv.i.i = zext i8 %245 to i32
  %call5.i.i = tail call i32 @dwc3_gadget_set_test_mode(ptr noundef %dwc, i32 noundef %conv.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp.i58.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp.i58.i, label %do.end.i.i, label %if.then4.i.i.if.end11.i.i_crit_edge

if.then4.i.i.if.end11.i.i_crit_edge:              ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i

do.end.i.i:                                       ; preds = %if.then4.i.i
  %dev.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 12
  %246 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %dev.i.i, align 4
  %248 = ptrtoint ptr %test_mode_nr.i.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %test_mode_nr.i.i, align 1
  %conv9.i.i = zext i8 %249 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %247, ptr noundef nonnull @.str.17, i32 noundef %conv9.i.i) #11
  %arrayidx.i.i59.i = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 17, i32 1
  %250 = ptrtoint ptr %arrayidx.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %arrayidx.i.i59.i, align 4
  %flags.i.i60.i = getelementptr inbounds %struct.dwc3_ep, ptr %251, i32 0, i32 9
  %252 = ptrtoint ptr %flags.i.i60.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 1, ptr %flags.i.i60.i, align 4
  %253 = ptrtoint ptr %eps.i52.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %eps.i52.i, align 4
  %call.i.i61.i = tail call i32 @__dwc3_gadget_ep_set_halt(ptr noundef %254, i32 noundef 1, i32 noundef 0) #8
  %flags3.i.i62.i = getelementptr inbounds %struct.dwc3_ep, ptr %254, i32 0, i32 9
  %255 = ptrtoint ptr %flags3.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 1, ptr %flags3.i.i62.i, align 4
  %256 = ptrtoint ptr %setup_packet_pending.i to i32
  call void @__asan_loadN_noabort(i32 %256, i32 6)
  %bf.load.i.i64.i = load i48, ptr %setup_packet_pending.i, align 4
  %bf.clear.i.i65.i = and i48 %bf.load.i.i64.i, -35184372088833
  store i48 %bf.clear.i.i65.i, ptr %setup_packet_pending.i, align 4
  %pending_list.i.i66.i = getelementptr inbounds %struct.dwc3_ep, ptr %254, i32 0, i32 2
  %257 = ptrtoint ptr %pending_list.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load volatile ptr, ptr %pending_list.i.i66.i, align 4
  %cmp.i.not.i.i67.i = icmp eq ptr %258, %pending_list.i.i66.i
  br i1 %cmp.i.not.i.i67.i, label %do.end.i.i.dwc3_ep0_stall_and_restart.exit.i73.i_crit_edge, label %if.then.i.i71.i

do.end.i.i.dwc3_ep0_stall_and_restart.exit.i73.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc3_ep0_stall_and_restart.exit.i73.i

if.then.i.i71.i:                                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %259 = ptrtoint ptr %pending_list.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load volatile ptr, ptr %pending_list.i.i66.i, align 4
  %cmp.not.i.i.i68.i = icmp eq ptr %260, %pending_list.i.i66.i
  %add.ptr.i.i.i69.i = getelementptr i8, ptr %260, i32 -56
  %spec.select.i.i.i70.i = select i1 %cmp.not.i.i.i68.i, ptr null, ptr %add.ptr.i.i.i69.i
  tail call void @dwc3_gadget_giveback(ptr noundef %254, ptr noundef %spec.select.i.i.i70.i, i32 noundef -104) #8
  br label %dwc3_ep0_stall_and_restart.exit.i73.i

dwc3_ep0_stall_and_restart.exit.i73.i:            ; preds = %if.then.i.i71.i, %do.end.i.i.dwc3_ep0_stall_and_restart.exit.i73.i_crit_edge
  %261 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 1, ptr %ep0state.i, align 4
  tail call void @dwc3_ep0_out_start(ptr noundef %dwc) #8
  br label %sw.epilog

if.end11.i.i:                                     ; preds = %if.then4.i.i.if.end11.i.i_crit_edge, %if.end.i57.i.if.end11.i.i_crit_edge
  %size.i74.i = getelementptr inbounds %struct.dwc3_trb, ptr %237, i32 0, i32 2
  %262 = ptrtoint ptr %size.i74.i to i32
  call void @__asan_loadN_noabort(i32 %262, i32 4)
  %263 = load i32, ptr %size.i74.i, align 1
  %shr.mask.i75.i = and i32 %263, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %shr.mask.i75.i)
  %cmp12.i.i = icmp eq i32 %shr.mask.i75.i, 536870912
  br i1 %cmp12.i.i, label %if.then14.i.i, label %if.end11.i.i.if.end15.i.i_crit_edge

if.end11.i.i.if.end15.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

if.then14.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %264 = ptrtoint ptr %setup_packet_pending.i to i32
  call void @__asan_loadN_noabort(i32 %264, i32 6)
  %bf.load.i77.i = load i48, ptr %setup_packet_pending.i, align 4
  %bf.set.i78.i = or i48 %bf.load.i77.i, 17179869184
  store i48 %bf.set.i78.i, ptr %setup_packet_pending.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then14.i.i, %if.end11.i.i.if.end15.i.i_crit_edge
  %265 = ptrtoint ptr %ep0state.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 1, ptr %ep0state.i, align 4
  tail call void @dwc3_ep0_out_start(ptr noundef %dwc) #8
  br label %sw.epilog

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 950, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %9) #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %bf.lshr.i22 = lshr i32 %bf.load, 16
  %bf.clear.i23 = and i32 %bf.lshr.i22, 15
  %266 = zext i32 %bf.clear.i23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %266, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %bf.clear.i23, label %sw.bb4.sw.epilog_crit_edge [
    i32 1, label %sw.bb.i25
    i32 2, label %sw.bb12.i
  ]

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.i25:                                        ; preds = %sw.bb4
  %ep0_expect_in.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %267 = ptrtoint ptr %ep0_expect_in.i to i32
  call void @__asan_loadN_noabort(i32 %267, i32 6)
  %bf.load1.i24 = load i48, ptr %ep0_expect_in.i, align 4
  %bf.lshr2.i = lshr i48 %bf.load1.i24, 43
  %268 = trunc i48 %bf.lshr2.i to i32
  %bf.cast.i = and i32 %268, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.cast.i, i32 %bf.clear)
  %cmp.not.i = icmp eq i32 %bf.cast.i, %bf.clear
  br i1 %cmp.not.i, label %sw.bb.i25.sw.epilog_crit_edge, label %if.then.i

sw.bb.i25.sw.epilog_crit_edge:                    ; preds = %sw.bb.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb.i25
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i26 = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 17, i32 %bf.cast.i
  %269 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %arrayidx.i26, align 4
  %dev.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 12
  %271 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %272, ptr noundef nonnull @.str.19) #11
  tail call fastcc void @dwc3_ep0_end_control_data(ptr noundef %270) #8
  tail call fastcc void @dwc3_ep0_stall_and_restart(ptr noundef %dwc) #8
  br label %sw.epilog

sw.bb12.i:                                        ; preds = %sw.bb4
  %ep0_next_event.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 57
  %273 = ptrtoint ptr %ep0_next_event.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %ep0_next_event.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %274)
  %cmp13.not.i = icmp eq i32 %274, 3
  br i1 %cmp13.not.i, label %if.end15.i, label %sw.bb12.i.sw.epilog_crit_edge

sw.bb12.i.sw.epilog_crit_edge:                    ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end15.i:                                       ; preds = %sw.bb12.i
  %ep0state.i27 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 58
  %275 = ptrtoint ptr %ep0state.i27 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 3, ptr %ep0state.i27, align 4
  %delayed_status.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %276 = ptrtoint ptr %delayed_status.i to i32
  call void @__asan_loadN_noabort(i32 %276, i32 6)
  %bf.load16.i = load i48, ptr %delayed_status.i, align 4
  %277 = and i48 %bf.load16.i, 35184372088832
  %tobool.not.i = icmp eq i48 %277, 0
  br i1 %tobool.not.i, label %if.end74.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end15.i
  %eps22.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 17
  %278 = ptrtoint ptr %eps22.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %eps22.i, align 4
  %280 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %280, i32 4)
  %bf.load24.i = load i32, ptr %event, align 1
  %281 = and i32 %bf.load24.i, 2080374784
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %281)
  %cmp27.not.i = icmp eq i32 %281, 67108864
  br i1 %cmp27.not.i, label %if.then20.i.if.end60.i_crit_edge, label %land.rhs.i

if.then20.i.if.end60.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.i

land.rhs.i:                                       ; preds = %if.then20.i
  %.b95.i = load i1, ptr @dwc3_ep0_xfernotready.__already_done, align 1
  br i1 %.b95.i, label %land.rhs.i.if.end60.i_crit_edge, label %if.then35.i, !prof !74

land.rhs.i.if.end60.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.i

if.then35.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dwc3_ep0_xfernotready.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1128, i32 noundef 9, ptr noundef null) #8
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then35.i, %land.rhs.i.if.end60.i_crit_edge, %if.then20.i.if.end60.i_crit_edge
  %pending_list.i = getelementptr inbounds %struct.dwc3_ep, ptr %279, i32 0, i32 2
  %282 = ptrtoint ptr %pending_list.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load volatile ptr, ptr %pending_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %283, %pending_list.i
  br i1 %cmp.i.not.i, label %if.end60.i.sw.epilog_crit_edge, label %if.then69.i

if.end60.i.sw.epilog_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then69.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  %284 = ptrtoint ptr %delayed_status.i to i32
  call void @__asan_loadN_noabort(i32 %284, i32 6)
  %bf.load71.i = load i48, ptr %delayed_status.i, align 4
  %bf.clear72.i = and i48 %bf.load71.i, -35184372088833
  store i48 %bf.clear72.i, ptr %delayed_status.i, align 4
  %gadget.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 18
  %285 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %gadget.i, align 4
  tail call void @usb_gadget_set_state(ptr noundef %286, i32 noundef 7) #8
  %287 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %287, i32 4)
  %bf.load.i.i28 = load i32, ptr %event, align 1
  %bf.lshr.i.i = lshr i32 %bf.load.i.i28, 26
  %bf.clear.i.i = and i32 %bf.lshr.i.i, 31
  %arrayidx.i.i = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 17, i32 %bf.clear.i.i
  %288 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %arrayidx.i.i, align 4
  tail call fastcc void @__dwc3_ep0_do_control_status(ptr noundef %289) #8
  br label %sw.epilog

if.end74.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %290 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %290, i32 4)
  %bf.load.i96.i = load i32, ptr %event, align 1
  %bf.lshr.i97.i = lshr i32 %bf.load.i96.i, 26
  %bf.clear.i98.i = and i32 %bf.lshr.i97.i, 31
  %arrayidx.i99.i = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 17, i32 %bf.clear.i98.i
  %291 = ptrtoint ptr %arrayidx.i99.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %arrayidx.i99.i, align 4
  tail call fastcc void @__dwc3_ep0_do_control_status(ptr noundef %292) #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %293 = and i32 %bf.load, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %293)
  %cmp = icmp eq i32 %293, 2048
  br i1 %cmp, label %if.then, label %sw.bb6.sw.epilog_crit_edge

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.dwc3_ep, ptr %2, i32 0, i32 9
  %294 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %flags, align 4
  %and13 = and i32 %295, -25
  store i32 %and13, ptr %flags, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb6.sw.epilog_crit_edge, %if.end74.i, %if.then69.i, %if.end60.i.sw.epilog_crit_edge, %sw.bb12.i.sw.epilog_crit_edge, %if.then.i, %sw.bb.i25.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %do.end.i, %if.end15.i.i, %dwc3_ep0_stall_and_restart.exit.i73.i, %if.else59.i.i, %dwc3_ep0_stall_and_restart.exit.i51.i, %if.then2.i36.i, %sw.bb3.i.sw.epilog_crit_edge, %dwc3_ep0_stall_and_restart.exit.i.i, %out.i.i.sw.epilog_crit_edge, %out.thread11.i.i, %if.end.i69.i.i.i, %if.end7.i.i.i.i, %if.then28.i.i.i.i, %if.else.i.i.i.i, %if.then12.i36.i.i.i, %sw.epilog.i.i.i.i, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dwc3_ep0_do_control_data(ptr nocapture noundef %dwc, ptr noundef %dep, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  %params.i287 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %params.i265 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %params.i233 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %params.i = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 12
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %number, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %direction = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 13
  %2 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %direction, align 4
  %bf.shl = select i1 %tobool.not, i8 0, i8 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %direction, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then6, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 7
  %5 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %5, i32 7)
  %bf.load7 = load i56, ptr %maxpacket, align 2
  %bf.lshr8 = lshr i56 %bf.load7, 40
  %bf.cast9 = trunc i56 %bf.lshr8 to i32
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %trb_length.0 = phi i32 [ 0, %if.then.if.end_crit_edge ], [ %bf.cast9, %if.then6 ]
  %bounce_addr = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 6
  %6 = ptrtoint ptr %bounce_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bounce_addr, align 4
  %dwc1.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 7
  %8 = ptrtoint ptr %dwc1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dwc1.i, align 4
  %ep0_trb.i = getelementptr inbounds %struct.dwc3, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ep0_trb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep0_trb.i, align 4
  %trb_enqueue.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 10
  %12 = ptrtoint ptr %trb_enqueue.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %trb_enqueue.i, align 4
  %idxprom.i = zext i8 %13 to i32
  %arrayidx.i = getelementptr %struct.dwc3_trb, ptr %11, i32 %idxprom.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %7, ptr %arrayidx.i, align 1
  %bph.i = getelementptr %struct.dwc3_trb, ptr %11, i32 %idxprom.i, i32 1
  %15 = ptrtoint ptr %bph.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 0, ptr %bph.i, align 1
  %size.i = getelementptr %struct.dwc3_trb, ptr %11, i32 %idxprom.i, i32 2
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %trb_length.0, ptr %size.i, align 1
  %ctrl.i = getelementptr %struct.dwc3_trb, ptr %11, i32 %idxprom.i, i32 3
  %17 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 3155, ptr %ctrl.i, align 1
  tail call fastcc void @trace_dwc3_prepare_trb(ptr noundef %dep, ptr noundef %arrayidx.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i) #8
  %flags.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 9
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dwc3_ep0_start_trans.exit_crit_edge

if.end.dwc3_ep0_start_trans.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc3_ep0_start_trans.exit

if.end.i:                                         ; preds = %if.end
  %20 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %params.i, i32 0, i32 1
  %21 = ptrtoint ptr %dwc1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dwc1.i, align 4
  %ep0_trb_addr.i = getelementptr inbounds %struct.dwc3, ptr %22, i32 0, i32 5
  %23 = call ptr @memset(ptr %params.i, i32 0, i32 12)
  %24 = ptrtoint ptr %ep0_trb_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ep0_trb_addr.i, align 4
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %20, align 4
  %call.i = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %dep, i32 noundef 6, ptr noundef nonnull %params.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.dwc3_ep0_start_trans.exit_crit_edge, label %if.end6.i

if.end.i.dwc3_ep0_start_trans.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc3_ep0_start_trans.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %ep0_next_event.i = getelementptr inbounds %struct.dwc3, ptr %22, i32 0, i32 57
  %27 = ptrtoint ptr %ep0_next_event.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %ep0_next_event.i, align 4
  br label %dwc3_ep0_start_trans.exit

dwc3_ep0_start_trans.exit:                        ; preds = %if.end6.i, %if.end.i.dwc3_ep0_start_trans.exit_crit_edge, %if.end.dwc3_ep0_start_trans.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end6.i ], [ 0, %if.end.dwc3_ep0_start_trans.exit_crit_edge ], [ %call.i, %if.end.i.dwc3_ep0_start_trans.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i) #8
  br label %if.end126

if.else:                                          ; preds = %entry
  %maxpacket13 = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 7
  %28 = ptrtoint ptr %maxpacket13 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 7)
  %bf.load14 = load i56, ptr %maxpacket13, align 2
  %bf.lshr15 = lshr i56 %bf.load14, 40
  %bf.cast16 = trunc i56 %bf.lshr15 to i32
  %sub = add nsw i32 %bf.cast16, -1
  %and = and i32 %sub, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp17 = icmp eq i32 %and, 0
  br i1 %cmp17, label %land.lhs.true66, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %29 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %number, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp19 = icmp eq i8 %30, 0
  br i1 %cmp19, label %if.then21, label %land.lhs.true.if.else106_crit_edge

land.lhs.true.if.else106_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else106

if.then21:                                        ; preds = %land.lhs.true
  %sysdev = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 13
  %31 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sysdev, align 4
  %call26 = tail call i32 @usb_gadget_map_request_by_dev(ptr noundef %32, ptr noundef %req, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then21.cleanup153_crit_edge

if.then21.cleanup153_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup153

if.end29:                                         ; preds = %if.then21
  %33 = ptrtoint ptr %maxpacket13 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 7)
  %bf.load32 = load i56, ptr %maxpacket13, align 2
  %bf.lshr33 = lshr i56 %bf.load32, 40
  %bf.cast34 = trunc i56 %bf.lshr33 to i32
  %34 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length, align 4
  %rem37 = urem i32 %35, %bf.cast34
  %ep0_bounced = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %36 = ptrtoint ptr %ep0_bounced to i32
  call void @__asan_loadN_noabort(i32 %36, i32 6)
  %bf.load38 = load i48, ptr %ep0_bounced, align 4
  %bf.set40 = or i48 %bf.load38, 17592186044416
  store i48 %bf.set40, ptr %ep0_bounced, align 4
  %dma = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %37 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma, align 4
  %39 = load i32, ptr %length, align 4
  %dwc1.i215 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 7
  %40 = ptrtoint ptr %dwc1.i215 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dwc1.i215, align 4
  %ep0_trb.i216 = getelementptr inbounds %struct.dwc3, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %ep0_trb.i216 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ep0_trb.i216, align 4
  %trb_enqueue.i217 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 10
  %44 = ptrtoint ptr %trb_enqueue.i217 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %trb_enqueue.i217, align 4
  %inc.i = add i8 %45, 1
  store i8 %inc.i, ptr %trb_enqueue.i217, align 4
  %idxprom.i218 = zext i8 %45 to i32
  %arrayidx.i219 = getelementptr %struct.dwc3_trb, ptr %43, i32 %idxprom.i218
  %46 = ptrtoint ptr %arrayidx.i219 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %38, ptr %arrayidx.i219, align 1
  %bph.i220 = getelementptr %struct.dwc3_trb, ptr %43, i32 %idxprom.i218, i32 1
  %47 = ptrtoint ptr %bph.i220 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 0, ptr %bph.i220, align 1
  %size.i221 = getelementptr %struct.dwc3_trb, ptr %43, i32 %idxprom.i218, i32 2
  %48 = ptrtoint ptr %size.i221 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %39, ptr %size.i221, align 1
  %ctrl.i222 = getelementptr %struct.dwc3_trb, ptr %43, i32 %idxprom.i218, i32 3
  %49 = ptrtoint ptr %ctrl.i222 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 1109, ptr %ctrl.i222, align 1
  tail call fastcc void @trace_dwc3_prepare_trb(ptr noundef %dep, ptr noundef %arrayidx.i219) #8
  %ep0_trb = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 1
  %50 = ptrtoint ptr %ep0_trb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ep0_trb, align 4
  %52 = ptrtoint ptr %trb_enqueue.i217 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %trb_enqueue.i217, align 4
  %conv44 = zext i8 %53 to i32
  %sub45 = add nsw i32 %conv44, -1
  %arrayidx = getelementptr %struct.dwc3_trb, ptr %51, i32 %sub45
  %trb = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 10
  %54 = ptrtoint ptr %trb to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx, ptr %trb, align 4
  %bounce_addr46 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 6
  %55 = ptrtoint ptr %bounce_addr46 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bounce_addr46, align 4
  %sub47 = sub nsw i32 %bf.cast34, %rem37
  %57 = ptrtoint ptr %dwc1.i215 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dwc1.i215, align 4
  %ep0_trb.i225 = getelementptr inbounds %struct.dwc3, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %ep0_trb.i225 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ep0_trb.i225, align 4
  %61 = load i8, ptr %trb_enqueue.i217, align 4
  %idxprom.i227 = zext i8 %61 to i32
  %arrayidx.i228 = getelementptr %struct.dwc3_trb, ptr %60, i32 %idxprom.i227
  %62 = ptrtoint ptr %arrayidx.i228 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %56, ptr %arrayidx.i228, align 1
  %bph.i229 = getelementptr %struct.dwc3_trb, ptr %60, i32 %idxprom.i227, i32 1
  %63 = ptrtoint ptr %bph.i229 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 0, ptr %bph.i229, align 1
  %size.i230 = getelementptr %struct.dwc3_trb, ptr %60, i32 %idxprom.i227, i32 2
  %64 = ptrtoint ptr %size.i230 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %sub47, ptr %size.i230, align 1
  %ctrl.i231 = getelementptr %struct.dwc3_trb, ptr %60, i32 %idxprom.i227, i32 3
  %65 = ptrtoint ptr %ctrl.i231 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 3155, ptr %ctrl.i231, align 1
  tail call fastcc void @trace_dwc3_prepare_trb(ptr noundef %dep, ptr noundef %arrayidx.i228) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i233) #8
  %flags.i234 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 9
  %66 = ptrtoint ptr %flags.i234 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i234, align 4
  %and.i235 = and i32 %67, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i235)
  %tobool.not.i236 = icmp eq i32 %and.i235, 0
  br i1 %tobool.not.i236, label %if.end.i241, label %if.end29.cleanup.thread_crit_edge

if.end29.cleanup.thread_crit_edge:                ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end.i241:                                      ; preds = %if.end29
  %68 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %params.i233, i32 0, i32 1
  %69 = ptrtoint ptr %dwc1.i215 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dwc1.i215, align 4
  %ep0_trb_addr.i238 = getelementptr inbounds %struct.dwc3, ptr %70, i32 0, i32 5
  %71 = call ptr @memset(ptr %params.i233, i32 0, i32 12)
  %72 = ptrtoint ptr %ep0_trb_addr.i238 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ep0_trb_addr.i238, align 4
  %74 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %68, align 4
  %call.i239 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %dep, i32 noundef 6, ptr noundef nonnull %params.i233) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239)
  %cmp.i240 = icmp slt i32 %call.i239, 0
  br i1 %cmp.i240, label %if.end.i241.cleanup.thread_crit_edge, label %if.end6.i243

if.end.i241.cleanup.thread_crit_edge:             ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end6.i243:                                     ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #10
  %ep0_next_event.i242 = getelementptr inbounds %struct.dwc3, ptr %70, i32 0, i32 57
  %75 = ptrtoint ptr %ep0_next_event.i242 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %ep0_next_event.i242, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end6.i243, %if.end.i241.cleanup.thread_crit_edge, %if.end29.cleanup.thread_crit_edge
  %retval.0.i244 = phi i32 [ 0, %if.end6.i243 ], [ 0, %if.end29.cleanup.thread_crit_edge ], [ %call.i239, %if.end.i241.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i233) #8
  br label %if.end126

land.lhs.true66:                                  ; preds = %if.else
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %76 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %76)
  %bf.load68 = load i32, ptr %zero, align 4
  %77 = and i32 %bf.load68, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool71.not = icmp eq i32 %77, 0
  br i1 %tobool71.not, label %land.lhs.true66.if.else106_crit_edge, label %if.then72

land.lhs.true66.if.else106_crit_edge:             ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else106

if.then72:                                        ; preds = %land.lhs.true66
  %sysdev73 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 13
  %78 = ptrtoint ptr %sysdev73 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sysdev73, align 4
  %80 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %number, align 2
  %conv76 = zext i8 %81 to i32
  %call77 = tail call i32 @usb_gadget_map_request_by_dev(ptr noundef %79, ptr noundef %req, i32 noundef %conv76) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.then72.cleanup153_crit_edge

if.then72.cleanup153_crit_edge:                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup153

if.end80:                                         ; preds = %if.then72
  %dma82 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %82 = ptrtoint ptr %dma82 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dma82, align 4
  %84 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %length, align 4
  %dwc1.i246 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 7
  %86 = ptrtoint ptr %dwc1.i246 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dwc1.i246, align 4
  %ep0_trb.i247 = getelementptr inbounds %struct.dwc3, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %ep0_trb.i247 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ep0_trb.i247, align 4
  %trb_enqueue.i248 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 10
  %90 = ptrtoint ptr %trb_enqueue.i248 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %trb_enqueue.i248, align 4
  %inc.i249 = add i8 %91, 1
  store i8 %inc.i249, ptr %trb_enqueue.i248, align 4
  %idxprom.i250 = zext i8 %91 to i32
  %arrayidx.i251 = getelementptr %struct.dwc3_trb, ptr %89, i32 %idxprom.i250
  %92 = ptrtoint ptr %arrayidx.i251 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %83, ptr %arrayidx.i251, align 1
  %bph.i252 = getelementptr %struct.dwc3_trb, ptr %89, i32 %idxprom.i250, i32 1
  %93 = ptrtoint ptr %bph.i252 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 0, ptr %bph.i252, align 1
  %size.i253 = getelementptr %struct.dwc3_trb, ptr %89, i32 %idxprom.i250, i32 2
  %94 = ptrtoint ptr %size.i253 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 %85, ptr %size.i253, align 1
  %ctrl.i254 = getelementptr %struct.dwc3_trb, ptr %89, i32 %idxprom.i250, i32 3
  %95 = ptrtoint ptr %ctrl.i254 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 1109, ptr %ctrl.i254, align 1
  tail call fastcc void @trace_dwc3_prepare_trb(ptr noundef %dep, ptr noundef %arrayidx.i251) #8
  %ep0_trb85 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 1
  %96 = ptrtoint ptr %ep0_trb85 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ep0_trb85, align 4
  %98 = ptrtoint ptr %trb_enqueue.i248 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %trb_enqueue.i248, align 4
  %conv87 = zext i8 %99 to i32
  %sub88 = add nsw i32 %conv87, -1
  %arrayidx89 = getelementptr %struct.dwc3_trb, ptr %97, i32 %sub88
  %trb90 = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 10
  %100 = ptrtoint ptr %trb90 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %arrayidx89, ptr %trb90, align 4
  %101 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load92 = load i8, ptr %direction, align 4
  %102 = and i8 %bf.load92, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool96.not = icmp eq i8 %102, 0
  br i1 %tobool96.not, label %if.then97, label %if.end80.if.end103_crit_edge

if.end80.if.end103_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then97:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %maxpacket13 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 7)
  %bf.load100 = load i56, ptr %maxpacket13, align 2
  %bf.lshr101 = lshr i56 %bf.load100, 40
  %bf.cast102 = trunc i56 %bf.lshr101 to i32
  br label %if.end103

if.end103:                                        ; preds = %if.then97, %if.end80.if.end103_crit_edge
  %trb_length.1 = phi i32 [ 0, %if.end80.if.end103_crit_edge ], [ %bf.cast102, %if.then97 ]
  %bounce_addr104 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 6
  %104 = ptrtoint ptr %bounce_addr104 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bounce_addr104, align 4
  %106 = ptrtoint ptr %dwc1.i246 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dwc1.i246, align 4
  %ep0_trb.i257 = getelementptr inbounds %struct.dwc3, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %ep0_trb.i257 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ep0_trb.i257, align 4
  %110 = ptrtoint ptr %trb_enqueue.i248 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %trb_enqueue.i248, align 4
  %idxprom.i259 = zext i8 %111 to i32
  %arrayidx.i260 = getelementptr %struct.dwc3_trb, ptr %109, i32 %idxprom.i259
  %112 = ptrtoint ptr %arrayidx.i260 to i32
  call void @__asan_storeN_noabort(i32 %112, i32 4)
  store i32 %105, ptr %arrayidx.i260, align 1
  %bph.i261 = getelementptr %struct.dwc3_trb, ptr %109, i32 %idxprom.i259, i32 1
  %113 = ptrtoint ptr %bph.i261 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 0, ptr %bph.i261, align 1
  %size.i262 = getelementptr %struct.dwc3_trb, ptr %109, i32 %idxprom.i259, i32 2
  %114 = ptrtoint ptr %size.i262 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 4)
  store i32 %trb_length.1, ptr %size.i262, align 1
  %ctrl.i263 = getelementptr %struct.dwc3_trb, ptr %109, i32 %idxprom.i259, i32 3
  %115 = ptrtoint ptr %ctrl.i263 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 4)
  store i32 3155, ptr %ctrl.i263, align 1
  tail call fastcc void @trace_dwc3_prepare_trb(ptr noundef %dep, ptr noundef %arrayidx.i260) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i265) #8
  %flags.i266 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 9
  %116 = ptrtoint ptr %flags.i266 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flags.i266, align 4
  %and.i267 = and i32 %117, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i267)
  %tobool.not.i268 = icmp eq i32 %and.i267, 0
  br i1 %tobool.not.i268, label %if.end.i273, label %if.end103.dwc3_ep0_start_trans.exit277_crit_edge

if.end103.dwc3_ep0_start_trans.exit277_crit_edge: ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc3_ep0_start_trans.exit277

if.end.i273:                                      ; preds = %if.end103
  %118 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %params.i265, i32 0, i32 1
  %119 = ptrtoint ptr %dwc1.i246 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dwc1.i246, align 4
  %ep0_trb_addr.i270 = getelementptr inbounds %struct.dwc3, ptr %120, i32 0, i32 5
  %121 = call ptr @memset(ptr %params.i265, i32 0, i32 12)
  %122 = ptrtoint ptr %ep0_trb_addr.i270 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ep0_trb_addr.i270, align 4
  %124 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %118, align 4
  %call.i271 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %dep, i32 noundef 6, ptr noundef nonnull %params.i265) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i271)
  %cmp.i272 = icmp slt i32 %call.i271, 0
  br i1 %cmp.i272, label %if.end.i273.dwc3_ep0_start_trans.exit277_crit_edge, label %if.end6.i275

if.end.i273.dwc3_ep0_start_trans.exit277_crit_edge: ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc3_ep0_start_trans.exit277

if.end6.i275:                                     ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #10
  %ep0_next_event.i274 = getelementptr inbounds %struct.dwc3, ptr %120, i32 0, i32 57
  %125 = ptrtoint ptr %ep0_next_event.i274 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %ep0_next_event.i274, align 4
  br label %dwc3_ep0_start_trans.exit277

dwc3_ep0_start_trans.exit277:                     ; preds = %if.end6.i275, %if.end.i273.dwc3_ep0_start_trans.exit277_crit_edge, %if.end103.dwc3_ep0_start_trans.exit277_crit_edge
  %retval.0.i276 = phi i32 [ 0, %if.end6.i275 ], [ 0, %if.end103.dwc3_ep0_start_trans.exit277_crit_edge ], [ %call.i271, %if.end.i273.dwc3_ep0_start_trans.exit277_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i265) #8
  br label %if.end126

if.else106:                                       ; preds = %land.lhs.true66.if.else106_crit_edge, %land.lhs.true.if.else106_crit_edge
  %sysdev107 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 13
  %126 = ptrtoint ptr %sysdev107 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %sysdev107, align 4
  %128 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %number, align 2
  %conv110 = zext i8 %129 to i32
  %call111 = tail call i32 @usb_gadget_map_request_by_dev(ptr noundef %127, ptr noundef %req, i32 noundef %conv110) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %if.else106.cleanup153_crit_edge

if.else106.cleanup153_crit_edge:                  ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup153

if.end114:                                        ; preds = %if.else106
  %dma116 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %130 = ptrtoint ptr %dma116 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %dma116, align 4
  %132 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %length, align 4
  %dwc1.i278 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 7
  %134 = ptrtoint ptr %dwc1.i278 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dwc1.i278, align 4
  %ep0_trb.i279 = getelementptr inbounds %struct.dwc3, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %ep0_trb.i279 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ep0_trb.i279, align 4
  %trb_enqueue.i280 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 10
  %138 = ptrtoint ptr %trb_enqueue.i280 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %trb_enqueue.i280, align 4
  %idxprom.i281 = zext i8 %139 to i32
  %arrayidx.i282 = getelementptr %struct.dwc3_trb, ptr %137, i32 %idxprom.i281
  %140 = ptrtoint ptr %arrayidx.i282 to i32
  call void @__asan_storeN_noabort(i32 %140, i32 4)
  store i32 %131, ptr %arrayidx.i282, align 1
  %bph.i283 = getelementptr %struct.dwc3_trb, ptr %137, i32 %idxprom.i281, i32 1
  %141 = ptrtoint ptr %bph.i283 to i32
  call void @__asan_storeN_noabort(i32 %141, i32 4)
  store i32 0, ptr %bph.i283, align 1
  %size.i284 = getelementptr %struct.dwc3_trb, ptr %137, i32 %idxprom.i281, i32 2
  %142 = ptrtoint ptr %size.i284 to i32
  call void @__asan_storeN_noabort(i32 %142, i32 4)
  store i32 %133, ptr %size.i284, align 1
  %ctrl.i285 = getelementptr %struct.dwc3_trb, ptr %137, i32 %idxprom.i281, i32 3
  %143 = ptrtoint ptr %ctrl.i285 to i32
  call void @__asan_storeN_noabort(i32 %143, i32 4)
  store i32 3155, ptr %ctrl.i285, align 1
  tail call fastcc void @trace_dwc3_prepare_trb(ptr noundef %dep, ptr noundef %arrayidx.i282) #8
  %ep0_trb119 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 1
  %144 = ptrtoint ptr %ep0_trb119 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ep0_trb119, align 4
  %146 = ptrtoint ptr %trb_enqueue.i280 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %trb_enqueue.i280, align 4
  %idxprom = zext i8 %147 to i32
  %arrayidx121 = getelementptr %struct.dwc3_trb, ptr %145, i32 %idxprom
  %trb122 = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 10
  %148 = ptrtoint ptr %trb122 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %arrayidx121, ptr %trb122, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i287) #8
  %flags.i288 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 9
  %149 = ptrtoint ptr %flags.i288 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %flags.i288, align 4
  %and.i289 = and i32 %150, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i289)
  %tobool.not.i290 = icmp eq i32 %and.i289, 0
  br i1 %tobool.not.i290, label %if.end.i295, label %if.end114.dwc3_ep0_start_trans.exit299_crit_edge

if.end114.dwc3_ep0_start_trans.exit299_crit_edge: ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc3_ep0_start_trans.exit299

if.end.i295:                                      ; preds = %if.end114
  %151 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %params.i287, i32 0, i32 1
  %152 = ptrtoint ptr %dwc1.i278 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dwc1.i278, align 4
  %ep0_trb_addr.i292 = getelementptr inbounds %struct.dwc3, ptr %153, i32 0, i32 5
  %154 = call ptr @memset(ptr %params.i287, i32 0, i32 12)
  %155 = ptrtoint ptr %ep0_trb_addr.i292 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %ep0_trb_addr.i292, align 4
  %157 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %151, align 4
  %call.i293 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %dep, i32 noundef 6, ptr noundef nonnull %params.i287) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i293)
  %cmp.i294 = icmp slt i32 %call.i293, 0
  br i1 %cmp.i294, label %if.end.i295.dwc3_ep0_start_trans.exit299_crit_edge, label %if.end6.i297

if.end.i295.dwc3_ep0_start_trans.exit299_crit_edge: ; preds = %if.end.i295
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc3_ep0_start_trans.exit299

if.end6.i297:                                     ; preds = %if.end.i295
  call void @__sanitizer_cov_trace_pc() #10
  %ep0_next_event.i296 = getelementptr inbounds %struct.dwc3, ptr %153, i32 0, i32 57
  %158 = ptrtoint ptr %ep0_next_event.i296 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 1, ptr %ep0_next_event.i296, align 4
  br label %dwc3_ep0_start_trans.exit299

dwc3_ep0_start_trans.exit299:                     ; preds = %if.end6.i297, %if.end.i295.dwc3_ep0_start_trans.exit299_crit_edge, %if.end114.dwc3_ep0_start_trans.exit299_crit_edge
  %retval.0.i298 = phi i32 [ 0, %if.end6.i297 ], [ 0, %if.end114.dwc3_ep0_start_trans.exit299_crit_edge ], [ %call.i293, %if.end.i295.dwc3_ep0_start_trans.exit299_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i287) #8
  br label %if.end126

if.end126:                                        ; preds = %dwc3_ep0_start_trans.exit299, %dwc3_ep0_start_trans.exit277, %cleanup.thread, %dwc3_ep0_start_trans.exit
  %ret.1 = phi i32 [ %retval.0.i, %dwc3_ep0_start_trans.exit ], [ %retval.0.i276, %dwc3_ep0_start_trans.exit277 ], [ %retval.0.i298, %dwc3_ep0_start_trans.exit299 ], [ %retval.0.i244, %cleanup.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp127 = icmp slt i32 %ret.1, 0
  br i1 %cmp127, label %do.end, label %if.end126.cleanup153_crit_edge, !prof !75

if.end126.cleanup153_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup153

do.end:                                           ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1036, i32 noundef 9, ptr noundef null) #8
  br label %cleanup153

cleanup153:                                       ; preds = %do.end, %if.end126.cleanup153_crit_edge, %if.else106.cleanup153_crit_edge, %if.then72.cleanup153_crit_edge, %if.then21.cleanup153_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request_by_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dwc3_gadget_ep_set_halt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_gadget_giveback(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dwc3_prepare_trb(ptr noundef %dep, ptr noundef %trb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_prepare_trb, i32 0, i32 1), ptr blockaddress(@trace_dwc3_prepare_trb, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !76

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !74

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !77
  %call42 = tail call i32 @__traceiter_dwc3_prepare_trb(ptr noundef null, ptr noundef %dep, ptr noundef %trb) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !78
  %13 = tail call i32 @llvm.read_register.i32(metadata !60) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !60) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !74

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_prepare_trb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_prepare_trb, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dwc3_prepare_trb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_dwc3_prepare_trb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 283, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  %31 = tail call i32 @llvm.read_register.i32(metadata !60) #8
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
declare dso_local i32 @__traceiter_dwc3_prepare_trb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_send_gadget_ep_cmd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dwc3_ctrl_req(ptr noundef %ctrl) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_ctrl_req, i32 0, i32 1), ptr blockaddress(@trace_dwc3_ctrl_req, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !76

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !74

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %call42 = tail call i32 @__traceiter_dwc3_ctrl_req(ptr noundef null, ptr noundef %ctrl) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !82
  %13 = tail call i32 @llvm.read_register.i32(metadata !60) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !60) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !74

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_ctrl_req, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_ctrl_req, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dwc3_ctrl_req.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_dwc3_ctrl_req.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 101, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  %31 = tail call i32 @llvm.read_register.i32(metadata !60) #8
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_ctrl_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_ep0_handle_feature(ptr nocapture noundef %dwc, ptr nocapture noundef readonly %ctrl, i32 noundef %set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctrl, align 1
  %2 = and i8 %1, 31
  %and = zext i8 %2 to i32
  %3 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %and, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %wValue1.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %4 = ptrtoint ptr %wValue1.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %wValue1.i, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #8
  %gadget.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 18
  %7 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gadget.i, align 4
  %state4.i = getelementptr inbounds %struct.usb_gadget, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %state4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state4.i, align 8
  %11 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %6, label %sw.default.i [
    i16 1, label %sw.bb.sw.epilog_crit_edge
    i16 48, label %sw.bb.i
    i16 49, label %sw.bb5.i
    i16 50, label %sw.bb7.i
    i16 2, label %sw.bb8.i
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %cmp.not.i.i = icmp eq i32 %10, 7
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb.i.sw.epilog_crit_edge

sw.bb.i.sw.epilog_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb.i
  %speed.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 64
  %12 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %speed.i.i, align 2
  %14 = and i8 %13, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %14)
  %switch.i.i = icmp eq i8 %14, 4
  br i1 %switch.i.i, label %if.end8.i.i, label %if.end.i.i.sw.epilog_crit_edge

if.end.i.i.sw.epilog_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool.not.i.i = icmp eq i32 %set, 0
  br i1 %tobool.not.i.i, label %if.end8.i.i.if.end12.i.i_crit_edge, label %land.lhs.true9.i.i

if.end8.i.i.if.end12.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i.i

land.lhs.true9.i.i:                               ; preds = %if.end8.i.i
  %dis_u1_entry_quirk.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %15 = ptrtoint ptr %dis_u1_entry_quirk.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 6)
  %bf.load.i.i = load i48, ptr %dis_u1_entry_quirk.i.i, align 4
  %16 = and i48 %bf.load.i.i, 131072
  %tobool10.not.i.i = icmp eq i48 %16, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true9.i.i.if.end12.i.i_crit_edge, label %land.lhs.true9.i.i.sw.epilog_crit_edge

land.lhs.true9.i.i.sw.epilog_crit_edge:           ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true9.i.i.if.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %land.lhs.true9.i.i.if.end12.i.i_crit_edge, %if.end8.i.i.if.end12.i.i_crit_edge
  %masksel.i.i = phi i32 [ 1024, %land.lhs.true9.i.i.if.end12.i.i_crit_edge ], [ 0, %if.end8.i.i.if.end12.i.i_crit_edge ]
  %regs.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %18, i32 1540
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #8, !srcloc !70
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %add.ptr3.i.i.i = getelementptr i8, ptr %18, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i.i, i32 noundef 50948, i32 noundef %20) #8
  %and.i.i = and i32 %20, -1025
  %reg.0.i.i = or i32 %and.i.i, %masksel.i.i
  %21 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i.i) #8
  %add.ptr1.i25.i.i = getelementptr i8, ptr %22, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i25.i.i, i32 %23) #8, !srcloc !73
  %add.ptr2.i.i.i = getelementptr i8, ptr %22, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i.i, i32 noundef 50948, i32 noundef %reg.0.i.i) #8
  br label %sw.epilog

sw.bb5.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %cmp.not.i18.i = icmp eq i32 %10, 7
  br i1 %cmp.not.i18.i, label %if.end.i21.i, label %sw.bb5.i.sw.epilog_crit_edge

sw.bb5.i.sw.epilog_crit_edge:                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i21.i:                                     ; preds = %sw.bb5.i
  %speed.i19.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 64
  %24 = ptrtoint ptr %speed.i19.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %speed.i19.i, align 2
  %26 = and i8 %25, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %26)
  %switch.i20.i = icmp eq i8 %26, 4
  br i1 %switch.i20.i, label %if.end8.i23.i, label %if.end.i21.i.sw.epilog_crit_edge

if.end.i21.i.sw.epilog_crit_edge:                 ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end8.i23.i:                                    ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool.not.i22.i = icmp eq i32 %set, 0
  br i1 %tobool.not.i22.i, label %if.end8.i23.i.if.end12.i35.i_crit_edge, label %land.lhs.true9.i26.i

if.end8.i23.i.if.end12.i35.i_crit_edge:           ; preds = %if.end8.i23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i35.i

land.lhs.true9.i26.i:                             ; preds = %if.end8.i23.i
  %dis_u2_entry_quirk.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %27 = ptrtoint ptr %dis_u2_entry_quirk.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 6)
  %bf.load.i24.i = load i48, ptr %dis_u2_entry_quirk.i.i, align 4
  %28 = and i48 %bf.load.i24.i, 65536
  %tobool10.not.i25.i = icmp eq i48 %28, 0
  br i1 %tobool10.not.i25.i, label %land.lhs.true9.i26.i.if.end12.i35.i_crit_edge, label %land.lhs.true9.i26.i.sw.epilog_crit_edge

land.lhs.true9.i26.i.sw.epilog_crit_edge:         ; preds = %land.lhs.true9.i26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true9.i26.i.if.end12.i35.i_crit_edge:    ; preds = %land.lhs.true9.i26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i35.i

if.end12.i35.i:                                   ; preds = %land.lhs.true9.i26.i.if.end12.i35.i_crit_edge, %if.end8.i23.i.if.end12.i35.i_crit_edge
  %masksel.i27.i = phi i32 [ 4096, %land.lhs.true9.i26.i.if.end12.i35.i_crit_edge ], [ 0, %if.end8.i23.i.if.end12.i35.i_crit_edge ]
  %regs.i28.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %29 = ptrtoint ptr %regs.i28.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i28.i, align 4
  %add.ptr1.i.i29.i = getelementptr i8, ptr %30, i32 1540
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i29.i) #8, !srcloc !70
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %add.ptr3.i.i30.i = getelementptr i8, ptr %30, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i30.i, i32 noundef 50948, i32 noundef %32) #8
  %and.i31.i = and i32 %32, -4097
  %reg.0.i32.i = or i32 %and.i31.i, %masksel.i27.i
  %33 = ptrtoint ptr %regs.i28.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i28.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  tail call void @arm_heavy_mb() #8
  %35 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i32.i) #8
  %add.ptr1.i25.i33.i = getelementptr i8, ptr %34, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i25.i33.i, i32 %35) #8, !srcloc !73
  %add.ptr2.i.i34.i = getelementptr i8, ptr %34, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i34.i, i32 noundef 50948, i32 noundef %reg.0.i32.i) #8
  br label %sw.epilog

sw.bb7.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb8.i:                                         ; preds = %sw.bb
  %wIndex2.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %36 = ptrtoint ptr %wIndex2.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %wIndex2.i, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #8
  %conv3.i = zext i16 %38 to i32
  %and.i37.i = and i32 %conv3.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37.i)
  %cmp.not.i38.i = icmp ne i32 %and.i37.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool.not.i39.i = icmp eq i32 %set, 0
  %or.cond.i.i = or i1 %tobool.not.i39.i, %cmp.not.i38.i
  br i1 %or.cond.i.i, label %sw.bb8.i.sw.epilog_crit_edge, label %if.end2.i.i

sw.bb8.i.sw.epilog_crit_edge:                     ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end2.i.i:                                      ; preds = %sw.bb8.i
  %shr.i.i = lshr i32 %conv3.i, 8
  %shr.off.i.i = add nsw i32 %shr.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %shr.off.i.i)
  %switch.i40.i = icmp ult i32 %shr.off.i.i, 5
  br i1 %switch.i40.i, label %sw.bb.i.i, label %if.end2.i.i.sw.epilog_crit_edge

if.end2.i.i.sw.epilog_crit_edge:                  ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.i.i:                                        ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = trunc i32 %shr.i.i to i8
  %test_mode_nr.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 70
  %39 = ptrtoint ptr %test_mode_nr.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i.i, ptr %test_mode_nr.i.i, align 1
  %test_mode.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 69
  %40 = ptrtoint ptr %test_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %test_mode.i.i, align 4
  br label %sw.epilog

sw.default.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wValue1.i12 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %41 = ptrtoint ptr %wValue1.i12 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %wValue1.i12, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cond.i = icmp eq i16 %42, 0
  %spec.select.i = select i1 %cond.i, i32 0, i32 -22
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %wValue1.i13 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %43 = ptrtoint ptr %wValue1.i13 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %wValue1.i13, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cond.i14 = icmp eq i16 %44, 0
  br i1 %cond.i14, label %sw.bb.i17, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.i17:                                        ; preds = %sw.bb3
  %wIndex.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %45 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %wIndex.i, align 1
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #8
  %conv.i.i15 = zext i16 %47 to i32
  %and.i.i16 = shl nuw nsw i32 %conv.i.i15, 1
  %shl.i.i = and i32 %and.i.i16, 30
  %and1.i.i = lshr i32 %conv.i.i15, 7
  %48 = and i32 %and1.i.i, 1
  %49 = or i32 %48, %shl.i.i
  %arrayidx.i.i = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 17, i32 %49
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp3.i.i = icmp eq ptr %51, null
  br i1 %cmp3.i.i, label %sw.bb.i17.sw.epilog_crit_edge, label %if.end6.i.i

sw.bb.i17.sw.epilog_crit_edge:                    ; preds = %sw.bb.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end6.i.i:                                      ; preds = %sw.bb.i17
  %flags.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i.i, align 4
  %and7.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool.not.i.i18 = icmp eq i32 %and7.i.i, 0
  br i1 %tobool.not.i.i18, label %if.end6.i.i.sw.epilog_crit_edge, label %if.end.i

if.end6.i.i.sw.epilog_crit_edge:                  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i:                                         ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %cmp.i = icmp eq i32 %set, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end5.thread.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %and.i = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %land.lhs.true.i.sw.epilog.i_crit_edge

land.lhs.true.i.sw.epilog.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end5.i:                                        ; preds = %land.lhs.true.i
  %call6.i = tail call i32 @__dwc3_gadget_ep_set_halt(ptr noundef nonnull %51, i32 noundef 0, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true11.i, label %if.end5.i.sw.epilog_crit_edge

if.end5.i.sw.epilog_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end5.thread.i:                                 ; preds = %if.end.i
  %call629.i = tail call i32 @__dwc3_gadget_ep_set_halt(ptr noundef nonnull %51, i32 noundef %set, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call629.i)
  %tobool7.not30.i = icmp eq i32 %call629.i, 0
  br i1 %tobool7.not30.i, label %if.end5.thread.i.sw.epilog.i_crit_edge, label %if.end5.thread.i.sw.epilog_crit_edge

if.end5.thread.i.sw.epilog_crit_edge:             ; preds = %if.end5.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end5.thread.i.sw.epilog.i_crit_edge:           ; preds = %if.end5.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

land.lhs.true11.i:                                ; preds = %if.end5.i
  %54 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i.i, align 4
  %and13.i = and i32 %55, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true11.i.sw.epilog.i_crit_edge, label %land.lhs.true11.i.sw.epilog_crit_edge

land.lhs.true11.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true11.i.sw.epilog.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %land.lhs.true11.i.sw.epilog.i_crit_edge, %if.end5.thread.i.sw.epilog.i_crit_edge, %land.lhs.true.i.sw.epilog.i_crit_edge
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.i, %land.lhs.true11.i.sw.epilog_crit_edge, %if.end5.thread.i.sw.epilog_crit_edge, %if.end5.i.sw.epilog_crit_edge, %if.end6.i.i.sw.epilog_crit_edge, %sw.bb.i17.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %sw.bb1, %sw.default.i, %sw.bb.i.i, %if.end2.i.i.sw.epilog_crit_edge, %sw.bb8.i.sw.epilog_crit_edge, %sw.bb7.i, %if.end12.i35.i, %land.lhs.true9.i26.i.sw.epilog_crit_edge, %if.end.i21.i.sw.epilog_crit_edge, %sw.bb5.i.sw.epilog_crit_edge, %if.end12.i.i, %land.lhs.true9.i.i.sw.epilog_crit_edge, %if.end.i.i.sw.epilog_crit_edge, %sw.bb.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %spec.select.i, %sw.bb1 ], [ -22, %entry.sw.epilog_crit_edge ], [ -22, %sw.default.i ], [ -22, %sw.bb7.i ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.end12.i.i ], [ -22, %sw.bb.i.sw.epilog_crit_edge ], [ -22, %if.end.i.i.sw.epilog_crit_edge ], [ -22, %land.lhs.true9.i.i.sw.epilog_crit_edge ], [ 0, %if.end12.i35.i ], [ -22, %sw.bb5.i.sw.epilog_crit_edge ], [ -22, %if.end.i21.i.sw.epilog_crit_edge ], [ -22, %land.lhs.true9.i26.i.sw.epilog_crit_edge ], [ 0, %sw.bb.i.i ], [ -22, %sw.bb8.i.sw.epilog_crit_edge ], [ -22, %if.end2.i.i.sw.epilog_crit_edge ], [ 0, %sw.epilog.i ], [ -22, %if.end5.i.sw.epilog_crit_edge ], [ 32767, %land.lhs.true11.i.sw.epilog_crit_edge ], [ -22, %sw.bb3.sw.epilog_crit_edge ], [ -22, %if.end5.thread.i.sw.epilog_crit_edge ], [ -22, %sw.bb.i17.sw.epilog_crit_edge ], [ -22, %if.end6.i.i.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dwc3_ep0_status_cmpl(ptr nocapture noundef %ep, ptr nocapture noundef %req) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dwc3_readl(ptr noundef %base, i32 noundef %offset, i32 noundef %value) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), ptr blockaddress(@trace_dwc3_readl, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !76

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !74

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !83
  %call42 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %base, i32 noundef %offset, i32 noundef %value) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !84
  %13 = tail call i32 @llvm.read_register.i32(metadata !60) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !60) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !74

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dwc3_readl.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_dwc3_readl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 44, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  %31 = tail call i32 @llvm.read_register.i32(metadata !60) #8
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
declare dso_local i32 @__traceiter_dwc3_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dwc3_writel(ptr noundef %base, i32 noundef %offset, i32 noundef %value) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), ptr blockaddress(@trace_dwc3_writel, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !76

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !74

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !85
  %call42 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %base, i32 noundef %offset, i32 noundef %value) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !86
  %13 = tail call i32 @llvm.read_register.i32(metadata !60) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !60) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !74

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dwc3_writel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_dwc3_writel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 49, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  %31 = tail call i32 @llvm.read_register.i32(metadata !60) #8
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
declare dso_local void @dwc3_gadget_clear_tx_fifos(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwc3_ep0_set_sel_cmpl(ptr nocapture noundef readonly %ep, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dwc1 = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 7
  %0 = ptrtoint ptr %dwc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc1, align 4
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %timing.sroa.0.0.copyload = load i8, ptr %3, align 1
  %timing.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 1
  %5 = ptrtoint ptr %timing.sroa.5.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %timing.sroa.5.0.copyload = load i8, ptr %timing.sroa.5.0..sroa_idx, align 1
  %timing.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 2
  %6 = ptrtoint ptr %timing.sroa.7.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %timing.sroa.7.0.copyload = load i16, ptr %timing.sroa.7.0..sroa_idx, align 1
  %timing.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 4
  %7 = ptrtoint ptr %timing.sroa.9.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %timing.sroa.9.0.copyload = load i16, ptr %timing.sroa.9.0..sroa_idx, align 1
  %u1sel2 = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 62
  %8 = ptrtoint ptr %u1sel2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %timing.sroa.0.0.copyload, ptr %u1sel2, align 4
  %u1pel3 = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 63
  %9 = ptrtoint ptr %u1pel3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %timing.sroa.5.0.copyload, ptr %u1pel3, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %timing.sroa.7.0.copyload)
  %u2sel4 = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 60
  %11 = ptrtoint ptr %u2sel4 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %u2sel4, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %timing.sroa.9.0.copyload)
  %u2pel5 = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 61
  %13 = ptrtoint ptr %u2pel5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %u2pel5, align 2
  %regs = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 30
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %15, i32 1540
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !70
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %add.ptr3.i = getelementptr i8, ptr %15, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 50948, i32 noundef %17) #8
  %and = and i32 %17, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %u2pel5 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %u2pel5, align 2
  %conv = zext i16 %19 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %param.0 = phi i32 [ %conv, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and7 = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end12_crit_edge, label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %u1pel3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %u1pel3, align 1
  %conv11 = zext i8 %21 to i32
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  %param.1 = phi i32 [ %conv11, %if.then9 ], [ %param.0, %if.end.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 125, i32 %param.1)
  %cmp = icmp ugt i32 %param.1, 125
  %spec.store.select = select i1 %cmp, i32 0, i32 %param.1
  %call16 = tail call i32 @dwc3_send_gadget_generic_command(ptr noundef %1, i32 noundef 2, i32 noundef %spec.store.select) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end, label %if.end12.if.end33_crit_edge, !prof !75

if.end12.if.end33_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 706, i32 noundef 9, ptr noundef null) #8
  br label %if.end33

if.end33:                                         ; preds = %do.end, %if.end12.if.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_send_gadget_generic_command(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dwc3_complete_trb(ptr noundef %dep, ptr noundef %trb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_complete_trb, i32 0, i32 1), ptr blockaddress(@trace_dwc3_complete_trb, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !76

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !74

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !87
  %call42 = tail call i32 @__traceiter_dwc3_complete_trb(ptr noundef null, ptr noundef %dep, ptr noundef %trb) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !88
  %13 = tail call i32 @llvm.read_register.i32(metadata !60) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !60) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !74

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_complete_trb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_complete_trb, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dwc3_complete_trb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_dwc3_complete_trb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 288, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  %31 = tail call i32 @llvm.read_register.i32(metadata !60) #8
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
declare dso_local i32 @__traceiter_dwc3_complete_trb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_gadget_set_test_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc3_ep0_end_control_data(ptr noundef %dep) unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params) #8
  %resource_index = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 14
  %0 = ptrtoint ptr %resource_index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %resource_index, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %or2 = or i32 %shl, 264
  %2 = call ptr @memset(ptr %params, i32 0, i32 12)
  %call = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %dep, i32 noundef %or2, ptr noundef nonnull %params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end.if.end34_crit_edge, label %land.rhs

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

land.rhs:                                         ; preds = %if.end
  %.b1 = load i1, ptr @dwc3_ep0_end_control_data.__already_done, align 1
  br i1 %.b1, label %land.rhs.if.end34_crit_edge, label %if.then12, !prof !74

land.rhs.if.end34_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dwc3_ep0_end_control_data.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1090, i32 noundef 9, ptr noundef null) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then12, %land.rhs.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %3 = ptrtoint ptr %resource_index to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %resource_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params) #8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !20, !22, !23, !25, !26, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/dwc3/ep0.c", i32 201, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dwc3_gadget_ep0_queue._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @dwc3_gadget_ep0_queue._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/dwc3/ep0.c", i32 113, i32 4}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/usb/dwc3/trace.h", i32 280, i32 1}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/dwc3/ep0.c", i32 950, i32 3}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../drivers/usb/dwc3/trace.h", i32 98, i32 1}
!22 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/usb/dwc3/trace.h", i32 41, i32 1}
!25 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../drivers/usb/dwc3/trace.h", i32 46, i32 1}
!28 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/dwc3/ep0.c", i32 576, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @dwc3_ep0_set_address._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @dwc3_ep0_set_address._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/dwc3/ep0.c", i32 581, i32 3}
!36 = !{ptr @dwc3_ep0_set_address._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dwc3_ep0_set_address._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/dwc3/ep0.c", i32 721, i32 3}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @dwc3_ep0_set_sel._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @dwc3_ep0_set_sel._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../drivers/usb/dwc3/trace.h", i32 285, i32 1}
!45 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/dwc3/ep0.c", i32 913, i32 4}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @dwc3_ep0_complete_status._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @dwc3_ep0_complete_status._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/dwc3/ep0.c", i32 1111, i32 4}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @dwc3_ep0_xfernotready._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @dwc3_ep0_xfernotready._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../drivers/usb/dwc3/ep0.c", i32 1128, i32 4}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../drivers/usb/dwc3/ep0.c", i32 1090, i32 2}
!60 = !{!"sp"}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 5318359}
!71 = !{i64 2155845257}
!72 = !{i64 2155845661}
!73 = !{i64 5317941}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{!"branch_weights", i32 1, i32 2000}
!76 = !{i64 2148717105, i64 2148717110, i64 2148717123, i64 2148717167, i64 2148717201, i64 2148717222}
!77 = !{i64 2155776705}
!78 = !{i64 2155776916}
!79 = !{i64 2149951512}
!80 = !{i64 2149952548}
!81 = !{i64 2155636078}
!82 = !{i64 2155636275}
!83 = !{i64 2155584096}
!84 = !{i64 2155584317}
!85 = !{i64 2155600270}
!86 = !{i64 2155600493}
!87 = !{i64 2155793247}
!88 = !{i64 2155793460}
