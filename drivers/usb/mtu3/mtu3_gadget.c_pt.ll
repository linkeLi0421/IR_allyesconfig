; ModuleID = '/llk/IR_all_yes/drivers/usb/mtu3/mtu3_gadget.c_pt.bc'
source_filename = "../drivers/usb/mtu3/mtu3_gadget.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtu3_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, ptr, i32 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mtu3_ep = type { %struct.usb_ep, [12 x i8], ptr, i8, i8, i8, i16, i32, i32, i32, i32, ptr, %struct.list_head, %struct.mtu3_gpd_ring, ptr, ptr, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ssusb_mtk = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, [4 x %struct.clk_bulk_data], %struct.otg_switch_mtk, i32, i8, i32, i32, i32, i32, ptr, i8, ptr, i32, i32 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.otg_switch_mtk = type { ptr, ptr, %struct.notifier_block, %struct.work_struct, i32, i32, ptr, i8, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }

@mtu3_req_complete.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 8, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mtu3\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtu3_req_complete\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/mtu3/mtu3_gadget.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s complete req: %p, sts %d, %d/%d\0A\00", [60 x i8] zeroinitializer }, align 32
@mtu3_gadget_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @mtu3_gadget_get_frame, ptr @mtu3_gadget_wakeup, ptr @mtu3_gadget_set_self_powered, ptr null, ptr null, ptr @mtu3_gadget_pullup, ptr null, ptr null, ptr @mtu3_gadget_start, ptr @mtu3_gadget_stop, ptr @mtu3_gadget_set_speed, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mtu3_gadget_resume.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -82, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtu3_gadget_resume\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gadget RESUME\0A\00", [17 x i8] zeroinitializer }, align 32
@mtu3_gadget_suspend.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -79, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtu3_gadget_suspend\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gadget SUSPEND\0A\00", [16 x i8] zeroinitializer }, align 32
@mtu3_gadget_disconnect.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -76, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtu3_gadget_disconnect\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gadget DISCONNECT\0A\00", [45 x i8] zeroinitializer }, align 32
@mtu3_gadget_reset.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 -73, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtu3_gadget_reset\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gadget RESET\0A\00", [18 x i8] zeroinitializer }, align 32
@__tracepoint_mtu3_req_complete = external dso_local global %struct.tracepoint, align 4
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/mtu3/mtu3_trace.h\00", [34 x i8] zeroinitializer }, align 32
@trace_mtu3_req_complete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_mtu3_alloc_request = external dso_local global %struct.tracepoint, align 4
@trace_mtu3_alloc_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_mtu3_free_request = external dso_local global %struct.tracepoint, align 4
@trace_mtu3_free_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mtu3_gadget_wakeup.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 110, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtu3_gadget_wakeup\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@mtu3_gadget_pullup.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtu3_gadget_pullup\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s (%s) for %sactive device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@mtu3_gadget_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 506, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s is already bound to %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtu3_gadget_start\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtu3_gadget_start._entry_ptr = internal global ptr @mtu3_gadget_start._entry, section ".printk_index", align 4
@mtu3_gadget_start.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.27, i8 0, i8 127, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bind driver %s\0A\00", [16 x i8] zeroinitializer }, align 32
@mtu3_gadget_stop.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.16, i8 0, i8 -115, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtu3_gadget_stop\00", [47 x i8] zeroinitializer }, align 32
@nuke.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 11, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nuke\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"abort %s's req: sts %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mtu3_gadget_set_speed.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 -109, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtu3_gadget_set_speed\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %s\0A\00", [25 x i8] zeroinitializer }, align 32
@mtu3_gadget_init_eps.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 -90, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtu3_gadget_init_eps\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s num_eps(1 for a pair of tx&rx ep)=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep%d%s\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@mtu3_ep0_ops = external dso_local constant %struct.usb_ep_ops, align 4
@mtu3_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @mtu3_gadget_ep_enable, ptr @mtu3_gadget_ep_disable, ptr null, ptr @mtu3_alloc_request, ptr @mtu3_free_request, ptr @mtu3_gadget_queue, ptr @mtu3_gadget_dequeue, ptr @mtu3_gadget_ep_set_halt, ptr @mtu3_gadget_ep_set_wedge, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@init_hw_ep.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -95, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"init_hw_ep\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s, name=%s, maxp=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@mtu3_gadget_ep_enable.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 40, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtu3_gadget_ep_enable\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s invalid parameters\0A\00", [41 x i8] zeroinitializer }, align 32
@mtu3_gadget_ep_enable.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.41, i8 0, i8 41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s missing wMaxPacketSize\0A\00", [37 x i8] zeroinitializer }, align 32
@mtu3_gadget_ep_enable.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.32, i8 0, i8 44, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@mtu3_gadget_ep_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s %s: %s is already enabled\0A\00", [34 x i8] zeroinitializer }, align 32
@mtu3_gadget_ep_enable.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.43, i8 0, i8 50, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s active_ep=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@mtu3_ep_enable.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 27, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtu3_ep_enable\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s maxp:%d, interval:%d, burst:%d, mult:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_mtu3_gadget_ep_enable = external dso_local global %struct.tracepoint, align 4
@trace_mtu3_gadget_ep_enable.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mtu3_gadget_ep_disable.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.32, i8 0, i8 53, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtu3_gadget_ep_disable\00", [41 x i8] zeroinitializer }, align 32
@mtu3_gadget_ep_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.46, ptr @.str.2, i32 217, ptr @.str.48, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s is already disabled\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mtu3_gadget_ep_disable._entry_ptr = internal global ptr @mtu3_gadget_ep_disable._entry, section ".printk_index", align 4
@mtu3_gadget_ep_disable.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.49, i8 0, i8 57, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s active_ep=%d, mtu3 is_active=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@__tracepoint_mtu3_gadget_ep_disable = external dso_local global %struct.tracepoint, align 4
@trace_mtu3_gadget_ep_disable.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mtu3_gadget_queue.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 69, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtu3_gadget_queue\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s %s EP%d(%s), req=%p, maxp=%d, len#%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@mtu3_gadget_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.50, ptr @.str.2, i32 283, ptr @.str.48, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"req length > supported MAX:%d requested:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@mtu3_gadget_queue._entry_ptr = internal global ptr @mtu3_gadget_queue._entry, section ".printk_index", align 4
@mtu3_gadget_queue.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.55, i8 0, i8 72, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"req=%p queued to %s while it's disabled\0A\00", [55 x i8] zeroinitializer }, align 32
@mtu3_gadget_queue._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.50, ptr @.str.2, i32 300, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dma mapping failed\0A\00", [44 x i8] zeroinitializer }, align 32
@mtu3_gadget_queue._entry_ptr.58 = internal global ptr @mtu3_gadget_queue._entry.56, section ".printk_index", align 4
@__tracepoint_mtu3_gadget_queue = external dso_local global %struct.tracepoint, align 4
@trace_mtu3_gadget_queue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mtu3_gadget_dequeue.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 83, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtu3_gadget_dequeue\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s : req=%p\0A\00", [19 x i8] zeroinitializer }, align 32
@mtu3_gadget_dequeue.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.61, i8 0, i8 86, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"req=%p not queued to %s\0A\00", [39 x i8] zeroinitializer }, align 32
@__tracepoint_mtu3_gadget_dequeue = external dso_local global %struct.tracepoint, align 4
@trace_mtu3_gadget_dequeue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mtu3_gadget_ep_set_halt.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 0, i8 92, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtu3_gadget_ep_set_halt\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s : %s...\00", [21 x i8] zeroinitializer }, align 32
@mtu3_gadget_ep_set_halt.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.64, i8 0, i8 97, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"req in progress, cannot halt %s\0A\00", [63 x i8] zeroinitializer }, align 32
@mtu3_gadget_ep_set_halt.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.65, i8 0, i8 99, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s %s stall\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clear\00", [26 x i8] zeroinitializer }, align 32
@__tracepoint_mtu3_gadget_ep_set_halt = external dso_local global %struct.tracepoint, align 4
@trace_mtu3_gadget_ep_set_halt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 32, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"mtu3_gadget_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 595, i32 36 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 698, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 709, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 720, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 733, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [33 x i8] c"../drivers/usb/mtu3/mtu3_trace.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 170, i32 1 }
@___asan_gen_.117 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 108, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 441, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 475, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 505, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 510, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 566, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 46, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 588, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 666, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 625, i32 21 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 626, i32 33 }
@___asan_gen_.188 = private unnamed_addr constant [12 x i8] c"mtu3_ep_ops\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 418, i32 32 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 646, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 161, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 166, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 182, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 201, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 107, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 213, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 217, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 227, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 274, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 280, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 289, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 300, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 334, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 344, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 371, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 388, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.285 = private constant [34 x i8] c"../drivers/usb/mtu3/mtu3_gadget.c\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 397, i32 2 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @mtu3_gadget_ep_disable._entry, ptr @mtu3_gadget_ep_disable._entry_ptr, ptr @mtu3_gadget_queue._entry, ptr @mtu3_gadget_queue._entry.56, ptr @mtu3_gadget_queue._entry_ptr, ptr @mtu3_gadget_queue._entry_ptr.58, ptr @mtu3_gadget_start._entry, ptr @mtu3_gadget_start._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mtu3_gadget_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @mtu3_ep_ops, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_gadget_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_gadget_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_gadget_ep_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_gadget_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_gadget_queue._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtu3_req_complete(ptr noundef %mep, ptr noundef %req, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu1 = getelementptr inbounds %struct.mtu3_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtu1, align 4
  %list = getelementptr inbounds %struct.mtu3_request, ptr %req, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.mtu3_request, ptr %req, i32 0, i32 1, i32 1
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
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mtu3_request, ptr %req, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %status2 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %10 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %11)
  %cmp = icmp eq i32 %11, -115
  br i1 %cmp, label %if.then, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %status2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %status, ptr %status2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  tail call fastcc void @trace_mtu3_req_complete(ptr noundef %req)
  tail call void @_raw_spin_unlock(ptr noundef %1) #9
  %epnum = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 3
  %13 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %epnum, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %if.then4

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %g = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 17
  %is_in = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 5
  %15 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_in, align 2
  %conv = zext i8 %16 to i32
  tail call void @usb_gadget_unmap_request(ptr noundef %g, ptr noundef %req, i32 noundef %conv) #9
  br label %do.body

