; ModuleID = '/llk/IR_all_yes/drivers/usb/cdns3/cdns3-ep0.c_pt.bc'
source_filename = "../drivers/usb/cdns3/cdns3-ep0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.cdns3_device = type { ptr, ptr, %struct.usb_gadget, ptr, i32, %struct.spinlock, ptr, ptr, ptr, i32, ptr, i8, i32, [32 x ptr], %struct.list_head, %struct.work_struct, i32, i16, i16, i32, %struct.work_struct, ptr, i16, i16 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cdns3_usb_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [26 x i32], i32, i32, i32, [74 x i32], [51 x i32], i32, i32, i32, i32, i32 }
%struct.cdns3_endpoint = type { %struct.usb_ep, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i32, ptr, [20 x i8], i32, ptr, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, ptr, i32, i8, i32, i16, i16, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdns3_trb = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@cdns3_gadget_ep_set_wedge.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cdns3\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cdns3_gadget_ep_set_wedge\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/cdns3/cdns3-ep0.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Wedge for %s\0A\00", [18 x i8] zeroinitializer }, align 32
@cdns3_gadget_ep0_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 0, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@cdns3_gadget_ep0_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @cdns3_gadget_ep0_enable, ptr @cdns3_gadget_ep0_disable, ptr null, ptr @cdns3_gadget_ep_alloc_request, ptr @cdns3_gadget_ep_free_request, ptr @cdns3_gadget_ep0_queue, ptr @cdns3_gadget_ep_dequeue, ptr @cdns3_gadget_ep0_set_halt, ptr @cdns3_gadget_ep_set_wedge, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__tracepoint_cdns3_ep0_irq = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/cdns3/cdns3-trace.h\00", [32 x i8] zeroinitializer }, align 32
@trace_cdns3_ep0_irq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_cdns3_ctrl_req = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_ctrl_req.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cdns3_req_ep0_set_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 192, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Device address (%d) cannot be greater than %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cdns3_req_ep0_set_address\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns3_req_ep0_set_address._entry_ptr = internal global ptr @cdns3_req_ep0_set_address._entry, section ".printk_index", align 4
@cdns3_req_ep0_set_address._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.2, i32 198, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"can't set_address from configured state\0A\00", [55 x i8] zeroinitializer }, align 32
@cdns3_req_ep0_set_address._entry_ptr.14 = internal global ptr @cdns3_req_ep0_set_address._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep0in\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep0out\00", [25 x i8] zeroinitializer }, align 32
@__tracepoint_cdns3_prepare_trb = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_prepare_trb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cdns3_doorbell_ep0 = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_doorbell_ep0.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cdns3_req_ep0_set_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 436, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Set SEL should be 6 bytes, got %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cdns3_req_ep0_set_sel\00", [42 x i8] zeroinitializer }, align 32
@cdns3_req_ep0_set_sel._entry_ptr = internal global ptr @cdns3_req_ep0_set_sel._entry, section ".printk_index", align 4
@__tracepoint_cdns3_halt = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_halt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cdns3_complete_trb = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_complete_trb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cdns3_gadget_ep0_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 729, ptr @.str.21, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"timeout for waiting configuration set\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cdns3_gadget_ep0_queue\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cdns3_gadget_ep0_queue._entry_ptr = internal global ptr @cdns3_gadget_ep0_queue._entry, section ".printk_index", align 4
@system_freezable_wq = external dso_local local_unnamed_addr global ptr, align 4
@cdns3_gadget_ep0_queue._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.2, i32 748, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can't handle multiple requests for ep0\0A\00", [56 x i8] zeroinitializer }, align 32
@cdns3_gadget_ep0_queue._entry_ptr.24 = internal global ptr @cdns3_gadget_ep0_queue._entry.22, section ".printk_index", align 4
@cdns3_gadget_ep0_queue._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.20, ptr @.str.2, i32 757, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to map request\0A\00", [41 x i8] zeroinitializer }, align 32
@cdns3_gadget_ep0_queue._entry_ptr.27 = internal global ptr @cdns3_gadget_ep0_queue._entry.25, section ".printk_index", align 4
@__tracepoint_cdns3_ep0_queue = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_ep0_queue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 3, i64 5, i64 9, i64 48, i64 49]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32767]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 2, i64 48, i64 49]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 786, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [22 x i8] c"cdns3_gadget_ep0_desc\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 19, i32 39 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"cdns3_gadget_ep0_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 793, i32 32 }
@___asan_gen_.55 = private unnamed_addr constant [35 x i8] c"../drivers/usb/cdns3/cdns3-trace.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 167, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 108, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 190, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 197, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 62, i32 52 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 62, i32 62 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 435, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 729, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 747, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [33 x i8] c"../drivers/usb/cdns3/cdns3-ep0.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 757, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @cdns3_gadget_ep0_queue._entry, ptr @cdns3_gadget_ep0_queue._entry.22, ptr @cdns3_gadget_ep0_queue._entry.25, ptr @cdns3_gadget_ep0_queue._entry_ptr, ptr @cdns3_gadget_ep0_queue._entry_ptr.24, ptr @cdns3_gadget_ep0_queue._entry_ptr.27, ptr @cdns3_req_ep0_set_address._entry, ptr @cdns3_req_ep0_set_address._entry.12, ptr @cdns3_req_ep0_set_address._entry_ptr, ptr @cdns3_req_ep0_set_address._entry_ptr.14, ptr @cdns3_req_ep0_set_sel._entry, ptr @cdns3_req_ep0_set_sel._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cdns3_gadget_ep0_desc, ptr @cdns3_gadget_ep0_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_gadget_ep0_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_gadget_ep0_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_req_ep0_set_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_req_ep0_set_address._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_req_ep0_set_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_gadget_ep0_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_gadget_ep0_queue._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_gadget_ep0_queue._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdns3_pending_setup_status_handler(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %work, i32 -264
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %pending_status_request.i = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %pending_status_request.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pending_status_request.i, align 4
  %status_completion_no_call.i = getelementptr i8, ptr %work, i32 -6
  %2 = ptrtoint ptr %status_completion_no_call.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %status_completion_no_call.i, align 2
  %3 = and i16 %bf.load.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  %tobool1.not.i = icmp eq ptr %1, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %entry.__pending_setup_status_handler.exit_crit_edge, label %land.lhs.true2.i

entry.__pending_setup_status_handler.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__pending_setup_status_handler.exit

land.lhs.true2.i:                                 ; preds = %entry
  %complete.i = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %complete.i, align 4
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %land.lhs.true2.i.__pending_setup_status_handler.exit_crit_edge, label %if.then.i

land.lhs.true2.i.__pending_setup_status_handler.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__pending_setup_status_handler.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  %eps.i = getelementptr i8, ptr %work, i32 -192
  %6 = ptrtoint ptr %eps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eps.i, align 8
  tail call void %5(ptr noundef %7, ptr noundef nonnull %1) #7
  %8 = ptrtoint ptr %status_completion_no_call.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load6.i = load i16, ptr %status_completion_no_call.i, align 2
  %bf.clear7.i = and i16 %bf.load6.i, -257
  store i16 %bf.clear7.i, ptr %status_completion_no_call.i, align 2
  br label %__pending_setup_status_handler.exit

__pending_setup_status_handler.exit:              ; preds = %if.then.i, %land.lhs.true2.i.__pending_setup_status_handler.exit_crit_edge, %entry.__pending_setup_status_handler.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdns3_check_ep0_interrupt_proceed(ptr noundef %priv_dev, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cdns3_select_ep(ptr noundef %priv_dev, i32 noundef %dir) #7
  %regs = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %ep_sts = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 11
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_sts) #7, !srcloc !82
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %ep_sts3 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %5, i32 0, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sts3, i32 %2) #7, !srcloc !85
  tail call fastcc void @trace_cdns3_ep0_irq(ptr noundef %priv_dev, i32 noundef %3)
  %pending_status_request.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 21
  %6 = ptrtoint ptr %pending_status_request.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pending_status_request.i, align 4
  %status_completion_no_call.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 18
  %8 = ptrtoint ptr %status_completion_no_call.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %status_completion_no_call.i, align 2
  %9 = and i16 %bf.load.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  %tobool1.not.i = icmp eq ptr %7, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %entry.__pending_setup_status_handler.exit_crit_edge, label %land.lhs.true2.i

entry.__pending_setup_status_handler.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__pending_setup_status_handler.exit

land.lhs.true2.i:                                 ; preds = %entry
  %complete.i = getelementptr inbounds %struct.usb_request, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %complete.i, align 4
  %tobool3.not.i = icmp eq ptr %11, null
  br i1 %tobool3.not.i, label %land.lhs.true2.i.__pending_setup_status_handler.exit_crit_edge, label %if.then.i

land.lhs.true2.i.__pending_setup_status_handler.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__pending_setup_status_handler.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  %eps.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 13
  %12 = ptrtoint ptr %eps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eps.i, align 8
  tail call void %11(ptr noundef %13, ptr noundef nonnull %7) #7
  %14 = ptrtoint ptr %status_completion_no_call.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load6.i = load i16, ptr %status_completion_no_call.i, align 2
  %bf.clear7.i = and i16 %bf.load6.i, -257
  store i16 %bf.clear7.i, ptr %status_completion_no_call.i, align 2
  br label %__pending_setup_status_handler.exit

__pending_setup_status_handler.exit:              ; preds = %if.then.i, %land.lhs.true2.i.__pending_setup_status_handler.exit_crit_edge, %entry.__pending_setup_status_handler.exit_crit_edge
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %__pending_setup_status_handler.exit.if.end_crit_edge, label %if.then

__pending_setup_status_handler.exit.if.end_crit_edge: ; preds = %__pending_setup_status_handler.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %__pending_setup_status_handler.exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %status_completion_no_call.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %status_completion_no_call.i, align 2
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %status_completion_no_call.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %__pending_setup_status_handler.exit.if.end_crit_edge
  %16 = ptrtoint ptr %status_completion_no_call.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load5 = load i16, ptr %status_completion_no_call.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load5)
  %tobool6.not = icmp sgt i16 %bf.load5, -1
  %and7 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond = select i1 %tobool6.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  %bf.clear12 = and i16 %bf.load5, 32767
  %17 = ptrtoint ptr %status_completion_no_call.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %bf.clear12, ptr %status_completion_no_call.i, align 2
  %setup_buf.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 8
  %18 = ptrtoint ptr %setup_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %setup_buf.i, align 4
  %eps.i55 = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 13
  %20 = ptrtoint ptr %eps.i55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %eps.i55, align 8
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %19, align 1
  %24 = and i8 %23, -128
  %and.i = zext i8 %24 to i32
  %ep0_data_dir.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 12
  %25 = ptrtoint ptr %ep0_data_dir.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and.i, ptr %ep0_data_dir.i, align 4
  tail call fastcc void @trace_cdns3_ctrl_req(ptr noundef %19) #7
  %pending_req_list.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %pending_req_list.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %pending_req_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %27, %pending_req_list.i
  br i1 %cmp.i.not.i, label %if.then9.if.end.i_crit_edge, label %if.then.i56

