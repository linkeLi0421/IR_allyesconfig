; ModuleID = '/llk/IR_all_yes/drivers/usb/host/xhci-dbgcap.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-dbgcap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.69 }
%struct.atomic_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dbc_request = type { ptr, i32, i32, ptr, %struct.list_head, i32, i32, ptr, %struct.list_head, i32, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xhci_dbc = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.xhci_erst, ptr, ptr, i32, i32, i32, %struct.delayed_work, i8, [2 x %struct.dbc_ep], ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xhci_erst = type { ptr, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dbc_ep = type { ptr, %struct.list_head, ptr, i8 }
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
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.xhci_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr }
%union.xhci_trb = type { %struct.xhci_link_trb }
%struct.xhci_link_trb = type { i64, i32, i32 }
%struct.dbc_regs = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i32, i32 }
%struct.xhci_hcd = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, ptr, ptr, %struct.xhci_erst, ptr, %struct.list_head, %struct.mutex, ptr, [256 x ptr], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.s3_save, i64, i32, i32, ptr, %struct.xhci_hub, %struct.xhci_hub, i8, ptr, i32, ptr, i32, %struct.timer_list, i32, i16, ptr, ptr, %struct.list_head, ptr, [4 x i8], [0 x i32] }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_hub = type { ptr, i32, ptr, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i32, i32, i32, i32, i32, [31 x i32], i32, i32, [31 x %struct.completion], [31 x %struct.completion] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.dbc_driver = type { ptr, ptr }
%struct.xhci_container_ctx = type { i32, i32, ptr, i32 }
%struct.xhci_segment = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.xhci_erst_entry = type { i64, i32, i32 }
%struct.dbc_str_descs = type { [64 x i8], [64 x i8], [64 x i8], [64 x i8] }
%struct.dbc_info_context = type { i64, i64, i64, i64, i32, [7 x i32] }
%struct.xhci_event_cmd = type { i64, i32, i32 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.70, i32 }
%union.anon.70 = type { ptr }

@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@dev_attr_dbc = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dbc_show, ptr @dbc_store }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_xhci_dbc_alloc_request = external dso_local global %struct.tracepoint, align 4
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/host/xhci-trace.h\00", [34 x i8] zeroinitializer }, align 32
@trace_xhci_dbc_alloc_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xhci_dbc_free_request = external dso_local global %struct.tracepoint, align 4
@trace_xhci_dbc_free_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dbc_ep_do_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 313, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to map buffer\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dbc_ep_do_queue\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/host/xhci-dbgcap.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dbc_ep_do_queue._entry_ptr = internal global ptr @dbc_ep_do_queue._entry, section ".printk_index", align 4
@dbc_ep_do_queue._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 319, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to queue trbs\0A\00", [42 x i8] zeroinitializer }, align 32
@dbc_ep_do_queue._entry_ptr.10 = internal global ptr @dbc_ep_do_queue._entry.8, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_xhci_dbc_gadget_ep_queue = external dso_local global %struct.tracepoint, align 4
@trace_xhci_dbc_gadget_ep_queue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xhci_dbc_queue_request = external dso_local global %struct.tracepoint, align 4
@trace_xhci_dbc_queue_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xhci_do_dbc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&dbc->event_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@xhci_do_dbc_init.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&dbc->event_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@xhci_do_dbc_init.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dbc->lock\00", [21 x i8] zeroinitializer }, align 32
@xhci_dbc_handle_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 910, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stop handling dbc events\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xhci_dbc_handle_events\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xhci_dbc_handle_events._entry_ptr = internal global ptr @xhci_dbc_handle_events._entry, section ".printk_index", align 4
@xhci_dbc_do_handle_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 768, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DbC connected\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xhci_dbc_do_handle_events\00", [38 x i8] zeroinitializer }, align 32
@xhci_dbc_do_handle_events._entry_ptr = internal global ptr @xhci_dbc_do_handle_events._entry, section ".printk_index", align 4
@xhci_dbc_do_handle_events._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.5, i32 776, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DbC configured\0A\00", [16 x i8] zeroinitializer }, align 32
@xhci_dbc_do_handle_events._entry_ptr.25 = internal global ptr @xhci_dbc_do_handle_events._entry.23, section ".printk_index", align 4
@xhci_dbc_do_handle_events._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.5, i32 788, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DbC cable unplugged\0A\00", [43 x i8] zeroinitializer }, align 32
@xhci_dbc_do_handle_events._entry_ptr.28 = internal global ptr @xhci_dbc_do_handle_events._entry.26, section ".printk_index", align 4
@xhci_dbc_do_handle_events._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.5, i32 797, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DbC port reset\0A\00", [16 x i8] zeroinitializer }, align 32
@xhci_dbc_do_handle_events._entry_ptr.31 = internal global ptr @xhci_dbc_do_handle_events._entry.29, section ".printk_index", align 4
@xhci_dbc_do_handle_events._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.5, i32 809, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DbC Endpoint stall\0A\00", [44 x i8] zeroinitializer }, align 32
@xhci_dbc_do_handle_events._entry_ptr.34 = internal global ptr @xhci_dbc_do_handle_events._entry.32, section ".printk_index", align 4
@xhci_dbc_do_handle_events._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.22, ptr @.str.5, i32 843, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown DbC state %d\0A\00", [42 x i8] zeroinitializer }, align 32
@xhci_dbc_do_handle_events._entry_ptr.37 = internal global ptr @xhci_dbc_do_handle_events._entry.35, section ".printk_index", align 4
@__tracepoint_xhci_dbc_giveback_request = external dso_local global %struct.tracepoint, align 4
@trace_xhci_dbc_giveback_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xhci_dbc_handle_event = external dso_local global %struct.tracepoint, align 4
@trace_xhci_dbc_handle_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dbc_handle_port_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 667, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DbC port connect change\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dbc_handle_port_status\00", [41 x i8] zeroinitializer }, align 32
@dbc_handle_port_status._entry_ptr = internal global ptr @dbc_handle_port_status._entry, section ".printk_index", align 4
@dbc_handle_port_status._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.5, i32 670, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DbC port reset change\0A\00", [41 x i8] zeroinitializer }, align 32
@dbc_handle_port_status._entry_ptr.42 = internal global ptr @dbc_handle_port_status._entry.40, section ".printk_index", align 4
@dbc_handle_port_status._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.5, i32 673, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DbC port link status change\0A\00", [35 x i8] zeroinitializer }, align 32
@dbc_handle_port_status._entry_ptr.45 = internal global ptr @dbc_handle_port_status._entry.43, section ".printk_index", align 4
@dbc_handle_port_status._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.5, i32 676, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DbC config error change\0A\00", [39 x i8] zeroinitializer }, align 32
@dbc_handle_port_status._entry_ptr.48 = internal global ptr @dbc_handle_port_status._entry.46, section ".printk_index", align 4
@dbc_handle_xfer_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.5, i32 710, ptr @.str.51, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tx error %d detected\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dbc_handle_xfer_event\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dbc_handle_xfer_event._entry_ptr = internal global ptr @dbc_handle_xfer_event._entry, section ".printk_index", align 4
@dbc_handle_xfer_event._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.50, ptr @.str.5, i32 714, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown tx error %d\0A\00", [43 x i8] zeroinitializer }, align 32
@dbc_handle_xfer_event._entry_ptr.54 = internal global ptr @dbc_handle_xfer_event._entry.52, section ".printk_index", align 4
@dbc_handle_xfer_event._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.50, ptr @.str.5, i32 728, ptr @.str.51, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no matched request\0A\00", [44 x i8] zeroinitializer }, align 32
@dbc_handle_xfer_event._entry_ptr.57 = internal global ptr @dbc_handle_xfer_event._entry.55, section ".printk_index", align 4
@__tracepoint_xhci_dbc_handle_transfer = external dso_local global %struct.tracepoint, align 4
@trace_xhci_dbc_handle_transfer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dbc\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"initialized\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"connected\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"configured\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stalled\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0001\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Linux USB Debug Target\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Linux Foundation\00", [47 x i8] zeroinitializer }, align 32
@switch.table.dbc_show = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 5]
@__sancov_gen_cov_switch_values.72 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 16, i64 32768, i64 34816]
@__sancov_gen_cov_switch_values.74 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 3, i64 4, i64 5, i64 6, i64 13]
@___asan_gen_.75 = private unnamed_addr constant [13 x i8] c"dev_attr_dbc\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [33 x i8] c"../drivers/usb/host/xhci-trace.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 606, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 108, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 313, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 319, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 326, i32 6 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 964, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 965, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 910, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 768, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 776, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 788, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 797, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 809, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 843, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 667, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 670, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 673, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 676, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 710, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 714, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 728, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1027, i32 8 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 983, i32 7 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 986, i32 7 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 989, i32 7 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 992, i32 7 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 995, i32 7 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 998, i32 7 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1001, i32 7 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1004, i32 22 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1017, i32 20 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1019, i32 25 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 47, i32 18 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 58, i32 18 }
@___asan_gen_.276 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.277 = private constant [34 x i8] c"../drivers/usb/host/xhci-dbgcap.c\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 69, i32 18 }
@___asan_gen_.279 = private unnamed_addr constant [22 x i8] c"switch.table.dbc_show\00", align 1
@llvm.compiler.used = appending global [85 x ptr] [ptr @dbc_ep_do_queue._entry, ptr @dbc_ep_do_queue._entry.8, ptr @dbc_ep_do_queue._entry_ptr, ptr @dbc_ep_do_queue._entry_ptr.10, ptr @dbc_handle_port_status._entry, ptr @dbc_handle_port_status._entry.40, ptr @dbc_handle_port_status._entry.43, ptr @dbc_handle_port_status._entry.46, ptr @dbc_handle_port_status._entry_ptr, ptr @dbc_handle_port_status._entry_ptr.42, ptr @dbc_handle_port_status._entry_ptr.45, ptr @dbc_handle_port_status._entry_ptr.48, ptr @dbc_handle_xfer_event._entry, ptr @dbc_handle_xfer_event._entry.52, ptr @dbc_handle_xfer_event._entry.55, ptr @dbc_handle_xfer_event._entry_ptr, ptr @dbc_handle_xfer_event._entry_ptr.54, ptr @dbc_handle_xfer_event._entry_ptr.57, ptr @xhci_dbc_do_handle_events._entry, ptr @xhci_dbc_do_handle_events._entry.23, ptr @xhci_dbc_do_handle_events._entry.26, ptr @xhci_dbc_do_handle_events._entry.29, ptr @xhci_dbc_do_handle_events._entry.32, ptr @xhci_dbc_do_handle_events._entry.35, ptr @xhci_dbc_do_handle_events._entry_ptr, ptr @xhci_dbc_do_handle_events._entry_ptr.25, ptr @xhci_dbc_do_handle_events._entry_ptr.28, ptr @xhci_dbc_do_handle_events._entry_ptr.31, ptr @xhci_dbc_do_handle_events._entry_ptr.34, ptr @xhci_dbc_do_handle_events._entry_ptr.37, ptr @xhci_dbc_handle_events._entry, ptr @xhci_dbc_handle_events._entry_ptr, ptr @dev_attr_dbc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @xhci_do_dbc_init.__key, ptr @.str.13, ptr @xhci_do_dbc_init.__key.14, ptr @.str.15, ptr @xhci_do_dbc_init.__key.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @switch.table.dbc_show], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dbc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbc_ep_do_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbc_ep_do_queue._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_do_dbc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_do_dbc_init.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_do_dbc_init.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_dbc_handle_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_dbc_do_handle_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_dbc_do_handle_events._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_dbc_do_handle_events._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_dbc_do_handle_events._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_dbc_do_handle_events._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_dbc_do_handle_events._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbc_handle_port_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbc_handle_port_status._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbc_handle_port_status._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbc_handle_port_status._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbc_handle_xfer_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbc_handle_xfer_event._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbc_handle_xfer_event._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dbc_show to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dbc_alloc_request(ptr noundef %dbc, i32 noundef %direction, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %switch = icmp ugt i32 %direction, 1
  %tobool.not = icmp eq ptr %dbc, null
  %or.cond = or i1 %tobool.not, %switch
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %entry
  %or.i = or i32 %flags, 256
  %and.i.i.i = and i32 %flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %if.end3.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !151

if.end3.kzalloc.exit_crit_edge:                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %if.end3
  %and2.i.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %if.end3.kzalloc.exit_crit_edge
  %retval.0.i20.i.i = phi i32 [ 0, %if.end3.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 56) #13
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end6

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dbc7 = getelementptr inbounds %struct.dbc_request, ptr %call7.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %dbc7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dbc, ptr %dbc7, align 8
  %list_pending = getelementptr inbounds %struct.dbc_request, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %list_pending to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list_pending, ptr %list_pending, align 4
  %prev.i = getelementptr inbounds %struct.dbc_request, ptr %call7.i.i, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list_pending, ptr %prev.i, align 8
  %list_pool = getelementptr inbounds %struct.dbc_request, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %list_pool to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list_pool, ptr %list_pool, align 8
  %prev.i18 = getelementptr inbounds %struct.dbc_request, ptr %call7.i.i, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list_pool, ptr %prev.i18, align 4
  %direction8 = getelementptr inbounds %struct.dbc_request, ptr %call7.i.i, i32 0, i32 11
  %7 = trunc i32 %direction to i8
  %8 = ptrtoint ptr %direction8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %direction8, align 4
  %bf.shl = shl nuw i8 %7, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %direction8, align 4
  tail call fastcc void @trace_xhci_dbc_alloc_request(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %kzalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end6 ], [ null, %entry.cleanup_crit_edge ], [ null, %kzalloc.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xhci_dbc_alloc_request(ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_alloc_request, i32 0, i32 1), ptr blockaddress(@trace_xhci_dbc_alloc_request, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !152

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !151

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !153
  %call42 = tail call i32 @__traceiter_xhci_dbc_alloc_request(ptr noundef null, ptr noundef %req) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !154
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !151

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_alloc_request, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_alloc_request, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xhci_dbc_alloc_request.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xhci_dbc_alloc_request.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 609, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dbc_free_request(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_xhci_dbc_free_request(ptr noundef %req)
  tail call void @kfree(ptr noundef %req) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xhci_dbc_free_request(ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_free_request, i32 0, i32 1), ptr blockaddress(@trace_xhci_dbc_free_request, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !152

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !151

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !157
  %call42 = tail call i32 @__traceiter_xhci_dbc_free_request(ptr noundef null, ptr noundef %req) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !158
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !151

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_free_request, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_free_request, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xhci_dbc_free_request.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xhci_dbc_free_request.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 614, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbc_ep_queue(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dbc1 = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 7
  %0 = ptrtoint ptr %dbc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbc1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #10
  %state = getelementptr inbounds %struct.xhci_dbc, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp14 = icmp eq i32 %3, 4
  br i1 %cmp14, label %if.then16, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %if.end
  %direction = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 11
  %4 = ptrtoint ptr %dbc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dbc1, align 4
  %dev2.i = getelementptr inbounds %struct.xhci_dbc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2.i, align 4
  %8 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %direction, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %length.i = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.then16.if.end18_crit_edge, label %lor.lhs.false.i

if.then16.if.end18_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

lor.lhs.false.i:                                  ; preds = %if.then16
  %11 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req, align 4
  %tobool3.not.i = icmp eq ptr %12, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.end18_crit_edge, label %if.end.i

lor.lhs.false.i.if.end18_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end.i:                                         ; preds = %lor.lhs.false.i
  %actual.i = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 6
  %13 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %actual.i, align 4
  %status.i = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 5
  %14 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -115, ptr %status.i, align 4
  %direction6.i = getelementptr %struct.xhci_dbc, ptr %5, i32 0, i32 15, i32 %bf.cast.i, i32 3
  %15 = ptrtoint ptr %direction6.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load7.i = load i8, ptr %direction6.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %12) #10
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !151

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %7) #10
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %7, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %19, %if.end.i.i.i ], [ %17, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #10
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %dma64.i = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 2
  %20 = ptrtoint ptr %dma64.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %dma64.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %7, i32 noundef -1) #10
  br label %do.end.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load7.i)
  %tobool10.not.i = icmp sgt i8 %bf.load7.i, -1
  %cond.i = select i1 %tobool10.not.i, i32 1, i32 2
  tail call void @debug_dma_map_single(ptr noundef %7, ptr noundef nonnull %12, i32 noundef %10) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %21 = load ptr, ptr @mem_map, align 4
  %22 = ptrtoint ptr %12 to i32
  %sub.i.i = add i32 %22, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %21, i32 %shr.i.i
  %and.i.i = and i32 %22, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %7, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %10, i32 noundef %cond.i, i32 noundef 0) #10
  %dma.i = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 2
  %23 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call41.i.i, ptr %dma.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %7, i32 noundef %call41.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.do.end.i_crit_edge, label %if.end16.i

dma_map_single_attrs.exit.i.do.end.i_crit_edge:   ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %dma_map_single_attrs.exit.i.do.end.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  %24 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev2.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.3) #14
  br label %if.end18

