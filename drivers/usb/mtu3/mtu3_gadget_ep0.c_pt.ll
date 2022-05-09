; ModuleID = '/llk/IR_all_yes/drivers/usb/mtu3/mtu3_gadget_ep0.c_pt.bc'
source_filename = "../drivers/usb/mtu3/mtu3_gadget_ep0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.list_head = type { ptr, ptr }
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
%struct.mtu3_ep = type { %struct.usb_ep, [12 x i8], ptr, i8, i8, i8, i16, i32, i32, i32, i32, ptr, %struct.list_head, %struct.mtu3_gpd_ring, ptr, ptr, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.mtu3_gpd_ring = type { i32, ptr, ptr, ptr, ptr }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@mtu3_ep0_isr.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -77, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mtu3\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mtu3_ep0_isr\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/usb/mtu3/mtu3_gadget_ep0.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s csr=0x%x\0A\00", [19 x i8] zeroinitializer }, align 32
@mtu3_ep0_isr.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -75, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ep0_state: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ep0_state %s\00", [19 x i8] zeroinitializer }, align 32
@mtu3_ep0_isr.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -68, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@mtu3_ep0_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 763, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SETUP packet len %d != 8 ?\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtu3_ep0_isr._entry_ptr = internal global ptr @mtu3_ep0_isr._entry, section ".printk_index", align 4
@mtu3_ep0_ops = dso_local constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @mtu3_ep0_enable, ptr @mtu3_ep0_disable, ptr null, ptr @mtu3_alloc_request, ptr @mtu3_free_request, ptr @mtu3_ep0_queue, ptr @mtu3_ep0_dequeue, ptr @mtu3_ep0_halt, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ep0_stall_set.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 38, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ep0_stall_set\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ep0: %s STALL, ep0_state: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SEND\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CLEAR\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SETUP\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IN\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OUT\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TX-END\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"STALL\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"??\00", [29 x i8] zeroinitializer }, align 32
@ep0_tx_state.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 -113, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ep0_tx_state\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@ep0_tx_state.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.21, i8 0, i8 -110, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s act=%d, len=%d, cnt=%d, maxp=%d zero=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@ep0_tx_state.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.22, i8 0, i8 -106, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s ep0csr=0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@ep0_write_fifo.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 21, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ep0_write_fifo\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: ep%din, len=%d, buf=%p\0A\00", [36 x i8] zeroinitializer }, align 32
@ep0_rx_state.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.20, i8 0, i8 -127, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ep0_rx_state\00", [19 x i8] zeroinitializer }, align 32
@ep0_rx_state.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -121, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ep0 state: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@ep0_rx_state.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.27, i8 0, i8 -119, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: SENDSTALL\0A\00", [17 x i8] zeroinitializer }, align 32
@ep0_read_fifo.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 26, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ep0_read_fifo\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: ep%dout len=%d buf=%p\0A\00", [37 x i8] zeroinitializer }, align 32
@ep0_handle_setup.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 -93, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ep0_handle_setup\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"handled %d, ep0_state: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@ep0_handle_setup.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.32, i8 0, i8 -91, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s stall (%d)\0A\00", [17 x i8] zeroinitializer }, align 32
@ep0_read_setup.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 -102, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ep0_read_setup\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"SETUP req%02x.%02x v%04x i%04x l%04x\0A\00", [58 x i8] zeroinitializer }, align 32
@__tracepoint_mtu3_handle_setup = external dso_local global %struct.tracepoint, align 4
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/mtu3/mtu3_trace.h\00", [34 x i8] zeroinitializer }, align 32
@trace_mtu3_handle_setup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@handle_standard_request.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 114, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"handle_standard_request\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set address to 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@handle_test_mode.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 70, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"handle_test_mode\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"USB_TEST_J\0A\00", [20 x i8] zeroinitializer }, align 32
@handle_test_mode.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.42, i8 0, i8 71, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"USB_TEST_K\0A\00", [20 x i8] zeroinitializer }, align 32
@handle_test_mode.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.43, i8 0, i8 72, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"USB_TEST_SE0_NAK\0A\00", [46 x i8] zeroinitializer }, align 32
@handle_test_mode.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.44, i8 0, i8 73, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"USB_TEST_PACKET\0A\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mtu3_test_packet = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\00\00\00\00\00\00\00\00\00\AA\AA\AA\AA\AA\AA\AA\AA\EE\EE\EE\EE\EE\EE\EE\EE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\7F\BF\DF\EF\F7\FB\FD\FC~\BF\DF\EF\F7\FB\FD~", [43 x i8] zeroinitializer }, align 32
@ep0_get_status.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 56, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ep0_get_status\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s result=%x, U1=%x, U2=%x\0A\00", [36 x i8] zeroinitializer }, align 32
@ep0_get_status.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.47, i8 0, i8 65, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"get_status=%x\0A\00", [17 x i8] zeroinitializer }, align 32
@ep0_queue.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 -56, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ep0_queue\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s %s (ep0_state: %s), len#%d\0A\00", [33 x i8] zeroinitializer }, align 32
@ep0_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 812, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s, error in ep0 state %s\0A\00", [37 x i8] zeroinitializer }, align 32
@ep0_queue._entry_ptr = internal global ptr @ep0_queue._entry, section ".printk_index", align 4
@ep0_set_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 192, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s wrong wLength:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ep0_set_sel\00", [20 x i8] zeroinitializer }, align 32
@ep0_set_sel._entry_ptr = internal global ptr @ep0_set_sel._entry, section ".printk_index", align 4
@ep0_set_sel_complete.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 45, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ep0_set_sel_complete\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"u1sel:%d, u1pel:%d, u2sel:%d, u2pel:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@forward_to_driver.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 0, i8 19, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"forward_to_driver\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s ret %d\0A\00", [21 x i8] zeroinitializer }, align 32
@mtu3_ep0_halt.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.20, i8 0, i8 -37, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtu3_ep0_halt\00", [18 x i8] zeroinitializer }, align 32
@mtu3_ep0_halt.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 -32, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ep0 can't halt in state %s\0A\00", [36 x i8] zeroinitializer }, align 32
@switch.table.mtu3_ep0_isr = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [44 x i8] zeroinitializer }, align 32
@switch.table.mtu3_ep0_isr.59 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [44 x i8] zeroinitializer }, align 32
@switch.table.mtu3_ep0_isr.60 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [44 x i8] zeroinitializer }, align 32
@switch.table.mtu3_ep0_isr.61 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [44 x i8] zeroinitializer }, align 32
@switch.table.mtu3_ep0_isr.62 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [44 x i8] zeroinitializer }, align 32
@switch.table.ep0_stall_set = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [44 x i8] zeroinitializer }, align 32
@switch.table.ep0_rx_state = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [44 x i8] zeroinitializer }, align 32
@switch.table.ep0_handle_setup = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [44 x i8] zeroinitializer }, align 32
@switch.table.mtu3_ep0_halt = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [44 x i8] zeroinitializer }, align 32
@switch.table.mtu3_ep0_halt.63 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [44 x i8] zeroinitializer }, align 32
@switch.table.ep0_queue = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.64 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 3, i64 5, i64 9, i64 48, i64 49]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 2, i64 48, i64 49]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 719, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 727, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 728, i32 27 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 763, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant [13 x i8] c"mtu3_ep0_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 908, i32 25 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 152, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 43, i32 10 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 45, i32 10 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 47, i32 10 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 49, i32 10 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 51, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 53, i32 10 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 572, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 586, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 599, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 85, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 518, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 542, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 551, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 106, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 651, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 662, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 614, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [33 x i8] c"../drivers/usb/mtu3/mtu3_trace.h\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 113, i32 1 }
@___asan_gen_.188 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 108, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 456, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 282, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 286, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 290, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 294, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"mtu3_test_packet\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 21, i32 17 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 224, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 261, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 802, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 811, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 191, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 180, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 76, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 877, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.260 = private constant [38 x i8] c"../drivers/usb/mtu3/mtu3_gadget_ep0.c\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 898, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [26 x i8] c"switch.table.mtu3_ep0_isr\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [29 x i8] c"switch.table.mtu3_ep0_isr.59\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [29 x i8] c"switch.table.mtu3_ep0_isr.60\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [29 x i8] c"switch.table.mtu3_ep0_isr.61\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [29 x i8] c"switch.table.mtu3_ep0_isr.62\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [27 x i8] c"switch.table.ep0_stall_set\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [26 x i8] c"switch.table.ep0_rx_state\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [30 x i8] c"switch.table.ep0_handle_setup\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [27 x i8] c"switch.table.mtu3_ep0_halt\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [30 x i8] c"switch.table.mtu3_ep0_halt.63\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [23 x i8] c"switch.table.ep0_queue\00", align 1
@llvm.compiler.used = appending global [78 x ptr] [ptr @ep0_queue._entry, ptr @ep0_queue._entry_ptr, ptr @ep0_set_sel._entry, ptr @ep0_set_sel._entry_ptr, ptr @mtu3_ep0_isr._entry, ptr @mtu3_ep0_isr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mtu3_ep0_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @mtu3_test_packet, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @switch.table.mtu3_ep0_isr, ptr @switch.table.mtu3_ep0_isr.59, ptr @switch.table.mtu3_ep0_isr.60, ptr @switch.table.mtu3_ep0_isr.61, ptr @switch.table.mtu3_ep0_isr.62, ptr @switch.table.ep0_stall_set, ptr @switch.table.ep0_rx_state, ptr @switch.table.ep0_handle_setup, ptr @switch.table.mtu3_ep0_halt, ptr @switch.table.mtu3_ep0_halt.63, ptr @switch.table.ep0_queue], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_ep0_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_ep0_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_test_packet to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_set_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtu3_ep0_isr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtu3_ep0_isr.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtu3_ep0_isr.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtu3_ep0_isr.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtu3_ep0_isr.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ep0_stall_set to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ep0_rx_state to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ep0_handle_setup to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtu3_ep0_halt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtu3_ep0_halt.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ep0_queue to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtu3_ep0_isr(ptr noundef %mtu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %0 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 128
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %add.ptr.i165 = getelementptr i8, ptr %1, i32 132
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i165) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %4 = and i32 %3, %2
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !151
  %and2 = and i32 %5, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ep0_state = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 16
  %6 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %ep0_state, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %add.ptr.i167 = getelementptr i8, ptr %1, i32 256
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i167) #8, !srcloc !148
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_ep0_isr.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_ep0_isr, %do.end)) #8
          to label %if.then13 [label %do.end], !srcloc !152

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_ep0_isr.__UNIQUE_ID_ddebug350, ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %8) #8
  br label %do.end

do.end:                                           ; preds = %if.then13, %if.end6
  %and15 = and i32 %8, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.end.do.body20_crit_edge, label %if.then17

do.end.do.body20_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

if.then17:                                        ; preds = %do.end
  %ep0 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 11
  %11 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ep0, align 4
  %mtu1.i = getelementptr inbounds %struct.mtu3_ep, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %mtu1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mtu1.i, align 4
  %mac_base.i = getelementptr inbounds %struct.mtu3, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %mac_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mac_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 256
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %18 = and i32 %17, -17155
  %19 = or i32 %18, 16384
  %20 = ptrtoint ptr %mac_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %add.ptr.i24.i = getelementptr i8, ptr %21, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %19) #8, !srcloc !151
  %delayed_status.i = getelementptr inbounds %struct.mtu3, ptr %14, i32 0, i32 23
  %22 = ptrtoint ptr %delayed_status.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i = load i16, ptr %delayed_status.i, align 4
  %bf.clear.i = and i16 %bf.load.i, -129
  store i16 %bf.clear.i, ptr %delayed_status.i, align 4
  %ep0_state.i = getelementptr inbounds %struct.mtu3, ptr %14, i32 0, i32 16
  %23 = ptrtoint ptr %ep0_state.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %ep0_state.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_stall_set.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_ep0_isr, %ep0_stall_set.exit)) #8
          to label %if.then12.i [label %ep0_stall_set.exit], !srcloc !152