do.body:                                          ; preds = %if.then4, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_req_complete.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_req_complete, %do.end)) #9
          to label %if.then11 [label %do.end], !srcloc !176

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 1
  %19 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status2, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %21 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_req_complete.__UNIQUE_ID_ddebug327, ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef %req, i32 noundef %20, i32 noundef %22, i32 noundef %24) #9
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  tail call void @usb_gadget_giveback_request(ptr noundef %mep, ptr noundef %req) #9
  tail call void @_raw_spin_lock(ptr noundef %1) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mtu3_req_complete(ptr noundef %req) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_req_complete, i32 0, i32 1), ptr blockaddress(@trace_mtu3_req_complete, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !177

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !178
  %call42 = tail call i32 @__traceiter_mtu3_req_complete(ptr noundef null, ptr noundef %req) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !179
  %13 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !177

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_req_complete, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_req_complete, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mtu3_req_complete.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_mtu3_req_complete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 173, ptr noundef nonnull @.str.13) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %31 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
declare dso_local void @usb_gadget_unmap_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mtu3_alloc_request(ptr noundef %ep, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !177

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp_flags, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 80) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dma = getelementptr inbounds %struct.usb_request, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dma, align 8
  %epnum = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 3
  %3 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %epnum, align 4
  %conv = zext i8 %4 to i32
  %epnum2 = getelementptr inbounds %struct.mtu3_request, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %epnum2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %epnum2, align 4
  %mep3 = getelementptr inbounds %struct.mtu3_request, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %mep3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ep, ptr %mep3, align 8
  %list = getelementptr inbounds %struct.mtu3_request, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.mtu3_request, ptr %call7.i.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i, align 4
  tail call fastcc void @trace_mtu3_alloc_request(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mtu3_alloc_request(ptr noundef %req) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_alloc_request, i32 0, i32 1), ptr blockaddress(@trace_mtu3_alloc_request, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !177

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !182
  %call42 = tail call i32 @__traceiter_mtu3_alloc_request(ptr noundef null, ptr noundef %req) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !183
  %13 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !177

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_alloc_request, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_alloc_request, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mtu3_alloc_request.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_mtu3_alloc_request.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 153, ptr noundef nonnull @.str.13) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %31 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
define dso_local void @mtu3_free_request(ptr nocapture readnone %ep, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_mtu3_free_request(ptr noundef %req)
  tail call void @kfree(ptr noundef %req) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mtu3_free_request(ptr noundef %req) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_free_request, i32 0, i32 1), ptr blockaddress(@trace_mtu3_free_request, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !177

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !184
  %call42 = tail call i32 @__traceiter_mtu3_free_request(ptr noundef null, ptr noundef %req) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !185
  %13 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !177

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_free_request, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_free_request, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mtu3_free_request.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_mtu3_free_request.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 158, ptr noundef nonnull @.str.13) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %31 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtu3_gadget_setup(ptr noundef %mtu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %g = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17
  %ops = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mtu3_gadget_ops, ptr %ops, align 8
  %max_speed = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 21
  %1 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_speed, align 4
  %max_speed2 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 6
  %3 = ptrtoint ptr %max_speed2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %max_speed2, align 4
  %speed = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 5
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %speed, align 8
  %sg_supported = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 17
  %5 = ptrtoint ptr %sg_supported to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %sg_supported, align 4
  %bf.clear = and i32 %bf.load, 2147483647
  store i32 %bf.clear, ptr %sg_supported, align 4
  %name = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 10
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str, ptr %name, align 4
  %is_active = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %7 = ptrtoint ptr %is_active to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load6 = load i16, ptr %is_active, align 4
  %bf.clear10 = and i16 %bf.load6, 32639
  store i16 %bf.clear10, ptr %is_active, align 4
  tail call fastcc void @mtu3_gadget_init_eps(ptr noundef %mtu)
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %call = tail call i32 @usb_add_gadget_udc(ptr noundef %9, ptr noundef %g) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtu3_gadget_init_eps(ptr noundef %mtu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_list = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 4
  %0 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 4, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ep_list, ptr %prev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_init_eps.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_init_eps, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %num_eps = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 12
  %4 = ptrtoint ptr %num_eps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_eps, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_gadget_init_eps.__UNIQUE_ID_ddebug365, ptr noundef %3, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ep0 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 11
  %6 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep0, align 4
  %epnum1.i = getelementptr inbounds %struct.mtu3_ep, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %epnum1.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %epnum1.i, align 4
  %mtu2.i = getelementptr inbounds %struct.mtu3_ep, ptr %7, i32 0, i32 2
  %9 = ptrtoint ptr %mtu2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mtu, ptr %mtu2.i, align 4
  %is_in4.i = getelementptr inbounds %struct.mtu3_ep, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %is_in4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %is_in4.i, align 2
  %req_list.i = getelementptr inbounds %struct.mtu3_ep, ptr %7, i32 0, i32 12
  %11 = ptrtoint ptr %req_list.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %req_list.i, ptr %req_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mtu3_ep, ptr %7, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %req_list.i, ptr %prev.i.i, align 4
  %name.i = getelementptr inbounds %struct.mtu3_ep, ptr %7, i32 0, i32 1
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i, ptr noundef nonnull @.str.35, i32 noundef 0, ptr noundef nonnull @.str.21) #9
  %name9.i = getelementptr inbounds %struct.usb_ep, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %name9.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %name.i, ptr %name9.i, align 4
  %ep_list.i = getelementptr inbounds %struct.usb_ep, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %ep_list.i, ptr %ep_list.i, align 4
  %prev.i109.i = getelementptr inbounds %struct.usb_ep, ptr %7, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %prev.i109.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ep_list.i, ptr %prev.i109.i, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %7, i32 noundef 512) #9
  %caps.i = getelementptr inbounds %struct.usb_ep, ptr %7, i32 0, i32 4
  %16 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %caps.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %caps.i, align 4
  %ops.i = getelementptr inbounds %struct.usb_ep, ptr %7, i32 0, i32 2
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mtu3_ep0_ops, ptr %ops.i, align 4
  %ep0.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 3
  %18 = ptrtoint ptr %ep0.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %7, ptr %ep0.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_hw_ep.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_init_eps, %init_hw_ep.exit)) #9
          to label %if.then43.i [label %init_hw_ep.exit], !srcloc !176

if.then43.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  %21 = ptrtoint ptr %name9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name9.i, align 4
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %7, i32 0, i32 7
  %23 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 7)
  %bf.load47.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr.i = lshr i56 %bf.load47.i, 40
  %bf.cast.i = trunc i56 %bf.lshr.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_hw_ep.__UNIQUE_ID_ddebug364, ptr noundef %20, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, ptr noundef %22, i32 noundef %bf.cast.i) #9
  br label %init_hw_ep.exit

init_hw_ep.exit:                                  ; preds = %if.then43.i, %do.end
  %24 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load53.i = load i8, ptr %caps.i, align 4
  %bf.set68.i = or i8 %bf.load53.i, 12
  store i8 %bf.set68.i, ptr %caps.i, align 4
  %num_eps4 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 12
  %25 = ptrtoint ptr %num_eps4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_eps4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp26 = icmp sgt i32 %26, 1
  br i1 %cmp26, label %for.body.lr.ph, label %init_hw_ep.exit.for.end_crit_edge

init_hw_ep.exit.for.end_crit_edge:                ; preds = %init_hw_ep.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %init_hw_ep.exit
  %in_eps = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 9
  %out_eps = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %conv28 = phi i32 [ 1, %for.body.lr.ph ], [ %conv, %for.body.for.body_crit_edge ]
  %epnum.027 = phi i8 [ 1, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %27 = ptrtoint ptr %in_eps to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %in_eps, align 4
  %add.ptr = getelementptr %struct.mtu3_ep, ptr %28, i32 %conv28
  tail call fastcc void @init_hw_ep(ptr noundef %mtu, ptr noundef %add.ptr, i32 noundef %conv28, i32 noundef 1)
  %29 = ptrtoint ptr %out_eps to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %out_eps, align 8
  %add.ptr9 = getelementptr %struct.mtu3_ep, ptr %30, i32 %conv28
  tail call fastcc void @init_hw_ep(ptr noundef %mtu, ptr noundef %add.ptr9, i32 noundef %conv28, i32 noundef 0)
  %inc = add i8 %epnum.027, 1
  %conv = zext i8 %inc to i32
  %31 = ptrtoint ptr %num_eps4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_eps4, align 8
  %cmp = icmp sgt i32 %32, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %init_hw_ep.exit.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtu3_gadget_cleanup(ptr noundef %mtu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %g = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17
  tail call void @usb_del_gadget_udc(ptr noundef %g) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtu3_gadget_resume(ptr noundef %mtu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_resume.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_resume, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_gadget_resume.__UNIQUE_ID_ddebug366, ptr noundef %1, ptr noundef nonnull @.str.5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %gadget_driver = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 18
  %2 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gadget_driver, align 8
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %do.end.if.end11_crit_edge, label %land.lhs.true

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true:                                    ; preds = %do.end
  %resume = getelementptr inbounds %struct.usb_gadget_driver, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resume, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true.if.end11_crit_edge, label %if.then7

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %mtu) #9
  %6 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gadget_driver, align 8
  %resume9 = getelementptr inbounds %struct.usb_gadget_driver, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %resume9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resume9, align 4
  %g = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17
  tail call void %9(ptr noundef %g) #9
  tail call void @_raw_spin_lock(ptr noundef %mtu) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true.if.end11_crit_edge, %do.end.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtu3_gadget_suspend(ptr noundef %mtu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_suspend.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_suspend, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_gadget_suspend.__UNIQUE_ID_ddebug367, ptr noundef %1, ptr noundef nonnull @.str.7) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %gadget_driver = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 18
  %2 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gadget_driver, align 8
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %do.end.if.end11_crit_edge, label %land.lhs.true

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true:                                    ; preds = %do.end
  %suspend = getelementptr inbounds %struct.usb_gadget_driver, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %suspend, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true.if.end11_crit_edge, label %if.then7

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %mtu) #9
  %6 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gadget_driver, align 8
  %suspend9 = getelementptr inbounds %struct.usb_gadget_driver, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %suspend9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %suspend9, align 4
  %g = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17
  tail call void %9(ptr noundef %g) #9
  tail call void @_raw_spin_lock(ptr noundef %mtu) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true.if.end11_crit_edge, %do.end.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtu3_gadget_disconnect(ptr noundef %mtu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_disconnect.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_disconnect, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_gadget_disconnect.__UNIQUE_ID_ddebug368, ptr noundef %1, ptr noundef nonnull @.str.9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %gadget_driver = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 18
  %2 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gadget_driver, align 8
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %do.end.if.end11_crit_edge, label %land.lhs.true

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true:                                    ; preds = %do.end
  %disconnect = getelementptr inbounds %struct.usb_gadget_driver, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disconnect, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true.if.end11_crit_edge, label %if.then7

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %mtu) #9
  %6 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gadget_driver, align 8
  %disconnect9 = getelementptr inbounds %struct.usb_gadget_driver, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %disconnect9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disconnect9, align 4
  %g = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17
  tail call void %9(ptr noundef %g) #9
  tail call void @_raw_spin_lock(ptr noundef %mtu) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true.if.end11_crit_edge, %do.end.if.end11_crit_edge
  %address.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 24
  %10 = ptrtoint ptr %address.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %address.i, align 2
  %ep0_state.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 16
  %11 = ptrtoint ptr %ep0_state.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %ep0_state.i, align 8
  %may_wakeup.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %12 = ptrtoint ptr %may_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i = load i16, ptr %may_wakeup.i, align 4
  %bf.clear11.i = and i16 %bf.load.i, -22145
  store i16 %bf.clear11.i, ptr %may_wakeup.i, align 4
  %g12 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17
  tail call void @usb_gadget_set_state(ptr noundef %g12, i32 noundef 0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtu3_gadget_reset(ptr noundef %mtu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_reset.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_reset, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_gadget_reset.__UNIQUE_ID_ddebug369, ptr noundef %1, ptr noundef nonnull @.str.11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %speed = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 5
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_disconnect.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_reset, %do.end.i)) #9
          to label %if.then.i [label %do.end.i], !srcloc !176

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_gadget_disconnect.__UNIQUE_ID_ddebug368, ptr noundef %5, ptr noundef nonnull @.str.9) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then4
  %gadget_driver.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 18
  %6 = ptrtoint ptr %gadget_driver.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gadget_driver.i, align 8
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %do.end.i.mtu3_gadget_disconnect.exit_crit_edge, label %land.lhs.true.i