if.then9.if.end.i_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i56:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call ptr @cdns3_next_request(ptr noundef %pending_req_list.i) #7
  %28 = ptrtoint ptr %ep0_data_dir.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ep0_data_dir.i, align 4
  %conv4.i = trunc i32 %29 to i8
  %dir.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %21, i32 0, i32 11
  %30 = ptrtoint ptr %dir.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv4.i, ptr %dir.i, align 4
  tail call void @cdns3_gadget_giveback(ptr noundef %21, ptr noundef %call2.i, i32 noundef -104) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i56, %if.then9.if.end.i_crit_edge
  %wLength.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %19, i32 0, i32 4
  %31 = ptrtoint ptr %wLength.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %wLength.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool5.not.i = icmp eq i16 %32, 0
  %spec.select.i = select i1 %tobool5.not.i, i8 2, i8 1
  %33 = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 11
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %spec.select.i, ptr %33, align 8
  %35 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %19, align 1
  %37 = and i8 %36, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp.i = icmp eq i8 %37, 0
  br i1 %cmp.i, label %if.then13.i, label %if.else15.i

if.then13.i:                                      ; preds = %if.end.i
  %bRequest.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %19, i32 0, i32 1
  %38 = ptrtoint ptr %bRequest.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bRequest.i.i, align 1
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i8 %39, label %sw.default.i.i [
    i8 5, label %sw.bb.i.i
    i8 9, label %sw.bb1.i.i
    i8 0, label %sw.bb3.i.i
    i8 1, label %sw.bb5.i.i
    i8 3, label %sw.bb7.i.i
    i8 48, label %sw.bb9.i.i
    i8 49, label %sw.bb11.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then13.i
  %gadget.i.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 2
  %wValue.i.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %19, i32 0, i32 2
  %41 = ptrtoint ptr %wValue.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %wValue.i.i.i, align 1
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #7
  %conv.i.i.i = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %43)
  %cmp.i.i.i = icmp ugt i16 %43, 127
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %priv_dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.8, i32 noundef %conv.i.i.i, i32 noundef 127) #10
  br label %if.then24.i

if.end.i.i.i:                                     ; preds = %sw.bb.i.i
  %state.i.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 2, i32 9
  %46 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %47)
  %cmp2.i.i.i = icmp eq i32 %47, 7
  br i1 %cmp2.i.i.i, label %do.end7.i.i.i, label %if.end9.i.i.i

do.end7.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %priv_dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.13) #10
  br label %if.then24.i

if.end9.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %usb_cmd.i.i.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %51, i32 0, i32 2
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_cmd.i.i.i) #7, !srcloc !82
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 1
  %and.i.i.i = and i32 %shl.i.i.i, 254
  %or.i.i.i = or i32 %and.i.i.i, %53
  %or14.i.i.i = or i32 %or.i.i.i, 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %or14.i.i.i) #7
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 4
  %usb_cmd16.i.i.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %56, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usb_cmd16.i.i.i, i32 %54) #7, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool.not.i.i.i = icmp eq i16 %42, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 5, i32 6
  tail call void @usb_gadget_set_state(ptr noundef %gadget.i.i.i, i32 noundef %cond.i.i.i) #7
  br label %if.else25.i

sw.bb1.i.i:                                       ; preds = %if.then13.i
  %gadget.i29.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 2
  %state.i30.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 2, i32 9
  %57 = ptrtoint ptr %state.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %state.i30.i.i, align 8
  %wValue.i31.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %19, i32 0, i32 2
  %59 = ptrtoint ptr %wValue.i31.i.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %wValue.i31.i.i, align 1
  %61 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %58, label %sw.bb1.i.i.if.then24.i_crit_edge [
    i32 6, label %sw.bb.i.i.i
    i32 7, label %sw.bb2.i.i.i
  ]

sw.bb1.i.i.if.then24.i_crit_edge:                 ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i

sw.bb.i.i.i:                                      ; preds = %sw.bb1.i.i
  %lock.i.i.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i.i.i) #7
  %62 = ptrtoint ptr %status_completion_no_call.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load.i.i.i.i = load i16, ptr %status_completion_no_call.i, align 2
  %bf.set.i.i.i.i = or i16 %bf.load.i.i.i.i, 2048
  store i16 %bf.set.i.i.i.i, ptr %status_completion_no_call.i, align 2
  %gadget_driver.i.i.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 3
  %63 = ptrtoint ptr %gadget_driver.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %gadget_driver.i.i.i.i, align 8
  %setup.i.i.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %setup.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %setup.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %66(ptr noundef %gadget.i29.i.i, ptr noundef %19) #7
  %67 = ptrtoint ptr %status_completion_no_call.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %bf.load2.i.i.i.i = load i16, ptr %status_completion_no_call.i, align 2
  %bf.clear3.i.i.i.i = and i16 %bf.load2.i.i.i.i, -2049
  store i16 %bf.clear3.i.i.i.i, ptr %status_completion_no_call.i, align 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i.i.i) #7
  %68 = zext i32 %call.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call.i.i.i.i, label %sw.bb.i.i.i.if.then9.i.i.i_crit_edge [
    i32 0, label %lor.lhs.false.i.i.i
    i32 32767, label %sw.bb.i.i.i.if.end10.i.i.i_crit_edge
  ]

sw.bb.i.i.i.if.end10.i.i.i_crit_edge:             ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i.i

sw.bb.i.i.i.if.then9.i.i.i_crit_edge:             ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool1.not.i.i.i = icmp eq i16 %60, 0
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.if.then9.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.if.else25.i_crit_edge

lor.lhs.false.i.i.i.if.else25.i_crit_edge:        ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else25.i

lor.lhs.false.i.i.i.if.then9.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i.i.i

sw.bb2.i.i.i:                                     ; preds = %sw.bb1.i.i
  %lock.i24.i.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %lock.i24.i.i.i) #7
  %69 = ptrtoint ptr %status_completion_no_call.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %bf.load.i26.i.i.i = load i16, ptr %status_completion_no_call.i, align 2
  %bf.set.i27.i.i.i = or i16 %bf.load.i26.i.i.i, 2048
  store i16 %bf.set.i27.i.i.i, ptr %status_completion_no_call.i, align 2
  %gadget_driver.i28.i.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 3
  %70 = ptrtoint ptr %gadget_driver.i28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %gadget_driver.i28.i.i.i, align 8
  %setup.i29.i.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %setup.i29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %setup.i29.i.i.i, align 4
  %call.i31.i.i.i = tail call i32 %73(ptr noundef %gadget.i29.i.i, ptr noundef %19) #7
  %74 = ptrtoint ptr %status_completion_no_call.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %bf.load2.i32.i.i.i = load i16, ptr %status_completion_no_call.i, align 2
  %bf.clear3.i33.i.i.i = and i16 %bf.load2.i32.i.i.i, -2049
  store i16 %bf.clear3.i33.i.i.i, ptr %status_completion_no_call.i, align 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i24.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool4.not.i.i.i = icmp eq i16 %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %call.i31.i.i.i, 0
  %or.cond.i.i.i = select i1 %tobool4.not.i.i.i, i1 %tobool5.not.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %sw.bb2.i.i.i.if.then9.i.i.i_crit_edge, label %sw.bb2.i.i.i.if.else25.i_crit_edge

sw.bb2.i.i.i.if.else25.i_crit_edge:               ; preds = %sw.bb2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else25.i

sw.bb2.i.i.i.if.then9.i.i.i_crit_edge:            ; preds = %sw.bb2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i.i.i

if.then9.i.i.i:                                   ; preds = %sw.bb2.i.i.i.if.then9.i.i.i_crit_edge, %lor.lhs.false.i.i.i.if.then9.i.i.i_crit_edge, %sw.bb.i.i.i.if.then9.i.i.i_crit_edge
  %result.036.i.i.i = phi i32 [ 0, %lor.lhs.false.i.i.i.if.then9.i.i.i_crit_edge ], [ 0, %sw.bb2.i.i.i.if.then9.i.i.i_crit_edge ], [ %call.i.i.i.i, %sw.bb.i.i.i.if.then9.i.i.i_crit_edge ]
  tail call void @cdns3_hw_reset_eps_config(ptr noundef %priv_dev) #7
  br label %if.end10.i.i.i

if.end10.i.i.i:                                   ; preds = %if.then9.i.i.i, %sw.bb.i.i.i.if.end10.i.i.i_crit_edge
  %result.037.i.i.i = phi i32 [ %result.036.i.i.i, %if.then9.i.i.i ], [ %call.i.i.i.i, %sw.bb.i.i.i.if.end10.i.i.i_crit_edge ]
  tail call void @usb_gadget_set_state(ptr noundef %gadget.i29.i.i, i32 noundef 6) #7
  br label %if.end17.i

sw.bb3.i.i:                                       ; preds = %if.then13.i
  %75 = and i8 %36, 31
  %and.i33.i.i = zext i8 %75 to i32
  %76 = zext i32 %and.i33.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %and.i33.i.i, label %sw.bb3.i.i.if.then24.i_crit_edge [
    i32 0, label %sw.bb.i34.i.i
    i32 1, label %sw.bb33.i.i.i
    i32 2, label %sw.bb34.i.i.i
  ]

sw.bb3.i.i.if.then24.i_crit_edge:                 ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i