if.then12.i:                                      ; preds = %if.then17
  %dev.i = getelementptr inbounds %struct.mtu3, ptr %14, i32 0, i32 2
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 8
  %26 = ptrtoint ptr %ep0_state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ep0_state.i, align 8
  %switch.tableidx = add i32 %27, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %28 = icmp ult i32 %switch.tableidx, 5
  br i1 %28, label %switch.lookup, label %if.then12.i.decode_ep0_state.exit.i_crit_edge

if.then12.i.decode_ep0_state.exit.i_crit_edge:    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %decode_ep0_state.exit.i

switch.lookup:                                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.mtu3_ep0_isr, i32 0, i32 %switch.tableidx
  %29 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %decode_ep0_state.exit.i

decode_ep0_state.exit.i:                          ; preds = %switch.lookup, %if.then12.i.decode_ep0_state.exit.i_crit_edge
  %retval.0.i25.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.18, %if.then12.i.decode_ep0_state.exit.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_stall_set.__UNIQUE_ID_ddebug330, ptr noundef %25, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12, ptr noundef nonnull %retval.0.i25.i) #8
  br label %ep0_stall_set.exit

ep0_stall_set.exit:                               ; preds = %decode_ep0_state.exit.i, %if.then17
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i167) #8, !srcloc !148
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  br label %do.body20

do.body20:                                        ; preds = %ep0_stall_set.exit, %do.end.do.body20_crit_edge
  %csr.0 = phi i32 [ %31, %ep0_stall_set.exit ], [ %8, %do.end.do.body20_crit_edge ]
  %ret.0 = phi i32 [ 1, %ep0_stall_set.exit ], [ 0, %do.end.do.body20_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_ep0_isr.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_ep0_isr, %do.end39)) #8
          to label %if.then34 [label %do.end39], !srcloc !152

if.then34:                                        ; preds = %do.body20
  %dev35 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %32 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev35, align 8
  %ep0_state.i169 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 16
  %34 = ptrtoint ptr %ep0_state.i169 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ep0_state.i169, align 8
  %switch.tableidx215 = add i32 %35, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx215)
  %36 = icmp ult i32 %switch.tableidx215, 5
  br i1 %36, label %switch.lookup214, label %if.then34.decode_ep0_state.exit_crit_edge

if.then34.decode_ep0_state.exit_crit_edge:        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %decode_ep0_state.exit

switch.lookup214:                                 ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep216 = getelementptr inbounds [5 x ptr], ptr @switch.table.mtu3_ep0_isr.59, i32 0, i32 %switch.tableidx215
  %37 = ptrtoint ptr %switch.gep216 to i32
  call void @__asan_load4_noabort(i32 %37)
  %switch.load217 = load ptr, ptr %switch.gep216, align 4
  br label %decode_ep0_state.exit

decode_ep0_state.exit:                            ; preds = %switch.lookup214, %if.then34.decode_ep0_state.exit_crit_edge
  %retval.0.i170 = phi ptr [ %switch.load217, %switch.lookup214 ], [ @.str.18, %if.then34.decode_ep0_state.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_ep0_isr.__UNIQUE_ID_ddebug351, ptr noundef %33, ptr noundef nonnull @.str.4, ptr noundef nonnull %retval.0.i170) #8
  br label %do.end39

do.end39:                                         ; preds = %decode_ep0_state.exit, %do.body20
  %dev40 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %38 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev40, align 8
  %ep0_state.i171 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 16
  %40 = ptrtoint ptr %ep0_state.i171 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ep0_state.i171, align 8
  %switch.tableidx219 = add i32 %41, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx219)
  %42 = icmp ult i32 %switch.tableidx219, 5
  br i1 %42, label %switch.lookup218, label %do.end39.decode_ep0_state.exit178_crit_edge

do.end39.decode_ep0_state.exit178_crit_edge:      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %decode_ep0_state.exit178

switch.lookup218:                                 ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep220 = getelementptr inbounds [5 x ptr], ptr @switch.table.mtu3_ep0_isr.60, i32 0, i32 %switch.tableidx219
  %43 = ptrtoint ptr %switch.gep220 to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load221 = load ptr, ptr %switch.gep220, align 4
  br label %decode_ep0_state.exit178

decode_ep0_state.exit178:                         ; preds = %switch.lookup218, %do.end39.decode_ep0_state.exit178_crit_edge
  %retval.0.i177 = phi ptr [ %switch.load221, %switch.lookup218 ], [ @.str.18, %do.end39.decode_ep0_state.exit178_crit_edge ]
  tail call void (ptr, ptr, ...) @mtu3_dbg_trace(ptr noundef %39, ptr noundef nonnull @.str.5, ptr noundef nonnull %retval.0.i177) #8
  %44 = ptrtoint ptr %ep0_state.i171 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ep0_state.i171, align 8
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i32 %45, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb46
    i32 4, label %sw.bb51
    i32 1, label %sw.bb79
  ]

sw.bb:                                            ; preds = %decode_ep0_state.exit178
  %and43 = and i32 %csr.0, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %cmp = icmp eq i32 %and43, 0
  br i1 %cmp, label %if.then44, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then44:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ep0_tx_state(ptr noundef %mtu)
  br label %cleanup

sw.bb46:                                          ; preds = %decode_ep0_state.exit178
  %and47 = and i32 %csr.0, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %sw.bb46.cleanup_crit_edge, label %if.then49

sw.bb46.cleanup_crit_edge:                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then49:                                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ep0_rx_state(ptr noundef %mtu)
  br label %cleanup

sw.bb51:                                          ; preds = %decode_ep0_state.exit178
  %and52 = and i32 %csr.0, -4915201
  %or = or i32 %and52, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %47 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i167, i32 %47) #8, !srcloc !151
  %ep053 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 11
  %48 = ptrtoint ptr %ep053 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ep053, align 4
  %req_list.i = getelementptr inbounds %struct.mtu3_ep, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.not.i = icmp eq ptr %51, %req_list.i
  %add.ptr.i180 = getelementptr i8, ptr %51, i32 -56
  %tobool55.not213 = icmp eq ptr %add.ptr.i180, null
  %tobool55.not = or i1 %cmp.not.i, %tobool55.not213
  br i1 %tobool55.not, label %sw.bb51.if.end57_crit_edge, label %if.then56

sw.bb51.if.end57_crit_edge:                       ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then56:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mtu3_req_complete(ptr noundef %49, ptr noundef nonnull %add.ptr.i180, i32 noundef 0) #8
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %sw.bb51.if.end57_crit_edge
  %52 = ptrtoint ptr %ep0_state.i171 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %ep0_state.i171, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_ep0_isr.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_ep0_isr, %cleanup)) #8
          to label %if.then73 [label %cleanup], !srcloc !152

if.then73:                                        ; preds = %if.end57
  %53 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev40, align 8
  %55 = ptrtoint ptr %ep0_state.i171 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ep0_state.i171, align 8
  %switch.tableidx223 = add i32 %56, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx223)
  %57 = icmp ult i32 %switch.tableidx223, 5
  br i1 %57, label %switch.lookup222, label %if.then73.decode_ep0_state.exit188_crit_edge

if.then73.decode_ep0_state.exit188_crit_edge:     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  br label %decode_ep0_state.exit188

switch.lookup222:                                 ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep224 = getelementptr inbounds [5 x ptr], ptr @switch.table.mtu3_ep0_isr.61, i32 0, i32 %switch.tableidx223
  %58 = ptrtoint ptr %switch.gep224 to i32
  call void @__asan_load4_noabort(i32 %58)
  %switch.load225 = load ptr, ptr %switch.gep224, align 4
  br label %decode_ep0_state.exit188

decode_ep0_state.exit188:                         ; preds = %switch.lookup222, %if.then73.decode_ep0_state.exit188_crit_edge
  %retval.0.i187 = phi ptr [ %switch.load225, %switch.lookup222 ], [ @.str.18, %if.then73.decode_ep0_state.exit188_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_ep0_isr.__UNIQUE_ID_ddebug352, ptr noundef %54, ptr noundef nonnull @.str.4, ptr noundef nonnull %retval.0.i187) #8
  br label %cleanup

sw.bb79:                                          ; preds = %decode_ep0_state.exit178
  %and80 = and i32 %csr.0, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %sw.bb79.cleanup_crit_edge, label %if.end83

sw.bb79.cleanup_crit_edge:                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end83:                                         ; preds = %sw.bb79
  %add.ptr.i189 = getelementptr i8, ptr %1, i32 264
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i189) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %59)
  %cmp85.not = icmp eq i32 %59, 134217728
  br i1 %cmp85.not, label %if.end91, label %do.end89

do.end89:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #8
  %61 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev40, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.6, i32 noundef %60) #11
  br label %cleanup

if.end91:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ep0_handle_setup(ptr noundef %mtu)
  br label %cleanup

sw.default:                                       ; preds = %decode_ep0_state.exit178
  %ep093 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 11
  %63 = ptrtoint ptr %ep093 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ep093, align 4
  %mtu1.i190 = getelementptr inbounds %struct.mtu3_ep, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %mtu1.i190 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mtu1.i190, align 4
  %mac_base.i191 = getelementptr inbounds %struct.mtu3, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %mac_base.i191 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mac_base.i191, align 4
  %add.ptr.i.i192 = getelementptr i8, ptr %68, i32 256
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i192) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %70 = and i32 %69, -17155
  %71 = or i32 %70, 2
  %72 = ptrtoint ptr %mac_base.i191 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mac_base.i191, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %add.ptr.i24.i195 = getelementptr i8, ptr %73, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i195, i32 %71) #8, !srcloc !151
  %delayed_status.i196 = getelementptr inbounds %struct.mtu3, ptr %66, i32 0, i32 23
  %74 = ptrtoint ptr %delayed_status.i196 to i32
  call void @__asan_load2_noabort(i32 %74)
  %bf.load.i197 = load i16, ptr %delayed_status.i196, align 4
  %bf.clear.i198 = and i16 %bf.load.i197, -129
  store i16 %bf.clear.i198, ptr %delayed_status.i196, align 4
  %ep0_state.i199 = getelementptr inbounds %struct.mtu3, ptr %66, i32 0, i32 16
  %75 = ptrtoint ptr %ep0_state.i199 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %ep0_state.i199, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_stall_set.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_ep0_isr, %ep0_stall_set.exit209)) #8
          to label %if.then12.i201 [label %ep0_stall_set.exit209], !srcloc !152

if.then12.i201:                                   ; preds = %sw.default
  %dev.i200 = getelementptr inbounds %struct.mtu3, ptr %66, i32 0, i32 2
  %76 = ptrtoint ptr %dev.i200 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i200, align 8
  %78 = ptrtoint ptr %ep0_state.i199 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ep0_state.i199, align 8
  %switch.tableidx227 = add i32 %79, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx227)
  %80 = icmp ult i32 %switch.tableidx227, 5
  br i1 %80, label %switch.lookup226, label %if.then12.i201.decode_ep0_state.exit.i208_crit_edge

if.then12.i201.decode_ep0_state.exit.i208_crit_edge: ; preds = %if.then12.i201
  call void @__sanitizer_cov_trace_pc() #10
  br label %decode_ep0_state.exit.i208

switch.lookup226:                                 ; preds = %if.then12.i201
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep228 = getelementptr inbounds [5 x ptr], ptr @switch.table.mtu3_ep0_isr.62, i32 0, i32 %switch.tableidx227
  %81 = ptrtoint ptr %switch.gep228 to i32
  call void @__asan_load4_noabort(i32 %81)
  %switch.load229 = load ptr, ptr %switch.gep228, align 4
  br label %decode_ep0_state.exit.i208

