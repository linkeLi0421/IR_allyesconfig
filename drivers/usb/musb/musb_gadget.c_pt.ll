; ModuleID = '/llk/IR_all_yes/drivers/usb/musb/musb_gadget.c_pt.bc'
source_filename = "../drivers/usb/musb/musb_gadget.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.musb_ep = type { %struct.usb_ep, [12 x i8], ptr, ptr, i8, i8, i8, i16, ptr, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.musb_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, i8, i8, i32 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.musb_hw_ep = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, i8, %struct.musb_ep, %struct.musb_ep }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.musb_platform_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>

@musb_readw = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"<== %s, txcsr %04x\00", [45 x i8] zeroinitializer }, align 32
@musb_writew = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s idle now\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"<== %s, rxcsr %04x%s %p\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s iso overrun on %p\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s, incomprx\00", [19 x i8] zeroinitializer }, align 32
@musb_gadget_operations = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @musb_gadget_get_frame, ptr @musb_gadget_wakeup, ptr @musb_gadget_set_self_powered, ptr null, ptr @musb_gadget_vbus_draw, ptr @musb_gadget_pullup, ptr null, ptr null, ptr @musb_gadget_start, ptr @musb_gadget_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@musb_driver_name = external dso_local constant [0 x i8], align 1
@musb_gadget_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&musb->gadget_work)->work)\00", [49 x i8] zeroinitializer }, align 32
@musb_gadget_setup.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&musb->gadget_work)->timer\00", [35 x i8] zeroinitializer }, align 32
@musb_g_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 1942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s %d: unhandled RESUME transition (%s)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"musb_g_resume\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/musb/musb_gadget.c\00", [33 x i8] zeroinitializer }, align 32
@musb_g_resume._entry_ptr = internal global ptr @musb_g_resume._entry, section ".printk_index", align 4
@musb_readb = external dso_local local_unnamed_addr global ptr, align 4
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"musb_g_suspend: devctl %02x\00", [36 x i8] zeroinitializer }, align 32
@musb_g_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.15, i32 1972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s %d: unhandled SUSPEND transition (%s)\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"musb_g_suspend\00", [17 x i8] zeroinitializer }, align 32
@musb_g_suspend._entry_ptr = internal global ptr @musb_g_suspend._entry, section ".printk_index", align 4
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"musb_g_disconnect: devctl %02x\00", [33 x i8] zeroinitializer }, align 32
@musb_writeb = external dso_local local_unnamed_addr global ptr, align 4
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unhandled disconnect %s, setting a_idle\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"<== %s driver '%s'\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"B-Device\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"A-Device\00", [23 x i8] zeroinitializer }, align 32
@__tracepoint_musb_req_gb = external dso_local global %struct.tracepoint, align 4
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/musb/musb_trace.h\00", [34 x i8] zeroinitializer }, align 32
@trace_musb_req_gb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_musb_req_tx = external dso_local global %struct.tracepoint, align 4
@trace_musb_req_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ep:%s disabled - ignore request\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s old packet still ready , txcsr %03x\00", [57 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s stalling, txcsr %03x\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"hw_ep%d, maxpacket %d, fifo count %d, txcsr %03x\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s TX/IN %s len %d/%d, txcsr %04x, fifo %d/%d\00", [50 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pio\00", [28 x i8] zeroinitializer }, align 32
@__tracepoint_musb_req_rx = external dso_local global %struct.tracepoint, align 4
@trace_musb_req_rx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s stalling, RXCSR %04x\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_musb_req_alloc = external dso_local global %struct.tracepoint, align 4
@trace_musb_req_alloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_musb_req_free = external dso_local global %struct.tracepoint, align 4
@trace_musb_req_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_musb_req_start = external dso_local global %struct.tracepoint, align 4
@trace_musb_req_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gadget D+ pullup %s\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep%d%s\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@musb_g_ep0_ops = external dso_local constant %struct.usb_ep_ops, align 4
@musb_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @musb_gadget_enable, ptr @musb_gadget_disable, ptr null, ptr @musb_alloc_request, ptr @musb_free_request, ptr @musb_gadget_queue, ptr @musb_gadget_dequeue, ptr @musb_gadget_set_halt, ptr @musb_gadget_set_wedge, ptr @musb_gadget_fifo_status, ptr @musb_gadget_fifo_flush }, [52 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"no support for high bandwidth ISO\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"packet size beyond hardware FIFO size\00", [58 x i8] zeroinitializer }, align 32
@musb_gadget_enable.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.46, ptr @.str.15, ptr @.str.47, i8 1, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"musb_hdrc\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"musb_gadget_enable\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s periph: enabled %s for %s %s, %smaxpacket %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IN\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OUT\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dma, \00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctrl\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iso\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bulk\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@musb_gadget_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.15, i32 1214, ptr @.str.58, ptr @.str.59 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pm runtime get failed in %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"musb_gadget_queue\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@musb_gadget_queue._entry_ptr = internal global ptr @musb_gadget_queue._entry, section ".printk_index", align 4
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"req %p queued to %s while ep %s\00", [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@musb_gadget_queue._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.57, ptr @.str.15, i32 1252, ptr @.str.58, ptr @.str.59 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s resume work: %i\0A\00", [44 x i8] zeroinitializer }, align 32
@musb_gadget_queue._entry_ptr.64 = internal global ptr @musb_gadget_queue._entry.62, section ".printk_index", align 4
@__tracepoint_musb_req_enq = external dso_local global %struct.tracepoint, align 4
@trace_musb_req_enq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@musb_gadget_dequeue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.15, i32 1287, ptr @.str.58, ptr @.str.59 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"request %p not queued to %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"musb_gadget_dequeue\00", [44 x i8] zeroinitializer }, align 32
@musb_gadget_dequeue._entry_ptr = internal global ptr @musb_gadget_dequeue._entry, section ".printk_index", align 4
@__tracepoint_musb_req_deq = external dso_local global %struct.tracepoint, align 4
@trace_musb_req_deq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"request in progress, cannot halt %s\00", [60 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FIFO busy, cannot halt %s\00", [38 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: %s stall\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clear\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"restarting the request\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Sending SRP: devctl: %02x\00", [38 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unhandled wake: %s\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"issue wakeup\00", [19 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.musb_gadget_enable = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.78 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 11]
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 421, i32 17 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 503, i32 20 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 815, i32 17 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 816, i32 26 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 830, i32 18 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 836, i32 18 }
@___asan_gen_.97 = private unnamed_addr constant [23 x i8] c"musb_gadget_operations\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1671, i32 36 }
@___asan_gen_.106 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1793, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1941, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1952, i32 17 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1971, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1988, i32 17 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 2005, i32 18 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 2035, i32 17 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 2037, i32 7 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 2037, i32 20 }
@___asan_gen_.155 = private unnamed_addr constant [33 x i8] c"../drivers/usb/musb/musb_trace.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 272, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 108, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 236, i32 18 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 255, i32 18 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 261, i32 18 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 266, i32 17 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 394, i32 17 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 395, i32 47 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 551, i32 18 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1605, i32 17 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1606, i32 11 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1606, i32 18 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1705, i32 20 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1707, i32 13 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1707, i32 20 }
@___asan_gen_.199 = private unnamed_addr constant [12 x i8] c"musb_ep_ops\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1490, i32 32 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 952, i32 19 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 975, i32 19 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1064, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 434, i32 7 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 437, i32 7 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 440, i32 7 }
@___asan_gen_.236 = private unnamed_addr constant [32 x i8] c"../drivers/usb/musb/musb_core.h\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 443, i32 7 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1118, i32 17 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1212, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1235, i32 18 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1236, i32 20 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1251, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1286, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1353, i32 19 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1362, i32 20 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1372, i32 17 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1372, i32 51 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1372, i32 59 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1399, i32 18 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1535, i32 18 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1563, i32 18 }
@___asan_gen_.301 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.302 = private constant [34 x i8] c"../drivers/usb/musb/musb_gadget.c\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1573, i32 17 }
@___asan_gen_.304 = private unnamed_addr constant [32 x i8] c"switch.table.musb_gadget_enable\00", align 1
@llvm.compiler.used = appending global [81 x ptr] [ptr @musb_g_resume._entry, ptr @musb_g_resume._entry_ptr, ptr @musb_g_suspend._entry, ptr @musb_g_suspend._entry_ptr, ptr @musb_gadget_dequeue._entry, ptr @musb_gadget_dequeue._entry_ptr, ptr @musb_gadget_queue._entry, ptr @musb_gadget_queue._entry.62, ptr @musb_gadget_queue._entry_ptr, ptr @musb_gadget_queue._entry_ptr.64, ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @musb_gadget_operations, ptr @musb_gadget_setup.__key, ptr @.str.10, ptr @musb_gadget_setup.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @musb_ep_ops, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @switch.table.musb_gadget_enable], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_gadget_operations to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_gadget_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_gadget_setup.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_g_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_g_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_gadget_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_gadget_queue._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_gadget_dequeue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.musb_gadget_enable to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @musb_g_giveback(ptr nocapture noundef %ep, ptr noundef %request, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %busy1 = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 12
  %0 = ptrtoint ptr %busy1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %busy1, align 1
  %list = getelementptr inbounds %struct.musb_request, ptr %request, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.musb_request, ptr %request, i32 0, i32 1, i32 1
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
  %prev.i = getelementptr inbounds %struct.musb_request, ptr %request, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %status3 = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 11
  %10 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %11)
  %cmp = icmp eq i32 %11, -115
  br i1 %cmp, label %if.then, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %status3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %status, ptr %status3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  %musb7 = getelementptr inbounds %struct.musb_request, ptr %request, i32 0, i32 3
  %13 = ptrtoint ptr %musb7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %musb7, align 4
  %15 = ptrtoint ptr %busy1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %busy1, align 1
  tail call void @_raw_spin_unlock(ptr noundef %14) #10
  %dev = getelementptr inbounds %struct.musb, ptr %14, i32 0, i32 56, i32 11
  %dma = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 2
  %16 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %17) #10
  tail call fastcc void @trace_musb_req_gb(ptr noundef %request)
  %ep11 = getelementptr inbounds %struct.musb_request, ptr %request, i32 0, i32 2
  %18 = ptrtoint ptr %ep11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep11, align 4
  tail call void @usb_gadget_giveback_request(ptr noundef %19, ptr noundef %request) #10
  tail call void @_raw_spin_lock(ptr noundef %14) #10
  %20 = ptrtoint ptr %busy1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %1, ptr %busy1, align 1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_musb_req_gb(ptr noundef %req) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_gb, i32 0, i32 1), ptr blockaddress(@trace_musb_req_gb, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !183

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !184

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !173) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !185
  %call42 = tail call i32 @__traceiter_musb_req_gb(ptr noundef null, ptr noundef %req) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !186
  %13 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !184

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !173) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_gb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_gb, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_musb_req_gb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_musb_req_gb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 275, ptr noundef nonnull @.str.25) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !188
  %31 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @musb_g_tx(ptr noundef %musb, i8 noundef zeroext %epnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %0 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mregs, align 8
  %idxprom = zext i8 %epnum to i32
  %ep_in = getelementptr %struct.musb, ptr %musb, i32 0, i32 39, i32 %idxprom, i32 19
  %regs = getelementptr %struct.musb, ptr %musb, i32 0, i32 39, i32 %idxprom, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %ep_select = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep_select, align 4
  tail call void %5(ptr noundef %1, i8 noundef zeroext %epnum) #10
  %req_list.i = getelementptr %struct.musb, ptr %musb, i32 0, i32 39, i32 %idxprom, i32 19, i32 10
  %6 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %req_list.i
  %add.ptr.i = getelementptr i8, ptr %7, i32 -56
  %spec.select.i = select i1 %cmp.i.not.i, ptr null, ptr %add.ptr.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %8 = load ptr, ptr @musb_readw, align 4
  %call5 = tail call zeroext i16 %8(ptr noundef %3, i32 noundef 2) #10
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep_in, i32 0, i32 1
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %conv = zext i16 %call5 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str, ptr noundef %10, i32 noundef %conv) #10
  %and = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or = and i16 %call5, -167
  %11 = or i16 %or, 134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %12 = load ptr, ptr @musb_writew, align 4
  tail call void %12(ptr noundef %3, i32 noundef 2, i16 noundef zeroext %11) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and13 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end.if.end22_crit_edge, label %if.then15

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %or17 = and i16 %call5, -168
  %13 = or i16 %or17, 162
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %14 = load ptr, ptr @musb_writew, align 4
  tail call void %14(ptr noundef %3, i32 noundef 2, i16 noundef zeroext %13) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then15, %if.end.if.end22_crit_edge
  %csr.0 = phi i16 [ %13, %if.then15 ], [ %call5, %if.end.if.end22_crit_edge ]
  %tobool29.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool29.not, label %if.end22.cleanup_crit_edge, label %if.then30

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then30:                                        ; preds = %if.end22
  tail call fastcc void @trace_musb_req_tx(ptr noundef nonnull %spec.select.i)
  %zero = getelementptr inbounds %struct.usb_request, ptr %spec.select.i, i32 0, i32 6
  %15 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load = load i32, ptr %zero, align 4
  %16 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool49.not = icmp eq i32 %16, 0
  br i1 %tobool49.not, label %if.then30.if.end71_crit_edge, label %land.lhs.true50

if.then30.if.end71_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

land.lhs.true50:                                  ; preds = %if.then30
  %length = getelementptr inbounds %struct.usb_request, ptr %spec.select.i, i32 0, i32 1
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool51.not = icmp eq i32 %18, 0
  br i1 %tobool51.not, label %land.lhs.true50.if.end71_crit_edge, label %land.lhs.true52

land.lhs.true50.if.end71_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

land.lhs.true52:                                  ; preds = %land.lhs.true50
  %packet_sz = getelementptr %struct.musb, ptr %musb, i32 0, i32 39, i32 %idxprom, i32 19, i32 7
  %19 = ptrtoint ptr %packet_sz to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %packet_sz, align 4
  %conv54 = zext i16 %20 to i32
  %rem = urem i32 %18, %conv54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp55 = icmp eq i32 %rem, 0
  br i1 %cmp55, label %land.lhs.true57, label %land.lhs.true52.if.end71_crit_edge

land.lhs.true52.if.end71_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

land.lhs.true57:                                  ; preds = %land.lhs.true52
  %actual58 = getelementptr inbounds %struct.usb_request, ptr %spec.select.i, i32 0, i32 12
  %21 = ptrtoint ptr %actual58 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %actual58, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %18)
  %cmp60 = icmp eq i32 %22, %18
  br i1 %cmp60, label %if.then62, label %land.lhs.true57.if.end71_crit_edge