sw.bb.i34.i.i:                                    ; preds = %sw.bb3.i.i
  %77 = ptrtoint ptr %status_completion_no_call.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load.i.i.i = load i16, ptr %status_completion_no_call.i, align 2
  %78 = lshr i16 %bf.load.i.i.i, 12
  %.lobit.i.i.i = and i16 %78, 1
  %79 = lshr i16 %bf.load.i.i.i, 8
  %80 = and i16 %79, 2
  %81 = or i16 %80, %.lobit.i.i.i
  %speed.i.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 2, i32 5
  %82 = ptrtoint ptr %speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %speed.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %83)
  %cmp.not.i.i.i = icmp eq i32 %83, 5
  br i1 %cmp.not.i.i.i, label %if.end12.i.i.i, label %sw.bb.i34.i.i.sw.epilog.i.i.i_crit_edge

sw.bb.i34.i.i.sw.epilog.i.i.i_crit_edge:          ; preds = %sw.bb.i34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i

if.end12.i.i.i:                                   ; preds = %sw.bb.i34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = and i16 %78, 4
  %85 = lshr i16 %bf.load.i.i.i, 10
  %86 = and i16 %85, 8
  %87 = or i16 %86, %84
  %88 = or i16 %87, %81
  br label %sw.epilog.i.i.i

sw.bb33.i.i.i:                                    ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i.i35.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i35.i.i) #7
  %89 = ptrtoint ptr %status_completion_no_call.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %bf.load.i.i37.i.i = load i16, ptr %status_completion_no_call.i, align 2
  %bf.set.i.i38.i.i = or i16 %bf.load.i.i37.i.i, 2048
  store i16 %bf.set.i.i38.i.i, ptr %status_completion_no_call.i, align 2
  %gadget_driver.i.i39.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 3
  %90 = ptrtoint ptr %gadget_driver.i.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %gadget_driver.i.i39.i.i, align 8
  %setup.i.i40.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %setup.i.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %setup.i.i40.i.i, align 4
  %gadget.i.i.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 2
  %call.i.i41.i.i = tail call i32 %93(ptr noundef %gadget.i.i.i.i, ptr noundef %19) #7
  %94 = ptrtoint ptr %status_completion_no_call.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %bf.load2.i.i42.i.i = load i16, ptr %status_completion_no_call.i, align 2
  %bf.clear3.i.i43.i.i = and i16 %bf.load2.i.i42.i.i, -2049
  store i16 %bf.clear3.i.i43.i.i, ptr %status_completion_no_call.i, align 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i35.i.i) #7
  br label %if.end17.i

sw.bb34.i.i.i:                                    ; preds = %sw.bb3.i.i
  %wIndex.i.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %19, i32 0, i32 3
  %95 = ptrtoint ptr %wIndex.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %96 = load i16, ptr %wIndex.i.i.i, align 1
  %97 = lshr i16 %96, 8
  %conv35.i.i.i = trunc i16 %97 to i8
  %call36.i.i.i = tail call zeroext i8 @cdns3_ep_addr_to_index(i8 noundef zeroext %conv35.i.i.i) #7
  %idxprom.i.i.i = zext i8 %call36.i.i.i to i32
  %arrayidx.i.i.i = getelementptr %struct.cdns3_device, ptr %priv_dev, i32 0, i32 13, i32 %idxprom.i.i.i
  %98 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i.i.i, align 4
  %100 = ptrtoint ptr %wIndex.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 2)
  %101 = load i16, ptr %wIndex.i.i.i, align 1
  %102 = tail call i16 @llvm.bswap.i16(i16 %101) #7
  %conv38.i.i.i = zext i16 %102 to i32
  tail call void @cdns3_select_ep(ptr noundef %priv_dev, i32 noundef %conv38.i.i.i) #7
  %103 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs, align 4
  %ep_sts.i.i.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %104, i32 0, i32 11
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_sts.i.i.i) #7, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %106 = and i32 %105, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool42.not.i.i.i = icmp eq i32 %106, 0
  br i1 %tobool42.not.i.i.i, label %lor.lhs.false.i45.i.i, label %sw.bb34.i.i.i.if.then45.i.i.i_crit_edge

sw.bb34.i.i.i.if.then45.i.i.i_crit_edge:          ; preds = %sw.bb34.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45.i.i.i

lor.lhs.false.i45.i.i:                            ; preds = %sw.bb34.i.i.i
  %flags.i.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %99, i32 0, i32 9
  %107 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags.i.i.i, align 4
  %and43.i.i.i = and i32 %108, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i.i.i)
  %tobool44.not.i.i.i = icmp eq i32 %and43.i.i.i, 0
  br i1 %tobool44.not.i.i.i, label %lor.lhs.false.i45.i.i.sw.epilog.i.i.i_crit_edge, label %lor.lhs.false.i45.i.i.if.then45.i.i.i_crit_edge

lor.lhs.false.i45.i.i.if.then45.i.i.i_crit_edge:  ; preds = %lor.lhs.false.i45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45.i.i.i

lor.lhs.false.i45.i.i.sw.epilog.i.i.i_crit_edge:  ; preds = %lor.lhs.false.i45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i

if.then45.i.i.i:                                  ; preds = %lor.lhs.false.i45.i.i.if.then45.i.i.i_crit_edge, %sw.bb34.i.i.i.if.then45.i.i.i_crit_edge
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %if.then45.i.i.i, %lor.lhs.false.i45.i.i.sw.epilog.i.i.i_crit_edge, %if.end12.i.i.i, %sw.bb.i34.i.i.sw.epilog.i.i.i_crit_edge
  %usb_status.3.i.i.i = phi i16 [ 1, %if.then45.i.i.i ], [ 0, %lor.lhs.false.i45.i.i.sw.epilog.i.i.i_crit_edge ], [ %81, %sw.bb.i34.i.i.sw.epilog.i.i.i_crit_edge ], [ %88, %if.end12.i.i.i ]
  %109 = ptrtoint ptr %setup_buf.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %setup_buf.i, align 4
  %111 = tail call i16 @llvm.bswap.i16(i16 %usb_status.3.i.i.i) #7
  %112 = ptrtoint ptr %110 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %110, align 2
  %setup_dma.i.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 9
  %113 = ptrtoint ptr %setup_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %setup_dma.i.i.i, align 8
  tail call fastcc void @cdns3_ep0_run_transfer(ptr noundef %priv_dev, i32 noundef %114, i32 noundef 2, i32 noundef 1, i32 noundef 0) #7
  br label %if.else25.i

sw.bb5.i.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i = tail call fastcc i32 @cdns3_req_ep0_handle_feature(ptr noundef %priv_dev, ptr noundef %19, i32 noundef 0) #7
  br label %if.end17.i

sw.bb7.i.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i.i = tail call fastcc i32 @cdns3_req_ep0_handle_feature(ptr noundef %priv_dev, ptr noundef %19, i32 noundef 1) #7
  br label %if.end17.i

sw.bb9.i.i:                                       ; preds = %if.then13.i
  %state.i47.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 2, i32 9
  %115 = ptrtoint ptr %state.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %state.i47.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %116)
  %cmp.i48.i.i = icmp ult i32 %116, 6
  br i1 %cmp.i48.i.i, label %sw.bb9.i.i.if.then24.i_crit_edge, label %if.end.i49.i.i

sw.bb9.i.i.if.then24.i_crit_edge:                 ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i

if.end.i49.i.i:                                   ; preds = %sw.bb9.i.i
  %117 = ptrtoint ptr %wLength.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 2)
  %118 = load i16, ptr %wLength.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %118)
  %cmp1.not.i.i.i = icmp eq i16 %118, 1536
  br i1 %cmp1.not.i.i.i, label %if.end6.i.i.i, label %do.end.i50.i.i

do.end.i50.i.i:                                   ; preds = %if.end.i49.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %priv_dev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %priv_dev, align 8
  %conv5.i.i.i = zext i16 %118 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.17, i32 noundef %conv5.i.i.i) #10
  br label %if.then24.i

if.end6.i.i.i:                                    ; preds = %if.end.i49.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %setup_dma.i51.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 9
  %121 = ptrtoint ptr %setup_dma.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %setup_dma.i51.i.i, align 8
  tail call fastcc void @cdns3_ep0_run_transfer(ptr noundef %priv_dev, i32 noundef %122, i32 noundef 6, i32 noundef 1, i32 noundef 0) #7
  br label %if.else25.i

sw.bb11.i.i:                                      ; preds = %if.then13.i
  %wIndex.i53.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %19, i32 0, i32 3
  %123 = ptrtoint ptr %wIndex.i53.i.i to i32
  call void @__asan_loadN_noabort(i32 %123, i32 2)
  %124 = load i16, ptr %wIndex.i53.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %tobool.not.i54.i.i = icmp eq i16 %124, 0
  br i1 %tobool.not.i54.i.i, label %lor.lhs.false.i56.i.i, label %sw.bb11.i.i.if.then24.i_crit_edge

sw.bb11.i.i.if.then24.i_crit_edge:                ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i

lor.lhs.false.i56.i.i:                            ; preds = %sw.bb11.i.i
  %125 = ptrtoint ptr %wLength.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 2)
  %126 = load i16, ptr %wLength.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %tobool2.not.i.i.i = icmp eq i16 %126, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i58.i.i, label %lor.lhs.false.i56.i.i.if.then24.i_crit_edge

lor.lhs.false.i56.i.i.if.then24.i_crit_edge:      ; preds = %lor.lhs.false.i56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i

if.end.i58.i.i:                                   ; preds = %lor.lhs.false.i56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %wValue.i57.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %19, i32 0, i32 2
  %127 = ptrtoint ptr %wValue.i57.i.i to i32
  call void @__asan_loadN_noabort(i32 %127, i32 2)
  %128 = load i16, ptr %wValue.i57.i.i, align 1
  %129 = tail call i16 @llvm.bswap.i16(i16 %128) #7
  %isoch_delay.i.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 17
  %130 = ptrtoint ptr %isoch_delay.i.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %isoch_delay.i.i.i, align 8
  br label %if.else25.i

sw.default.i.i:                                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i.i) #7
  %131 = ptrtoint ptr %status_completion_no_call.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %bf.load.i60.i.i = load i16, ptr %status_completion_no_call.i, align 2
  %bf.set.i.i.i = or i16 %bf.load.i60.i.i, 2048
  store i16 %bf.set.i.i.i, ptr %status_completion_no_call.i, align 2
  %gadget_driver.i.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 3
  %132 = ptrtoint ptr %gadget_driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %gadget_driver.i.i.i, align 8
  %setup.i.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %133, i32 0, i32 4
  %134 = ptrtoint ptr %setup.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %setup.i.i.i, align 4
  %gadget.i61.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 2
  %call.i.i.i = tail call i32 %135(ptr noundef %gadget.i61.i.i, ptr noundef %19) #7
  %136 = ptrtoint ptr %status_completion_no_call.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %bf.load2.i.i.i = load i16, ptr %status_completion_no_call.i, align 2
  %bf.clear3.i.i.i = and i16 %bf.load2.i.i.i, -2049
  store i16 %bf.clear3.i.i.i, ptr %status_completion_no_call.i, align 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i.i) #7
  br label %if.end17.i