if.end16.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %26 = ptrtoint ptr %dbc1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dbc1, align 4
  %ring2.i.i = getelementptr %struct.xhci_dbc, ptr %5, i32 0, i32 15, i32 %bf.cast.i, i32 2
  %28 = ptrtoint ptr %ring2.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring2.i.i, align 4
  %30 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma.i, align 4
  %conv.i.i = zext i32 %31 to i64
  %32 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length.i, align 4
  %conv4.i.i = zext i32 %33 to i64
  %call.i58.i = tail call i32 @count_trbs(i64 noundef %conv.i.i, i64 noundef %conv4.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i58.i)
  %cmp.not.i.i = icmp eq i32 %call.i58.i, 1
  br i1 %cmp.not.i.i, label %if.end16.i.if.end.i.i_crit_edge, label %do.end.i.i, !prof !151

if.end16.i.if.end.i.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 256, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end16.i.if.end.i.i_crit_edge
  %num_trbs_free.i.i = getelementptr inbounds %struct.xhci_ring, ptr %29, i32 0, i32 11
  %34 = ptrtoint ptr %num_trbs_free.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_trbs_free.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %call.i58.i)
  %cmp24.i.i = icmp ult i32 %35, %call.i58.i
  br i1 %cmp24.i.i, label %do.end22.i, label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.end.i.i
  %36 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma.i, align 4
  %enqueue.i.i = getelementptr inbounds %struct.xhci_ring, ptr %29, i32 0, i32 2
  %38 = ptrtoint ptr %enqueue.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %enqueue.i.i, align 4
  %cycle_state.i.i = getelementptr inbounds %struct.xhci_ring, ptr %29, i32 0, i32 7
  %40 = ptrtoint ptr %cycle_state.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cycle_state.i.i, align 4
  %42 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length.i, align 4
  %and.i59.i = and i32 %43, 131071
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool31.not.i.i = icmp eq i32 %41, 0
  %..i60.i = select i1 %tobool31.not.i.i, i32 16778272, i32 1056
  %trb36.i.i = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 10
  %44 = ptrtoint ptr %trb36.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %39, ptr %trb36.i.i, align 4
  %enq_seg.i.i = getelementptr inbounds %struct.xhci_ring, ptr %29, i32 0, i32 3
  %45 = ptrtoint ptr %enq_seg.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %enq_seg.i.i, align 4
  %47 = ptrtoint ptr %enqueue.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %enqueue.i.i, align 4
  %call38.i.i = tail call i32 @xhci_trb_virt_to_dma(ptr noundef %46, ptr noundef %48) #10
  %trb_dma.i.i = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 9
  %49 = ptrtoint ptr %trb_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call38.i.i, ptr %trb_dma.i.i, align 4
  %50 = ptrtoint ptr %enqueue.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %enqueue.i.i, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %37) #10
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %51, align 8
  %arrayidx6.i.i.i = getelementptr [4 x i32], ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %arrayidx6.i.i.i, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %and.i59.i) #10
  %arrayidx8.i.i.i = getelementptr [4 x i32], ptr %51, i32 0, i32 2
  %56 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx8.i.i.i, align 8
  %57 = tail call i32 @llvm.bswap.i32(i32 %..i60.i) #10
  %arrayidx10.i.i.i = getelementptr [4 x i32], ptr %51, i32 0, i32 3
  %58 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx10.i.i.i, align 4
  tail call fastcc void @trace_xhci_dbc_gadget_ep_queue(ptr noundef %29, ptr noundef %51) #10
  %59 = ptrtoint ptr %num_trbs_free.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_trbs_free.i.i, align 4
  %dec.i.i.i = add i32 %60, -1
  store i32 %dec.i.i.i, ptr %num_trbs_free.i.i, align 4
  %61 = ptrtoint ptr %enqueue.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %enqueue.i.i, align 4
  %incdec.ptr.i.i.i = getelementptr %union.xhci_trb, ptr %62, i32 1
  store ptr %incdec.ptr.i.i.i, ptr %enqueue.i.i, align 4
  %control.i.i.i = getelementptr %union.xhci_trb, ptr %62, i32 1, i32 0, i32 2
  %63 = ptrtoint ptr %control.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %control.i.i.i, align 4
  %and.i.i.i = and i32 %64, 16515072
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 1572864
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end27.i.i.if.end32.i_crit_edge

if.end27.i.i.if.end32.i_crit_edge:                ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

if.then.i.i.i:                                    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %xor.i.i.i = xor i32 %64, 16777216
  %65 = ptrtoint ptr %control.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %xor.i.i.i, ptr %control.i.i.i, align 4
  %66 = ptrtoint ptr %enq_seg.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %enq_seg.i.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %70 = ptrtoint ptr %enqueue.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %enqueue.i.i, align 4
  %71 = ptrtoint ptr %cycle_state.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cycle_state.i.i, align 4
  %xor14.i.i.i = xor i32 %72, 1
  store i32 %xor14.i.i.i, ptr %cycle_state.i.i, align 4
  br label %if.end32.i

do.end22.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev2.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.9) #14
  %75 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dma.i, align 4
  %77 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %length.i, align 4
  %79 = ptrtoint ptr %direction6.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load27.i = load i8, ptr %direction6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load27.i)
  %tobool30.not.i = icmp sgt i8 %bf.load27.i, -1
  %cond31.i = select i1 %tobool30.not.i, i32 1, i32 2
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %76, i32 noundef %78, i32 noundef %cond31.i, i32 noundef 0) #10
  br label %if.end18

if.end32.i:                                       ; preds = %if.then.i.i.i, %if.end27.i.i.if.end32.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !159
  tail call void @arm_heavy_mb() #10
  %arrayidx51.i.i = getelementptr [4 x i32], ptr %39, i32 0, i32 3
  %80 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx51.i.i, align 4
  %and52.i.i = and i32 %81, -16777217
  %masksel.i.i = select i1 %tobool31.not.i.i, i32 0, i32 16777216
  %or48.sink.i.i = or i32 %and52.i.i, %masksel.i.i
  store i32 %or48.sink.i.i, ptr %arrayidx51.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  tail call void @arm_heavy_mb() #10
  %82 = ptrtoint ptr %direction6.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load.i.i = load i8, ptr %direction6.i, align 4
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 7
  %bf.cast.i.i = zext i8 %bf.lshr.i.i to i32
  %83 = shl nuw nsw i32 %bf.cast.i.i, 16
  %regs.i.i = getelementptr inbounds %struct.xhci_dbc, ptr %27, i32 0, i32 3
  %84 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i.i, align 4
  %doorbell.i.i = getelementptr inbounds %struct.dbc_regs, ptr %85, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %doorbell.i.i, i32 %83) #10, !srcloc !161
  %list_pending.i = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 8
  %list_pending33.i = getelementptr %struct.xhci_dbc, ptr %5, i32 0, i32 15, i32 %bf.cast.i, i32 1
  %prev.i.i = getelementptr %struct.xhci_dbc, ptr %5, i32 0, i32 15, i32 %bf.cast.i, i32 1, i32 1
  %86 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_pending.i, ptr noundef %87, ptr noundef %list_pending33.i) #10
  br i1 %call.i.i.i, label %if.end.i.i62.i, label %if.end32.i.if.end18_crit_edge

if.end32.i.if.end18_crit_edge:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end.i.i62.i:                                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %list_pending.i, ptr %prev.i.i, align 4
  %89 = ptrtoint ptr %list_pending.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %list_pending33.i, ptr %list_pending.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 8, i32 1
  %90 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %prev3.i.i.i, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %list_pending.i, ptr %87, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end.i.i62.i, %if.end32.i.if.end18_crit_edge, %do.end22.i, %do.end.i, %lor.lhs.false.i.if.end18_crit_edge, %if.then16.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %ret.0 = phi i32 [ -108, %if.end.if.end18_crit_edge ], [ -14, %do.end.i ], [ -14, %do.end22.i ], [ -22, %lor.lhs.false.i.if.end18_crit_edge ], [ -22, %if.then16.if.end18_crit_edge ], [ 0, %if.end32.i.if.end18_crit_edge ], [ 0, %if.end.i.i62.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %1, i32 noundef %call11) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %92 = load ptr, ptr @system_wq, align 4
  %event_work = getelementptr inbounds %struct.xhci_dbc, ptr %1, i32 0, i32 13
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %92, ptr noundef %event_work, i32 noundef 0) #10
  tail call fastcc void @trace_xhci_dbc_queue_request(ptr noundef %req)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end18 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xhci_dbc_queue_request(ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_queue_request, i32 0, i32 1), ptr blockaddress(@trace_xhci_dbc_queue_request, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !152

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !151

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !162
  %call42 = tail call i32 @__traceiter_xhci_dbc_queue_request(ptr noundef null, ptr noundef %req) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !163
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !151

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_queue_request, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_queue_request, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xhci_dbc_queue_request.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xhci_dbc_queue_request.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 619, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
define dso_local i32 @xhci_dbc_init(ptr noundef %xhci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xhci, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %cap_regs.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 2
  %4 = ptrtoint ptr %cap_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cap_regs.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp2.i.i = icmp eq i32 %6, -1
  br i1 %cmp2.i.i, label %entry.cleanup_crit_edge, label %if.end.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  %8 = lshr i32 %7, 14
  %shl.i.i = and i32 %8, 262140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i)
  %tobool4.not.i.i = icmp eq i32 %shl.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  br label %do.body.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i.i:                                      ; preds = %if.end24.i.i.do.body.i.i_crit_edge, %if.end.i.i.do.body.i.i_crit_edge
  %offset.1.i.i = phi i32 [ %add.i.i, %if.end24.i.i.do.body.i.i_crit_edge ], [ %shl.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %add.ptr10.i.i = getelementptr i8, ptr %5, i32 %offset.1.i.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i) #10, !srcloc !164
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp14.i.i = icmp eq i32 %9, -1
  br i1 %cmp14.i.i, label %do.body.i.i.cleanup_crit_edge, label %if.end16.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.1.i.i)
  %cmp17.not.i.i = icmp ne i32 %offset.1.i.i, 0
  %and21.i.i = and i32 %10, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and21.i.i)
  %cmp22.i.i = icmp eq i32 %and21.i.i, 10
  %or.cond.i.i = select i1 %cmp17.not.i.i, i1 %cmp22.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i, label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.end16.i.i
  %shr25.i.i = lshr i32 %10, 8
  %and26.i.i = and i32 %shr25.i.i, 255
  %shl27.i.i = shl nuw nsw i32 %and26.i.i, 2
  %add.i.i = add i32 %shl27.i.i, %offset.1.i.i
  %tobool28.not.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end24.i.i.cleanup_crit_edge, label %if.end24.i.i.do.body.i.i_crit_edge

if.end24.i.i.do.body.i.i_crit_edge:               ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

if.end24.i.i.cleanup_crit_edge:                   ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end16.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 256) #13
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %regs.i = getelementptr inbounds %struct.xhci_dbc, ptr %call7.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr10.i.i, ptr %regs.i, align 4
  %control.i = getelementptr inbounds %struct.dbc_regs, ptr %add.ptr10.i.i, i32 0, i32 6
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control.i) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  %.mask.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool8.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool8.not.i, label %do.body11.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

do.body11.i:                                      ; preds = %if.end4.i
  %lock.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 12
  %call14.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %dbc17.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 68
  %14 = ptrtoint ptr %dbc17.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dbc17.i, align 8
  %tobool18.not.i = icmp eq ptr %15, null
  br i1 %tobool18.not.i, label %if.end, label %if.then19.i

if.then19.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call14.i) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

if.end:                                           ; preds = %do.body11.i
  %16 = ptrtoint ptr %dbc17.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i.i, ptr %dbc17.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call14.i) #10
  %xhci24.i = getelementptr inbounds %struct.xhci_dbc, ptr %call7.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %xhci24.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %xhci, ptr %xhci24.i, align 8
  %18 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xhci, align 8
  %sysdev.i = getelementptr inbounds %struct.usb_bus, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %sysdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sysdev.i, align 4
  %dev.i = getelementptr inbounds %struct.xhci_dbc, ptr %call7.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %dev.i, align 4
  %event_work.i = getelementptr inbounds %struct.xhci_dbc, ptr %call7.i.i.i, i32 0, i32 13
  tail call void @__init_work(ptr noundef %event_work.i, i32 noundef 0) #10
  %23 = ptrtoint ptr %event_work.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %event_work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.xhci_dbc, ptr %call7.i.i.i, i32 0, i32 13, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @xhci_do_dbc_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry34.i = getelementptr inbounds %struct.xhci_dbc, ptr %call7.i.i.i, i32 0, i32 13, i32 0, i32 1
  %24 = ptrtoint ptr %entry34.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry34.i, ptr %entry34.i, align 4
  %prev.i.i = getelementptr inbounds %struct.xhci_dbc, ptr %call7.i.i.i, i32 0, i32 13, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry34.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.xhci_dbc, ptr %call7.i.i.i, i32 0, i32 13, i32 0, i32 2
  %26 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @xhci_dbc_handle_events, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.xhci_dbc, ptr %call7.i.i.i, i32 0, i32 13, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.15, ptr noundef nonnull @xhci_do_dbc_init.__key.14) #10
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @xhci_do_dbc_init.__key.16, i16 noundef signext 3) #10
  %call2 = tail call i32 @xhci_dbc_tty_probe(ptr noundef %xhci) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.init_err2_crit_edge