land.lhs.true57.if.end71_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then62:                                        ; preds = %land.lhs.true57
  %23 = and i16 %csr.0, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool65.not = icmp eq i16 %23, 0
  br i1 %tobool65.not, label %if.end67, label %if.then62.cleanup_crit_edge

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end67:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %24 = load ptr, ptr @musb_writew, align 4
  tail call void %24(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 8193) #10
  %25 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load69 = load i32, ptr %zero, align 4
  %bf.clear70 = and i32 %bf.load69, -8193
  store i32 %bf.clear70, ptr %zero, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.end67, %land.lhs.true57.if.end71_crit_edge, %land.lhs.true52.if.end71_crit_edge, %land.lhs.true50.if.end71_crit_edge, %if.then30.if.end71_crit_edge
  %actual72 = getelementptr inbounds %struct.usb_request, ptr %spec.select.i, i32 0, i32 12
  %26 = ptrtoint ptr %actual72 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %actual72, align 4
  %length73 = getelementptr inbounds %struct.usb_request, ptr %spec.select.i, i32 0, i32 1
  %28 = ptrtoint ptr %length73 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp74 = icmp eq i32 %27, %29
  br i1 %cmp74, label %if.then76, label %if.end71.if.end86_crit_edge

if.end71.if.end86_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then76:                                        ; preds = %if.end71
  tail call void @musb_g_giveback(ptr noundef %ep_in, ptr noundef nonnull %spec.select.i, i32 noundef 0)
  %30 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ep_select, align 4
  tail call void %31(ptr noundef %1, i8 noundef zeroext %epnum) #10
  %desc = getelementptr %struct.musb, ptr %musb, i32 0, i32 39, i32 %idxprom, i32 19, i32 8
  %32 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc, align 4
  %tobool79.not = icmp eq ptr %33, null
  br i1 %tobool79.not, label %if.then76.if.then82_crit_edge, label %cond.true

if.then76.if.then82_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then82

cond.true:                                        ; preds = %if.then76
  %34 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.i.not.i152 = icmp eq ptr %35, %req_list.i
  %add.ptr.i153 = getelementptr i8, ptr %35, i32 -56
  %tobool81.not = icmp eq ptr %add.ptr.i153, null
  %or.cond = or i1 %cmp.i.not.i152, %tobool81.not
  br i1 %or.cond, label %cond.true.if.then82_crit_edge, label %cond.true.if.end86_crit_edge

cond.true.if.end86_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

cond.true.if.then82_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then82

if.then82:                                        ; preds = %cond.true.if.then82_crit_edge, %if.then76.if.then82_crit_edge
  %36 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.3, ptr noundef %37) #10
  br label %cleanup

if.end86:                                         ; preds = %cond.true.if.end86_crit_edge, %if.end71.if.end86_crit_edge
  %req.0 = phi ptr [ %add.ptr.i, %if.end71.if.end86_crit_edge ], [ %add.ptr.i153, %cond.true.if.end86_crit_edge ]
  tail call fastcc void @txstate(ptr noundef %musb, ptr noundef %req.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %if.then82, %if.then62.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_musb_req_tx(ptr noundef %req) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_tx, i32 0, i32 1), ptr blockaddress(@trace_musb_req_tx, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !183

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !184

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !173) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !189
  %call42 = tail call i32 @__traceiter_musb_req_tx(ptr noundef null, ptr noundef %req) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !190
  %13 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !184

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !173) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_tx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_tx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_musb_req_tx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_musb_req_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 280, ptr noundef nonnull @.str.25) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !188
  %31 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
define internal fastcc void @txstate(ptr noundef %musb, ptr nocapture noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %epnum1 = getelementptr inbounds %struct.musb_request, ptr %req, i32 0, i32 5
  %0 = ptrtoint ptr %epnum1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %epnum1, align 1
  %idxprom = zext i8 %1 to i32
  %regs = getelementptr %struct.musb, ptr %musb, i32 0, i32 39, i32 %idxprom, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %ep = getelementptr inbounds %struct.musb_request, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep, align 4
  %desc = getelementptr inbounds %struct.musb_ep, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.27, ptr noundef %9) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %10 = load ptr, ptr @musb_readw, align 4
  %call4 = tail call zeroext i16 %10(ptr noundef %3, i32 noundef 2) #10
  %type.i = getelementptr inbounds %struct.musb_ep, ptr %5, i32 0, i32 5
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp.i = icmp eq i8 %12, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.if.else.i_crit_edge

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %bulk_split.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %13 = ptrtoint ptr %bulk_split.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 3)
  %bf.load.i = load i24, ptr %bulk_split.i, align 8
  %14 = and i24 %bf.load.i, 65536
  %tobool.not.i = icmp eq i24 %14, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %hw_ep.i = getelementptr inbounds %struct.musb_ep, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %hw_ep.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_ep.i, align 4
  %max_packet_sz_tx.i = getelementptr inbounds %struct.musb_hw_ep, ptr %16, i32 0, i32 8
  br label %max_ep_writesize.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %packet_sz.i = getelementptr inbounds %struct.musb_ep, ptr %5, i32 0, i32 7
  br label %max_ep_writesize.exit

max_ep_writesize.exit:                            ; preds = %if.else.i, %if.then.i
  %retval.0.in.in.i = phi ptr [ %max_packet_sz_tx.i, %if.then.i ], [ %packet_sz.i, %if.else.i ]
  %17 = ptrtoint ptr %retval.0.in.in.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %retval.0.in.i = load i16, ptr %retval.0.in.in.i, align 4
  %retval.0.i = zext i16 %retval.0.in.i to i32
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %18 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %20 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %actual, align 4
  %sub = sub i32 %19, %21
  %22 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %retval.0.i)
  %conv = trunc i32 %22 to i16
  %conv8 = zext i16 %call4 to i32
  %and = and i32 %conv8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end14, label %if.then10

if.then10:                                        ; preds = %max_ep_writesize.exit
  call void @__sanitizer_cov_trace_pc() #12
  %name12 = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %name12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name12, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.29, ptr noundef %24, i32 noundef %conv8) #10
  br label %cleanup

if.end14:                                         ; preds = %max_ep_writesize.exit
  %and16 = and i32 %conv8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end22, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %name20 = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 1
  %25 = ptrtoint ptr %name20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name20, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.30, ptr noundef %26, i32 noundef %conv8) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %packet_sz = getelementptr inbounds %struct.musb_ep, ptr %5, i32 0, i32 7
  %27 = ptrtoint ptr %packet_sz to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %packet_sz, align 4
  %conv24 = zext i16 %28 to i32
  %conv25 = and i32 %22, 65535
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.31, i32 noundef %idxprom, i32 noundef %conv24, i32 noundef %conv25, i32 noundef %conv8) #10
  %hw_ep = getelementptr inbounds %struct.musb_ep, ptr %5, i32 0, i32 2
  %29 = ptrtoint ptr %hw_ep to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_ep, align 4
  %31 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %req, align 4
  %33 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %actual, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 %34
  tail call void @musb_write_fifo(ptr noundef %30, i16 noundef zeroext %conv, ptr noundef %add.ptr) #10
  %35 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %actual, align 4
  %add = add i32 %36, %conv25
  store i32 %add, ptr %actual, align 4
  %or = and i16 %call4, -6
  %37 = or i16 %or, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %38 = load ptr, ptr @musb_writew, align 4
  tail call void %38(ptr noundef %3, i32 noundef 2, i16 noundef zeroext %37) #10
  %name39 = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 1
  %39 = ptrtoint ptr %name39 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name39, align 4
  %41 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %actual, align 4
  %43 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %45 = load ptr, ptr @musb_readw, align 4
  %call44 = tail call zeroext i16 %45(ptr noundef %3, i32 noundef 2) #10
  %conv45 = zext i16 %call44 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %46 = load ptr, ptr @musb_readw, align 4
  %call47 = tail call zeroext i16 %46(ptr noundef %3, i32 noundef 0) #10
  %conv48 = zext i16 %call47 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.32, ptr noundef %40, ptr noundef nonnull @.str.34, i32 noundef %42, i32 noundef %44, i32 noundef %conv45, i32 noundef %conv25, i32 noundef %conv48) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then18, %if.then10, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @musb_g_rx(ptr noundef %musb, i8 noundef zeroext %epnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %0 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mregs, align 8
  %idxprom = zext i8 %epnum to i32
  %regs = getelementptr %struct.musb, ptr %musb, i32 0, i32 39, i32 %idxprom, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %is_shared_fifo = getelementptr %struct.musb, ptr %musb, i32 0, i32 39, i32 %idxprom, i32 5
  %4 = ptrtoint ptr %is_shared_fifo to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_shared_fifo, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %ep_in = getelementptr %struct.musb, ptr %musb, i32 0, i32 39, i32 %idxprom, i32 19
  %ep_out = getelementptr %struct.musb, ptr %musb, i32 0, i32 39, i32 %idxprom, i32 20
  %musb_ep.0 = select i1 %tobool.not, ptr %ep_out, ptr %ep_in
  %ep_select = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep_select, align 4
  tail call void %7(ptr noundef %1, i8 noundef zeroext %epnum) #10
  %req_list.i = getelementptr inbounds %struct.musb_ep, ptr %musb_ep.0, i32 0, i32 10
  %8 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %9, %req_list.i
  %add.ptr.i = getelementptr i8, ptr %9, i32 -56
  %tobool4.not121 = icmp eq ptr %add.ptr.i, null
  %tobool4.not = or i1 %cmp.i.not.i, %tobool4.not121
  br i1 %tobool4.not, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %entry
  tail call fastcc void @trace_musb_req_rx(ptr noundef nonnull %add.ptr.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %10 = load ptr, ptr @musb_readw, align 4
  %call8 = tail call zeroext i16 %10(ptr noundef %3, i32 noundef 6) #10
  %name = getelementptr inbounds %struct.usb_ep, ptr %musb_ep.0, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  %conv = zext i16 %call8 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.4, ptr noundef %12, i32 noundef %conv, ptr noundef nonnull @.str.6, ptr noundef nonnull %add.ptr.i) #10
  %and = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end18, label %if.then12

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %or = and i16 %call8, -70
  %13 = or i16 %or, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %14 = load ptr, ptr @musb_writew, align 4
  tail call void %14(ptr noundef %3, i32 noundef 6, i16 noundef zeroext %13) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %and20 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.if.end31_crit_edge, label %if.then22

if.end18.if.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then22:                                        ; preds = %if.end18
  %and24 = and i16 %call8, -5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %15 = load ptr, ptr @musb_writew, align 4
  tail call void %15(ptr noundef %3, i32 noundef 6, i16 noundef zeroext %and24) #10
  %name26 = getelementptr inbounds %struct.musb_ep, ptr %musb_ep.0, i32 0, i32 1
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.7, ptr noundef %name26, ptr noundef nonnull %add.ptr.i) #10
  %status = getelementptr i8, ptr %9, i32 -8
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %17)
  %cmp = icmp eq i32 %17, -115
  br i1 %cmp, label %if.then28, label %if.then22.if.end31_crit_edge

if.then22.if.end31_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then28:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -75, ptr %status, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then22.if.end31_crit_edge, %if.end18.if.end31_crit_edge
  %csr.0 = phi i16 [ %and24, %if.then28 ], [ %and24, %if.then22.if.end31_crit_edge ], [ %call8, %if.end18.if.end31_crit_edge ]
  %19 = and i16 %csr.0, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool34.not = icmp eq i16 %19, 0
  br i1 %tobool34.not, label %if.end31.if.end38_crit_edge, label %if.then35

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.8, ptr noundef %21) #10
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end31.if.end38_crit_edge
  tail call fastcc void @rxstate(ptr noundef %musb, ptr noundef nonnull %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then12, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_musb_req_rx(ptr noundef %req) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_rx, i32 0, i32 1), ptr blockaddress(@trace_musb_req_rx, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !183

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !184

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !173) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !192
  %call42 = tail call i32 @__traceiter_musb_req_rx(ptr noundef null, ptr noundef %req) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !193
  %13 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !184

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !173) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_rx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_rx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_musb_req_rx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_musb_req_rx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 285, ptr noundef nonnull @.str.25) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !188
  %31 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
define internal fastcc void @rxstate(ptr noundef %musb, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %epnum1 = getelementptr inbounds %struct.musb_request, ptr %req, i32 0, i32 5
  %0 = ptrtoint ptr %epnum1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %epnum1, align 1
  %idxprom = zext i8 %1 to i32
  %regs = getelementptr %struct.musb, ptr %musb, i32 0, i32 39, i32 %idxprom, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %4 = load ptr, ptr @musb_readw, align 4
  %call = tail call zeroext i16 %4(ptr noundef %3, i32 noundef 6) #10
  %is_shared_fifo = getelementptr %struct.musb, ptr %musb, i32 0, i32 39, i32 %idxprom, i32 5
  %5 = ptrtoint ptr %is_shared_fifo to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_shared_fifo, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %ep_in = getelementptr %struct.musb, ptr %musb, i32 0, i32 39, i32 %idxprom, i32 19
  %ep_out = getelementptr %struct.musb, ptr %musb, i32 0, i32 39, i32 %idxprom, i32 20
  %musb_ep.0 = select i1 %tobool.not, ptr %ep_out, ptr %ep_in
  %packet_sz = getelementptr inbounds %struct.musb_ep, ptr %musb_ep.0, i32 0, i32 7
  %7 = ptrtoint ptr %packet_sz to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %packet_sz, align 4
  %desc = getelementptr inbounds %struct.musb_ep, ptr %musb_ep.0, i32 0, i32 8
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.usb_ep, ptr %musb_ep.0, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.27, ptr noundef %12) #10
  br label %cleanup

if.end8:                                          ; preds = %entry
  %conv = zext i16 %call to i32
  %and = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %name15 = getelementptr inbounds %struct.usb_ep, ptr %musb_ep.0, i32 0, i32 1
  %13 = ptrtoint ptr %name15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name15, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.36, ptr noundef %14, i32 noundef %conv) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %and19 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.if.end45_crit_edge, label %if.then21

if.end17.if.end45_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then21:                                        ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %15 = load ptr, ptr @musb_readw, align 4
  %call22 = tail call zeroext i16 %15(ptr noundef %3, i32 noundef 8) #10
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %16 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %18 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp32 = icmp ult i32 %17, %19
  br i1 %cmp32, label %buffer_aint_mapped, label %if.then21.if.end45_crit_edge

if.then21.if.end45_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

buffer_aint_mapped:                               ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %hw_ep35 = getelementptr inbounds %struct.musb_ep, ptr %musb_ep.0, i32 0, i32 2
  %20 = ptrtoint ptr %hw_ep35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_ep35, align 4
  %22 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %req, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 %17
  tail call void @musb_read_fifo(ptr noundef %21, i16 noundef zeroext %call22, ptr noundef %add.ptr) #10
  %conv37 = zext i16 %call22 to i32
  %24 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %actual, align 4
  %add = add i32 %25, %conv37
  store i32 %add, ptr %actual, align 4
  %or = and i16 %call, -70
  %26 = or i16 %or, 68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %27 = load ptr, ptr @musb_writew, align 4
  tail call void %27(ptr noundef %3, i32 noundef 6, i16 noundef zeroext %26) #10
  br label %if.end45

if.end45:                                         ; preds = %buffer_aint_mapped, %if.then21.if.end45_crit_edge, %if.end17.if.end45_crit_edge
  %fifo_count.0 = phi i16 [ %call22, %buffer_aint_mapped ], [ %call22, %if.then21.if.end45_crit_edge ], [ %8, %if.end17.if.end45_crit_edge ]
  %actual46 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %28 = ptrtoint ptr %actual46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %actual46, align 4
  %length47 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %30 = ptrtoint ptr %length47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp48 = icmp eq i32 %29, %31
  br i1 %cmp48, label %if.end45.if.then55_crit_edge, label %lor.lhs.false