decode_ep0_state.exit.i208:                       ; preds = %switch.lookup226, %if.then12.i201.decode_ep0_state.exit.i208_crit_edge
  %retval.0.i25.i207 = phi ptr [ %switch.load229, %switch.lookup226 ], [ @.str.18, %if.then12.i201.decode_ep0_state.exit.i208_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_stall_set.__UNIQUE_ID_ddebug330, ptr noundef %77, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull %retval.0.i25.i207) #8
  br label %ep0_stall_set.exit209

ep0_stall_set.exit209:                            ; preds = %decode_ep0_state.exit.i208, %sw.default
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 773, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %ep0_stall_set.exit209, %if.end91, %do.end89, %sw.bb79.cleanup_crit_edge, %decode_ep0_state.exit188, %if.end57, %if.then49, %sw.bb46.cleanup_crit_edge, %if.then44, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %ep0_stall_set.exit209 ], [ %ret.0, %do.end89 ], [ 1, %if.end91 ], [ %ret.0, %sw.bb79.cleanup_crit_edge ], [ 1, %decode_ep0_state.exit188 ], [ 1, %if.then49 ], [ %ret.0, %sw.bb46.cleanup_crit_edge ], [ 1, %if.then44 ], [ %ret.0, %sw.bb.cleanup_crit_edge ], [ 1, %if.end57 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep0_stall_set(ptr nocapture noundef readonly %mep0, i1 noundef zeroext %set, i32 noundef %pktrdy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu1 = getelementptr inbounds %struct.mtu3_ep, ptr %mep0, i32 0, i32 2
  %0 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtu1, align 4
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_base, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 256
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %5 = and i32 %4, -17155
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %or = or i32 %6, %pktrdy
  %or2 = or i32 %or, 33554432
  %or4 = or i32 %6, 4194304
  %csr.0 = select i1 %set, i32 %or2, i32 %or4
  %7 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mac_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %csr.0) #8
  %add.ptr.i24 = getelementptr i8, ptr %8, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %9) #8, !srcloc !151
  %delayed_status = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %delayed_status to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %delayed_status, align 4
  %bf.clear = and i16 %bf.load, -129
  store i16 %bf.clear, ptr %delayed_status, align 4
  %ep0_state = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %ep0_state, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_stall_set.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_stall_set, %do.end)) #8
          to label %if.then12 [label %do.end], !srcloc !152

if.then12:                                        ; preds = %entry
  %dev = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %cond = select i1 %set, ptr @.str.11, ptr @.str.12
  %14 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ep0_state, align 8
  %switch.tableidx = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %16 = icmp ult i32 %switch.tableidx, 5
  br i1 %16, label %switch.lookup, label %if.then12.decode_ep0_state.exit_crit_edge

if.then12.decode_ep0_state.exit_crit_edge:        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %decode_ep0_state.exit

switch.lookup:                                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.ep0_stall_set, i32 0, i32 %switch.tableidx
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %decode_ep0_state.exit

decode_ep0_state.exit:                            ; preds = %switch.lookup, %if.then12.decode_ep0_state.exit_crit_edge
  %retval.0.i25 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.18, %if.then12.decode_ep0_state.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_stall_set.__UNIQUE_ID_ddebug330, ptr noundef %13, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond, ptr noundef nonnull %retval.0.i25) #8
  br label %do.end

do.end:                                           ; preds = %decode_ep0_state.exit, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_dbg_trace(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep0_tx_state(ptr nocapture noundef %mtu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ep0 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 11
  %0 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep0, align 4
  %req_list.i = getelementptr inbounds %struct.mtu3_ep, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.not.i = icmp eq ptr %3, %req_list.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 -56
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_tx_state.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_tx_state, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_tx_state.__UNIQUE_ID_ddebug342, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %ep08 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 3
  %6 = ptrtoint ptr %ep08 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep08, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %8, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %actual = getelementptr inbounds %struct.usb_request, ptr %spec.select.i, i32 0, i32 12
  %9 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %spec.select.i, i32 0, i32 1
  %11 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length, align 4
  %sub = sub i32 %12, %10
  %13 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %bf.cast)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %if.end7.do.body15_crit_edge, label %if.then12

if.end7.do.body15_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spec.select.i, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %10
  %16 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ep0, align 4
  %conv = trunc i32 %13 to i16
  tail call fastcc void @ep0_write_fifo(ptr noundef %17, ptr noundef %add.ptr, i16 noundef zeroext %conv)
  br label %do.body15

do.body15:                                        ; preds = %if.then12, %if.end7.do.body15_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_tx_state.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_tx_state, %do.end37)) #8
          to label %if.then29 [label %do.end37], !srcloc !152

if.then29:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %dev30 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %18 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev30, align 8
  %20 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %actual, align 4
  %22 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %spec.select.i, i32 0, i32 6
  %24 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load33 = load i32, ptr %zero, align 4
  %bf.lshr34 = lshr i32 %bf.load33, 13
  %bf.clear = and i32 %bf.lshr34, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_tx_state.__UNIQUE_ID_ddebug345, ptr noundef %19, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef %21, i32 noundef %23, i32 noundef %13, i32 noundef %bf.cast, i32 noundef %bf.clear) #8
  br label %do.end37

do.end37:                                         ; preds = %if.then29, %do.body15
  %25 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %actual, align 4
  %add = add i32 %26, %13
  store i32 %add, ptr %actual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %bf.cast)
  %cmp39 = icmp ult i32 %sub, %bf.cast
  br i1 %cmp39, label %do.end37.if.then50_crit_edge, label %lor.lhs.false

do.end37.if.then50_crit_edge:                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

lor.lhs.false:                                    ; preds = %do.end37
  %27 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %28)
  %cmp43 = icmp eq i32 %add, %28
  br i1 %cmp43, label %land.lhs.true, label %lor.lhs.false.if.end51_crit_edge

lor.lhs.false.if.end51_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

land.lhs.true:                                    ; preds = %lor.lhs.false
  %zero45 = getelementptr inbounds %struct.usb_request, ptr %spec.select.i, i32 0, i32 6
  %29 = ptrtoint ptr %zero45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load46 = load i32, ptr %zero45, align 4
  %30 = and i32 %bf.load46, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool49.not = icmp eq i32 %30, 0
  br i1 %tobool49.not, label %land.lhs.true.if.then50_crit_edge, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

land.lhs.true.if.then50_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

if.then50:                                        ; preds = %land.lhs.true.if.then50_crit_edge, %do.end37.if.then50_crit_edge
  %ep0_state = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 16
  %31 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %ep0_state, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %land.lhs.true.if.end51_crit_edge, %lor.lhs.false.if.end51_crit_edge
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %32 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mac_base, align 4
  %add.ptr.i114 = getelementptr i8, ptr %33, i32 256
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %35 = and i32 %34, -18177
  %36 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mac_base, align 4
  %38 = or i32 %35, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %add.ptr.i115 = getelementptr i8, ptr %37, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 %38) #8, !srcloc !151
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_tx_state.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_tx_state, %cleanup)) #8
          to label %if.then68 [label %cleanup], !srcloc !152

if.then68:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %dev69 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %39 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev69, align 8
  %41 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mac_base, align 4
  %add.ptr.i116 = getelementptr i8, ptr %42, i32 256
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #8, !srcloc !148
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_tx_state.__UNIQUE_ID_ddebug346, ptr noundef %40, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.19, i32 noundef %44) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %if.end51, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep0_rx_state(ptr nocapture noundef %mtu) unnamed_addr #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %0 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_base, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_rx_state.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_rx_state, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_rx_state.__UNIQUE_ID_ddebug339, ptr noundef %3, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.25) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 256
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %5 = and i32 %4, -17153
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %ep0 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 11
  %7 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ep0, align 4
  %req_list.i = getelementptr inbounds %struct.mtu3_ep, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.not.i = icmp eq ptr %10, %req_list.i
  %add.ptr.i109 = getelementptr i8, ptr %10, i32 -56
  %tobool6.not117 = icmp eq ptr %add.ptr.i109, null
  %tobool6.not = or i1 %cmp.not.i, %tobool6.not117
  br i1 %tobool6.not, label %if.else50, label %if.then7

if.then7:                                         ; preds = %do.end
  %11 = ptrtoint ptr %add.ptr.i109 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i109, align 4
  %actual = getelementptr i8, ptr %10, i32 -4
  %13 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %14
  %length = getelementptr i8, ptr %10, i32 -52
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length, align 4
  %sub = sub i32 %16, %14
  %add.ptr.i110 = getelementptr i8, ptr %1, i32 264
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110) #8, !srcloc !148
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %conv11 = and i32 %18, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11, i32 %sub)
  %cmp = icmp ugt i32 %conv11, %sub
  br i1 %cmp, label %if.then13, label %if.then7.if.end15_crit_edge

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then13:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %status = getelementptr i8, ptr %10, i32 -8
  %19 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -75, ptr %status, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then7.if.end15_crit_edge
  %count.0.in = phi i32 [ %sub, %if.then13 ], [ %18, %if.then7.if.end15_crit_edge ]
  %20 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ep0, align 4
  %mtu.i = getelementptr inbounds %struct.mtu3_ep, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mtu.i, align 4
  %mac_base.i = getelementptr inbounds %struct.mtu3, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %mac_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mac_base.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %25, i32 768
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_read_fifo.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_rx_state, %do.end.i)) #8
          to label %if.then.i [label %do.end.i], !srcloc !152

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mtu.i, align 4
  %dev.i = getelementptr inbounds %struct.mtu3, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 8
  %epnum.i = getelementptr inbounds %struct.mtu3_ep, ptr %21, i32 0, i32 3
  %30 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %epnum.i, align 4
  %conv.i = zext i8 %31 to i32
  %conv5.i = and i32 %count.0.in, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_read_fifo.__UNIQUE_ID_ddebug329, ptr noundef %29, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %conv.i, i32 noundef %conv5.i, ptr noundef %add.ptr) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end15
  %32 = and i32 %count.0.in, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.not = icmp eq i32 %32, 0
  br i1 %cmp.i.not, label %do.end.i.if.end12.i_crit_edge, label %if.then8.i

do.end.i.if.end12.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then8.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i = lshr i32 %count.0.in, 2
  %33 = and i32 %conv6.i, 16383
  tail call void @__raw_readsl(ptr noundef %add.ptr.i111, ptr noundef %add.ptr, i32 noundef %33) #8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %do.end.i.if.end12.i_crit_edge
  %and14.i = and i32 %count.0.in, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end12.i.ep0_read_fifo.exit_crit_edge, label %if.then16.i

if.end12.i.ep0_read_fifo.exit_crit_edge:          ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ep0_read_fifo.exit

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #8, !srcloc !148
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %36 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %value.i, align 4
  %arrayidx.i = getelementptr i8, ptr %add.ptr, i32 %32
  %37 = call ptr @memcpy(ptr %arrayidx.i, ptr %value.i, i32 %and14.i)
  br label %ep0_read_fifo.exit

ep0_read_fifo.exit:                               ; preds = %if.then16.i, %if.end12.i.ep0_read_fifo.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i)
  %conv17 = and i32 %count.0.in, 65535
  %38 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %actual, align 4
  %add = add i32 %39, %conv17
  store i32 %add, ptr %actual, align 4
  %ep019 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 3
  %40 = ptrtoint ptr %ep019 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ep019, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %42, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv17, i32 %bf.cast)
  %cmp21 = icmp ult i32 %conv17, %bf.cast
  br i1 %cmp21, label %ep0_read_fifo.exit.if.then27_crit_edge, label %lor.lhs.false

ep0_read_fifo.exit.if.then27_crit_edge:           ; preds = %ep0_read_fifo.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

lor.lhs.false:                                    ; preds = %ep0_read_fifo.exit
  %or = or i32 %6, 65536
  %43 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %44)
  %cmp25 = icmp eq i32 %add, %44
  br i1 %cmp25, label %lor.lhs.false.if.then27_crit_edge, label %lor.lhs.false.if.end71_crit_edge