if.else15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #7
  %137 = ptrtoint ptr %status_completion_no_call.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %bf.load.i.i = load i16, ptr %status_completion_no_call.i, align 2
  %bf.set.i.i = or i16 %bf.load.i.i, 2048
  store i16 %bf.set.i.i, ptr %status_completion_no_call.i, align 2
  %gadget_driver.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 3
  %138 = ptrtoint ptr %gadget_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %gadget_driver.i.i, align 8
  %setup.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %139, i32 0, i32 4
  %140 = ptrtoint ptr %setup.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %setup.i.i, align 4
  %gadget.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 2
  %call.i.i = tail call i32 %141(ptr noundef %gadget.i.i, ptr noundef %19) #7
  %142 = ptrtoint ptr %status_completion_no_call.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %bf.load2.i.i = load i16, ptr %status_completion_no_call.i, align 2
  %bf.clear3.i.i = and i16 %bf.load2.i.i, -2049
  store i16 %bf.clear3.i.i, ptr %status_completion_no_call.i, align 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #7
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else15.i, %sw.default.i.i, %sw.bb7.i.i, %sw.bb5.i.i, %sw.bb33.i.i.i, %if.end10.i.i.i
  %result.0.i = phi i32 [ %call.i.i, %if.else15.i ], [ %call.i.i.i, %sw.default.i.i ], [ %call8.i.i, %sw.bb7.i.i ], [ %call6.i.i, %sw.bb5.i.i ], [ %result.037.i.i.i, %if.end10.i.i.i ], [ %call.i.i41.i.i, %sw.bb33.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %result.0.i)
  %cmp18.i = icmp eq i32 %result.0.i, 32767
  br i1 %cmp18.i, label %if.end17.i.if.end20_crit_edge, label %if.end21.i

if.end17.i.if.end20_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end21.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i)
  %cmp22.i = icmp slt i32 %result.0.i, 0
  br i1 %cmp22.i, label %if.end21.i.if.then24.i_crit_edge, label %if.end21.i.if.else25.i_crit_edge

if.end21.i.if.else25.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else25.i

if.end21.i.if.then24.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i

if.then24.i:                                      ; preds = %if.end21.i.if.then24.i_crit_edge, %lor.lhs.false.i56.i.i.if.then24.i_crit_edge, %sw.bb11.i.i.if.then24.i_crit_edge, %do.end.i50.i.i, %sw.bb9.i.i.if.then24.i_crit_edge, %sw.bb3.i.i.if.then24.i_crit_edge, %sw.bb1.i.i.if.then24.i_crit_edge, %do.end7.i.i.i, %do.end.i.i.i
  tail call fastcc void @cdns3_ep0_complete_setup(ptr noundef %priv_dev, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %if.end20

if.else25.i:                                      ; preds = %if.end21.i.if.else25.i_crit_edge, %if.end.i58.i.i, %if.end6.i.i.i, %sw.epilog.i.i.i, %sw.bb2.i.i.i.if.else25.i_crit_edge, %lor.lhs.false.i.i.i.if.else25.i_crit_edge, %if.end9.i.i.i
  %143 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %33, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %144)
  %cmp28.i = icmp eq i8 %144, 2
  br i1 %cmp28.i, label %if.then30.i, label %if.else25.i.if.end20_crit_edge

if.else25.i.if.end20_crit_edge:                   ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then30.i:                                      ; preds = %if.else25.i
  %145 = ptrtoint ptr %eps.i55 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %eps.i55, align 8
  %pending_req_list.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %146, i32 0, i32 1
  %call.i54.i = tail call ptr @cdns3_next_request(ptr noundef %pending_req_list.i.i) #7
  %tobool.not.i.i = icmp eq ptr %call.i54.i, null
  br i1 %tobool.not.i.i, label %if.then30.i.cdns3_ep0_complete_setup.exit.i_crit_edge, label %if.then.i.i

if.then30.i.cdns3_ep0_complete_setup.exit.i_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns3_ep0_complete_setup.exit.i

if.then.i.i:                                      ; preds = %if.then30.i
  %list.i.i = getelementptr inbounds %struct.usb_request, ptr %call.i54.i, i32 0, i32 9
  %call.i.i.i55.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i) #7
  br i1 %call.i.i.i55.i, label %if.end.i.i.i.i, label %if.then.i.i.list_del_init.exit.i.i_crit_edge

if.then.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.usb_request, ptr %call.i54.i, i32 0, i32 9, i32 1
  %147 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %prev.i.i.i.i, align 4
  %149 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %list.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %148, ptr %prev1.i.i.i.i.i, align 4
  %152 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile ptr %150, ptr %148, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del_init.exit.i.i_crit_edge
  %153 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile ptr %list.i.i, ptr %list.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.usb_request, ptr %call.i54.i, i32 0, i32 9, i32 1
  %154 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %list.i.i, ptr %prev.i3.i.i.i, align 4
  br label %cdns3_ep0_complete_setup.exit.i

cdns3_ep0_complete_setup.exit.i:                  ; preds = %list_del_init.exit.i.i, %if.then30.i.cdns3_ep0_complete_setup.exit.i_crit_edge
  %155 = ptrtoint ptr %ep0_data_dir.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %ep0_data_dir.i, align 4
  %156 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %33, align 8
  %setup_dma.i.i56.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 9
  %157 = ptrtoint ptr %setup_dma.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %setup_dma.i.i56.i, align 8
  tail call fastcc void @cdns3_ep0_run_transfer(ptr noundef %priv_dev, i32 noundef %158, i32 noundef 8, i32 noundef 0, i32 noundef 0) #7
  %159 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %33, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %160 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regs, align 4
  %ep_cmd9.i.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %161, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd9.i.i, i32 671088640) #7, !srcloc !85
  br label %if.end20

if.else:                                          ; preds = %if.end
  %162 = and i32 %3, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %if.else.if.end20_crit_edge, label %if.then18

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %if.else
  %ep0_data_dir = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 12
  %164 = ptrtoint ptr %ep0_data_dir to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %dir, ptr %ep0_data_dir, align 4
  %eps.i57 = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 13
  %165 = ptrtoint ptr %eps.i57 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %eps.i57, align 8
  %pending_req_list.i58 = getelementptr inbounds %struct.cdns3_endpoint, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %pending_req_list.i58 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile ptr, ptr %pending_req_list.i58, align 4
  %cmp.i.not.i59 = icmp eq ptr %168, %pending_req_list.i58
  br i1 %cmp.i.not.i59, label %if.then18.if.end.i67_crit_edge, label %if.then.i63

if.then18.if.end.i67_crit_edge:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i67

if.then.i63:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %trb_pool.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %166, i32 0, i32 5
  %169 = ptrtoint ptr %trb_pool.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %trb_pool.i, align 4
  tail call fastcc void @trace_cdns3_complete_trb(ptr noundef %166, ptr noundef %170) #7
  %call2.i60 = tail call ptr @cdns3_next_request(ptr noundef %pending_req_list.i58) #7
  %171 = ptrtoint ptr %trb_pool.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %trb_pool.i, align 4
  %length.i = getelementptr inbounds %struct.cdns3_trb, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %length.i, align 4
  %175 = and i32 %174, -65280
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #7
  %actual.i = getelementptr inbounds %struct.usb_request, ptr %call2.i60, i32 0, i32 12
  %177 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %actual.i, align 4
  %178 = ptrtoint ptr %ep0_data_dir to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %ep0_data_dir, align 4
  %conv.i = trunc i32 %179 to i8
  %dir.i62 = getelementptr inbounds %struct.cdns3_endpoint, ptr %166, i32 0, i32 11
  %180 = ptrtoint ptr %dir.i62 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %conv.i, ptr %dir.i62, align 4
  tail call void @cdns3_gadget_giveback(ptr noundef %166, ptr noundef %call2.i60, i32 noundef 0) #7
  br label %if.end.i67

if.end.i67:                                       ; preds = %if.then.i63, %if.then18.if.end.i67_crit_edge
  %181 = ptrtoint ptr %eps.i57 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %eps.i57, align 8
  %pending_req_list.i.i64 = getelementptr inbounds %struct.cdns3_endpoint, ptr %182, i32 0, i32 1
  %call.i.i65 = tail call ptr @cdns3_next_request(ptr noundef %pending_req_list.i.i64) #7
  %tobool.not.i.i66 = icmp eq ptr %call.i.i65, null
  br i1 %tobool.not.i.i66, label %if.end.i67.cdns3_transfer_completed.exit_crit_edge, label %if.then.i.i70

if.end.i67.cdns3_transfer_completed.exit_crit_edge: ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns3_transfer_completed.exit

if.then.i.i70:                                    ; preds = %if.end.i67
  %list.i.i68 = getelementptr inbounds %struct.usb_request, ptr %call.i.i65, i32 0, i32 9
  %call.i.i.i.i69 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i68) #7
  br i1 %call.i.i.i.i69, label %if.end.i.i.i.i73, label %if.then.i.i70.list_del_init.exit.i.i75_crit_edge

if.then.i.i70.list_del_init.exit.i.i75_crit_edge: ; preds = %if.then.i.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i.i75

if.end.i.i.i.i73:                                 ; preds = %if.then.i.i70
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i71 = getelementptr inbounds %struct.usb_request, ptr %call.i.i65, i32 0, i32 9, i32 1
  %183 = ptrtoint ptr %prev.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %prev.i.i.i.i71, align 4
  %185 = ptrtoint ptr %list.i.i68 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %list.i.i68, align 4
  %prev1.i.i.i.i.i72 = getelementptr inbounds %struct.list_head, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %prev1.i.i.i.i.i72 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %184, ptr %prev1.i.i.i.i.i72, align 4
  %188 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %188)
  store volatile ptr %186, ptr %184, align 4
  br label %list_del_init.exit.i.i75