if.end45.if.then55_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

lor.lhs.false:                                    ; preds = %if.end45
  %32 = ptrtoint ptr %packet_sz to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %packet_sz, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %fifo_count.0, i16 %33)
  %cmp53 = icmp ult i16 %fifo_count.0, %33
  br i1 %cmp53, label %lor.lhs.false.if.then55_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.if.then55_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.then55:                                        ; preds = %lor.lhs.false.if.then55_crit_edge, %if.end45.if.then55_crit_edge
  tail call void @musb_g_giveback(ptr noundef %musb_ep.0, ptr noundef %req, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %lor.lhs.false.cleanup_crit_edge, %if.then13, %if.then7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @musb_alloc_request(ptr noundef %ep, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !184

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
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
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 80) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dma = getelementptr inbounds %struct.usb_request, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dma, align 8
  %current_epnum = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 4
  %3 = ptrtoint ptr %current_epnum to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %current_epnum, align 4
  %epnum = getelementptr inbounds %struct.musb_request, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %epnum to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %epnum, align 1
  %ep2 = getelementptr inbounds %struct.musb_request, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %ep2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ep, ptr %ep2, align 8
  tail call fastcc void @trace_musb_req_alloc(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_musb_req_alloc(ptr noundef %req) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_alloc, i32 0, i32 1), ptr blockaddress(@trace_musb_req_alloc, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !183

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !184

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !173) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !194
  %call42 = tail call i32 @__traceiter_musb_req_alloc(ptr noundef null, ptr noundef %req) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !195
  %13 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !184

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !173) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_alloc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_alloc, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_musb_req_alloc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_musb_req_alloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 290, ptr noundef nonnull @.str.25) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !188
  %31 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
define dso_local void @musb_free_request(ptr nocapture readnone %ep, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_musb_req_free(ptr noundef %req)
  tail call void @kfree(ptr noundef %req) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_musb_req_free(ptr noundef %req) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_free, i32 0, i32 1), ptr blockaddress(@trace_musb_req_free, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !183

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !184

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !173) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !196
  %call42 = tail call i32 @__traceiter_musb_req_free(ptr noundef null, ptr noundef %req) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !197
  %13 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !184

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !173) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_free, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_free, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_musb_req_free.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_musb_req_free.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 295, ptr noundef nonnull @.str.25) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !188
  %31 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
define dso_local void @musb_ep_restart(ptr noundef %musb, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_musb_req_start(ptr noundef %req)
  %ep_select = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep_select, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %2 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mregs, align 8
  %epnum = getelementptr inbounds %struct.musb_request, ptr %req, i32 0, i32 5
  %4 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %epnum, align 1
  tail call void %1(ptr noundef %3, i8 noundef zeroext %5) #10
  %tx = getelementptr inbounds %struct.musb_request, ptr %req, i32 0, i32 4
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @txstate(ptr noundef %musb, ptr noundef %req)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rxstate(ptr noundef %musb, ptr noundef %req)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_musb_req_start(ptr noundef %req) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_start, i32 0, i32 1), ptr blockaddress(@trace_musb_req_start, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !183

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !184

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !173) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !198
  %call42 = tail call i32 @__traceiter_musb_req_start(ptr noundef null, ptr noundef %req) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !199
  %13 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !184

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !173) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_musb_req_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_musb_req_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 300, ptr noundef nonnull @.str.25) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !188
  %31 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
define dso_local i32 @musb_gadget_setup(ptr noundef %musb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %g = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56
  %ops = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @musb_gadget_operations, ptr %ops, align 8
  %max_speed = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 6
  %1 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %max_speed, align 4
  %speed = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 5
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %speed, align 8
  %is_host = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 48
  %3 = ptrtoint ptr %is_host to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %is_host, align 4
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %4 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %state, align 4
  %name = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 10
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @musb_driver_name, ptr %name, align 4
  %is_otg = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 17
  %10 = ptrtoint ptr %is_otg to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %is_otg, align 4
  %bf.clear = and i32 %bf.load, -1073741825
  store i32 %bf.clear, ptr %is_otg, align 4
  %gadget_work = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 9
  tail call void @__init_work(ptr noundef %gadget_work, i32 noundef 0) #10
  %11 = ptrtoint ptr %gadget_work to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %gadget_work, align 4
  %lockdep_map = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 9, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @musb_gadget_setup.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry12 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 9, i32 0, i32 1
  %12 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 9, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 9, i32 0, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @musb_gadget_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 9, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.12, ptr noundef nonnull @musb_gadget_setup.__key.11) #10
  %ep_list.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 4
  %15 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %ep_list.i, ptr %ep_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 4, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ep_list.i, ptr %prev.i.i, align 4
  %nr_endpoints.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 42
  %17 = ptrtoint ptr %nr_endpoints.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nr_endpoints.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp30.not.i = icmp eq i8 %18, 0
  br i1 %cmp30.not.i, label %entry.musb_g_init_endpoints.exit_crit_edge, label %for.body.preheader.i

entry.musb_g_init_endpoints.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %musb_g_init_endpoints.exit

for.body.preheader.i:                             ; preds = %entry
  %endpoints.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %hw_ep.033.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %endpoints.i, %for.body.preheader.i ]
  %epnum.031.i = phi i8 [ %inc12.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %is_shared_fifo.i = getelementptr inbounds %struct.musb_hw_ep, ptr %hw_ep.033.i, i32 0, i32 5
  %19 = ptrtoint ptr %is_shared_fifo.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_shared_fifo.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %ep_in.i = getelementptr inbounds %struct.musb_hw_ep, ptr %hw_ep.033.i, i32 0, i32 19
  br label %for.inc.sink.split.i

if.else.i:                                        ; preds = %for.body.i
  %max_packet_sz_tx.i = getelementptr inbounds %struct.musb_hw_ep, ptr %hw_ep.033.i, i32 0, i32 8
  %21 = ptrtoint ptr %max_packet_sz_tx.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %max_packet_sz_tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool3.not.i = icmp eq i16 %22, 0
  br i1 %tobool3.not.i, label %if.else.i.if.end.i_crit_edge, label %if.then4.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %ep_in5.i = getelementptr inbounds %struct.musb_hw_ep, ptr %hw_ep.033.i, i32 0, i32 19
  tail call fastcc void @init_peripheral_ep(ptr noundef %musb, ptr noundef %ep_in5.i, i8 noundef zeroext %epnum.031.i, i32 noundef 1) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.else.i.if.end.i_crit_edge
  %max_packet_sz_rx.i = getelementptr inbounds %struct.musb_hw_ep, ptr %hw_ep.033.i, i32 0, i32 9
  %23 = ptrtoint ptr %max_packet_sz_rx.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %max_packet_sz_rx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool7.not.i = icmp eq i16 %24, 0
  br i1 %tobool7.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then8.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %ep_out.i = getelementptr inbounds %struct.musb_hw_ep, ptr %hw_ep.033.i, i32 0, i32 20
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.then8.i, %if.then.i
  %ep_in.sink.i = phi ptr [ %ep_in.i, %if.then.i ], [ %ep_out.i, %if.then8.i ]
  tail call fastcc void @init_peripheral_ep(ptr noundef %musb, ptr noundef %ep_in.sink.i, i8 noundef zeroext %epnum.031.i, i32 noundef 0) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.end.i.for.inc.i_crit_edge
  %inc12.i = add nuw i8 %epnum.031.i, 1
  %incdec.ptr.i = getelementptr %struct.musb_hw_ep, ptr %hw_ep.033.i, i32 1
  %25 = ptrtoint ptr %nr_endpoints.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %nr_endpoints.i, align 4
  %cmp.i = icmp ult i8 %inc12.i, %26
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.musb_g_init_endpoints.exit_crit_edge

for.inc.i.musb_g_init_endpoints.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %musb_g_init_endpoints.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

musb_g_init_endpoints.exit:                       ; preds = %for.inc.i.musb_g_init_endpoints.exit_crit_edge, %entry.musb_g_init_endpoints.exit_crit_edge
  %is_active = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %27 = ptrtoint ptr %is_active to i32
  call void @__asan_loadN_noabort(i32 %27, i32 3)
  %bf.load21 = load i24, ptr %is_active, align 8
  %bf.clear22 = and i24 %bf.load21, -2097153
  store i24 %bf.clear22, ptr %is_active, align 8
  %ops.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 3
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 8
  %try_idle.i = getelementptr inbounds %struct.musb_platform_ops, ptr %29, i32 0, i32 23
  %30 = ptrtoint ptr %try_idle.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %try_idle.i, align 4
  %tobool.not.i48 = icmp eq ptr %31, null
  br i1 %tobool.not.i48, label %musb_g_init_endpoints.exit.musb_platform_try_idle.exit_crit_edge, label %if.then.i49

musb_g_init_endpoints.exit.musb_platform_try_idle.exit_crit_edge: ; preds = %musb_g_init_endpoints.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %musb_platform_try_idle.exit

if.then.i49:                                      ; preds = %musb_g_init_endpoints.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %31(ptr noundef %musb, i32 noundef 0) #10
  br label %musb_platform_try_idle.exit

musb_platform_try_idle.exit:                      ; preds = %if.then.i49, %musb_g_init_endpoints.exit.musb_platform_try_idle.exit_crit_edge
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %32 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %controller, align 8
  %call = tail call i32 @usb_add_gadget_udc(ptr noundef %33, ptr noundef %g) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %musb_platform_try_idle.exit.cleanup_crit_edge, label %err

musb_platform_try_idle.exit.cleanup_crit_edge:    ; preds = %musb_platform_try_idle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err:                                              ; preds = %musb_platform_try_idle.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 11
  %parent = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 11, i32 1
  %34 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %parent, align 8
  tail call void @device_unregister(ptr noundef %dev) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %musb_platform_try_idle.exit.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @musb_gadget_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -828
  %controller = getelementptr i8, ptr %work, i32 268
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %softconnect = getelementptr i8, ptr %work, i32 4196
  %2 = ptrtoint ptr %softconnect to i32
  call void @__asan_loadN_noabort(i32 %2, i32 3)
  %bf.load = load i24, ptr %softconnect, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %3 = load ptr, ptr @musb_readb, align 4
  %mregs.i = getelementptr i8, ptr %work, i32 276
  %4 = ptrtoint ptr %mregs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mregs.i, align 8
  %call.i17 = tail call zeroext i8 %3(ptr noundef %5, i32 noundef 1) #10
  %6 = and i24 %bf.load, 256
  %tobool.not.i = icmp eq i24 %6, 0
  %7 = and i8 %call.i17, -65
  %cond.i = select i1 %tobool.not.i, ptr @.str.39, ptr @.str.38
  %8 = lshr exact i24 %6, 2
  %9 = trunc i24 %8 to i8
  %power.0.i = or i8 %7, %9
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %add.ptr, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %10 = load ptr, ptr @musb_writeb, align 4
  %11 = ptrtoint ptr %mregs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mregs.i, align 8
  tail call void %10(ptr noundef %12, i32 noundef 1, i8 noundef zeroext %power.0.i) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call4) #10
  %13 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %controller, align 8
  %call.i18 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 22
  %15 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store volatile i64 %call.i18, ptr %last_busy.i, align 8
  %16 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %controller, align 8
  %call.i19 = tail call i32 @__pm_runtime_suspend(ptr noundef %17, i32 noundef 13) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @musb_gadget_cleanup(ptr noundef %musb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port_mode = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 45
  %0 = ptrtoint ptr %port_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %gadget_work = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 9
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %gadget_work) #10
  %g = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56
  tail call void @usb_del_gadget_udc(ptr noundef %g) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @musb_g_resume(ptr noundef %musb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %is_suspended = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %0 = ptrtoint ptr %is_suspended to i32
  call void @__asan_loadN_noabort(i32 %0, i32 3)
  %bf.load = load i24, ptr %is_suspended, align 8
  %bf.clear = and i24 %bf.load, -16385
  store i24 %bf.clear, ptr %is_suspended, align 8
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %1 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.end [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 4, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge24
  ]

entry.sw.bb_crit_edge24:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge24
  %bf.set3 = or i24 %bf.clear, 2097152
  %8 = ptrtoint ptr %is_suspended to i32
  call void @__asan_storeN_noabort(i32 %8, i32 3)
  store i24 %bf.set3, ptr %is_suspended, align 8
  %gadget_driver = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 57
  %9 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gadget_driver, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %land.lhs.true

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %resume = getelementptr inbounds %struct.usb_gadget_driver, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resume, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %musb) #10
  %13 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gadget_driver, align 8
  %resume7 = getelementptr inbounds %struct.usb_gadget_driver, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %resume7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resume7, align 4
  %g = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56
  tail call void %16(ptr noundef %g) #10
  tail call void @_raw_spin_lock(ptr noundef %musb) #10
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @usb_otg_state_string(i32 noundef %6) #10
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 1942, ptr noundef %call) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_state_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @musb_g_suspend(ptr noundef %musb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %0 = load ptr, ptr @musb_readb, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %1 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mregs, align 8
  %call = tail call zeroext i8 %0(ptr noundef %2, i32 noundef 96) #10
  %conv = zext i8 %call to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.16, i32 noundef %conv) #10
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %3 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %8, label %do.end [
    i32 1, label %sw.bb
    i32 3, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %and = and i32 %conv, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and)
  %cmp = icmp eq i32 %and, 24
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %state, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %is_suspended = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %11 = ptrtoint ptr %is_suspended to i32
  call void @__asan_loadN_noabort(i32 %11, i32 3)
  %bf.load = load i24, ptr %is_suspended, align 8
  %bf.set = or i24 %bf.load, 16384
  store i24 %bf.set, ptr %is_suspended, align 8
  %gadget_driver = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 57
  %12 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gadget_driver, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %sw.bb6.sw.epilog_crit_edge, label %land.lhs.true

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb6
  %suspend = getelementptr inbounds %struct.usb_gadget_driver, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %suspend, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then9

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %musb) #10
  %16 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gadget_driver, align 8
  %suspend11 = getelementptr inbounds %struct.usb_gadget_driver, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %suspend11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %suspend11, align 4
  %g = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56
  tail call void %19(ptr noundef %g) #10
  tail call void @_raw_spin_lock(ptr noundef %musb) #10
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call ptr @usb_otg_state_string(i32 noundef %8) #10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 1972, ptr noundef %call18) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then9, %land.lhs.true.sw.epilog_crit_edge, %sw.bb6.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @musb_g_wakeup(ptr noundef %musb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %g = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56
  %call = tail call i32 @musb_gadget_wakeup(ptr noundef %g)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_gadget_wakeup(ptr noundef %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %gadget, i32 -5040
  %mregs1 = getelementptr i8, ptr %gadget, i32 -3936
  %0 = ptrtoint ptr %mregs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mregs1, align 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #10
  %xceiv = getelementptr i8, ptr %gadget, i32 -3912
  %2 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %7, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  %may_wakeup = getelementptr i8, ptr %gadget, i32 -16
  %9 = ptrtoint ptr %may_wakeup to i32
  call void @__asan_loadN_noabort(i32 %9, i32 3)
  %bf.load = load i24, ptr %may_wakeup, align 8
  %10 = and i24 %bf.load, 24576
  %.not = icmp eq i24 %10, 24576
  br i1 %.not, label %sw.epilog, label %sw.bb.done_crit_edge

sw.bb.done_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

sw.bb12:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %11 = load ptr, ptr @musb_readb, align 4
  %call13 = tail call zeroext i8 %11(ptr noundef %1, i32 noundef 96) #10
  %conv14 = zext i8 %call13 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.73, i32 noundef %conv14) #10
  %or = or i8 %call13, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %12 = load ptr, ptr @musb_writeb, align 4
  tail call void %12(ptr noundef %1, i32 noundef 96, i8 noundef zeroext %or) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %13 = load ptr, ptr @musb_readb, align 4
  %call17 = tail call zeroext i8 %13(ptr noundef %1, i32 noundef 96) #10
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %sw.bb12
  %devctl.0 = phi i8 [ %call17, %sw.bb12 ], [ %call20, %while.body.while.cond_crit_edge ]
  %retries.0 = phi i32 [ 100, %sw.bb12 ], [ %dec, %while.body.while.cond_crit_edge ]
  %14 = and i8 %devctl.0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool19.not = icmp eq i8 %14, 0
  br i1 %tobool19.not, label %while.body, label %while.cond.while.cond25.preheader_crit_edge

