; ModuleID = '/llk/IR_all_yes/drivers/usb/mtu3/mtu3_qmu.c_pt.bc'
source_filename = "../drivers/usb/mtu3/mtu3_qmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.mtu3_ep = type { %struct.usb_ep, [12 x i8], ptr, i8, i8, i8, i16, i32, i32, i32, i32, ptr, %struct.list_head, %struct.mtu3_gpd_ring, ptr, ptr, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.mtu3_gpd_ring = type { i32, ptr, ptr, ptr, ptr }
%struct.mtu3 = type { %struct.spinlock, ptr, ptr, ptr, ptr, i32, %struct.mtu3_fifo_info, %struct.mtu3_fifo_info, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, %struct.usb_gadget, ptr, %struct.mtu3_request, [6 x i8], i32, i32, i16, i8, i8, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mtu3_fifo_info = type { i32, i32, [4 x i32] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.mtu3_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, ptr, i32 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.qmu_gpd = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@mtu3_qmu_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 347, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Tx %d Active Now!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtu3_qmu_start\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/mtu3/mtu3_qmu.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtu3_qmu_start._entry_ptr = internal global ptr @mtu3_qmu_start._entry, section ".printk_index", align 4
@mtu3_qmu_start._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 364, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Rx %d Active Now!\0A\00", [45 x i8] zeroinitializer }, align 32
@mtu3_qmu_start._entry_ptr.7 = internal global ptr @mtu3_qmu_start._entry.5, section ".printk_index", align 4
@mtu3_qmu_stop.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 96, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mtu3\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtu3_qmu_stop\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s's qmu is inactive now!\0A\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mtu3_qmu_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 394, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stop %s's qmu failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mtu3_qmu_stop._entry_ptr = internal global ptr @mtu3_qmu_stop._entry, section ".printk_index", align 4
@mtu3_qmu_stop.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.13, i8 0, i8 99, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s's qmu stop now!\0A\00", [44 x i8] zeroinitializer }, align 32
@mtu3_qmu_flush.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 101, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtu3_qmu_flush\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s flush QMU %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@mtu3_qmu_isr.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -103, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mtu3_qmu_isr\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"=== QMUdone[tx=%x, rx=%x] QMUexp[%x] ===\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"QMU_GPD\00", [24 x i8] zeroinitializer }, align 32
@mtu3_prepare_tx_gpd.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 65, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtu3_prepare_tx_gpd\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"TX-EP%d queue gpd=%p, enq=%p, qdma=%pad\0A\00", [55 x i8] zeroinitializer }, align 32
@__tracepoint_mtu3_prepare_gpd = external dso_local global %struct.tracepoint, align 4
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/mtu3/mtu3_trace.h\00", [34 x i8] zeroinitializer }, align 32
@trace_mtu3_prepare_gpd.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@mtu3_prepare_rx_gpd.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 76, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtu3_prepare_rx_gpd\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RX-EP%d queue gpd=%p, enq=%p, qdma=%pad\0A\00", [55 x i8] zeroinitializer }, align 32
@__tracepoint_mtu3_qmu_isr = external dso_local global %struct.tracepoint, align 4
@trace_mtu3_qmu_isr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@qmu_done_rx.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -125, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qmu_done_rx\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s EP%d, last=%p, current=%p, enq=%p\0A\00", [58 x i8] zeroinitializer }, align 32
@qmu_done_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 531, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no correct RX req is found\0A\00", [36 x i8] zeroinitializer }, align 32
@qmu_done_rx._entry_ptr = internal global ptr @qmu_done_rx._entry, section ".printk_index", align 4
@qmu_done_rx.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.28, ptr @.str.2, ptr @.str.31, i8 0, i8 -120, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s EP%d, deq=%p, enq=%p, complete\0A\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_mtu3_complete_gpd = external dso_local global %struct.tracepoint, align 4
@trace_mtu3_complete_gpd.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@qmu_done_tx.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.32, ptr @.str.2, ptr @.str.29, i8 0, i8 121, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qmu_done_tx\00", [20 x i8] zeroinitializer }, align 32
@qmu_done_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.32, ptr @.str.2, i32 492, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no correct TX req is found\0A\00", [36 x i8] zeroinitializer }, align 32
@qmu_done_tx._entry_ptr = internal global ptr @qmu_done_tx._entry, section ".printk_index", align 4
@qmu_done_tx.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.32, ptr @.str.2, ptr @.str.31, i8 0, i8 126, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@qmu_exception_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 569, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Rx %d CS error!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qmu_exception_isr\00", [46 x i8] zeroinitializer }, align 32
@qmu_exception_isr._entry_ptr = internal global ptr @qmu_exception_isr._entry, section ".printk_index", align 4
@qmu_exception_isr._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 572, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RX %d Length error\0A\00", [44 x i8] zeroinitializer }, align 32
@qmu_exception_isr._entry_ptr.38 = internal global ptr @qmu_exception_isr._entry.36, section ".printk_index", align 4
@qmu_exception_isr.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.35, ptr @.str.2, ptr @.str.39, i8 0, i8 -111, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX EP%d Recv ZLP\0A\00", [46 x i8] zeroinitializer }, align 32
@qmu_exception_isr._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.35, ptr @.str.2, i32 590, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Tx %d checksum error!\0A\00", [41 x i8] zeroinitializer }, align 32
@qmu_exception_isr._entry_ptr.42 = internal global ptr @qmu_exception_isr._entry.40, section ".printk_index", align 4
@qmu_tx_zlp_error_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 436, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TX EP%d buffer length error(!=0)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qmu_tx_zlp_error_handler\00", [39 x i8] zeroinitializer }, align 32
@qmu_tx_zlp_error_handler._entry_ptr = internal global ptr @qmu_tx_zlp_error_handler._entry, section ".printk_index", align 4
@qmu_tx_zlp_error_handler.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 110, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s send ZLP for req=%p\0A\00", [40 x i8] zeroinitializer }, align 32
@qmu_tx_zlp_error_handler._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.2, i32 448, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s wait for fifo empty fail\0A\00", [35 x i8] zeroinitializer }, align 32
@qmu_tx_zlp_error_handler._entry_ptr.48 = internal global ptr @qmu_tx_zlp_error_handler._entry.46, section ".printk_index", align 4
@__tracepoint_mtu3_zlp_exp_gpd = external dso_local global %struct.tracepoint, align 4
@trace_mtu3_zlp_exp_gpd.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 347, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 364, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 386, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 394, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 398, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 404, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 612, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 631, i32 38 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 261, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [33 x i8] c"../drivers/usb/mtu3/mtu3_trace.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 201, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 108, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 304, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 523, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 531, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 543, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 484, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 492, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 569, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 572, i32 5 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 581, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 590, i32 5 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 436, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 440, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private constant [31 x i8] c"../drivers/usb/mtu3/mtu3_qmu.c\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 448, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @mtu3_qmu_start._entry, ptr @mtu3_qmu_start._entry.5, ptr @mtu3_qmu_start._entry_ptr, ptr @mtu3_qmu_start._entry_ptr.7, ptr @mtu3_qmu_stop._entry, ptr @mtu3_qmu_stop._entry_ptr, ptr @qmu_done_rx._entry, ptr @qmu_done_rx._entry_ptr, ptr @qmu_done_tx._entry, ptr @qmu_done_tx._entry_ptr, ptr @qmu_exception_isr._entry, ptr @qmu_exception_isr._entry.36, ptr @qmu_exception_isr._entry.40, ptr @qmu_exception_isr._entry_ptr, ptr @qmu_exception_isr._entry_ptr.38, ptr @qmu_exception_isr._entry_ptr.42, ptr @qmu_tx_zlp_error_handler._entry, ptr @qmu_tx_zlp_error_handler._entry.46, ptr @qmu_tx_zlp_error_handler._entry_ptr, ptr @qmu_tx_zlp_error_handler._entry_ptr.48, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_qmu_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_qmu_start._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_qmu_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmu_done_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmu_done_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmu_exception_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmu_exception_isr._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmu_exception_isr._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmu_tx_zlp_error_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmu_tx_zlp_error_handler._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtu3_gpd_ring_alloc(ptr noundef %mep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gpd_ring = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13
  %mtu = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 2
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtu, align 4
  %qmu_gpd_pool = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %qmu_gpd_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qmu_gpd_pool, align 4
  %call.i = tail call ptr @dma_pool_alloc(ptr noundef %3, i32 noundef 2848, ptr noundef %gpd_ring) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %start.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %start.i, align 4
  %enqueue.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13, i32 3
  %5 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %enqueue.i, align 4
  %dequeue.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13, i32 4
  %6 = ptrtoint ptr %dequeue.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %dequeue.i, align 4
  %add.ptr1.i = getelementptr %struct.qmu_gpd, ptr %call.i, i32 63
  %end.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13, i32 2
  %7 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr1.i, ptr %end.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtu3_gpd_ring_free(ptr nocapture noundef %mep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gpd_ring = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13
  %mtu = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 2
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtu, align 4
  %qmu_gpd_pool = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %qmu_gpd_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qmu_gpd_pool, align 4
  %start = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %start, align 4
  %6 = ptrtoint ptr %gpd_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpd_ring, align 4
  tail call void @dma_pool_free(ptr noundef %3, ptr noundef %5, i32 noundef %7) #8
  %8 = call ptr @memset(ptr %gpd_ring, i32 0, i32 20)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtu3_qmu_resume(ptr nocapture noundef readonly %mep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu1 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 2
  %0 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtu1, align 4
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_base, align 4
  %epnum2 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 3
  %4 = ptrtoint ptr %epnum2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %epnum2, align 4
  %conv = zext i8 %5 to i32
  %is_in = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 5
  %6 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %sub = shl nuw nsw i32 %conv, 4
  %cond.v = select i1 %tobool.not, i32 1536, i32 1280
  %cond = add nuw nsw i32 %cond.v, %sub
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i = getelementptr i8, ptr %3, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #8, !srcloc !121
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %9 = and i32 %8, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #8, !srcloc !121
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mtu3_prepare_transfer(ptr nocapture noundef readonly %mep) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %enqueue.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13, i32 3
  %0 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enqueue.i, align 4
  %end.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13, i32 2
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %cmp.i = icmp ult ptr %1, %3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr %struct.qmu_gpd, ptr %1, i32 1
  br label %gpd_ring_empty.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %start.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %start.i, align 4
  br label %gpd_ring_empty.exit

gpd_ring_empty.exit:                              ; preds = %if.else.i, %if.then.i
  %next.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %5, %if.else.i ]
  %dequeue.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13, i32 4
  %6 = ptrtoint ptr %dequeue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dequeue.i, align 4
  %cmp2.i = icmp eq ptr %next.0.i, %7
  %conv.i = zext i1 %cmp2.i to i32
  ret i32 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtu3_insert_gpd(ptr noundef %mep, ptr nocapture noundef %mreq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %is_in = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 5
  %0 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mtu3_prepare_tx_gpd(ptr noundef %mep, ptr noundef %mreq)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mtu3_prepare_rx_gpd(ptr noundef %mep, ptr noundef %mreq)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtu3_prepare_tx_gpd(ptr noundef %mep, ptr nocapture noundef %mreq) unnamed_addr #0 align 64 {
entry:
  %enq_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gpd_ring = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13
  %enqueue = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13, i32 3
  %0 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enqueue, align 4
  %mtu1 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 2
  %2 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtu1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enq_dma) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 0, ptr %1, align 1
  %dma = getelementptr inbounds %struct.usb_request, ptr %mreq, i32 0, i32 2
  %5 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %buffer = getelementptr inbounds %struct.qmu_gpd, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %buffer, align 1
  %gen2cp = getelementptr inbounds %struct.mtu3, ptr %3, i32 0, i32 23
  %length = getelementptr inbounds %struct.usb_request, ptr %mreq, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  %11 = ptrtoint ptr %gen2cp to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load10 = load i16, ptr %gen2cp, align 4
  %12 = and i16 %bf.load10, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool14.not = icmp eq i16 %12, 0
  %cond20.v = select i1 %tobool14.not, i32 65535, i32 1048575
  %cond20 = and i32 %cond20.v, %10
  %13 = tail call i32 @llvm.bswap.i32(i32 %cond20)
  %dw3_info = getelementptr inbounds %struct.qmu_gpd, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %dw3_info to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %dw3_info, align 1
  %15 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %enqueue, align 4
  %end.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13, i32 2
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end.i, align 4
  %cmp.i = icmp ult ptr %16, %18
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i = getelementptr %struct.qmu_gpd, ptr %16, i32 1
  br label %advance_enq_gpd.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %start.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13, i32 1
  %19 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %start.i, align 4
  br label %advance_enq_gpd.exit

advance_enq_gpd.exit:                             ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi ptr [ %20, %if.else.i ], [ %incdec.ptr.i, %if.then.i ]
  %21 = ptrtoint ptr %enqueue to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %storemerge.i, ptr %enqueue, align 4
  %start.i1 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13, i32 1
  %22 = ptrtoint ptr %start.i1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %start.i1, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %storemerge.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1008, i32 %sub.ptr.sub.i)
  %cmp.i2 = icmp ugt i32 %sub.ptr.sub.i, 1008
  br i1 %cmp.i2, label %advance_enq_gpd.exit.gpd_virt_to_dma.exit_crit_edge, label %if.end.i

advance_enq_gpd.exit.gpd_virt_to_dma.exit_crit_edge: ; preds = %advance_enq_gpd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpd_virt_to_dma.exit

if.end.i:                                         ; preds = %advance_enq_gpd.exit
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %gpd_ring to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gpd_ring, align 4
  %add.i = add i32 %25, %sub.ptr.sub.i
  br label %gpd_virt_to_dma.exit

gpd_virt_to_dma.exit:                             ; preds = %if.end.i, %advance_enq_gpd.exit.gpd_virt_to_dma.exit_crit_edge
  %retval.0.i3 = phi i32 [ %add.i, %if.end.i ], [ 0, %advance_enq_gpd.exit.gpd_virt_to_dma.exit_crit_edge ]
  %26 = ptrtoint ptr %enq_dma to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i3, ptr %enq_dma, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_prepare_tx_gpd.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_prepare_tx_gpd, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !124

if.then:                                          ; preds = %gpd_virt_to_dma.exit
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mtu1, align 4
  %dev = getelementptr inbounds %struct.mtu3, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  %epnum = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 3
  %31 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %epnum, align 4
  %conv = zext i8 %32 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_prepare_tx_gpd.__UNIQUE_ID_ddebug327, ptr noundef %30, ptr noundef nonnull @.str.22, i32 noundef %conv, ptr noundef %1, ptr noundef %storemerge.i, ptr noundef nonnull %enq_dma) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %gpd_virt_to_dma.exit
  %33 = ptrtoint ptr %storemerge.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %storemerge.i, align 1
  %and30 = and i32 %34, -16777217
  store i32 %and30, ptr %storemerge.i, align 1
  %35 = ptrtoint ptr %enq_dma to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %enq_dma, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %next_gpd = getelementptr inbounds %struct.qmu_gpd, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %next_gpd to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %next_gpd, align 1
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 0, ptr %1, align 1
  %zero = getelementptr inbounds %struct.usb_request, ptr %mreq, i32 0, i32 6
  %40 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load51 = load i32, ptr %zero, align 4
  %41 = and i32 %bf.load51, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool54.not = icmp eq i32 %41, 0
  br i1 %tobool54.not, label %do.end.do.body69_crit_edge, label %if.then55

do.end.do.body69_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body69

if.then55:                                        ; preds = %do.end
  %42 = ptrtoint ptr %gen2cp to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load57 = load i16, ptr %gen2cp, align 4
  %43 = and i16 %bf.load57, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool61.not = icmp eq i16 %43, 0
  br i1 %tobool61.not, label %if.else, label %if.then62

if.then62:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 1073741824, ptr %1, align 1
  br label %do.body69

if.else:                                          ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %dw3_info to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %dw3_info, align 1
  %or66 = or i32 %46, 32
  store i32 %or66, ptr %dw3_info, align 1
  br label %do.body69

do.body69:                                        ; preds = %if.else, %if.then62, %do.end.do.body69_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  call void @arm_heavy_mb() #8
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %1, align 1
  %or73 = or i32 %48, -2130706432
  store i32 %or73, ptr %1, align 1
  %gpd74 = getelementptr inbounds %struct.mtu3_request, ptr %mreq, i32 0, i32 4
  %49 = ptrtoint ptr %gpd74 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %1, ptr %gpd74, align 4
  call fastcc void @trace_mtu3_prepare_gpd(ptr noundef %mep, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enq_dma) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtu3_prepare_rx_gpd(ptr noundef %mep, ptr nocapture noundef %mreq) unnamed_addr #0 align 64 {
entry:
  %enq_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gpd_ring = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13
  %enqueue = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13, i32 3
  %0 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enqueue, align 4
  %mtu1 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 2
  %2 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtu1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enq_dma) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 0, ptr %1, align 1
  %dma = getelementptr inbounds %struct.usb_request, ptr %mreq, i32 0, i32 2
  %5 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %buffer = getelementptr inbounds %struct.qmu_gpd, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %buffer, align 1
  %gen2cp = getelementptr inbounds %struct.mtu3, ptr %3, i32 0, i32 23
  %length = getelementptr inbounds %struct.usb_request, ptr %mreq, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  %11 = ptrtoint ptr %gen2cp to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load10 = load i16, ptr %gen2cp, align 4
  %12 = and i16 %bf.load10, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool14.not = icmp eq i16 %12, 0
  %cond22.v = select i1 %tobool14.not, i32 16, i32 12
  %cond22 = shl i32 %10, %cond22.v
  %13 = tail call i32 @llvm.bswap.i32(i32 %cond22)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %1, align 1
  %15 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %enqueue, align 4
  %end.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13, i32 2
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end.i, align 4
  %cmp.i = icmp ult ptr %16, %18
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i = getelementptr %struct.qmu_gpd, ptr %16, i32 1
  br label %advance_enq_gpd.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %start.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13, i32 1
  %19 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %start.i, align 4
  br label %advance_enq_gpd.exit