list_del_init.exit.i.i75:                         ; preds = %if.end.i.i.i.i73, %if.then.i.i70.list_del_init.exit.i.i75_crit_edge
  %189 = ptrtoint ptr %list.i.i68 to i32
  call void @__asan_store4_noabort(i32 %189)
  store volatile ptr %list.i.i68, ptr %list.i.i68, align 4
  %prev.i3.i.i.i74 = getelementptr inbounds %struct.usb_request, ptr %call.i.i65, i32 0, i32 9, i32 1
  %190 = ptrtoint ptr %prev.i3.i.i.i74 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %list.i.i68, ptr %prev.i3.i.i.i74, align 4
  br label %cdns3_transfer_completed.exit

cdns3_transfer_completed.exit:                    ; preds = %list_del_init.exit.i.i75, %if.end.i67.cdns3_transfer_completed.exit_crit_edge
  %191 = ptrtoint ptr %ep0_data_dir to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 0, ptr %ep0_data_dir, align 4
  %ep0_stage.i.i.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 11
  %192 = ptrtoint ptr %ep0_stage.i.i.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 0, ptr %ep0_stage.i.i.i, align 8
  %setup_dma.i.i.i76 = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 9
  %193 = ptrtoint ptr %setup_dma.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %setup_dma.i.i.i76, align 8
  tail call fastcc void @cdns3_ep0_run_transfer(ptr noundef %priv_dev, i32 noundef %194, i32 noundef 8, i32 noundef 0, i32 noundef 0) #7
  %195 = ptrtoint ptr %ep0_stage.i.i.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %ep0_stage.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %196 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %regs, align 4
  %ep_cmd9.i.i78 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %197, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd9.i.i78, i32 536870912) #7, !srcloc !85
  br label %if.end20

if.end20:                                         ; preds = %cdns3_transfer_completed.exit, %if.else.if.end20_crit_edge, %cdns3_ep0_complete_setup.exit.i, %if.else25.i.if.end20_crit_edge, %if.then24.i, %if.end17.i.if.end20_crit_edge
  %and21 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp ne i32 %and21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp = icmp eq i32 %dir, 0
  %or.cond54 = and i1 %cmp, %tobool22.not
  br i1 %or.cond54, label %land.lhs.true24, label %if.end20.if.end32_crit_edge

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

land.lhs.true24:                                  ; preds = %if.end20
  %198 = ptrtoint ptr %status_completion_no_call.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %bf.load25 = load i16, ptr %status_completion_no_call.i, align 2
  %199 = and i16 %bf.load25, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %199)
  %tobool29.not = icmp eq i16 %199, 0
  br i1 %tobool29.not, label %if.then30, label %land.lhs.true24.if.end32_crit_edge

land.lhs.true24.if.end32_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then30:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #9
  %ep0_data_dir.i80 = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 12
  %200 = ptrtoint ptr %ep0_data_dir.i80 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %ep0_data_dir.i80, align 4
  %ep0_stage.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 11
  %201 = ptrtoint ptr %ep0_stage.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 0, ptr %ep0_stage.i, align 8
  %setup_dma.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 9
  %202 = ptrtoint ptr %setup_dma.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %setup_dma.i, align 8
  tail call fastcc void @cdns3_ep0_run_transfer(ptr noundef %priv_dev, i32 noundef %203, i32 noundef 8, i32 noundef 0, i32 noundef 0) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %land.lhs.true24.if.end32_crit_edge, %if.end20.if.end32_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdns3_select_ep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_ep0_irq(ptr noundef %priv_dev, i32 noundef %ep_sts) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_ep0_irq, i32 0, i32 1), ptr blockaddress(@trace_cdns3_ep0_irq, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !90

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !91

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !92
  %call42 = tail call i32 @__traceiter_cdns3_ep0_irq(ptr noundef null, ptr noundef %priv_dev, i32 noundef %ep_sts) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !93
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !91

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_ep0_irq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_ep0_irq, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cdns3_ep0_irq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_cdns3_ep0_irq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 170, ptr noundef nonnull @.str.6) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !95
  %31 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns3_gadget_ep_set_wedge(ptr noundef %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cdns3_dev = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 7
  %0 = ptrtoint ptr %cdns3_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns3_dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns3_gadget_ep_set_wedge.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns3_gadget_ep_set_wedge, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns3_gadget_ep_set_wedge.__UNIQUE_ID_ddebug348, ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @cdns3_gadget_ep_set_halt(ptr noundef %ep, i32 noundef 1) #7
  %flags = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 9
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or = or i32 %7, 8
  store i32 %or, ptr %flags, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns3_gadget_ep_set_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdns3_ep0_config(ptr noundef %priv_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 6
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %speed = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp = icmp eq i32 %3, 5
  %spec.select = select i1 %cmp, i32 512, i32 64
  %eps = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 13
  %4 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eps, align 8
  %pending_req_list = getelementptr inbounds %struct.cdns3_endpoint, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pending_req_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %pending_req_list, align 4
  %cmp.i.not = icmp eq ptr %7, %pending_req_list
  br i1 %cmp.i.not, label %entry.if.end5_crit_edge, label %if.then2

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then2:                                         ; preds = %entry
  %call4 = tail call ptr @cdns3_next_request(ptr noundef %pending_req_list) #7
  %list = getelementptr inbounds %struct.usb_request, ptr %call4, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then2.list_del_init.exit_crit_edge

if.then2.list_del_init.exit_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.usb_request, ptr %call4, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then2.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.usb_request, ptr %call4, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %prev.i3.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %list_del_init.exit, %entry.if.end5_crit_edge
  %u1_allowed = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 18
  %16 = ptrtoint ptr %u1_allowed to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load = load i16, ptr %u1_allowed, align 2
  %bf.clear7 = and i16 %bf.load, -24577
  store i16 %bf.clear7, ptr %u1_allowed, align 2
  %ep0 = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ep0, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %18, i32 0, i32 7
  %19 = zext i32 %spec.select to i56
  %20 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %20, i32 7)
  %bf.load10 = load i56, ptr %maxpacket, align 2
  %bf.shl = shl nuw nsw i56 %19, 40
  %bf.clear11 = and i56 %bf.load10, 1099511627775
  %bf.set12 = or i56 %bf.clear11, %bf.shl
  store i56 %bf.set12, ptr %maxpacket, align 2
  %conv = trunc i32 %spec.select to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv)
  store i16 %21, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @cdns3_gadget_ep0_desc, i32 0, i32 4), align 1
  tail call void @cdns3_select_ep(ptr noundef %priv_dev, i32 noundef 0) #7
  %dev_ver = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 4
  %22 = ptrtoint ptr %dev_ver to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dev_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148748, i32 %23)
  %cmp13 = icmp ugt i32 %23, 148748
  br i1 %cmp13, label %if.then15, label %if.end5.if.end18_crit_edge

if.end5.if.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then15:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs1, align 4
  %dtrans = getelementptr inbounds %struct.cdns3_usb_regs, ptr %25, i32 0, i32 32
  tail call void @cdns3_set_register_bit(ptr noundef %dtrans, i32 noundef 65537) #7
  %26 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs1, align 4
  %tdl_from_trb = getelementptr inbounds %struct.cdns3_usb_regs, ptr %27, i32 0, i32 33
  tail call void @cdns3_set_register_bit(ptr noundef %tdl_from_trb, i32 noundef 65537) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end5.if.end18_crit_edge
  %shl = shl nuw nsw i32 %spec.select, 16
  %or = or i32 %shl, 1
  %flags = getelementptr inbounds %struct.cdns3_endpoint, ptr %5, i32 0, i32 9
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %and19 = and i32 %29, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body, label %if.end18.do.body24_crit_edge

if.end18.do.body24_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body24

do.body:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %or)
  %ep_cfg22 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cfg22, i32 %30) #7, !srcloc !85
  br label %do.body24

do.body24:                                        ; preds = %do.body, %if.end18.do.body24_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void @arm_heavy_mb() #7
  %ep_sts_en = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sts_en, i32 -1862270976) #7, !srcloc !85
  tail call void @cdns3_select_ep(ptr noundef %priv_dev, i32 noundef 128) #7
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %and28 = and i32 %32, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body31, label %do.body24.if.end35_crit_edge

do.body24.if.end35_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.body31:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %33 = tail call i32 @llvm.bswap.i32(i32 %or)
  %ep_cfg34 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cfg34, i32 %33) #7, !srcloc !85
  br label %if.end35

if.end35:                                         ; preds = %do.body31, %do.body24.if.end35_crit_edge
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %or37 = or i32 %35, 65536
  store i32 %or37, ptr %flags, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sts_en, i32 -2130706432) #7, !srcloc !85
  tail call void @cdns3_set_register_bit(ptr noundef %1, i32 noundef 167772160) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cdns3_next_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdns3_set_register_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns3_init_ep0(ptr nocapture noundef writeonly %priv_dev, ptr noundef %priv_ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 8
  %0 = ptrtoint ptr %name to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 1701851136, ptr %name, align 1
  %ops = getelementptr inbounds %struct.usb_ep, ptr %priv_ep, i32 0, i32 2
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cdns3_gadget_ep0_ops, ptr %ops, align 4
  %maxburst = getelementptr inbounds %struct.usb_ep, ptr %priv_ep, i32 0, i32 7
  %2 = ptrtoint ptr %maxburst to i32
  call void @__asan_loadN_noabort(i32 %2, i32 7)
  %bf.load = load i56, ptr %maxburst, align 2
  %bf.clear = and i56 %bf.load, -63
  %bf.set = or i56 %bf.clear, 2
  store i56 %bf.set, ptr %maxburst, align 2
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %priv_ep, i32 noundef 512) #7
  %address = getelementptr inbounds %struct.usb_ep, ptr %priv_ep, i32 0, i32 8
  %3 = ptrtoint ptr %address to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %address, align 1
  %caps = getelementptr inbounds %struct.usb_ep, ptr %priv_ep, i32 0, i32 4
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load5 = load i8, ptr %caps, align 4
  %bf.set17 = or i8 %bf.load5, -116
  store i8 %bf.set17, ptr %caps, align 4
  %name21 = getelementptr inbounds %struct.usb_ep, ptr %priv_ep, i32 0, i32 1
  %5 = ptrtoint ptr %name21 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %name21, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %priv_ep, i32 0, i32 9
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cdns3_gadget_ep0_desc, ptr %desc, align 4
  %ep0 = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %ep0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %priv_ep, ptr %ep0, align 4
  %type = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 13
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %type, align 2
  %call24 = tail call i32 @cdns3_allocate_trb_pool(ptr noundef %priv_ep) #7
  ret i32 %call24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns3_allocate_trb_pool(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cdns3_ep0_irq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_ctrl_req(ptr noundef %ctrl) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_ctrl_req, i32 0, i32 1), ptr blockaddress(@trace_cdns3_ctrl_req, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !90

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !91

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !100
  %call42 = tail call i32 @__traceiter_cdns3_ctrl_req(ptr noundef null, ptr noundef %ctrl) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !101
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !91

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_ctrl_req, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_ctrl_req, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cdns3_ctrl_req.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_cdns3_ctrl_req.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 200, ptr noundef nonnull @.str.6) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !95
  %31 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