if.end.init_err2_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %init_err2

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @device_create_file(ptr noundef %3, ptr noundef nonnull @dev_attr_dbc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %init_err1

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

init_err1:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %dbc17.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dbc17.i, align 8
  tail call void @xhci_dbc_tty_remove(ptr noundef %28) #10
  br label %init_err2

init_err2:                                        ; preds = %init_err1, %if.end.init_err2_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.init_err2_crit_edge ], [ %call6, %init_err1 ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %29 = ptrtoint ptr %dbc17.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dbc17.i, align 8
  tail call void @kfree(ptr noundef %30) #10
  %31 = ptrtoint ptr %dbc17.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %dbc17.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  br label %cleanup

cleanup:                                          ; preds = %init_err2, %if.end5.cleanup_crit_edge, %if.then19.i, %if.then9.i, %if.end.i.cleanup_crit_edge, %if.end24.i.i.cleanup_crit_edge, %do.body.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5.cleanup_crit_edge ], [ %ret.0, %init_err2 ], [ -19, %if.end.i.i.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -16, %if.then19.i ], [ -16, %if.then9.i ], [ -19, %if.end24.i.i.cleanup_crit_edge ], [ -19, %do.body.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_dbc_tty_probe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_dbc_tty_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_dbc_exit(ptr noundef %xhci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dbc = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 68
  %0 = ptrtoint ptr %dbc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbc, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xhci, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void @device_remove_file(ptr noundef %5, ptr noundef nonnull @dev_attr_dbc) #10
  %6 = ptrtoint ptr %dbc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dbc, align 8
  tail call void @xhci_dbc_tty_remove(ptr noundef %7) #10
  %8 = ptrtoint ptr %dbc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dbc, align 8
  tail call fastcc void @xhci_dbc_stop(ptr noundef %9)
  %lock.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %10 = ptrtoint ptr %dbc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dbc, align 8
  tail call void @kfree(ptr noundef %11) #10
  %12 = ptrtoint ptr %dbc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %dbc, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xhci_dbc_stop(ptr noundef %dbc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dbc, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !168

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 634, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 12
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end.sw.epilog_crit_edge [
    i32 0, label %if.end.cleanup_crit_edge
    i32 4, label %if.end.sw.bb21_crit_edge
    i32 5, label %if.end.sw.bb21_crit_edge56
  ]

if.end.sw.bb21_crit_edge56:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb21

if.end.sw.bb21_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb21

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end.sw.bb21_crit_edge, %if.end.sw.bb21_crit_edge56
  %driver = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 16
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 4
  %disconnect = getelementptr inbounds %struct.dbc_driver, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %disconnect, align 4
  %tobool22.not = icmp eq ptr %6, null
  br i1 %tobool22.not, label %sw.bb21.sw.epilog_crit_edge, label %if.then23

sw.bb21.sw.epilog_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then23:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %6(ptr noundef %dbc) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then23, %sw.bb21.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %event_work = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 13
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %event_work) #10
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dbc) #10
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %xhci_do_dbc_stop.exit, label %if.then39

xhci_do_dbc_stop.exit:                            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dbc, i32 noundef %call31) #10
  br label %cleanup

if.then39:                                        ; preds = %sw.epilog
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !169
  tail call void @arm_heavy_mb() #10
  %regs.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 3
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %control.i = getelementptr inbounds %struct.dbc_regs, ptr %10, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control.i, i32 0) #10, !srcloc !161
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dbc, i32 noundef %call31) #10
  br i1 %tobool.not, label %if.then39.xhci_dbc_mem_cleanup.exit_crit_edge, label %if.end.i

if.then39.xhci_dbc_mem_cleanup.exit_crit_edge:    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %xhci_dbc_mem_cleanup.exit

if.end.i:                                         ; preds = %if.then39
  %eps.i.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 15
  %12 = call ptr @memset(ptr %eps.i.i, i32 0, i32 40)
  %string.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 9
  %13 = ptrtoint ptr %string.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %string.i, align 4
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then2.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 1
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %string_size.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 11
  %17 = ptrtoint ptr %string_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %string_size.i, align 4
  %string_dma.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 10
  %19 = ptrtoint ptr %string_dma.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %string_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %14, i32 noundef %20, i32 noundef 0) #10
  %21 = ptrtoint ptr %string.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %string.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i.if.end5.i_crit_edge
  %dev6.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 1
  %ctx.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 8
  %22 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.end5.i.dbc_free_ctx.exit.i_crit_edge, label %if.end.i.i

if.end5.i.dbc_free_ctx.exit.i_crit_edge:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbc_free_ctx.exit.i

if.end.i.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev6.i, align 4
  %size.i.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i.i, align 4
  %bytes.i.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %23, i32 0, i32 2
  %28 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bytes.i.i, align 4
  %dma.i.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %23, i32 0, i32 3
  %30 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %25, i32 noundef %27, ptr noundef %29, i32 noundef %31, i32 noundef 0) #10
  tail call void @kfree(ptr noundef nonnull %23) #10
  br label %dbc_free_ctx.exit.i

dbc_free_ctx.exit.i:                              ; preds = %if.end.i.i, %if.end5.i.dbc_free_ctx.exit.i_crit_edge
  %32 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %ctx.i, align 4
  %erst.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 7
  %33 = ptrtoint ptr %erst.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %erst.i, align 4
  %tobool.not.i36.i = icmp eq ptr %34, null
  br i1 %tobool.not.i36.i, label %dbc_free_ctx.exit.i.dbc_erst_free.exit.i_crit_edge, label %if.then.i.i

dbc_free_ctx.exit.i.dbc_erst_free.exit.i_crit_edge: ; preds = %dbc_free_ctx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbc_erst_free.exit.i

if.then.i.i:                                      ; preds = %dbc_free_ctx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev6.i, align 4
  %erst_dma_addr.i.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 7, i32 2
  %37 = ptrtoint ptr %erst_dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %erst_dma_addr.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %36, i32 noundef 16, ptr noundef nonnull %34, i32 noundef %38, i32 noundef 0) #10
  br label %dbc_erst_free.exit.i

dbc_erst_free.exit.i:                             ; preds = %if.then.i.i, %dbc_free_ctx.exit.i.dbc_erst_free.exit.i_crit_edge
  %39 = ptrtoint ptr %erst.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %erst.i, align 4
  %40 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev6.i, align 4
  %ring_out.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 6
  %42 = ptrtoint ptr %ring_out.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ring_out.i, align 4
  %tobool.not.i38.i = icmp eq ptr %43, null
  br i1 %tobool.not.i38.i, label %dbc_erst_free.exit.i.dbc_ring_free.exit.i_crit_edge, label %if.end.i39.i

dbc_erst_free.exit.i.dbc_ring_free.exit.i_crit_edge: ; preds = %dbc_erst_free.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbc_ring_free.exit.i

if.end.i39.i:                                     ; preds = %dbc_erst_free.exit.i
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %tobool1.not.i.i = icmp eq ptr %45, null
  br i1 %tobool1.not.i.i, label %if.end.i39.i.if.end9.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i39.i.if.end9.i.i_crit_edge:               ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i39.i
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %tobool3.not.i.i = icmp eq ptr %47, null
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.if.end9.i.i_crit_edge, label %if.then4.i.i

land.lhs.true.i.i.if.end9.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i

if.then4.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dma.i40.i = getelementptr inbounds %struct.xhci_segment, ptr %45, i32 0, i32 2
  %48 = ptrtoint ptr %dma.i40.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dma.i40.i, align 4
  tail call void @dma_free_attrs(ptr noundef %41, i32 noundef 4096, ptr noundef nonnull %47, i32 noundef %49, i32 noundef 0) #10
  %50 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %43, align 4
  tail call void @kfree(ptr noundef %51) #10
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then4.i.i, %land.lhs.true.i.i.if.end9.i.i_crit_edge, %if.end.i39.i.if.end9.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %43) #10
  br label %dbc_ring_free.exit.i

dbc_ring_free.exit.i:                             ; preds = %if.end9.i.i, %dbc_erst_free.exit.i.dbc_ring_free.exit.i_crit_edge
  %52 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev6.i, align 4
  %ring_in.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 5
  %54 = ptrtoint ptr %ring_in.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring_in.i, align 4
  %tobool.not.i41.i = icmp eq ptr %55, null
  br i1 %tobool.not.i41.i, label %dbc_ring_free.exit.i.dbc_ring_free.exit49.i_crit_edge, label %if.end.i43.i

dbc_ring_free.exit.i.dbc_ring_free.exit49.i_crit_edge: ; preds = %dbc_ring_free.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbc_ring_free.exit49.i

if.end.i43.i:                                     ; preds = %dbc_ring_free.exit.i
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %tobool1.not.i42.i = icmp eq ptr %57, null
  br i1 %tobool1.not.i42.i, label %if.end.i43.i.if.end9.i48.i_crit_edge, label %land.lhs.true.i45.i

if.end.i43.i.if.end9.i48.i_crit_edge:             ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i48.i

land.lhs.true.i45.i:                              ; preds = %if.end.i43.i
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %tobool3.not.i44.i = icmp eq ptr %59, null
  br i1 %tobool3.not.i44.i, label %land.lhs.true.i45.i.if.end9.i48.i_crit_edge, label %if.then4.i47.i

land.lhs.true.i45.i.if.end9.i48.i_crit_edge:      ; preds = %land.lhs.true.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i48.i

if.then4.i47.i:                                   ; preds = %land.lhs.true.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  %dma.i46.i = getelementptr inbounds %struct.xhci_segment, ptr %57, i32 0, i32 2
  %60 = ptrtoint ptr %dma.i46.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma.i46.i, align 4
  tail call void @dma_free_attrs(ptr noundef %53, i32 noundef 4096, ptr noundef nonnull %59, i32 noundef %61, i32 noundef 0) #10
  %62 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %55, align 4
  tail call void @kfree(ptr noundef %63) #10
  br label %if.end9.i48.i

if.end9.i48.i:                                    ; preds = %if.then4.i47.i, %land.lhs.true.i45.i.if.end9.i48.i_crit_edge, %if.end.i43.i.if.end9.i48.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %55) #10
  br label %dbc_ring_free.exit49.i

dbc_ring_free.exit49.i:                           ; preds = %if.end9.i48.i, %dbc_ring_free.exit.i.dbc_ring_free.exit49.i_crit_edge
  %64 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev6.i, align 4
  %ring_evt.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 4
  %66 = ptrtoint ptr %ring_evt.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ring_evt.i, align 4
  %tobool.not.i50.i = icmp eq ptr %67, null
  br i1 %tobool.not.i50.i, label %dbc_ring_free.exit49.i.dbc_ring_free.exit58.i_crit_edge, label %if.end.i52.i

dbc_ring_free.exit49.i.dbc_ring_free.exit58.i_crit_edge: ; preds = %dbc_ring_free.exit49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbc_ring_free.exit58.i

if.end.i52.i:                                     ; preds = %dbc_ring_free.exit49.i
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %tobool1.not.i51.i = icmp eq ptr %69, null
  br i1 %tobool1.not.i51.i, label %if.end.i52.i.if.end9.i57.i_crit_edge, label %land.lhs.true.i54.i

if.end.i52.i.if.end9.i57.i_crit_edge:             ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i57.i

land.lhs.true.i54.i:                              ; preds = %if.end.i52.i
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %tobool3.not.i53.i = icmp eq ptr %71, null
  br i1 %tobool3.not.i53.i, label %land.lhs.true.i54.i.if.end9.i57.i_crit_edge, label %if.then4.i56.i

land.lhs.true.i54.i.if.end9.i57.i_crit_edge:      ; preds = %land.lhs.true.i54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i57.i

if.then4.i56.i:                                   ; preds = %land.lhs.true.i54.i
  call void @__sanitizer_cov_trace_pc() #12
  %dma.i55.i = getelementptr inbounds %struct.xhci_segment, ptr %69, i32 0, i32 2
  %72 = ptrtoint ptr %dma.i55.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dma.i55.i, align 4
  tail call void @dma_free_attrs(ptr noundef %65, i32 noundef 4096, ptr noundef nonnull %71, i32 noundef %73, i32 noundef 0) #10
  %74 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %67, align 4
  tail call void @kfree(ptr noundef %75) #10
  br label %if.end9.i57.i

if.end9.i57.i:                                    ; preds = %if.then4.i56.i, %land.lhs.true.i54.i.if.end9.i57.i_crit_edge, %if.end.i52.i.if.end9.i57.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %67) #10
  br label %dbc_ring_free.exit58.i

dbc_ring_free.exit58.i:                           ; preds = %if.end9.i57.i, %dbc_ring_free.exit49.i.dbc_ring_free.exit58.i_crit_edge
  %76 = ptrtoint ptr %ring_in.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %ring_in.i, align 4
  %77 = ptrtoint ptr %ring_out.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %ring_out.i, align 4
  %78 = ptrtoint ptr %ring_evt.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %ring_evt.i, align 4
  br label %xhci_dbc_mem_cleanup.exit