while.cond.while.cond25.preheader_crit_edge:      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond25.preheader

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %15 = load ptr, ptr @musb_readb, align 4
  %call20 = tail call zeroext i8 %15(ptr noundef %1, i32 noundef 96) #10
  %dec = add nsw i32 %retries.0, -1
  %cmp21 = icmp eq i32 %retries.0, 0
  br i1 %cmp21, label %while.body.while.cond25.preheader_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.body.while.cond25.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond25.preheader

while.cond25.preheader:                           ; preds = %while.body.while.cond25.preheader_crit_edge, %while.cond.while.cond25.preheader_crit_edge
  %devctl.2.ph = phi i8 [ %devctl.0, %while.cond.while.cond25.preheader_crit_edge ], [ %call20, %while.body.while.cond25.preheader_crit_edge ]
  br label %while.cond25

while.cond25:                                     ; preds = %while.body29.while.cond25_crit_edge, %while.cond25.preheader
  %devctl.2 = phi i8 [ %call30, %while.body29.while.cond25_crit_edge ], [ %devctl.2.ph, %while.cond25.preheader ]
  %retries.1 = phi i32 [ %dec31, %while.body29.while.cond25_crit_edge ], [ 10000, %while.cond25.preheader ]
  %16 = and i8 %devctl.2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool28.not = icmp eq i8 %16, 0
  br i1 %tobool28.not, label %while.cond25.while.end36_crit_edge, label %while.body29

while.cond25.while.end36_crit_edge:               ; preds = %while.cond25
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end36

while.body29:                                     ; preds = %while.cond25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %17 = load ptr, ptr @musb_readb, align 4
  %call30 = tail call zeroext i8 %17(ptr noundef %1, i32 noundef 96) #10
  %dec31 = add nsw i32 %retries.1, -1
  %cmp32 = icmp eq i32 %retries.1, 0
  br i1 %cmp32, label %while.body29.while.end36_crit_edge, label %while.body29.while.cond25_crit_edge

while.body29.while.cond25_crit_edge:              ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond25

while.body29.while.end36_crit_edge:               ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end36

while.end36:                                      ; preds = %while.body29.while.end36_crit_edge, %while.cond25.while.end36_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call4) #10
  %18 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xceiv, align 8
  %otg39 = getelementptr inbounds %struct.usb_phy, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %otg39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %otg39, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %while.end36.otg_start_srp.exit_crit_edge, label %land.lhs.true.i

while.end36.otg_start_srp.exit_crit_edge:         ; preds = %while.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %otg_start_srp.exit

land.lhs.true.i:                                  ; preds = %while.end36
  %start_srp.i = getelementptr inbounds %struct.usb_otg, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %start_srp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %start_srp.i, align 4
  %tobool1.not.i = icmp eq ptr %23, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.otg_start_srp.exit_crit_edge, label %if.then.i

land.lhs.true.i.otg_start_srp.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %otg_start_srp.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %23(ptr noundef nonnull %21) #10
  br label %otg_start_srp.exit

otg_start_srp.exit:                               ; preds = %if.then.i, %land.lhs.true.i.otg_start_srp.exit_crit_edge, %while.end36.otg_start_srp.exit_crit_edge
  %call50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %ops.i = getelementptr i8, ptr %gadget, i32 -4920
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 8
  %try_idle.i = getelementptr inbounds %struct.musb_platform_ops, ptr %26, i32 0, i32 23
  %27 = ptrtoint ptr %try_idle.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %try_idle.i, align 4
  %tobool.not.i99 = icmp eq ptr %28, null
  br i1 %tobool.not.i99, label %otg_start_srp.exit.done_crit_edge, label %if.then.i100

otg_start_srp.exit.done_crit_edge:                ; preds = %otg_start_srp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then.i100:                                     ; preds = %otg_start_srp.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %24, 10
  tail call void %28(ptr noundef %add.ptr.i, i32 noundef %add) #10
  br label %done

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call59 = tail call ptr @usb_otg_state_string(i32 noundef %7) #10
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.74, ptr noundef %call59) #10
  br label %done

sw.epilog:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %29 = load ptr, ptr @musb_readb, align 4
  %call60 = tail call zeroext i8 %29(ptr noundef %1, i32 noundef 1) #10
  %30 = or i8 %call60, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %31 = load ptr, ptr @musb_writeb, align 4
  tail call void %31(ptr noundef %1, i32 noundef 1, i8 noundef zeroext %30) #10
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.75) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 429496000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %33 = load ptr, ptr @musb_readb, align 4
  %call64 = tail call zeroext i8 %33(ptr noundef %1, i32 noundef 1) #10
  %34 = and i8 %call64, -5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %35 = load ptr, ptr @musb_writeb, align 4
  tail call void %35(ptr noundef %1, i32 noundef 1, i8 noundef zeroext %34) #10
  br label %done

done:                                             ; preds = %sw.epilog, %sw.default, %if.then.i100, %otg_start_srp.exit.done_crit_edge, %sw.bb.done_crit_edge
  %flags.0 = phi i32 [ %call4, %sw.default ], [ %call4, %sw.epilog ], [ %call4, %sw.bb.done_crit_edge ], [ %call50, %otg_start_srp.exit.done_crit_edge ], [ %call50, %if.then.i100 ]
  %status.0 = phi i32 [ -22, %sw.default ], [ 0, %sw.epilog ], [ -22, %sw.bb.done_crit_edge ], [ 0, %otg_start_srp.exit.done_crit_edge ], [ 0, %if.then.i100 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %flags.0) #10
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @musb_g_disconnect(ptr noundef %musb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mregs1 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %0 = ptrtoint ptr %mregs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mregs1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %2 = load ptr, ptr @musb_readb, align 4
  %call = tail call zeroext i8 %2(ptr noundef %1, i32 noundef 96) #10
  %conv = zext i8 %call to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.19, i32 noundef %conv) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %3 = load ptr, ptr @musb_writeb, align 4
  %and = and i8 %call, 1
  tail call void %3(ptr noundef %1, i32 noundef 96, i8 noundef zeroext %and) #10
  %g = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56
  %xceiv.i = getelementptr %struct.musb, ptr %musb, i32 0, i32 35
  %4 = ptrtoint ptr %xceiv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xceiv.i, align 8
  %set_power.i = getelementptr inbounds %struct.usb_phy, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %set_power.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_power.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %tobool.not.i.i = icmp eq ptr %5, null
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %tobool.not.i.i
  br i1 %or.cond, label %entry.musb_gadget_vbus_draw.exit_crit_edge, label %if.end.i.i

entry.musb_gadget_vbus_draw.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %musb_gadget_vbus_draw.exit

if.end.i.i:                                       ; preds = %entry
  tail call void @usb_phy_set_charger_current(ptr noundef nonnull %5, i32 noundef 0) #10
  %8 = ptrtoint ptr %set_power.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_power.i, align 4
  %tobool1.not.i.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.musb_gadget_vbus_draw.exit_crit_edge, label %if.then2.i.i

if.end.i.i.musb_gadget_vbus_draw.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %musb_gadget_vbus_draw.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 %9(ptr noundef nonnull %5, i32 noundef 0) #10
  br label %musb_gadget_vbus_draw.exit

musb_gadget_vbus_draw.exit:                       ; preds = %if.then2.i.i, %if.end.i.i.musb_gadget_vbus_draw.exit_crit_edge, %entry.musb_gadget_vbus_draw.exit_crit_edge
  %speed = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 5
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %speed, align 8
  %gadget_driver = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 57
  %11 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gadget_driver, align 8
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %musb_gadget_vbus_draw.exit.if.end_crit_edge, label %land.lhs.true