advance_enq_gpd.exit:                             ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi ptr [ %20, %if.else.i ], [ %incdec.ptr.i, %if.then.i ]
  %21 = ptrtoint ptr %enqueue to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %storemerge.i, ptr %enqueue, align 4
  %start.i1 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13, i32 1
  %22 = ptrtoint ptr %start.i1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %start.i1, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %storemerge.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1008, i32 %sub.ptr.sub.i)
  %cmp.i2 = icmp ugt i32 %sub.ptr.sub.i, 1008
  br i1 %cmp.i2, label %advance_enq_gpd.exit.gpd_virt_to_dma.exit_crit_edge, label %if.end.i

advance_enq_gpd.exit.gpd_virt_to_dma.exit_crit_edge: ; preds = %advance_enq_gpd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpd_virt_to_dma.exit

if.end.i:                                         ; preds = %advance_enq_gpd.exit
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %gpd_ring to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gpd_ring, align 4
  %add.i = add i32 %25, %sub.ptr.sub.i
  br label %gpd_virt_to_dma.exit

gpd_virt_to_dma.exit:                             ; preds = %if.end.i, %advance_enq_gpd.exit.gpd_virt_to_dma.exit_crit_edge
  %retval.0.i3 = phi i32 [ %add.i, %if.end.i ], [ 0, %advance_enq_gpd.exit.gpd_virt_to_dma.exit_crit_edge ]
  %26 = ptrtoint ptr %enq_dma to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i3, ptr %enq_dma, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_prepare_rx_gpd.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_prepare_rx_gpd, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !124