lor.lhs.false.if.end71_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %ep0_read_fifo.exit.if.then27_crit_edge
  %ep0_state = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 16
  %45 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %ep0_state, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_rx_state.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_rx_state, %do.end47)) #8
          to label %if.then42 [label %do.end47], !srcloc !152

if.then42:                                        ; preds = %if.then27
  %dev43 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %46 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev43, align 8
  %48 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ep0_state, align 8
  %switch.tableidx = add i32 %49, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %50 = icmp ult i32 %switch.tableidx, 5
  br i1 %50, label %switch.lookup, label %if.then42.decode_ep0_state.exit_crit_edge

if.then42.decode_ep0_state.exit_crit_edge:        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %decode_ep0_state.exit

switch.lookup:                                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.ep0_rx_state, i32 0, i32 %switch.tableidx
  %51 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %51)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %decode_ep0_state.exit

decode_ep0_state.exit:                            ; preds = %switch.lookup, %if.then42.decode_ep0_state.exit_crit_edge
  %retval.0.i112 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.18, %if.then42.decode_ep0_state.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_rx_state.__UNIQUE_ID_ddebug340, ptr noundef %47, ptr noundef nonnull @.str.26, ptr noundef nonnull %retval.0.i112) #8
  br label %do.end47

do.end47:                                         ; preds = %decode_ep0_state.exit, %if.then27
  %or48 = or i32 %6, 589824
  br label %if.end71

if.else50:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %or51 = or i32 %6, 33619968
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_rx_state.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_rx_state, %if.end71)) #8
          to label %if.then66 [label %if.end71], !srcloc !152

if.then66:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #10
  %dev67 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %52 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev67, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_rx_state.__UNIQUE_ID_ddebug341, ptr noundef %53, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25) #8
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %if.else50, %do.end47, %lor.lhs.false.if.end71_crit_edge
  %csr.1 = phi i32 [ %or51, %if.then66 ], [ %or48, %do.end47 ], [ %or, %lor.lhs.false.if.end71_crit_edge ], [ %or51, %if.else50 ]
  %req.1 = phi ptr [ null, %if.then66 ], [ %add.ptr.i109, %do.end47 ], [ null, %lor.lhs.false.if.end71_crit_edge ], [ null, %if.else50 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %54 = tail call i32 @llvm.bswap.i32(i32 %csr.1) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %54) #8, !srcloc !151
  %tobool72.not = icmp eq ptr %req.1, null
  br i1 %tobool72.not, label %if.end71.if.end74_crit_edge, label %if.then73

if.end71.if.end74_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ep0, align 4
  tail call void @mtu3_req_complete(ptr noundef %56, ptr noundef nonnull %req.1, i32 noundef 0) #8
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end71.if.end74_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep0_handle_setup(ptr noundef %mtu) unnamed_addr #0 align 64 {
entry:
  %setup = alloca %struct.usb_ctrlrequest, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %setup) #8
  %0 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 4
  %1 = ptrtoint ptr %setup to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %setup, align 8
  call fastcc void @ep0_read_setup(ptr noundef %mtu, ptr noundef nonnull %setup)
  call fastcc void @trace_mtu3_handle_setup(ptr noundef nonnull %setup)
  %2 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %setup, align 8
  %4 = and i8 %3, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = call fastcc i32 @handle_standard_request(ptr noundef %mtu, ptr noundef nonnull %setup)
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %handled.0 = phi i32 [ %call, %if.then ], [ 0, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_handle_setup.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_handle_setup, %do.end)) #8
          to label %if.then6 [label %do.end], !srcloc !152

if.then6:                                         ; preds = %do.body
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %ep0_state.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 16
  %7 = ptrtoint ptr %ep0_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ep0_state.i, align 8
  %switch.tableidx = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 5
  br i1 %9, label %switch.lookup, label %if.then6.decode_ep0_state.exit_crit_edge

if.then6.decode_ep0_state.exit_crit_edge:         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %decode_ep0_state.exit

switch.lookup:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.ep0_handle_setup, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %decode_ep0_state.exit

decode_ep0_state.exit:                            ; preds = %switch.lookup, %if.then6.decode_ep0_state.exit_crit_edge
  %retval.0.i4 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.18, %if.then6.decode_ep0_state.exit_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_handle_setup.__UNIQUE_ID_ddebug348, ptr noundef %6, ptr noundef nonnull @.str.31, i32 noundef %handled.0, ptr noundef nonnull %retval.0.i4) #8
  br label %do.end

do.end:                                           ; preds = %decode_ep0_state.exit, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.0)
  %cmp9 = icmp slt i32 %handled.0, 0
  br i1 %cmp9, label %do.end.do.body21_crit_edge, label %if.else

do.end.do.body21_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.0)
  %cmp12.not = icmp eq i32 %handled.0, 0
  br i1 %cmp12.not, label %if.end16, label %if.else.finish_crit_edge

if.else.finish_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %finish

if.end16:                                         ; preds = %if.else
  %gadget_driver.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 18
  %11 = ptrtoint ptr %gadget_driver.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gadget_driver.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end16.do.body21_crit_edge, label %if.end.i

if.end16.do.body21_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21

if.end.i:                                         ; preds = %if.end16
  call void @_raw_spin_unlock(ptr noundef %mtu) #8
  %13 = ptrtoint ptr %gadget_driver.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gadget_driver.i, align 8
  %setup2.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %setup2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %setup2.i, align 4
  %g.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17
  %call.i = call i32 %16(ptr noundef %g.i, ptr noundef nonnull %setup) #8
  call void @_raw_spin_lock(ptr noundef %mtu) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @forward_to_driver.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_handle_setup, %forward_to_driver.exit)) #8
          to label %if.then9.i [label %forward_to_driver.exit], !srcloc !152

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @forward_to_driver.__UNIQUE_ID_ddebug327, ptr noundef %18, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.55, i32 noundef %call.i) #8
  br label %forward_to_driver.exit

forward_to_driver.exit:                           ; preds = %if.then9.i, %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18 = icmp slt i32 %call.i, 0
  br i1 %cmp18, label %forward_to_driver.exit.do.body21_crit_edge, label %forward_to_driver.exit.finish_crit_edge

forward_to_driver.exit.finish_crit_edge:          ; preds = %forward_to_driver.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %finish

forward_to_driver.exit.do.body21_crit_edge:       ; preds = %forward_to_driver.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21

do.body21:                                        ; preds = %forward_to_driver.exit.do.body21_crit_edge, %if.end16.do.body21_crit_edge, %do.end.do.body21_crit_edge
  %handled.1 = phi i32 [ %handled.0, %do.end.do.body21_crit_edge ], [ %call.i, %forward_to_driver.exit.do.body21_crit_edge ], [ -95, %if.end16.do.body21_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_handle_setup.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_handle_setup, %do.end39)) #8
          to label %if.then35 [label %do.end39], !srcloc !152

if.then35:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  %dev36 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %19 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev36, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_handle_setup.__UNIQUE_ID_ddebug349, ptr noundef %20, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef %handled.1) #8
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %do.body21
  %ep0 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 11
  %21 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ep0, align 4
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool41.not = icmp eq i16 %24, 0
  %cond = select i1 %tobool41.not, i32 131072, i32 0
  call fastcc void @ep0_stall_set(ptr noundef %22, i1 noundef zeroext true, i32 noundef %cond)
  br label %cleanup

finish:                                           ; preds = %forward_to_driver.exit.finish_crit_edge, %if.else.finish_crit_edge
  %handled.2 = phi i32 [ %handled.0, %if.else.finish_crit_edge ], [ %call.i, %forward_to_driver.exit.finish_crit_edge ]
  %test_mode = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %25 = ptrtoint ptr %test_mode to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load = load i16, ptr %test_mode, align 4
  %26 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool43.not = icmp eq i16 %26, 0
  br i1 %tobool43.not, label %if.else45, label %finish.cleanup_crit_edge

finish.cleanup_crit_edge:                         ; preds = %finish
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else45:                                        ; preds = %finish
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %handled.2)
  %cmp46 = icmp eq i32 %handled.2, 32767
  br i1 %cmp46, label %if.then48, label %if.else57

if.then48:                                        ; preds = %if.else45
  %ep049 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 11
  %27 = ptrtoint ptr %ep049 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ep049, align 4
  %req_list.i = getelementptr inbounds %struct.mtu3_ep, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.not.i = icmp eq ptr %30, %req_list.i
  %add.ptr.i = getelementptr i8, ptr %30, i32 -56
  %tobool51.not18 = icmp eq ptr %add.ptr.i, null
  %tobool51.not = or i1 %cmp.not.i, %tobool51.not18
  br i1 %tobool51.not, label %if.else53, label %if.then52

if.then52:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  %mac_base.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %31 = ptrtoint ptr %mac_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mac_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 256
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %34 = and i32 %33, -19201
  %35 = or i32 %34, 2560
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %35) #8, !srcloc !151
  %36 = ptrtoint ptr %ep049 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ep049, align 4
  call void @mtu3_req_complete(ptr noundef %37, ptr noundef nonnull %add.ptr.i, i32 noundef 0) #8
  br label %cleanup

if.else53:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set = or i16 %bf.load, 128
  %38 = ptrtoint ptr %test_mode to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %bf.set, ptr %test_mode, align 4
  br label %cleanup

if.else57:                                        ; preds = %if.else45
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %cmp60 = icmp eq i16 %40, 0
  br i1 %cmp60, label %if.then62, label %if.else57.cleanup_crit_edge

if.else57.cleanup_crit_edge:                      ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then62:                                        ; preds = %if.else57
  %mac_base.i6 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %41 = ptrtoint ptr %mac_base.i6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mac_base.i6, align 4
  %add.ptr.i.i7 = getelementptr i8, ptr %42, i32 256
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7) #8, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %44 = and i32 %43, -19201
  %45 = or i32 %44, 2560
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7, i32 %45) #8, !srcloc !151
  %ep063 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 11
  %46 = ptrtoint ptr %ep063 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ep063, align 4
  %req_list.i8 = getelementptr inbounds %struct.mtu3_ep, ptr %47, i32 0, i32 12
  %48 = ptrtoint ptr %req_list.i8 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %req_list.i8, align 4
  %cmp.not.i9 = icmp eq ptr %49, %req_list.i8
  %add.ptr.i10 = getelementptr i8, ptr %49, i32 -56
  %tobool65.not17 = icmp eq ptr %add.ptr.i10, null
  %tobool65.not = or i1 %cmp.not.i9, %tobool65.not17
  br i1 %tobool65.not, label %if.then62.cleanup_crit_edge, label %land.lhs.true

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then62
  %length = getelementptr i8, ptr %49, i32 -52
  %50 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool67.not = icmp eq i32 %51, 0
  br i1 %tobool67.not, label %if.then68, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then68:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @mtu3_req_complete(ptr noundef %47, ptr noundef nonnull %add.ptr.i10, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %land.lhs.true.cleanup_crit_edge, %if.then62.cleanup_crit_edge, %if.else57.cleanup_crit_edge, %if.else53, %if.then52, %finish.cleanup_crit_edge, %do.end39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %setup) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtu3_ep0_enable(ptr nocapture noundef readnone %ep, ptr nocapture noundef readnone %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtu3_ep0_disable(ptr nocapture noundef readnone %ep) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtu3_alloc_request(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_free_request(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_ep0_queue(ptr noundef %ep, ptr noundef %req, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ep, null
  %tobool1.not = icmp eq ptr %req, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mtu2 = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %mtu2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtu2, align 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %call9 = tail call fastcc i32 @ep0_queue(ptr noundef nonnull %ep, ptr noundef nonnull %req)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call6) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtu3_ep0_dequeue(ptr nocapture noundef readnone %ep, ptr nocapture noundef readnone %req) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_ep0_halt(ptr noundef %ep, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ep, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool1.not = icmp eq i32 %value, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup44_crit_edge, label %if.end

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44

if.end:                                           ; preds = %entry
  %mtu2 = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %mtu2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtu2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_ep0_halt.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_ep0_halt, %do.body11)) #8
          to label %if.then8 [label %do.body11], !srcloc !152

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_ep0_halt.__UNIQUE_ID_ddebug354, ptr noundef %3, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.57) #8
  br label %do.body11

do.body11:                                        ; preds = %if.then8, %if.end
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %req_list = getelementptr inbounds %struct.mtu3_ep, ptr %ep, i32 0, i32 12
  %4 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %req_list, align 4
  %cmp.i.not = icmp eq ptr %5, %req_list
  br i1 %cmp.i.not, label %if.end22, label %do.body11.cleanup_crit_edge

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %do.body11
  %ep0_state = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ep0_state, align 8
  %.off = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %sw.bb, label %do.body23

sw.bb:                                            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %ep0 = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep0, align 4
  %mtu1.i = getelementptr inbounds %struct.mtu3_ep, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %mtu1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mtu1.i, align 4
  %mac_base.i = getelementptr inbounds %struct.mtu3, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %mac_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mac_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 256
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %15 = and i32 %14, -17155
  %16 = or i32 %15, 2
  %17 = ptrtoint ptr %mac_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mac_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %add.ptr.i24.i = getelementptr i8, ptr %18, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %16) #8, !srcloc !151
  %delayed_status.i = getelementptr inbounds %struct.mtu3, ptr %11, i32 0, i32 23
  %19 = ptrtoint ptr %delayed_status.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load.i = load i16, ptr %delayed_status.i, align 4
  %bf.clear.i = and i16 %bf.load.i, -129
  store i16 %bf.clear.i, ptr %delayed_status.i, align 4
  %ep0_state.i = getelementptr inbounds %struct.mtu3, ptr %11, i32 0, i32 16
  %20 = ptrtoint ptr %ep0_state.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %ep0_state.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_stall_set.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_ep0_halt, %cleanup)) #8
          to label %if.then12.i [label %cleanup], !srcloc !152