musb_gadget_vbus_draw.exit.if.end_crit_edge:      ; preds = %musb_gadget_vbus_draw.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %musb_gadget_vbus_draw.exit
  %disconnect = getelementptr inbounds %struct.usb_gadget_driver, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %disconnect, align 4
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %musb) #10
  %15 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gadget_driver, align 8
  %disconnect9 = getelementptr inbounds %struct.usb_gadget_driver, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %disconnect9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %disconnect9, align 4
  tail call void %18(ptr noundef %g) #10
  tail call void @_raw_spin_lock(ptr noundef %musb) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %musb_gadget_vbus_draw.exit.if.end_crit_edge
  %19 = ptrtoint ptr %xceiv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xceiv.i, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %24, label %sw.default [
    i32 11, label %sw.bb
    i32 4, label %if.end.sw.bb23_crit_edge
    i32 5, label %if.end.sw.bb23_crit_edge47
    i32 3, label %if.end.sw.bb23_crit_edge48
    i32 1, label %if.end.sw.bb23_crit_edge49
    i32 2, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.sw.bb23_crit_edge49:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.end.sw.bb23_crit_edge48:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.end.sw.bb23_crit_edge47:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.end.sw.bb23_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call ptr @usb_otg_state_string(i32 noundef %24) #10
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.20, ptr noundef %call15) #10
  %26 = ptrtoint ptr %xceiv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xceiv.i, align 8
  %otg17 = getelementptr inbounds %struct.usb_phy, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %otg17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %otg17, align 4
  %state18 = getelementptr inbounds %struct.usb_otg, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %state18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 6, ptr %state18, align 4
  %is_host = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 48
  %31 = ptrtoint ptr %is_host to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %is_host, align 4
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %state, align 4
  %is_host22 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 48
  %33 = ptrtoint ptr %is_host22 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %is_host22, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end.sw.bb23_crit_edge, %if.end.sw.bb23_crit_edge47, %if.end.sw.bb23_crit_edge48, %if.end.sw.bb23_crit_edge49
  %34 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %state, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb, %sw.default, %if.end.sw.epilog_crit_edge
  %is_active = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %35 = ptrtoint ptr %is_active to i32
  call void @__asan_loadN_noabort(i32 %35, i32 3)
  %bf.load = load i24, ptr %is_active, align 8
  %bf.clear = and i24 %bf.load, -2097153
  store i24 %bf.clear, ptr %is_active, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_gadget_vbus_draw(ptr nocapture noundef readonly %gadget, i32 noundef %mA) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xceiv = getelementptr i8, ptr %gadget, i32 -3912
  %0 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xceiv, align 8
  %set_power = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %set_power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_power, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  tail call void @usb_phy_set_charger_current(ptr noundef nonnull %1, i32 noundef %mA) #10
  %4 = ptrtoint ptr %set_power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_power, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.then2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %5(ptr noundef nonnull %1, i32 noundef %mA) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then2.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call.i, %if.then2.i ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @musb_g_reset(ptr noundef %musb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %0 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mregs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %2 = load ptr, ptr @musb_readb, align 4
  %call = tail call zeroext i8 %2(ptr noundef %1, i32 noundef 96) #10
  %conv = zext i8 %call to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.23, ptr @.str.22
  %gadget_driver = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 57
  %3 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gadget_driver, align 8
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %driver = getelementptr inbounds %struct.usb_gadget_driver, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond3 = phi ptr [ %6, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.21, ptr noundef nonnull %cond, ptr noundef %cond3) #10
  %7 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gadget_driver, align 8
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %cond.end.if.else_crit_edge, label %land.lhs.true

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %cond.end
  %speed = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 5
  %9 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %g = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56
  tail call void @_raw_spin_unlock(ptr noundef %musb) #10
  %11 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gadget_driver, align 8
  tail call void @usb_gadget_udc_reset(ptr noundef %g, ptr noundef %12) #10
  tail call void @_raw_spin_lock(ptr noundef %musb) #10
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %cond.end.if.else_crit_edge
  %and11 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else.if.end14_crit_edge, label %if.then13

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %13 = load ptr, ptr @musb_writeb, align 4
  tail call void %13(ptr noundef %1, i32 noundef 96, i8 noundef zeroext 1) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.else.if.end14_crit_edge, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %14 = load ptr, ptr @musb_readb, align 4
  %call15 = tail call zeroext i8 %14(ptr noundef %1, i32 noundef 1) #10
  %15 = and i8 %call15, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool18.not = icmp eq i8 %15, 0
  %cond19 = select i1 %tobool18.not, i32 2, i32 3
  %speed21 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 5
  %16 = ptrtoint ptr %speed21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond19, ptr %speed21, align 8
  %is_active = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %17 = ptrtoint ptr %is_active to i32
  call void @__asan_loadN_noabort(i32 %17, i32 3)
  %bf.load = load i24, ptr %is_active, align 8
  %is_host = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 48
  %18 = ptrtoint ptr %is_host to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %is_host, align 4
  %address = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 52
  %19 = ptrtoint ptr %address to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %address, align 1
  %ep0_state = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 55
  %20 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %ep0_state, align 8
  %bf.clear23 = and i24 %bf.load, -2121729
  %bf.clear26 = or i24 %bf.clear23, 2097152
  store i24 %bf.clear26, ptr %is_active, align 8
  %b_hnp_enable = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 17
  %21 = ptrtoint ptr %b_hnp_enable to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load29 = load i32, ptr %b_hnp_enable, align 4
  %bf.clear42 = and i32 %bf.load29, -470810625
  %bf.set43 = or i32 %bf.clear42, 1048576
  store i32 %bf.set43, ptr %b_hnp_enable, align 4
  %22 = and i32 %bf.load29, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool47.not = icmp eq i32 %22, 0
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %23 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %26, i32 0, i32 5
  br i1 %tobool47.not, label %if.then48, label %if.else53

if.then48:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %state, align 4
  %28 = ptrtoint ptr %b_hnp_enable to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load50 = load i32, ptr %b_hnp_enable, align 4
  %bf.clear51 = and i32 %bf.load50, -536870913
  br label %if.end76

if.else53:                                        ; preds = %if.end14
  br i1 %tobool.not, label %if.else66, label %if.then57

if.then57:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %state, align 4
  %30 = ptrtoint ptr %b_hnp_enable to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load63 = load i32, ptr %b_hnp_enable, align 4
  %bf.clear64 = and i32 %bf.load63, -536870913
  br label %if.end76

if.else66:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 11, ptr %state, align 4
  %32 = ptrtoint ptr %b_hnp_enable to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load72 = load i32, ptr %b_hnp_enable, align 4
  %bf.set74 = or i32 %bf.load72, 536870912
  br label %if.end76

if.end76:                                         ; preds = %if.else66, %if.then57, %if.then48
  %bf.clear64.sink = phi i32 [ %bf.clear64, %if.then57 ], [ %bf.set74, %if.else66 ], [ %bf.clear51, %if.then48 ]
  %33 = ptrtoint ptr %b_hnp_enable to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %bf.clear64.sink, ptr %b_hnp_enable, align 4
  %xceiv.i = getelementptr %struct.musb, ptr %musb, i32 0, i32 35
  %34 = ptrtoint ptr %xceiv.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %xceiv.i, align 8
  %set_power.i = getelementptr inbounds %struct.usb_phy, ptr %35, i32 0, i32 25
  %36 = ptrtoint ptr %set_power.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_power.i, align 4
  %tobool.not.i = icmp eq ptr %37, null
  %tobool.not.i.i = icmp eq ptr %35, null
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %tobool.not.i.i
  br i1 %or.cond, label %if.end76.musb_gadget_vbus_draw.exit_crit_edge, label %if.end.i.i

if.end76.musb_gadget_vbus_draw.exit_crit_edge:    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %musb_gadget_vbus_draw.exit

if.end.i.i:                                       ; preds = %if.end76
  tail call void @usb_phy_set_charger_current(ptr noundef nonnull %35, i32 noundef 8) #10
  %38 = ptrtoint ptr %set_power.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %set_power.i, align 4
  %tobool1.not.i.i = icmp eq ptr %39, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.musb_gadget_vbus_draw.exit_crit_edge, label %if.then2.i.i

if.end.i.i.musb_gadget_vbus_draw.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %musb_gadget_vbus_draw.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 %39(ptr noundef nonnull %35, i32 noundef 8) #10
  br label %musb_gadget_vbus_draw.exit

musb_gadget_vbus_draw.exit:                       ; preds = %if.then2.i.i, %if.end.i.i.musb_gadget_vbus_draw.exit_crit_edge, %if.end76.musb_gadget_vbus_draw.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_req_gb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_req_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_write_fifo(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_req_rx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_read_fifo(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_req_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_req_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_req_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_gadget_get_frame(ptr nocapture noundef readonly %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %0 = load ptr, ptr @musb_readw, align 4
  %mregs = getelementptr i8, ptr %gadget, i32 -3936
  %1 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mregs, align 8
  %call1 = tail call zeroext i16 %0(ptr noundef %2, i32 noundef 12) #10
  %conv = zext i16 %call1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @musb_gadget_set_self_powered(ptr nocapture noundef %gadget, i32 noundef %is_selfpowered) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_selfpowered)
  %tobool.not = icmp eq i32 %is_selfpowered, 0
  %is_selfpowered2 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 17
  %0 = ptrtoint ptr %is_selfpowered2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %is_selfpowered2, align 4
  %bf.shl = select i1 %tobool.not, i32 0, i32 262144
  %bf.clear = and i32 %bf.load, -262145
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %is_selfpowered2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_gadget_pullup(ptr noundef %gadget, i32 noundef %is_on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %gadget, i32 -5040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool = icmp ne i32 %is_on, 0
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #10
  %softconnect = getelementptr i8, ptr %gadget, i32 -16
  %0 = ptrtoint ptr %softconnect to i32
  call void @__asan_loadN_noabort(i32 %0, i32 3)
  %bf.load = load i24, ptr %softconnect, align 8
  %1 = and i24 %bf.load, 256
  %2 = icmp eq i24 %1, 0
  %cmp7.not = xor i1 %tobool, %2
  br i1 %cmp7.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bf.shl = select i1 %tobool, i24 256, i24 0
  %bf.clear11 = and i24 %bf.load, -257
  %bf.set = or i24 %bf.clear11, %bf.shl
  %3 = ptrtoint ptr %softconnect to i32
  call void @__asan_storeN_noabort(i32 %3, i32 3)
  store i24 %bf.set, ptr %softconnect, align 8
  %gadget_work = getelementptr i8, ptr %gadget, i32 -4212
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %gadget_work, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call4) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_gadget_start(ptr noundef %g, ptr noundef %driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %g, i32 -5040
  %max_speed = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 1
  %0 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ult i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %xceiv = getelementptr i8, ptr %g, i32 -3912
  %2 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xceiv, align 8
  %otg1 = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %otg1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %otg1, align 4
  %controller = getelementptr i8, ptr %g, i32 -3944
  %6 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %controller, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #10
  %softconnect = getelementptr i8, ptr %g, i32 -16
  %8 = ptrtoint ptr %softconnect to i32
  call void @__asan_loadN_noabort(i32 %8, i32 3)
  %bf.load = load i24, ptr %softconnect, align 8
  %bf.clear = and i24 %bf.load, -257
  store i24 %bf.clear, ptr %softconnect, align 8
  %gadget_driver = getelementptr i8, ptr %g, i32 1048
  %9 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %driver, ptr %gadget_driver, align 8
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #10
  %10 = ptrtoint ptr %softconnect to i32
  call void @__asan_loadN_noabort(i32 %10, i32 3)
  %bf.load10 = load i24, ptr %softconnect, align 8
  %bf.set12 = or i24 %bf.load10, 2097152
  store i24 %bf.set12, ptr %softconnect, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.otg_set_peripheral.exit_crit_edge, label %land.lhs.true.i

if.end.otg_set_peripheral.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %otg_set_peripheral.exit

land.lhs.true.i:                                  ; preds = %if.end
  %set_peripheral.i = getelementptr inbounds %struct.usb_otg, ptr %5, i32 0, i32 7
  %11 = ptrtoint ptr %set_peripheral.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_peripheral.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.otg_set_peripheral.exit_crit_edge, label %if.then.i

land.lhs.true.i.otg_set_peripheral.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %otg_set_peripheral.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i43 = tail call i32 %12(ptr noundef nonnull %5, ptr noundef %g) #10
  br label %otg_set_peripheral.exit

otg_set_peripheral.exit:                          ; preds = %if.then.i, %land.lhs.true.i.otg_set_peripheral.exit_crit_edge, %if.end.otg_set_peripheral.exit_crit_edge
  %13 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xceiv, align 8
  %otg16 = getelementptr inbounds %struct.usb_phy, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %otg16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %otg16, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call7) #10
  tail call void @musb_start(ptr noundef %add.ptr.i) #10
  %18 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xceiv, align 8
  %last_event = getelementptr inbounds %struct.usb_phy, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %last_event to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %last_event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp19 = icmp eq i32 %21, 2
  br i1 %cmp19, label %if.then21, label %otg_set_peripheral.exit.if.end22_crit_edge

otg_set_peripheral.exit.if.end22_crit_edge:       ; preds = %otg_set_peripheral.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then21:                                        ; preds = %otg_set_peripheral.exit
  %ops.i = getelementptr i8, ptr %g, i32 -4920
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 8
  %set_vbus.i = getelementptr inbounds %struct.musb_platform_ops, ptr %23, i32 0, i32 26
  %24 = ptrtoint ptr %set_vbus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_vbus.i, align 4
  %tobool.not.i44 = icmp eq ptr %25, null
  br i1 %tobool.not.i44, label %if.then21.if.end22_crit_edge, label %if.then.i45

if.then21.if.end22_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then.i45:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %25(ptr noundef %add.ptr.i, i32 noundef 1) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then.i45, %if.then21.if.end22_crit_edge, %otg_set_peripheral.exit.if.end22_crit_edge
  %26 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %controller, align 8
  %call.i46 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 12, i32 22
  %28 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store volatile i64 %call.i46, ptr %last_busy.i, align 8
  %29 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %controller, align 8
  %call.i47 = tail call i32 @__pm_runtime_suspend(ptr noundef %30, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_gadget_stop(ptr noundef %g) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %g, i32 -5040
  %controller = getelementptr i8, ptr %g, i32 -3944
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #10
  tail call void @musb_hnp_stop(ptr noundef %add.ptr.i) #10
  %xceiv.i = getelementptr i8, ptr %g, i32 -3912
  %2 = ptrtoint ptr %xceiv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xceiv.i, align 8
  %set_power.i = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %set_power.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_power.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %tobool.not.i.i = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %tobool.not.i.i
  br i1 %or.cond, label %entry.musb_gadget_vbus_draw.exit_crit_edge, label %if.end.i.i

entry.musb_gadget_vbus_draw.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %musb_gadget_vbus_draw.exit

if.end.i.i:                                       ; preds = %entry
  tail call void @usb_phy_set_charger_current(ptr noundef nonnull %3, i32 noundef 0) #10
  %6 = ptrtoint ptr %set_power.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_power.i, align 4
  %tobool1.not.i.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.musb_gadget_vbus_draw.exit_crit_edge, label %if.then2.i.i

if.end.i.i.musb_gadget_vbus_draw.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %musb_gadget_vbus_draw.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 %7(ptr noundef nonnull %3, i32 noundef 0) #10
  br label %musb_gadget_vbus_draw.exit

musb_gadget_vbus_draw.exit:                       ; preds = %if.then2.i.i, %if.end.i.i.musb_gadget_vbus_draw.exit_crit_edge, %entry.musb_gadget_vbus_draw.exit_crit_edge
  %8 = ptrtoint ptr %xceiv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xceiv.i, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %state, align 4
  tail call void @musb_stop(ptr noundef %add.ptr.i) #10
  %13 = ptrtoint ptr %xceiv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xceiv.i, align 8
  %otg10 = getelementptr inbounds %struct.usb_phy, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %otg10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %otg10, align 4
  %tobool.not.i30 = icmp eq ptr %16, null
  br i1 %tobool.not.i30, label %musb_gadget_vbus_draw.exit.otg_set_peripheral.exit_crit_edge, label %land.lhs.true.i

musb_gadget_vbus_draw.exit.otg_set_peripheral.exit_crit_edge: ; preds = %musb_gadget_vbus_draw.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %otg_set_peripheral.exit

land.lhs.true.i:                                  ; preds = %musb_gadget_vbus_draw.exit
  %set_peripheral.i = getelementptr inbounds %struct.usb_otg, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %set_peripheral.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_peripheral.i, align 4
  %tobool1.not.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.otg_set_peripheral.exit_crit_edge, label %if.then.i

land.lhs.true.i.otg_set_peripheral.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %otg_set_peripheral.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i31 = tail call i32 %18(ptr noundef nonnull %16, ptr noundef null) #10
  br label %otg_set_peripheral.exit

otg_set_peripheral.exit:                          ; preds = %if.then.i, %land.lhs.true.i.otg_set_peripheral.exit_crit_edge, %musb_gadget_vbus_draw.exit.otg_set_peripheral.exit_crit_edge
  %is_active = getelementptr i8, ptr %g, i32 -16
  %19 = ptrtoint ptr %is_active to i32
  call void @__asan_loadN_noabort(i32 %19, i32 3)
  %bf.load = load i24, ptr %is_active, align 8
  %bf.clear = and i24 %bf.load, -2097153
  store i24 %bf.clear, ptr %is_active, align 8
  %gadget_driver = getelementptr i8, ptr %g, i32 1048
  %20 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %gadget_driver, align 8
  %ops.i = getelementptr i8, ptr %g, i32 -4920
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i, align 8
  %try_idle.i = getelementptr inbounds %struct.musb_platform_ops, ptr %22, i32 0, i32 23
  %23 = ptrtoint ptr %try_idle.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %try_idle.i, align 4
  %tobool.not.i32 = icmp eq ptr %24, null
  br i1 %tobool.not.i32, label %otg_set_peripheral.exit.musb_platform_try_idle.exit_crit_edge, label %if.then.i33

otg_set_peripheral.exit.musb_platform_try_idle.exit_crit_edge: ; preds = %otg_set_peripheral.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %musb_platform_try_idle.exit

if.then.i33:                                      ; preds = %otg_set_peripheral.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %24(ptr noundef %add.ptr.i, i32 noundef 0) #10
  br label %musb_platform_try_idle.exit

musb_platform_try_idle.exit:                      ; preds = %if.then.i33, %otg_set_peripheral.exit.musb_platform_try_idle.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call4) #10
  %irq_work = getelementptr i8, ptr %g, i32 -4512
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %call.i.i35 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %irq_work, i32 noundef 0) #10
  %26 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %controller, align 8
  %call.i36 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 12, i32 22
  %28 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store volatile i64 %call.i36, ptr %last_busy.i, align 8
  %29 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %controller, align 8
  %call.i37 = tail call i32 @__pm_runtime_suspend(ptr noundef %30, i32 noundef 13) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_hnp_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_peripheral_ep(ptr noundef %musb, ptr noundef %ep, i8 noundef zeroext %epnum, i32 noundef %is_in) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %endpoints = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39
  %conv = zext i8 %epnum to i32
  %add.ptr = getelementptr %struct.musb_hw_ep, ptr %endpoints, i32 %conv
  %0 = call ptr @memset(ptr %ep, i32 0, i32 92)
  %current_epnum = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 4
  %1 = ptrtoint ptr %current_epnum to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %epnum, ptr %current_epnum, align 4
  %musb1 = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 3
  %2 = ptrtoint ptr %musb1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %musb, ptr %musb1, align 4
  %hw_ep2 = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 2
  %3 = ptrtoint ptr %hw_ep2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %hw_ep2, align 4
  %conv3 = trunc i32 %is_in to i8
  %is_in4 = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 6
  %4 = ptrtoint ptr %is_in4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3, ptr %is_in4, align 2
  %req_list = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 10
  %5 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %req_list, ptr %req_list, align 4
  %prev.i = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %req_list, ptr %prev.i, align 4
  %name = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %epnum)
  %tobool.not = icmp eq i8 %epnum, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %lor.lhs.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

lor.lhs.false:                                    ; preds = %entry
  %is_shared_fifo = getelementptr %struct.musb_hw_ep, ptr %endpoints, i32 %conv, i32 5
  %7 = ptrtoint ptr %is_shared_fifo to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_shared_fifo, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %cond.false, label %lor.lhs.false.cond.end_crit_edge

lor.lhs.false.cond.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_in)
  %tobool9.not = icmp eq i32 %is_in, 0
  %cond = select i1 %tobool9.not, ptr @.str.42, ptr @.str.41
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.lhs.false.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond10 = phi ptr [ %cond, %cond.false ], [ @.str.6, %lor.lhs.false.cond.end_crit_edge ], [ @.str.6, %entry.cond.end_crit_edge ]
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.40, i32 noundef %conv, ptr noundef nonnull %cond10)
  %name13 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %9 = ptrtoint ptr %name13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %name, ptr %name13, align 4
  %ep_list = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 3
  %10 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i120 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i120 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ep_list, ptr %prev.i120, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %ep, i32 noundef 64) #10
  %caps = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 4
  %12 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %caps, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %caps, align 4
  %ops = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 2
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @musb_g_ep0_ops, ptr %ops, align 4
  %ep0 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 3
  %14 = ptrtoint ptr %ep0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ep, ptr %ep0, align 4
  br label %if.then54

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_in)
  %tobool20.not = icmp eq i32 %is_in, 0
  %max_packet_sz_rx = getelementptr %struct.musb_hw_ep, ptr %endpoints, i32 %conv, i32 9
  %max_packet_sz_tx = getelementptr %struct.musb_hw_ep, ptr %endpoints, i32 %conv, i32 8
  %.sink.in = select i1 %tobool20.not, ptr %max_packet_sz_rx, ptr %max_packet_sz_tx
  %15 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %15)
  %.sink = load i16, ptr %.sink.in, align 2
  %conv26 = zext i16 %.sink to i32
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %ep, i32 noundef %conv26) #10
  %caps28 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 4
  %16 = ptrtoint ptr %caps28 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load29 = load i8, ptr %caps28, align 4
  %bf.set41 = or i8 %bf.load29, 112
  store i8 %bf.set41, ptr %caps28, align 4
  %ops43 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 2
  %17 = ptrtoint ptr %ops43 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @musb_ep_ops, ptr %ops43, align 4
  %ep_list47 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 4
  %prev.i121 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 4, i32 1
  %18 = ptrtoint ptr %prev.i121 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i121, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list, ptr noundef %19, ptr noundef %ep_list47) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_add_tail.exit_crit_edge