if.then:                                          ; preds = %gpd_virt_to_dma.exit
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mtu1, align 4
  %dev = getelementptr inbounds %struct.mtu3, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  %epnum = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 3
  %31 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %epnum, align 4
  %conv = zext i8 %32 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_prepare_rx_gpd.__UNIQUE_ID_ddebug328, ptr noundef %30, ptr noundef nonnull @.str.27, i32 noundef %conv, ptr noundef %1, ptr noundef %storemerge.i, ptr noundef nonnull %enq_dma) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %gpd_virt_to_dma.exit
  %33 = ptrtoint ptr %storemerge.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %storemerge.i, align 1
  %and33 = and i32 %34, -16777217
  store i32 %and33, ptr %storemerge.i, align 1
  %35 = ptrtoint ptr %enq_dma to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %enq_dma, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %next_gpd = getelementptr inbounds %struct.qmu_gpd, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %next_gpd to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %next_gpd, align 1
  %dw3_info = getelementptr inbounds %struct.qmu_gpd, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %dw3_info to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 0, ptr %dw3_info, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %1, align 1
  %or57 = or i32 %41, -2130706432
  store i32 %or57, ptr %1, align 1
  %gpd58 = getelementptr inbounds %struct.mtu3_request, ptr %mreq, i32 0, i32 4
  %42 = ptrtoint ptr %gpd58 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %1, ptr %gpd58, align 4
  call fastcc void @trace_mtu3_prepare_gpd(ptr noundef %mep, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enq_dma) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtu3_qmu_start(ptr nocapture noundef readonly %mep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu1 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 2
  %0 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtu1, align 4
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_base, align 4
  %gpd_ring = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13
  %epnum2 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 3
  %4 = ptrtoint ptr %epnum2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %epnum2, align 4
  %is_in = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 5
  %6 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %gpd_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpd_ring, align 4
  %conv.i98 = zext i8 %5 to i32
  %sub.i99 = add nsw i32 %conv.i98, -1
  %mul.i100 = shl nsw i32 %sub.i99, 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add.i = add nsw i32 %mul.i100, 1300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #8, !srcloc !121
  %mul3.i = shl nsw i32 %sub.i99, 2
  %add4.i = add nsw i32 %mul3.i, 1156
  %add.ptr.i19.i = getelementptr i8, ptr %3, i32 %add4.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %11 = and i32 %10, -251658241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %11) #8, !srcloc !121
  %sub = shl nuw nsw i32 %conv.i98, 4
  %add = add nuw nsw i32 %sub, 256
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %13 = or i32 %12, 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #8, !srcloc !121
  %shl = shl nuw i32 1, %conv.i98
  %add.ptr.i93 = getelementptr i8, ptr %3, i32 1028
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93) #8, !srcloc !122
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %or.i94 = or i32 %15, %shl
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i94) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %16) #8, !srcloc !121
  %or = shl i32 65537, %conv.i98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %17 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %add.ptr.i95 = getelementptr i8, ptr %3, i32 1928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 %17) #8, !srcloc !121
  %add11 = add nuw nsw i32 %sub, 1280
  %add.ptr.i96 = getelementptr i8, ptr %3, i32 %add11
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %19 = and i32 %18, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not = icmp eq i32 %19, 0
  br i1 %tobool12.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str, i32 noundef %conv.i98) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 16777216) #8, !srcloc !121
  br label %cleanup

if.else:                                          ; preds = %entry
  %add.i101 = add nsw i32 %mul.i100, 1556
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i102 = getelementptr i8, ptr %3, i32 %add.i101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i102, i32 %9) #8, !srcloc !121
  %mul3.i103 = shl nsw i32 %sub.i99, 2
  %add4.i104 = add nsw i32 %mul3.i103, 1220
  %add.ptr.i19.i105 = getelementptr i8, ptr %3, i32 %add4.i104
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i105) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %23 = and i32 %22, -251658241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i105, i32 %23) #8, !srcloc !121
  %sub21 = shl nuw nsw i32 %conv.i98, 4
  %add23 = add nuw nsw i32 %sub21, 512
  %add.ptr.i106 = getelementptr i8, ptr %3, i32 %add23
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %25 = or i32 %24, 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 %25) #8, !srcloc !121
  %shl25 = shl nuw i32 1, %conv.i98
  %add.ptr.i108 = getelementptr i8, ptr %3, i32 1036
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108) #8, !srcloc !122
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %neg.i = xor i32 %shl25, -1
  %and.i = and i32 %27, %neg.i
  %28 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 %28) #8, !srcloc !121
  %shl27 = shl i32 65536, %conv.i98
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108) #8, !srcloc !122
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %or.i110 = or i32 %30, %shl27
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i110) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 %31) #8, !srcloc !121
  %or32 = shl i32 65537, %conv.i98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %32 = tail call i32 @llvm.bswap.i32(i32 %or32) #8
  %add.ptr.i111 = getelementptr i8, ptr %3, i32 1992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 %32) #8, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %33 = tail call i32 @llvm.bswap.i32(i32 %shl27) #8
  %add.ptr.i112 = getelementptr i8, ptr %3, i32 2008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 %33) #8, !srcloc !121
  %add38 = add nuw nsw i32 %sub21, 1536
  %add.ptr.i113 = getelementptr i8, ptr %3, i32 %add38
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %35 = and i32 %34, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool41.not = icmp eq i32 %35, 0
  br i1 %tobool41.not, label %if.end48, label %do.end45

do.end45:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev46 = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev46, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.6, i32 noundef %conv.i98) #11
  br label %cleanup