declare dso_local void @cdns3_gadget_giveback(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns3_ep0_complete_setup(ptr noundef %priv_dev, i8 noundef zeroext %send_stall, i8 noundef zeroext %send_erdy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %eps = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 13
  %0 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eps, align 8
  %pending_req_list = getelementptr inbounds %struct.cdns3_endpoint, ptr %1, i32 0, i32 1
  %call = tail call ptr @cdns3_next_request(ptr noundef %pending_req_list) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %list = getelementptr inbounds %struct.usb_request, ptr %call, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.usb_request, ptr %call, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.usb_request, ptr %call, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i3.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %send_stall)
  %tobool1.not = icmp eq i8 %send_stall, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @trace_cdns3_halt(ptr noundef %1)
  tail call void @cdns3_select_ep(ptr noundef %priv_dev, i32 noundef 0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %regs = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 6
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %ep_cmd = getelementptr inbounds %struct.cdns3_usb_regs, ptr %11, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd, i32 33554432) #7, !srcloc !85
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ep0_data_dir.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 12
  %12 = ptrtoint ptr %ep0_data_dir.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ep0_data_dir.i, align 4
  %ep0_stage.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 11
  %13 = ptrtoint ptr %ep0_stage.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %ep0_stage.i, align 8
  %setup_dma.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 9
  %14 = ptrtoint ptr %setup_dma.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %setup_dma.i, align 8
  tail call fastcc void @cdns3_ep0_run_transfer(ptr noundef %priv_dev, i32 noundef %15, i32 noundef 8, i32 noundef 0, i32 noundef 0) #7
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %ep0_stage = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 11
  %16 = ptrtoint ptr %ep0_stage to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %ep0_stage, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %send_erdy)
  %tobool7.not = icmp eq i8 %send_erdy, 0
  %or = select i1 %tobool7.not, i32 536870912, i32 671088640
  %regs8 = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 6
  %17 = ptrtoint ptr %regs8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs8, align 4
  %ep_cmd9 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %18, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd9, i32 %or) #7, !srcloc !85
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cdns3_ctrl_req(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns3_req_ep0_handle_feature(ptr noundef %priv_dev, ptr nocapture noundef readonly %ctrl, i32 noundef %set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctrl, align 1
  %2 = and i8 %1, 31
  %and = zext i8 %2 to i32
  %3 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %wValue1.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %4 = ptrtoint ptr %wValue1.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %wValue1.i, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #7
  %state2.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 2, i32 9
  %7 = ptrtoint ptr %state2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state2.i, align 8
  %speed4.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 2, i32 5
  %9 = ptrtoint ptr %speed4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed4.i, align 8
  %11 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %6, label %sw.bb.cleanup_crit_edge [
    i16 1, label %sw.bb.i
    i16 48, label %sw.bb6.i
    i16 49, label %sw.bb21.i
    i16 2, label %sw.bb41.i
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool.not.i = icmp eq i32 %set, 0
  %wake_up_flag.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 18
  %12 = ptrtoint ptr %wake_up_flag.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i = load i16, ptr %wake_up_flag.i, align 2
  %bf.shl.i = select i1 %tobool.not.i, i16 0, i16 512
  %bf.clear.i = and i16 %bf.load.i, -513
  %bf.set.i = or i16 %bf.clear.i, %bf.shl.i
  store i16 %bf.set.i, ptr %wake_up_flag.i, align 2
  br label %cleanup

sw.bb6.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %cmp8.not.i = icmp eq i32 %10, 5
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp8.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i, label %sw.bb6.i.cleanup_crit_edge

sw.bb6.i.cleanup_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool10.not.i = icmp eq i32 %set, 0
  %u1_allowed.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 18
  %13 = ptrtoint ptr %u1_allowed.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load15.i = load i16, ptr %u1_allowed.i, align 2
  %bf.shl17.i = select i1 %tobool10.not.i, i16 0, i16 16384
  %bf.clear18.i = and i16 %bf.load15.i, -16385
  %bf.set19.i = or i16 %bf.clear18.i, %bf.shl17.i
  store i16 %bf.set19.i, ptr %u1_allowed.i, align 2
  br label %cleanup

sw.bb21.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %cmp22.not.i = icmp eq i32 %8, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %cmp25.not.i = icmp eq i32 %10, 5
  %or.cond84.i = select i1 %cmp22.not.i, i1 %cmp25.not.i, i1 false
  br i1 %or.cond84.i, label %if.end28.i, label %sw.bb21.i.cleanup_crit_edge

sw.bb21.i.cleanup_crit_edge:                      ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28.i:                                       ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool29.not.i = icmp eq i32 %set, 0
  %u2_allowed.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 18
  %14 = ptrtoint ptr %u2_allowed.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load34.i = load i16, ptr %u2_allowed.i, align 2
  %bf.shl36.i = select i1 %tobool29.not.i, i16 0, i16 8192
  %bf.clear37.i = and i16 %bf.load34.i, -8193
  %bf.set38.i = or i16 %bf.clear37.i, %bf.shl36.i
  store i16 %bf.set38.i, ptr %u2_allowed.i, align 2
  br label %cleanup

sw.bb41.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %cmp42.not.i = icmp ne i32 %8, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp45.i = icmp ugt i32 %10, 3
  %or.cond85.i = select i1 %cmp42.not.i, i1 true, i1 %cmp45.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool49.not.i = icmp eq i32 %set, 0
  %or.cond86.i = or i1 %tobool49.not.i, %or.cond85.i
  br i1 %or.cond86.i, label %sw.bb41.i.cleanup_crit_edge, label %lor.lhs.false50.i

sw.bb41.i.cleanup_crit_edge:                      ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false50.i:                                ; preds = %sw.bb41.i
  %wIndex.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %15 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %wIndex.i, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #7
  %18 = and i16 %17, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp52.not.i = icmp eq i16 %18, 0
  br i1 %cmp52.not.i, label %if.end55.i, label %lor.lhs.false50.i.cleanup_crit_edge

lor.lhs.false50.i.cleanup_crit_edge:              ; preds = %lor.lhs.false50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end55.i:                                       ; preds = %lor.lhs.false50.i
  %19 = lshr i16 %17, 8
  %trunc.i = trunc i16 %19 to i8
  %trunc.off.i = add i8 %trunc.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %trunc.off.i)
  %switch.i = icmp ult i8 %trunc.off.i, 4
  br i1 %switch.i, label %sw.bb59.i, label %if.end55.i.cleanup_crit_edge

if.end55.i.cleanup_crit_edge:                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb59.i:                                        ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv58.i = zext i16 %19 to i32
  %regs.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 6
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %usb_cmd.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %21, i32 0, i32 2
  %sub.i = shl nuw nsw i32 %conv58.i, 10
  %shl.i = add nuw nsw i32 %sub.i, 3072
  %and61.i = and i32 %shl.i, 3072
  %or.i = or i32 %and61.i, 512
  tail call void @cdns3_set_register_bit(ptr noundef %usb_cmd.i, i32 noundef %or.i) #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wValue1.i13 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %22 = ptrtoint ptr %wValue1.i13 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %wValue1.i13, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cond.i = icmp eq i16 %23, 0
  %spec.select.i = select i1 %cond.i, i32 0, i32 -22
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %wValue.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %24 = ptrtoint ptr %wValue.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %wValue.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp.not.i14 = icmp eq i16 %25, 0
  br i1 %cmp.not.i14, label %if.end.i17, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i17:                                       ; preds = %sw.bb3
  %wIndex.i15 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %26 = ptrtoint ptr %wIndex.i15 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %wIndex.i15, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #7
  %29 = and i16 %28, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.i16 = icmp eq i16 %29, 0
  br i1 %tobool.not.i16, label %if.end.i17.cleanup_crit_edge, label %if.end4.i

if.end.i17.cleanup_crit_edge:                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i17
  %conv6.i = trunc i16 %28 to i8
  %call.i = tail call zeroext i8 @cdns3_ep_addr_to_index(i8 noundef zeroext %conv6.i) #7
  %idxprom.i = zext i8 %call.i to i32
  %arrayidx.i = getelementptr %struct.cdns3_device, ptr %priv_dev, i32 0, i32 13, i32 %idxprom.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %32 = ptrtoint ptr %wIndex.i15 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %wIndex.i15, align 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #7
  %conv8.i = zext i16 %34 to i32
  tail call void @cdns3_select_ep(ptr noundef %priv_dev, i32 noundef %conv8.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool9.not.i = icmp eq i32 %set, 0
  br i1 %tobool9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__cdns3_gadget_ep_set_halt(ptr noundef %31) #7
  br label %if.end16.i

if.else.i:                                        ; preds = %if.end4.i
  %flags.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %31, i32 0, i32 9
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 4
  %and11.i = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.else.i.if.end16.i_crit_edge

if.else.i.if.end16.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i = tail call i32 @__cdns3_gadget_ep_clear_halt(ptr noundef %31) #7
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %if.else.i.if.end16.i_crit_edge, %if.then10.i
  %ret.0.i = phi i32 [ 0, %if.then10.i ], [ 0, %if.else.i.if.end16.i_crit_edge ], [ %call14.i, %if.then13.i ]
  tail call void @cdns3_select_ep(ptr noundef %priv_dev, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16.i, %if.end.i17.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb1, %sw.bb59.i, %if.end55.i.cleanup_crit_edge, %lor.lhs.false50.i.cleanup_crit_edge, %sw.bb41.i.cleanup_crit_edge, %if.end28.i, %sw.bb21.i.cleanup_crit_edge, %if.end.i, %sw.bb6.i.cleanup_crit_edge, %sw.bb.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %spec.select.i, %sw.bb1 ], [ -22, %sw.bb6.i.cleanup_crit_edge ], [ -22, %sw.bb21.i.cleanup_crit_edge ], [ -22, %sw.bb41.i.cleanup_crit_edge ], [ -22, %lor.lhs.false50.i.cleanup_crit_edge ], [ 0, %sw.bb59.i ], [ 0, %if.end28.i ], [ 0, %if.end.i ], [ 0, %sw.bb.i ], [ -22, %if.end55.i.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ %ret.0.i, %if.end16.i ], [ -22, %sw.bb3.cleanup_crit_edge ], [ 0, %if.end.i17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdns3_hw_reset_eps_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @cdns3_ep_addr_to_index(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns3_ep0_run_transfer(ptr noundef %priv_dev, i32 noundef %dma_addr, i32 noundef %length, i32 noundef %erdy, i32 noundef %zlp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 6
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %eps = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 13
  %2 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eps, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %dma_addr)
  %trb_pool = getelementptr inbounds %struct.cdns3_endpoint, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trb_pool, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %6, align 4
  %and3 = and i32 %length, 131071
  %8 = tail call i32 @llvm.bswap.i32(i32 %and3)
  %9 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trb_pool, align 4
  %length6 = getelementptr inbounds %struct.cdns3_trb, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %length6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %length6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zlp)
  %tobool.not = icmp eq i32 %zlp, 0
  %12 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trb_pool, align 4
  %control21 = getelementptr inbounds %struct.cdns3_trb, ptr %13, i32 0, i32 2
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %control21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 17039360, ptr %control21, align 4
  %15 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trb_pool, align 4
  %arrayidx11 = getelementptr %struct.cdns3_trb, ptr %16, i32 1
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %4, ptr %arrayidx11, align 4
  %18 = load ptr, ptr %trb_pool, align 4
  %length15 = getelementptr %struct.cdns3_trb, ptr %18, i32 1, i32 1
  %19 = ptrtoint ptr %length15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %length15, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %control21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 553910272, ptr %control21, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ 0, %if.else ], [ 553910272, %if.then ]
  %21 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %trb_pool, align 4
  %control24 = getelementptr %struct.cdns3_trb, ptr %22, i32 1, i32 2
  %23 = ptrtoint ptr %control24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %control24, align 4
  %24 = load ptr, ptr %trb_pool, align 4
  tail call fastcc void @trace_cdns3_prepare_trb(ptr noundef %3, ptr noundef %24)
  %ep0_data_dir = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 12
  %25 = ptrtoint ptr %ep0_data_dir to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ep0_data_dir, align 4
  tail call void @cdns3_select_ep(ptr noundef %priv_dev, i32 noundef %26) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %ep_sts = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sts, i32 -2147483648) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @arm_heavy_mb() #7
  %trb_pool_dma = getelementptr inbounds %struct.cdns3_endpoint, ptr %3, i32 0, i32 6
  %27 = ptrtoint ptr %trb_pool_dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %trb_pool_dma, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %ep_traddr = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_traddr, i32 %29) #7, !srcloc !85
  %30 = ptrtoint ptr %ep0_data_dir to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ep0_data_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool30.not = icmp eq i32 %31, 0
  %cond = select i1 %tobool30.not, ptr @.str.16, ptr @.str.15
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_traddr) #7, !srcloc !82
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call fastcc void @trace_cdns3_doorbell_ep0(ptr noundef nonnull %cond, i32 noundef %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %ep_cmd = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd, i32 1073741824) #7, !srcloc !85
  %call36 = tail call i32 @__cdns3_gadget_wakeup(ptr noundef %priv_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %erdy)
  %tobool37.not = icmp eq i32 %erdy, 0
  br i1 %tobool37.not, label %if.end.if.end44_crit_edge, label %do.body39

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