do.end.i.mtu3_gadget_disconnect.exit_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtu3_gadget_disconnect.exit

land.lhs.true.i:                                  ; preds = %do.end.i
  %disconnect.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disconnect.i, align 4
  %tobool6.not.i = icmp eq ptr %9, null
  br i1 %tobool6.not.i, label %land.lhs.true.i.mtu3_gadget_disconnect.exit_crit_edge, label %if.then7.i

land.lhs.true.i.mtu3_gadget_disconnect.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtu3_gadget_disconnect.exit

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %mtu) #9
  %10 = ptrtoint ptr %gadget_driver.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gadget_driver.i, align 8
  %disconnect9.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %disconnect9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disconnect9.i, align 4
  %g.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17
  tail call void %13(ptr noundef %g.i) #9
  tail call void @_raw_spin_lock(ptr noundef %mtu) #9
  br label %mtu3_gadget_disconnect.exit

mtu3_gadget_disconnect.exit:                      ; preds = %if.then7.i, %land.lhs.true.i.mtu3_gadget_disconnect.exit_crit_edge, %do.end.i.mtu3_gadget_disconnect.exit_crit_edge
  %address.i.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 24
  %14 = ptrtoint ptr %address.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %address.i.i, align 2
  %ep0_state.i.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 16
  %15 = ptrtoint ptr %ep0_state.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %ep0_state.i.i, align 8
  %may_wakeup.i.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %16 = ptrtoint ptr %may_wakeup.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i.i = load i16, ptr %may_wakeup.i.i, align 4
  %bf.clear11.i.i = and i16 %bf.load.i.i, -22145
  store i16 %bf.clear11.i.i, ptr %may_wakeup.i.i, align 4
  %g12.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17
  tail call void @usb_gadget_set_state(ptr noundef %g12.i, i32 noundef 0) #9
  br label %if.end5

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %address.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 24
  %17 = ptrtoint ptr %address.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %address.i, align 2
  %ep0_state.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 16
  %18 = ptrtoint ptr %ep0_state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %ep0_state.i, align 8
  %may_wakeup.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %19 = ptrtoint ptr %may_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load.i = load i16, ptr %may_wakeup.i, align 4
  %bf.clear11.i = and i16 %bf.load.i, -22145
  store i16 %bf.clear11.i, ptr %may_wakeup.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %mtu3_gadget_disconnect.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mtu3_req_complete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mtu3_alloc_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mtu3_free_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_gadget_get_frame(ptr nocapture noundef readonly %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_base = getelementptr i8, ptr %gadget, i32 -100
  %0 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_base, align 4
  %add.ptr.i2 = getelementptr i8, ptr %1, i32 9276
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #9, !srcloc !186
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_gadget_wakeup(ptr noundef %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %gadget, i32 -152
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_wakeup.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_wakeup, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %gadget, i32 -104
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_gadget_wakeup.__UNIQUE_ID_ddebug359, ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %may_wakeup = getelementptr i8, ptr %gadget, i32 1148
  %2 = ptrtoint ptr %may_wakeup to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %may_wakeup, align 4
  %3 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool5.not = icmp eq i16 %3, 0
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %do.body9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body9:                                         ; preds = %do.end
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #9
  %speed = getelementptr i8, ptr %gadget, i32 64
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp17 = icmp ugt i32 %5, 4
  %mac_base = getelementptr i8, ptr %gadget, i32 -100
  %6 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac_base, align 4
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i50 = getelementptr i8, ptr %7, i32 5648
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !189
  tail call void @arm_heavy_mb() #9
  %9 = or i32 %8, 536870912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %9) #9, !srcloc !190
  br label %if.end37

if.else:                                          ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i51 = getelementptr i8, ptr %7, i32 9220
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !189
  tail call void @arm_heavy_mb() #9
  %11 = or i32 %10, 67108864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %11) #9, !srcloc !190
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call12) #9
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #9
  %12 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mac_base, align 4
  %add.ptr.i53 = getelementptr i8, ptr %13, i32 9220
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  tail call void @arm_heavy_mb() #9
  %15 = and i32 %14, -67108865
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %15) #9, !srcloc !190
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then19
  %flags.0 = phi i32 [ %call12, %if.then19 ], [ %call31, %if.else ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %flags.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ -95, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtu3_gadget_set_self_powered(ptr nocapture noundef %gadget, i32 noundef %is_selfpowered) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_selfpowered)
  %tobool.not = icmp eq i32 %is_selfpowered, 0
  %is_self_powered = getelementptr i8, ptr %gadget, i32 1148
  %0 = ptrtoint ptr %is_self_powered to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %is_self_powered, align 4
  %bf.shl = select i1 %tobool.not, i16 0, i16 8192
  %bf.clear = and i16 %bf.load, -8193
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %is_self_powered, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_gadget_pullup(ptr noundef %gadget, i32 noundef %is_on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %gadget, i32 -152
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_pullup.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_pullup, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %gadget, i32 -104
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool5.not = icmp eq i32 %is_on, 0
  %cond = select i1 %tobool5.not, ptr @.str.20, ptr @.str.19
  %is_active = getelementptr i8, ptr %gadget, i32 1148
  %2 = ptrtoint ptr %is_active to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %is_active, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool6.not = icmp sgt i16 %bf.load, -1
  %cond7 = select i1 %tobool6.not, ptr @.str.22, ptr @.str.21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_gadget_pullup.__UNIQUE_ID_ddebug360, ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond, ptr noundef nonnull %cond7) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev8 = getelementptr i8, ptr %gadget, i32 -104
  %3 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev8, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #9
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool19 = icmp ne i32 %is_on, 0
  %lnot.ext23 = zext i1 %tobool19 to i32
  %is_active24 = getelementptr i8, ptr %gadget, i32 1148
  %5 = ptrtoint ptr %is_active24 to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load25 = load i16, ptr %is_active24, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load25)
  %tobool28.not = icmp sgt i16 %bf.load25, -1
  br i1 %tobool28.not, label %if.then29, label %if.else

if.then29:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %bf.shl = select i1 %tobool19, i16 2048, i16 0
  %bf.clear = and i16 %bf.load25, -2049
  %bf.set = or i16 %bf.clear, %bf.shl
  %6 = ptrtoint ptr %is_active24 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %bf.set, ptr %is_active24, align 4
  br label %if.end47

if.else:                                          ; preds = %do.end
  %7 = and i16 %bf.load25, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %8 = icmp eq i16 %7, 0
  %cmp36.not = xor i1 %tobool19, %8
  br i1 %cmp36.not, label %if.else.if.end47_crit_edge, label %if.then38

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %bf.shl42 = select i1 %tobool19, i16 2048, i16 0
  %bf.clear43 = and i16 %bf.load25, -2049
  %bf.set44 = or i16 %bf.clear43, %bf.shl42
  %9 = ptrtoint ptr %is_active24 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %bf.set44, ptr %is_active24, align 4
  tail call void @mtu3_dev_on_off(ptr noundef %add.ptr.i, i32 noundef %lnot.ext23) #9
  br label %if.end47

if.end47:                                         ; preds = %if.then38, %if.else.if.end47_crit_edge, %if.then29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call14) #9
  %10 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev8, align 8
  %call.i66 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_gadget_start(ptr noundef %gadget, ptr noundef %driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %gadget, i32 -152
  %gadget_driver = getelementptr i8, ptr %gadget, i32 1048
  %0 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gadget_driver, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %gadget, i32 -104
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %name = getelementptr i8, ptr %gadget, i32 84
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %driver2 = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %driver2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.23, ptr noundef %5, ptr noundef %7) #13
  br label %cleanup

do.body4:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_start.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_start, %do.end14)) #9
          to label %if.then10 [label %do.end14], !srcloc !176

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  %dev11 = getelementptr i8, ptr %gadget, i32 -104
  %8 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev11, align 8
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_gadget_start.__UNIQUE_ID_ddebug361, ptr noundef %9, ptr noundef nonnull @.str.27, ptr noundef %11) #9
  br label %do.end14

do.end14:                                         ; preds = %if.then10, %do.body4
  %dev15 = getelementptr i8, ptr %gadget, i32 -104
  %12 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev15, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #9
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #9
  %softconnect = getelementptr i8, ptr %gadget, i32 1148
  %14 = ptrtoint ptr %softconnect to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %softconnect, align 4
  %bf.clear = and i16 %bf.load, -2049
  store i16 %bf.clear, ptr %softconnect, align 4
  %15 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %driver, ptr %gadget_driver, align 8
  %ssusb = getelementptr i8, ptr %gadget, i32 -108
  %16 = ptrtoint ptr %ssusb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ssusb, align 4
  %dr_mode = getelementptr inbounds %struct.ssusb_mtk, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp27 = icmp eq i32 %19, 2
  br i1 %cmp27, label %if.then29, label %do.end14.if.end30_crit_edge

do.end14.if.end30_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then29:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mtu3_start(ptr noundef %add.ptr.i) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %do.end14.if.end30_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call21) #9
  %20 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev15, align 8
  %call.i48 = tail call i32 @__pm_runtime_idle(ptr noundef %21, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_gadget_stop(ptr noundef %g) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %g, i32 -152
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_stop.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_stop, %do.body6)) #9
          to label %if.then [label %do.body6], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %g, i32 -104
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_gadget_stop.__UNIQUE_ID_ddebug362, ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.28) #9
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #9
  tail call fastcc void @stop_activity(ptr noundef %add.ptr.i)
  %gadget_driver = getelementptr i8, ptr %g, i32 1048
  %2 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %gadget_driver, align 8
  %ssusb = getelementptr i8, ptr %g, i32 -108
  %3 = ptrtoint ptr %ssusb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ssusb, align 4
  %dr_mode = getelementptr inbounds %struct.ssusb_mtk, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp14 = icmp eq i32 %6, 2
  br i1 %cmp14, label %if.then16, label %do.body6.if.end17_crit_edge