if.end48:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 16777216) #8, !srcloc !121
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %do.end45, %if.end, %do.end
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtu3_qmu_stop(ptr noundef %mep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu1 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 2
  %0 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtu1, align 4
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_base, align 4
  %epnum2 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 3
  %4 = ptrtoint ptr %epnum2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %epnum2, align 4
  %conv = zext i8 %5 to i32
  %is_in = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 5
  %6 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %sub = shl nuw nsw i32 %conv, 4
  %cond.v = select i1 %tobool.not, i32 1536, i32 1280
  %cond = add nuw nsw i32 %cond.v, %sub
  %add.ptr.i = getelementptr i8, ptr %3, i32 %cond
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %9 = and i32 %8, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %do.body, label %if.end14

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_qmu_stop.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_qmu_stop, %cleanup)) #8
          to label %if.then13 [label %cleanup], !srcloc !124

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_qmu_stop.__UNIQUE_ID_ddebug329, ptr noundef %11, ptr noundef nonnull @.str.10, ptr noundef %name) #8
  br label %cleanup

if.end14:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67108864) #8, !srcloc !121
  %call15 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call15, 1000000
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !122
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  %and20118 = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20118)
  %tobool21.not119 = icmp eq i32 %and20118, 0
  br i1 %tobool21.not119, label %if.end14.for.end_crit_edge, label %if.end14.land.lhs.true_crit_edge

if.end14.land.lhs.true_crit_edge:                 ; preds = %if.end14
  br label %land.lhs.true

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true:                                    ; preds = %cond.false42.land.lhs.true_crit_edge, %if.end14.land.lhs.true_crit_edge
  %call25 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call25, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call25, %add.i
  br i1 %cmp3.i, label %if.then28, label %cond.false42

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !122
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %for.end

cond.false42:                                     ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !122
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  %and20 = and i32 %18, 32768
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %cond.false42.for.end_crit_edge, label %cond.false42.land.lhs.true_crit_edge

cond.false42.land.lhs.true_crit_edge:             ; preds = %cond.false42
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

cond.false42.for.end_crit_edge:                   ; preds = %cond.false42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cond.false42.for.end_crit_edge, %if.then28, %if.end14.for.end_crit_edge
  %value.0 = phi i32 [ %15, %if.then28 ], [ %13, %if.end14.for.end_crit_edge ], [ %18, %cond.false42.for.end_crit_edge ]
  %and49 = and i32 %value.0, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body63, label %do.end58

do.end58:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev59 = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev59, align 8
  %name60 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.11, ptr noundef %name60) #11
  br label %cleanup

do.body63:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_qmu_stop.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_qmu_stop, %cleanup)) #8
          to label %if.then77 [label %cleanup], !srcloc !124

if.then77:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  %dev78 = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev78, align 8
  %name79 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_qmu_stop.__UNIQUE_ID_ddebug330, ptr noundef %22, ptr noundef nonnull @.str.13, ptr noundef %name79) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %do.body63, %do.end58, %if.then13, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtu3_qmu_flush(ptr noundef %mep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_qmu_flush.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_qmu_flush, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !124

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mtu = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 2
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtu, align 4
  %dev = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %is_in = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 5
  %4 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool4.not, ptr @.str.17, ptr @.str.16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_qmu_flush.__UNIQUE_ID_ddebug331, ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mtu3_qmu_stop(ptr noundef %mep)
  %start.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %start.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.end.reset_gpd_list.exit_crit_edge, label %if.then.i

do.end.reset_gpd_list.exit_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset_gpd_list.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %7, align 1
  %and.i = and i32 %9, -16777217
  store i32 %and.i, ptr %7, align 1
  %10 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %start.i, align 4
  %enqueue.i.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13, i32 3
  %11 = ptrtoint ptr %enqueue.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %7, ptr %enqueue.i.i, align 4
  %dequeue.i.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13, i32 4
  %12 = ptrtoint ptr %dequeue.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %7, ptr %dequeue.i.i, align 4
  %add.ptr1.i.i = getelementptr %struct.qmu_gpd, ptr %7, i32 63
  %end.i.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13, i32 2
  %13 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr1.i.i, ptr %end.i.i, align 4
  br label %reset_gpd_list.exit

reset_gpd_list.exit:                              ; preds = %if.then.i, %do.end.reset_gpd_list.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtu3_qmu_isr(ptr nocapture noundef readonly %mtu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %0 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1808
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %add.ptr.i33 = getelementptr i8, ptr %1, i32 1812
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %4 = and i32 %3, %2
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %add.ptr.i34 = getelementptr i8, ptr %1, i32 1792
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %add.ptr.i35 = getelementptr i8, ptr %1, i32 1796
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %8 = and i32 %7, %6
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %8) #8, !srcloc !121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_qmu_isr.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_qmu_isr, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !124

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %and9 = and i32 %9, 65535
  %shr = lshr i32 %9, 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_qmu_isr.__UNIQUE_ID_ddebug338, ptr noundef %11, ptr noundef nonnull @.str.19, i32 noundef %and9, i32 noundef %shr, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @trace_mtu3_qmu_isr(i32 noundef %9, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %do.end.if.end12_crit_edge, label %if.then11

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %do.end
  %num_eps.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 12
  %12 = ptrtoint ptr %num_eps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_eps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp15.i = icmp sgt i32 %13, 1
  br i1 %cmp15.i, label %if.then11.for.body.i_crit_edge, label %if.then11.if.end12_crit_edge

if.then11.if.end12_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11.for.body.i_crit_edge:                   ; preds = %if.then11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then11.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %if.then11.for.body.i_crit_edge ]
  %shl.i = shl i32 65536, %i.016.i
  %and.i = and i32 %shl.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = trunc i32 %i.016.i to i8
  tail call fastcc void @qmu_done_rx(ptr noundef %mtu, i8 noundef zeroext %conv.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %shl1.i = shl nuw i32 1, %i.016.i
  %and2.i = and i32 %shl1.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then4.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i = trunc i32 %i.016.i to i8
  tail call fastcc void @qmu_done_tx(ptr noundef %mtu, i8 noundef zeroext %conv5.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %14 = ptrtoint ptr %num_eps.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_eps.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %15
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end12_crit_edge

for.inc.i.if.end12_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end12:                                         ; preds = %for.inc.i.if.end12_crit_edge, %if.then11.if.end12_crit_edge, %do.end.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool13.not = icmp eq i32 %4, 0
  br i1 %tobool13.not, label %if.end12.if.end15_crit_edge, label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @qmu_exception_isr(ptr noundef %mtu, i32 noundef %5)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  ret i32 1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mtu3_qmu_isr(i32 noundef %done_intr, i32 noundef %exp_intr) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_qmu_isr, i32 0, i32 1), ptr blockaddress(@trace_mtu3_qmu_isr, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !124

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !133

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !134
  %call42 = tail call i32 @__traceiter_mtu3_qmu_isr(ptr noundef null, i32 noundef %done_intr, i32 noundef %exp_intr) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !135
  %13 = tail call i32 @llvm.read_register.i32(metadata !110) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !110) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !133

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_qmu_isr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_qmu_isr, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_mtu3_qmu_isr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_mtu3_qmu_isr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 88, ptr noundef nonnull @.str.24) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !110) #8
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
define internal fastcc void @qmu_exception_isr(ptr nocapture noundef readonly %mtu, i32 noundef %qmu_status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %0 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_base, align 4
  %2 = and i32 %qmu_status, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 1984
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !122
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %num_eps = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 12
  %6 = ptrtoint ptr %num_eps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_eps, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp119 = icmp sgt i32 %7, 1
  br i1 %cmp119, label %for.body.lr.ph, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0120 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.0120
  %and3 = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %for.body.if.end_crit_edge, label %do.end

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.34, i32 noundef %i.0120) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %shl6 = shl i32 65536, %i.0120
  %and7 = and i32 %shl6, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.for.inc_crit_edge, label %do.end12

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.37, i32 noundef %i.0120) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end12, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0120, 1
  %12 = ptrtoint ptr %num_eps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_eps, align 8
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !121
  br label %if.end15

if.end15:                                         ; preds = %for.end, %entry.if.end15_crit_edge
  %and16 = and i32 %qmu_status, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end43_crit_edge, label %if.then18

if.end15.if.end43_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then18:                                        ; preds = %if.end15
  %add.ptr.i114 = getelementptr i8, ptr %1, i32 2000
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114) #8, !srcloc !122
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %num_eps21 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 12
  %16 = ptrtoint ptr %num_eps21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_eps21, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp22123 = icmp sgt i32 %17, 1
  br i1 %cmp22123, label %for.body23.lr.ph, label %if.then18.for.end42_crit_edge