if.else.list_add_tail.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %prev.i121 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ep_list, ptr %prev.i121, align 4
  %21 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ep_list47, ptr %ep_list, align 4
  %22 = ptrtoint ptr %prev.i120 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev.i120, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %ep_list, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.else.list_add_tail.exit_crit_edge
  %is_shared_fifo51 = getelementptr %struct.musb_hw_ep, ptr %endpoints, i32 %conv, i32 5
  %24 = ptrtoint ptr %is_shared_fifo51 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_shared_fifo51, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool52.not = icmp eq i8 %25, 0
  br i1 %tobool52.not, label %if.else65, label %list_add_tail.exit.if.then54_crit_edge

list_add_tail.exit.if.then54_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54

if.then54:                                        ; preds = %list_add_tail.exit.if.then54_crit_edge, %if.then
  %caps56 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 4
  %26 = ptrtoint ptr %caps56 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load57 = load i8, ptr %caps56, align 4
  %bf.set64 = or i8 %bf.load57, 12
  store i8 %bf.set64, ptr %caps56, align 4
  br label %if.end80

if.else65:                                        ; preds = %list_add_tail.exit
  %27 = ptrtoint ptr %caps28 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load76 = load i8, ptr %caps28, align 4
  br i1 %tobool20.not, label %if.else73, label %if.then67

if.then67:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set72 = or i8 %bf.load76, 8
  %28 = ptrtoint ptr %caps28 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %bf.set72, ptr %caps28, align 4
  br label %if.end80

if.else73:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set78 = or i8 %bf.load76, 4
  %29 = ptrtoint ptr %caps28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %bf.set78, ptr %caps28, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.else73, %if.then67, %if.then54
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_gadget_enable(ptr noundef %ep, ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ep, null
  %tobool1.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup187_crit_edge, label %if.end

entry.cleanup187_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup187

if.end:                                           ; preds = %entry
  %hw_ep3 = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %hw_ep3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_ep3, align 4
  %regs4 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs4, align 4
  %musb5 = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 3
  %4 = ptrtoint ptr %musb5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %musb5, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mregs, align 8
  %current_epnum = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 4
  %8 = ptrtoint ptr %current_epnum to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %current_epnum, align 4
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %desc11 = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 8
  %10 = ptrtoint ptr %desc11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc11, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %if.end14, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end14:                                         ; preds = %if.end
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %12 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bmAttributes.i, align 1
  %14 = and i8 %13, 3
  %type = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 5
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %type, align 1
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %16 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bEndpointAddress.i, align 1
  %18 = and i8 %17, 15
  %conv18 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %9)
  %cmp19.not = icmp eq i8 %18, %9
  br i1 %cmp19.not, label %if.end22, label %if.end14.fail_crit_edge

if.end14.fail_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end22:                                         ; preds = %if.end14
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %19 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %wMaxPacketSize.i, align 1
  %21 = lshr i16 %20, 3
  %22 = and i16 %21, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool24.not = icmp eq i16 %22, 0
  br i1 %tobool24.not, label %if.end22.if.end40_crit_edge, label %if.then25

if.end22.if.end40_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %tobool27.not = icmp sgt i8 %17, -1
  %hb_iso_rx = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 51
  %23 = ptrtoint ptr %hb_iso_rx to i32
  call void @__asan_loadN_noabort(i32 %23, i32 3)
  %bf.load29 = load i24, ptr %hb_iso_rx, align 8
  %24 = select i1 %tobool27.not, i24 524288, i24 262144
  %25 = and i24 %bf.load29, %24
  %tobool34.not = icmp eq i24 %25, 0
  br i1 %tobool34.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %conv37 = trunc i16 %22 to i8
  br label %if.end40

cleanup:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %5, ptr noundef nonnull @.str.43) #10
  br label %fail

if.end40:                                         ; preds = %cleanup.thread, %if.end22.if.end40_crit_edge
  %conv37.sink = phi i8 [ %conv37, %cleanup.thread ], [ 0, %if.end22.if.end40_crit_edge ]
  %hb_mult = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 13
  %26 = ptrtoint ptr %hb_mult to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv37.sink, ptr %hb_mult, align 2
  %27 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %wMaxPacketSize.i, align 1
  %29 = and i16 %28, -249
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #10
  %and.i287 = zext i16 %30 to i32
  %packet_sz = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 7
  %31 = ptrtoint ptr %packet_sz to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %packet_sz, align 4
  %hb_mult45 = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 13
  %32 = ptrtoint ptr %hb_mult45 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hb_mult45, align 2
  %conv46 = zext i8 %33 to i32
  %add = add nuw nsw i32 %conv46, 1
  %mul = mul nuw nsw i32 %add, %and.i287
  %ep_select = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ep_select, align 4
  tail call void %35(ptr noundef %7, i8 noundef zeroext %9) #10
  %36 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %tobool48.not = icmp sgt i8 %37, -1
  %is_shared_fifo109 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %is_shared_fifo109 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %is_shared_fifo109, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool110.not = icmp eq i8 %39, 0
  br i1 %tobool48.not, label %if.else108, label %if.then49

if.then49:                                        ; preds = %if.end40
  br i1 %tobool110.not, label %if.then49.if.end52_crit_edge, label %if.then51

if.then49.if.end52_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then51:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %is_in = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 6
  %40 = ptrtoint ptr %is_in to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %is_in, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.then49.if.end52_crit_edge
  %is_in53 = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 6
  %41 = ptrtoint ptr %is_in53 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_in53, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool54.not = icmp eq i8 %42, 0
  br i1 %tobool54.not, label %if.end52.fail_crit_edge, label %if.end56

if.end52.fail_crit_edge:                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end56:                                         ; preds = %if.end52
  %max_packet_sz_tx = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 8
  %43 = ptrtoint ptr %max_packet_sz_tx to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %max_packet_sz_tx, align 4
  %conv57 = zext i16 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv57)
  %cmp58 = icmp ugt i32 %mul, %conv57
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %5, ptr noundef nonnull @.str.44) #10
  br label %fail

if.end61:                                         ; preds = %if.end56
  %shl = shl nuw i32 1, %conv18
  %intrtxe = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 12
  %45 = ptrtoint ptr %intrtxe to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %intrtxe, align 4
  %47 = trunc i32 %shl to i16
  %conv64 = or i16 %46, %47
  store i16 %conv64, ptr %intrtxe, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %48 = load ptr, ptr @musb_writew, align 4
  tail call void %48(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %conv64) #10
  %49 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %50)
  %cmp68 = icmp eq i8 %50, 2
  br i1 %cmp68, label %land.lhs.true, label %if.end61.if.end83_crit_edge

if.end61.if.end83_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

land.lhs.true:                                    ; preds = %if.end61
  %bulk_split = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 51
  %51 = ptrtoint ptr %bulk_split to i32
  call void @__asan_loadN_noabort(i32 %51, i32 3)
  %bf.load70 = load i24, ptr %bulk_split, align 8
  %52 = and i24 %bf.load70, 65536
  %tobool74.not = icmp eq i24 %52, 0
  br i1 %tobool74.not, label %land.lhs.true.if.end83_crit_edge, label %if.then75

land.lhs.true.if.end83_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then75:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %max_packet_sz_tx to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %max_packet_sz_tx, align 4
  %55 = ptrtoint ptr %packet_sz to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %packet_sz, align 4
  %57 = udiv i16 %54, %56
  %div = trunc i16 %57 to i8
  %sub80 = add i8 %div, -1
  %58 = ptrtoint ptr %hb_mult45 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %sub80, ptr %hb_mult45, align 2
  br label %if.end83

if.end83:                                         ; preds = %if.then75, %land.lhs.true.if.end83_crit_edge, %if.end61.if.end83_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %59 = load ptr, ptr @musb_writew, align 4
  %60 = ptrtoint ptr %packet_sz to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %packet_sz, align 4
  %62 = ptrtoint ptr %hb_mult45 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %hb_mult45, align 2
  %conv87 = zext i8 %63 to i16
  %shl88 = shl i16 %conv87, 11
  %or89 = or i16 %shl88, %61
  tail call void %59(ptr noundef %3, i32 noundef 0, i16 noundef zeroext %or89) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %64 = load ptr, ptr @musb_readw, align 4
  %call91 = tail call zeroext i16 %64(ptr noundef %3, i32 noundef 2) #10
  %65 = and i16 %call91, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool93.not = icmp eq i16 %65, 0
  %spec.select = select i1 %tobool93.not, i16 8256, i16 8264
  %66 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %67)
  %cmp101 = icmp eq i8 %67, 1
  %68 = or i16 %spec.select, 16384
  %csr.1 = select i1 %cmp101, i16 %68, i16 %spec.select
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %69 = load ptr, ptr @musb_writew, align 4
  tail call void %69(ptr noundef %3, i32 noundef 2, i16 noundef zeroext %csr.1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %70 = load ptr, ptr @musb_writew, align 4
  tail call void %70(ptr noundef %3, i32 noundef 2, i16 noundef zeroext %csr.1) #10
  br label %if.end163

if.else108:                                       ; preds = %if.end40
  br i1 %tobool110.not, label %if.else108.if.end113_crit_edge, label %if.then111

if.else108.if.end113_crit_edge:                   ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then111:                                       ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #12
  %is_in112 = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 6
  %71 = ptrtoint ptr %is_in112 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %is_in112, align 2
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.else108.if.end113_crit_edge
  %is_in114 = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 6
  %72 = ptrtoint ptr %is_in114 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %is_in114, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool115.not = icmp eq i8 %73, 0
  br i1 %tobool115.not, label %if.end117, label %if.end113.fail_crit_edge

if.end113.fail_crit_edge:                         ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end117:                                        ; preds = %if.end113
  %max_packet_sz_rx = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 9
  %74 = ptrtoint ptr %max_packet_sz_rx to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %max_packet_sz_rx, align 2
  %conv118 = zext i16 %75 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv118)
  %cmp119 = icmp ugt i32 %mul, %conv118
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %5, ptr noundef nonnull @.str.44) #10
  br label %fail

if.end122:                                        ; preds = %if.end117
  %shl124 = shl nuw i32 1, %conv18
  %intrrxe = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 11
  %76 = ptrtoint ptr %intrrxe to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %intrrxe, align 2
  %78 = trunc i32 %shl124 to i16
  %conv127 = or i16 %77, %78
  store i16 %conv127, ptr %intrrxe, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %79 = load ptr, ptr @musb_writew, align 4
  tail call void %79(ptr noundef %7, i32 noundef 8, i16 noundef zeroext %conv127) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %80 = load ptr, ptr @musb_writew, align 4
  %81 = ptrtoint ptr %packet_sz to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %packet_sz, align 4
  %83 = ptrtoint ptr %hb_mult45 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %hb_mult45, align 2
  %conv132 = zext i8 %84 to i16
  %shl133 = shl i16 %conv132, 11
  %or134 = or i16 %shl133, %82
  tail call void %80(ptr noundef %3, i32 noundef 4, i16 noundef zeroext %or134) #10
  %85 = ptrtoint ptr %is_shared_fifo109 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %is_shared_fifo109, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool137.not = icmp eq i8 %86, 0
  br i1 %tobool137.not, label %if.end122.if.end143_crit_edge, label %if.then138

if.end122.if.end143_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

if.then138:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %87 = load ptr, ptr @musb_readw, align 4
  %call139 = tail call zeroext i16 %87(ptr noundef %3, i32 noundef 2) #10
  %88 = and i16 %call139, -8194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %89 = load ptr, ptr @musb_writew, align 4
  tail call void %89(ptr noundef %3, i32 noundef 2, i16 noundef zeroext %88) #10
  br label %if.end143

if.end143:                                        ; preds = %if.then138, %if.end122.if.end143_crit_edge
  %90 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %91)
  %switch.selectcmp = icmp eq i8 %91, 3
  %switch.select = select i1 %switch.selectcmp, i16 4240, i16 144
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %91)
  %switch.selectcmp282 = icmp eq i8 %91, 1
  %switch.select283 = select i1 %switch.selectcmp282, i16 16528, i16 %switch.select
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %92 = load ptr, ptr @musb_writew, align 4
  tail call void %92(ptr noundef %3, i32 noundef 6, i16 noundef zeroext %switch.select283) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %93 = load ptr, ptr @musb_writew, align 4
  tail call void %93(ptr noundef %3, i32 noundef 6, i16 noundef zeroext %switch.select283) #10
  br label %if.end163

if.end163:                                        ; preds = %if.end143, %if.end83
  %dma = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 9
  %94 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %dma, align 4
  %95 = ptrtoint ptr %desc11 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %desc, ptr %desc11, align 4
  %busy = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 12
  %96 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %busy, align 1
  %wedged = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 11
  %97 = ptrtoint ptr %wedged to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %wedged, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @musb_gadget_enable.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@musb_gadget_enable, %if.then171)) #10
          to label %do.end184 [label %if.then171], !srcloc !183

if.then171:                                       ; preds = %if.end163
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %98 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %name, align 4
  %100 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %101)
  %102 = icmp ult i8 %101, 4
  br i1 %102, label %switch.lookup, label %if.then171.musb_ep_xfertype_string.exit_crit_edge

if.then171.musb_ep_xfertype_string.exit_crit_edge: ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #12
  br label %musb_ep_xfertype_string.exit

switch.lookup:                                    ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #12
  %103 = sext i8 %101 to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.musb_gadget_enable, i32 0, i32 %103
  %104 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %104)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %musb_ep_xfertype_string.exit