do.body6.if.end17_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mtu3_stop(ptr noundef %add.ptr.i) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %do.body6.if.end17_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call9) #9
  %irq = getelementptr i8, ptr %g, i32 -92
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %8) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtu3_gadget_set_speed(ptr noundef %g, i32 noundef %speed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_set_speed.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_set_speed, %do.body7)) #9
          to label %if.then [label %do.body7], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %g, i32 -104
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call5 = tail call ptr @usb_speed_string(i32 noundef %speed) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_gadget_set_speed.__UNIQUE_ID_ddebug363, ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, ptr noundef %call5) #9
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %add.ptr.i = getelementptr i8, ptr %g, i32 -152
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #9
  %speed15 = getelementptr i8, ptr %g, i32 1144
  %2 = ptrtoint ptr %speed15 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %speed, ptr %speed15, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call10) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_dev_on_off(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop_activity(ptr noundef %mtu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %g = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17
  %speed = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 5
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %gadget_driver = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 18
  %2 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gadget_driver, align 8
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %speed, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %driver.0 = phi ptr [ %3, %if.else ], [ null, %entry.if.end_crit_edge ]
  %softconnect = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %5 = ptrtoint ptr %softconnect to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %softconnect, align 4
  %6 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear6 = and i16 %bf.load, -2049
  %7 = ptrtoint ptr %softconnect to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %bf.clear6, ptr %softconnect, align 4
  tail call void @mtu3_dev_on_off(ptr noundef %mtu, i32 noundef 0) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %ep0 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 11
  %8 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep0, align 4
  %req_list.i = getelementptr inbounds %struct.mtu3_ep, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %req_list.i
  br i1 %cmp.i.not.i, label %if.end7.nuke.exit_crit_edge, label %do.body.i

if.end7.nuke.exit_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

do.body.i:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nuke.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stop_activity, %do.end.i)) #9
          to label %if.then6.i [label %do.end.i], !srcloc !176

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %mtu.i = getelementptr inbounds %struct.mtu3_ep, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mtu.i, align 4
  %dev.i = getelementptr inbounds %struct.mtu3, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.mtu3_ep, ptr %9, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nuke.__UNIQUE_ID_ddebug328, ptr noundef %15, ptr noundef nonnull @.str.30, ptr noundef %name.i, i32 noundef -108) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %epnum.i = getelementptr inbounds %struct.mtu3_ep, ptr %9, i32 0, i32 3
  %16 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %epnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not.i = icmp eq i8 %17, 0
  br i1 %tobool8.not.i, label %do.end.i.if.end10.i_crit_edge, label %if.then9.i

do.end.i.if.end10.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then9.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mtu3_qmu_flush(ptr noundef %9) #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %do.end.i.if.end10.i_crit_edge
  %18 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.i1.not4.i = icmp eq ptr %19, %req_list.i
  br i1 %cmp.i1.not4.i, label %if.end10.i.nuke.exit_crit_edge, label %if.end10.i.while.body.i_crit_edge

if.end10.i.while.body.i_crit_edge:                ; preds = %if.end10.i
  br label %while.body.i

if.end10.i.nuke.exit_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end10.i.while.body.i_crit_edge
  %20 = phi ptr [ %22, %while.body.i.while.body.i_crit_edge ], [ %19, %if.end10.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %20, i32 -56
  tail call void @mtu3_req_complete(ptr noundef %9, ptr noundef %add.ptr.i, i32 noundef -108) #9
  %21 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.i1.not.i = icmp eq ptr %22, %req_list.i
  br i1 %cmp.i1.not.i, label %while.body.i.nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.nuke.exit_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

nuke.exit:                                        ; preds = %while.body.i.nuke.exit_crit_edge, %if.end10.i.nuke.exit_crit_edge, %if.end7.nuke.exit_crit_edge
  %num_eps = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 12
  %23 = ptrtoint ptr %num_eps to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_eps, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp865 = icmp sgt i32 %24, 1
  br i1 %cmp865, label %for.body.lr.ph, label %nuke.exit.for.end_crit_edge

nuke.exit.for.end_crit_edge:                      ; preds = %nuke.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %nuke.exit
  %in_eps = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 9
  %out_eps = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %nuke.exit64.for.body_crit_edge, %for.body.lr.ph
  %i.066 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %nuke.exit64.for.body_crit_edge ]
  %25 = ptrtoint ptr %in_eps to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %in_eps, align 4
  %add.ptr = getelementptr %struct.mtu3_ep, ptr %26, i32 %i.066
  %req_list.i31 = getelementptr %struct.mtu3_ep, ptr %26, i32 %i.066, i32 12
  %27 = ptrtoint ptr %req_list.i31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %req_list.i31, align 4
  %cmp.i.not.i32 = icmp eq ptr %28, %req_list.i31
  br i1 %cmp.i.not.i32, label %for.body.nuke.exit47_crit_edge, label %do.body.i33

for.body.nuke.exit47_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit47

do.body.i33:                                      ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nuke.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stop_activity, %do.end.i40)) #9
          to label %if.then6.i37 [label %do.end.i40], !srcloc !176

if.then6.i37:                                     ; preds = %do.body.i33
  call void @__sanitizer_cov_trace_pc() #11
  %mtu.i34 = getelementptr %struct.mtu3_ep, ptr %26, i32 %i.066, i32 2
  %29 = ptrtoint ptr %mtu.i34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mtu.i34, align 4
  %dev.i35 = getelementptr inbounds %struct.mtu3, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev.i35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i35, align 8
  %name.i36 = getelementptr %struct.mtu3_ep, ptr %26, i32 %i.066, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nuke.__UNIQUE_ID_ddebug328, ptr noundef %32, ptr noundef nonnull @.str.30, ptr noundef %name.i36, i32 noundef -108) #9
  br label %do.end.i40

do.end.i40:                                       ; preds = %if.then6.i37, %do.body.i33
  %epnum.i38 = getelementptr %struct.mtu3_ep, ptr %26, i32 %i.066, i32 3
  %33 = ptrtoint ptr %epnum.i38 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %epnum.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool8.not.i39 = icmp eq i8 %34, 0
  br i1 %tobool8.not.i39, label %do.end.i40.if.end10.i43_crit_edge, label %if.then9.i41

do.end.i40.if.end10.i43_crit_edge:                ; preds = %do.end.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i43

if.then9.i41:                                     ; preds = %do.end.i40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mtu3_qmu_flush(ptr noundef %add.ptr) #9
  br label %if.end10.i43

if.end10.i43:                                     ; preds = %if.then9.i41, %do.end.i40.if.end10.i43_crit_edge
  %35 = ptrtoint ptr %req_list.i31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %req_list.i31, align 4
  %cmp.i1.not4.i42 = icmp eq ptr %36, %req_list.i31
  br i1 %cmp.i1.not4.i42, label %if.end10.i43.nuke.exit47_crit_edge, label %if.end10.i43.while.body.i46_crit_edge

if.end10.i43.while.body.i46_crit_edge:            ; preds = %if.end10.i43
  br label %while.body.i46

if.end10.i43.nuke.exit47_crit_edge:               ; preds = %if.end10.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit47

while.body.i46:                                   ; preds = %while.body.i46.while.body.i46_crit_edge, %if.end10.i43.while.body.i46_crit_edge
  %37 = phi ptr [ %39, %while.body.i46.while.body.i46_crit_edge ], [ %36, %if.end10.i43.while.body.i46_crit_edge ]
  %add.ptr.i44 = getelementptr i8, ptr %37, i32 -56
  tail call void @mtu3_req_complete(ptr noundef %add.ptr, ptr noundef %add.ptr.i44, i32 noundef -108) #9
  %38 = ptrtoint ptr %req_list.i31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %req_list.i31, align 4
  %cmp.i1.not.i45 = icmp eq ptr %39, %req_list.i31
  br i1 %cmp.i1.not.i45, label %while.body.i46.nuke.exit47_crit_edge, label %while.body.i46.while.body.i46_crit_edge

while.body.i46.while.body.i46_crit_edge:          ; preds = %while.body.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i46

while.body.i46.nuke.exit47_crit_edge:             ; preds = %while.body.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit47

nuke.exit47:                                      ; preds = %while.body.i46.nuke.exit47_crit_edge, %if.end10.i43.nuke.exit47_crit_edge, %for.body.nuke.exit47_crit_edge
  %40 = ptrtoint ptr %out_eps to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %out_eps, align 8
  %add.ptr9 = getelementptr %struct.mtu3_ep, ptr %41, i32 %i.066
  %req_list.i48 = getelementptr %struct.mtu3_ep, ptr %41, i32 %i.066, i32 12
  %42 = ptrtoint ptr %req_list.i48 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %req_list.i48, align 4
  %cmp.i.not.i49 = icmp eq ptr %43, %req_list.i48
  br i1 %cmp.i.not.i49, label %nuke.exit47.nuke.exit64_crit_edge, label %do.body.i50

nuke.exit47.nuke.exit64_crit_edge:                ; preds = %nuke.exit47
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit64

do.body.i50:                                      ; preds = %nuke.exit47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nuke.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stop_activity, %do.end.i57)) #9
          to label %if.then6.i54 [label %do.end.i57], !srcloc !176

if.then6.i54:                                     ; preds = %do.body.i50
  call void @__sanitizer_cov_trace_pc() #11
  %mtu.i51 = getelementptr %struct.mtu3_ep, ptr %41, i32 %i.066, i32 2
  %44 = ptrtoint ptr %mtu.i51 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mtu.i51, align 4
  %dev.i52 = getelementptr inbounds %struct.mtu3, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %dev.i52 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i52, align 8
  %name.i53 = getelementptr %struct.mtu3_ep, ptr %41, i32 %i.066, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nuke.__UNIQUE_ID_ddebug328, ptr noundef %47, ptr noundef nonnull @.str.30, ptr noundef %name.i53, i32 noundef -108) #9
  br label %do.end.i57

do.end.i57:                                       ; preds = %if.then6.i54, %do.body.i50
  %epnum.i55 = getelementptr %struct.mtu3_ep, ptr %41, i32 %i.066, i32 3
  %48 = ptrtoint ptr %epnum.i55 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %epnum.i55, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool8.not.i56 = icmp eq i8 %49, 0
  br i1 %tobool8.not.i56, label %do.end.i57.if.end10.i60_crit_edge, label %if.then9.i58

do.end.i57.if.end10.i60_crit_edge:                ; preds = %do.end.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i60

if.then9.i58:                                     ; preds = %do.end.i57
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mtu3_qmu_flush(ptr noundef %add.ptr9) #9
  br label %if.end10.i60

if.end10.i60:                                     ; preds = %if.then9.i58, %do.end.i57.if.end10.i60_crit_edge
  %50 = ptrtoint ptr %req_list.i48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %req_list.i48, align 4
  %cmp.i1.not4.i59 = icmp eq ptr %51, %req_list.i48
  br i1 %cmp.i1.not4.i59, label %if.end10.i60.nuke.exit64_crit_edge, label %if.end10.i60.while.body.i63_crit_edge

if.end10.i60.while.body.i63_crit_edge:            ; preds = %if.end10.i60
  br label %while.body.i63

if.end10.i60.nuke.exit64_crit_edge:               ; preds = %if.end10.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit64

while.body.i63:                                   ; preds = %while.body.i63.while.body.i63_crit_edge, %if.end10.i60.while.body.i63_crit_edge
  %52 = phi ptr [ %54, %while.body.i63.while.body.i63_crit_edge ], [ %51, %if.end10.i60.while.body.i63_crit_edge ]
  %add.ptr.i61 = getelementptr i8, ptr %52, i32 -56
  tail call void @mtu3_req_complete(ptr noundef %add.ptr9, ptr noundef %add.ptr.i61, i32 noundef -108) #9
  %53 = ptrtoint ptr %req_list.i48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %req_list.i48, align 4
  %cmp.i1.not.i62 = icmp eq ptr %54, %req_list.i48
  br i1 %cmp.i1.not.i62, label %while.body.i63.nuke.exit64_crit_edge, label %while.body.i63.while.body.i63_crit_edge

while.body.i63.while.body.i63_crit_edge:          ; preds = %while.body.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i63

while.body.i63.nuke.exit64_crit_edge:             ; preds = %while.body.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit64