xhci_dbc_mem_cleanup.exit:                        ; preds = %dbc_ring_free.exit58.i, %if.then39.xhci_dbc_mem_cleanup.exit_crit_edge
  %dev = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 1
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %80, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %xhci_dbc_mem_cleanup.exit, %xhci_do_dbc_stop.exit, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xhci_dbc_suspend(ptr nocapture noundef readonly %xhci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dbc1 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 68
  %0 = ptrtoint ptr %dbc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbc1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.xhci_dbc, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %resume_required = getelementptr inbounds %struct.xhci_dbc, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %resume_required to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %resume_required, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %resume_required, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  tail call fastcc void @xhci_dbc_stop(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xhci_dbc_resume(ptr nocapture noundef readonly %xhci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dbc1 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 68
  %0 = ptrtoint ptr %dbc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbc1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %resume_required = getelementptr inbounds %struct.xhci_dbc, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %resume_required to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %resume_required, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear = and i8 %bf.load, 127
  %3 = ptrtoint ptr %resume_required to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.clear, ptr %resume_required, align 4
  tail call fastcc void @xhci_dbc_start(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xhci_dbc_start(ptr noundef %dbc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dbc, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !168

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 613, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dbc) #10
  %state.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 12
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %do.body.i, label %if.end.if.then33_crit_edge

if.end.if.then33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

do.body.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !170
  tail call void @arm_heavy_mb() #10
  %regs.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 3
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %control.i = getelementptr inbounds %struct.dbc_regs, ptr %5, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control.i, i32 0) #10, !srcloc !161
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %control2.i = getelementptr inbounds %struct.dbc_regs, ptr %7, i32 0, i32 6
  %call.i1 = tail call i32 @xhci_handshake(ptr noundef %control2.i, i32 noundef -2147483648, i32 noundef 0, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool.not.i = icmp eq i32 %call.i1, 0
  br i1 %tobool.not.i, label %if.end4.i, label %do.body.i.if.then33_crit_edge

do.body.i.if.then33_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

if.end4.i:                                        ; preds = %do.body.i
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i.i = tail call fastcc ptr @xhci_dbc_ring_alloc(ptr noundef %9, i32 noundef 6) #10
  %ring_evt.i.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 4
  %10 = ptrtoint ptr %ring_evt.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %ring_evt.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end4.i.if.then33_crit_edge, label %if.end.i.i

if.end4.i.if.then33_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

if.end.i.i:                                       ; preds = %if.end4.i
  %call3.i.i = tail call fastcc ptr @xhci_dbc_ring_alloc(ptr noundef %9, i32 noundef 2) #10
  %ring_in.i.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 5
  %11 = ptrtoint ptr %ring_in.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call3.i.i, ptr %ring_in.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool5.not.i.i, label %if.end.i.i.in_fail.i.i_crit_edge, label %if.end7.i.i

if.end.i.i.in_fail.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %in_fail.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %call8.i.i = tail call fastcc ptr @xhci_dbc_ring_alloc(ptr noundef %9, i32 noundef 2) #10
  %ring_out.i.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 6
  %12 = ptrtoint ptr %ring_out.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i.i, ptr %ring_out.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool10.not.i.i, label %if.end7.i.i.out_fail.i.i_crit_edge, label %if.end12.i.i

if.end7.i.i.out_fail.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_fail.i.i

if.end12.i.i:                                     ; preds = %if.end7.i.i
  %13 = ptrtoint ptr %ring_evt.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ring_evt.i.i, align 4
  %erst.i.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 7
  %erst_dma_addr.i.i.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 7, i32 2
  %call.i.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef 16, ptr noundef %erst_dma_addr.i.i.i, i32 noundef 2592, i32 noundef 0) #10
  %15 = ptrtoint ptr %erst.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i.i.i, ptr %erst.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end12.i.i.erst_fail.i.i_crit_edge, label %if.end17.i.i

if.end12.i.i.erst_fail.i.i_crit_edge:             ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %erst_fail.i.i

if.end17.i.i:                                     ; preds = %if.end12.i.i
  %num_entries.i.i.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %num_entries.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %num_entries.i.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %dma.i.i.i = getelementptr inbounds %struct.xhci_segment, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma.i.i.i, align 4
  %conv.i.i.i = zext i32 %20 to i64
  %21 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i.i) #10
  %22 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %call.i.i.i.i, align 8
  %23 = ptrtoint ptr %erst.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %erst.i.i, align 4
  %seg_size.i.i.i = getelementptr inbounds %struct.xhci_erst_entry, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %seg_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 65536, ptr %seg_size.i.i.i, align 8
  %26 = load ptr, ptr %erst.i.i, align 4
  %rsvd.i.i.i = getelementptr inbounds %struct.xhci_erst_entry, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %rsvd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %rsvd.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 2848, i32 noundef 16) #13
  %tobool.not.i1.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i1.i.i, label %if.end17.i.i.dbc_alloc_ctx.exit.thread.i.i_crit_edge, label %if.end.i4.i.i

if.end17.i.i.dbc_alloc_ctx.exit.thread.i.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbc_alloc_ctx.exit.thread.i.i

if.end.i4.i.i:                                    ; preds = %if.end17.i.i
  %size.i.i.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 192, ptr %size.i.i.i, align 4
  %dma.i2.i.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %call.i.i3.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef 192, ptr noundef %dma.i2.i.i, i32 noundef 2592, i32 noundef 0) #10
  %bytes.i.i.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %bytes.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i3.i.i, ptr %bytes.i.i.i, align 8
  %tobool4.not.i.i.i = icmp eq ptr %call.i.i3.i.i, null
  br i1 %tobool4.not.i.i.i, label %if.then5.i.i.i, label %if.end22.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #10
  br label %dbc_alloc_ctx.exit.thread.i.i

dbc_alloc_ctx.exit.thread.i.i:                    ; preds = %if.then5.i.i.i, %if.end17.i.i.dbc_alloc_ctx.exit.thread.i.i_crit_edge
  %ctx48.i.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 8
  br label %ctx_fail.i.i

if.end22.i.i:                                     ; preds = %if.end.i4.i.i
  %ctx.i.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 8
  %31 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i.i.i.i, ptr %ctx.i.i, align 4
  %string_size.i.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 11
  %32 = ptrtoint ptr %string_size.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 256, ptr %string_size.i.i, align 4
  %string_dma.i.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 10
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef 256, ptr noundef %string_dma.i.i, i32 noundef 2592, i32 noundef 0) #10
  %string.i.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 9
  %33 = ptrtoint ptr %string.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i.i.i, ptr %string.i.i, align 4
  %tobool26.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool26.not.i.i, label %string_fail.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end22.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !171
  tail call void @arm_heavy_mb() #10
  %erst_size.i.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 7, i32 3
  %34 = ptrtoint ptr %erst_size.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %erst_size.i.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #10
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %ersts.i.i = getelementptr inbounds %struct.dbc_regs, ptr %38, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ersts.i.i, i32 %36) #10, !srcloc !161
  %39 = ptrtoint ptr %erst_dma_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %erst_dma_addr.i.i.i, align 4
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %erstba.i.i = getelementptr inbounds %struct.dbc_regs, ptr %42, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !172
  tail call void @arm_heavy_mb() #10
  %43 = tail call i32 @llvm.bswap.i32(i32 %40) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %erstba.i.i, i32 %43) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i = getelementptr i8, ptr %erstba.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #10, !srcloc !161
  %44 = ptrtoint ptr %ring_evt.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ring_evt.i.i, align 4
  %deq_seg.i.i = getelementptr inbounds %struct.xhci_ring, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %deq_seg.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %deq_seg.i.i, align 4
  %dequeue.i.i = getelementptr inbounds %struct.xhci_ring, ptr %45, i32 0, i32 4
  %48 = ptrtoint ptr %dequeue.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dequeue.i.i, align 4
  %call34.i.i = tail call i32 @xhci_trb_virt_to_dma(ptr noundef %47, ptr noundef %49) #10
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %erdp.i.i = getelementptr inbounds %struct.dbc_regs, ptr %51, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !172
  tail call void @arm_heavy_mb() #10
  %52 = tail call i32 @llvm.bswap.i32(i32 %call34.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %erdp.i.i, i32 %52) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @arm_heavy_mb() #10
  %add.ptr.i6.i.i = getelementptr i8, ptr %erdp.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 0) #10, !srcloc !161
  %53 = ptrtoint ptr %string.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %string.i.i, align 4
  %serial.i.i.i = getelementptr inbounds %struct.dbc_str_descs, ptr %54, i32 0, i32 3
  %wData.i.i.i = getelementptr inbounds %struct.dbc_str_descs, ptr %54, i32 0, i32 3, i32 2
  %call.i7.i.i = tail call i32 @utf8s_to_utf16s(ptr noundef nonnull @.str.69, i32 noundef 4, i32 noundef 1, ptr noundef %wData.i.i.i, i32 noundef 64) #10
  %55 = ptrtoint ptr %serial.i.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 10, ptr %serial.i.i.i, align 1
  %bDescriptorType.i.i.i = getelementptr inbounds %struct.dbc_str_descs, ptr %54, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %bDescriptorType.i.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 3, ptr %bDescriptorType.i.i.i, align 1
  %product.i.i.i = getelementptr inbounds %struct.dbc_str_descs, ptr %54, i32 0, i32 2
  %wData4.i.i.i = getelementptr inbounds %struct.dbc_str_descs, ptr %54, i32 0, i32 2, i32 2
  %call6.i.i.i = tail call i32 @utf8s_to_utf16s(ptr noundef nonnull @.str.70, i32 noundef 22, i32 noundef 1, ptr noundef %wData4.i.i.i, i32 noundef 64) #10
  %57 = ptrtoint ptr %product.i.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 46, ptr %product.i.i.i, align 1
  %bDescriptorType8.i.i.i = getelementptr inbounds %struct.dbc_str_descs, ptr %54, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %bDescriptorType8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 3, ptr %bDescriptorType8.i.i.i, align 1
  %manufacturer.i.i.i = getelementptr inbounds %struct.dbc_str_descs, ptr %54, i32 0, i32 1
  %wData13.i.i.i = getelementptr inbounds %struct.dbc_str_descs, ptr %54, i32 0, i32 1, i32 2
  %call15.i.i.i = tail call i32 @utf8s_to_utf16s(ptr noundef nonnull @.str.71, i32 noundef 16, i32 noundef 1, ptr noundef %wData13.i.i.i, i32 noundef 64) #10
  %59 = ptrtoint ptr %manufacturer.i.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 34, ptr %manufacturer.i.i.i, align 1
  %bDescriptorType17.i.i.i = getelementptr inbounds %struct.dbc_str_descs, ptr %54, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %bDescriptorType17.i.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 3, ptr %bDescriptorType17.i.i.i, align 1
  %61 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 4, ptr %54, align 1
  %arrayidx23.i.i.i = getelementptr [64 x i8], ptr %54, i32 0, i32 1
  %62 = ptrtoint ptr %arrayidx23.i.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 3, ptr %arrayidx23.i.i.i, align 1
  %arrayidx25.i.i.i = getelementptr [64 x i8], ptr %54, i32 0, i32 2
  %63 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 9, ptr %arrayidx25.i.i.i, align 1
  %arrayidx27.i.i.i = getelementptr [64 x i8], ptr %54, i32 0, i32 3
  %64 = ptrtoint ptr %arrayidx27.i.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 4, ptr %arrayidx27.i.i.i, align 1
  br i1 %tobool.not, label %do.body.i.i.if.end8.i_crit_edge, label %if.end.i15.i.i

do.body.i.i.if.end8.i_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.end.i15.i.i:                                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ctx.i.i, align 4
  %bytes.i9.i.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %bytes.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bytes.i9.i.i, align 4
  %69 = ptrtoint ptr %string_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %string_dma.i.i, align 4
  %conv.i10.i.i = zext i32 %70 to i64
  %71 = tail call i64 @llvm.bswap.i64(i64 %conv.i10.i.i) #10
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %68, align 8
  %add.i.i.i = add i32 %70, 64
  %conv1.i.i.i = zext i32 %add.i.i.i to i64
  %73 = tail call i64 @llvm.bswap.i64(i64 %conv1.i.i.i) #10
  %manufacturer.i11.i.i = getelementptr inbounds %struct.dbc_info_context, ptr %68, i32 0, i32 1
  %74 = ptrtoint ptr %manufacturer.i11.i.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %manufacturer.i11.i.i, align 8
  %add2.i.i.i = add i32 %70, 128
  %conv3.i.i.i = zext i32 %add2.i.i.i to i64
  %75 = tail call i64 @llvm.bswap.i64(i64 %conv3.i.i.i) #10
  %product.i12.i.i = getelementptr inbounds %struct.dbc_info_context, ptr %68, i32 0, i32 2
  %76 = ptrtoint ptr %product.i12.i.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %product.i12.i.i, align 8
  %add4.i.i.i = add i32 %70, 192
  %conv5.i.i.i = zext i32 %add4.i.i.i to i64
  %77 = tail call i64 @llvm.bswap.i64(i64 %conv5.i.i.i) #10
  %serial.i13.i.i = getelementptr inbounds %struct.dbc_info_context, ptr %68, i32 0, i32 3
  %78 = ptrtoint ptr %serial.i13.i.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %serial.i13.i.i, align 8
  %length.i.i.i = getelementptr inbounds %struct.dbc_info_context, ptr %68, i32 0, i32 4
  %79 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 69348874, ptr %length.i.i.i, align 8
  %80 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ctx.i.i, align 4
  %bytes7.i.i.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %bytes7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bytes7.i.i.i, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %83, i32 64
  %84 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i, align 4
  %control.i.i.i = getelementptr inbounds %struct.dbc_regs, ptr %85, i32 0, i32 6
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control.i.i.i) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !174
  %and.i.i.i = and i32 %86, 65280
  %87 = ptrtoint ptr %ring_out.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ring_out.i.i, align 4
  %enq_seg.i.i.i = getelementptr inbounds %struct.xhci_ring, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %enq_seg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %enq_seg.i.i.i, align 4
  %enqueue.i.i.i = getelementptr inbounds %struct.xhci_ring, ptr %88, i32 0, i32 2
  %91 = ptrtoint ptr %enqueue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %enqueue.i.i.i, align 4
  %call10.i.i.i = tail call i32 @xhci_trb_virt_to_dma(ptr noundef %90, ptr noundef %92) #10
  %93 = ptrtoint ptr %add.ptr.i14.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %add.ptr.i14.i.i, align 8
  %or.i.i.i = or i32 %and.i.i.i, 67108880
  %94 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #10
  %ep_info2.i.i.i = getelementptr i8, ptr %83, i32 68
  %95 = ptrtoint ptr %ep_info2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %ep_info2.i.i.i, align 4
  %96 = ptrtoint ptr %ring_out.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ring_out.i.i, align 4
  %cycle_state.i.i.i = getelementptr inbounds %struct.xhci_ring, ptr %97, i32 0, i32 7
  %98 = ptrtoint ptr %cycle_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cycle_state.i.i.i, align 4
  %or13.i.i.i = or i32 %99, %call10.i.i.i
  %conv14.i.i.i = zext i32 %or13.i.i.i to i64
  %100 = tail call i64 @llvm.bswap.i64(i64 %conv14.i.i.i) #10
  %deq15.i.i.i = getelementptr i8, ptr %83, i32 72
  %101 = ptrtoint ptr %deq15.i.i.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %deq15.i.i.i, align 8
  %102 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ctx.i.i, align 4
  %bytes17.i.i.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %bytes17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bytes17.i.i.i, align 4
  %add.ptr18.i.i.i = getelementptr i8, ptr %105, i32 128
  %106 = ptrtoint ptr %ring_in.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ring_in.i.i, align 4
  %enq_seg19.i.i.i = getelementptr inbounds %struct.xhci_ring, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %enq_seg19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %enq_seg19.i.i.i, align 4
  %enqueue21.i.i.i = getelementptr inbounds %struct.xhci_ring, ptr %107, i32 0, i32 2
  %110 = ptrtoint ptr %enqueue21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %enqueue21.i.i.i, align 4
  %call22.i.i.i = tail call i32 @xhci_trb_virt_to_dma(ptr noundef %109, ptr noundef %111) #10
  %112 = ptrtoint ptr %add.ptr18.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %add.ptr18.i.i.i, align 8
  %or26.i.i.i = or i32 %and.i.i.i, 67108912
  %113 = tail call i32 @llvm.bswap.i32(i32 %or26.i.i.i) #10
  %ep_info227.i.i.i = getelementptr i8, ptr %105, i32 132
  %114 = ptrtoint ptr %ep_info227.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %ep_info227.i.i.i, align 4
  %115 = ptrtoint ptr %ring_in.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ring_in.i.i, align 4
  %cycle_state29.i.i.i = getelementptr inbounds %struct.xhci_ring, ptr %116, i32 0, i32 7
  %117 = ptrtoint ptr %cycle_state29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cycle_state29.i.i.i, align 4
  %or30.i.i.i = or i32 %118, %call22.i.i.i
  %conv31.i.i.i = zext i32 %or30.i.i.i to i64
  %119 = tail call i64 @llvm.bswap.i64(i64 %conv31.i.i.i) #10
  %deq32.i.i.i = getelementptr i8, ptr %105, i32 136
  %120 = ptrtoint ptr %deq32.i.i.i to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %119, ptr %deq32.i.i.i, align 8
  %121 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ctx.i.i, align 4
  %dma34.i.i.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %dma34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %dma34.i.i.i, align 4
  %125 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regs.i, align 4
  %dccp.i.i.i = getelementptr inbounds %struct.dbc_regs, ptr %126, i32 0, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !172
  tail call void @arm_heavy_mb() #10
  %127 = tail call i32 @llvm.bswap.i32(i32 %124) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dccp.i.i.i, i32 %127) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i.i = getelementptr i8, ptr %dccp.i.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 0) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !175
  tail call void @arm_heavy_mb() #10
  %128 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs.i, align 4
  %devinfo1.i.i.i = getelementptr inbounds %struct.dbc_regs, ptr %129, i32 0, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %devinfo1.i.i.i, i32 493551617) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !176
  tail call void @arm_heavy_mb() #10
  %130 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs.i, align 4
  %devinfo2.i.i.i = getelementptr inbounds %struct.dbc_regs, ptr %131, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %devinfo2.i.i.i, i32 1048592) #10, !srcloc !161
  br label %if.end8.i