if.then12.i:                                      ; preds = %sw.bb
  %dev.i = getelementptr inbounds %struct.mtu3, ptr %11, i32 0, i32 2
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 8
  %23 = ptrtoint ptr %ep0_state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ep0_state.i, align 8
  %switch.tableidx = add i32 %24, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %25 = icmp ult i32 %switch.tableidx, 5
  br i1 %25, label %switch.lookup, label %if.then12.i.decode_ep0_state.exit.i_crit_edge

if.then12.i.decode_ep0_state.exit.i_crit_edge:    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %decode_ep0_state.exit.i

switch.lookup:                                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.mtu3_ep0_halt, i32 0, i32 %switch.tableidx
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %decode_ep0_state.exit.i

decode_ep0_state.exit.i:                          ; preds = %switch.lookup, %if.then12.i.decode_ep0_state.exit.i_crit_edge
  %retval.0.i25.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.18, %if.then12.i.decode_ep0_state.exit.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_stall_set.__UNIQUE_ID_ddebug330, ptr noundef %22, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull %retval.0.i25.i) #8
  br label %cleanup

do.body23:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_ep0_halt.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_ep0_halt, %cleanup)) #8
          to label %if.then37 [label %cleanup], !srcloc !152

if.then37:                                        ; preds = %do.body23
  %dev38 = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev38, align 8
  %29 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ep0_state, align 8
  %switch.tableidx64 = add i32 %30, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx64)
  %31 = icmp ult i32 %switch.tableidx64, 5
  br i1 %31, label %switch.lookup63, label %if.then37.decode_ep0_state.exit_crit_edge

if.then37.decode_ep0_state.exit_crit_edge:        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %decode_ep0_state.exit

switch.lookup63:                                  ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep65 = getelementptr inbounds [5 x ptr], ptr @switch.table.mtu3_ep0_halt.63, i32 0, i32 %switch.tableidx64
  %32 = ptrtoint ptr %switch.gep65 to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load66 = load ptr, ptr %switch.gep65, align 4
  br label %decode_ep0_state.exit

decode_ep0_state.exit:                            ; preds = %switch.lookup63, %if.then37.decode_ep0_state.exit_crit_edge
  %retval.0.i60 = phi ptr [ %switch.load66, %switch.lookup63 ], [ @.str.18, %if.then37.decode_ep0_state.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_ep0_halt.__UNIQUE_ID_ddebug355, ptr noundef %28, ptr noundef nonnull @.str.58, ptr noundef nonnull %retval.0.i60) #8
  br label %cleanup

cleanup:                                          ; preds = %decode_ep0_state.exit, %do.body23, %decode_ep0_state.exit.i, %sw.bb, %do.body11.cleanup_crit_edge
  %ret.0 = phi i32 [ -16, %do.body11.cleanup_crit_edge ], [ -22, %decode_ep0_state.exit ], [ 0, %sw.bb ], [ 0, %decode_ep0_state.exit.i ], [ -22, %do.body23 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call14) #8
  br label %cleanup44

cleanup44:                                        ; preds = %cleanup, %entry.cleanup44_crit_edge
  %retval.0 = phi i32 [ %ret.0, %cleanup ], [ -22, %entry.cleanup44_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep0_write_fifo(ptr nocapture noundef readonly %mep, ptr noundef %src, i16 noundef zeroext %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 2
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtu, align 4
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 768
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_write_fifo.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_write_fifo, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mtu, align 4
  %dev = getelementptr inbounds %struct.mtu3, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %epnum = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 3
  %8 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %epnum, align 4
  %conv = zext i8 %9 to i32
  %conv5 = zext i16 %len to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_write_fifo.__UNIQUE_ID_ddebug328, ptr noundef %7, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef %conv, i32 noundef %conv5, ptr noundef %src) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv6 = zext i16 %len to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %len)
  %cmp = icmp ugt i16 %len, 3
  br i1 %cmp, label %if.then8, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = lshr i32 %conv6, 2
  tail call void @__raw_writesl(ptr noundef %add.ptr, ptr noundef %src, i32 noundef %10) #8
  %and = and i16 %len, -4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %do.end.if.end12_crit_edge
  %index.0 = phi i16 [ %and, %if.then8 ], [ 0, %do.end.if.end12_crit_edge ]
  %and14 = and i32 %conv6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.if.end22_crit_edge, label %do.body17

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.body17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %idxprom = zext i16 %index.0 to i32
  %arrayidx = getelementptr i8, ptr %src, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %13) #8, !srcloc !155
  %add = or i16 %index.0, 2
  br label %if.end22

if.end22:                                         ; preds = %do.body17, %if.end12.if.end22_crit_edge
  %index.1 = phi i16 [ %add, %do.body17 ], [ %index.0, %if.end12.if.end22_crit_edge ]
  %and24 = and i32 %conv6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.if.end32_crit_edge, label %do.body27

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.body27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %idxprom30 = zext i16 %index.1 to i32
  %arrayidx31 = getelementptr i8, ptr %src, i32 %idxprom30
  %14 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx31, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %15) #8, !srcloc !157
  br label %if.end32

if.end32:                                         ; preds = %do.body27, %if.end22.if.end32_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_req_complete(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep0_read_setup(ptr nocapture noundef %mtu, ptr noundef %setup) unnamed_addr #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %0 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %3 = and i32 %2, -21249
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mac_base, align 4
  %add.ptr.i53 = getelementptr i8, ptr %6, i32 264
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #8, !srcloc !148
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %ep0 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 11
  %9 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ep0, align 4
  %mtu.i = getelementptr inbounds %struct.mtu3_ep, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mtu.i, align 4
  %mac_base.i = getelementptr inbounds %struct.mtu3, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %mac_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mac_base.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %14, i32 768
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_read_fifo.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_read_setup, %do.end.i)) #8
          to label %if.then.i [label %do.end.i], !srcloc !152

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mtu.i, align 4
  %dev.i = getelementptr inbounds %struct.mtu3, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 8
  %epnum.i = getelementptr inbounds %struct.mtu3_ep, ptr %10, i32 0, i32 3
  %19 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %epnum.i, align 4
  %conv.i = zext i8 %20 to i32
  %conv5.i = and i32 %8, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_read_fifo.__UNIQUE_ID_ddebug329, ptr noundef %18, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %conv.i, i32 noundef %conv5.i, ptr noundef %setup) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %21 = and i32 %8, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.not = icmp eq i32 %21, 0
  br i1 %cmp.i.not, label %do.end.i.if.end12.i_crit_edge, label %if.then8.i

do.end.i.if.end12.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then8.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i = lshr i32 %8, 2
  %22 = and i32 %conv6.i, 16383
  tail call void @__raw_readsl(ptr noundef %add.ptr.i54, ptr noundef %setup, i32 noundef %22) #8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %do.end.i.if.end12.i_crit_edge
  %and14.i = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end12.i.ep0_read_fifo.exit_crit_edge, label %if.then16.i

if.end12.i.ep0_read_fifo.exit_crit_edge:          ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ep0_read_fifo.exit

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #8, !srcloc !148
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %25 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %value.i, align 4
  %arrayidx.i = getelementptr i8, ptr %setup, i32 %21
  %26 = call ptr @memcpy(ptr %arrayidx.i, ptr %value.i, i32 %and14.i)
  br label %ep0_read_fifo.exit

ep0_read_fifo.exit:                               ; preds = %if.then16.i, %if.end12.i.ep0_read_fifo.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_read_setup.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_read_setup, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !152

if.then:                                          ; preds = %ep0_read_fifo.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %29 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %setup, align 1
  %conv7 = zext i8 %30 to i32
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 1
  %31 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bRequest, align 1
  %conv8 = zext i8 %32 to i32
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 2
  %33 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %wValue, align 1
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %conv9 = zext i16 %35 to i32
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 3
  %36 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %wIndex, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %conv10 = zext i16 %38 to i32
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 4
  %39 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %wLength, align 1
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %conv11 = zext i16 %41 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_read_setup.__UNIQUE_ID_ddebug347, ptr noundef %28, ptr noundef nonnull @.str.34, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %conv10, i32 noundef %conv11) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %ep0_read_fifo.exit
  %42 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ep0, align 4
  %req_list.i = getelementptr inbounds %struct.mtu3_ep, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.not.i = icmp eq ptr %45, %req_list.i
  %add.ptr.i55 = getelementptr i8, ptr %45, i32 -56
  %tobool14.not59 = icmp eq ptr %add.ptr.i55, null
  %tobool14.not = or i1 %cmp.not.i, %tobool14.not59
  br i1 %tobool14.not, label %do.end.if.end16_crit_edge, label %if.then15

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mtu3_req_complete(ptr noundef %43, ptr noundef nonnull %add.ptr.i55, i32 noundef 0) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %do.end.if.end16_crit_edge
  %wLength17 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 4
  %46 = ptrtoint ptr %wLength17 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %wLength17, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp = icmp eq i16 %47, 0
  br i1 %cmp, label %if.end16.if.end34_crit_edge, label %if.else

if.end16.if.end34_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.else:                                          ; preds = %if.end16
  %48 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %setup, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %49)
  %tobool24.not = icmp sgt i8 %49, -1
  %50 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mac_base, align 4
  br i1 %tobool24.not, label %if.else28, label %if.then25

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %or27 = or i32 %4, 1179648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %52 = tail call i32 @llvm.bswap.i32(i32 %or27) #8
  %add.ptr.i56 = getelementptr i8, ptr %51, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %52) #8, !srcloc !151
  br label %if.end34.sink.split