nuke.exit64:                                      ; preds = %while.body.i63.nuke.exit64_crit_edge, %if.end10.i60.nuke.exit64_crit_edge, %nuke.exit47.nuke.exit64_crit_edge
  %inc = add nuw nsw i32 %i.066, 1
  %55 = ptrtoint ptr %num_eps to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_eps, align 8
  %cmp8 = icmp slt i32 %inc, %56
  br i1 %cmp8, label %nuke.exit64.for.body_crit_edge, label %nuke.exit64.for.end_crit_edge

nuke.exit64.for.end_crit_edge:                    ; preds = %nuke.exit64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

nuke.exit64.for.body_crit_edge:                   ; preds = %nuke.exit64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %nuke.exit64.for.end_crit_edge, %nuke.exit.for.end_crit_edge
  %tobool10.not = icmp eq ptr %driver.0, null
  br i1 %tobool10.not, label %for.end.if.end14_crit_edge, label %if.then11

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %mtu) #9
  %disconnect = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver.0, i32 0, i32 5
  %57 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %disconnect, align 4
  tail call void %58(ptr noundef %g) #9
  tail call void @_raw_spin_lock(ptr noundef %mtu) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %for.end.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_qmu_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_speed_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_hw_ep(ptr noundef %mtu, ptr noundef %mep, i32 noundef %epnum, i32 noundef %is_in) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %epnum to i8
  %epnum1 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 3
  %0 = ptrtoint ptr %epnum1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %epnum1, align 4
  %mtu2 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 2
  %1 = ptrtoint ptr %mtu2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mtu, ptr %mtu2, align 4
  %conv3 = trunc i32 %is_in to i8
  %is_in4 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 5
  %2 = ptrtoint ptr %is_in4 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv3, ptr %is_in4, align 2
  %req_list = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 12
  %3 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %req_list, ptr %req_list, align 4
  %prev.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %req_list, ptr %prev.i, align 4
  %name = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %epnum)
  %tobool.not = icmp eq i32 %epnum, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_in)
  %tobool5.not = icmp eq i32 %is_in, 0
  %cond = select i1 %tobool5.not, ptr @.str.36, ptr @.str.22
  %cond6 = select i1 %tobool.not, ptr @.str.21, ptr %cond
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.35, i32 noundef %epnum, ptr noundef nonnull %cond6)
  %name9 = getelementptr inbounds %struct.usb_ep, ptr %mep, i32 0, i32 1
  %5 = ptrtoint ptr %name9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %name9, align 4
  %ep_list = getelementptr inbounds %struct.usb_ep, ptr %mep, i32 0, i32 3
  %6 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i109 = getelementptr inbounds %struct.usb_ep, ptr %mep, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i109 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ep_list, ptr %prev.i109, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %mep, i32 noundef 512) #9
  %caps = getelementptr inbounds %struct.usb_ep, ptr %mep, i32 0, i32 4
  %8 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %caps, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %caps, align 4
  %ops = getelementptr inbounds %struct.usb_ep, ptr %mep, i32 0, i32 2
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mtu3_ep0_ops, ptr %ops, align 4
  %ep0 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 3
  %10 = ptrtoint ptr %ep0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mep, ptr %ep0, align 4
  br label %do.body

if.else:                                          ; preds = %entry
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %mep, i32 noundef 1024) #9
  %caps18 = getelementptr inbounds %struct.usb_ep, ptr %mep, i32 0, i32 4
  %11 = ptrtoint ptr %caps18 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load19 = load i8, ptr %caps18, align 4
  %bf.set31 = or i8 %bf.load19, 112
  store i8 %bf.set31, ptr %caps18, align 4
  %ops33 = getelementptr inbounds %struct.usb_ep, ptr %mep, i32 0, i32 2
  %12 = ptrtoint ptr %ops33 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mtu3_ep_ops, ptr %ops33, align 4
  %ep_list37 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 4
  %prev.i110 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 4, i32 1
  %13 = ptrtoint ptr %prev.i110 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i110, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list, ptr noundef %14, ptr noundef %ep_list37) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %prev.i110 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ep_list, ptr %prev.i110, align 4
  %16 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ep_list37, ptr %ep_list, align 4
  %17 = ptrtoint ptr %prev.i109 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev.i109, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %ep_list, ptr %14, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.i.i, %if.else.do.body_crit_edge, %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_hw_ep.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@init_hw_ep, %do.end)) #9
          to label %if.then43 [label %do.end], !srcloc !176

if.then43:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %21 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name9, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %mep, i32 0, i32 7
  %23 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %23, i32 7)
  %bf.load47 = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load47, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_hw_ep.__UNIQUE_ID_ddebug364, ptr noundef %20, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, ptr noundef %22, i32 noundef %bf.cast) #9
  br label %do.end

do.end:                                           ; preds = %if.then43, %do.body
  %caps52 = getelementptr inbounds %struct.usb_ep, ptr %mep, i32 0, i32 4
  %24 = ptrtoint ptr %caps52 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load53 = load i8, ptr %caps52, align 4
  %. = select i1 %tobool5.not, i8 4, i8 8
  %.sink = select i1 %tobool.not, i8 12, i8 %.
  %bf.set68 = or i8 %bf.load53, %.sink
  store i8 %bf.set68, ptr %caps52, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_gadget_ep_enable(ptr noundef %ep, ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ep, null
  %tobool1.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.do.body_crit_edge, label %lor.lhs.false2

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false2:                                   ; preds = %entry
  %bDescriptorType = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp.not = icmp eq i8 %1, 5
  br i1 %cmp.not, label %if.end9, label %lor.lhs.false2.do.body_crit_edge

lor.lhs.false2.do.body_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false2.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_ep_enable.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_ep_enable, %cleanup)) #9
          to label %if.then8 [label %cleanup], !srcloc !176

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtu3_gadget_ep_enable.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39) #9
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false2
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %2 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %wMaxPacketSize, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool10.not = icmp eq i16 %3, 0
  br i1 %tobool10.not, label %do.body12, label %if.end30

do.body12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_ep_enable.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_ep_enable, %cleanup)) #9
          to label %if.then26 [label %cleanup], !srcloc !176

if.then26:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtu3_gadget_ep_enable.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39) #9
  br label %cleanup

if.end30:                                         ; preds = %if.end9
  %mtu32 = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 2
  %4 = ptrtoint ptr %mtu32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mtu32, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %6 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bEndpointAddress.i, align 1
  %8 = and i8 %7, 15
  %epnum = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 3
  %9 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %epnum, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp35.not = icmp eq i8 %8, %10
  br i1 %cmp35.not, label %if.end38, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool40 = icmp slt i8 %7, 0
  %is_in = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 5
  %11 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool45 = icmp ne i8 %12, 0
  %xor194 = xor i1 %tobool40, %tobool45
  br i1 %xor194, label %if.end38.cleanup_crit_edge, label %do.body53

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body53:                                        ; preds = %if.end38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_ep_enable.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_ep_enable, %do.end70)) #9
          to label %if.then67 [label %do.end70], !srcloc !176

if.then67:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mtu3, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_gadget_ep_enable.__UNIQUE_ID_ddebug348, ptr noundef %14, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.39, ptr noundef %16) #9
  br label %do.end70

do.end70:                                         ; preds = %if.then67, %do.body53
  %flags71 = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 16
  %17 = ptrtoint ptr %flags71 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags71, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool72.not = icmp eq i32 %and, 0
  br i1 %tobool72.not, label %do.body126, label %land.end

land.end:                                         ; preds = %do.end70
  %.b195 = load i1, ptr @mtu3_gadget_ep_enable.__already_done, align 1
  br i1 %.b195, label %land.end.cleanup_crit_edge, label %if.then85, !prof !177

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then85:                                        ; preds = %land.end
  store i1 true, ptr @mtu3_gadget_ep_enable.__already_done, align 1
  %dev98 = getelementptr inbounds %struct.mtu3, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %dev98 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev98, align 8
  %call99 = tail call ptr @dev_driver_string(ptr noundef %20) #9
  %21 = ptrtoint ptr %dev98 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev98, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then85.dev_name.exit_crit_edge

if.then85.dev_name.exit_crit_edge:                ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then85.dev_name.exit_crit_edge
  %retval.0.i206 = phi ptr [ %26, %if.end.i ], [ %24, %if.then85.dev_name.exit_crit_edge ]
  %name102 = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 183, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %call99, ptr noundef %retval.0.i206, ptr noundef %name102) #9
  br label %cleanup

do.body126:                                       ; preds = %do.end70
  %call131 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %desc136 = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 15
  %27 = ptrtoint ptr %desc136 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %desc, ptr %desc136, align 4
  %comp_desc = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 10
  %28 = ptrtoint ptr %comp_desc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %comp_desc, align 4
  %comp_desc137 = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 14
  %30 = ptrtoint ptr %comp_desc137 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %comp_desc137, align 4
  %call138 = tail call fastcc i32 @mtu3_ep_enable(ptr noundef nonnull %ep)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end141, label %do.body126.error_crit_edge

do.body126.error_crit_edge:                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end141:                                        ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %flags71 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %flags71, align 4
  %active_ep = getelementptr inbounds %struct.mtu3, ptr %5, i32 0, i32 14
  %32 = ptrtoint ptr %active_ep to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %active_ep, align 8
  %inc = add i32 %33, 1
  store i32 %inc, ptr %active_ep, align 8
  br label %error

error:                                            ; preds = %if.end141, %do.body126.error_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call131) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_ep_enable.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_ep_enable, %do.end163)) #9
          to label %if.then158 [label %do.end163], !srcloc !176

if.then158:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  %dev159 = getelementptr inbounds %struct.mtu3, ptr %5, i32 0, i32 2
  %34 = ptrtoint ptr %dev159 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev159, align 8
  %active_ep160 = getelementptr inbounds %struct.mtu3, ptr %5, i32 0, i32 14
  %36 = ptrtoint ptr %active_ep160 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %active_ep160, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_gadget_ep_enable.__UNIQUE_ID_ddebug349, ptr noundef %35, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.39, i32 noundef %37) #9
  br label %do.end163

do.end163:                                        ; preds = %if.then158, %error
  tail call fastcc void @trace_mtu3_gadget_ep_enable(ptr noundef nonnull %ep)
  br label %cleanup

cleanup:                                          ; preds = %do.end163, %dev_name.exit, %land.end.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.then26, %do.body12, %if.then8, %do.body
  %retval.0 = phi i32 [ %call138, %do.end163 ], [ -22, %if.then8 ], [ -22, %if.then26 ], [ -22, %if.end30.cleanup_crit_edge ], [ -22, %if.end38.cleanup_crit_edge ], [ 0, %dev_name.exit ], [ 0, %land.end.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_gadget_ep_disable(ptr noundef %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu1 = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtu1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_ep_disable.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_ep_disable, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_gadget_ep_disable.__UNIQUE_ID_ddebug350, ptr noundef %3, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.46, ptr noundef %name) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @trace_mtu3_gadget_ep_disable(ptr noundef %ep)
  %flags6 = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 16
  %4 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags6, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.end11, label %do.body17

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev12 = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev12, align 8
  %name13 = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.47, ptr noundef %name13) #13
  br label %cleanup