string_fail.i.i:                                  ; preds = %if.end22.i.i
  %132 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ctx.i.i, align 4
  %tobool.not.i16.i.i = icmp eq ptr %133, null
  br i1 %tobool.not.i16.i.i, label %string_fail.i.i.ctx_fail.i.i_crit_edge, label %if.end.i20.i.i

string_fail.i.i.ctx_fail.i.i_crit_edge:           ; preds = %string_fail.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ctx_fail.i.i

if.end.i20.i.i:                                   ; preds = %string_fail.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %size.i17.i.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %size.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %size.i17.i.i, align 4
  %bytes.i18.i.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %133, i32 0, i32 2
  %136 = ptrtoint ptr %bytes.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %bytes.i18.i.i, align 4
  %dma.i19.i.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %133, i32 0, i32 3
  %138 = ptrtoint ptr %dma.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %dma.i19.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef %135, ptr noundef %137, i32 noundef %139, i32 noundef 0) #10
  tail call void @kfree(ptr noundef nonnull %133) #10
  br label %ctx_fail.i.i

ctx_fail.i.i:                                     ; preds = %if.end.i20.i.i, %string_fail.i.i.ctx_fail.i.i_crit_edge, %dbc_alloc_ctx.exit.thread.i.i
  %ctx48.sink.i.i = phi ptr [ %ctx48.i.i, %dbc_alloc_ctx.exit.thread.i.i ], [ %ctx.i.i, %string_fail.i.i.ctx_fail.i.i_crit_edge ], [ %ctx.i.i, %if.end.i20.i.i ]
  %140 = ptrtoint ptr %ctx48.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %ctx48.sink.i.i, align 4
  %141 = ptrtoint ptr %erst.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %erst.i.i, align 4
  %tobool.not.i21.i.i = icmp eq ptr %142, null
  br i1 %tobool.not.i21.i.i, label %ctx_fail.i.i.dbc_erst_free.exit.i.i_crit_edge, label %if.then.i.i.i

ctx_fail.i.i.dbc_erst_free.exit.i.i_crit_edge:    ; preds = %ctx_fail.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbc_erst_free.exit.i.i

if.then.i.i.i:                                    ; preds = %ctx_fail.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %143 = ptrtoint ptr %erst_dma_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %erst_dma_addr.i.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef 16, ptr noundef nonnull %142, i32 noundef %144, i32 noundef 0) #10
  br label %dbc_erst_free.exit.i.i

dbc_erst_free.exit.i.i:                           ; preds = %if.then.i.i.i, %ctx_fail.i.i.dbc_erst_free.exit.i.i_crit_edge
  %145 = ptrtoint ptr %erst.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %erst.i.i, align 4
  br label %erst_fail.i.i

erst_fail.i.i:                                    ; preds = %dbc_erst_free.exit.i.i, %if.end12.i.i.erst_fail.i.i_crit_edge
  %146 = ptrtoint ptr %ring_out.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ring_out.i.i, align 4
  %tobool.not.i24.i.i = icmp eq ptr %147, null
  br i1 %tobool.not.i24.i.i, label %erst_fail.i.i.dbc_ring_free.exit.i.i_crit_edge, label %if.end.i25.i.i

erst_fail.i.i.dbc_ring_free.exit.i.i_crit_edge:   ; preds = %erst_fail.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbc_ring_free.exit.i.i

if.end.i25.i.i:                                   ; preds = %erst_fail.i.i
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 4
  %tobool1.not.i.i.i = icmp eq ptr %149, null
  br i1 %tobool1.not.i.i.i, label %if.end.i25.i.i.if.end9.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i25.i.i.if.end9.i.i.i_crit_edge:           ; preds = %if.end.i25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i25.i.i
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 4
  %tobool3.not.i.i.i = icmp eq ptr %151, null
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.if.end9.i.i.i_crit_edge, label %if.then4.i.i.i

land.lhs.true.i.i.i.if.end9.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i.i

if.then4.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dma.i26.i.i = getelementptr inbounds %struct.xhci_segment, ptr %149, i32 0, i32 2
  %152 = ptrtoint ptr %dma.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %dma.i26.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef 4096, ptr noundef nonnull %151, i32 noundef %153, i32 noundef 0) #10
  %154 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %147, align 4
  tail call void @kfree(ptr noundef %155) #10
  br label %if.end9.i.i.i

if.end9.i.i.i:                                    ; preds = %if.then4.i.i.i, %land.lhs.true.i.i.i.if.end9.i.i.i_crit_edge, %if.end.i25.i.i.if.end9.i.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %147) #10
  br label %dbc_ring_free.exit.i.i

dbc_ring_free.exit.i.i:                           ; preds = %if.end9.i.i.i, %erst_fail.i.i.dbc_ring_free.exit.i.i_crit_edge
  %156 = ptrtoint ptr %ring_out.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %ring_out.i.i, align 4
  br label %out_fail.i.i

out_fail.i.i:                                     ; preds = %dbc_ring_free.exit.i.i, %if.end7.i.i.out_fail.i.i_crit_edge
  %157 = ptrtoint ptr %ring_in.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ring_in.i.i, align 4
  %tobool.not.i27.i.i = icmp eq ptr %158, null
  br i1 %tobool.not.i27.i.i, label %out_fail.i.i.dbc_ring_free.exit35.i.i_crit_edge, label %if.end.i29.i.i

out_fail.i.i.dbc_ring_free.exit35.i.i_crit_edge:  ; preds = %out_fail.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbc_ring_free.exit35.i.i

if.end.i29.i.i:                                   ; preds = %out_fail.i.i
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 4
  %tobool1.not.i28.i.i = icmp eq ptr %160, null
  br i1 %tobool1.not.i28.i.i, label %if.end.i29.i.i.if.end9.i34.i.i_crit_edge, label %land.lhs.true.i31.i.i

if.end.i29.i.i.if.end9.i34.i.i_crit_edge:         ; preds = %if.end.i29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i34.i.i

land.lhs.true.i31.i.i:                            ; preds = %if.end.i29.i.i
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %160, align 4
  %tobool3.not.i30.i.i = icmp eq ptr %162, null
  br i1 %tobool3.not.i30.i.i, label %land.lhs.true.i31.i.i.if.end9.i34.i.i_crit_edge, label %if.then4.i33.i.i

land.lhs.true.i31.i.i.if.end9.i34.i.i_crit_edge:  ; preds = %land.lhs.true.i31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i34.i.i

if.then4.i33.i.i:                                 ; preds = %land.lhs.true.i31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dma.i32.i.i = getelementptr inbounds %struct.xhci_segment, ptr %160, i32 0, i32 2
  %163 = ptrtoint ptr %dma.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %dma.i32.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef 4096, ptr noundef nonnull %162, i32 noundef %164, i32 noundef 0) #10
  %165 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %158, align 4
  tail call void @kfree(ptr noundef %166) #10
  br label %if.end9.i34.i.i

if.end9.i34.i.i:                                  ; preds = %if.then4.i33.i.i, %land.lhs.true.i31.i.i.if.end9.i34.i.i_crit_edge, %if.end.i29.i.i.if.end9.i34.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %158) #10
  br label %dbc_ring_free.exit35.i.i

dbc_ring_free.exit35.i.i:                         ; preds = %if.end9.i34.i.i, %out_fail.i.i.dbc_ring_free.exit35.i.i_crit_edge
  %167 = ptrtoint ptr %ring_in.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr null, ptr %ring_in.i.i, align 4
  br label %in_fail.i.i

in_fail.i.i:                                      ; preds = %dbc_ring_free.exit35.i.i, %if.end.i.i.in_fail.i.i_crit_edge
  %168 = ptrtoint ptr %ring_evt.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ring_evt.i.i, align 4
  %tobool.not.i36.i.i = icmp eq ptr %169, null
  br i1 %tobool.not.i36.i.i, label %in_fail.i.i.dbc_ring_free.exit44.i.i_crit_edge, label %if.end.i38.i.i

in_fail.i.i.dbc_ring_free.exit44.i.i_crit_edge:   ; preds = %in_fail.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbc_ring_free.exit44.i.i

if.end.i38.i.i:                                   ; preds = %in_fail.i.i
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 4
  %tobool1.not.i37.i.i = icmp eq ptr %171, null
  br i1 %tobool1.not.i37.i.i, label %if.end.i38.i.i.if.end9.i43.i.i_crit_edge, label %land.lhs.true.i40.i.i

if.end.i38.i.i.if.end9.i43.i.i_crit_edge:         ; preds = %if.end.i38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i43.i.i

land.lhs.true.i40.i.i:                            ; preds = %if.end.i38.i.i
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %tobool3.not.i39.i.i = icmp eq ptr %173, null
  br i1 %tobool3.not.i39.i.i, label %land.lhs.true.i40.i.i.if.end9.i43.i.i_crit_edge, label %if.then4.i42.i.i

land.lhs.true.i40.i.i.if.end9.i43.i.i_crit_edge:  ; preds = %land.lhs.true.i40.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i43.i.i

if.then4.i42.i.i:                                 ; preds = %land.lhs.true.i40.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dma.i41.i.i = getelementptr inbounds %struct.xhci_segment, ptr %171, i32 0, i32 2
  %174 = ptrtoint ptr %dma.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %dma.i41.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef 4096, ptr noundef nonnull %173, i32 noundef %175, i32 noundef 0) #10
  %176 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %169, align 4
  tail call void @kfree(ptr noundef %177) #10
  br label %if.end9.i43.i.i

if.end9.i43.i.i:                                  ; preds = %if.then4.i42.i.i, %land.lhs.true.i40.i.i.if.end9.i43.i.i_crit_edge, %if.end.i38.i.i.if.end9.i43.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %169) #10
  br label %dbc_ring_free.exit44.i.i

dbc_ring_free.exit44.i.i:                         ; preds = %if.end9.i43.i.i, %in_fail.i.i.dbc_ring_free.exit44.i.i_crit_edge
  %178 = ptrtoint ptr %ring_evt.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr null, ptr %ring_evt.i.i, align 4
  br label %if.then33

if.end8.i:                                        ; preds = %if.end.i15.i.i, %do.body.i.i.if.end8.i_crit_edge
  %arrayidx.i.i.i.i = getelementptr %struct.xhci_dbc, ptr %dbc, i32 0, i32 15, i32 0
  %179 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %dbc, ptr %arrayidx.i.i.i.i, align 4
  %direction3.i.i.i.i = getelementptr %struct.xhci_dbc, ptr %dbc, i32 0, i32 15, i32 0, i32 3
  %180 = ptrtoint ptr %direction3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %bf.load.i.i.i.i = load i8, ptr %direction3.i.i.i.i, align 4
  %bf.clear.i.i.i.i = and i8 %bf.load.i.i.i.i, 127
  store i8 %bf.clear.i.i.i.i, ptr %direction3.i.i.i.i, align 4
  %181 = ptrtoint ptr %ring_out.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %cond.i.i.i.i = load ptr, ptr %ring_out.i.i, align 4
  %ring.i.i.i.i = getelementptr %struct.xhci_dbc, ptr %dbc, i32 0, i32 15, i32 0, i32 2
  %182 = ptrtoint ptr %ring.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %cond.i.i.i.i, ptr %ring.i.i.i.i, align 4
  %list_pending.i.i.i.i = getelementptr %struct.xhci_dbc, ptr %dbc, i32 0, i32 15, i32 0, i32 1
  %183 = ptrtoint ptr %list_pending.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store volatile ptr %list_pending.i.i.i.i, ptr %list_pending.i.i.i.i, align 4
  %prev.i.i.i.i.i = getelementptr %struct.xhci_dbc, ptr %dbc, i32 0, i32 15, i32 0, i32 1, i32 1
  %184 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %list_pending.i.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %arrayidx.i2.i.i.i = getelementptr %struct.xhci_dbc, ptr %dbc, i32 0, i32 15, i32 1
  %185 = ptrtoint ptr %arrayidx.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %dbc, ptr %arrayidx.i2.i.i.i, align 4
  %direction3.i3.i.i.i = getelementptr %struct.xhci_dbc, ptr %dbc, i32 0, i32 15, i32 1, i32 3
  %186 = ptrtoint ptr %direction3.i3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %bf.load.i4.i.i.i = load i8, ptr %direction3.i3.i.i.i, align 4
  %bf.set.i.i.i.i = or i8 %bf.load.i4.i.i.i, -128
  store i8 %bf.set.i.i.i.i, ptr %direction3.i3.i.i.i, align 4
  %187 = ptrtoint ptr %ring_in.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %cond.i8.i.i.i = load ptr, ptr %ring_in.i.i, align 4
  %ring.i9.i.i.i = getelementptr %struct.xhci_dbc, ptr %dbc, i32 0, i32 15, i32 1, i32 2
  %188 = ptrtoint ptr %ring.i9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %cond.i8.i.i.i, ptr %ring.i9.i.i.i, align 4
  %list_pending.i10.i.i.i = getelementptr %struct.xhci_dbc, ptr %dbc, i32 0, i32 15, i32 1, i32 1
  %189 = ptrtoint ptr %list_pending.i10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store volatile ptr %list_pending.i10.i.i.i, ptr %list_pending.i10.i.i.i, align 4
  %prev.i.i11.i.i.i = getelementptr %struct.xhci_dbc, ptr %dbc, i32 0, i32 15, i32 1, i32 1, i32 1
  %190 = ptrtoint ptr %prev.i.i11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %list_pending.i10.i.i.i, ptr %prev.i.i11.i.i.i, align 4
  %191 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 1, ptr %state.i, align 4
  %192 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %regs.i, align 4
  %control10.i = getelementptr inbounds %struct.dbc_regs, ptr %193, i32 0, i32 6
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control10.i) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !178
  tail call void @arm_heavy_mb() #10
  %195 = or i32 %194, 33554560
  %196 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %regs.i, align 4
  %control18.i = getelementptr inbounds %struct.dbc_regs, ptr %197, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control18.i, i32 %195) #10, !srcloc !161
  %198 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %regs.i, align 4
  %control20.i = getelementptr inbounds %struct.dbc_regs, ptr %199, i32 0, i32 6
  %call21.i = tail call i32 @xhci_handshake(ptr noundef %control20.i, i32 noundef -2147483648, i32 noundef -2147483648, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end36, label %if.end8.i.if.then33_crit_edge

if.end8.i.if.then33_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

if.then33:                                        ; preds = %if.end8.i.if.then33_crit_edge, %dbc_ring_free.exit44.i.i, %if.end4.i.if.then33_crit_edge, %do.body.i.if.then33_crit_edge, %if.end.if.then33_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dbc, i32 noundef %call25) #10
  %200 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dev, align 4
  %call.i2 = tail call i32 @__pm_runtime_idle(ptr noundef %201, i32 noundef 5) #10
  br label %cleanup