if.else28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %and31 = or i32 %4, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %53 = tail call i32 @llvm.bswap.i32(i32 %and31) #8
  %add.ptr.i57 = getelementptr i8, ptr %51, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %53) #8, !srcloc !151
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.else28, %if.then25
  %.sink = phi i32 [ 2, %if.then25 ], [ 3, %if.else28 ]
  %ep0_state = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 16
  %54 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.sink, ptr %ep0_state, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.end16.if.end34_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mtu3_handle_setup(ptr noundef %setup) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_handle_setup, i32 0, i32 1), ptr blockaddress(@trace_mtu3_handle_setup, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !152

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !138) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !158

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !138) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !159
  %call42 = tail call i32 @__traceiter_mtu3_handle_setup(ptr noundef null, ptr noundef %setup) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !160
  %13 = tail call i32 @llvm.read_register.i32(metadata !138) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !138) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !158

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !138) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_handle_setup, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_handle_setup, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_mtu3_handle_setup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_mtu3_handle_setup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 116, ptr noundef nonnull @.str.36) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !162
  %31 = tail call i32 @llvm.read_register.i32(metadata !138) #8
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
define internal fastcc i32 @handle_standard_request(ptr noundef %mtu, ptr nocapture noundef readonly %setup) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %0 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_base, align 4
  %g = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 2
  %2 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %wValue, align 1
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 1
  %4 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bRequest, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %5, label %sw.default [
    i8 5, label %sw.bb
    i8 9, label %sw.bb20
    i8 1, label %sw.bb34
    i8 3, label %sw.bb36
    i8 0, label %sw.bb38
    i8 48, label %sw.bb40
    i8 49, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %7 = lshr i16 %3, 8
  %8 = trunc i16 %7 to i8
  %conv3 = and i8 %8, 127
  %address = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 24
  %9 = ptrtoint ptr %address to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv3, ptr %address, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_standard_request.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_standard_request, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !152

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %12 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %address, align 2
  %conv8 = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_standard_request.__UNIQUE_ID_ddebug338, ptr noundef %11, ptr noundef nonnull @.str.39, i32 noundef %conv8) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %sw.bb
  %add.ptr.i = getelementptr i8, ptr %1, i32 2048
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %15 = and i32 %14, -128
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %address, align 2
  %19 = and i8 %18, 127
  %and13 = zext i8 %19 to i32
  %shl = shl nuw nsw i32 %and13, 24
  %or = or i32 %shl, %16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #8, !srcloc !151
  %21 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %address, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool15.not = icmp eq i8 %22, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_gadget_set_state(ptr noundef %g, i32 noundef 6) #8
  br label %sw.epilog

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_gadget_set_state(ptr noundef %g, i32 noundef 5) #8
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %state1 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 9
  %23 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state1, align 8
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %24, label %sw.bb20.sw.epilog_crit_edge [
    i32 6, label %if.then22
    i32 7, label %if.then27
  ]

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then22:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_gadget_set_state(ptr noundef %g, i32 noundef 7) #8
  br label %sw.epilog

if.then27:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool28.not = icmp eq i16 %3, 0
  br i1 %tobool28.not, label %if.then29, label %if.then27.sw.epilog_crit_edge

if.then27.sw.epilog_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_gadget_set_state(ptr noundef %g, i32 noundef 6) #8
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call fastcc i32 @ep0_handle_feature(ptr noundef %mtu, ptr noundef %setup, i1 noundef zeroext false)
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call37 = tail call fastcc i32 @ep0_handle_feature(ptr noundef %mtu, ptr noundef %setup, i1 noundef zeroext true)
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = tail call fastcc i32 @ep0_get_status(ptr noundef %mtu, ptr noundef %setup)
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry
  %wLength.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 4
  %26 = ptrtoint ptr %wLength.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %wLength.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %27)
  %cmp.not.i = icmp eq i16 %27, 1536
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i, !prof !158

do.end.i:                                         ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #10
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #8
  %conv.i = zext i16 %28 to i32
  %dev.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %conv.i) #11
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #10
  %ep0.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 11
  %31 = ptrtoint ptr %ep0.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ep0.i, align 4
  %ep0_req.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 19
  %mep.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 19, i32 2
  %33 = ptrtoint ptr %mep.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %mep.i, align 4
  %length5.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 19, i32 0, i32 1
  %34 = ptrtoint ptr %length5.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 6, ptr %length5.i, align 4
  %setup_buf.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 20
  %35 = ptrtoint ptr %ep0_req.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %setup_buf.i, ptr %ep0_req.i, align 4
  %complete.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 19, i32 0, i32 7
  %36 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ep0_set_sel_complete, ptr %complete.i, align 4
  %call.i = tail call fastcc i32 @ep0_queue(ptr noundef %32, ptr noundef %ep0_req.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp12.i, i32 %call.i, i32 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.i, %do.end.i, %sw.bb38, %sw.bb36, %sw.bb34, %if.then29, %if.then27.sw.epilog_crit_edge, %if.then22, %sw.bb20.sw.epilog_crit_edge, %if.else, %if.then16, %entry.sw.epilog_crit_edge
  %handled.0 = phi i32 [ 0, %sw.default ], [ %call39, %sw.bb38 ], [ %call37, %sw.bb36 ], [ %call35, %sw.bb34 ], [ 1, %if.else ], [ 1, %if.then16 ], [ 0, %sw.bb20.sw.epilog_crit_edge ], [ 0, %if.then29 ], [ 0, %if.then27.sw.epilog_crit_edge ], [ 0, %if.then22 ], [ 1, %entry.sw.epilog_crit_edge ], [ -22, %do.end.i ], [ %spec.select.i, %if.end.i ]
  ret i32 %handled.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mtu3_handle_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep0_handle_feature(ptr nocapture noundef %mtu, ptr nocapture noundef readonly %setup, i1 noundef zeroext %set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 2
  %0 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %wValue, align 1
  %2 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %setup, align 1
  %4 = and i8 %3, 31
  %and = zext i8 %4 to i32
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %and, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %mac_base.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %6 = ptrtoint ptr %mac_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac_base.i, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %1) #8
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %8, label %sw.bb.sw.epilog_crit_edge [
    i16 1, label %sw.bb.i
    i16 2, label %sw.bb2.i
    i16 48, label %sw.bb8.i
    i16 49, label %sw.bb35.i
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %may_wakeup.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %10 = ptrtoint ptr %may_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %may_wakeup.i, align 4
  %bf.shl.i = select i1 %set, i16 16384, i16 0
  %bf.clear.i = and i16 %bf.load.i, -16385
  %bf.set.i = or i16 %bf.clear.i, %bf.shl.i
  store i16 %bf.set.i, ptr %may_wakeup.i, align 4
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %sw.bb
  br i1 %set, label %lor.lhs.false.i, label %sw.bb2.i.sw.epilog_crit_edge

sw.bb2.i.sw.epilog_crit_edge:                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false.i:                                  ; preds = %sw.bb2.i
  %speed.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 5
  %11 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 3
  br i1 %cmp.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.sw.epilog_crit_edge

lor.lhs.false.i.sw.epilog_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %wIndex.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 3
  %13 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %wIndex.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %14)
  %tobool7.not.i = icmp ult i16 %14, 256
  br i1 %tobool7.not.i, label %if.end.i, label %lor.lhs.false5.i.sw.epilog_crit_edge

lor.lhs.false5.i.sw.epilog_crit_edge:             ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i:                                         ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call fastcc i32 @handle_test_mode(ptr noundef %mtu, ptr noundef %setup) #8
  br label %sw.epilog

sw.bb8.i:                                         ; preds = %sw.bb
  %speed10.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 5
  %15 = ptrtoint ptr %speed10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %speed10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp11.i = icmp ult i32 %16, 5
  br i1 %cmp11.i, label %sw.bb8.i.sw.epilog_crit_edge, label %lor.lhs.false13.i

sw.bb8.i.sw.epilog_crit_edge:                     ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false13.i:                                ; preds = %sw.bb8.i
  %state.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 9
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %18)
  %cmp15.not.i = icmp eq i32 %18, 7
  br i1 %cmp15.not.i, label %if.end18.i, label %lor.lhs.false13.i.sw.epilog_crit_edge

lor.lhs.false13.i.sw.epilog_crit_edge:            ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end18.i:                                       ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 5648
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %20 = and i32 %19, -16777217
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  %bf.shl31.i = select i1 %set, i16 1024, i16 0
  %masksel92.i = zext i1 %set to i32
  %lpc.0.i = or i32 %21, %masksel92.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %lpc.0.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %22) #8, !srcloc !151
  %u1_enable.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %23 = ptrtoint ptr %u1_enable.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load29.i = load i16, ptr %u1_enable.i, align 4
  %bf.clear32.i = and i16 %bf.load29.i, -1025
  %bf.set33.i = or i16 %bf.clear32.i, %bf.shl31.i
  store i16 %bf.set33.i, ptr %u1_enable.i, align 4
  br label %sw.epilog

sw.bb35.i:                                        ; preds = %sw.bb
  %speed37.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 5
  %24 = ptrtoint ptr %speed37.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %speed37.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %25)
  %cmp38.i = icmp ult i32 %25, 5
  br i1 %cmp38.i, label %sw.bb35.i.sw.epilog_crit_edge, label %lor.lhs.false40.i

sw.bb35.i.sw.epilog_crit_edge:                    ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false40.i:                                ; preds = %sw.bb35.i
  %state42.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 9
  %26 = ptrtoint ptr %state42.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state42.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %27)
  %cmp43.not.i = icmp eq i32 %27, 7
  br i1 %cmp43.not.i, label %if.end46.i, label %lor.lhs.false40.i.sw.epilog_crit_edge

lor.lhs.false40.i.sw.epilog_crit_edge:            ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end46.i:                                       ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i90.i = getelementptr i8, ptr %7, i32 5648
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90.i) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %29 = and i32 %28, -33554433
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  %bf.shl61.i = select i1 %set, i16 512, i16 0
  %masksel.i = select i1 %set, i32 2, i32 0
  %lpc.1.i = or i32 %30, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %31 = tail call i32 @llvm.bswap.i32(i32 %lpc.1.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i, i32 %31) #8, !srcloc !151
  %u2_enable.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %32 = ptrtoint ptr %u2_enable.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load59.i = load i16, ptr %u2_enable.i, align 4
  %bf.clear62.i = and i16 %bf.load59.i, -513
  %bf.set63.i = or i16 %bf.clear62.i, %bf.shl61.i
  store i16 %bf.set63.i, ptr %u2_enable.i, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %land.lhs.true, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %speed = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 5
  %33 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp4 = icmp ugt i32 %34, 4
  %spec.select = select i1 %cmp4, i32 0, i32 -22
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 3
  %35 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %wIndex, align 1
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  %38 = and i16 %37, 15
  %conv9 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp11 = icmp eq i16 %38, 0
  br i1 %cmp11, label %sw.bb6.sw.epilog_crit_edge, label %lor.lhs.false

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %sw.bb6
  %num_eps = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 12
  %39 = ptrtoint ptr %num_eps to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_eps, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv9)
  %cmp14.not = icmp sgt i32 %40, %conv9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp18.not = icmp eq i16 %1, 0
  %or.cond = select i1 %cmp14.not, i1 %cmp18.not, i1 false
  br i1 %or.cond, label %if.end21, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end21:                                         ; preds = %lor.lhs.false
  %41 = and i16 %37, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool24.not = icmp eq i16 %41, 0
  %in_eps = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 9
  %out_eps = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 10
  %cond.in = select i1 %tobool24.not, ptr %out_eps, ptr %in_eps
  %42 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %42)
  %cond = load ptr, ptr %cond.in, align 4
  %add.ptr = getelementptr %struct.mtu3_ep, ptr %cond, i32 %conv9
  %desc = getelementptr %struct.mtu3_ep, ptr %cond, i32 %conv9, i32 15
  %43 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %desc, align 4
  %tobool26.not = icmp eq ptr %44, null
  br i1 %tobool26.not, label %if.end21.sw.epilog_crit_edge, label %if.end28

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end28:                                         ; preds = %if.end21
  %flags = getelementptr %struct.mtu3_ep, ptr %cond, i32 %conv9, i32 16
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 4
  %and29 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.sw.epilog_crit_edge