do.body17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  tail call fastcc void @mtu3_ep_disable(ptr noundef %ep)
  %8 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %flags6, align 4
  %active_ep = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %active_ep to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %active_ep, align 8
  %dec = add i32 %10, -1
  store i32 %dec, ptr %active_ep, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call20) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_ep_disable.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_ep_disable, %cleanup)) #9
          to label %if.then42 [label %cleanup], !srcloc !176

if.then42:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  %dev43 = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev43, align 8
  %13 = ptrtoint ptr %active_ep to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %active_ep, align 8
  %is_active = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 23
  %15 = ptrtoint ptr %is_active to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %is_active, align 4
  %bf.lshr = lshr i16 %bf.load, 15
  %bf.cast = zext i16 %bf.lshr to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_gadget_ep_disable.__UNIQUE_ID_ddebug351, ptr noundef %12, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.46, i32 noundef %14, i32 noundef %bf.cast) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %do.body17, %do.end11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_gadget_queue(ptr noundef %ep, ptr noundef %req, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu2 = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %mtu2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtu2, align 4
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mep3 = getelementptr inbounds %struct.mtu3_request, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %mep3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mep3, align 4
  %cmp.not = icmp eq ptr %5, %ep
  br i1 %cmp.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_queue.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_queue, %do.end)) #9
          to label %if.then11 [label %do.end], !srcloc !176

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %is_in = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 5
  %8 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  %cond = select i1 %tobool12.not, ptr @.str.53, ptr @.str.52
  %epnum = getelementptr inbounds %struct.mtu3_request, ptr %req, i32 0, i32 5
  %10 = ptrtoint ptr %epnum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %epnum, align 4
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %14 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %14, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_gadget_queue.__UNIQUE_ID_ddebug352, ptr noundef %7, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, ptr noundef nonnull %cond, i32 noundef %11, ptr noundef %13, ptr noundef %req, i32 noundef %bf.cast, i32 noundef %16) #9
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %length14 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %17 = ptrtoint ptr %length14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65532, i32 %18)
  %cmp15 = icmp ugt i32 %18, 65532
  br i1 %cmp15, label %do.end27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %desc = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 15
  %19 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc, align 4
  %tobool38.not = icmp eq ptr %20, null
  br i1 %tobool38.not, label %do.body40, label %if.end60

do.end27:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev28 = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev28, align 8
  %gen2cp29 = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 23
  %23 = ptrtoint ptr %gen2cp29 to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load30 = load i16, ptr %gen2cp29, align 4
  %24 = and i16 %bf.load30, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool34.not = icmp eq i16 %24, 0
  %cond35 = select i1 %tobool34.not, i32 65532, i32 1048572
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.54, i32 noundef %cond35, i32 noundef %18) #13
  br label %cleanup

do.body40:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_queue.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_queue, %cleanup)) #9
          to label %if.then54 [label %cleanup], !srcloc !176

if.then54:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #11
  %dev55 = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev55, align 8
  %name56 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %27 = ptrtoint ptr %name56 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name56, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_gadget_queue.__UNIQUE_ID_ddebug353, ptr noundef %26, ptr noundef nonnull @.str.55, ptr noundef %req, ptr noundef %28) #9
  br label %cleanup

if.end60:                                         ; preds = %lor.lhs.false
  %mtu61 = getelementptr inbounds %struct.mtu3_request, ptr %req, i32 0, i32 3
  %29 = ptrtoint ptr %mtu61 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %1, ptr %mtu61, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %30 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %actual, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %31 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -115, ptr %status, align 4
  %g = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 17
  %is_in64 = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 5
  %32 = ptrtoint ptr %is_in64 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %is_in64, align 2
  %conv65 = zext i8 %33 to i32
  %call66 = tail call i32 @usb_gadget_map_request(ptr noundef %g, ptr noundef %req, i32 noundef %conv65) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %do.body75, label %do.end71

do.end71:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %dev72 = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev72, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.57) #13
  br label %cleanup

do.body75:                                        ; preds = %if.end60
  %call80 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %call85 = tail call i32 @mtu3_prepare_transfer(ptr noundef %ep) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %do.body75.error_crit_edge

do.body75.error_crit_edge:                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end88:                                         ; preds = %do.body75
  %list = getelementptr inbounds %struct.mtu3_request, ptr %req, i32 0, i32 1
  %req_list = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 12, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %37, ptr noundef %req_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end88.list_add_tail.exit_crit_edge

if.end88.list_add_tail.exit_crit_edge:            ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %list, ptr %prev.i, align 4
  %39 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %req_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mtu3_request, ptr %req, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %list, ptr %37, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end88.list_add_tail.exit_crit_edge
  tail call void @mtu3_insert_gpd(ptr noundef %ep, ptr noundef %req) #9
  tail call void @mtu3_qmu_resume(ptr noundef %ep) #9
  br label %error

error:                                            ; preds = %list_add_tail.exit, %do.body75.error_crit_edge
  %ret.0 = phi i32 [ 0, %list_add_tail.exit ], [ -11, %do.body75.error_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call80) #9
  tail call fastcc void @trace_mtu3_gadget_queue(ptr noundef %req)
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end71, %if.then54, %do.body40, %do.end27, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end27 ], [ %call66, %do.end71 ], [ %ret.0, %error ], [ -61, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -108, %if.then54 ], [ -108, %do.body40 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_gadget_dequeue(ptr noundef %ep, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu2 = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %mtu2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtu2, align 4
  %mep3 = getelementptr inbounds %struct.mtu3_request, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %mep3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mep3, align 4
  %cmp.not = icmp eq ptr %3, %ep
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_dequeue.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_dequeue, %do.end)) #9
          to label %if.then8 [label %do.end], !srcloc !176

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_gadget_dequeue.__UNIQUE_ID_ddebug354, ptr noundef %5, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, ptr noundef %req) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  tail call fastcc void @trace_mtu3_gadget_dequeue(ptr noundef %req)
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %req_list = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 12
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %req_list, %do.end ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %r.0 = getelementptr i8, ptr %.pn, i32 -56
  %cmp22.not = icmp eq ptr %.pn, %req_list
  %cmp26 = icmp eq ptr %r.0, %req
  %or.cond = or i1 %cmp22.not, %cmp26
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp26, label %if.end57, label %do.body38

do.body38:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_dequeue.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_dequeue, %done)) #9
          to label %if.then52 [label %done], !srcloc !176

if.then52:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  %dev53 = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev53, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_gadget_dequeue.__UNIQUE_ID_ddebug355, ptr noundef %8, ptr noundef nonnull @.str.61, ptr noundef %req, ptr noundef %10) #9
  br label %done

if.end57:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mtu3_qmu_flush(ptr noundef %ep) #9
  tail call void @mtu3_req_complete(ptr noundef %ep, ptr noundef %req, i32 noundef -104)
  %call58 = tail call i32 @mtu3_qmu_start(ptr noundef %ep) #9
  br label %done

done:                                             ; preds = %if.end57, %if.then52, %do.body38
  %ret.0 = phi i32 [ 0, %if.end57 ], [ -22, %if.then52 ], [ -22, %do.body38 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call15) #9
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_gadget_ep_set_halt(ptr noundef %ep, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu1 = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtu1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_ep_set_halt.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_ep_set_halt, %do.body7)) #9
          to label %if.then [label %do.body7], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_gadget_ep_set_halt.__UNIQUE_ID_ddebug356, ptr noundef %3, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.62, ptr noundef %5) #9
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %type = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp16 = icmp eq i8 %7, 1
  br i1 %cmp16, label %do.body7.done_crit_edge, label %if.end19

do.body7.done_crit_edge:                          ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end19:                                         ; preds = %do.body7
  %req_list.i = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 12
  %8 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %req_list.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool21 = icmp ne i32 %value, 0
  br i1 %tobool21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end19
  %cmp.not.i = icmp eq ptr %9, %req_list.i
  %add.ptr.i = getelementptr i8, ptr %9, i32 -56
  %tobool23.not94 = icmp eq ptr %add.ptr.i, null
  %tobool23.not = or i1 %cmp.not.i, %tobool23.not94
  br i1 %tobool23.not, label %if.then22.do.body48_crit_edge, label %do.body25

if.then22.do.body48_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body48

do.body25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_ep_set_halt.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_ep_set_halt, %done)) #9
          to label %if.then39 [label %done], !srcloc !176

if.then39:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  %dev40 = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev40, align 8
  %name41 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %12 = ptrtoint ptr %name41 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name41, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_gadget_ep_set_halt.__UNIQUE_ID_ddebug357, ptr noundef %11, ptr noundef nonnull @.str.64, ptr noundef %13) #9
  br label %done

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %flags46 = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 16
  %14 = ptrtoint ptr %flags46 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags46, align 4
  %and = and i32 %15, -5
  store i32 %and, ptr %flags46, align 4
  br label %do.body48

do.body48:                                        ; preds = %if.else, %if.then22.do.body48_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_gadget_ep_set_halt.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_gadget_ep_set_halt, %do.end68)) #9
          to label %if.then62 [label %do.end68], !srcloc !176

if.then62:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  %dev63 = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev63, align 8
  %name64 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %18 = ptrtoint ptr %name64 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name64, align 4
  %cond = select i1 %tobool21, ptr @.str.66, ptr @.str.67
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_gadget_ep_set_halt.__UNIQUE_ID_ddebug358, ptr noundef %17, ptr noundef nonnull @.str.65, ptr noundef %19, ptr noundef nonnull %cond) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then62, %do.body48
  tail call void @mtu3_ep_stall_set(ptr noundef %ep, i1 noundef zeroext %tobool21) #9
  br label %done