if.then18.for.end42_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end42

for.body23.lr.ph:                                 ; preds = %if.then18
  %dev35 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  br label %for.body23

for.body23:                                       ; preds = %for.inc40.for.body23_crit_edge, %for.body23.lr.ph
  %i.1124 = phi i32 [ 1, %for.body23.lr.ph ], [ %inc41, %for.inc40.for.body23_crit_edge ]
  %shl24 = shl i32 65536, %i.1124
  %and25 = and i32 %shl24, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %for.body23.for.inc40_crit_edge, label %do.body28

for.body23.for.inc40_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc40

do.body28:                                        ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qmu_exception_isr.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qmu_exception_isr, %for.inc40)) #8
          to label %if.then34 [label %for.inc40], !srcloc !124

if.then34:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev35, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qmu_exception_isr.__UNIQUE_ID_ddebug337, ptr noundef %19, ptr noundef nonnull @.str.39, i32 noundef %i.1124) #8
  br label %for.inc40

for.inc40:                                        ; preds = %if.then34, %do.body28, %for.body23.for.inc40_crit_edge
  %inc41 = add nuw nsw i32 %i.1124, 1
  %20 = ptrtoint ptr %num_eps21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_eps21, align 8
  %cmp22 = icmp slt i32 %inc41, %21
  br i1 %cmp22, label %for.inc40.for.body23_crit_edge, label %for.inc40.for.end42_crit_edge

for.inc40.for.end42_crit_edge:                    ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end42

for.inc40.for.body23_crit_edge:                   ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body23

for.end42:                                        ; preds = %for.inc40.for.end42_crit_edge, %if.then18.for.end42_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %14) #8, !srcloc !121
  br label %if.end43

if.end43:                                         ; preds = %for.end42, %if.end15.if.end43_crit_edge
  %22 = and i32 %qmu_status, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %if.end43.if.end72_crit_edge, label %if.then49

if.end43.if.end72_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then49:                                        ; preds = %if.end43
  %add.ptr.i116 = getelementptr i8, ptr %1, i32 1920
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #8, !srcloc !122
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %num_eps52 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 12
  %26 = ptrtoint ptr %num_eps52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_eps52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp53126 = icmp sgt i32 %27, 1
  br i1 %cmp53126, label %for.body54.lr.ph, label %if.then49.for.end71_crit_edge

if.then49.for.end71_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end71

for.body54.lr.ph:                                 ; preds = %if.then49
  %dev62 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  br label %for.body54

for.body54:                                       ; preds = %for.inc69.for.body54_crit_edge, %for.body54.lr.ph
  %i.2127 = phi i32 [ 1, %for.body54.lr.ph ], [ %inc70, %for.inc69.for.body54_crit_edge ]
  %shl55 = shl nuw i32 1, %i.2127
  %and56 = and i32 %shl55, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %for.body54.if.end63_crit_edge, label %do.end61

for.body54.if.end63_crit_edge:                    ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

do.end61:                                         ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev62, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.41, i32 noundef %i.2127) #11
  br label %if.end63

if.end63:                                         ; preds = %do.end61, %for.body54.if.end63_crit_edge
  %shl64 = shl i32 65536, %i.2127
  %and65 = and i32 %shl64, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end63.for.inc69_crit_edge, label %if.then67

if.end63.for.inc69_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %i.2127 to i8
  tail call fastcc void @qmu_tx_zlp_error_handler(ptr noundef %mtu, i8 noundef zeroext %conv)
  br label %for.inc69

for.inc69:                                        ; preds = %if.then67, %if.end63.for.inc69_crit_edge
  %inc70 = add nuw nsw i32 %i.2127, 1
  %30 = ptrtoint ptr %num_eps52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_eps52, align 8
  %cmp53 = icmp slt i32 %inc70, %31
  br i1 %cmp53, label %for.inc69.for.body54_crit_edge, label %for.inc69.for.end71_crit_edge

for.inc69.for.end71_crit_edge:                    ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end71

for.inc69.for.body54_crit_edge:                   ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body54

for.end71:                                        ; preds = %for.inc69.for.end71_crit_edge, %if.then49.for.end71_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %24) #8, !srcloc !121
  br label %if.end72

if.end72:                                         ; preds = %for.end71, %if.end43.if.end72_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtu3_qmu_init(ptr nocapture noundef %mtu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.20, ptr noundef %1, i32 noundef 1024, i32 noundef 16, i32 noundef 0) #8
  %qmu_gpd_pool = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 15
  %2 = ptrtoint ptr %qmu_gpd_pool to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %qmu_gpd_pool, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtu3_qmu_exit(ptr nocapture noundef readonly %mtu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %qmu_gpd_pool = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 15
  %0 = ptrtoint ptr %qmu_gpd_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qmu_gpd_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mtu3_prepare_gpd(ptr noundef %mep, ptr noundef %gpd) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_prepare_gpd, i32 0, i32 1), ptr blockaddress(@trace_mtu3_prepare_gpd, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !124

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !133

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !138
  %call42 = tail call i32 @__traceiter_mtu3_prepare_gpd(ptr noundef null, ptr noundef %mep, ptr noundef %gpd) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !139
  %13 = tail call i32 @llvm.read_register.i32(metadata !110) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !110) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !133

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_prepare_gpd, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_prepare_gpd, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_mtu3_prepare_gpd.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_mtu3_prepare_gpd.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 204, ptr noundef nonnull @.str.24) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !110) #8
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
declare dso_local i32 @__traceiter_mtu3_prepare_gpd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mtu3_qmu_isr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qmu_done_rx(ptr nocapture noundef readonly %mtu, i8 noundef zeroext %epnum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %out_eps = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 10
  %0 = ptrtoint ptr %out_eps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %out_eps, align 8
  %conv = zext i8 %epnum to i32
  %add.ptr = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv
  %gpd_ring = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv, i32 13
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %2 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_base, align 4
  %dequeue = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv, i32 13, i32 4
  %4 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dequeue, align 4
  %sub.i = add nsw i32 %conv, -1
  %mul.i = shl nsw i32 %sub.i, 4
  %add.i = add nsw i32 %mul.i, 1560
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %add.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %mul3.i = shl nsw i32 %sub.i, 2
  %add4.i = add nsw i32 %mul3.i, 1220
  %add.ptr.i12.i = getelementptr i8, ptr %3, i32 %add4.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %8 = ptrtoint ptr %gpd_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpd_ring, align 4
  %sub.i79 = sub i32 %6, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %sub.i79)
  %cmp.i = icmp ugt i32 %sub.i79, 1023
  br i1 %cmp.i, label %entry.gpd_dma_to_virt.exit_crit_edge, label %if.end.i

entry.gpd_dma_to_virt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpd_dma_to_virt.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %div5.i = lshr i32 %sub.i79, 4
  %start.i = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv, i32 13, i32 1
  %10 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %start.i, align 4
  %add.ptr.i = getelementptr %struct.qmu_gpd, ptr %11, i32 %div5.i
  br label %gpd_dma_to_virt.exit

gpd_dma_to_virt.exit:                             ; preds = %if.end.i, %entry.gpd_dma_to_virt.exit_crit_edge
  %retval.0.i80 = phi ptr [ %add.ptr.i, %if.end.i ], [ null, %entry.gpd_dma_to_virt.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qmu_done_rx.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qmu_done_rx, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !124

if.then:                                          ; preds = %gpd_dma_to_virt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %enqueue = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv, i32 13, i32 3
  %14 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enqueue, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qmu_done_rx.__UNIQUE_ID_ddebug335, ptr noundef %13, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %conv, ptr noundef %5, ptr noundef %retval.0.i80, ptr noundef %15) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %gpd_dma_to_virt.exit
  %cmp.not88 = icmp eq ptr %5, %retval.0.i80
  br i1 %cmp.not88, label %do.end.do.body28_crit_edge, label %land.rhs.lr.ph

do.end.do.body28_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body28

land.rhs.lr.ph:                                   ; preds = %do.end
  %req_list.i = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv, i32 12
  %gen2cp = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %end.i = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv, i32 13, i32 2
  %start.i83 = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv, i32 13, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %advance_deq_gpd.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %gpd.089 = phi ptr [ %5, %land.rhs.lr.ph ], [ %storemerge.i, %advance_deq_gpd.exit.land.rhs_crit_edge ]
  %16 = ptrtoint ptr %gpd.089 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %gpd.089, align 1
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool8.not = icmp eq i32 %18, 0
  br i1 %tobool8.not, label %while.body, label %land.rhs.do.body28_crit_edge