musb_ep_xfertype_string.exit:                     ; preds = %switch.lookup, %if.then171.musb_ep_xfertype_string.exit_crit_edge
  %s.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.6, %if.then171.musb_ep_xfertype_string.exit_crit_edge ]
  %is_in174 = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 6
  %105 = ptrtoint ptr %is_in174 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %is_in174, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool176.not = icmp eq i8 %106, 0
  %cond = select i1 %tobool176.not, ptr @.str.49, ptr @.str.48
  %107 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dma, align 4
  %tobool178.not = icmp eq ptr %108, null
  %cond179 = select i1 %tobool178.not, ptr @.str.6, ptr @.str.50
  %109 = ptrtoint ptr %packet_sz to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %packet_sz, align 4
  %conv181 = zext i16 %110 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @musb_gadget_enable.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.47, ptr noundef nonnull @musb_driver_name, ptr noundef %99, ptr noundef nonnull %s.0.i, ptr noundef nonnull %cond, ptr noundef nonnull %cond179, i32 noundef %conv181) #10
  br label %do.end184

do.end184:                                        ; preds = %musb_ep_xfertype_string.exit, %if.end163
  %irq_work = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %111 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %111, ptr noundef %irq_work, i32 noundef 0) #10
  br label %fail

fail:                                             ; preds = %do.end184, %if.then121, %if.end113.fail_crit_edge, %if.then60, %if.end52.fail_crit_edge, %cleanup, %if.end14.fail_crit_edge, %if.end.fail_crit_edge
  %status.0 = phi i32 [ -22, %if.end14.fail_crit_edge ], [ -22, %cleanup ], [ -22, %if.then60 ], [ 0, %do.end184 ], [ -22, %if.end52.fail_crit_edge ], [ -22, %if.end113.fail_crit_edge ], [ -22, %if.then121 ], [ -16, %if.end.fail_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call8) #10
  br label %cleanup187

cleanup187:                                       ; preds = %fail, %entry.cleanup187_crit_edge
  %retval.0 = phi i32 [ %status.0, %fail ], [ -22, %entry.cleanup187_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_gadget_disable(ptr noundef %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %musb1 = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %musb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %musb1, align 4
  %current_epnum = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 4
  %2 = ptrtoint ptr %current_epnum to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %current_epnum, align 4
  %idxprom = zext i8 %3 to i32
  %regs = getelementptr %struct.musb, ptr %1, i32 0, i32 39, i32 %idxprom, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %ep_select = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep_select, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 27
  %8 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mregs, align 8
  tail call void %7(ptr noundef %9, i8 noundef zeroext %3) #10
  %is_in = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 6
  %10 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %shl13 = shl nuw i32 1, %idxprom
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %intrtxe = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %intrtxe to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %intrtxe, align 4
  %14 = trunc i32 %shl13 to i16
  %15 = xor i16 %14, -1
  %conv9 = and i16 %13, %15
  store i16 %conv9, ptr %intrtxe, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %16 = load ptr, ptr @musb_writew, align 4
  %17 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mregs, align 8
  tail call void %16(ptr noundef %18, i32 noundef 6, i16 noundef zeroext %conv9) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %intrrxe = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %intrrxe to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %intrrxe, align 2
  %21 = trunc i32 %shl13 to i16
  %22 = xor i16 %21, -1
  %conv17 = and i16 %20, %22
  store i16 %conv17, ptr %intrrxe, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %23 = load ptr, ptr @musb_writew, align 4
  %24 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mregs, align 8
  tail call void %23(ptr noundef %25, i32 noundef 8, i16 noundef zeroext %conv17) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ 4, %if.else ], [ 0, %if.then ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %26 = load ptr, ptr @musb_writew, align 4
  tail call void %26(ptr noundef %5, i32 noundef %.sink, i16 noundef zeroext 0) #10
  %busy.i = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 12
  %27 = ptrtoint ptr %busy.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %busy.i, align 1
  %req_list.i = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 10
  %28 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.i.not1.i = icmp eq ptr %29, %req_list.i
  br i1 %cmp.i.not1.i, label %if.end.nuke.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.nuke.exit_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %30 = phi ptr [ %32, %while.body.i.while.body.i_crit_edge ], [ %29, %if.end.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %30, i32 -56
  tail call void @musb_g_giveback(ptr noundef %ep, ptr noundef %add.ptr.i, i32 noundef -108) #10
  %31 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %32, %req_list.i
  br i1 %cmp.i.not.i, label %while.body.i.nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.nuke.exit_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nuke.exit

nuke.exit:                                        ; preds = %while.body.i.nuke.exit_crit_edge, %if.end.nuke.exit_crit_edge
  %desc = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 8
  %33 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %desc, align 4
  %desc20 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %34 = ptrtoint ptr %desc20 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %desc20, align 4
  %irq_work = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %35 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %35, ptr noundef %irq_work, i32 noundef 0) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #10
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %36 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %1, ptr noundef nonnull @.str.55, ptr noundef %37) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_gadget_queue(ptr noundef %ep, ptr noundef %req, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ep, null
  %tobool1.not = icmp eq ptr %req, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %musb5 = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 3
  %2 = ptrtoint ptr %musb5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %musb5, align 4
  %musb9 = getelementptr inbounds %struct.musb_request, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %musb9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %musb9, align 4
  %ep10 = getelementptr inbounds %struct.musb_request, ptr %req, i32 0, i32 2
  %5 = ptrtoint ptr %ep10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ep10, align 4
  %cmp.not = icmp eq ptr %6, %ep
  br i1 %cmp.not, label %if.end12, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %controller = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 25
  %7 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %controller, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call.i)
  %cmp13.not = icmp ne i32 %call.i, -115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp14 = icmp slt i32 %call.i, 0
  %or.cond103 = and i1 %cmp13.not, %cmp14
  br i1 %or.cond103, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %controller, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #14
  %11 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %controller, align 8
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %12)
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  tail call fastcc void @trace_musb_req_enq(ptr noundef nonnull %req)
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %13 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %actual, align 4
  %status21 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %14 = ptrtoint ptr %status21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -115, ptr %status21, align 4
  %current_epnum = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 4
  %15 = ptrtoint ptr %current_epnum to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %current_epnum, align 4
  %epnum = getelementptr inbounds %struct.musb_request, ptr %req, i32 0, i32 5
  %17 = ptrtoint ptr %epnum to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %epnum, align 1
  %is_in = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 6
  %18 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_in, align 2
  %tx = getelementptr inbounds %struct.musb_request, ptr %req, i32 0, i32 4
  %20 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %tx, align 4
  %map_state.i = getelementptr inbounds %struct.musb_request, ptr %req, i32 0, i32 6
  %21 = ptrtoint ptr %map_state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %map_state.i, align 4
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %desc = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 8
  %22 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc, align 4
  %tobool32.not = icmp eq ptr %23, null
  br i1 %tobool32.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %3, ptr noundef nonnull @.str.60, ptr noundef nonnull %req, ptr noundef %25, ptr noundef nonnull @.str.61) #10
  br label %unlock

if.end34:                                         ; preds = %if.end18
  %list = getelementptr inbounds %struct.musb_request, ptr %req, i32 0, i32 1
  %req_list = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 10
  %prev.i = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %27, ptr noundef %req_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end34.list_add_tail.exit_crit_edge

if.end34.list_add_tail.exit_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %list, ptr %prev.i, align 4
  %29 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %req_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.musb_request, ptr %req, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %list, ptr %27, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end34.list_add_tail.exit_crit_edge
  %busy = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 12
  %32 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %busy, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool35.not = icmp eq i8 %33, 0
  br i1 %tobool35.not, label %land.lhs.true36, label %list_add_tail.exit.unlock_crit_edge

list_add_tail.exit.unlock_crit_edge:              ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

land.lhs.true36:                                  ; preds = %list_add_tail.exit
  %34 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %req_list, align 4
  %cmp39 = icmp eq ptr %list, %35
  br i1 %cmp39, label %if.then41, label %land.lhs.true36.unlock_crit_edge

land.lhs.true36.unlock_crit_edge:                 ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then41:                                        ; preds = %land.lhs.true36
  %call42 = tail call i32 @musb_queue_resume_work(ptr noundef %3, ptr noundef nonnull @musb_ep_restart_resume_work, ptr noundef nonnull %req) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %do.end48, label %if.then41.unlock_crit_edge

if.then41.unlock_crit_edge:                       ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

do.end48:                                         ; preds = %if.then41
  %36 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %controller, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.57, i32 noundef %call42) #14
  %call.i.i104 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i104, label %if.end.i.i105, label %do.end48.list_del.exit_crit_edge

do.end48.list_del.exit_crit_edge:                 ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i105:                                    ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.musb_request, ptr %req, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i105, %do.end48.list_del.exit_crit_edge
  %44 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i106 = getelementptr inbounds %struct.musb_request, ptr %req, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i106 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i106, align 4
  br label %unlock

unlock:                                           ; preds = %list_del.exit, %if.then41.unlock_crit_edge, %land.lhs.true36.unlock_crit_edge, %list_add_tail.exit.unlock_crit_edge, %if.then33
  %status.0 = phi i32 [ 0, %list_add_tail.exit.unlock_crit_edge ], [ %call42, %list_del.exit ], [ %call42, %if.then41.unlock_crit_edge ], [ 0, %land.lhs.true36.unlock_crit_edge ], [ -108, %if.then33 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call27) #10
  %46 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %controller, align 8
  %call.i107 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 12, i32 22
  %48 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store volatile i64 %call.i107, ptr %last_busy.i, align 8
  %49 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %controller, align 8
  %call.i108 = tail call i32 @__pm_runtime_suspend(ptr noundef %50, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %unlock, %do.end, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %status.0, %unlock ], [ -22, %entry.cleanup_crit_edge ], [ -61, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_gadget_dequeue(ptr noundef %ep, ptr noundef %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %musb4 = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %musb4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %musb4, align 4
  %tobool.not = icmp eq ptr %ep, null
  %tobool5.not = icmp eq ptr %request, null
  %or.cond = or i1 %tobool.not, %tobool5.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false6:                                   ; preds = %entry
  %ep7 = getelementptr inbounds %struct.musb_request, ptr %request, i32 0, i32 2
  %2 = ptrtoint ptr %ep7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep7, align 4
  %cmp.not = icmp eq ptr %3, %ep
  br i1 %cmp.not, label %if.end, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  tail call fastcc void @trace_musb_req_deq(ptr noundef nonnull %request)
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %req_list = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 10
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %req_list, %if.end ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %r.0 = getelementptr i8, ptr %.pn, i32 -56
  %cmp18.not = icmp eq ptr %.pn, %req_list
  %cmp20 = icmp eq ptr %r.0, %request
  %or.cond74 = or i1 %cmp18.not, %cmp20
  br i1 %or.cond74, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp20, label %if.end35, label %do.end34

do.end34:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %controller = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 25
  %5 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %controller, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.65, ptr noundef nonnull %request, ptr noundef %8) #14
  br label %done

if.end35:                                         ; preds = %for.end
  %9 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req_list, align 4
  %list38 = getelementptr inbounds %struct.musb_request, ptr %request, i32 0, i32 1
  %cmp39.not = icmp eq ptr %10, %list38
  br i1 %cmp39.not, label %lor.lhs.false41, label %if.end35.if.then44_crit_edge

if.end35.if.then44_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

lor.lhs.false41:                                  ; preds = %if.end35
  %busy = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 12
  %11 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %busy, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool43.not = icmp eq i8 %12, 0
  br i1 %tobool43.not, label %if.else, label %lor.lhs.false41.if.then44_crit_edge

lor.lhs.false41.if.then44_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.then44:                                        ; preds = %lor.lhs.false41.if.then44_crit_edge, %if.end35.if.then44_crit_edge
  tail call void @musb_g_giveback(ptr noundef nonnull %ep, ptr noundef nonnull %request, i32 noundef -104)
  br label %done

if.else:                                          ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @musb_g_giveback(ptr noundef nonnull %ep, ptr noundef nonnull %request, i32 noundef -104)
  br label %done

done:                                             ; preds = %if.else, %if.then44, %do.end34
  %status.0 = phi i32 [ -22, %do.end34 ], [ 0, %if.then44 ], [ 0, %if.else ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call11) #10
  br label %cleanup

cleanup:                                          ; preds = %done, %lor.lhs.false6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %done ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_gadget_set_halt(ptr noundef %ep, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %current_epnum = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %current_epnum to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %current_epnum, align 4
  %musb1 = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 3
  %2 = ptrtoint ptr %musb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %musb1, align 4
  %idxprom = zext i8 %1 to i32
  %regs = getelementptr %struct.musb, ptr %3, i32 0, i32 39, i32 %idxprom, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %tobool.not = icmp eq ptr %ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mregs = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 27
  %6 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mregs, align 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %type = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 5
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp8 = icmp eq i8 %9, 1
  br i1 %cmp8, label %if.end.done_crit_edge, label %if.end11

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end11:                                         ; preds = %if.end
  %ep_select = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep_select, align 4
  tail call void %11(ptr noundef %7, i8 noundef zeroext %1) #10
  %req_list.i = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 10
  %12 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %13, %req_list.i
  %add.ptr.i = getelementptr i8, ptr %13, i32 -56
  %spec.select.i = select i1 %cmp.i.not.i, ptr null, ptr %add.ptr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool13.not = icmp eq i32 %value, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end11
  %tobool15.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %3, ptr noundef nonnull @.str.67, ptr noundef %15) #10
  br label %done

if.end17:                                         ; preds = %if.then14
  %is_in = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 6
  %16 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool18.not = icmp eq i8 %17, 0
  br i1 %tobool18.not, label %if.end17.if.end27_crit_edge, label %if.then19

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then19:                                        ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %18 = load ptr, ptr @musb_readw, align 4
  %call20 = tail call zeroext i16 %18(ptr noundef %5, i32 noundef 2) #10
  %19 = and i16 %call20, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool22.not = icmp eq i16 %19, 0
  br i1 %tobool22.not, label %if.then19.if.end27_crit_edge, label %if.then23

if.then19.if.end27_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %name24 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %20 = ptrtoint ptr %name24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name24, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %3, ptr noundef nonnull @.str.68, ptr noundef %21) #10
  br label %done

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %wedged = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 11
  %22 = ptrtoint ptr %wedged to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %wedged, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then19.if.end27_crit_edge, %if.end17.if.end27_crit_edge
  %cond = phi ptr [ @.str.70, %if.end17.if.end27_crit_edge ], [ @.str.70, %if.then19.if.end27_crit_edge ], [ @.str.71, %if.else ]
  %name28 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %23 = ptrtoint ptr %name28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name28, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %3, ptr noundef nonnull @.str.69, ptr noundef %24, ptr noundef nonnull %cond) #10
  %is_in30 = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 6
  %25 = ptrtoint ptr %is_in30 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_in30, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool31.not = icmp eq i8 %26, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %27 = load ptr, ptr @musb_readw, align 4
  br i1 %tobool31.not, label %if.else49, label %if.then32

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %call33 = tail call zeroext i16 %27(ptr noundef %5, i32 noundef 2) #10
  %28 = or i16 %call33, 246
  %29 = and i16 %call33, -248
  %30 = or i16 %29, 198
  %csr.0 = select i1 %tobool13.not, i16 %30, i16 %28
  %31 = and i16 %csr.0, -2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %32 = load ptr, ptr @musb_writew, align 4
  tail call void %32(ptr noundef %5, i32 noundef 2, i16 noundef zeroext %31) #10
  br label %if.end64