do.body39:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs1, align 4
  %ep_cmd43 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %35, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd43, i32 134217728) #7, !srcloc !85
  br label %if.end44

if.end44:                                         ; preds = %do.body39, %if.end.if.end44_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_prepare_trb(ptr noundef %priv_ep, ptr noundef %trb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_prepare_trb, i32 0, i32 1), ptr blockaddress(@trace_cdns3_prepare_trb, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !90

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !91

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !108
  %call42 = tail call i32 @__traceiter_cdns3_prepare_trb(ptr noundef null, ptr noundef %priv_ep, ptr noundef %trb) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !109
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !91

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_prepare_trb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_prepare_trb, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cdns3_prepare_trb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_cdns3_prepare_trb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 430, ptr noundef nonnull @.str.6) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !95
  %31 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_doorbell_ep0(ptr noundef %ep_name, i32 noundef %ep_trbaddr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_doorbell_ep0, i32 0, i32 1), ptr blockaddress(@trace_cdns3_doorbell_ep0, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !90

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !91

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !110
  %call42 = tail call i32 @__traceiter_cdns3_doorbell_ep0(ptr noundef null, ptr noundef %ep_name, i32 noundef %ep_trbaddr) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !111
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !91

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_doorbell_ep0, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_doorbell_ep0, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cdns3_doorbell_ep0.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_cdns3_doorbell_ep0.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 90, ptr noundef nonnull @.str.6) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !95
  %31 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
declare dso_local i32 @__cdns3_gadget_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cdns3_prepare_trb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cdns3_doorbell_ep0(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cdns3_gadget_ep_set_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cdns3_gadget_ep_clear_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_halt(ptr noundef %ep_priv) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_halt, i32 0, i32 1), ptr blockaddress(@trace_cdns3_halt, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !90

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !91

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !112
  %call42 = tail call i32 @__traceiter_cdns3_halt(ptr noundef null, ptr noundef %ep_priv, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !113
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !91

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_halt, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_halt, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_cdns3_halt.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_cdns3_halt.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 42, ptr noundef nonnull @.str.6) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !95
  %31 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cdns3_halt(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_complete_trb(ptr noundef %priv_ep, ptr noundef %trb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_complete_trb, i32 0, i32 1), ptr blockaddress(@trace_cdns3_complete_trb, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !90

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !91

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !114
  %call42 = tail call i32 @__traceiter_cdns3_complete_trb(ptr noundef null, ptr noundef %priv_ep, ptr noundef %trb) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !115
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !91

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_complete_trb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_complete_trb, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cdns3_complete_trb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_cdns3_complete_trb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 435, ptr noundef nonnull @.str.6) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !95
  %31 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
declare dso_local i32 @__traceiter_cdns3_complete_trb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cdns3_gadget_ep0_enable(ptr nocapture noundef readnone %ep, ptr nocapture noundef readnone %desc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cdns3_gadget_ep0_disable(ptr nocapture noundef readnone %ep) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cdns3_gadget_ep_alloc_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdns3_gadget_ep_free_request(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns3_gadget_ep0_queue(ptr noundef %ep, ptr noundef %request, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cdns3_dev = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 7
  %0 = ptrtoint ptr %cdns3_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns3_dev, align 4
  %lock = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  tail call fastcc void @trace_cdns3_ep0_queue(ptr noundef %1, ptr noundef %request)
  tail call void @cdns3_select_ep(ptr noundef %1, i32 noundef 0) #7
  %regs.i = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %ep_sts.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %3, i32 0, i32 11
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_sts.i) #7, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  %5 = and i32 %4, 16777344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ep0_stage = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %ep0_stage to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ep0_stage, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp9 = icmp eq i8 %7, 2
  br i1 %cmp9, label %if.then11, label %if.end69

if.then11:                                        ; preds = %if.end
  tail call void @cdns3_select_ep(ptr noundef %1, i32 noundef 0) #7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then11
  %i.0170 = phi i32 [ 0, %if.then11 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cdns3_device, ptr %1, i32 0, i32 13, i32 %i.0170
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %flags14 = getelementptr inbounds %struct.cdns3_endpoint, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags14, align 4
  %12 = and i32 %11, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %12)
  %13 = icmp eq i32 %12, 256
  br i1 %13, label %if.then20, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 @cdns3_ep_config(ptr noundef nonnull %9, i1 noundef zeroext false) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0170, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @cdns3_set_hw_configuration(ptr noundef %1) #7
  %eps.i = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %eps.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eps.i, align 8
  %pending_req_list.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %15, i32 0, i32 1
  %call.i = tail call ptr @cdns3_next_request(ptr noundef %pending_req_list.i) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.end.cdns3_ep0_complete_setup.exit_crit_edge, label %if.then.i

for.end.cdns3_ep0_complete_setup.exit_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns3_ep0_complete_setup.exit

if.then.i:                                        ; preds = %for.end
  %list.i = getelementptr inbounds %struct.usb_request, ptr %call.i, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.usb_request, ptr %call.i, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %22 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.usb_request, ptr %call.i, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %list.i, ptr %prev.i3.i.i, align 4
  br label %cdns3_ep0_complete_setup.exit

cdns3_ep0_complete_setup.exit:                    ; preds = %list_del_init.exit.i, %for.end.cdns3_ep0_complete_setup.exit_crit_edge
  %ep0_data_dir.i.i = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %ep0_data_dir.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ep0_data_dir.i.i, align 4
  %25 = ptrtoint ptr %ep0_stage to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %ep0_stage, align 8
  %setup_dma.i.i = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %setup_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %setup_dma.i.i, align 8
  tail call fastcc void @cdns3_ep0_run_transfer(ptr noundef %1, i32 noundef %27, i32 noundef 8, i32 noundef 0, i32 noundef 0) #7
  %28 = ptrtoint ptr %ep0_stage to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %ep0_stage, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %ep_cmd9.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %30, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd9.i, i32 671088640) #7, !srcloc !85
  %call23 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call23, 100000
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %usb_sts171 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %32, i32 0, i32 1
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_sts171) #7, !srcloc !82
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %and29172 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29172)
  %tobool30.not173 = icmp eq i32 %and29172, 0
  br i1 %tobool30.not173, label %cdns3_ep0_complete_setup.exit.land.lhs.true34_crit_edge, label %cdns3_ep0_complete_setup.exit.for.end56_crit_edge

cdns3_ep0_complete_setup.exit.for.end56_crit_edge: ; preds = %cdns3_ep0_complete_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end56

cdns3_ep0_complete_setup.exit.land.lhs.true34_crit_edge: ; preds = %cdns3_ep0_complete_setup.exit
  br label %land.lhs.true34

land.lhs.true34:                                  ; preds = %cond.false.land.lhs.true34_crit_edge, %cdns3_ep0_complete_setup.exit.land.lhs.true34_crit_edge
  %call35 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call35, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call35, %add.i
  br i1 %cmp3.i, label %if.then39, label %cond.false

if.then39:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %usb_sts43 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %36, i32 0, i32 1
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_sts43) #7, !srcloc !82
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  br label %for.end56