land.rhs.do.body28_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body28

while.body:                                       ; preds = %land.rhs
  %19 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.not.i = icmp eq ptr %20, %req_list.i
  %add.ptr.i81 = getelementptr i8, ptr %20, i32 -56
  %cmp1287 = icmp eq ptr %add.ptr.i81, null
  %cmp12 = or i1 %cmp.not.i, %cmp1287
  br i1 %cmp12, label %while.body.do.end20_crit_edge, label %lor.lhs.false

while.body.do.end20_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

lor.lhs.false:                                    ; preds = %while.body
  %gpd14 = getelementptr i8, ptr %20, i32 16
  %21 = ptrtoint ptr %gpd14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gpd14, align 4
  %cmp15.not = icmp eq ptr %22, %gpd.089
  br i1 %cmp15.not, label %if.end22, label %lor.lhs.false.do.end20_crit_edge

lor.lhs.false.do.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

do.end20:                                         ; preds = %lor.lhs.false.do.end20_crit_edge, %while.body.do.end20_crit_edge
  %dev21 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %23 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.30) #11
  br label %do.body28

if.end22:                                         ; preds = %lor.lhs.false
  %dw3_info = getelementptr inbounds %struct.qmu_gpd, ptr %gpd.089, i32 0, i32 3
  %25 = ptrtoint ptr %dw3_info to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %dw3_info, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %gen2cp to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load = load i16, ptr %gen2cp, align 4
  %29 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool24.not = icmp eq i16 %29, 0
  %cond.v = select i1 %tobool24.not, i32 65535, i32 1048575
  %cond = and i32 %cond.v, %27
  %actual = getelementptr i8, ptr %20, i32 -4
  %30 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond, ptr %actual, align 4
  tail call fastcc void @trace_mtu3_complete_gpd(ptr noundef %add.ptr, ptr noundef %gpd.089)
  tail call void @mtu3_req_complete(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr.i81, i32 noundef 0) #8
  %31 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dequeue, align 4
  %33 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i, align 4
  %cmp.i82 = icmp ult ptr %32, %34
  br i1 %cmp.i82, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i = getelementptr %struct.qmu_gpd, ptr %32, i32 1
  br label %advance_deq_gpd.exit

if.else.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %start.i83 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %start.i83, align 4
  br label %advance_deq_gpd.exit

advance_deq_gpd.exit:                             ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi ptr [ %36, %if.else.i ], [ %incdec.ptr.i, %if.then.i ]
  %37 = ptrtoint ptr %dequeue to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %storemerge.i, ptr %dequeue, align 4
  %cmp.not = icmp eq ptr %storemerge.i, %retval.0.i80
  br i1 %cmp.not, label %advance_deq_gpd.exit.do.body28_crit_edge, label %advance_deq_gpd.exit.land.rhs_crit_edge

advance_deq_gpd.exit.land.rhs_crit_edge:          ; preds = %advance_deq_gpd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

advance_deq_gpd.exit.do.body28_crit_edge:         ; preds = %advance_deq_gpd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body28

do.body28:                                        ; preds = %advance_deq_gpd.exit.do.body28_crit_edge, %do.end20, %land.rhs.do.body28_crit_edge, %do.end.do.body28_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qmu_done_rx.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qmu_done_rx, %do.end49)) #8
          to label %if.then42 [label %do.end49], !srcloc !124

if.then42:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  %dev43 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %38 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev43, align 8
  %40 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dequeue, align 4
  %enqueue46 = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv, i32 13, i32 3
  %42 = ptrtoint ptr %enqueue46 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %enqueue46, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qmu_done_rx.__UNIQUE_ID_ddebug336, ptr noundef %39, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28, i32 noundef %conv, ptr noundef %41, ptr noundef %43) #8
  br label %do.end49

do.end49:                                         ; preds = %if.then42, %do.body28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qmu_done_tx(ptr nocapture noundef readonly %mtu, i8 noundef zeroext %epnum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %in_eps = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 9
  %0 = ptrtoint ptr %in_eps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_eps, align 4
  %conv = zext i8 %epnum to i32
  %add.ptr = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv
  %gpd_ring = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv, i32 13
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %2 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_base, align 4
  %dequeue = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv, i32 13, i32 4
  %4 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dequeue, align 4
  %sub.i = add nsw i32 %conv, -1
  %mul.i = shl nsw i32 %sub.i, 4
  %add.i = add nsw i32 %mul.i, 1304
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %add.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %mul3.i = shl nsw i32 %sub.i, 2
  %add4.i = add nsw i32 %mul3.i, 1156
  %add.ptr.i12.i = getelementptr i8, ptr %3, i32 %add4.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %8 = ptrtoint ptr %gpd_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpd_ring, align 4
  %sub.i80 = sub i32 %6, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %sub.i80)
  %cmp.i = icmp ugt i32 %sub.i80, 1023
  br i1 %cmp.i, label %entry.gpd_dma_to_virt.exit_crit_edge, label %if.end.i

entry.gpd_dma_to_virt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpd_dma_to_virt.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %div5.i = lshr i32 %sub.i80, 4
  %start.i = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv, i32 13, i32 1
  %10 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %start.i, align 4
  %add.ptr.i = getelementptr %struct.qmu_gpd, ptr %11, i32 %div5.i
  br label %gpd_dma_to_virt.exit

gpd_dma_to_virt.exit:                             ; preds = %if.end.i, %entry.gpd_dma_to_virt.exit_crit_edge
  %retval.0.i81 = phi ptr [ %add.ptr.i, %if.end.i ], [ null, %entry.gpd_dma_to_virt.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qmu_done_tx.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qmu_done_tx, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !124

if.then:                                          ; preds = %gpd_dma_to_virt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %enqueue = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv, i32 13, i32 3
  %14 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enqueue, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qmu_done_tx.__UNIQUE_ID_ddebug333, ptr noundef %13, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.32, i32 noundef %conv, ptr noundef %5, ptr noundef %retval.0.i81, ptr noundef %15) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %gpd_dma_to_virt.exit
  %cmp.not89 = icmp eq ptr %5, %retval.0.i81
  br i1 %cmp.not89, label %do.end.do.body29_crit_edge, label %land.rhs.lr.ph

do.end.do.body29_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

land.rhs.lr.ph:                                   ; preds = %do.end
  %req_list.i = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv, i32 12
  %gen2cp = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %end.i = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv, i32 13, i32 2
  %start.i84 = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv, i32 13, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %advance_deq_gpd.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %gpd.090 = phi ptr [ %5, %land.rhs.lr.ph ], [ %storemerge.i, %advance_deq_gpd.exit.land.rhs_crit_edge ]
  %16 = ptrtoint ptr %gpd.090 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %gpd.090, align 1
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool8.not = icmp eq i32 %18, 0
  br i1 %tobool8.not, label %while.body, label %land.rhs.do.body29_crit_edge

land.rhs.do.body29_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

while.body:                                       ; preds = %land.rhs
  %19 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.not.i = icmp eq ptr %20, %req_list.i
  %add.ptr.i82 = getelementptr i8, ptr %20, i32 -56
  %cmp1288 = icmp eq ptr %add.ptr.i82, null
  %cmp12 = or i1 %cmp.not.i, %cmp1288
  br i1 %cmp12, label %while.body.do.end20_crit_edge, label %lor.lhs.false

while.body.do.end20_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

lor.lhs.false:                                    ; preds = %while.body
  %gpd14 = getelementptr i8, ptr %20, i32 16
  %21 = ptrtoint ptr %gpd14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gpd14, align 4
  %cmp15.not = icmp eq ptr %22, %gpd.090
  br i1 %cmp15.not, label %if.end22, label %lor.lhs.false.do.end20_crit_edge

lor.lhs.false.do.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

do.end20:                                         ; preds = %lor.lhs.false.do.end20_crit_edge, %while.body.do.end20_crit_edge
  %dev21 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %23 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.33) #11
  br label %do.body29