if.end28.sw.epilog_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mtu3_ep_stall_set(ptr noundef %add.ptr, i1 noundef zeroext %set) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end32, %if.end28.sw.epilog_crit_edge, %if.end21.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge, %sw.bb6.sw.epilog_crit_edge, %land.lhs.true, %sw.bb1.sw.epilog_crit_edge, %if.end46.i, %lor.lhs.false40.i.sw.epilog_crit_edge, %sw.bb35.i.sw.epilog_crit_edge, %if.end18.i, %lor.lhs.false13.i.sw.epilog_crit_edge, %sw.bb8.i.sw.epilog_crit_edge, %if.end.i, %lor.lhs.false5.i.sw.epilog_crit_edge, %lor.lhs.false.i.sw.epilog_crit_edge, %sw.bb2.i.sw.epilog_crit_edge, %sw.bb.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %handled.0 = phi i32 [ -22, %sw.bb6.sw.epilog_crit_edge ], [ -22, %lor.lhs.false.sw.epilog_crit_edge ], [ 1, %if.end28.sw.epilog_crit_edge ], [ 1, %if.end32 ], [ -22, %if.end21.sw.epilog_crit_edge ], [ -22, %sw.bb1.sw.epilog_crit_edge ], [ %spec.select, %land.lhs.true ], [ 0, %entry.sw.epilog_crit_edge ], [ -22, %sw.bb35.i.sw.epilog_crit_edge ], [ -22, %lor.lhs.false40.i.sw.epilog_crit_edge ], [ 1, %if.end46.i ], [ -22, %sw.bb8.i.sw.epilog_crit_edge ], [ -22, %lor.lhs.false13.i.sw.epilog_crit_edge ], [ 1, %if.end18.i ], [ -22, %lor.lhs.false.i.sw.epilog_crit_edge ], [ -22, %lor.lhs.false5.i.sw.epilog_crit_edge ], [ %call.i, %if.end.i ], [ -22, %sw.bb2.i.sw.epilog_crit_edge ], [ 1, %sw.bb.i ], [ -22, %sw.bb.sw.epilog_crit_edge ]
  ret i32 %handled.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep0_get_status(ptr noundef %mtu, ptr nocapture noundef readonly %setup) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %setup, align 1
  %2 = and i8 %1, 31
  %and = zext i8 %2 to i32
  %3 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %and, label %entry.if.end113_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.if.then76_crit_edge
    i32 2, label %sw.bb46
  ]

entry.if.then76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

entry.if.end113_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %is_self_powered = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %4 = ptrtoint ptr %is_self_powered to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %is_self_powered, align 4
  %bf.lshr = lshr i16 %bf.load, 13
  %or154 = and i16 %bf.lshr, 3
  %speed = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 5
  %5 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp ugt i32 %6, 4
  %7 = lshr i16 %bf.load, 8
  %8 = and i16 %7, 4
  %or18155 = or i16 %or154, %8
  %9 = lshr i16 %bf.load, 6
  %10 = and i16 %9, 8
  %or27156 = or i16 %or18155, %10
  %result.sroa.0.0.v = select i1 %cmp, i16 %or27156, i16 %or154
  %result.sroa.0.0 = trunc i16 %result.sroa.0.0.v to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_get_status.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_get_status, %if.then76)) #8
          to label %if.then32 [label %if.then76], !srcloc !152

if.then32:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %conv34 = zext i16 %result.sroa.0.0.v to i32
  %13 = ptrtoint ptr %is_self_powered to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load36 = load i16, ptr %is_self_powered, align 4
  %bf.lshr37 = lshr i16 %bf.load36, 10
  %bf.clear38 = and i16 %bf.lshr37, 1
  %bf.cast39 = zext i16 %bf.clear38 to i32
  %bf.lshr42 = lshr i16 %bf.load36, 9
  %bf.clear43 = and i16 %bf.lshr42, 1
  %bf.cast44 = zext i16 %bf.clear43 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_get_status.__UNIQUE_ID_ddebug332, ptr noundef %12, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i32 noundef %conv34, i32 noundef %bf.cast39, i32 noundef %bf.cast44) #8
  br label %if.then76

sw.bb46:                                          ; preds = %entry
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 3
  %14 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %wIndex, align 1
  %16 = lshr i16 %15, 8
  %17 = trunc i16 %16 to i8
  %conv52 = and i8 %17, 15
  %conv53 = zext i8 %conv52 to i32
  %num_eps = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 12
  %18 = ptrtoint ptr %num_eps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_eps, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv53)
  %cmp54.not = icmp sgt i32 %19, %conv53
  br i1 %cmp54.not, label %if.end57, label %sw.bb46.if.end113_crit_edge

sw.bb46.if.end113_crit_edge:                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.end57:                                         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv52)
  %tobool58.not = icmp eq i8 %conv52, 0
  br i1 %tobool58.not, label %if.end57.if.then76_crit_edge, label %if.end60

if.end57.if.then76_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

if.end60:                                         ; preds = %if.end57
  %in_eps = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 9
  %out_eps = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool61.not167 = icmp slt i16 %15, 0
  %cond.in = select i1 %tobool61.not167, ptr %in_eps, ptr %out_eps
  %20 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %cond = load ptr, ptr %cond.in, align 4
  %desc = getelementptr %struct.mtu3_ep, ptr %cond, i32 %conv53, i32 15
  %21 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %desc, align 4
  %tobool63.not = icmp eq ptr %22, null
  br i1 %tobool63.not, label %if.end60.if.end113_crit_edge, label %if.end65

if.end60.if.end113_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.end65:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr %struct.mtu3_ep, ptr %cond, i32 %conv53, i32 16
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %25 = trunc i32 %24 to i8
  %26 = lshr i8 %25, 1
  %27 = and i8 %26, 1
  br label %if.then76

if.then76:                                        ; preds = %if.end65, %if.end57.if.then76_crit_edge, %if.then32, %sw.bb, %entry.if.then76_crit_edge
  %result.sroa.0.1.ph = phi i8 [ %27, %if.end65 ], [ %result.sroa.0.0, %if.then32 ], [ 0, %entry.if.then76_crit_edge ], [ 0, %if.end57.if.then76_crit_edge ], [ %result.sroa.0.0, %sw.bb ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_get_status.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_get_status, %do.end96)) #8
          to label %if.then91 [label %do.end96], !srcloc !152

if.then91:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  %dev92 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %28 = ptrtoint ptr %dev92 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev92, align 8
  %result.sroa.0.0.insert.ext = zext i8 %result.sroa.0.1.ph to i32
  %result.sroa.0.0.insert.shift = shl nuw nsw i32 %result.sroa.0.0.insert.ext, 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_get_status.__UNIQUE_ID_ddebug333, ptr noundef %29, ptr noundef nonnull @.str.47, i32 noundef %result.sroa.0.0.insert.shift) #8
  br label %do.end96

do.end96:                                         ; preds = %if.then91, %if.then76
  %setup_buf = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 20
  %30 = ptrtoint ptr %setup_buf to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %result.sroa.0.1.ph, ptr %setup_buf, align 4
  %result.sroa.15.0.arraydecay97.sroa_idx = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 20, i32 1
  %31 = ptrtoint ptr %result.sroa.15.0.arraydecay97.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %result.sroa.15.0.arraydecay97.sroa_idx, align 1
  %ep0 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 11
  %32 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ep0, align 4
  %ep0_req = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 19
  %mep99 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 19, i32 2
  %34 = ptrtoint ptr %mep99 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %mep99, align 4
  %length = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 19, i32 0, i32 1
  %35 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %length, align 4
  %36 = ptrtoint ptr %ep0_req to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %setup_buf, ptr %ep0_req, align 4
  %complete = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 19, i32 0, i32 7
  %37 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ep0_dummy_complete, ptr %complete, align 4
  %call108 = tail call fastcc i32 @ep0_queue(ptr noundef %33, ptr noundef %ep0_req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109 = icmp slt i32 %call108, 0
  %spec.select157 = select i1 %cmp109, i32 %call108, i32 1
  br label %if.end113

if.end113:                                        ; preds = %do.end96, %if.end60.if.end113_crit_edge, %sw.bb46.if.end113_crit_edge, %entry.if.end113_crit_edge
  %handled.2 = phi i32 [ %spec.select157, %do.end96 ], [ -22, %sw.bb46.if.end113_crit_edge ], [ -22, %if.end60.if.end113_crit_edge ], [ 0, %entry.if.end113_crit_edge ]
  ret i32 %handled.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_ep_stall_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_test_mode(ptr nocapture noundef %mtu, ptr nocapture noundef readonly %setup) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %0 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_base, align 4
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 3
  %2 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %wIndex, align 1
  %trunc = trunc i16 %3 to i8
  %4 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %trunc, label %entry.out_crit_edge [
    i8 1, label %do.body
    i8 2, label %do.body5
    i8 3, label %do.body26
    i8 4, label %do.body47
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_test_mode.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_test_mode, %sw.epilog)) #8
          to label %if.then [label %sw.epilog], !srcloc !152

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_test_mode.__UNIQUE_ID_ddebug334, ptr noundef %6, ptr noundef nonnull @.str.41) #8
  br label %sw.epilog

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_test_mode.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_test_mode, %sw.epilog)) #8
          to label %if.then19 [label %sw.epilog], !srcloc !152

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  %dev20 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %7 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev20, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_test_mode.__UNIQUE_ID_ddebug335, ptr noundef %8, ptr noundef nonnull @.str.42) #8
  br label %sw.epilog

do.body26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_test_mode.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_test_mode, %sw.epilog)) #8
          to label %if.then40 [label %sw.epilog], !srcloc !152

if.then40:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  %dev41 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %9 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev41, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_test_mode.__UNIQUE_ID_ddebug336, ptr noundef %10, ptr noundef nonnull @.str.43) #8
  br label %sw.epilog

do.body47:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_test_mode.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_test_mode, %sw.epilog)) #8
          to label %if.then61 [label %sw.epilog], !srcloc !152

if.then61:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  %dev62 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %11 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev62, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_test_mode.__UNIQUE_ID_ddebug337, ptr noundef %12, ptr noundef nonnull @.str.44) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then61, %do.body47, %if.then40, %do.body26, %if.then19, %do.body5, %if.then, %do.body
  %cmp = phi i1 [ true, %if.then61 ], [ true, %do.body47 ], [ false, %if.then40 ], [ false, %do.body26 ], [ false, %if.then19 ], [ false, %do.body5 ], [ false, %if.then ], [ false, %do.body ]
  %.sink = phi i8 [ 8, %if.then61 ], [ 8, %do.body47 ], [ 1, %if.then40 ], [ 1, %do.body26 ], [ 4, %if.then19 ], [ 4, %do.body5 ], [ 2, %if.then ], [ 2, %do.body ]
  %test_mode_nr66 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 25
  %13 = ptrtoint ptr %test_mode_nr66 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink, ptr %test_mode_nr66, align 1
  %test_mode = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %14 = ptrtoint ptr %test_mode to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %test_mode, align 4
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %test_mode, align 4
  %test_mode_nr67 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 25
  br i1 %cmp, label %if.then70, label %sw.epilog.if.end71_crit_edge

sw.epilog.if.end71_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then70:                                        ; preds = %sw.epilog
  %ep0.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 11
  %15 = ptrtoint ptr %ep0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ep0.i, align 4
  %mtu.i.i = getelementptr inbounds %struct.mtu3_ep, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mtu.i.i, align 4
  %mac_base.i.i = getelementptr inbounds %struct.mtu3, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %mac_base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mac_base.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_write_fifo.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_test_mode, %ep0_load_test_packet.exit)) #8
          to label %if.then.i.i [label %ep0_load_test_packet.exit], !srcloc !152

if.then.i.i:                                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mtu.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.mtu3, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i, align 8
  %epnum.i.i = getelementptr inbounds %struct.mtu3_ep, ptr %16, i32 0, i32 3
  %25 = ptrtoint ptr %epnum.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %epnum.i.i, align 4
  %conv.i.i = zext i8 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_write_fifo.__UNIQUE_ID_ddebug328, ptr noundef %24, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef %conv.i.i, i32 noundef 53, ptr noundef nonnull @mtu3_test_packet) #8
  br label %ep0_load_test_packet.exit