cond.false:                                       ; preds = %land.lhs.true34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #7
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %usb_sts = getelementptr inbounds %struct.cdns3_usb_regs, ptr %41, i32 0, i32 1
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_sts) #7, !srcloc !82
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %and29 = and i32 %43, 1
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %cond.false.land.lhs.true34_crit_edge, label %cond.false.for.end56_crit_edge

cond.false.for.end56_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end56

cond.false.land.lhs.true34_crit_edge:             ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true34

for.end56:                                        ; preds = %cond.false.for.end56_crit_edge, %if.then39, %cdns3_ep0_complete_setup.exit.for.end56_crit_edge
  %val.0 = phi i32 [ %38, %if.then39 ], [ %34, %cdns3_ep0_complete_setup.exit.for.end56_crit_edge ], [ %43, %cond.false.for.end56_crit_edge ]
  %and58 = and i32 %val.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  %cond = select i1 %tobool59.not, i32 -110, i32 0
  br i1 %tobool59.not, label %do.end65, label %for.end56.if.end66_crit_edge

for.end56.if.end66_crit_edge:                     ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

do.end65:                                         ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.19) #10
  br label %if.end66

if.end66:                                         ; preds = %do.end65, %for.end56.if.end66_crit_edge
  %actual = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 12
  %46 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %actual, align 4
  %status_completion_no_call = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 18
  %47 = ptrtoint ptr %status_completion_no_call to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load = load i16, ptr %status_completion_no_call, align 2
  %bf.set = or i16 %bf.load, 256
  store i16 %bf.set, ptr %status_completion_no_call, align 2
  %pending_status_request = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 21
  %48 = ptrtoint ptr %pending_status_request to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %request, ptr %pending_status_request, align 4
  %gadget = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 2
  tail call void @usb_gadget_set_state(ptr noundef %gadget, i32 noundef 7) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %49 = load ptr, ptr @system_freezable_wq, align 4
  %pending_status_wq = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 20
  %call.i167 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %49, ptr noundef %pending_status_wq) #7
  br label %cleanup

if.end69:                                         ; preds = %if.end
  %pending_req_list = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 1
  %50 = ptrtoint ptr %pending_req_list to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %pending_req_list, align 4
  %cmp.i168.not = icmp eq ptr %51, %pending_req_list
  br i1 %cmp.i168.not, label %if.end78, label %do.end75

do.end75:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.23) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  br label %cleanup

if.end78:                                         ; preds = %if.end69
  %sysdev = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sysdev, align 4
  %ep0_data_dir = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 12
  %56 = ptrtoint ptr %ep0_data_dir to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ep0_data_dir, align 4
  %call79 = tail call i32 @usb_gadget_map_request_by_dev(ptr noundef %55, ptr noundef %request, i32 noundef %57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end87, label %if.then81

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.26) #10
  br label %cleanup

if.end87:                                         ; preds = %if.end78
  %status = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 11
  %60 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -115, ptr %status, align 4
  %list = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %62, ptr noundef %pending_req_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end87.list_add_tail.exit_crit_edge

if.end87.list_add_tail.exit_crit_edge:            ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %list, ptr %prev.i, align 4
  %64 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %pending_req_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 9, i32 1
  %65 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev3.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %list, ptr %62, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end87.list_add_tail.exit_crit_edge
  %zero = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 6
  %67 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %67)
  %bf.load89 = load i32, ptr %zero, align 4
  %68 = and i32 %bf.load89, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool91.not = icmp eq i32 %68, 0
  br i1 %tobool91.not, label %list_add_tail.exit.if.end101_crit_edge, label %land.lhs.true92

list_add_tail.exit.if.end101_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

land.lhs.true92:                                  ; preds = %list_add_tail.exit
  %length = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 1
  %69 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool93.not = icmp eq i32 %70, 0
  br i1 %tobool93.not, label %land.lhs.true92.if.end101_crit_edge, label %land.lhs.true94

land.lhs.true92.if.end101_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

land.lhs.true94:                                  ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #9
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %71 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %71, i32 7)
  %bf.load96 = load i56, ptr %maxpacket, align 2
  %bf.lshr97 = lshr i56 %bf.load96, 40
  %bf.cast = trunc i56 %bf.lshr97 to i32
  %rem = urem i32 %70, %bf.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp98 = icmp eq i32 %rem, 0
  %spec.select = zext i1 %cmp98 to i32
  br label %if.end101

if.end101:                                        ; preds = %land.lhs.true94, %land.lhs.true92.if.end101_crit_edge, %list_add_tail.exit.if.end101_crit_edge
  %zlp.0 = phi i32 [ 0, %land.lhs.true92.if.end101_crit_edge ], [ 0, %list_add_tail.exit.if.end101_crit_edge ], [ %spec.select, %land.lhs.true94 ]
  %dma = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 2
  %72 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dma, align 4
  %length102 = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 1
  %74 = ptrtoint ptr %length102 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %length102, align 4
  tail call fastcc void @cdns3_ep0_run_transfer(ptr noundef %1, i32 noundef %73, i32 noundef %75, i32 noundef 1, i32 noundef %zlp.0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %if.then81, %do.end75, %if.end66, %if.then
  %retval.0 = phi i32 [ -104, %if.then ], [ %cond, %if.end66 ], [ -22, %if.then81 ], [ 0, %if.end101 ], [ -16, %do.end75 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns3_gadget_ep_dequeue(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cdns3_gadget_ep0_set_halt(ptr nocapture noundef readnone %ep, i32 noundef %value) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_ep0_queue(ptr noundef %dev_priv, ptr noundef %request) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_ep0_queue, i32 0, i32 1), ptr blockaddress(@trace_cdns3_ep0_queue, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !90

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !91

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !119
  %call42 = tail call i32 @__traceiter_cdns3_ep0_queue(ptr noundef null, ptr noundef %dev_priv, ptr noundef %request) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !120
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !91

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_ep0_queue, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_ep0_queue, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cdns3_ep0_queue.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_cdns3_ep0_queue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 288, ptr noundef nonnull @.str.6) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !95
  %31 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
declare dso_local i32 @cdns3_ep_config(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdns3_set_hw_configuration(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request_by_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cdns3_ep0_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !16, !18, !19, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !36, !37, !39, !40, !42, !43, !44, !45, !47, !48, !50, !51, !53, !55, !57, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71}
!llvm.named.register.sp = !{!72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/cdns3/cdns3-ep0.c", i32 786, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cdns3_gadget_ep_set_wedge.__UNIQUE_ID_ddebug348, !1, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/cdns3/cdns3-ep0.c", i32 878, i32 25}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 167, i32 1}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 197, i32 1}
!18 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/cdns3/cdns3-ep0.c", i32 190, i32 3}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cdns3_req_ep0_set_address._entry, !20, !"_entry", i1 false, i1 false}
!25 = !{ptr @cdns3_req_ep0_set_address._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/cdns3/cdns3-ep0.c", i32 197, i32 3}
!28 = !{ptr @cdns3_req_ep0_set_address._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @cdns3_req_ep0_set_address._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/cdns3/cdns3-ep0.c", i32 62, i32 52}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/cdns3/cdns3-ep0.c", i32 62, i32 62}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 427, i32 1}
!36 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 87, i32 1}
!39 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/cdns3/cdns3-ep0.c", i32 435, i32 3}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @cdns3_req_ep0_set_sel._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @cdns3_req_ep0_set_sel._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 27, i32 1}
!47 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 432, i32 1}
!50 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!51 = !{ptr @cdns3_gadget_ep0_desc, !52, !"cdns3_gadget_ep0_desc", i1 false, i1 false}
!52 = !{!"../drivers/usb/cdns3/cdns3-ep0.c", i32 19, i32 39}
!53 = !{ptr @cdns3_gadget_ep0_ops, !54, !"cdns3_gadget_ep0_ops", i1 false, i1 false}
!54 = !{!"../drivers/usb/cdns3/cdns3-ep0.c", i32 793, i32 32}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/cdns3/cdns3-ep0.c", i32 729, i32 4}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @cdns3_gadget_ep0_queue._entry, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @cdns3_gadget_ep0_queue._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/cdns3/cdns3-ep0.c", i32 747, i32 3}
!63 = !{ptr @cdns3_gadget_ep0_queue._entry.22, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @cdns3_gadget_ep0_queue._entry_ptr.24, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/cdns3/cdns3-ep0.c", i32 757, i32 3}
!67 = !{ptr @cdns3_gadget_ep0_queue._entry.25, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @cdns3_gadget_ep0_queue._entry_ptr.27, !66, !"_entry_ptr", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 275, i32 1}
!71 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!72 = !{!"sp"}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 6367247}
!83 = !{i64 2155971521}
!84 = !{i64 2155971748}
!85 = !{i64 6366829}
!86 = !{i64 2155956614}
!87 = !{i64 2155957968}
!88 = !{i64 2155960543}
!89 = !{i64 2155951757}
!90 = !{i64 2148423980, i64 2148423985, i64 2148423998, i64 2148424042, i64 2148424076, i64 2148424097}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{i64 2155588589}
!93 = !{i64 2155588810}
!94 = !{i64 2149429616}
!95 = !{i64 2149430652}
!96 = !{i64 2155991646}
!97 = !{i64 2155992369}
!98 = !{i64 2155993097}
!99 = !{i64 2155993792}
!100 = !{i64 2155604722}
!101 = !{i64 2155604921}
!102 = !{i64 2155951044}
!103 = !{i64 2155948340}
!104 = !{i64 2155948848}
!105 = !{i64 2155949576}
!106 = !{i64 2155949892}
!107 = !{i64 2155950461}
!108 = !{i64 2155838705}
!109 = !{i64 2155838926}
!110 = !{i64 2155517893}
!111 = !{i64 2155518130}
!112 = !{i64 2155465539}
!113 = !{i64 2155465762}
!114 = !{i64 2155855620}
!115 = !{i64 2155855843}
!116 = !{i64 2155970845}
!117 = !{i64 2155980323}
!118 = !{i64 2155980837}
!119 = !{i64 2155711140}
!120 = !{i64 2155711367}