if.end22:                                         ; preds = %lor.lhs.false
  %dw3_info = getelementptr inbounds %struct.qmu_gpd, ptr %gpd.090, i32 0, i32 3
  %25 = ptrtoint ptr %dw3_info to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %dw3_info, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %gen2cp to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load = load i16, ptr %gen2cp, align 4
  %29 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool25.not = icmp eq i16 %29, 0
  %cond.v = select i1 %tobool25.not, i32 65535, i32 1048575
  %cond = and i32 %cond.v, %27
  %actual = getelementptr i8, ptr %20, i32 -4
  %30 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond, ptr %actual, align 4
  tail call fastcc void @trace_mtu3_complete_gpd(ptr noundef %add.ptr, ptr noundef %gpd.090)
  tail call void @mtu3_req_complete(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr.i82, i32 noundef 0) #8
  %31 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dequeue, align 4
  %33 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i, align 4
  %cmp.i83 = icmp ult ptr %32, %34
  br i1 %cmp.i83, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i = getelementptr %struct.qmu_gpd, ptr %32, i32 1
  br label %advance_deq_gpd.exit

if.else.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %start.i84 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %start.i84, align 4
  br label %advance_deq_gpd.exit

advance_deq_gpd.exit:                             ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi ptr [ %36, %if.else.i ], [ %incdec.ptr.i, %if.then.i ]
  %37 = ptrtoint ptr %dequeue to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %storemerge.i, ptr %dequeue, align 4
  %cmp.not = icmp eq ptr %storemerge.i, %retval.0.i81
  br i1 %cmp.not, label %advance_deq_gpd.exit.do.body29_crit_edge, label %advance_deq_gpd.exit.land.rhs_crit_edge

advance_deq_gpd.exit.land.rhs_crit_edge:          ; preds = %advance_deq_gpd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

advance_deq_gpd.exit.do.body29_crit_edge:         ; preds = %advance_deq_gpd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

do.body29:                                        ; preds = %advance_deq_gpd.exit.do.body29_crit_edge, %do.end20, %land.rhs.do.body29_crit_edge, %do.end.do.body29_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qmu_done_tx.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qmu_done_tx, %do.end50)) #8
          to label %if.then43 [label %do.end50], !srcloc !124

if.then43:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %dev44 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %38 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev44, align 8
  %40 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dequeue, align 4
  %enqueue47 = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv, i32 13, i32 3
  %42 = ptrtoint ptr %enqueue47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %enqueue47, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qmu_done_tx.__UNIQUE_ID_ddebug334, ptr noundef %39, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv, ptr noundef %41, ptr noundef %43) #8
  br label %do.end50

do.end50:                                         ; preds = %if.then43, %do.body29
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mtu3_complete_gpd(ptr noundef %mep, ptr noundef %gpd) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_complete_gpd, i32 0, i32 1), ptr blockaddress(@trace_mtu3_complete_gpd, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !124

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !133

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !140
  %call42 = tail call i32 @__traceiter_mtu3_complete_gpd(ptr noundef null, ptr noundef %mep, ptr noundef %gpd) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !141
  %13 = tail call i32 @llvm.read_register.i32(metadata !110) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !110) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !133

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_complete_gpd, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_complete_gpd, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_mtu3_complete_gpd.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_mtu3_complete_gpd.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 209, ptr noundef nonnull @.str.24) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !110) #8
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
declare dso_local void @mtu3_req_complete(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mtu3_complete_gpd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qmu_tx_zlp_error_handler(ptr nocapture noundef readonly %mtu, i8 noundef zeroext %epnum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %in_eps = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 9
  %0 = ptrtoint ptr %in_eps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_eps, align 4
  %conv = zext i8 %epnum to i32
  %add.ptr = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv
  %gpd_ring = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv, i32 13
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %2 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_base, align 4
  %req_list.i = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv, i32 12
  %4 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.not.i = icmp eq ptr %5, %req_list.i
  %add.ptr.i = getelementptr i8, ptr %5, i32 -56
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  %tobool.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %length = getelementptr inbounds %struct.usb_request, ptr %spec.select.i, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %sub.i = add nsw i32 %conv, -1
  %mul.i = shl nsw i32 %sub.i, 4
  %add.i = add nsw i32 %mul.i, 1304
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %add.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %mul3.i = shl nsw i32 %sub.i, 2
  %add4.i = add nsw i32 %mul3.i, 1156
  %add.ptr.i12.i = getelementptr i8, ptr %3, i32 %add4.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %10 = ptrtoint ptr %gpd_ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpd_ring, align 4
  %sub.i135 = sub i32 %8, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %sub.i135)
  %cmp.i = icmp ugt i32 %sub.i135, 1023
  br i1 %cmp.i, label %if.end.gpd_dma_to_virt.exit_crit_edge, label %if.end.i

if.end.gpd_dma_to_virt.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpd_dma_to_virt.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %div5.i = lshr i32 %sub.i135, 4
  %start.i = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv, i32 13, i32 1
  %12 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %start.i, align 4
  %add.ptr.i136 = getelementptr %struct.qmu_gpd, ptr %13, i32 %div5.i
  br label %gpd_dma_to_virt.exit

gpd_dma_to_virt.exit:                             ; preds = %if.end.i, %if.end.gpd_dma_to_virt.exit_crit_edge
  %retval.0.i137 = phi ptr [ %add.ptr.i136, %if.end.i ], [ null, %if.end.gpd_dma_to_virt.exit_crit_edge ]
  %dw3_info = getelementptr inbounds %struct.qmu_gpd, ptr %retval.0.i137, i32 0, i32 3
  %14 = ptrtoint ptr %dw3_info to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %dw3_info, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %gen2cp = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %17 = ptrtoint ptr %gen2cp to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %gen2cp, align 4
  %18 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool4.not = icmp eq i16 %18, 0
  %cond.v = select i1 %tobool4.not, i32 65535, i32 1048575
  %cond = and i32 %cond.v, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp6.not = icmp eq i32 %cond, 0
  br i1 %cmp6.not, label %do.body11, label %do.end

do.end:                                           ; preds = %gpd_dma_to_virt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.43, i32 noundef %conv) #11
  br label %cleanup

do.body11:                                        ; preds = %gpd_dma_to_virt.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qmu_tx_zlp_error_handler.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qmu_tx_zlp_error_handler, %do.end22)) #8
          to label %if.then18 [label %do.end22], !srcloc !124

if.then18:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %dev19 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %21 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev19, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qmu_tx_zlp_error_handler.__UNIQUE_ID_ddebug332, ptr noundef %22, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.44, ptr noundef %spec.select.i) #8
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %do.body11
  tail call fastcc void @trace_mtu3_zlp_exp_gpd(ptr noundef %add.ptr, ptr noundef %retval.0.i137)
  %epnum23 = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv, i32 3
  %23 = ptrtoint ptr %epnum23 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %epnum23, align 4
  %conv24 = zext i8 %24 to i32
  %sub = shl nuw nsw i32 %conv24, 4
  %add = add nuw nsw i32 %sub, 256
  %add.ptr.i138 = getelementptr i8, ptr %3, i32 %add
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %26 = and i32 %25, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 %26) #8, !srcloc !121
  %call25 = tail call i64 @ktime_get() #8
  %add.i139 = add i64 %call25, 1000000
  %27 = ptrtoint ptr %epnum23 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %epnum23, align 4
  %conv28151 = zext i8 %28 to i32
  %sub29152 = shl nuw nsw i32 %conv28151, 4
  %add31153 = add nuw nsw i32 %sub29152, 256
  %add.ptr32154 = getelementptr i8, ptr %3, i32 %add31153
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32154) #8, !srcloc !122
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %and36155 = and i32 %30, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36155)
  %tobool37.not156 = icmp eq i32 %and36155, 0
  br i1 %tobool37.not156, label %do.end22.for.end_crit_edge, label %do.end22.land.lhs.true41_crit_edge

do.end22.land.lhs.true41_crit_edge:               ; preds = %do.end22
  br label %land.lhs.true41

do.end22.for.end_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true41:                                  ; preds = %cond.false65.land.lhs.true41_crit_edge, %do.end22.land.lhs.true41_crit_edge
  %call42 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call42, i64 %add.i139)
  %cmp3.i = icmp sgt i64 %call42, %add.i139
  br i1 %cmp3.i, label %if.then46, label %cond.false65

if.then46:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %epnum23 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %epnum23, align 4
  %conv50 = zext i8 %32 to i32
  %sub51 = shl nuw nsw i32 %conv50, 4
  %add53 = add nuw nsw i32 %sub51, 256
  %add.ptr54 = getelementptr i8, ptr %3, i32 %add53
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #8, !srcloc !122
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  br label %for.end