if.end36:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %202 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 2, ptr %state.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dbc, i32 noundef %call25) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %203 = load ptr, ptr @system_wq, align 4
  %event_work = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 13
  %call.i3 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %203, ptr noundef %event_work, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then33
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbc_alloc_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbc_free_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @count_trbs(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_trb_virt_to_dma(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xhci_dbc_gadget_ep_queue(ptr noundef %ring, ptr noundef %trb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_gadget_ep_queue, i32 0, i32 1), ptr blockaddress(@trace_xhci_dbc_gadget_ep_queue, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !152

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !151

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !179
  %call42 = tail call i32 @__traceiter_xhci_dbc_gadget_ep_queue(ptr noundef null, ptr noundef %ring, ptr noundef %trb) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !180
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !151

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_gadget_ep_queue, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_gadget_ep_queue, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xhci_dbc_gadget_ep_queue.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xhci_dbc_gadget_ep_queue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 171, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local i32 @__traceiter_xhci_dbc_gadget_ep_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbc_queue_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xhci_dbc_handle_events(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %state.i = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %1, label %do.end131.i [
    i32 0, label %entry.do.end21_crit_edge
    i32 1, label %entry.do.end21_crit_edge49
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb5.i
    i32 4, label %sw.bb33.i
    i32 5, label %sw.bb110.i
  ]

entry.do.end21_crit_edge49:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

entry.do.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

sw.bb1.i:                                         ; preds = %entry
  %regs.i = getelementptr i8, ptr %work, i32 -52
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %portsc2.i = getelementptr inbounds %struct.dbc_regs, ptr %4, i32 0, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portsc2.i) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %sw.bb1.i.xhci_dbc_do_handle_events.exit.thread_crit_edge, label %if.then.i

sw.bb1.i.xhci_dbc_do_handle_events.exit.thread_crit_edge: ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xhci_dbc_do_handle_events.exit.thread

if.then.i:                                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %state.i, align 4
  %dev.i = getelementptr i8, ptr %work, i32 -60
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.21) #14
  br label %xhci_dbc_do_handle_events.exit.thread

sw.bb5.i:                                         ; preds = %entry
  %regs8.i = getelementptr i8, ptr %work, i32 -52
  %10 = ptrtoint ptr %regs8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs8.i, align 4
  %control.i = getelementptr inbounds %struct.dbc_regs, ptr %11, i32 0, i32 6
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control.i) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !182
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not.i = icmp eq i32 %13, 0
  br i1 %tobool13.not.i, label %sw.bb5.i.xhci_dbc_do_handle_events.exit.thread_crit_edge, label %sw.bb

sw.bb5.i.xhci_dbc_do_handle_events.exit.thread_crit_edge: ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xhci_dbc_do_handle_events.exit.thread

sw.bb33.i:                                        ; preds = %entry
  %regs36.i = getelementptr i8, ptr %work, i32 -52
  %14 = ptrtoint ptr %regs36.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs36.i, align 4
  %portsc37.i = getelementptr inbounds %struct.dbc_regs, ptr %15, i32 0, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portsc37.i) #10, !srcloc !164
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  %18 = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %do.end48.i, label %if.end51.i

do.end48.i:                                       ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev49.i = getelementptr i8, ptr %work, i32 -60
  %20 = ptrtoint ptr %dev49.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev49.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.27) #14
  br label %sw.bb12

if.end51.i:                                       ; preds = %sw.bb33.i
  %and52.i = and i32 %17, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %if.end65.i, label %do.end57.i

do.end57.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev58.i = getelementptr i8, ptr %work, i32 -60
  %22 = ptrtoint ptr %dev58.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev58.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.30) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !184
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %regs36.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs36.i, align 4
  %portsc63.i = getelementptr inbounds %struct.dbc_regs, ptr %25, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %portsc63.i, i32 %16) #10, !srcloc !161
  br label %sw.bb12

if.end65.i:                                       ; preds = %if.end51.i
  %26 = ptrtoint ptr %regs36.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs36.i, align 4
  %control69.i = getelementptr inbounds %struct.dbc_regs, ptr %27, i32 0, i32 6
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control69.i) #10, !srcloc !164
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  %and75.i = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  %30 = and i32 %29, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %if.end93.i, label %do.end80.i

do.end80.i:                                       ; preds = %if.end65.i
  %and73.i = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  %dev81.i = getelementptr i8, ptr %work, i32 -60
  %32 = ptrtoint ptr %dev81.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev81.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.33) #14
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 5, ptr %state.i, align 4
  br i1 %tobool74.not.i, label %do.end80.i.if.end87.i_crit_edge, label %if.then85.i

do.end80.i.if.end87.i_crit_edge:                  ; preds = %do.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87.i

if.then85.i:                                      ; preds = %do.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr i8, ptr %work, i32 124
  tail call fastcc void @xhci_dbc_flush_endpoint_requests(ptr noundef %arrayidx.i.i) #10
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then85.i, %do.end80.i.if.end87.i_crit_edge
  br i1 %tobool76.not.i, label %if.end87.i.xhci_dbc_do_handle_events.exit.thread_crit_edge, label %if.then90.i

if.end87.i.xhci_dbc_do_handle_events.exit.thread_crit_edge: ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xhci_dbc_do_handle_events.exit.thread

if.then90.i:                                      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #12
  %eps.i.i = getelementptr i8, ptr %work, i32 104
  tail call fastcc void @xhci_dbc_flush_endpoint_requests(ptr noundef %eps.i.i) #10
  br label %xhci_dbc_do_handle_events.exit.thread

if.end93.i:                                       ; preds = %if.end65.i
  %and94.i = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i)
  %tobool95.not.i = icmp eq i32 %and94.i, 0
  br i1 %tobool95.not.i, label %if.end93.i.sw.epilog.i_crit_edge, label %do.body97.i

if.end93.i.sw.epilog.i_crit_edge:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

do.body97.i:                                      ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !186
  tail call void @arm_heavy_mb() #10
  %35 = ptrtoint ptr %regs36.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs36.i, align 4
  %control101.i = getelementptr inbounds %struct.dbc_regs, ptr %36, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control101.i, i32 %28) #10, !srcloc !161
  %37 = ptrtoint ptr %regs36.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs36.i, align 4
  %control105.i = getelementptr inbounds %struct.dbc_regs, ptr %38, i32 0, i32 6
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control105.i) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  br label %sw.epilog.i

sw.bb110.i:                                       ; preds = %entry
  %regs113.i = getelementptr i8, ptr %work, i32 -52
  %40 = ptrtoint ptr %regs113.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs113.i, align 4
  %control114.i = getelementptr inbounds %struct.dbc_regs, ptr %41, i32 0, i32 6
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control114.i) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %43 = and i32 %42, 218103808
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %43)
  %.not.i = icmp eq i32 %43, 16777216
  br i1 %.not.i, label %if.then126.i, label %sw.bb110.i.xhci_dbc_do_handle_events.exit.thread_crit_edge

sw.bb110.i.xhci_dbc_do_handle_events.exit.thread_crit_edge: ; preds = %sw.bb110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xhci_dbc_do_handle_events.exit.thread

if.then126.i:                                     ; preds = %sw.bb110.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4, ptr %state.i, align 4
  br label %sw.epilog.i

do.end131.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev132.i = getelementptr i8, ptr %work, i32 -60
  %45 = ptrtoint ptr %dev132.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev132.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.36, i32 noundef %1) #14
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end131.i, %if.then126.i, %do.body97.i, %if.end93.i.sw.epilog.i_crit_edge
  %ring_evt.i = getelementptr i8, ptr %work, i32 -48
  %47 = ptrtoint ptr %ring_evt.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn227.i = load ptr, ptr %ring_evt.i, align 4
  %evt.0.in228.i = getelementptr inbounds %struct.xhci_ring, ptr %.pn227.i, i32 0, i32 4
  %48 = ptrtoint ptr %evt.0.in228.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %evt.0229.i = load ptr, ptr %evt.0.in228.i, align 4
  %flags230.i = getelementptr inbounds %struct.xhci_event_cmd, ptr %evt.0229.i, i32 0, i32 2
  %49 = ptrtoint ptr %flags230.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags230.i, align 4
  %51 = lshr i32 %50, 24
  %and134231.i = and i32 %51, 1
  %cycle_state232.i = getelementptr inbounds %struct.xhci_ring, ptr %.pn227.i, i32 0, i32 7
  %52 = ptrtoint ptr %cycle_state232.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cycle_state232.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and134231.i, i32 %53)
  %cmp233.i = icmp eq i32 %and134231.i, %53
  br i1 %cmp233.i, label %while.body.lr.ph.i, label %sw.epilog.i.xhci_dbc_do_handle_events.exit.thread_crit_edge

sw.epilog.i.xhci_dbc_do_handle_events.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xhci_dbc_do_handle_events.exit.thread

while.body.lr.ph.i:                               ; preds = %sw.epilog.i
  %dev.i220.i = getelementptr i8, ptr %work, i32 -60
  %regs.i.i = getelementptr i8, ptr %work, i32 -52
  br label %while.body.i

while.body.i:                                     ; preds = %inc_evt_deq.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %flags235.i = phi ptr [ %flags230.i, %while.body.lr.ph.i ], [ %flags.i, %inc_evt_deq.exit.i.while.body.i_crit_edge ]
  %evt.0234.i = phi ptr [ %evt.0229.i, %while.body.lr.ph.i ], [ %evt.0.i, %inc_evt_deq.exit.i.while.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !189
  %54 = ptrtoint ptr %ring_evt.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring_evt.i, align 4
  tail call fastcc void @trace_xhci_dbc_handle_event(ptr noundef %55, ptr noundef %evt.0234.i) #10
  %56 = ptrtoint ptr %flags235.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags235.i, align 4
  %58 = lshr i32 %57, 8
  %59 = trunc i32 %58 to i16
  %trunc.i = and i16 %59, -1024
  %60 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.73)
  switch i16 %trunc.i, label %while.body.i.sw.epilog142.i_crit_edge [
    i16 -30720, label %sw.bb139.i
    i16 -32768, label %sw.bb140.i
  ]

while.body.i.sw.epilog142.i_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog142.i

sw.bb139.i:                                       ; preds = %while.body.i
  %61 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i.i, align 4
  %portsc1.i.i = getelementptr inbounds %struct.dbc_regs, ptr %62, i32 0, i32 8
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portsc1.i.i) #10, !srcloc !164
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !190
  %and.i.i = and i32 %64, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb139.i.if.end.i.i_crit_edge, label %do.end.i.i

sw.bb139.i.if.end.i.i_crit_edge:                  ; preds = %sw.bb139.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %sw.bb139.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %dev.i220.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i220.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.38) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %sw.bb139.i.if.end.i.i_crit_edge
  %and3.i.i = and i32 %64, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end10.i.i_crit_edge, label %do.end8.i.i

if.end.i.i.if.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

do.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %dev.i220.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i220.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %68, ptr noundef nonnull @.str.41) #14
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %do.end8.i.i, %if.end.i.i.if.end10.i.i_crit_edge
  %and11.i.i = and i32 %64, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end10.i.i.if.end18.i.i_crit_edge, label %do.end16.i.i

if.end10.i.i.if.end18.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i.i

do.end16.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %dev.i220.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i220.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %70, ptr noundef nonnull @.str.44) #14
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %do.end16.i.i, %if.end10.i.i.if.end18.i.i_crit_edge
  %and19.i.i = and i32 %64, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end18.i.i.dbc_handle_port_status.exit.i_crit_edge, label %do.end24.i.i

if.end18.i.i.dbc_handle_port_status.exit.i_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbc_handle_port_status.exit.i

do.end24.i.i:                                     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %dev.i220.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i220.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %72, ptr noundef nonnull @.str.47) #14
  br label %dbc_handle_port_status.exit.i

dbc_handle_port_status.exit.i:                    ; preds = %do.end24.i.i, %if.end18.i.i.dbc_handle_port_status.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  %and30.i.i = and i32 %64, -2097153
  %73 = tail call i32 @llvm.bswap.i32(i32 %and30.i.i) #10
  %74 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i.i, align 4
  %portsc32.i.i = getelementptr inbounds %struct.dbc_regs, ptr %75, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %portsc32.i.i, i32 %73) #10, !srcloc !161
  br label %sw.epilog142.i

sw.bb140.i:                                       ; preds = %while.body.i
  %arrayidx.i218.i = getelementptr [4 x i32], ptr %evt.0234.i, i32 0, i32 2
  %76 = ptrtoint ptr %arrayidx.i218.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i218.i, align 8
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #10
  %shr.i.i = lshr i32 %78, 24
  %and3.i219.i = and i32 %78, 16777215
  %arrayidx5.i.i = getelementptr [4 x i32], ptr %evt.0234.i, i32 0, i32 3
  %79 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx5.i.i, align 4
  %81 = and i32 %80, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %81)
  %cmp.i.i = icmp eq i32 %81, 512
  %cond.i.i.v = select i1 %cmp.i.i, i32 104, i32 124
  %cond.i.i = getelementptr i8, ptr %work, i32 %cond.i.i.v
  %ring9.i.i = getelementptr inbounds %struct.dbc_ep, ptr %cond.i.i, i32 0, i32 2
  %82 = ptrtoint ptr %ring9.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ring9.i.i, align 4
  %trunc.i.i = trunc i32 %shr.i.i to i8
  %84 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %trunc.i.i, label %do.end14.i.i [
    i8 1, label %sw.bb.i.i
    i8 13, label %sw.bb140.i.sw.epilog.i.i_crit_edge
    i8 5, label %sw.bb140.i.do.end.i221.i_crit_edge
    i8 3, label %sw.bb140.i.do.end.i221.i_crit_edge50
    i8 4, label %sw.bb140.i.do.end.i221.i_crit_edge51
    i8 6, label %sw.bb140.i.do.end.i221.i_crit_edge52
  ]