done:                                             ; preds = %do.end68, %if.then39, %do.body25, %do.body7.done_crit_edge
  %ret.0 = phi i32 [ 0, %do.end68 ], [ -22, %do.body7.done_crit_edge ], [ -11, %if.then39 ], [ -11, %do.body25 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call10) #9
  tail call fastcc void @trace_mtu3_gadget_ep_set_halt(ptr noundef %ep)
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_gadget_ep_set_wedge(ptr noundef %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 16
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 4
  store i32 %or, ptr %flags, align 4
  %call1 = tail call i32 @usb_ep_set_halt(ptr noundef %ep) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtu3_ep_enable(ptr noundef %mep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu1 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 2
  %0 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtu1, align 4
  %desc2 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 15
  %2 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc2, align 4
  %comp_desc3 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 14
  %4 = ptrtoint ptr %comp_desc3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %comp_desc3, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bmAttributes.i, align 1
  %8 = and i8 %7, 3
  %type = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 4
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %type, align 1
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %wMaxPacketSize.i, align 1
  %12 = and i16 %11, -249
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #9
  %maxp = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 6
  %14 = ptrtoint ptr %maxp to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %maxp, align 4
  %speed = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 17, i32 5
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %speed, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %entry.do.body_crit_edge [
    i32 5, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge245
    i32 3, label %sw.bb28
    i32 2, label %sw.bb53
  ]

entry.sw.bb_crit_edge245:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge245
  %18 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bmAttributes.i, align 1
  %trunc244 = trunc i8 %19 to i2
  %20 = zext i2 %trunc244 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.68)
  switch i2 %trunc244, label %sw.bb.if.end23_crit_edge [
    i2 -1, label %sw.bb.if.then_crit_edge
    i2 1, label %sw.bb.if.then_crit_edge246
  ]

sw.bb.if.then_crit_edge246:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb.if.end23_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then:                                          ; preds = %sw.bb.if.then_crit_edge, %sw.bb.if.then_crit_edge246
  %21 = and i8 %19, 3
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bInterval, align 1
  %24 = tail call i8 @llvm.umax.i8(i8 %23, i8 1)
  %25 = tail call i8 @llvm.umin.i8(i8 %24, i8 16)
  %26 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp.i219 = icmp ne i8 %21, 1
  %tobool20.not = icmp eq ptr %5, null
  %or.cond = select i1 %cmp.i219, i1 true, i1 %tobool20.not
  br i1 %or.cond, label %if.then.if.end23_crit_edge, label %if.end23.thread

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end23.thread:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %bmAttributes = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %5, i32 0, i32 3
  %27 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bmAttributes, align 1
  %conv22 = zext i8 %28 to i32
  br label %if.then25

if.end23:                                         ; preds = %if.then.if.end23_crit_edge, %sw.bb.if.end23_crit_edge
  %interval.0 = phi i32 [ %26, %if.then.if.end23_crit_edge ], [ 0, %sw.bb.if.end23_crit_edge ]
  %tobool24.not = icmp eq ptr %5, null
  br i1 %tobool24.not, label %if.end23.do.body_crit_edge, label %if.end23.if.then25_crit_edge

if.end23.if.then25_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.end23.do.body_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then25:                                        ; preds = %if.end23.if.then25_crit_edge, %if.end23.thread
  %interval.0241 = phi i32 [ %26, %if.end23.thread ], [ %interval.0, %if.end23.if.then25_crit_edge ]
  %mult.0240 = phi i32 [ %conv22, %if.end23.thread ], [ 0, %if.end23.if.then25_crit_edge ]
  %bMaxBurst = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %5, i32 0, i32 2
  %29 = ptrtoint ptr %bMaxBurst to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bMaxBurst, align 1
  %conv26 = zext i8 %30 to i32
  br label %do.body

sw.bb28:                                          ; preds = %entry
  %31 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bmAttributes.i, align 1
  %trunc243 = trunc i8 %32 to i2
  %33 = zext i2 %trunc243 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.69)
  switch i2 %trunc243, label %sw.bb28.do.body_crit_edge [
    i2 1, label %sw.bb28.if.then34_crit_edge
    i2 -1, label %sw.bb28.if.then34_crit_edge247
  ]

sw.bb28.if.then34_crit_edge247:                   ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

sw.bb28.if.then34_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

sw.bb28.do.body_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then34:                                        ; preds = %sw.bb28.if.then34_crit_edge, %sw.bb28.if.then34_crit_edge247
  %bInterval35 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 5
  %34 = ptrtoint ptr %bInterval35 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bInterval35, align 1
  %36 = tail call i8 @llvm.umax.i8(i8 %35, i8 1)
  %37 = tail call i8 @llvm.umin.i8(i8 %36, i8 16)
  %38 = zext i8 %37 to i32
  %39 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %wMaxPacketSize.i, align 1
  %41 = lshr i16 %40, 3
  %42 = and i16 %41, 3
  %sub = zext i16 %42 to i32
  br label %do.body

sw.bb53:                                          ; preds = %entry
  %43 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bmAttributes.i, align 1
  %trunc = trunc i8 %44 to i2
  %45 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.70)
  switch i2 %trunc, label %sw.bb53.do.body_crit_edge [
    i2 1, label %if.then56
    i2 -1, label %if.then83
  ]

sw.bb53.do.body_crit_edge:                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then56:                                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #11
  %bInterval57 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 5
  %46 = ptrtoint ptr %bInterval57 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bInterval57, align 1
  %48 = tail call i8 @llvm.umax.i8(i8 %47, i8 1)
  %49 = tail call i8 @llvm.umin.i8(i8 %48, i8 16)
  %50 = zext i8 %49 to i32
  br label %do.body

if.then83:                                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #11
  %bInterval84 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 5
  %51 = ptrtoint ptr %bInterval84 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bInterval84, align 1
  %53 = tail call i8 @llvm.umax.i8(i8 %52, i8 1)
  %cond95 = zext i8 %53 to i32
  br label %do.body

do.body:                                          ; preds = %if.then83, %if.then56, %sw.bb53.do.body_crit_edge, %if.then34, %sw.bb28.do.body_crit_edge, %if.then25, %if.end23.do.body_crit_edge, %entry.do.body_crit_edge
  %burst.0 = phi i32 [ 0, %entry.do.body_crit_edge ], [ 0, %if.then56 ], [ 0, %if.then83 ], [ 0, %if.then34 ], [ %conv26, %if.then25 ], [ 0, %if.end23.do.body_crit_edge ], [ 0, %sw.bb28.do.body_crit_edge ], [ 0, %sw.bb53.do.body_crit_edge ]
  %mult.1 = phi i32 [ 0, %entry.do.body_crit_edge ], [ 0, %if.then56 ], [ 0, %if.then83 ], [ %sub, %if.then34 ], [ %mult.0240, %if.then25 ], [ 0, %if.end23.do.body_crit_edge ], [ 0, %sw.bb28.do.body_crit_edge ], [ 0, %sw.bb53.do.body_crit_edge ]
  %interval.1 = phi i32 [ 0, %entry.do.body_crit_edge ], [ %50, %if.then56 ], [ %cond95, %if.then83 ], [ %38, %if.then34 ], [ %interval.0241, %if.then25 ], [ %interval.0, %if.end23.do.body_crit_edge ], [ 0, %sw.bb28.do.body_crit_edge ], [ 0, %sw.bb53.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_ep_enable.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_ep_enable, %do.end)) #9
          to label %if.then116 [label %do.end], !srcloc !176

if.then116:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 8
  %56 = ptrtoint ptr %maxp to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %maxp, align 4
  %conv118 = zext i16 %57 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_ep_enable.__UNIQUE_ID_ddebug345, ptr noundef %55, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.44, i32 noundef %conv118, i32 noundef %interval.1, i32 noundef %burst.0, i32 noundef %mult.1) #9
  br label %do.end

do.end:                                           ; preds = %if.then116, %do.body
  %58 = ptrtoint ptr %maxp to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %maxp, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %mep, i32 0, i32 7
  %60 = zext i16 %59 to i56
  %61 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %61, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.shl = shl nuw i56 %60, 40
  %bf.clear = and i56 %bf.load, 1099511627775
  %bf.set = or i56 %bf.clear, %bf.shl
  store i56 %bf.set, ptr %maxpacket, align 2
  %desc123 = getelementptr inbounds %struct.usb_ep, ptr %mep, i32 0, i32 9
  %62 = ptrtoint ptr %desc123 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %3, ptr %desc123, align 4
  %comp_desc125 = getelementptr inbounds %struct.usb_ep, ptr %mep, i32 0, i32 10
  %63 = ptrtoint ptr %comp_desc125 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %5, ptr %comp_desc125, align 4
  %64 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bmAttributes.i, align 1
  %66 = and i8 %65, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %66)
  %cmp.i235.not = icmp eq i8 %66, 3
  br i1 %cmp.i235.not, label %do.end.cond.end130_crit_edge, label %cond.false129

do.end.cond.end130_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end130

cond.false129:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %slot = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 13
  %67 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %slot, align 4
  br label %cond.end130

cond.end130:                                      ; preds = %cond.false129, %do.end.cond.end130_crit_edge
  %cond131 = phi i32 [ %68, %cond.false129 ], [ 0, %do.end.cond.end130_crit_edge ]
  %slot132 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 7
  %69 = ptrtoint ptr %slot132 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %cond131, ptr %slot132, align 4
  %call133 = tail call i32 @mtu3_config_ep(ptr noundef %1, ptr noundef %mep, i32 noundef %interval.1, i32 noundef %burst.0, i32 noundef %mult.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %cond.end130.cleanup_crit_edge, label %if.end137

cond.end130.cleanup_crit_edge:                    ; preds = %cond.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end137:                                        ; preds = %cond.end130
  %call138 = tail call i32 @mtu3_gpd_ring_alloc(ptr noundef %mep) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %cmp139 = icmp slt i32 %call138, 0
  br i1 %cmp139, label %if.then141, label %if.end142

if.then141:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mtu3_deconfig_ep(ptr noundef %1, ptr noundef %mep) #9
  br label %cleanup

if.end142:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  %call143 = tail call i32 @mtu3_qmu_start(ptr noundef %mep) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end142, %if.then141, %cond.end130.cleanup_crit_edge
  %retval.0 = phi i32 [ %call138, %if.then141 ], [ 0, %if.end142 ], [ %call133, %cond.end130.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mtu3_gadget_ep_enable(ptr noundef %mep) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_gadget_ep_enable, i32 0, i32 1), ptr blockaddress(@trace_mtu3_gadget_ep_enable, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !177

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !193
  %call42 = tail call i32 @__traceiter_mtu3_gadget_ep_enable(ptr noundef null, ptr noundef %mep) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !194
  %13 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !177

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_gadget_ep_enable, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_gadget_ep_enable, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mtu3_gadget_ep_enable.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_mtu3_gadget_ep_enable.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 257, ptr noundef nonnull @.str.13) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %31 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
declare dso_local i32 @mtu3_config_ep(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtu3_gpd_ring_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_deconfig_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtu3_qmu_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mtu3_gadget_ep_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mtu3_gadget_ep_disable(ptr noundef %mep) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_gadget_ep_disable, i32 0, i32 1), ptr blockaddress(@trace_mtu3_gadget_ep_disable, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !177

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !195
  %call42 = tail call i32 @__traceiter_mtu3_gadget_ep_disable(ptr noundef null, ptr noundef %mep) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !196
  %13 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !177

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_gadget_ep_disable, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_gadget_ep_disable, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mtu3_gadget_ep_disable.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_mtu3_gadget_ep_disable.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 262, ptr noundef nonnull @.str.13) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %31 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtu3_ep_disable(ptr noundef %mep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu1 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 2
  %0 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtu1, align 4
  tail call void @mtu3_qmu_stop(ptr noundef %mep) #9
  %req_list.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 12
  %2 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %req_list.i
  br i1 %cmp.i.not.i, label %entry.nuke.exit_crit_edge, label %do.body.i

entry.nuke.exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nuke.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_ep_disable, %do.end.i)) #9
          to label %if.then6.i [label %do.end.i], !srcloc !176

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mtu1, align 4
  %dev.i = getelementptr inbounds %struct.mtu3, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nuke.__UNIQUE_ID_ddebug328, ptr noundef %7, ptr noundef nonnull @.str.30, ptr noundef %name.i, i32 noundef -108) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %epnum.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 3
  %8 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %epnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not.i = icmp eq i8 %9, 0
  br i1 %tobool8.not.i, label %do.end.i.if.end10.i_crit_edge, label %if.then9.i

do.end.i.if.end10.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then9.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mtu3_qmu_flush(ptr noundef %mep) #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %do.end.i.if.end10.i_crit_edge
  %10 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.i1.not4.i = icmp eq ptr %11, %req_list.i
  br i1 %cmp.i1.not4.i, label %if.end10.i.nuke.exit_crit_edge, label %if.end10.i.while.body.i_crit_edge

if.end10.i.while.body.i_crit_edge:                ; preds = %if.end10.i
  br label %while.body.i