cond.false65:                                     ; preds = %land.lhs.true41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #8
  %36 = ptrtoint ptr %epnum23 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %epnum23, align 4
  %conv28 = zext i8 %37 to i32
  %sub29 = shl nuw nsw i32 %conv28, 4
  %add31 = add nuw nsw i32 %sub29, 256
  %add.ptr32 = getelementptr i8, ptr %3, i32 %add31
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #8, !srcloc !122
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %and36 = and i32 %39, 33554432
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %cond.false65.for.end_crit_edge, label %cond.false65.land.lhs.true41_crit_edge

cond.false65.land.lhs.true41_crit_edge:           ; preds = %cond.false65
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true41

cond.false65.for.end_crit_edge:                   ; preds = %cond.false65
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cond.false65.for.end_crit_edge, %if.then46, %do.end22.for.end_crit_edge
  %txcsr.0 = phi i32 [ %34, %if.then46 ], [ %30, %do.end22.for.end_crit_edge ], [ %39, %cond.false65.for.end_crit_edge ]
  %and72 = and i32 %txcsr.0, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end83, label %do.end81

do.end81:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev82 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %40 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev82, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.44) #11
  br label %cleanup

if.end83:                                         ; preds = %for.end
  %42 = ptrtoint ptr %epnum23 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %epnum23, align 4
  %conv85 = zext i8 %43 to i32
  %sub86 = shl nuw nsw i32 %conv85, 4
  %add88 = add nuw nsw i32 %sub86, 256
  %add.ptr.i142 = getelementptr i8, ptr %3, i32 %add88
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i142) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %45 = or i32 %44, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 %45) #8, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %retval.0.i137 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %retval.0.i137, align 1
  %or = or i32 %47, 83886080
  store i32 %or, ptr %retval.0.i137, align 1
  %48 = ptrtoint ptr %epnum23 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %epnum23, align 4
  %conv93 = zext i8 %49 to i32
  %sub94 = shl nuw nsw i32 %conv93, 4
  %add96 = add nuw nsw i32 %sub94, 256
  %add.ptr.i143 = getelementptr i8, ptr %3, i32 %add96
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i143) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %51 = or i32 %50, 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 %51) #8, !srcloc !121
  %mtu1.i = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv, i32 2
  %52 = ptrtoint ptr %mtu1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mtu1.i, align 4
  %mac_base.i = getelementptr inbounds %struct.mtu3, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %mac_base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mac_base.i, align 4
  %56 = ptrtoint ptr %epnum23 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %epnum23, align 4
  %conv.i145 = zext i8 %57 to i32
  %is_in.i = getelementptr %struct.mtu3_ep, ptr %1, i32 %conv, i32 5
  %58 = ptrtoint ptr %is_in.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %is_in.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i = icmp eq i8 %59, 0
  %sub.i146 = shl nuw nsw i32 %conv.i145, 4
  %cond.v.i = select i1 %tobool.not.i, i32 1536, i32 1280
  %cond.i = add nuw nsw i32 %cond.v.i, %sub.i146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i147 = getelementptr i8, ptr %55, i32 %cond.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i147, i32 33554432) #8, !srcloc !121
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i147) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %61 = and i32 %60, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool7.not.i = icmp eq i32 %61, 0
  br i1 %tobool7.not.i, label %if.then.i, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i147, i32 33554432) #8, !srcloc !121
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end83.cleanup_crit_edge, %do.end81, %do.end, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mtu3_zlp_exp_gpd(ptr noundef %mep, ptr noundef %gpd) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_zlp_exp_gpd, i32 0, i32 1), ptr blockaddress(@trace_mtu3_zlp_exp_gpd, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !124

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !133

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !145
  %call42 = tail call i32 @__traceiter_mtu3_zlp_exp_gpd(ptr noundef null, ptr noundef %mep, ptr noundef %gpd) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !146
  %13 = tail call i32 @llvm.read_register.i32(metadata !110) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !110) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !133

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_zlp_exp_gpd, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_zlp_exp_gpd, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_mtu3_zlp_exp_gpd.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_mtu3_zlp_exp_gpd.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 214, ptr noundef nonnull @.str.24) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !110) #8
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
declare dso_local i32 @__traceiter_mtu3_zlp_exp_gpd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !105, !106, !107, !109}
!llvm.named.register.sp = !{!110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 347, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mtu3_qmu_start._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mtu3_qmu_start._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 364, i32 4}
!10 = !{ptr @mtu3_qmu_start._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mtu3_qmu_start._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 386, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mtu3_qmu_stop.__UNIQUE_ID_ddebug329, !13, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 394, i32 3}
!19 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mtu3_qmu_stop._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @mtu3_qmu_stop._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 398, i32 2}
!24 = !{ptr @mtu3_qmu_stop.__UNIQUE_ID_ddebug330, !23, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 404, i32 2}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mtu3_qmu_flush.__UNIQUE_ID_ddebug331, !26, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!29 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 612, i32 2}
!33 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mtu3_qmu_isr.__UNIQUE_ID_ddebug338, !32, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 631, i32 38}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 261, i32 2}
!39 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mtu3_prepare_tx_gpd.__UNIQUE_ID_ddebug327, !38, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../drivers/usb/mtu3/mtu3_trace.h", i32 201, i32 1}
!43 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!45 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!48 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 304, i32 2}
!51 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mtu3_prepare_rx_gpd.__UNIQUE_ID_ddebug328, !50, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../drivers/usb/mtu3/mtu3_trace.h", i32 72, i32 1}
!55 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 523, i32 2}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @qmu_done_rx.__UNIQUE_ID_ddebug335, !57, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 531, i32 4}
!62 = !{ptr @qmu_done_rx._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @qmu_done_rx._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 543, i32 2}
!66 = !{ptr @qmu_done_rx.__UNIQUE_ID_ddebug336, !65, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../drivers/usb/mtu3/mtu3_trace.h", i32 206, i32 1}
!69 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 484, i32 2}
!72 = !{ptr @qmu_done_tx.__UNIQUE_ID_ddebug333, !71, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 492, i32 4}
!75 = !{ptr @qmu_done_tx._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @qmu_done_tx._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @qmu_done_tx.__UNIQUE_ID_ddebug334, !78, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!78 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 504, i32 2}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 569, i32 5}
!81 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @qmu_exception_isr._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @qmu_exception_isr._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 572, i32 5}
!86 = !{ptr @qmu_exception_isr._entry.36, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @qmu_exception_isr._entry_ptr.38, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 581, i32 5}
!90 = !{ptr @qmu_exception_isr.__UNIQUE_ID_ddebug337, !89, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 590, i32 5}
!93 = !{ptr @qmu_exception_isr._entry.40, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @qmu_exception_isr._entry_ptr.42, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 436, i32 3}
!97 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @qmu_tx_zlp_error_handler._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @qmu_tx_zlp_error_handler._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 440, i32 2}
!102 = !{ptr @qmu_tx_zlp_error_handler.__UNIQUE_ID_ddebug332, !101, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/mtu3/mtu3_qmu.c", i32 448, i32 3}
!105 = !{ptr @qmu_tx_zlp_error_handler._entry.46, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @qmu_tx_zlp_error_handler._entry_ptr.48, !104, !"_entry_ptr", i1 false, i1 false}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../drivers/usb/mtu3/mtu3_trace.h", i32 211, i32 1}
!109 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!110 = !{!"sp"}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i64 2155347680}
!121 = !{i64 5801375}
!122 = !{i64 5801793}
!123 = !{i64 2155348493}
!124 = !{i64 2148204902, i64 2148204907, i64 2148204920, i64 2148204964, i64 2148204998, i64 2148205019}
!125 = !{i64 2155710182}
!126 = !{i64 2155715025}
!127 = !{i64 2155349096}
!128 = !{i64 2155349308}
!129 = !{i64 2155350106}
!130 = !{i64 2155350319}
!131 = !{i64 2155725165}
!132 = !{i64 2155725631}
!133 = !{!"branch_weights", i32 2000, i32 1}
!134 = !{i64 2155477086}
!135 = !{i64 2155477311}
!136 = !{i64 2150044495}
!137 = !{i64 2150045531}
!138 = !{i64 2155599469}
!139 = !{i64 2155599680}
!140 = !{i64 2155616010}
!141 = !{i64 2155616223}
!142 = !{i64 2155739648}
!143 = !{i64 2155740310}
!144 = !{i64 2155742868}
!145 = !{i64 2155632567}
!146 = !{i64 2155632778}