ep0_load_test_packet.exit:                        ; preds = %if.then.i.i, %if.then70
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 768
  tail call void @__raw_writesl(ptr noundef %add.ptr.i.i, ptr noundef nonnull @mtu3_test_packet, i32 noundef 13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 126) #8, !srcloc !157
  br label %if.end71

if.end71:                                         ; preds = %ep0_load_test_packet.exit, %sw.epilog.if.end71_crit_edge
  %27 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mac_base, align 4
  %add.ptr.i.i139 = getelementptr i8, ptr %28, i32 256
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i139) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %30 = and i32 %29, -19201
  %31 = or i32 %30, 2560
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i139, i32 %31) #8, !srcloc !151
  %call72 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call72, 5000000
  %add.ptr = getelementptr i8, ptr %1, i32 256
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  %33 = and i32 %32, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool77.not146 = icmp eq i32 %33, 0
  br i1 %tobool77.not146, label %if.end71.for.end_crit_edge, label %if.end71.land.lhs.true_crit_edge

if.end71.land.lhs.true_crit_edge:                 ; preds = %if.end71
  br label %land.lhs.true

if.end71.for.end_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.end71.land.lhs.true_crit_edge
  %call81 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call81, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call81, %add.i
  br i1 %cmp3.i, label %if.then85, label %cond.false

if.then85:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 21474800) #8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  %37 = and i32 %36, 2048
  %tobool77.not = icmp eq i32 %37, 0
  br i1 %tobool77.not, label %cond.false.for.end_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then85, %if.end71.for.end_crit_edge
  %38 = ptrtoint ptr %test_mode_nr67 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %test_mode_nr67, align 1
  %conv107 = zext i8 %39 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %40 = shl nuw i32 %conv107, 24
  %add.ptr.i = getelementptr i8, ptr %1, i32 9236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %40) #8, !srcloc !151
  %ep0_state = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 16
  %41 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %ep0_state, align 8
  br label %out

out:                                              ; preds = %for.end, %entry.out_crit_edge
  %handled.0 = phi i32 [ 1, %for.end ], [ -22, %entry.out_crit_edge ]
  ret i32 %handled.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ep0_dummy_complete(ptr nocapture noundef %ep, ptr nocapture noundef %req) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep0_queue(ptr noundef %mep, ptr noundef %mreq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu1 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 2
  %0 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtu1, align 4
  %mtu2 = getelementptr inbounds %struct.mtu3_request, ptr %mreq, i32 0, i32 3
  %2 = ptrtoint ptr %mtu2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %mtu2, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %mreq, i32 0, i32 12
  %3 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %actual, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %mreq, i32 0, i32 11
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -115, ptr %status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_queue.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_queue, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !152

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 1
  %ep0_state.i = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %ep0_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ep0_state.i, align 8
  %switch.tableidx = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 5
  br i1 %9, label %switch.lookup, label %if.then.decode_ep0_state.exit_crit_edge

if.then.decode_ep0_state.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %decode_ep0_state.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.ep0_queue, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %decode_ep0_state.exit

decode_ep0_state.exit:                            ; preds = %switch.lookup, %if.then.decode_ep0_state.exit_crit_edge
  %retval.0.i45 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.18, %if.then.decode_ep0_state.exit_crit_edge ]
  %length = getelementptr inbounds %struct.usb_request, ptr %mreq, i32 0, i32 1
  %11 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_queue.__UNIQUE_ID_ddebug353, ptr noundef %6, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, ptr noundef %name, ptr noundef nonnull %retval.0.i45, i32 noundef %12) #8
  br label %do.end

do.end:                                           ; preds = %decode_ep0_state.exit, %entry
  %ep0_state = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ep0_state, align 8
  %.off = add i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.epilog, label %do.end11

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev12 = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %switch.selectcmp = icmp eq i32 %14, 4
  %switch.select = select i1 %switch.selectcmp, ptr @.str.16, ptr @.str.18
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %switch.selectcmp55 = icmp eq i32 %14, 5
  %switch.select56 = select i1 %switch.selectcmp55, ptr @.str.17, ptr %switch.select
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, ptr noundef nonnull %switch.select56) #11
  br label %cleanup

sw.epilog:                                        ; preds = %do.end
  %delayed_status = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 23
  %17 = ptrtoint ptr %delayed_status to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %delayed_status, align 4
  %18 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool14.not = icmp eq i16 %18, 0
  br i1 %tobool14.not, label %if.end19, label %if.then15

if.then15:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear18 = and i16 %bf.load, -129
  %19 = ptrtoint ptr %delayed_status to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %bf.clear18, ptr %delayed_status, align 4
  %mac_base.i = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %mac_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 256
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %23 = and i32 %22, -19201
  %24 = or i32 %23, 2560
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %24) #8, !srcloc !151
  br label %cleanup

if.end19:                                         ; preds = %sw.epilog
  %req_list = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 12
  %25 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %req_list, align 4
  %cmp.i.not = icmp eq ptr %26, %req_list
  br i1 %cmp.i.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %list = getelementptr inbounds %struct.mtu3_request, ptr %mreq, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 12, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %28, ptr noundef %req_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end23.list_add_tail.exit_crit_edge

if.end23.list_add_tail.exit_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list, ptr %prev.i, align 4
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %req_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mtu3_request, ptr %mreq, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %list, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end23.list_add_tail.exit_crit_edge
  %33 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ep0_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp = icmp eq i32 %34, 2
  br i1 %cmp, label %if.then26, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ep0_tx_state(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %list_add_tail.exit.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then15, %do.end11
  %retval.0 = phi i32 [ -22, %do.end11 ], [ 0, %if.then15 ], [ -16, %if.end19.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ep0_set_sel_complete(ptr nocapture noundef readnone %ep, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %sel.sroa.0.0.copyload = load i8, ptr %1, align 1
  %sel.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 1
  %3 = ptrtoint ptr %sel.sroa.5.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %sel.sroa.5.0.copyload = load i8, ptr %sel.sroa.5.0..sroa_idx, align 1
  %sel.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 2
  %4 = ptrtoint ptr %sel.sroa.7.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %sel.sroa.7.0.copyload = load i16, ptr %sel.sroa.7.0..sroa_idx, align 1
  %sel.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 4
  %5 = ptrtoint ptr %sel.sroa.9.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %sel.sroa.9.0.copyload = load i16, ptr %sel.sroa.9.0..sroa_idx, align 1
  %mtu1 = getelementptr inbounds %struct.mtu3_request, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mtu1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_set_sel_complete.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_set_sel_complete, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %conv = zext i8 %sel.sroa.0.0.copyload to i32
  %conv6 = zext i8 %sel.sroa.5.0.copyload to i32
  %conv7 = zext i16 %sel.sroa.7.0.copyload to i32
  %conv8 = zext i16 %sel.sroa.9.0.copyload to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_set_sel_complete.__UNIQUE_ID_ddebug331, ptr noundef %9, ptr noundef nonnull @.str.54, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !21, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !98, !99, !101, !102, !104, !106, !107, !108, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !137}
!llvm.named.register.sp = !{!138}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 719, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mtu3_ep0_isr.__UNIQUE_ID_ddebug350, !1, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 727, i32 2}
!8 = !{ptr @mtu3_ep0_isr.__UNIQUE_ID_ddebug351, !7, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 728, i32 27}
!11 = !{ptr @mtu3_ep0_isr.__UNIQUE_ID_ddebug352, !12, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!12 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 755, i32 3}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 763, i32 4}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mtu3_ep0_isr._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @mtu3_ep0_isr._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @mtu3_ep0_ops, !20, !"mtu3_ep0_ops", i1 false, i1 false}
!20 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 908, i32 25}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 152, i32 2}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ep0_stall_set.__UNIQUE_ID_ddebug330, !22, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!25 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 43, i32 10}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 45, i32 10}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 47, i32 10}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 49, i32 10}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 51, i32 10}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 53, i32 10}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 572, i32 2}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ep0_tx_state.__UNIQUE_ID_ddebug342, !40, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 586, i32 2}
!45 = !{ptr @ep0_tx_state.__UNIQUE_ID_ddebug345, !44, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 599, i32 2}
!48 = !{ptr @ep0_tx_state.__UNIQUE_ID_ddebug346, !47, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 85, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ep0_write_fifo.__UNIQUE_ID_ddebug328, !50, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 518, i32 2}
!55 = !{ptr @ep0_rx_state.__UNIQUE_ID_ddebug339, !54, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 542, i32 4}
!58 = !{ptr @ep0_rx_state.__UNIQUE_ID_ddebug340, !57, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 551, i32 3}
!61 = !{ptr @ep0_rx_state.__UNIQUE_ID_ddebug341, !60, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 106, i32 2}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ep0_read_fifo.__UNIQUE_ID_ddebug329, !63, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 651, i32 2}
!68 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ep0_handle_setup.__UNIQUE_ID_ddebug348, !67, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 662, i32 3}
!72 = !{ptr @ep0_handle_setup.__UNIQUE_ID_ddebug349, !71, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 614, i32 2}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @ep0_read_setup.__UNIQUE_ID_ddebug347, !74, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../drivers/usb/mtu3/mtu3_trace.h", i32 113, i32 1}
!79 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!80 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!81 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!84 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 456, i32 3}
!87 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @handle_standard_request.__UNIQUE_ID_ddebug338, !86, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 282, i32 3}
!91 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @handle_test_mode.__UNIQUE_ID_ddebug334, !90, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 286, i32 3}
!95 = !{ptr @handle_test_mode.__UNIQUE_ID_ddebug335, !94, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 290, i32 3}
!98 = !{ptr @handle_test_mode.__UNIQUE_ID_ddebug336, !97, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 294, i32 3}
!101 = !{ptr @handle_test_mode.__UNIQUE_ID_ddebug337, !100, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!102 = !{ptr @mtu3_test_packet, !103, !"mtu3_test_packet", i1 false, i1 false}
!103 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 21, i32 17}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 224, i32 3}
!106 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @ep0_get_status.__UNIQUE_ID_ddebug332, !105, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 261, i32 3}
!110 = !{ptr @ep0_get_status.__UNIQUE_ID_ddebug333, !109, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 802, i32 2}
!113 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @ep0_queue.__UNIQUE_ID_ddebug353, !112, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 811, i32 3}
!117 = !{ptr @ep0_queue._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @ep0_queue._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 191, i32 3}
!121 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @ep0_set_sel._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @ep0_set_sel._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 180, i32 2}
!126 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @ep0_set_sel_complete.__UNIQUE_ID_ddebug331, !125, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!128 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 76, i32 2}
!130 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @forward_to_driver.__UNIQUE_ID_ddebug327, !129, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 877, i32 2}
!134 = !{ptr @mtu3_ep0_halt.__UNIQUE_ID_ddebug354, !133, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/mtu3/mtu3_gadget_ep0.c", i32 898, i32 3}
!137 = !{ptr @mtu3_ep0_halt.__UNIQUE_ID_ddebug355, !136, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!138 = !{!"sp"}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{i64 3003681}
!149 = !{i64 2155394029}
!150 = !{i64 2155393216}
!151 = !{i64 3003263}
!152 = !{i64 2148718873, i64 2148718878, i64 2148718891, i64 2148718935, i64 2148718969, i64 2148718990}
!153 = !{i64 2155768488}
!154 = !{i64 2155765105}
!155 = !{i64 3002643}
!156 = !{i64 2155765523}
!157 = !{i64 3003066}
!158 = !{!"branch_weights", i32 2000, i32 1}
!159 = !{i64 2155552872}
!160 = !{i64 2155553079}
!161 = !{i64 2149358627}
!162 = !{i64 2149359663}
!163 = !{i64 2155797137}
!164 = !{i64 2155797659}