sw.bb140.i.do.end.i221.i_crit_edge52:             ; preds = %sw.bb140.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i221.i

sw.bb140.i.do.end.i221.i_crit_edge51:             ; preds = %sw.bb140.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i221.i

sw.bb140.i.do.end.i221.i_crit_edge50:             ; preds = %sw.bb140.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i221.i

sw.bb140.i.do.end.i221.i_crit_edge:               ; preds = %sw.bb140.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i221.i

sw.bb140.i.sw.epilog.i.i_crit_edge:               ; preds = %sw.bb140.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %sw.bb140.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

do.end.i221.i:                                    ; preds = %sw.bb140.i.do.end.i221.i_crit_edge, %sw.bb140.i.do.end.i221.i_crit_edge50, %sw.bb140.i.do.end.i221.i_crit_edge51, %sw.bb140.i.do.end.i221.i_crit_edge52
  %85 = ptrtoint ptr %dev.i220.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i220.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %86, ptr noundef nonnull @.str.49, i32 noundef %shr.i.i) #14
  %sub.i.i = sub nsw i32 0, %shr.i.i
  br label %sw.epilog.i.i

do.end14.i.i:                                     ; preds = %sw.bb140.i
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %dev.i220.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i220.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.53, i32 noundef %shr.i.i) #14
  %sub16.i.i = sub nsw i32 0, %shr.i.i
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %do.end14.i.i, %do.end.i221.i, %sw.bb.i.i, %sw.bb140.i.sw.epilog.i.i_crit_edge
  %remain_length.1.i.i = phi i32 [ %and3.i219.i, %do.end14.i.i ], [ %and3.i219.i, %do.end.i221.i ], [ %and3.i219.i, %sw.bb140.i.sw.epilog.i.i_crit_edge ], [ 0, %sw.bb.i.i ]
  %status.0.i.i = phi i32 [ %sub16.i.i, %do.end14.i.i ], [ %sub.i.i, %do.end.i221.i ], [ 0, %sw.bb140.i.sw.epilog.i.i_crit_edge ], [ 0, %sw.bb.i.i ]
  %list_pending.i.i = getelementptr inbounds %struct.dbc_ep, ptr %cond.i.i, i32 0, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %sw.epilog.i.i
  %.pn.in.i.i = phi ptr [ %list_pending.i.i, %sw.epilog.i.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %89 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp19.not.i.i = icmp eq ptr %.pn.i.i, %list_pending.i.i
  br i1 %cmp19.not.i.i, label %for.cond.i.i.do.end30.i.i_crit_edge, label %for.body.i.i

for.cond.i.i.do.end30.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %trb_dma.i.i = getelementptr i8, ptr %.pn.i.i, i32 8
  %90 = ptrtoint ptr %trb_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %trb_dma.i.i, align 4
  %conv.i.i = zext i32 %91 to i64
  %92 = ptrtoint ptr %evt.0234.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %evt.0234.i, align 8
  %cmp20.i.i = icmp eq i64 %93, %conv.i.i
  br i1 %cmp20.i.i, label %for.end.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %r.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -36
  %tobool.not.i222.i = icmp eq ptr %r.0.le.i.i, null
  br i1 %tobool.not.i222.i, label %for.end.i.i.do.end30.i.i_crit_edge, label %if.end32.i.i

for.end.i.i.do.end30.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %for.end.i.i.do.end30.i.i_crit_edge, %for.cond.i.i.do.end30.i.i_crit_edge
  %94 = ptrtoint ptr %dev.i220.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i220.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %95, ptr noundef nonnull @.str.56) #14
  br label %sw.epilog142.i

if.end32.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %trb.i.i = getelementptr i8, ptr %.pn.i.i, i32 12
  %96 = ptrtoint ptr %trb.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %trb.i.i, align 4
  tail call fastcc void @trace_xhci_dbc_handle_transfer(ptr noundef %83, ptr noundef %97) #10
  %num_trbs_free.i.i = getelementptr inbounds %struct.xhci_ring, ptr %83, i32 0, i32 11
  %98 = ptrtoint ptr %num_trbs_free.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_trbs_free.i.i, align 4
  %inc.i.i = add i32 %99, 1
  store i32 %inc.i.i, ptr %num_trbs_free.i.i, align 4
  %length.i.i = getelementptr i8, ptr %.pn.i.i, i32 -32
  %100 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %length.i.i, align 4
  %sub33.i.i = sub i32 %101, %remain_length.1.i.i
  %actual.i.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  %102 = ptrtoint ptr %actual.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %sub33.i.i, ptr %actual.i.i, align 4
  tail call fastcc void @xhci_dbc_giveback(ptr noundef nonnull %r.0.le.i.i, i32 noundef %status.0.i.i) #10
  br label %sw.epilog142.i

sw.epilog142.i:                                   ; preds = %if.end32.i.i, %do.end30.i.i, %dbc_handle_port_status.exit.i, %while.body.i.sw.epilog142.i_crit_edge
  %103 = ptrtoint ptr %ring_evt.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ring_evt.i, align 4
  %dequeue.i.i = getelementptr inbounds %struct.xhci_ring, ptr %104, i32 0, i32 4
  %105 = ptrtoint ptr %dequeue.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dequeue.i.i, align 4
  %deq_seg.i.i = getelementptr inbounds %struct.xhci_ring, ptr %104, i32 0, i32 5
  %107 = ptrtoint ptr %deq_seg.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %deq_seg.i.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %arrayidx.i223.i = getelementptr %union.xhci_trb, ptr %110, i32 255
  %cmp.i224.i = icmp eq ptr %106, %arrayidx.i223.i
  br i1 %cmp.i224.i, label %if.then.i.i, label %if.end.i225.i

if.then.i.i:                                      ; preds = %sw.epilog142.i
  call void @__sanitizer_cov_trace_pc() #12
  %cycle_state.i.i = getelementptr inbounds %struct.xhci_ring, ptr %104, i32 0, i32 7
  %111 = ptrtoint ptr %cycle_state.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cycle_state.i.i, align 4
  %xor.i.i = xor i32 %112, 1
  store i32 %xor.i.i, ptr %cycle_state.i.i, align 4
  %113 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %108, align 4
  br label %inc_evt_deq.exit.i

if.end.i225.i:                                    ; preds = %sw.epilog142.i
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr.i.i = getelementptr %union.xhci_trb, ptr %106, i32 1
  br label %inc_evt_deq.exit.i

inc_evt_deq.exit.i:                               ; preds = %if.end.i225.i, %if.then.i.i
  %storemerge.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i225.i ], [ %114, %if.then.i.i ]
  %115 = ptrtoint ptr %dequeue.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %storemerge.i.i, ptr %dequeue.i.i, align 4
  %116 = ptrtoint ptr %ring_evt.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %.pn.i = load ptr, ptr %ring_evt.i, align 4
  %evt.0.in.i = getelementptr inbounds %struct.xhci_ring, ptr %.pn.i, i32 0, i32 4
  %117 = ptrtoint ptr %evt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %evt.0.i = load ptr, ptr %evt.0.in.i, align 4
  %flags.i = getelementptr inbounds %struct.xhci_event_cmd, ptr %evt.0.i, i32 0, i32 2
  %118 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flags.i, align 4
  %120 = lshr i32 %119, 24
  %and134.i = and i32 %120, 1
  %cycle_state.i = getelementptr inbounds %struct.xhci_ring, ptr %.pn.i, i32 0, i32 7
  %121 = ptrtoint ptr %cycle_state.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cycle_state.i, align 4
  %cmp.i = icmp eq i32 %and134.i, %122
  br i1 %cmp.i, label %inc_evt_deq.exit.i.while.body.i_crit_edge, label %if.then147.i

inc_evt_deq.exit.i.while.body.i_crit_edge:        ; preds = %inc_evt_deq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.then147.i:                                     ; preds = %inc_evt_deq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %deq_seg.i = getelementptr inbounds %struct.xhci_ring, ptr %.pn.i, i32 0, i32 5
  %123 = ptrtoint ptr %deq_seg.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %deq_seg.i, align 4
  %call151.i = tail call i32 @xhci_trb_virt_to_dma(ptr noundef %124, ptr noundef %evt.0.i) #10
  %125 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regs.i.i, align 4
  %erdp.i = getelementptr inbounds %struct.dbc_regs, ptr %126, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !172
  tail call void @arm_heavy_mb() #10
  %127 = tail call i32 @llvm.bswap.i32(i32 %call151.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %erdp.i, i32 %127) #10, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i = getelementptr i8, ptr %erdp.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !161
  br label %xhci_dbc_do_handle_events.exit.thread

xhci_dbc_do_handle_events.exit.thread:            ; preds = %if.then147.i, %sw.epilog.i.xhci_dbc_do_handle_events.exit.thread_crit_edge, %sw.bb110.i.xhci_dbc_do_handle_events.exit.thread_crit_edge, %if.then90.i, %if.end87.i.xhci_dbc_do_handle_events.exit.thread_crit_edge, %sw.bb5.i.xhci_dbc_do_handle_events.exit.thread_crit_edge, %if.then.i, %sw.bb1.i.xhci_dbc_do_handle_events.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call4) #10
  br label %sw.epilog

sw.bb:                                            ; preds = %sw.bb5.i
  %128 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 4, ptr %state.i, align 4
  %dev19.i = getelementptr i8, ptr %work, i32 -60
  %129 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev19.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %130, ptr noundef nonnull @.str.24) #14
  %131 = ptrtoint ptr %regs8.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regs8.i, align 4
  %portsc23.i = getelementptr inbounds %struct.dbc_regs, ptr %132, i32 0, i32 8
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portsc23.i) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !193
  tail call void @arm_heavy_mb() #10
  %134 = ptrtoint ptr %regs8.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regs8.i, align 4
  %portsc31.i = getelementptr inbounds %struct.dbc_regs, ptr %135, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %portsc31.i, i32 %133) #10, !srcloc !161
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call4) #10
  %driver = getelementptr i8, ptr %work, i32 144
  %136 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %driver, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %tobool.not = icmp eq ptr %139, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 %139(ptr noundef %add.ptr) #10
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end57.i, %do.end48.i
  %140 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 2, ptr %state.i, align 4
  tail call fastcc void @xhci_dbc_flush_requests(ptr noundef %add.ptr) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call4) #10
  %driver13 = getelementptr i8, ptr %work, i32 144
  %141 = ptrtoint ptr %driver13 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %driver13, align 4
  %disconnect = getelementptr inbounds %struct.dbc_driver, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %disconnect, align 4
  %tobool14.not = icmp eq ptr %144, null
  br i1 %tobool14.not, label %sw.bb12.sw.epilog_crit_edge, label %if.then15

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then15:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %144(ptr noundef %add.ptr) #10
  br label %sw.epilog

do.end21:                                         ; preds = %entry.do.end21_crit_edge, %entry.do.end21_crit_edge49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call4) #10
  %dev = getelementptr i8, ptr %work, i32 -60
  %145 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %146, ptr noundef nonnull @.str.18) #14
  br label %cleanup