if.else49:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %call50 = tail call zeroext i16 %27(ptr noundef %5, i32 noundef 6) #10
  %33 = or i16 %call50, 245
  %34 = and i16 %call50, -246
  %35 = or i16 %34, 149
  %csr.1 = select i1 %tobool13.not, i16 %35, i16 %33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %36 = load ptr, ptr @musb_writew, align 4
  tail call void %36(ptr noundef %5, i32 noundef 6, i16 noundef zeroext %csr.1) #10
  br label %if.end64

if.end64:                                         ; preds = %if.else49, %if.then32
  %busy = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 12
  %37 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %busy, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool65.not = icmp ne i8 %38, 0
  %tobool13.not.not = xor i1 %tobool13.not, true
  %brmerge = or i1 %tobool65.not, %tobool13.not.not
  %tobool68.not = icmp eq ptr %spec.select.i, null
  %or.cond = select i1 %brmerge, i1 true, i1 %tobool68.not
  br i1 %or.cond, label %if.end64.done_crit_edge, label %if.then69

if.end64.done_crit_edge:                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then69:                                        ; preds = %if.end64
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %3, ptr noundef nonnull @.str.72) #10
  tail call fastcc void @trace_musb_req_start(ptr noundef nonnull %spec.select.i) #10
  %39 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ep_select, align 4
  %41 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mregs, align 8
  %epnum.i = getelementptr inbounds %struct.musb_request, ptr %spec.select.i, i32 0, i32 5
  %43 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %epnum.i, align 1
  tail call void %40(ptr noundef %42, i8 noundef zeroext %44) #10
  %tx.i = getelementptr inbounds %struct.musb_request, ptr %spec.select.i, i32 0, i32 4
  %45 = ptrtoint ptr %tx.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @txstate(ptr noundef %3, ptr noundef nonnull %spec.select.i) #10
  br label %done

if.else.i:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rxstate(ptr noundef %3, ptr noundef nonnull %spec.select.i) #10
  br label %done

done:                                             ; preds = %if.else.i, %if.then.i, %if.end64.done_crit_edge, %if.then23, %if.then16, %if.end.done_crit_edge
  %status.0 = phi i32 [ -11, %if.then16 ], [ -11, %if.then23 ], [ 0, %if.end64.done_crit_edge ], [ -22, %if.end.done_crit_edge ], [ 0, %if.then.i ], [ 0, %if.else.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call4) #10
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %done ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_gadget_set_wedge(ptr noundef %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wedged = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 11
  %0 = ptrtoint ptr %wedged to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %wedged, align 4
  %call = tail call i32 @usb_ep_set_halt(ptr noundef nonnull %ep) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_gadget_fifo_status(ptr nocapture noundef readonly %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_ep = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %hw_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_ep, align 4
  %regs = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %desc = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 8
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %is_in = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 6
  %6 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %musb3 = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 3
  %8 = ptrtoint ptr %musb3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %musb3, align 4
  %current_epnum = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 4
  %10 = ptrtoint ptr %current_epnum to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %current_epnum, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %9, i32 0, i32 27
  %12 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mregs, align 8
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #10
  %ep_select = getelementptr inbounds %struct.musb, ptr %9, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ep_select, align 4
  tail call void %15(ptr noundef %13, i8 noundef zeroext %11) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %16 = load ptr, ptr @musb_readw, align 4
  %call11 = tail call zeroext i16 %16(ptr noundef %3, i32 noundef 8) #10
  %conv12 = zext i16 %call11 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call7) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %retval1.0 = phi i32 [ -22, %land.lhs.true.if.end_crit_edge ], [ %conv12, %if.then ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @musb_gadget_fifo_flush(ptr nocapture noundef readonly %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %musb1 = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %musb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %musb1, align 4
  %current_epnum = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 4
  %2 = ptrtoint ptr %current_epnum to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %current_epnum, align 4
  %idxprom = zext i8 %3 to i32
  %regs = getelementptr %struct.musb, ptr %1, i32 0, i32 39, i32 %idxprom, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %mregs = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 27
  %6 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mregs, align 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %ep_select = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep_select, align 4
  tail call void %9(ptr noundef %7, i8 noundef zeroext %3) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %10 = load ptr, ptr @musb_writew, align 4
  %intrtxe = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %intrtxe to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %intrtxe, align 4
  %shl = shl nuw i32 1, %idxprom
  %13 = trunc i32 %shl to i16
  %14 = xor i16 %13, -1
  %conv9 = and i16 %12, %14
  tail call void %10(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %conv9) #10
  %is_in = getelementptr inbounds %struct.musb_ep, ptr %ep, i32 0, i32 6
  %15 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %17 = load ptr, ptr @musb_readw, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call10 = tail call zeroext i16 %17(ptr noundef %5, i32 noundef 2) #10
  %18 = and i16 %call10, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool13.not = icmp eq i16 %18, 0
  br i1 %tobool13.not, label %if.then.if.end24_crit_edge, label %if.then14

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %or = and i16 %call10, -176
  %19 = or i16 %or, 174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %20 = load ptr, ptr @musb_writew, align 4
  tail call void %20(ptr noundef %5, i32 noundef 2, i16 noundef zeroext %19) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %21 = load ptr, ptr @musb_writew, align 4
  tail call void %21(ptr noundef %5, i32 noundef 2, i16 noundef zeroext %19) #10
  br label %if.end24

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call zeroext i16 %17(ptr noundef %5, i32 noundef 6) #10
  %22 = or i16 %call20, 85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %23 = load ptr, ptr @musb_writew, align 4
  tail call void %23(ptr noundef %5, i32 noundef 6, i16 noundef zeroext %22) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %24 = load ptr, ptr @musb_writew, align 4
  tail call void %24(ptr noundef %5, i32 noundef 6, i16 noundef zeroext %22) #10
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then14, %if.then.if.end24_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %25 = load ptr, ptr @musb_writew, align 4
  %26 = ptrtoint ptr %intrtxe to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %intrtxe, align 4
  tail call void %25(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %27) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !200
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #10, !srcloc !201
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !202
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_musb_req_enq(ptr noundef %req) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_enq, i32 0, i32 1), ptr blockaddress(@trace_musb_req_enq, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !183

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !184

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !173) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  %call42 = tail call i32 @__traceiter_musb_req_enq(ptr noundef null, ptr noundef %req) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %13 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !184

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !173) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_enq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_enq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_musb_req_enq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_musb_req_enq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 305, ptr noundef nonnull @.str.25) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !188
  %31 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
declare dso_local i32 @musb_queue_resume_work(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_ep_restart_resume_work(ptr noundef %musb, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_musb_req_start(ptr noundef %data) #10
  %ep_select.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %ep_select.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep_select.i, align 4
  %mregs.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %2 = ptrtoint ptr %mregs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mregs.i, align 8
  %epnum.i = getelementptr inbounds %struct.musb_request, ptr %data, i32 0, i32 5
  %4 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %epnum.i, align 1
  tail call void %1(ptr noundef %3, i8 noundef zeroext %5) #10
  %tx.i = getelementptr inbounds %struct.musb_request, ptr %data, i32 0, i32 4
  %6 = ptrtoint ptr %tx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @txstate(ptr noundef %musb, ptr noundef %data) #10
  br label %musb_ep_restart.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rxstate(ptr noundef %musb, ptr noundef %data) #10
  br label %musb_ep_restart.exit

musb_ep_restart.exit:                             ; preds = %if.else.i, %if.then.i
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_req_enq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_musb_req_deq(ptr noundef %req) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_deq, i32 0, i32 1), ptr blockaddress(@trace_musb_req_deq, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !183

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !184

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !173) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !205
  %call42 = tail call i32 @__traceiter_musb_req_deq(ptr noundef null, ptr noundef %req) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !206
  %13 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !184

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !173) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_deq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_deq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_musb_req_deq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_musb_req_deq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 310, ptr noundef nonnull @.str.25) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !188
  %31 = tail call i32 @llvm.read_register.i32(metadata !173) #10
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
declare dso_local i32 @__traceiter_musb_req_deq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_set_charger_current(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !27, !28, !29, !30, !31, !33, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !80, !82, !84, !85, !87, !88, !90, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !114, !115, !116, !117, !118, !119, !121, !123, !125, !127, !129, !131, !132, !133, !134, !135, !136, !138, !140, !142, !143, !144, !146, !147, !149, !150, !151, !152, !154, !155, !157, !159, !161, !163, !165, !167, !169, !171}
!llvm.named.register.sp = !{!173}
!llvm.module.flags = !{!174, !175, !176, !177, !178, !179, !180, !181}
!llvm.ident = !{!182}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/musb/musb_gadget.c", i32 421, i32 17}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/musb/musb_gadget.c", i32 450, i32 18}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/musb/musb_gadget.c", i32 466, i32 19}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/musb/musb_gadget.c", i32 503, i32 20}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/musb/musb_gadget.c", i32 815, i32 17}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/musb/musb_gadget.c", i32 816, i32 15}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/musb/musb_gadget.c", i32 816, i32 26}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/musb/musb_gadget.c", i32 830, i32 18}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/musb/musb_gadget.c", i32 836, i32 18}
!18 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/musb/musb_gadget.c", i32 841, i32 18}
!20 = !{ptr @musb_gadget_setup.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1793, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @musb_gadget_setup.__key.11, !21, !"__key", i1 false, i1 false}
!24 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1941, i32 3}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @musb_g_resume._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @musb_g_resume._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1952, i32 17}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1971, i32 3}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @musb_g_suspend._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @musb_g_suspend._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1988, i32 17}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/musb/musb_gadget.c", i32 2005, i32 18}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/musb/musb_gadget.c", i32 2035, i32 17}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/musb/musb_gadget.c", i32 2037, i32 7}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/musb/musb_gadget.c", i32 2037, i32 20}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../drivers/usb/musb/musb_trace.h", i32 272, i32 1}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!52 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../drivers/usb/musb/musb_trace.h", i32 277, i32 1}
!58 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/musb/musb_gadget.c", i32 236, i32 18}
!61 = distinct !{null, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/musb/musb_gadget.c", i32 243, i32 18}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/musb/musb_gadget.c", i32 255, i32 18}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/musb/musb_gadget.c", i32 261, i32 18}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/musb/musb_gadget.c", i32 266, i32 17}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/musb/musb_gadget.c", i32 394, i32 17}
!71 = distinct !{null, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/musb/musb_gadget.c", i32 395, i32 39}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/musb/musb_gadget.c", i32 395, i32 47}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../drivers/usb/musb/musb_trace.h", i32 282, i32 1}
!77 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!78 = distinct !{null, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/musb/musb_gadget.c", i32 546, i32 18}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/musb/musb_gadget.c", i32 551, i32 18}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../drivers/usb/musb/musb_trace.h", i32 287, i32 1}
!84 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../drivers/usb/musb/musb_trace.h", i32 292, i32 1}
!87 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../drivers/usb/musb/musb_trace.h", i32 297, i32 1}
!90 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!91 = !{ptr @musb_gadget_operations, !92, !"musb_gadget_operations", i1 false, i1 false}
!92 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1671, i32 36}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1605, i32 17}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1606, i32 11}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1606, i32 18}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1705, i32 20}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1707, i32 13}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1707, i32 20}
!105 = !{ptr @musb_ep_ops, !106, !"musb_ep_ops", i1 false, i1 false}
!106 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1490, i32 32}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/musb/musb_gadget.c", i32 952, i32 19}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/musb/musb_gadget.c", i32 975, i32 19}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1064, i32 2}
!113 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @musb_gadget_enable.__UNIQUE_ID_ddebug354, !112, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!116 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/musb/musb_core.h", i32 434, i32 7}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/musb/musb_core.h", i32 437, i32 7}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/musb/musb_core.h", i32 440, i32 7}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/musb/musb_core.h", i32 443, i32 7}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1118, i32 17}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1212, i32 3}
!131 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @musb_gadget_queue._entry, !130, !"_entry", i1 false, i1 false}
!135 = !{ptr @musb_gadget_queue._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1235, i32 18}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1236, i32 20}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1251, i32 4}
!142 = !{ptr @musb_gadget_queue._entry.62, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @musb_gadget_queue._entry_ptr.64, !141, !"_entry_ptr", i1 false, i1 false}
!144 = distinct !{null, !145, !"__already_done", i1 false, i1 false}
!145 = !{!"../drivers/usb/musb/musb_trace.h", i32 302, i32 1}
!146 = distinct !{null, !145, !"__warned", i1 false, i1 false}
!147 = !{ptr @.str.65, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1286, i32 3}
!149 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @musb_gadget_dequeue._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @musb_gadget_dequeue._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = distinct !{null, !153, !"__already_done", i1 false, i1 false}
!153 = !{!"../drivers/usb/musb/musb_trace.h", i32 307, i32 1}
!154 = distinct !{null, !153, !"__warned", i1 false, i1 false}
!155 = !{ptr @.str.67, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1353, i32 19}
!157 = !{ptr @.str.68, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1362, i32 20}
!159 = !{ptr @.str.69, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1372, i32 17}
!161 = !{ptr @.str.70, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1372, i32 51}
!163 = !{ptr @.str.71, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1372, i32 59}
!165 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1399, i32 18}
!167 = !{ptr @.str.73, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1535, i32 18}
!169 = !{ptr @.str.74, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1563, i32 18}
!171 = !{ptr @.str.75, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/usb/musb/musb_gadget.c", i32 1573, i32 17}
!173 = !{!"sp"}
!174 = !{i32 1, !"wchar_size", i32 2}
!175 = !{i32 1, !"min_enum_size", i32 4}
!176 = !{i32 8, !"branch-target-enforcement", i32 0}
!177 = !{i32 8, !"sign-return-address", i32 0}
!178 = !{i32 8, !"sign-return-address-all", i32 0}
!179 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!180 = !{i32 7, !"uwtable", i32 1}
!181 = !{i32 7, !"frame-pointer", i32 2}
!182 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!183 = !{i64 2148743866, i64 2148743871, i64 2148743884, i64 2148743928, i64 2148743962, i64 2148743983}
!184 = !{!"branch_weights", i32 2000, i32 1}
!185 = !{i64 2155781478}
!186 = !{i64 2155781669}
!187 = !{i64 2149478677}
!188 = !{i64 2149479713}
!189 = !{i64 2155797180}
!190 = !{i64 2155797371}
!191 = !{i8 0, i8 2}
!192 = !{i64 2155812882}
!193 = !{i64 2155813073}
!194 = !{i64 2155828698}
!195 = !{i64 2155828895}
!196 = !{i64 2155848699}
!197 = !{i64 2155848894}
!198 = !{i64 2155864623}
!199 = !{i64 2155864820}
!200 = !{i64 2148261470}
!201 = !{i64 746293, i64 746318, i64 746340, i64 746356, i64 746368, i64 746388, i64 746412, i64 746428, i64 746440}
!202 = !{i64 2148261658}
!203 = !{i64 2155880525}
!204 = !{i64 2155880718}
!205 = !{i64 2155896319}
!206 = !{i64 2155896512}