if.end10.i.nuke.exit_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end10.i.while.body.i_crit_edge
  %12 = phi ptr [ %14, %while.body.i.while.body.i_crit_edge ], [ %11, %if.end10.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %12, i32 -56
  tail call void @mtu3_req_complete(ptr noundef %mep, ptr noundef %add.ptr.i, i32 noundef -108) #9
  %13 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.i1.not.i = icmp eq ptr %14, %req_list.i
  br i1 %cmp.i1.not.i, label %while.body.i.nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.nuke.exit_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

nuke.exit:                                        ; preds = %while.body.i.nuke.exit_crit_edge, %if.end10.i.nuke.exit_crit_edge, %entry.nuke.exit_crit_edge
  tail call void @mtu3_deconfig_ep(ptr noundef %1, ptr noundef %mep) #9
  tail call void @mtu3_gpd_ring_free(ptr noundef %mep) #9
  %desc = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 15
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %desc, align 4
  %desc2 = getelementptr inbounds %struct.usb_ep, ptr %mep, i32 0, i32 9
  %16 = ptrtoint ptr %desc2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %desc2, align 4
  %comp_desc = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 14
  %17 = ptrtoint ptr %comp_desc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %comp_desc, align 4
  %type = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 4
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %type, align 1
  %flags = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 16
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %flags, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mtu3_gadget_ep_disable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_qmu_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_gpd_ring_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtu3_prepare_transfer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_insert_gpd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_qmu_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mtu3_gadget_queue(ptr noundef %req) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_gadget_queue, i32 0, i32 1), ptr blockaddress(@trace_mtu3_gadget_queue, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !177

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !197
  %call42 = tail call i32 @__traceiter_mtu3_gadget_queue(ptr noundef null, ptr noundef %req) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !198
  %13 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !177

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_gadget_queue, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_gadget_queue, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mtu3_gadget_queue.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_mtu3_gadget_queue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 163, ptr noundef nonnull @.str.13) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %31 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
declare dso_local i32 @__traceiter_mtu3_gadget_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mtu3_gadget_dequeue(ptr noundef %req) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_gadget_dequeue, i32 0, i32 1), ptr blockaddress(@trace_mtu3_gadget_dequeue, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !177

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !199
  %call42 = tail call i32 @__traceiter_mtu3_gadget_dequeue(ptr noundef null, ptr noundef %req) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !200
  %13 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !177

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_gadget_dequeue, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_gadget_dequeue, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mtu3_gadget_dequeue.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_mtu3_gadget_dequeue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 168, ptr noundef nonnull @.str.13) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %31 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
declare dso_local i32 @__traceiter_mtu3_gadget_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_ep_stall_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mtu3_gadget_ep_set_halt(ptr noundef %mep) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_gadget_ep_set_halt, i32 0, i32 1), ptr blockaddress(@trace_mtu3_gadget_ep_set_halt, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !177

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !201
  %call42 = tail call i32 @__traceiter_mtu3_gadget_ep_set_halt(ptr noundef null, ptr noundef %mep) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !202
  %13 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !177

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_gadget_ep_set_halt, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_gadget_ep_set_halt, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mtu3_gadget_ep_set_halt.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_mtu3_gadget_ep_set_halt.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 267, ptr noundef nonnull @.str.13) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %31 = tail call i32 @llvm.read_register.i32(metadata !166) #9
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
declare dso_local i32 @__traceiter_mtu3_gadget_ep_set_halt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !33, !35, !36, !38, !40, !41, !42, !44, !45, !46, !47, !48, !49, !50, !52, !53, !54, !55, !56, !57, !59, !60, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !81, !82, !83, !85, !87, !88, !89, !91, !92, !94, !96, !97, !99, !100, !102, !103, !104, !106, !107, !109, !110, !112, !113, !114, !115, !117, !118, !120, !121, !123, !124, !125, !126, !127, !129, !130, !131, !133, !134, !136, !137, !138, !140, !141, !143, !144, !145, !147, !148, !150, !151, !153, !154, !155, !157, !158, !160, !161, !162, !163, !165}
!llvm.named.register.sp = !{!166}
!llvm.module.flags = !{!167, !168, !169, !170, !171, !172, !173, !174}
!llvm.ident = !{!175}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 32, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mtu3_req_complete.__UNIQUE_ID_ddebug327, !1, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 698, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mtu3_gadget_resume.__UNIQUE_ID_ddebug366, !7, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 709, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mtu3_gadget_suspend.__UNIQUE_ID_ddebug367, !11, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 720, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mtu3_gadget_disconnect.__UNIQUE_ID_ddebug368, !15, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 733, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mtu3_gadget_reset.__UNIQUE_ID_ddebug369, !19, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/usb/mtu3/mtu3_trace.h", i32 170, i32 1}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!26 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/usb/mtu3/mtu3_trace.h", i32 150, i32 1}
!32 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/usb/mtu3/mtu3_trace.h", i32 155, i32 1}
!35 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!36 = !{ptr @mtu3_gadget_ops, !37, !"mtu3_gadget_ops", i1 false, i1 false}
!37 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 595, i32 36}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 441, i32 2}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mtu3_gadget_wakeup.__UNIQUE_ID_ddebug359, !39, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 475, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mtu3_gadget_pullup.__UNIQUE_ID_ddebug360, !43, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!46 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 505, i32 3}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mtu3_gadget_start._entry, !51, !"_entry", i1 false, i1 false}
!56 = !{ptr @mtu3_gadget_start._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 510, i32 2}
!59 = !{ptr @mtu3_gadget_start.__UNIQUE_ID_ddebug361, !58, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 566, i32 2}
!62 = !{ptr @mtu3_gadget_stop.__UNIQUE_ID_ddebug362, !61, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 46, i32 2}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @nuke.__UNIQUE_ID_ddebug328, !64, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 588, i32 2}
!69 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @mtu3_gadget_set_speed.__UNIQUE_ID_ddebug363, !68, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 666, i32 2}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @mtu3_gadget_init_eps.__UNIQUE_ID_ddebug365, !72, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 625, i32 21}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 626, i32 33}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 646, i32 2}
!81 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @init_hw_ep.__UNIQUE_ID_ddebug364, !80, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!83 = !{ptr @mtu3_ep_ops, !84, !"mtu3_ep_ops", i1 false, i1 false}
!84 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 418, i32 32}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 161, i32 3}
!87 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @mtu3_gadget_ep_enable.__UNIQUE_ID_ddebug346, !86, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 166, i32 3}
!91 = !{ptr @mtu3_gadget_ep_enable.__UNIQUE_ID_ddebug347, !90, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!92 = !{ptr @mtu3_gadget_ep_enable.__UNIQUE_ID_ddebug348, !93, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!93 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 179, i32 2}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 182, i32 3}
!96 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 201, i32 2}
!99 = !{ptr @mtu3_gadget_ep_enable.__UNIQUE_ID_ddebug349, !98, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 107, i32 2}
!102 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @mtu3_ep_enable.__UNIQUE_ID_ddebug345, !101, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../drivers/usb/mtu3/mtu3_trace.h", i32 254, i32 1}
!106 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 213, i32 2}
!109 = !{ptr @mtu3_gadget_ep_disable.__UNIQUE_ID_ddebug350, !108, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 217, i32 3}
!112 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @mtu3_gadget_ep_disable._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @mtu3_gadget_ep_disable._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 227, i32 2}
!117 = !{ptr @mtu3_gadget_ep_disable.__UNIQUE_ID_ddebug351, !116, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../drivers/usb/mtu3/mtu3_trace.h", i32 259, i32 1}
!120 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!121 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 274, i32 2}
!123 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @mtu3_gadget_queue.__UNIQUE_ID_ddebug352, !122, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!125 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 280, i32 3}
!129 = !{ptr @mtu3_gadget_queue._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @mtu3_gadget_queue._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 289, i32 3}
!133 = !{ptr @mtu3_gadget_queue.__UNIQUE_ID_ddebug353, !132, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 300, i32 3}
!136 = !{ptr @mtu3_gadget_queue._entry.56, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @mtu3_gadget_queue._entry_ptr.58, !135, !"_entry_ptr", i1 false, i1 false}
!138 = distinct !{null, !139, !"__already_done", i1 false, i1 false}
!139 = !{!"../drivers/usb/mtu3/mtu3_trace.h", i32 160, i32 1}
!140 = distinct !{null, !139, !"__warned", i1 false, i1 false}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 334, i32 2}
!143 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @mtu3_gadget_dequeue.__UNIQUE_ID_ddebug354, !142, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 344, i32 3}
!147 = !{ptr @mtu3_gadget_dequeue.__UNIQUE_ID_ddebug355, !146, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!148 = distinct !{null, !149, !"__already_done", i1 false, i1 false}
!149 = !{!"../drivers/usb/mtu3/mtu3_trace.h", i32 165, i32 1}
!150 = distinct !{null, !149, !"__warned", i1 false, i1 false}
!151 = !{ptr @.str.62, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 371, i32 2}
!153 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @mtu3_gadget_ep_set_halt.__UNIQUE_ID_ddebug356, !152, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!155 = !{ptr @.str.64, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 388, i32 4}
!157 = !{ptr @mtu3_gadget_ep_set_halt.__UNIQUE_ID_ddebug357, !156, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!158 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/mtu3/mtu3_gadget.c", i32 397, i32 2}
!160 = !{ptr @mtu3_gadget_ep_set_halt.__UNIQUE_ID_ddebug358, !159, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!161 = !{ptr @.str.66, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!163 = distinct !{null, !164, !"__already_done", i1 false, i1 false}
!164 = !{!"../drivers/usb/mtu3/mtu3_trace.h", i32 264, i32 1}
!165 = distinct !{null, !164, !"__warned", i1 false, i1 false}
!166 = !{!"sp"}
!167 = !{i32 1, !"wchar_size", i32 2}
!168 = !{i32 1, !"min_enum_size", i32 4}
!169 = !{i32 8, !"branch-target-enforcement", i32 0}
!170 = !{i32 8, !"sign-return-address", i32 0}
!171 = !{i32 8, !"sign-return-address-all", i32 0}
!172 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!173 = !{i32 7, !"uwtable", i32 1}
!174 = !{i32 7, !"frame-pointer", i32 2}
!175 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!176 = !{i64 2148749724, i64 2148749729, i64 2148749742, i64 2148749786, i64 2148749820, i64 2148749841}
!177 = !{!"branch_weights", i32 2000, i32 1}
!178 = !{i64 2155571138}
!179 = !{i64 2155571341}
!180 = !{i64 2149325810}
!181 = !{i64 2149326846}
!182 = !{i64 2155501823}
!183 = !{i64 2155502028}
!184 = !{i64 2155522192}
!185 = !{i64 2155522395}
!186 = !{i64 6257508}
!187 = !{i64 2155340708}
!188 = !{i64 2155341311}
!189 = !{i64 2155341523}
!190 = !{i64 6257090}
!191 = !{i64 2155342321}
!192 = !{i64 2155342534}
!193 = !{i64 2155641136}
!194 = !{i64 2155641347}
!195 = !{i64 2155661777}
!196 = !{i64 2155661990}
!197 = !{i64 2155538446}
!198 = !{i64 2155538649}
!199 = !{i64 2155554776}
!200 = !{i64 2155554983}
!201 = !{i64 2155678449}
!202 = !{i64 2155678664}