sw.epilog:                                        ; preds = %if.then15, %sw.bb12.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge, %xhci_dbc_do_handle_events.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %147 = load ptr, ptr @system_wq, align 4
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %147, ptr noundef %work, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xhci_dbc_flush_requests(ptr noundef readonly %dbc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %list_pending.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %list_pending.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list_pending.i, align 4
  %cmp.not19.i = icmp eq ptr %1, %list_pending.i
  br i1 %cmp.not19.i, label %entry.xhci_dbc_flush_endpoint_requests.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.xhci_dbc_flush_endpoint_requests.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %xhci_dbc_flush_endpoint_requests.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %req.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -36
  %2 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 4
  %trb1.i.i = getelementptr i8, ptr %.pn.in20.i, i32 12
  %3 = ptrtoint ptr %trb1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trb1.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %4, align 8
  %arrayidx3.i.i = getelementptr [4 x i32], ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx3.i.i, align 4
  %arrayidx5.i.i = getelementptr [4 x i32], ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx5.i.i, align 8
  %arrayidx7.i.i = getelementptr [4 x i32], ptr %4, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7.i.i, align 4
  %and.i.i = and i32 %9, 16777216
  %or.i.i = or i32 %and.i.i, 2097152
  store i32 %or.i.i, ptr %arrayidx7.i.i, align 4
  tail call fastcc void @xhci_dbc_giveback(ptr noundef %req.0.i, i32 noundef -108) #10
  %cmp.not.i = icmp eq ptr %.pn.i, %list_pending.i
  br i1 %cmp.not.i, label %for.body.i.xhci_dbc_flush_endpoint_requests.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.xhci_dbc_flush_endpoint_requests.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xhci_dbc_flush_endpoint_requests.exit

xhci_dbc_flush_endpoint_requests.exit:            ; preds = %for.body.i.xhci_dbc_flush_endpoint_requests.exit_crit_edge, %entry.xhci_dbc_flush_endpoint_requests.exit_crit_edge
  %list_pending.i4 = getelementptr %struct.xhci_dbc, ptr %dbc, i32 0, i32 15, i32 1, i32 1
  %10 = ptrtoint ptr %list_pending.i4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %list_pending.i4, align 4
  %cmp.not19.i5 = icmp eq ptr %11, %list_pending.i4
  br i1 %cmp.not19.i5, label %xhci_dbc_flush_endpoint_requests.exit.xhci_dbc_flush_endpoint_requests.exit17_crit_edge, label %xhci_dbc_flush_endpoint_requests.exit.for.body.i16_crit_edge

xhci_dbc_flush_endpoint_requests.exit.for.body.i16_crit_edge: ; preds = %xhci_dbc_flush_endpoint_requests.exit
  br label %for.body.i16

xhci_dbc_flush_endpoint_requests.exit.xhci_dbc_flush_endpoint_requests.exit17_crit_edge: ; preds = %xhci_dbc_flush_endpoint_requests.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xhci_dbc_flush_endpoint_requests.exit17

for.body.i16:                                     ; preds = %for.body.i16.for.body.i16_crit_edge, %xhci_dbc_flush_endpoint_requests.exit.for.body.i16_crit_edge
  %.pn.in20.i6 = phi ptr [ %.pn.i8, %for.body.i16.for.body.i16_crit_edge ], [ %11, %xhci_dbc_flush_endpoint_requests.exit.for.body.i16_crit_edge ]
  %req.0.i7 = getelementptr i8, ptr %.pn.in20.i6, i32 -36
  %12 = ptrtoint ptr %.pn.in20.i6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i8 = load ptr, ptr %.pn.in20.i6, align 4
  %trb1.i.i9 = getelementptr i8, ptr %.pn.in20.i6, i32 12
  %13 = ptrtoint ptr %trb1.i.i9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trb1.i.i9, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %14, align 8
  %arrayidx3.i.i10 = getelementptr [4 x i32], ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx3.i.i10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx3.i.i10, align 4
  %arrayidx5.i.i11 = getelementptr [4 x i32], ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx5.i.i11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx5.i.i11, align 8
  %arrayidx7.i.i12 = getelementptr [4 x i32], ptr %14, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx7.i.i12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx7.i.i12, align 4
  %and.i.i13 = and i32 %19, 16777216
  %or.i.i14 = or i32 %and.i.i13, 2097152
  store i32 %or.i.i14, ptr %arrayidx7.i.i12, align 4
  tail call fastcc void @xhci_dbc_giveback(ptr noundef %req.0.i7, i32 noundef -108) #10
  %cmp.not.i15 = icmp eq ptr %.pn.i8, %list_pending.i4
  br i1 %cmp.not.i15, label %for.body.i16.xhci_dbc_flush_endpoint_requests.exit17_crit_edge, label %for.body.i16.for.body.i16_crit_edge

for.body.i16.for.body.i16_crit_edge:              ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i16

for.body.i16.xhci_dbc_flush_endpoint_requests.exit17_crit_edge: ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %xhci_dbc_flush_endpoint_requests.exit17

xhci_dbc_flush_endpoint_requests.exit17:          ; preds = %for.body.i16.xhci_dbc_flush_endpoint_requests.exit17_crit_edge, %xhci_dbc_flush_endpoint_requests.exit.xhci_dbc_flush_endpoint_requests.exit17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xhci_dbc_flush_endpoint_requests(ptr noundef readonly %dep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %list_pending = getelementptr inbounds %struct.dbc_ep, ptr %dep, i32 0, i32 1
  %0 = ptrtoint ptr %list_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list_pending, align 4
  %cmp.not19 = icmp eq ptr %1, %list_pending
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in20 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %req.0 = getelementptr i8, ptr %.pn.in20, i32 -36
  %2 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in20, align 4
  %trb1.i = getelementptr i8, ptr %.pn.in20, i32 12
  %3 = ptrtoint ptr %trb1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trb1.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %4, align 8
  %arrayidx3.i = getelementptr [4 x i32], ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx3.i, align 4
  %arrayidx5.i = getelementptr [4 x i32], ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx5.i, align 8
  %arrayidx7.i = getelementptr [4 x i32], ptr %4, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7.i, align 4
  %and.i = and i32 %9, 16777216
  %or.i = or i32 %and.i, 2097152
  store i32 %or.i, ptr %arrayidx7.i, align 4
  tail call fastcc void @xhci_dbc_giveback(ptr noundef %req.0, i32 noundef -108) #10
  %cmp.not = icmp eq ptr %.pn, %list_pending
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xhci_dbc_handle_event(ptr noundef %ring, ptr noundef %trb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_handle_event, i32 0, i32 1), ptr blockaddress(@trace_xhci_dbc_handle_event, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !152

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !151

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !194
  %call42 = tail call i32 @__traceiter_xhci_dbc_handle_event(ptr noundef null, ptr noundef %ring, ptr noundef %trb) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !195
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !151

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_handle_event, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_handle_event, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xhci_dbc_handle_event.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xhci_dbc_handle_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 161, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
define internal fastcc void @xhci_dbc_giveback(ptr noundef %req, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dbc1 = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 7
  %0 = ptrtoint ptr %dbc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbc1, align 4
  %dev2 = getelementptr inbounds %struct.xhci_dbc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %list_pending = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_pending) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list_pending, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %list_pending to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list_pending, ptr %list_pending, align 4
  %prev.i3.i = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list_pending, ptr %prev.i3.i, align 4
  %trb_dma = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 9
  %12 = ptrtoint ptr %trb_dma to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %trb_dma, align 4
  %trb = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 10
  %13 = ptrtoint ptr %trb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %trb, align 4
  %status3 = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 5
  %14 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %15)
  %cmp = icmp eq i32 %15, -115
  br i1 %cmp, label %if.then, label %list_del_init.exit.if.end_crit_edge

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %status3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %status, ptr %status3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  tail call fastcc void @trace_xhci_dbc_giveback_request(ptr noundef %req)
  %dma = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 2
  %17 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma, align 4
  %length = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 1
  %19 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length, align 4
  %direction = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 11
  %21 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %cond = select i1 %tobool.not, i32 1, i32 2
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %18, i32 noundef %20, i32 noundef %cond, i32 noundef 0) #10
  tail call void @_raw_spin_unlock(ptr noundef %1) #10
  %complete = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 3
  %22 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %complete, align 4
  tail call void %23(ptr noundef %1, ptr noundef %req) #10
  tail call void @_raw_spin_lock(ptr noundef %1) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xhci_dbc_giveback_request(ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_giveback_request, i32 0, i32 1), ptr blockaddress(@trace_xhci_dbc_giveback_request, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !152

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !151

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !196
  %call42 = tail call i32 @__traceiter_xhci_dbc_giveback_request(ptr noundef null, ptr noundef %req) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !197
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !151

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_giveback_request, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_giveback_request, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xhci_dbc_giveback_request.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xhci_dbc_giveback_request.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 624, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbc_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbc_handle_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xhci_dbc_handle_transfer(ptr noundef %ring, ptr noundef %trb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_handle_transfer, i32 0, i32 1), ptr blockaddress(@trace_xhci_dbc_handle_transfer, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !152

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !151

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !198
  %call42 = tail call i32 @__traceiter_xhci_dbc_handle_transfer(ptr noundef null, ptr noundef %ring, ptr noundef %trb) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !199
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !151

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_handle_transfer, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_handle_transfer, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xhci_dbc_handle_transfer.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xhci_dbc_handle_transfer.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 166, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #10
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
declare dso_local i32 @__traceiter_xhci_dbc_handle_transfer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbc_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %3, %if.else.i ], [ %1, %entry.hcd_to_xhci.exit_crit_edge ]
  %dbc2 = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 15, i32 21, i32 3, i32 4
  %4 = ptrtoint ptr %dbc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dbc2, align 8
  %state = getelementptr inbounds %struct.xhci_dbc, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %8 = icmp ult i32 %7, 6
  br i1 %8, label %switch.lookup, label %hcd_to_xhci.exit.sw.epilog_crit_edge

hcd_to_xhci.exit.sw.epilog_crit_edge:             ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

switch.lookup:                                    ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.dbc_show, i32 0, i32 %7
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %hcd_to_xhci.exit.sw.epilog_crit_edge
  %p.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.65, %hcd_to_xhci.exit.sw.epilog_crit_edge ]
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.66, ptr noundef nonnull %p.0)
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbc_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %3, %if.else.i ], [ %1, %entry.hcd_to_xhci.exit_crit_edge ]
  %dbc2 = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 15, i32 21, i32 3, i32 4
  %4 = ptrtoint ptr %dbc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dbc2, align 8
  %call3 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(7) @.str.67, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @xhci_dbc_start(ptr noundef %5)
  br label %cleanup

if.else:                                          ; preds = %hcd_to_xhci.exit
  %call5 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(8) @.str.68, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @xhci_dbc_stop(ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.else.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ %count, %if.then7 ], [ %count, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_handshake(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xhci_dbc_ring_alloc(ptr noundef %dev, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma) #10
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma, align 4, !annotation !200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 72) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_segs = getelementptr inbounds %struct.xhci_ring, ptr %call7.i.i, i32 0, i32 10
  %2 = ptrtoint ptr %num_segs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %num_segs, align 4
  %type1 = getelementptr inbounds %struct.xhci_ring, ptr %call7.i.i, i32 0, i32 14
  %3 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %type, ptr %type1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 28) #13
  %tobool3.not = icmp eq ptr %call7.i.i1, null
  br i1 %tobool3.not, label %if.end.seg_fail_crit_edge, label %if.end5

if.end.seg_fail_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %seg_fail

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i1, ptr %call7.i.i, align 8
  %last_seg = getelementptr inbounds %struct.xhci_ring, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %last_seg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i1, ptr %last_seg, align 4
  %next = getelementptr inbounds %struct.xhci_segment, ptr %call7.i.i1, i32 0, i32 1
  %7 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i1, ptr %next, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef nonnull %dma, i32 noundef 2592, i32 noundef 0) #10
  %8 = ptrtoint ptr %call7.i.i1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %call7.i.i1, align 8
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %dma_fail, label %if.end10

if.end10:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma, align 4
  %dma11 = getelementptr inbounds %struct.xhci_segment, ptr %call7.i.i1, i32 0, i32 2
  %11 = ptrtoint ptr %dma11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dma11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %type)
  %cmp.not = icmp eq i32 %type, 6
  br i1 %cmp.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %union.xhci_trb, ptr %call.i, i32 255
  %conv = zext i32 %10 to i64
  %12 = call i64 @llvm.bswap.i64(i64 %conv)
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %arrayidx, align 8
  %control = getelementptr %union.xhci_trb, ptr %call.i, i32 255, i32 0, i32 2
  %14 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 35127296, ptr %control, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %td_list = getelementptr inbounds %struct.xhci_ring, ptr %call7.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %td_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %td_list, ptr %td_list, align 8
  %prev.i = getelementptr inbounds %struct.xhci_ring, ptr %call7.i.i, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %td_list, ptr %prev.i, align 4
  call void @xhci_initialize_ring_info(ptr noundef nonnull %call7.i.i, i32 noundef 1) #10
  br label %cleanup

dma_fail:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i1) #10
  br label %seg_fail

seg_fail:                                         ; preds = %dma_fail, %if.end.seg_fail_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %seg_fail, %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end14 ], [ null, %seg_fail ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #10
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_initialize_ring_info(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8s_to_utf16s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !10, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !35, !36, !37, !38, !40, !41, !43, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139}
!llvm.named.register.sp = !{!141}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/xhci-trace.h", i32 606, i32 1}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/xhci-trace.h", i32 611, i32 1}
!10 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 313, i32 3}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @dbc_ep_do_queue._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @dbc_ep_do_queue._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 319, i32 3}
!21 = !{ptr @dbc_ep_do_queue._entry.8, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @dbc_ep_do_queue._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../drivers/usb/host/xhci-trace.h", i32 168, i32 1}
!29 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/usb/host/xhci-trace.h", i32 616, i32 1}
!32 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!33 = !{ptr @xhci_do_dbc_init.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 964, i32 2}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @xhci_do_dbc_init.__key.14, !34, !"__key", i1 false, i1 false}
!37 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @xhci_do_dbc_init.__key.16, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 965, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 910, i32 3}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @xhci_dbc_handle_events._entry, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @xhci_dbc_handle_events._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 768, i32 4}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @xhci_dbc_do_handle_events._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @xhci_dbc_do_handle_events._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 776, i32 4}
!54 = !{ptr @xhci_dbc_do_handle_events._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @xhci_dbc_do_handle_events._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 788, i32 4}
!58 = !{ptr @xhci_dbc_do_handle_events._entry.26, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @xhci_dbc_do_handle_events._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 797, i32 4}
!62 = !{ptr @xhci_dbc_do_handle_events._entry.29, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @xhci_dbc_do_handle_events._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 809, i32 4}
!66 = !{ptr @xhci_dbc_do_handle_events._entry.32, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @xhci_dbc_do_handle_events._entry_ptr.34, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 843, i32 3}
!70 = !{ptr @xhci_dbc_do_handle_events._entry.35, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @xhci_dbc_do_handle_events._entry_ptr.37, !69, !"_entry_ptr", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../drivers/usb/host/xhci-trace.h", i32 621, i32 1}
!74 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../drivers/usb/host/xhci-trace.h", i32 158, i32 1}
!77 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 667, i32 3}
!80 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @dbc_handle_port_status._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @dbc_handle_port_status._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 670, i32 3}
!85 = !{ptr @dbc_handle_port_status._entry.40, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @dbc_handle_port_status._entry_ptr.42, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 673, i32 3}
!89 = !{ptr @dbc_handle_port_status._entry.43, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @dbc_handle_port_status._entry_ptr.45, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 676, i32 3}
!93 = !{ptr @dbc_handle_port_status._entry.46, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @dbc_handle_port_status._entry_ptr.48, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 710, i32 3}
!97 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @dbc_handle_xfer_event._entry, !96, !"_entry", i1 false, i1 false}
!100 = !{ptr @dbc_handle_xfer_event._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 714, i32 3}
!103 = !{ptr @dbc_handle_xfer_event._entry.52, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @dbc_handle_xfer_event._entry_ptr.54, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 728, i32 3}
!107 = !{ptr @dbc_handle_xfer_event._entry.55, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @dbc_handle_xfer_event._entry_ptr.57, !106, !"_entry_ptr", i1 false, i1 false}
!109 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!110 = !{!"../drivers/usb/host/xhci-trace.h", i32 163, i32 1}
!111 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 1027, i32 8}
!114 = !{ptr @dev_attr_dbc, !113, !"dev_attr_dbc", i1 false, i1 false}
!115 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 983, i32 7}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 986, i32 7}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 989, i32 7}
!121 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 992, i32 7}
!123 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 995, i32 7}
!125 = !{ptr @.str.64, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 998, i32 7}
!127 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 1001, i32 7}
!129 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 1004, i32 22}
!131 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 1017, i32 20}
!133 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 1019, i32 25}
!135 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 47, i32 18}
!137 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 58, i32 18}
!139 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/host/xhci-dbgcap.c", i32 69, i32 18}
!141 = !{!"sp"}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{!"branch_weights", i32 2000, i32 1}
!152 = !{i64 2148344626, i64 2148344631, i64 2148344644, i64 2148344688, i64 2148344722, i64 2148344743}
!153 = !{i64 2155679211}
!154 = !{i64 2155679424}
!155 = !{i64 2149343389}
!156 = !{i64 2149344425}
!157 = !{i64 2155699932}
!158 = !{i64 2155700143}
!159 = !{i64 2155763540}
!160 = !{i64 2155764043}
!161 = !{i64 6239691}
!162 = !{i64 2155716576}
!163 = !{i64 2155716789}
!164 = !{i64 6240109}
!165 = !{i64 2154450987}
!166 = !{i64 2154451480}
!167 = !{i64 2155810955}
!168 = !{!"branch_weights", i32 1, i32 2000}
!169 = !{i64 2155772186}
!170 = !{i64 2155770082}
!171 = !{i64 2155769531}
!172 = !{i64 2154442499}
!173 = !{i64 2154442872}
!174 = !{i64 2155753517}
!175 = !{i64 2155755153}
!176 = !{i64 2155755719}
!177 = !{i64 2155770997}
!178 = !{i64 2155771441}
!179 = !{i64 2155055619}
!180 = !{i64 2155055848}
!181 = !{i64 2155791585}
!182 = !{i64 2155793677}
!183 = !{i64 2155796667}
!184 = !{i64 2155800228}
!185 = !{i64 2155800907}
!186 = !{i64 2155803095}
!187 = !{i64 2155803769}
!188 = !{i64 2155804263}
!189 = !{i64 2155806362}
!190 = !{i64 2155774547}
!191 = !{i64 2155781660}
!192 = !{i64 2155795774}
!193 = !{i64 2155795992}
!194 = !{i64 2155020885}
!195 = !{i64 2155021108}
!196 = !{i64 2155733388}
!197 = !{i64 2155733607}
!198 = !{i64 2155038171}
!199 = !{i64 2155038400}
!200 = !{!"auto-init"}
